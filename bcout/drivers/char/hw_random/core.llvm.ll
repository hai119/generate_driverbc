; ModuleID = '../bcout/drivers/char/hw_random/core.llvm.bc'
source_filename = "drivers/char/hw_random/core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_hwrng_modinit6:\09\09\09"
module asm ".long\09hwrng_modinit - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.miscdevice = type { i32, i8*, %struct.file_operations*, %struct.list_head, %struct.device*, %struct.device*, %struct.attribute_group**, i8*, i16 }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.file = type { %union.anon.0, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.0 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.60, %struct.list_head, %struct.list_head, %union.anon.61 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
%struct.lockref = type { %union.anon.58 }
%union.anon.58 = type { %struct.anon.59 }
%struct.anon.59 = type { %struct.spinlock, i32 }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.46, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.16, [0 x i64] }
%struct.anon.16 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.17, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.17 = type { %struct.rb_node, i64 }
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
%struct.kgid_t = type { i32 }
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
%union.anon.60 = type { %struct.list_head }
%union.anon.61 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.54, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.55, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.56, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.57, i32, i32, %struct.fsnotify_mark_connector*, i8* }
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
%struct.swap_info_struct = type opaque
%union.anon.57 = type { %struct.pipe_inode_info* }
%struct.spinlock = type { %union.anon.4 }
%union.anon.4 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.31 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.31 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.62 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.62 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.64, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.64 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
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
%struct.fwnode_handle = type opaque
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.hwrng = type { i8*, {}*, void (%struct.hwrng*)*, i32 (%struct.hwrng*, i32)*, i32 (%struct.hwrng*, i32*)*, i32 (%struct.hwrng*, i8*, i64, i1)*, i64, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.kmem_cache = type opaque

@__param_str_current_quality = internal constant [25 x i8] c"rng_core.current_quality\00", align 16, !dbg !0
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 8
@current_quality = internal global i16 0, align 2, !dbg !2968
@__param_current_quality = internal constant %struct.kernel_param { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__param_str_current_quality, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i16* @current_quality to i8*) } }, section "__param", align 8, !dbg !2867
@__UNIQUE_ID_current_qualitytype205 = internal constant [41 x i8] c"rng_core.parmtype=current_quality:ushort\00", section ".modinfo", align 1, !dbg !2919
@__UNIQUE_ID_current_quality206 = internal constant [86 x i8] c"rng_core.parm=current_quality:current hwrng entropy estimation per 1024 bits of input\00", section ".modinfo", align 1, !dbg !2924
@__param_str_default_quality = internal constant [25 x i8] c"rng_core.default_quality\00", align 16, !dbg !2972
@default_quality = internal global i16 0, align 2, !dbg !2970
@__param_default_quality = internal constant %struct.kernel_param { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__param_str_default_quality, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i16* @default_quality to i8*) } }, section "__param", align 8, !dbg !2929
@__UNIQUE_ID_default_qualitytype207 = internal constant [41 x i8] c"rng_core.parmtype=default_quality:ushort\00", section ".modinfo", align 1, !dbg !2931
@__UNIQUE_ID_default_quality208 = internal constant [86 x i8] c"rng_core.parm=default_quality:default entropy content of hwrng per 1024 bits of input\00", section ".modinfo", align 1, !dbg !2933
@rng_miscdev = internal global %struct.miscdevice { i32 183, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %struct.file_operations* @rng_chrdev_ops, %struct.list_head zeroinitializer, %struct.device* null, %struct.device* null, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @rng_dev_groups, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i16 0 }, align 8, !dbg !2977
@rng_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @rng_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @rng_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !3662
@rng_list = internal global %struct.list_head { %struct.list_head* @rng_list, %struct.list_head* @rng_list }, align 8, !dbg !3664
@current_rng = internal global %struct.hwrng* null, align 8, !dbg !2957
@cur_rng_set_by_user = internal global i32 0, align 4, !dbg !2959
@hwrng_fill = internal global %struct.task_struct* null, align 8, !dbg !2961
@.str = private unnamed_addr constant [30 x i8] c"drivers/char/hw_random/core.c\00", align 1
@rng_buffer = internal global i8* null, align 8, !dbg !2963
@rng_fillbuf = internal global i8* null, align 8, !dbg !2966
@__UNIQUE_ID___addressable_hwrng_modinit226 = internal global i8* bitcast (i32 ()* @hwrng_modinit to i8*), section ".discard.addressable", align 8, !dbg !2935
@__exitcall_hwrng_modexit = internal global void ()* @hwrng_modexit, section ".exitcall.exit", align 8, !dbg !2937
@__UNIQUE_ID_description227 = internal constant [62 x i8] c"rng_core.description=H/W Random Number Generator (RNG) driver\00", section ".modinfo", align 1, !dbg !2942
@__UNIQUE_ID_file228 = internal constant [46 x i8] c"rng_core.file=drivers/char/hw_random/rng-core\00", section ".modinfo", align 1, !dbg !2947
@__UNIQUE_ID_license229 = internal constant [21 x i8] c"rng_core.license=GPL\00", section ".modinfo", align 1, !dbg !2952
@.str.1 = private unnamed_addr constant [10 x i8] c"hw_random\00", align 1
@rng_chrdev_ops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @noop_llseek, i64 (%struct.file*, i8*, i64, i64*)* @rng_dev_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @rng_dev_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !3630
@.str.2 = private unnamed_addr constant [6 x i8] c"hwrng\00", align 1
@reading_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @reading_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @reading_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !3632
@data_avail = internal global i32 0, align 4, !dbg !3634
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@current_task = external dso_local global %struct.task_struct*, section ".data", align 8
@rng_dev_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @rng_dev_group, %struct.attribute_group* null], align 16, !dbg !3636
@rng_dev_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([4 x %struct.attribute*], [4 x %struct.attribute*]* @rng_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !3639
@rng_dev_attrs = internal global [4 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_rng_current, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_rng_available, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_rng_selected, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !3641
@dev_attr_rng_current = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i16 420 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @hwrng_attr_current_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @hwrng_attr_current_store }, align 8, !dbg !3644
@dev_attr_rng_available = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @hwrng_attr_available_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !3658
@dev_attr_rng_selected = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @hwrng_attr_selected_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !3660
@.str.6 = private unnamed_addr constant [12 x i8] c"rng_current\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"rng_available\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"rng_selected\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@__init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3666
@.str.15 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"\013hwrng_fill thread creation failed\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"\014hwrng: no data available\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.18 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@llvm.used = appending global [13 x i8*] [i8* bitcast (%struct.kernel_param* @__param_current_quality to i8*), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_current_qualitytype205, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @__UNIQUE_ID_current_quality206, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_default_quality to i8*), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_default_qualitytype207, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @__UNIQUE_ID_default_quality208, i32 0, i32 0), i8* bitcast (void ()* @unregister_miscdev to i8*), i8* bitcast (void ()* @hwrng_modexit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_hwrng_modinit226 to i8*), i8* bitcast (void ()** @__exitcall_hwrng_modexit to i8*), i8* getelementptr inbounds ([62 x i8], [62 x i8]* @__UNIQUE_ID_description227, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_file228, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license229, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @unregister_miscdev() #0 section ".exit.text" !dbg !3676 {
entry:
  call void @misc_deregister(%struct.miscdevice* @rng_miscdev) #8, !dbg !3677
  ret void, !dbg !3678
}

; Function Attrs: noredzone
declare dso_local void @misc_deregister(%struct.miscdevice*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @hwrng_register(%struct.hwrng* %rng) #2 !dbg !3679 {
entry:
  %retval = alloca i32, align 4
  %rng.addr = alloca %struct.hwrng*, align 8
  %err = alloca i32, align 4
  %tmp = alloca %struct.hwrng*, align 8
  %rng_list_ptr = alloca %struct.list_head*, align 8
  %is_new_current = alloca i8, align 1
  %__mptr = alloca i8*, align 8
  %tmp3 = alloca %struct.hwrng*, align 8
  %__mptr9 = alloca i8*, align 8
  %tmp13 = alloca %struct.hwrng*, align 8
  %__mptr19 = alloca i8*, align 8
  %tmp22 = alloca %struct.hwrng*, align 8
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !3680, metadata !DIExpression()), !dbg !3681
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3682, metadata !DIExpression()), !dbg !3683
  store i32 -22, i32* %err, align 4, !dbg !3683
  call void @llvm.dbg.declare(metadata %struct.hwrng** %tmp, metadata !3684, metadata !DIExpression()), !dbg !3685
  call void @llvm.dbg.declare(metadata %struct.list_head** %rng_list_ptr, metadata !3686, metadata !DIExpression()), !dbg !3687
  call void @llvm.dbg.declare(metadata i8* %is_new_current, metadata !3688, metadata !DIExpression()), !dbg !3689
  store i8 0, i8* %is_new_current, align 1, !dbg !3689
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3690
  %name = getelementptr inbounds %struct.hwrng, %struct.hwrng* %0, i32 0, i32 0, !dbg !3692
  %1 = load i8*, i8** %name, align 8, !dbg !3692
  %tobool = icmp ne i8* %1, null, !dbg !3690
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3693

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3694
  %data_read = getelementptr inbounds %struct.hwrng, %struct.hwrng* %2, i32 0, i32 4, !dbg !3695
  %3 = load i32 (%struct.hwrng*, i32*)*, i32 (%struct.hwrng*, i32*)** %data_read, align 8, !dbg !3695
  %tobool1 = icmp ne i32 (%struct.hwrng*, i32*)* %3, null, !dbg !3694
  br i1 %tobool1, label %if.end, label %land.lhs.true, !dbg !3696

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3697
  %read = getelementptr inbounds %struct.hwrng, %struct.hwrng* %4, i32 0, i32 5, !dbg !3698
  %5 = load i32 (%struct.hwrng*, i8*, i64, i1)*, i32 (%struct.hwrng*, i8*, i64, i1)** %read, align 8, !dbg !3698
  %tobool2 = icmp ne i32 (%struct.hwrng*, i8*, i64, i1)* %5, null, !dbg !3697
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3699

if.then:                                          ; preds = %land.lhs.true, %entry
  br label %out, !dbg !3700

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  call void @mutex_lock(%struct.mutex* @rng_mutex) #8, !dbg !3701
  store i32 -17, i32* %err, align 4, !dbg !3702
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3703, metadata !DIExpression()), !dbg !3706
  %6 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @rng_list, i32 0, i32 0), align 8, !dbg !3706
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !3706
  store i8* %7, i8** %__mptr, align 8, !dbg !3706
  br label %do.body, !dbg !3706

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !3707

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !3706
  %add.ptr = getelementptr i8, i8* %8, i64 -64, !dbg !3706
  %9 = bitcast i8* %add.ptr to %struct.hwrng*, !dbg !3706
  store %struct.hwrng* %9, %struct.hwrng** %tmp3, align 8, !dbg !3707
  %10 = load %struct.hwrng*, %struct.hwrng** %tmp3, align 8, !dbg !3706
  store %struct.hwrng* %10, %struct.hwrng** %tmp, align 8, !dbg !3709
  br label %for.cond, !dbg !3709

for.cond:                                         ; preds = %do.end12, %do.end
  %11 = load %struct.hwrng*, %struct.hwrng** %tmp, align 8, !dbg !3710
  %list = getelementptr inbounds %struct.hwrng, %struct.hwrng* %11, i32 0, i32 8, !dbg !3710
  %cmp = icmp eq %struct.list_head* %list, @rng_list, !dbg !3710
  %lnot = xor i1 %cmp, true, !dbg !3710
  br i1 %lnot, label %for.body, label %for.end, !dbg !3709

for.body:                                         ; preds = %for.cond
  %12 = load %struct.hwrng*, %struct.hwrng** %tmp, align 8, !dbg !3712
  %name4 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %12, i32 0, i32 0, !dbg !3715
  %13 = load i8*, i8** %name4, align 8, !dbg !3715
  %14 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3716
  %name5 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %14, i32 0, i32 0, !dbg !3717
  %15 = load i8*, i8** %name5, align 8, !dbg !3717
  %call = call i32 @strcmp(i8* %13, i8* %15) #8, !dbg !3718
  %cmp6 = icmp eq i32 %call, 0, !dbg !3719
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !3720

if.then7:                                         ; preds = %for.body
  br label %out_unlock, !dbg !3721

if.end8:                                          ; preds = %for.body
  br label %for.inc, !dbg !3722

for.inc:                                          ; preds = %if.end8
  call void @llvm.dbg.declare(metadata i8** %__mptr9, metadata !3723, metadata !DIExpression()), !dbg !3725
  %16 = load %struct.hwrng*, %struct.hwrng** %tmp, align 8, !dbg !3725
  %list10 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %16, i32 0, i32 8, !dbg !3725
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list10, i32 0, i32 0, !dbg !3725
  %17 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3725
  %18 = bitcast %struct.list_head* %17 to i8*, !dbg !3725
  store i8* %18, i8** %__mptr9, align 8, !dbg !3725
  br label %do.body11, !dbg !3725

do.body11:                                        ; preds = %for.inc
  br label %do.end12, !dbg !3726

do.end12:                                         ; preds = %do.body11
  %19 = load i8*, i8** %__mptr9, align 8, !dbg !3725
  %add.ptr14 = getelementptr i8, i8* %19, i64 -64, !dbg !3725
  %20 = bitcast i8* %add.ptr14 to %struct.hwrng*, !dbg !3725
  store %struct.hwrng* %20, %struct.hwrng** %tmp13, align 8, !dbg !3726
  %21 = load %struct.hwrng*, %struct.hwrng** %tmp13, align 8, !dbg !3725
  store %struct.hwrng* %21, %struct.hwrng** %tmp, align 8, !dbg !3710
  br label %for.cond, !dbg !3710, !llvm.loop !3728

for.end:                                          ; preds = %for.cond
  %22 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3730
  %cleanup_done = getelementptr inbounds %struct.hwrng, %struct.hwrng* %22, i32 0, i32 10, !dbg !3730
  call void @__init_completion(%struct.completion* %cleanup_done) #8, !dbg !3730
  %23 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3731
  %cleanup_done15 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %23, i32 0, i32 10, !dbg !3732
  call void @complete(%struct.completion* %cleanup_done15) #8, !dbg !3733
  %24 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @rng_list, i32 0, i32 0), align 8, !dbg !3734
  store %struct.list_head* %24, %struct.list_head** %rng_list_ptr, align 8, !dbg !3734
  br label %for.cond16, !dbg !3734

for.cond16:                                       ; preds = %for.inc30, %for.end
  %25 = load %struct.list_head*, %struct.list_head** %rng_list_ptr, align 8, !dbg !3736
  %cmp17 = icmp ne %struct.list_head* %25, @rng_list, !dbg !3736
  br i1 %cmp17, label %for.body18, label %for.end32, !dbg !3734

for.body18:                                       ; preds = %for.cond16
  call void @llvm.dbg.declare(metadata i8** %__mptr19, metadata !3738, metadata !DIExpression()), !dbg !3741
  %26 = load %struct.list_head*, %struct.list_head** %rng_list_ptr, align 8, !dbg !3741
  %27 = bitcast %struct.list_head* %26 to i8*, !dbg !3741
  store i8* %27, i8** %__mptr19, align 8, !dbg !3741
  br label %do.body20, !dbg !3741

do.body20:                                        ; preds = %for.body18
  br label %do.end21, !dbg !3742

do.end21:                                         ; preds = %do.body20
  %28 = load i8*, i8** %__mptr19, align 8, !dbg !3741
  %add.ptr23 = getelementptr i8, i8* %28, i64 -64, !dbg !3741
  %29 = bitcast i8* %add.ptr23 to %struct.hwrng*, !dbg !3741
  store %struct.hwrng* %29, %struct.hwrng** %tmp22, align 8, !dbg !3742
  %30 = load %struct.hwrng*, %struct.hwrng** %tmp22, align 8, !dbg !3741
  store %struct.hwrng* %30, %struct.hwrng** %tmp, align 8, !dbg !3744
  %31 = load %struct.hwrng*, %struct.hwrng** %tmp, align 8, !dbg !3745
  %quality = getelementptr inbounds %struct.hwrng, %struct.hwrng* %31, i32 0, i32 7, !dbg !3747
  %32 = load i16, i16* %quality, align 8, !dbg !3747
  %conv = zext i16 %32 to i32, !dbg !3745
  %33 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3748
  %quality24 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %33, i32 0, i32 7, !dbg !3749
  %34 = load i16, i16* %quality24, align 8, !dbg !3749
  %conv25 = zext i16 %34 to i32, !dbg !3748
  %cmp26 = icmp slt i32 %conv, %conv25, !dbg !3750
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !3751

if.then28:                                        ; preds = %do.end21
  br label %for.end32, !dbg !3752

if.end29:                                         ; preds = %do.end21
  br label %for.inc30, !dbg !3753

for.inc30:                                        ; preds = %if.end29
  %35 = load %struct.list_head*, %struct.list_head** %rng_list_ptr, align 8, !dbg !3736
  %next31 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i32 0, i32 0, !dbg !3736
  %36 = load %struct.list_head*, %struct.list_head** %next31, align 8, !dbg !3736
  store %struct.list_head* %36, %struct.list_head** %rng_list_ptr, align 8, !dbg !3736
  br label %for.cond16, !dbg !3736, !llvm.loop !3754

for.end32:                                        ; preds = %if.then28, %for.cond16
  %37 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3756
  %list33 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %37, i32 0, i32 8, !dbg !3757
  %38 = load %struct.list_head*, %struct.list_head** %rng_list_ptr, align 8, !dbg !3758
  call void @list_add_tail(%struct.list_head* %list33, %struct.list_head* %38) #8, !dbg !3759
  %39 = load %struct.hwrng*, %struct.hwrng** @current_rng, align 8, !dbg !3760
  %tobool34 = icmp ne %struct.hwrng* %39, null, !dbg !3760
  br i1 %tobool34, label %lor.lhs.false35, label %if.then44, !dbg !3762

lor.lhs.false35:                                  ; preds = %for.end32
  %40 = load i32, i32* @cur_rng_set_by_user, align 4, !dbg !3763
  %tobool36 = icmp ne i32 %40, 0, !dbg !3763
  br i1 %tobool36, label %if.end49, label %land.lhs.true37, !dbg !3764

land.lhs.true37:                                  ; preds = %lor.lhs.false35
  %41 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3765
  %quality38 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %41, i32 0, i32 7, !dbg !3766
  %42 = load i16, i16* %quality38, align 8, !dbg !3766
  %conv39 = zext i16 %42 to i32, !dbg !3765
  %43 = load %struct.hwrng*, %struct.hwrng** @current_rng, align 8, !dbg !3767
  %quality40 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %43, i32 0, i32 7, !dbg !3768
  %44 = load i16, i16* %quality40, align 8, !dbg !3768
  %conv41 = zext i16 %44 to i32, !dbg !3767
  %cmp42 = icmp sgt i32 %conv39, %conv41, !dbg !3769
  br i1 %cmp42, label %if.then44, label %if.end49, !dbg !3770

if.then44:                                        ; preds = %land.lhs.true37, %for.end32
  %45 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3771
  %call45 = call i32 @set_current_rng(%struct.hwrng* %45) #8, !dbg !3773
  store i32 %call45, i32* %err, align 4, !dbg !3774
  %46 = load i32, i32* %err, align 4, !dbg !3775
  %tobool46 = icmp ne i32 %46, 0, !dbg !3775
  br i1 %tobool46, label %if.then47, label %if.end48, !dbg !3777

if.then47:                                        ; preds = %if.then44
  br label %out_unlock, !dbg !3778

if.end48:                                         ; preds = %if.then44
  store i8 1, i8* %is_new_current, align 1, !dbg !3779
  %47 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3780
  %ref = getelementptr inbounds %struct.hwrng, %struct.hwrng* %47, i32 0, i32 9, !dbg !3781
  call void @kref_get(%struct.kref* %ref) #8, !dbg !3782
  br label %if.end49, !dbg !3783

if.end49:                                         ; preds = %if.end48, %land.lhs.true37, %lor.lhs.false35
  call void @mutex_unlock(%struct.mutex* @rng_mutex) #8, !dbg !3784
  %48 = load i8, i8* %is_new_current, align 1, !dbg !3785
  %tobool50 = trunc i8 %48 to i1, !dbg !3785
  br i1 %tobool50, label %if.then55, label %lor.lhs.false52, !dbg !3787

lor.lhs.false52:                                  ; preds = %if.end49
  %49 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3788
  %init = getelementptr inbounds %struct.hwrng, %struct.hwrng* %49, i32 0, i32 1, !dbg !3789
  %init53 = bitcast {}** %init to i32 (%struct.hwrng*)**, !dbg !3789
  %50 = load i32 (%struct.hwrng*)*, i32 (%struct.hwrng*)** %init53, align 8, !dbg !3789
  %tobool54 = icmp ne i32 (%struct.hwrng*)* %50, null, !dbg !3788
  br i1 %tobool54, label %if.end56, label %if.then55, !dbg !3790

if.then55:                                        ; preds = %lor.lhs.false52, %if.end49
  %51 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3791
  call void @add_early_randomness(%struct.hwrng* %51) #8, !dbg !3793
  br label %if.end56, !dbg !3794

if.end56:                                         ; preds = %if.then55, %lor.lhs.false52
  %52 = load i8, i8* %is_new_current, align 1, !dbg !3795
  %tobool57 = trunc i8 %52 to i1, !dbg !3795
  br i1 %tobool57, label %if.then58, label %if.end59, !dbg !3797

if.then58:                                        ; preds = %if.end56
  %53 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3798
  call void @put_rng(%struct.hwrng* %53) #8, !dbg !3799
  br label %if.end59, !dbg !3799

if.end59:                                         ; preds = %if.then58, %if.end56
  store i32 0, i32* %retval, align 4, !dbg !3800
  br label %return, !dbg !3800

out_unlock:                                       ; preds = %if.then47, %if.then7
  call void @llvm.dbg.label(metadata !3801), !dbg !3802
  call void @mutex_unlock(%struct.mutex* @rng_mutex) #8, !dbg !3803
  br label %out, !dbg !3803

out:                                              ; preds = %out_unlock, %if.then
  call void @llvm.dbg.label(metadata !3804), !dbg !3805
  %54 = load i32, i32* %err, align 4, !dbg !3806
  store i32 %54, i32* %retval, align 4, !dbg !3807
  br label %return, !dbg !3807

return:                                           ; preds = %out, %if.end59
  %55 = load i32, i32* %retval, align 4, !dbg !3808
  ret i32 %55, !dbg !3808
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_completion(%struct.completion* %x) #2 !dbg !3668 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !3809, metadata !DIExpression()), !dbg !3810
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !3811
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !3812
  store i32 0, i32* %done, align 8, !dbg !3813
  br label %do.body, !dbg !3814

do.body:                                          ; preds = %entry
  %1 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !3815
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %1, i32 0, i32 1, !dbg !3815
  call void @__init_swait_queue_head(%struct.swait_queue_head* %wait, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), %struct.lock_class_key* @__init_completion.__key) #8, !dbg !3815
  br label %do.end, !dbg !3815

do.end:                                           ; preds = %do.body
  ret void, !dbg !3817
}

; Function Attrs: noredzone
declare dso_local void @complete(%struct.completion*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #2 !dbg !3818 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3822, metadata !DIExpression()), !dbg !3823
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3824, metadata !DIExpression()), !dbg !3825
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3826
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3827
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3828
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3828
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3829
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #8, !dbg !3830
  ret void, !dbg !3831
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @set_current_rng(%struct.hwrng* %rng) #2 !dbg !3832 {
entry:
  %retval = alloca i32, align 4
  %rng.addr = alloca %struct.hwrng*, align 8
  %err = alloca i32, align 4
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !3833, metadata !DIExpression()), !dbg !3834
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3835, metadata !DIExpression()), !dbg !3836
  br label %do.body, !dbg !3837

do.body:                                          ; preds = %entry
  %call = call zeroext i1 @mutex_is_locked(%struct.mutex* @rng_mutex) #8, !dbg !3838
  %lnot = xor i1 %call, true, !dbg !3838
  %lnot1 = xor i1 %lnot, true, !dbg !3838
  %lnot2 = xor i1 %lnot1, true, !dbg !3838
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3838
  %conv = sext i32 %lnot.ext to i64, !dbg !3838
  %tobool = icmp ne i64 %conv, 0, !dbg !3838
  br i1 %tobool, label %if.then, label %if.end, !dbg !3841

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !3838

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !3842

do.body4:                                         ; preds = %do.body3
  br label %do.end, !dbg !3844

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3842

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 90, i32 0, i64 12) #9, !dbg !3846, !srcloc !3848
  br label %do.end6, !dbg !3846

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !3842

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 212) #9, !dbg !3849, !srcloc !3852
  unreachable, !dbg !3853

do.end8:                                          ; No predecessors!
  br label %do.end9, !dbg !3842

do.end9:                                          ; preds = %do.end8
  br label %if.end, !dbg !3842

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.end10, !dbg !3841

do.end10:                                         ; preds = %if.end
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3854
  %call11 = call i32 @hwrng_init(%struct.hwrng* %0) #8, !dbg !3855
  store i32 %call11, i32* %err, align 4, !dbg !3856
  %1 = load i32, i32* %err, align 4, !dbg !3857
  %tobool12 = icmp ne i32 %1, 0, !dbg !3857
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !3859

if.then13:                                        ; preds = %do.end10
  %2 = load i32, i32* %err, align 4, !dbg !3860
  store i32 %2, i32* %retval, align 4, !dbg !3861
  br label %return, !dbg !3861

if.end14:                                         ; preds = %do.end10
  call void @drop_current_rng() #8, !dbg !3862
  %3 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3863
  store %struct.hwrng* %3, %struct.hwrng** @current_rng, align 8, !dbg !3864
  store i32 0, i32* %retval, align 4, !dbg !3865
  br label %return, !dbg !3865

return:                                           ; preds = %if.end14, %if.then13
  %4 = load i32, i32* %retval, align 4, !dbg !3866
  ret i32 %4, !dbg !3866
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #2 !dbg !3867 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !3871, metadata !DIExpression()), !dbg !3872
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !3873
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !3874
  call void @refcount_inc(%struct.refcount_struct* %refcount) #8, !dbg !3875
  ret void, !dbg !3876
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @add_early_randomness(%struct.hwrng* %rng) #2 !dbg !3877 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %bytes_read = alloca i32, align 4
  %size = alloca i64, align 8
  %__UNIQUE_ID___x209 = alloca i64, align 8
  %__UNIQUE_ID___y210 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !3878, metadata !DIExpression()), !dbg !3879
  call void @llvm.dbg.declare(metadata i32* %bytes_read, metadata !3880, metadata !DIExpression()), !dbg !3881
  call void @llvm.dbg.declare(metadata i64* %size, metadata !3882, metadata !DIExpression()), !dbg !3883
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___x209, metadata !3884, metadata !DIExpression()), !dbg !3886
  store i64 16, i64* %__UNIQUE_ID___x209, align 8, !dbg !3886
  call void @llvm.dbg.declare(metadata i64* %__UNIQUE_ID___y210, metadata !3887, metadata !DIExpression()), !dbg !3886
  %call = call i64 @rng_buffer_size() #8, !dbg !3886
  store i64 %call, i64* %__UNIQUE_ID___y210, align 8, !dbg !3886
  %0 = load i64, i64* %__UNIQUE_ID___x209, align 8, !dbg !3886
  %1 = load i64, i64* %__UNIQUE_ID___y210, align 8, !dbg !3886
  %cmp = icmp ult i64 %0, %1, !dbg !3886
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3886

cond.true:                                        ; preds = %entry
  %2 = load i64, i64* %__UNIQUE_ID___x209, align 8, !dbg !3886
  br label %cond.end, !dbg !3886

cond.false:                                       ; preds = %entry
  %3 = load i64, i64* %__UNIQUE_ID___y210, align 8, !dbg !3886
  br label %cond.end, !dbg !3886

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %2, %cond.true ], [ %3, %cond.false ], !dbg !3886
  store i64 %cond, i64* %tmp, align 8, !dbg !3886
  %4 = load i64, i64* %tmp, align 8, !dbg !3886
  store i64 %4, i64* %size, align 8, !dbg !3883
  call void @mutex_lock(%struct.mutex* @reading_mutex) #8, !dbg !3888
  %5 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3889
  %6 = load i8*, i8** @rng_buffer, align 8, !dbg !3890
  %7 = load i64, i64* %size, align 8, !dbg !3891
  %call1 = call i32 @rng_get_data(%struct.hwrng* %5, i8* %6, i64 %7, i32 0) #8, !dbg !3892
  store i32 %call1, i32* %bytes_read, align 4, !dbg !3893
  call void @mutex_unlock(%struct.mutex* @reading_mutex) #8, !dbg !3894
  %8 = load i32, i32* %bytes_read, align 4, !dbg !3895
  %cmp2 = icmp sgt i32 %8, 0, !dbg !3897
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3898

if.then:                                          ; preds = %cond.end
  %9 = load i8*, i8** @rng_buffer, align 8, !dbg !3899
  %10 = load i32, i32* %bytes_read, align 4, !dbg !3900
  call void @add_device_randomness(i8* %9, i32 %10) #8, !dbg !3901
  br label %if.end, !dbg !3901

if.end:                                           ; preds = %if.then, %cond.end
  ret void, !dbg !3902
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @put_rng(%struct.hwrng* %rng) #2 !dbg !3903 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !3904, metadata !DIExpression()), !dbg !3905
  call void @mutex_lock(%struct.mutex* @rng_mutex) #8, !dbg !3906
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3907
  %tobool = icmp ne %struct.hwrng* %0, null, !dbg !3907
  br i1 %tobool, label %if.then, label %if.end, !dbg !3909

if.then:                                          ; preds = %entry
  %1 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3910
  %ref = getelementptr inbounds %struct.hwrng, %struct.hwrng* %1, i32 0, i32 9, !dbg !3911
  %call = call i32 @kref_put(%struct.kref* %ref, void (%struct.kref*)* @cleanup_rng) #8, !dbg !3912
  br label %if.end, !dbg !3912

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(%struct.mutex* @rng_mutex) #8, !dbg !3913
  ret void, !dbg !3914
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @hwrng_unregister(%struct.hwrng* %rng) #2 !dbg !3915 {
entry:
  %rng.addr = alloca %struct.hwrng*, align 8
  %old_rng = alloca %struct.hwrng*, align 8
  %new_rng = alloca %struct.hwrng*, align 8
  %err = alloca i32, align 4
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !3916, metadata !DIExpression()), !dbg !3917
  call void @llvm.dbg.declare(metadata %struct.hwrng** %old_rng, metadata !3918, metadata !DIExpression()), !dbg !3919
  call void @llvm.dbg.declare(metadata %struct.hwrng** %new_rng, metadata !3920, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3922, metadata !DIExpression()), !dbg !3923
  call void @mutex_lock(%struct.mutex* @rng_mutex) #8, !dbg !3924
  %0 = load %struct.hwrng*, %struct.hwrng** @current_rng, align 8, !dbg !3925
  store %struct.hwrng* %0, %struct.hwrng** %old_rng, align 8, !dbg !3926
  %1 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3927
  %list = getelementptr inbounds %struct.hwrng, %struct.hwrng* %1, i32 0, i32 8, !dbg !3928
  call void @list_del(%struct.list_head* %list) #8, !dbg !3929
  %2 = load %struct.hwrng*, %struct.hwrng** @current_rng, align 8, !dbg !3930
  %3 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3932
  %cmp = icmp eq %struct.hwrng* %2, %3, !dbg !3933
  br i1 %cmp, label %if.then, label %if.end2, !dbg !3934

if.then:                                          ; preds = %entry
  %call = call i32 @enable_best_rng() #8, !dbg !3935
  store i32 %call, i32* %err, align 4, !dbg !3937
  %4 = load i32, i32* %err, align 4, !dbg !3938
  %tobool = icmp ne i32 %4, 0, !dbg !3938
  br i1 %tobool, label %if.then1, label %if.end, !dbg !3940

if.then1:                                         ; preds = %if.then
  call void @drop_current_rng() #8, !dbg !3941
  store i32 0, i32* @cur_rng_set_by_user, align 4, !dbg !3943
  br label %if.end, !dbg !3944

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end2, !dbg !3945

if.end2:                                          ; preds = %if.end, %entry
  %call3 = call %struct.hwrng* @get_current_rng_nolock() #8, !dbg !3946
  store %struct.hwrng* %call3, %struct.hwrng** %new_rng, align 8, !dbg !3947
  %call4 = call i32 @list_empty(%struct.list_head* @rng_list) #8, !dbg !3948
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3948
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !3950

if.then6:                                         ; preds = %if.end2
  call void @mutex_unlock(%struct.mutex* @rng_mutex) #8, !dbg !3951
  %5 = load %struct.task_struct*, %struct.task_struct** @hwrng_fill, align 8, !dbg !3953
  %tobool7 = icmp ne %struct.task_struct* %5, null, !dbg !3953
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !3955

if.then8:                                         ; preds = %if.then6
  %6 = load %struct.task_struct*, %struct.task_struct** @hwrng_fill, align 8, !dbg !3956
  %call9 = call i32 @kthread_stop(%struct.task_struct* %6) #8, !dbg !3957
  br label %if.end10, !dbg !3957

if.end10:                                         ; preds = %if.then8, %if.then6
  br label %if.end11, !dbg !3958

if.else:                                          ; preds = %if.end2
  call void @mutex_unlock(%struct.mutex* @rng_mutex) #8, !dbg !3959
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end10
  %7 = load %struct.hwrng*, %struct.hwrng** %new_rng, align 8, !dbg !3960
  %tobool12 = icmp ne %struct.hwrng* %7, null, !dbg !3960
  br i1 %tobool12, label %if.then13, label %if.end17, !dbg !3962

if.then13:                                        ; preds = %if.end11
  %8 = load %struct.hwrng*, %struct.hwrng** %old_rng, align 8, !dbg !3963
  %9 = load %struct.hwrng*, %struct.hwrng** %new_rng, align 8, !dbg !3966
  %cmp14 = icmp ne %struct.hwrng* %8, %9, !dbg !3967
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !3968

if.then15:                                        ; preds = %if.then13
  %10 = load %struct.hwrng*, %struct.hwrng** %new_rng, align 8, !dbg !3969
  call void @add_early_randomness(%struct.hwrng* %10) #8, !dbg !3970
  br label %if.end16, !dbg !3970

if.end16:                                         ; preds = %if.then15, %if.then13
  %11 = load %struct.hwrng*, %struct.hwrng** %new_rng, align 8, !dbg !3971
  call void @put_rng(%struct.hwrng* %11) #8, !dbg !3972
  br label %if.end17, !dbg !3973

if.end17:                                         ; preds = %if.end16, %if.end11
  %12 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !3974
  %cleanup_done = getelementptr inbounds %struct.hwrng, %struct.hwrng* %12, i32 0, i32 10, !dbg !3975
  call void @wait_for_completion(%struct.completion* %cleanup_done) #8, !dbg !3976
  ret void, !dbg !3977
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #2 !dbg !3978 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3981, metadata !DIExpression()), !dbg !3982
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3983
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !3984
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3985
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3986
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !3987
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3988
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !3989
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !3990
  ret void, !dbg !3991
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @enable_best_rng() #2 !dbg !3992 {
entry:
  %ret = alloca i32, align 4
  %new_rng = alloca %struct.hwrng*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.hwrng*, align 8
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3995, metadata !DIExpression()), !dbg !3996
  store i32 -19, i32* %ret, align 4, !dbg !3996
  br label %do.body, !dbg !3997

do.body:                                          ; preds = %entry
  %call = call zeroext i1 @mutex_is_locked(%struct.mutex* @rng_mutex) #8, !dbg !3998
  %lnot = xor i1 %call, true, !dbg !3998
  %lnot1 = xor i1 %lnot, true, !dbg !3998
  %lnot2 = xor i1 %lnot1, true, !dbg !3998
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3998
  %conv = sext i32 %lnot.ext to i64, !dbg !3998
  %tobool = icmp ne i64 %conv, 0, !dbg !3998
  br i1 %tobool, label %if.then, label %if.end, !dbg !4001

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !3998

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !4002

do.body4:                                         ; preds = %do.body3
  br label %do.end, !dbg !4004

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4002

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 303, i32 0, i64 12) #9, !dbg !4006, !srcloc !4008
  br label %do.end6, !dbg !4006

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !4002

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 215) #9, !dbg !4009, !srcloc !4012
  unreachable, !dbg !4013

do.end8:                                          ; No predecessors!
  br label %do.end9, !dbg !4002

do.end9:                                          ; preds = %do.end8
  br label %if.end, !dbg !4002

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.end10, !dbg !4001

do.end10:                                         ; preds = %if.end
  %call11 = call i32 @list_empty(%struct.list_head* @rng_list) #8, !dbg !4014
  %tobool12 = icmp ne i32 %call11, 0, !dbg !4014
  br i1 %tobool12, label %if.else, label %if.then13, !dbg !4016

if.then13:                                        ; preds = %do.end10
  call void @llvm.dbg.declare(metadata %struct.hwrng** %new_rng, metadata !4017, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4020, metadata !DIExpression()), !dbg !4022
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @rng_list, i32 0, i32 0), align 8, !dbg !4022
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !4022
  store i8* %1, i8** %__mptr, align 8, !dbg !4022
  br label %do.body14, !dbg !4022

do.body14:                                        ; preds = %if.then13
  br label %do.end15, !dbg !4023

do.end15:                                         ; preds = %do.body14
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4022
  %add.ptr = getelementptr i8, i8* %2, i64 -64, !dbg !4022
  %3 = bitcast i8* %add.ptr to %struct.hwrng*, !dbg !4022
  store %struct.hwrng* %3, %struct.hwrng** %tmp, align 8, !dbg !4023
  %4 = load %struct.hwrng*, %struct.hwrng** %tmp, align 8, !dbg !4022
  store %struct.hwrng* %4, %struct.hwrng** %new_rng, align 8, !dbg !4025
  %5 = load %struct.hwrng*, %struct.hwrng** %new_rng, align 8, !dbg !4026
  %6 = load %struct.hwrng*, %struct.hwrng** @current_rng, align 8, !dbg !4027
  %cmp = icmp eq %struct.hwrng* %5, %6, !dbg !4028
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4029

cond.true:                                        ; preds = %do.end15
  br label %cond.end, !dbg !4029

cond.false:                                       ; preds = %do.end15
  %7 = load %struct.hwrng*, %struct.hwrng** %new_rng, align 8, !dbg !4030
  %call17 = call i32 @set_current_rng(%struct.hwrng* %7) #8, !dbg !4031
  br label %cond.end, !dbg !4029

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call17, %cond.false ], !dbg !4029
  store i32 %cond, i32* %ret, align 4, !dbg !4032
  %8 = load i32, i32* %ret, align 4, !dbg !4033
  %tobool18 = icmp ne i32 %8, 0, !dbg !4033
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !4035

if.then19:                                        ; preds = %cond.end
  store i32 0, i32* @cur_rng_set_by_user, align 4, !dbg !4036
  br label %if.end20, !dbg !4037

if.end20:                                         ; preds = %if.then19, %cond.end
  br label %if.end21, !dbg !4038

if.else:                                          ; preds = %do.end10
  call void @drop_current_rng() #8, !dbg !4039
  store i32 0, i32* @cur_rng_set_by_user, align 4, !dbg !4041
  store i32 0, i32* %ret, align 4, !dbg !4042
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.end20
  %9 = load i32, i32* %ret, align 4, !dbg !4043
  ret i32 %9, !dbg !4044
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @drop_current_rng() #2 !dbg !4045 {
entry:
  br label %do.body, !dbg !4046

do.body:                                          ; preds = %entry
  %call = call zeroext i1 @mutex_is_locked(%struct.mutex* @rng_mutex) #8, !dbg !4047
  %lnot = xor i1 %call, true, !dbg !4047
  %lnot1 = xor i1 %lnot, true, !dbg !4047
  %lnot2 = xor i1 %lnot1, true, !dbg !4047
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4047
  %conv = sext i32 %lnot.ext to i64, !dbg !4047
  %tobool = icmp ne i64 %conv, 0, !dbg !4047
  br i1 %tobool, label %if.then, label %if.end, !dbg !4050

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !4047

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !4051

do.body4:                                         ; preds = %do.body3
  br label %do.end, !dbg !4053

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4051

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 104, i32 0, i64 12) #9, !dbg !4055, !srcloc !4057
  br label %do.end6, !dbg !4055

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !4051

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 213) #9, !dbg !4058, !srcloc !4061
  unreachable, !dbg !4062

do.end8:                                          ; No predecessors!
  br label %do.end9, !dbg !4051

do.end9:                                          ; preds = %do.end8
  br label %if.end, !dbg !4051

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.end10, !dbg !4050

do.end10:                                         ; preds = %if.end
  %0 = load %struct.hwrng*, %struct.hwrng** @current_rng, align 8, !dbg !4063
  %tobool11 = icmp ne %struct.hwrng* %0, null, !dbg !4063
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4065

if.then12:                                        ; preds = %do.end10
  br label %return, !dbg !4066

if.end13:                                         ; preds = %do.end10
  %1 = load %struct.hwrng*, %struct.hwrng** @current_rng, align 8, !dbg !4067
  %ref = getelementptr inbounds %struct.hwrng, %struct.hwrng* %1, i32 0, i32 9, !dbg !4068
  %call14 = call i32 @kref_put(%struct.kref* %ref, void (%struct.kref*)* @cleanup_rng) #8, !dbg !4069
  store %struct.hwrng* null, %struct.hwrng** @current_rng, align 8, !dbg !4070
  br label %return, !dbg !4071

return:                                           ; preds = %if.end13, %if.then12
  ret void, !dbg !4071
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.hwrng* @get_current_rng_nolock() #2 !dbg !4072 {
entry:
  %0 = load %struct.hwrng*, %struct.hwrng** @current_rng, align 8, !dbg !4075
  %tobool = icmp ne %struct.hwrng* %0, null, !dbg !4075
  br i1 %tobool, label %if.then, label %if.end, !dbg !4077

if.then:                                          ; preds = %entry
  %1 = load %struct.hwrng*, %struct.hwrng** @current_rng, align 8, !dbg !4078
  %ref = getelementptr inbounds %struct.hwrng, %struct.hwrng* %1, i32 0, i32 9, !dbg !4079
  call void @kref_get(%struct.kref* %ref) #8, !dbg !4080
  br label %if.end, !dbg !4080

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.hwrng*, %struct.hwrng** @current_rng, align 8, !dbg !4081
  ret %struct.hwrng* %2, !dbg !4082
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #2 !dbg !4083 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4088, metadata !DIExpression()), !dbg !4089
  br label %do.body, !dbg !4090

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4092

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4090
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4090
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4090
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !4092
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !4090
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4094
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !4095
  %conv = zext i1 %cmp to i32, !dbg !4095
  ret i32 %conv, !dbg !4096
}

; Function Attrs: noredzone
declare dso_local i32 @kthread_stop(%struct.task_struct*) #1

; Function Attrs: noredzone
declare dso_local void @wait_for_completion(%struct.completion*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devm_hwrng_register(%struct.device* %dev, %struct.hwrng* %rng) #2 !dbg !4097 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %rng.addr = alloca %struct.hwrng*, align 8
  %ptr = alloca %struct.hwrng**, align 8
  %error = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4100, metadata !DIExpression()), !dbg !4101
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !4102, metadata !DIExpression()), !dbg !4103
  call void @llvm.dbg.declare(metadata %struct.hwrng*** %ptr, metadata !4104, metadata !DIExpression()), !dbg !4105
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4106, metadata !DIExpression()), !dbg !4107
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_hwrng_release, i64 8, i32 3264) #8, !dbg !4108
  %0 = bitcast i8* %call to %struct.hwrng**, !dbg !4108
  store %struct.hwrng** %0, %struct.hwrng*** %ptr, align 8, !dbg !4109
  %1 = load %struct.hwrng**, %struct.hwrng*** %ptr, align 8, !dbg !4110
  %tobool = icmp ne %struct.hwrng** %1, null, !dbg !4110
  br i1 %tobool, label %if.end, label %if.then, !dbg !4112

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !4113
  br label %return, !dbg !4113

if.end:                                           ; preds = %entry
  %2 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !4114
  %call1 = call i32 @hwrng_register(%struct.hwrng* %2) #8, !dbg !4115
  store i32 %call1, i32* %error, align 4, !dbg !4116
  %3 = load i32, i32* %error, align 4, !dbg !4117
  %tobool2 = icmp ne i32 %3, 0, !dbg !4117
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4119

if.then3:                                         ; preds = %if.end
  %4 = load %struct.hwrng**, %struct.hwrng*** %ptr, align 8, !dbg !4120
  %5 = bitcast %struct.hwrng** %4 to i8*, !dbg !4120
  call void @devres_free(i8* %5) #8, !dbg !4122
  %6 = load i32, i32* %error, align 4, !dbg !4123
  store i32 %6, i32* %retval, align 4, !dbg !4124
  br label %return, !dbg !4124

if.end4:                                          ; preds = %if.end
  %7 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !4125
  %8 = load %struct.hwrng**, %struct.hwrng*** %ptr, align 8, !dbg !4126
  store %struct.hwrng* %7, %struct.hwrng** %8, align 8, !dbg !4127
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4128
  %10 = load %struct.hwrng**, %struct.hwrng*** %ptr, align 8, !dbg !4129
  %11 = bitcast %struct.hwrng** %10 to i8*, !dbg !4129
  call void @devres_add(%struct.device* %9, i8* %11) #8, !dbg !4130
  store i32 0, i32* %retval, align 4, !dbg !4131
  br label %return, !dbg !4131

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4132
  ret i32 %12, !dbg !4132
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #2 !dbg !4133 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !4140, metadata !DIExpression()), !dbg !4141
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4142, metadata !DIExpression()), !dbg !4143
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !4144, metadata !DIExpression()), !dbg !4145
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !4146
  %1 = load i64, i64* %size.addr, align 8, !dbg !4147
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !4148
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #8, !dbg !4149
  ret i8* %call, !dbg !4150
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_hwrng_release(%struct.device* %dev, i8* %res) #2 !dbg !4151 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4152, metadata !DIExpression()), !dbg !4153
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !4154, metadata !DIExpression()), !dbg !4155
  %0 = load i8*, i8** %res.addr, align 8, !dbg !4156
  %1 = bitcast i8* %0 to %struct.hwrng**, !dbg !4157
  %2 = load %struct.hwrng*, %struct.hwrng** %1, align 8, !dbg !4158
  call void @hwrng_unregister(%struct.hwrng* %2) #8, !dbg !4159
  ret void, !dbg !4160
}

; Function Attrs: noredzone
declare dso_local void @devres_free(i8*) #1

; Function Attrs: noredzone
declare dso_local void @devres_add(%struct.device*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_hwrng_unregister(%struct.device* %dev, %struct.hwrng* %rng) #2 !dbg !4161 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %rng.addr = alloca %struct.hwrng*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4164, metadata !DIExpression()), !dbg !4165
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !4166, metadata !DIExpression()), !dbg !4167
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4168
  %1 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !4169
  %2 = bitcast %struct.hwrng* %1 to i8*, !dbg !4169
  %call = call i32 @devres_release(%struct.device* %0, void (%struct.device*, i8*)* @devm_hwrng_release, i32 (%struct.device*, i8*, i8*)* @devm_hwrng_match, i8* %2) #8, !dbg !4170
  ret void, !dbg !4171
}

; Function Attrs: noredzone
declare dso_local i32 @devres_release(%struct.device*, void (%struct.device*, i8*)*, i32 (%struct.device*, i8*, i8*)*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_hwrng_match(%struct.device* %dev, i8* %res, i8* %data) #2 !dbg !4172 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %r = alloca %struct.hwrng**, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4175, metadata !DIExpression()), !dbg !4176
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !4177, metadata !DIExpression()), !dbg !4178
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4179, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.declare(metadata %struct.hwrng*** %r, metadata !4181, metadata !DIExpression()), !dbg !4182
  %0 = load i8*, i8** %res.addr, align 8, !dbg !4183
  %1 = bitcast i8* %0 to %struct.hwrng**, !dbg !4183
  store %struct.hwrng** %1, %struct.hwrng*** %r, align 8, !dbg !4182
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4184, metadata !DIExpression()), !dbg !4187
  %2 = load %struct.hwrng**, %struct.hwrng*** %r, align 8, !dbg !4187
  %tobool = icmp ne %struct.hwrng** %2, null, !dbg !4187
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !4187

lor.rhs:                                          ; preds = %entry
  %3 = load %struct.hwrng**, %struct.hwrng*** %r, align 8, !dbg !4187
  %4 = load %struct.hwrng*, %struct.hwrng** %3, align 8, !dbg !4187
  %tobool1 = icmp ne %struct.hwrng* %4, null, !dbg !4187
  %lnot = xor i1 %tobool1, true, !dbg !4187
  br label %lor.end, !dbg !4187

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %5, true, !dbg !4187
  %lnot3 = xor i1 %lnot2, true, !dbg !4187
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4187
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4187
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !4188
  %tobool4 = icmp ne i32 %6, 0, !dbg !4188
  %lnot5 = xor i1 %tobool4, true, !dbg !4188
  %lnot7 = xor i1 %lnot5, true, !dbg !4188
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !4188
  %conv = sext i32 %lnot.ext8 to i64, !dbg !4188
  %tobool9 = icmp ne i64 %conv, 0, !dbg !4188
  br i1 %tobool9, label %if.then, label %if.end, !dbg !4187

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !4188

do.body:                                          ; preds = %if.then
  br label %do.body10, !dbg !4190

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !4192

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !4190

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 579, i32 2305, i64 12) #9, !dbg !4194, !srcloc !4196
  br label %do.end12, !dbg !4194

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 224) #9, !dbg !4197, !srcloc !4199
  br label %do.body13, !dbg !4190

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !4200

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !4190

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !4190

if.end:                                           ; preds = %do.end15, %lor.end
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !4187
  %tobool16 = icmp ne i32 %7, 0, !dbg !4187
  %lnot17 = xor i1 %tobool16, true, !dbg !4187
  %lnot19 = xor i1 %lnot17, true, !dbg !4187
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !4187
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !4187
  store i64 %conv21, i64* %tmp, align 8, !dbg !4188
  %8 = load i64, i64* %tmp, align 8, !dbg !4187
  %tobool22 = icmp ne i64 %8, 0, !dbg !4202
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !4203

if.then23:                                        ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4204
  br label %return, !dbg !4204

if.end24:                                         ; preds = %if.end
  %9 = load %struct.hwrng**, %struct.hwrng*** %r, align 8, !dbg !4205
  %10 = load %struct.hwrng*, %struct.hwrng** %9, align 8, !dbg !4206
  %11 = load i8*, i8** %data.addr, align 8, !dbg !4207
  %12 = bitcast i8* %11 to %struct.hwrng*, !dbg !4207
  %cmp = icmp eq %struct.hwrng* %10, %12, !dbg !4208
  %conv25 = zext i1 %cmp to i32, !dbg !4208
  store i32 %conv25, i32* %retval, align 4, !dbg !4209
  br label %return, !dbg !4209

return:                                           ; preds = %if.end24, %if.then23
  %13 = load i32, i32* %retval, align 4, !dbg !4210
  ret i32 %13, !dbg !4210
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @hwrng_modexit() #0 section ".exit.text" !dbg !4211 {
entry:
  call void @mutex_lock(%struct.mutex* @rng_mutex) #8, !dbg !4212
  br label %do.body, !dbg !4213

do.body:                                          ; preds = %entry
  %0 = load %struct.hwrng*, %struct.hwrng** @current_rng, align 8, !dbg !4214
  %tobool = icmp ne %struct.hwrng* %0, null, !dbg !4214
  %lnot = xor i1 %tobool, true, !dbg !4214
  %lnot1 = xor i1 %lnot, true, !dbg !4214
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4214
  %conv = sext i32 %lnot.ext to i64, !dbg !4214
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4214
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4217

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !4214

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !4218

do.body4:                                         ; preds = %do.body3
  br label %do.end, !dbg !4220

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4218

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 639, i32 0, i64 12) #9, !dbg !4222, !srcloc !4224
  br label %do.end6, !dbg !4222

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !4218

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 225) #9, !dbg !4225, !srcloc !4228
  unreachable, !dbg !4229

do.end8:                                          ; No predecessors!
  br label %do.end9, !dbg !4218

do.end9:                                          ; preds = %do.end8
  br label %if.end, !dbg !4218

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.end10, !dbg !4217

do.end10:                                         ; preds = %if.end
  %1 = load i8*, i8** @rng_buffer, align 8, !dbg !4230
  call void @kfree(i8* %1) #8, !dbg !4231
  %2 = load i8*, i8** @rng_fillbuf, align 8, !dbg !4232
  call void @kfree(i8* %2) #8, !dbg !4233
  call void @mutex_unlock(%struct.mutex* @rng_mutex) #8, !dbg !4234
  call void @unregister_miscdev() #10, !dbg !4235
  ret void, !dbg !4236
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @hwrng_modinit() #0 section ".init.text" !dbg !4237 {
entry:
  %s.addr.i.i11 = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i11, metadata !4238, metadata !DIExpression()), !dbg !4242
  %flags.addr.i17.i12 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i12, metadata !4250, metadata !DIExpression()), !dbg !4251
  %size.addr.i18.i13 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i13, metadata !4252, metadata !DIExpression()), !dbg !4253
  %ret.i.i14 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i14, metadata !4254, metadata !DIExpression()), !dbg !4255
  %retval.i12.i15 = alloca i32, align 4
  %flags.addr.i13.i16 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i16, metadata !4256, metadata !DIExpression()), !dbg !4260
  %retval.i.i17 = alloca i32, align 4
  %size.addr.i11.i18 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i18, metadata !4262, metadata !DIExpression()), !dbg !4266
  %size.addr.i.i.i19 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i19, metadata !4268, metadata !DIExpression()), !dbg !4272
  %flags.addr.i.i.i20 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i20, metadata !4277, metadata !DIExpression()), !dbg !4278
  %order.addr.i.i.i21 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i21, metadata !4279, metadata !DIExpression()), !dbg !4280
  %size.addr.i.i22 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i22, metadata !4281, metadata !DIExpression()), !dbg !4282
  %flags.addr.i.i23 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i23, metadata !4283, metadata !DIExpression()), !dbg !4284
  %order.i.i24 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i24, metadata !4285, metadata !DIExpression()), !dbg !4286
  %retval.i25 = alloca i8*, align 8
  %size.addr.i26 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i26, metadata !4287, metadata !DIExpression()), !dbg !4288
  %flags.addr.i27 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i27, metadata !4289, metadata !DIExpression()), !dbg !4290
  %index.i28 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i28, metadata !4291, metadata !DIExpression()), !dbg !4292
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4238, metadata !DIExpression()), !dbg !4293
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4250, metadata !DIExpression()), !dbg !4296
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4252, metadata !DIExpression()), !dbg !4297
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4254, metadata !DIExpression()), !dbg !4298
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4256, metadata !DIExpression()), !dbg !4299
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4262, metadata !DIExpression()), !dbg !4301
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4268, metadata !DIExpression()), !dbg !4303
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4277, metadata !DIExpression()), !dbg !4306
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4279, metadata !DIExpression()), !dbg !4307
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4281, metadata !DIExpression()), !dbg !4308
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4283, metadata !DIExpression()), !dbg !4309
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4285, metadata !DIExpression()), !dbg !4310
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4287, metadata !DIExpression()), !dbg !4311
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4289, metadata !DIExpression()), !dbg !4312
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4291, metadata !DIExpression()), !dbg !4313
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4314, metadata !DIExpression()), !dbg !4315
  %call = call i64 @rng_buffer_size() #8, !dbg !4316
  store i64 %call, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !4317
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #9, !dbg !4318
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !4319

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4320
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !4321
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4322

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !4323
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !4324
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4325
  %call.i.i = call i32 @get_order(i64 %5) #11, !dbg !4326
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4310
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !4327
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4328
  %8 = load i32, i32* %order.i.i, align 4, !dbg !4329
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4330
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4331
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4332
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #12, !dbg !4333
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4333
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4333
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4333
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4333
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4334
  br label %kmalloc.exit, !dbg !4334

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !4335
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4336
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !4336
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4338

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4339
  br label %kmalloc_index.exit.i, !dbg !4339

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4340
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !4342
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4343

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4344
  br label %kmalloc_index.exit.i, !dbg !4344

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4345
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !4347
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4348

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4349
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !4350
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4351

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4352
  br label %kmalloc_index.exit.i, !dbg !4352

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4353
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !4355
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4356

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4357
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !4358
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4359

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4360
  br label %kmalloc_index.exit.i, !dbg !4360

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4361
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !4363
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4364

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4365
  br label %kmalloc_index.exit.i, !dbg !4365

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4366
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !4368
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4369

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4370
  br label %kmalloc_index.exit.i, !dbg !4370

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4371
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !4373
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4374

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4375
  br label %kmalloc_index.exit.i, !dbg !4375

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4376
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !4378
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4379

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4380
  br label %kmalloc_index.exit.i, !dbg !4380

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4381
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !4383
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4384

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4385
  br label %kmalloc_index.exit.i, !dbg !4385

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4386
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !4388
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4389

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4390
  br label %kmalloc_index.exit.i, !dbg !4390

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4391
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !4393
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4394

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4395
  br label %kmalloc_index.exit.i, !dbg !4395

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4396
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !4398
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4399

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4400
  br label %kmalloc_index.exit.i, !dbg !4400

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4401
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !4403
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4404

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4405
  br label %kmalloc_index.exit.i, !dbg !4405

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4406
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !4408
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4409

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4410
  br label %kmalloc_index.exit.i, !dbg !4410

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4411
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !4413
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4414

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4415
  br label %kmalloc_index.exit.i, !dbg !4415

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4416
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !4418
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4419

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4420
  br label %kmalloc_index.exit.i, !dbg !4420

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4421
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !4423
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4424

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4425
  br label %kmalloc_index.exit.i, !dbg !4425

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4426
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !4428
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4429

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4430
  br label %kmalloc_index.exit.i, !dbg !4430

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4431
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !4433
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4434

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4435
  br label %kmalloc_index.exit.i, !dbg !4435

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4436
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !4438
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4439

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4440
  br label %kmalloc_index.exit.i, !dbg !4440

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4441
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !4443
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4444

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4445
  br label %kmalloc_index.exit.i, !dbg !4445

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4446
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !4448
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4449

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4450
  br label %kmalloc_index.exit.i, !dbg !4450

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4451
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !4453
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4454

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4455
  br label %kmalloc_index.exit.i, !dbg !4455

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4456
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !4458
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4459

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4460
  br label %kmalloc_index.exit.i, !dbg !4460

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4461
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !4463
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4464

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4465
  br label %kmalloc_index.exit.i, !dbg !4465

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4466
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !4468
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4469

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4470
  br label %kmalloc_index.exit.i, !dbg !4470

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4471
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !4473
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4474

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4475
  br label %kmalloc_index.exit.i, !dbg !4475

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4476
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !4478
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4479

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4480
  br label %kmalloc_index.exit.i, !dbg !4480

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4481, !srcloc !4484
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 204) #9, !dbg !4485, !srcloc !4488
  unreachable, !dbg !4489

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !4490
  store i32 %43, i32* %index.i, align 4, !dbg !4491
  %44 = load i32, i32* %index.i, align 4, !dbg !4492
  %tobool.i = icmp ne i32 %44, 0, !dbg !4492
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4494

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4495
  br label %kmalloc.exit, !dbg !4495

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !4496
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4497
  %and.i.i = and i32 %46, 17, !dbg !4497
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4497
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4497
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4497
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4497
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4499

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4500
  br label %kmalloc_type.exit.i, !dbg !4500

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4501
  %and2.i.i = and i32 %47, 1, !dbg !4502
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4501
  %48 = zext i1 %tobool3.i.i to i64, !dbg !4501
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4501
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4503
  br label %kmalloc_type.exit.i, !dbg !4503

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !4504
  %idxprom.i = zext i32 %49 to i64, !dbg !4505
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4505
  %50 = load i32, i32* %index.i, align 4, !dbg !4506
  %idxprom6.i = zext i32 %50 to i64, !dbg !4505
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4505
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4505
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !4507
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !4508
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4509
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4510
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #12, !dbg !4511
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4511
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4511
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4511
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4511
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4298
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4512
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !4513
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4514
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4515
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #12, !dbg !4516
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4517
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !4518
  store i8* %60, i8** %retval.i, align 8, !dbg !4519
  br label %kmalloc.exit, !dbg !4519

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !4520
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !4521
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #12, !dbg !4522
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4522
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4522
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4522
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4522
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4523
  br label %kmalloc.exit, !dbg !4523

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !4524
  store i8* %63, i8** @rng_buffer, align 8, !dbg !4525
  %64 = load i8*, i8** @rng_buffer, align 8, !dbg !4526
  %tobool = icmp ne i8* %64, null, !dbg !4526
  br i1 %tobool, label %if.end, label %if.then, !dbg !4528

if.then:                                          ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !4529
  br label %return, !dbg !4529

if.end:                                           ; preds = %kmalloc.exit
  %call2 = call i64 @rng_buffer_size() #8, !dbg !4530
  store i64 %call2, i64* %size.addr.i26, align 8
  store i32 3264, i32* %flags.addr.i27, align 4
  %65 = load i64, i64* %size.addr.i26, align 8, !dbg !4531
  %66 = call i1 @llvm.is.constant.i64(i64 %65) #9, !dbg !4532
  br i1 %66, label %if.then.i30, label %if.end9.i154, !dbg !4533

if.then.i30:                                      ; preds = %if.end
  %67 = load i64, i64* %size.addr.i26, align 8, !dbg !4534
  %cmp.i29 = icmp ugt i64 %67, 8192, !dbg !4535
  br i1 %cmp.i29, label %if.then1.i36, label %if.end.i38, !dbg !4536

if.then1.i36:                                     ; preds = %if.then.i30
  %68 = load i64, i64* %size.addr.i26, align 8, !dbg !4537
  %69 = load i32, i32* %flags.addr.i27, align 4, !dbg !4538
  store i64 %68, i64* %size.addr.i.i22, align 8
  store i32 %69, i32* %flags.addr.i.i23, align 4
  %70 = load i64, i64* %size.addr.i.i22, align 8, !dbg !4539
  %call.i.i31 = call i32 @get_order(i64 %70) #11, !dbg !4540
  store i32 %call.i.i31, i32* %order.i.i24, align 4, !dbg !4286
  %71 = load i64, i64* %size.addr.i.i22, align 8, !dbg !4541
  %72 = load i32, i32* %flags.addr.i.i23, align 4, !dbg !4542
  %73 = load i32, i32* %order.i.i24, align 4, !dbg !4543
  store i64 %71, i64* %size.addr.i.i.i19, align 8
  store i32 %72, i32* %flags.addr.i.i.i20, align 4
  store i32 %73, i32* %order.addr.i.i.i21, align 4
  %74 = load i64, i64* %size.addr.i.i.i19, align 8, !dbg !4544
  %75 = load i32, i32* %flags.addr.i.i.i20, align 4, !dbg !4545
  %76 = load i32, i32* %order.addr.i.i.i21, align 4, !dbg !4546
  %call.i.i.i32 = call noalias i8* @kmalloc_order(i64 %74, i32 %75, i32 %76) #12, !dbg !4547
  %ptrint.i.i.i33 = ptrtoint i8* %call.i.i.i32 to i64, !dbg !4547
  %maskedptr.i.i.i34 = and i64 %ptrint.i.i.i33, 4095, !dbg !4547
  %maskcond.i.i.i35 = icmp eq i64 %maskedptr.i.i.i34, 0, !dbg !4547
  call void @llvm.assume(i1 %maskcond.i.i.i35) #9, !dbg !4547
  store i8* %call.i.i.i32, i8** %retval.i25, align 8, !dbg !4548
  br label %kmalloc.exit155, !dbg !4548

if.end.i38:                                       ; preds = %if.then.i30
  %77 = load i64, i64* %size.addr.i26, align 8, !dbg !4549
  store i64 %77, i64* %size.addr.i11.i18, align 8
  %78 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4550
  %tobool.i.i37 = icmp ne i64 %78, 0, !dbg !4550
  br i1 %tobool.i.i37, label %if.end.i.i41, label %if.then.i.i39, !dbg !4551

if.then.i.i39:                                    ; preds = %if.end.i38
  store i32 0, i32* %retval.i.i17, align 4, !dbg !4552
  br label %kmalloc_index.exit.i127, !dbg !4552

if.end.i.i41:                                     ; preds = %if.end.i38
  %79 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4553
  %cmp.i.i40 = icmp ule i64 %79, 8, !dbg !4554
  br i1 %cmp.i.i40, label %if.then1.i.i42, label %if.end2.i.i44, !dbg !4555

if.then1.i.i42:                                   ; preds = %if.end.i.i41
  store i32 3, i32* %retval.i.i17, align 4, !dbg !4556
  br label %kmalloc_index.exit.i127, !dbg !4556

if.end2.i.i44:                                    ; preds = %if.end.i.i41
  %80 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4557
  %cmp3.i.i43 = icmp ugt i64 %80, 64, !dbg !4558
  br i1 %cmp3.i.i43, label %land.lhs.true.i.i46, label %if.end6.i.i49, !dbg !4559

land.lhs.true.i.i46:                              ; preds = %if.end2.i.i44
  %81 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4560
  %cmp4.i.i45 = icmp ule i64 %81, 96, !dbg !4561
  br i1 %cmp4.i.i45, label %if.then5.i.i47, label %if.end6.i.i49, !dbg !4562

if.then5.i.i47:                                   ; preds = %land.lhs.true.i.i46
  store i32 1, i32* %retval.i.i17, align 4, !dbg !4563
  br label %kmalloc_index.exit.i127, !dbg !4563

if.end6.i.i49:                                    ; preds = %land.lhs.true.i.i46, %if.end2.i.i44
  %82 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4564
  %cmp7.i.i48 = icmp ugt i64 %82, 128, !dbg !4565
  br i1 %cmp7.i.i48, label %land.lhs.true8.i.i51, label %if.end11.i.i54, !dbg !4566

land.lhs.true8.i.i51:                             ; preds = %if.end6.i.i49
  %83 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4567
  %cmp9.i.i50 = icmp ule i64 %83, 192, !dbg !4568
  br i1 %cmp9.i.i50, label %if.then10.i.i52, label %if.end11.i.i54, !dbg !4569

if.then10.i.i52:                                  ; preds = %land.lhs.true8.i.i51
  store i32 2, i32* %retval.i.i17, align 4, !dbg !4570
  br label %kmalloc_index.exit.i127, !dbg !4570

if.end11.i.i54:                                   ; preds = %land.lhs.true8.i.i51, %if.end6.i.i49
  %84 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4571
  %cmp12.i.i53 = icmp ule i64 %84, 8, !dbg !4572
  br i1 %cmp12.i.i53, label %if.then13.i.i55, label %if.end14.i.i57, !dbg !4573

if.then13.i.i55:                                  ; preds = %if.end11.i.i54
  store i32 3, i32* %retval.i.i17, align 4, !dbg !4574
  br label %kmalloc_index.exit.i127, !dbg !4574

if.end14.i.i57:                                   ; preds = %if.end11.i.i54
  %85 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4575
  %cmp15.i.i56 = icmp ule i64 %85, 16, !dbg !4576
  br i1 %cmp15.i.i56, label %if.then16.i.i58, label %if.end17.i.i60, !dbg !4577

if.then16.i.i58:                                  ; preds = %if.end14.i.i57
  store i32 4, i32* %retval.i.i17, align 4, !dbg !4578
  br label %kmalloc_index.exit.i127, !dbg !4578

if.end17.i.i60:                                   ; preds = %if.end14.i.i57
  %86 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4579
  %cmp18.i.i59 = icmp ule i64 %86, 32, !dbg !4580
  br i1 %cmp18.i.i59, label %if.then19.i.i61, label %if.end20.i.i63, !dbg !4581

if.then19.i.i61:                                  ; preds = %if.end17.i.i60
  store i32 5, i32* %retval.i.i17, align 4, !dbg !4582
  br label %kmalloc_index.exit.i127, !dbg !4582

if.end20.i.i63:                                   ; preds = %if.end17.i.i60
  %87 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4583
  %cmp21.i.i62 = icmp ule i64 %87, 64, !dbg !4584
  br i1 %cmp21.i.i62, label %if.then22.i.i64, label %if.end23.i.i66, !dbg !4585

if.then22.i.i64:                                  ; preds = %if.end20.i.i63
  store i32 6, i32* %retval.i.i17, align 4, !dbg !4586
  br label %kmalloc_index.exit.i127, !dbg !4586

if.end23.i.i66:                                   ; preds = %if.end20.i.i63
  %88 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4587
  %cmp24.i.i65 = icmp ule i64 %88, 128, !dbg !4588
  br i1 %cmp24.i.i65, label %if.then25.i.i67, label %if.end26.i.i69, !dbg !4589

if.then25.i.i67:                                  ; preds = %if.end23.i.i66
  store i32 7, i32* %retval.i.i17, align 4, !dbg !4590
  br label %kmalloc_index.exit.i127, !dbg !4590

if.end26.i.i69:                                   ; preds = %if.end23.i.i66
  %89 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4591
  %cmp27.i.i68 = icmp ule i64 %89, 256, !dbg !4592
  br i1 %cmp27.i.i68, label %if.then28.i.i70, label %if.end29.i.i72, !dbg !4593

if.then28.i.i70:                                  ; preds = %if.end26.i.i69
  store i32 8, i32* %retval.i.i17, align 4, !dbg !4594
  br label %kmalloc_index.exit.i127, !dbg !4594

if.end29.i.i72:                                   ; preds = %if.end26.i.i69
  %90 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4595
  %cmp30.i.i71 = icmp ule i64 %90, 512, !dbg !4596
  br i1 %cmp30.i.i71, label %if.then31.i.i73, label %if.end32.i.i75, !dbg !4597

if.then31.i.i73:                                  ; preds = %if.end29.i.i72
  store i32 9, i32* %retval.i.i17, align 4, !dbg !4598
  br label %kmalloc_index.exit.i127, !dbg !4598

if.end32.i.i75:                                   ; preds = %if.end29.i.i72
  %91 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4599
  %cmp33.i.i74 = icmp ule i64 %91, 1024, !dbg !4600
  br i1 %cmp33.i.i74, label %if.then34.i.i76, label %if.end35.i.i78, !dbg !4601

if.then34.i.i76:                                  ; preds = %if.end32.i.i75
  store i32 10, i32* %retval.i.i17, align 4, !dbg !4602
  br label %kmalloc_index.exit.i127, !dbg !4602

if.end35.i.i78:                                   ; preds = %if.end32.i.i75
  %92 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4603
  %cmp36.i.i77 = icmp ule i64 %92, 2048, !dbg !4604
  br i1 %cmp36.i.i77, label %if.then37.i.i79, label %if.end38.i.i81, !dbg !4605

if.then37.i.i79:                                  ; preds = %if.end35.i.i78
  store i32 11, i32* %retval.i.i17, align 4, !dbg !4606
  br label %kmalloc_index.exit.i127, !dbg !4606

if.end38.i.i81:                                   ; preds = %if.end35.i.i78
  %93 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4607
  %cmp39.i.i80 = icmp ule i64 %93, 4096, !dbg !4608
  br i1 %cmp39.i.i80, label %if.then40.i.i82, label %if.end41.i.i84, !dbg !4609

if.then40.i.i82:                                  ; preds = %if.end38.i.i81
  store i32 12, i32* %retval.i.i17, align 4, !dbg !4610
  br label %kmalloc_index.exit.i127, !dbg !4610

if.end41.i.i84:                                   ; preds = %if.end38.i.i81
  %94 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4611
  %cmp42.i.i83 = icmp ule i64 %94, 8192, !dbg !4612
  br i1 %cmp42.i.i83, label %if.then43.i.i85, label %if.end44.i.i87, !dbg !4613

if.then43.i.i85:                                  ; preds = %if.end41.i.i84
  store i32 13, i32* %retval.i.i17, align 4, !dbg !4614
  br label %kmalloc_index.exit.i127, !dbg !4614

if.end44.i.i87:                                   ; preds = %if.end41.i.i84
  %95 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4615
  %cmp45.i.i86 = icmp ule i64 %95, 16384, !dbg !4616
  br i1 %cmp45.i.i86, label %if.then46.i.i88, label %if.end47.i.i90, !dbg !4617

if.then46.i.i88:                                  ; preds = %if.end44.i.i87
  store i32 14, i32* %retval.i.i17, align 4, !dbg !4618
  br label %kmalloc_index.exit.i127, !dbg !4618

if.end47.i.i90:                                   ; preds = %if.end44.i.i87
  %96 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4619
  %cmp48.i.i89 = icmp ule i64 %96, 32768, !dbg !4620
  br i1 %cmp48.i.i89, label %if.then49.i.i91, label %if.end50.i.i93, !dbg !4621

if.then49.i.i91:                                  ; preds = %if.end47.i.i90
  store i32 15, i32* %retval.i.i17, align 4, !dbg !4622
  br label %kmalloc_index.exit.i127, !dbg !4622

if.end50.i.i93:                                   ; preds = %if.end47.i.i90
  %97 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4623
  %cmp51.i.i92 = icmp ule i64 %97, 65536, !dbg !4624
  br i1 %cmp51.i.i92, label %if.then52.i.i94, label %if.end53.i.i96, !dbg !4625

if.then52.i.i94:                                  ; preds = %if.end50.i.i93
  store i32 16, i32* %retval.i.i17, align 4, !dbg !4626
  br label %kmalloc_index.exit.i127, !dbg !4626

if.end53.i.i96:                                   ; preds = %if.end50.i.i93
  %98 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4627
  %cmp54.i.i95 = icmp ule i64 %98, 131072, !dbg !4628
  br i1 %cmp54.i.i95, label %if.then55.i.i97, label %if.end56.i.i99, !dbg !4629

if.then55.i.i97:                                  ; preds = %if.end53.i.i96
  store i32 17, i32* %retval.i.i17, align 4, !dbg !4630
  br label %kmalloc_index.exit.i127, !dbg !4630

if.end56.i.i99:                                   ; preds = %if.end53.i.i96
  %99 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4631
  %cmp57.i.i98 = icmp ule i64 %99, 262144, !dbg !4632
  br i1 %cmp57.i.i98, label %if.then58.i.i100, label %if.end59.i.i102, !dbg !4633

if.then58.i.i100:                                 ; preds = %if.end56.i.i99
  store i32 18, i32* %retval.i.i17, align 4, !dbg !4634
  br label %kmalloc_index.exit.i127, !dbg !4634

if.end59.i.i102:                                  ; preds = %if.end56.i.i99
  %100 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4635
  %cmp60.i.i101 = icmp ule i64 %100, 524288, !dbg !4636
  br i1 %cmp60.i.i101, label %if.then61.i.i103, label %if.end62.i.i105, !dbg !4637

if.then61.i.i103:                                 ; preds = %if.end59.i.i102
  store i32 19, i32* %retval.i.i17, align 4, !dbg !4638
  br label %kmalloc_index.exit.i127, !dbg !4638

if.end62.i.i105:                                  ; preds = %if.end59.i.i102
  %101 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4639
  %cmp63.i.i104 = icmp ule i64 %101, 1048576, !dbg !4640
  br i1 %cmp63.i.i104, label %if.then64.i.i106, label %if.end65.i.i108, !dbg !4641

if.then64.i.i106:                                 ; preds = %if.end62.i.i105
  store i32 20, i32* %retval.i.i17, align 4, !dbg !4642
  br label %kmalloc_index.exit.i127, !dbg !4642

if.end65.i.i108:                                  ; preds = %if.end62.i.i105
  %102 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4643
  %cmp66.i.i107 = icmp ule i64 %102, 2097152, !dbg !4644
  br i1 %cmp66.i.i107, label %if.then67.i.i109, label %if.end68.i.i111, !dbg !4645

if.then67.i.i109:                                 ; preds = %if.end65.i.i108
  store i32 21, i32* %retval.i.i17, align 4, !dbg !4646
  br label %kmalloc_index.exit.i127, !dbg !4646

if.end68.i.i111:                                  ; preds = %if.end65.i.i108
  %103 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4647
  %cmp69.i.i110 = icmp ule i64 %103, 4194304, !dbg !4648
  br i1 %cmp69.i.i110, label %if.then70.i.i112, label %if.end71.i.i114, !dbg !4649

if.then70.i.i112:                                 ; preds = %if.end68.i.i111
  store i32 22, i32* %retval.i.i17, align 4, !dbg !4650
  br label %kmalloc_index.exit.i127, !dbg !4650

if.end71.i.i114:                                  ; preds = %if.end68.i.i111
  %104 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4651
  %cmp72.i.i113 = icmp ule i64 %104, 8388608, !dbg !4652
  br i1 %cmp72.i.i113, label %if.then73.i.i115, label %if.end74.i.i117, !dbg !4653

if.then73.i.i115:                                 ; preds = %if.end71.i.i114
  store i32 23, i32* %retval.i.i17, align 4, !dbg !4654
  br label %kmalloc_index.exit.i127, !dbg !4654

if.end74.i.i117:                                  ; preds = %if.end71.i.i114
  %105 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4655
  %cmp75.i.i116 = icmp ule i64 %105, 16777216, !dbg !4656
  br i1 %cmp75.i.i116, label %if.then76.i.i118, label %if.end77.i.i120, !dbg !4657

if.then76.i.i118:                                 ; preds = %if.end74.i.i117
  store i32 24, i32* %retval.i.i17, align 4, !dbg !4658
  br label %kmalloc_index.exit.i127, !dbg !4658

if.end77.i.i120:                                  ; preds = %if.end74.i.i117
  %106 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4659
  %cmp78.i.i119 = icmp ule i64 %106, 33554432, !dbg !4660
  br i1 %cmp78.i.i119, label %if.then79.i.i121, label %if.end80.i.i123, !dbg !4661

if.then79.i.i121:                                 ; preds = %if.end77.i.i120
  store i32 25, i32* %retval.i.i17, align 4, !dbg !4662
  br label %kmalloc_index.exit.i127, !dbg !4662

if.end80.i.i123:                                  ; preds = %if.end77.i.i120
  %107 = load i64, i64* %size.addr.i11.i18, align 8, !dbg !4663
  %cmp81.i.i122 = icmp ule i64 %107, 67108864, !dbg !4664
  br i1 %cmp81.i.i122, label %if.then82.i.i124, label %if.end83.i.i125, !dbg !4665

if.then82.i.i124:                                 ; preds = %if.end80.i.i123
  store i32 26, i32* %retval.i.i17, align 4, !dbg !4666
  br label %kmalloc_index.exit.i127, !dbg !4666

if.end83.i.i125:                                  ; preds = %if.end80.i.i123
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4667, !srcloc !4484
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 204) #9, !dbg !4668, !srcloc !4488
  unreachable, !dbg !4669

kmalloc_index.exit.i127:                          ; preds = %if.then82.i.i124, %if.then79.i.i121, %if.then76.i.i118, %if.then73.i.i115, %if.then70.i.i112, %if.then67.i.i109, %if.then64.i.i106, %if.then61.i.i103, %if.then58.i.i100, %if.then55.i.i97, %if.then52.i.i94, %if.then49.i.i91, %if.then46.i.i88, %if.then43.i.i85, %if.then40.i.i82, %if.then37.i.i79, %if.then34.i.i76, %if.then31.i.i73, %if.then28.i.i70, %if.then25.i.i67, %if.then22.i.i64, %if.then19.i.i61, %if.then16.i.i58, %if.then13.i.i55, %if.then10.i.i52, %if.then5.i.i47, %if.then1.i.i42, %if.then.i.i39
  %108 = load i32, i32* %retval.i.i17, align 4, !dbg !4670
  store i32 %108, i32* %index.i28, align 4, !dbg !4671
  %109 = load i32, i32* %index.i28, align 4, !dbg !4672
  %tobool.i126 = icmp ne i32 %109, 0, !dbg !4672
  br i1 %tobool.i126, label %if.end4.i134, label %if.then3.i128, !dbg !4673

if.then3.i128:                                    ; preds = %kmalloc_index.exit.i127
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i25, align 8, !dbg !4674
  br label %kmalloc.exit155, !dbg !4674

if.end4.i134:                                     ; preds = %kmalloc_index.exit.i127
  %110 = load i32, i32* %flags.addr.i27, align 4, !dbg !4675
  store i32 %110, i32* %flags.addr.i13.i16, align 4
  %111 = load i32, i32* %flags.addr.i13.i16, align 4, !dbg !4676
  %and.i.i129 = and i32 %111, 17, !dbg !4676
  %cmp.i14.i130 = icmp eq i32 %and.i.i129, 0, !dbg !4676
  %lnot.i.i131 = xor i1 %cmp.i14.i130, true, !dbg !4676
  %lnot.ext.i.i132 = zext i1 %cmp.i14.i130 to i32, !dbg !4676
  %conv.i.i133 = sext i32 %lnot.ext.i.i132 to i64, !dbg !4676
  br i1 %cmp.i14.i130, label %if.then.i15.i135, label %if.end.i16.i139, !dbg !4677

if.then.i15.i135:                                 ; preds = %if.end4.i134
  store i32 0, i32* %retval.i12.i15, align 4, !dbg !4678
  br label %kmalloc_type.exit.i149, !dbg !4678

if.end.i16.i139:                                  ; preds = %if.end4.i134
  %112 = load i32, i32* %flags.addr.i13.i16, align 4, !dbg !4679
  %and2.i.i136 = and i32 %112, 1, !dbg !4680
  %tobool3.i.i137 = icmp ne i32 %and2.i.i136, 0, !dbg !4679
  %113 = zext i1 %tobool3.i.i137 to i64, !dbg !4679
  %cond.i.i138 = select i1 %tobool3.i.i137, i32 2, i32 1, !dbg !4679
  store i32 %cond.i.i138, i32* %retval.i12.i15, align 4, !dbg !4681
  br label %kmalloc_type.exit.i149, !dbg !4681

kmalloc_type.exit.i149:                           ; preds = %if.end.i16.i139, %if.then.i15.i135
  %114 = load i32, i32* %retval.i12.i15, align 4, !dbg !4682
  %idxprom.i140 = zext i32 %114 to i64, !dbg !4683
  %arrayidx.i141 = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i140, !dbg !4683
  %115 = load i32, i32* %index.i28, align 4, !dbg !4684
  %idxprom6.i142 = zext i32 %115 to i64, !dbg !4683
  %arrayidx7.i143 = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i141, i64 0, i64 %idxprom6.i142, !dbg !4683
  %116 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i143, align 8, !dbg !4683
  %117 = load i32, i32* %flags.addr.i27, align 4, !dbg !4685
  %118 = load i64, i64* %size.addr.i26, align 8, !dbg !4686
  store %struct.kmem_cache* %116, %struct.kmem_cache** %s.addr.i.i11, align 8
  store i32 %117, i32* %flags.addr.i17.i12, align 4
  store i64 %118, i64* %size.addr.i18.i13, align 8
  %119 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i11, align 8, !dbg !4687
  %120 = load i32, i32* %flags.addr.i17.i12, align 4, !dbg !4688
  %call.i19.i144 = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %119, i32 %120) #12, !dbg !4689
  %ptrint.i.i145 = ptrtoint i8* %call.i19.i144 to i64, !dbg !4689
  %maskedptr.i.i146 = and i64 %ptrint.i.i145, 7, !dbg !4689
  %maskcond.i.i147 = icmp eq i64 %maskedptr.i.i146, 0, !dbg !4689
  call void @llvm.assume(i1 %maskcond.i.i147) #9, !dbg !4689
  store i8* %call.i19.i144, i8** %ret.i.i14, align 8, !dbg !4255
  %121 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i11, align 8, !dbg !4690
  %122 = load i8*, i8** %ret.i.i14, align 8, !dbg !4691
  %123 = load i64, i64* %size.addr.i18.i13, align 8, !dbg !4692
  %124 = load i32, i32* %flags.addr.i17.i12, align 4, !dbg !4693
  %call1.i.i148 = call i8* @kasan_kmalloc(%struct.kmem_cache* %121, i8* %122, i64 %123, i32 %124) #12, !dbg !4694
  store i8* %call1.i.i148, i8** %ret.i.i14, align 8, !dbg !4695
  %125 = load i8*, i8** %ret.i.i14, align 8, !dbg !4696
  store i8* %125, i8** %retval.i25, align 8, !dbg !4697
  br label %kmalloc.exit155, !dbg !4697

if.end9.i154:                                     ; preds = %if.end
  %126 = load i64, i64* %size.addr.i26, align 8, !dbg !4698
  %127 = load i32, i32* %flags.addr.i27, align 4, !dbg !4699
  %call10.i150 = call noalias i8* @__kmalloc(i64 %126, i32 %127) #12, !dbg !4700
  %ptrint.i151 = ptrtoint i8* %call10.i150 to i64, !dbg !4700
  %maskedptr.i152 = and i64 %ptrint.i151, 7, !dbg !4700
  %maskcond.i153 = icmp eq i64 %maskedptr.i152, 0, !dbg !4700
  call void @llvm.assume(i1 %maskcond.i153) #9, !dbg !4700
  store i8* %call10.i150, i8** %retval.i25, align 8, !dbg !4701
  br label %kmalloc.exit155, !dbg !4701

kmalloc.exit155:                                  ; preds = %if.then1.i36, %if.then3.i128, %kmalloc_type.exit.i149, %if.end9.i154
  %128 = load i8*, i8** %retval.i25, align 8, !dbg !4702
  store i8* %128, i8** @rng_fillbuf, align 8, !dbg !4703
  %129 = load i8*, i8** @rng_fillbuf, align 8, !dbg !4704
  %tobool4 = icmp ne i8* %129, null, !dbg !4704
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !4706

if.then5:                                         ; preds = %kmalloc.exit155
  %130 = load i8*, i8** @rng_buffer, align 8, !dbg !4707
  call void @kfree(i8* %130) #8, !dbg !4709
  store i32 -12, i32* %retval, align 4, !dbg !4710
  br label %return, !dbg !4710

if.end6:                                          ; preds = %kmalloc.exit155
  %call7 = call i32 @register_miscdev() #10, !dbg !4711
  store i32 %call7, i32* %ret, align 4, !dbg !4712
  %131 = load i32, i32* %ret, align 4, !dbg !4713
  %tobool8 = icmp ne i32 %131, 0, !dbg !4713
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4715

if.then9:                                         ; preds = %if.end6
  %132 = load i8*, i8** @rng_fillbuf, align 8, !dbg !4716
  call void @kfree(i8* %132) #8, !dbg !4718
  %133 = load i8*, i8** @rng_buffer, align 8, !dbg !4719
  call void @kfree(i8* %133) #8, !dbg !4720
  br label %if.end10, !dbg !4721

if.end10:                                         ; preds = %if.then9, %if.end6
  %134 = load i32, i32* %ret, align 4, !dbg !4722
  store i32 %134, i32* %retval, align 4, !dbg !4723
  br label %return, !dbg !4723

return:                                           ; preds = %if.end10, %if.then5, %if.then
  %135 = load i32, i32* %retval, align 4, !dbg !4724
  ret i32 %135, !dbg !4724
}

; Function Attrs: noredzone
declare dso_local i64 @noop_llseek(%struct.file*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @rng_dev_read(%struct.file* %filp, i8* %buf, i64 %size, i64* %offp) #2 !dbg !4725 {
entry:
  %pscr_ret__.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i, metadata !4726, metadata !DIExpression()), !dbg !4732
  %__vpp_verify.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i, metadata !4736, metadata !DIExpression()), !dbg !4738
  %pfo_val__.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i, metadata !4739, metadata !DIExpression()), !dbg !4741
  %tmp.i = alloca %struct.task_struct*, align 8
  %tmp1.i = alloca %struct.task_struct*, align 8
  %pscr_ret__.i.i = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %pscr_ret__.i.i, metadata !4726, metadata !DIExpression()), !dbg !4742
  %__vpp_verify.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify.i.i, metadata !4736, metadata !DIExpression()), !dbg !4747
  %pfo_val__.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %pfo_val__.i.i, metadata !4739, metadata !DIExpression()), !dbg !4748
  %tmp.i.i53 = alloca %struct.task_struct*, align 8
  %tmp1.i.i = alloca %struct.task_struct*, align 8
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4749, metadata !DIExpression()), !dbg !4754
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4765, metadata !DIExpression()), !dbg !4766
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4767, metadata !DIExpression()), !dbg !4768
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4769, metadata !DIExpression()), !dbg !4770
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4771, metadata !DIExpression()), !dbg !4774
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4775, metadata !DIExpression()), !dbg !4776
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4777, metadata !DIExpression()), !dbg !4778
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4779, metadata !DIExpression()), !dbg !4780
  %filp.addr = alloca %struct.file*, align 8
  %buf.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %offp.addr = alloca i64*, align 8
  %ret = alloca i64, align 8
  %err = alloca i32, align 4
  %bytes_read = alloca i32, align 4
  %len = alloca i32, align 4
  %rng = alloca %struct.hwrng*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !4781, metadata !DIExpression()), !dbg !4782
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4783, metadata !DIExpression()), !dbg !4784
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4785, metadata !DIExpression()), !dbg !4786
  store i64* %offp, i64** %offp.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %offp.addr, metadata !4787, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !4789, metadata !DIExpression()), !dbg !4790
  store i64 0, i64* %ret, align 8, !dbg !4790
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4791, metadata !DIExpression()), !dbg !4792
  store i32 0, i32* %err, align 4, !dbg !4792
  call void @llvm.dbg.declare(metadata i32* %bytes_read, metadata !4793, metadata !DIExpression()), !dbg !4794
  call void @llvm.dbg.declare(metadata i32* %len, metadata !4795, metadata !DIExpression()), !dbg !4796
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng, metadata !4797, metadata !DIExpression()), !dbg !4798
  br label %while.cond, !dbg !4799

while.cond:                                       ; preds = %if.end50, %entry
  %0 = load i64, i64* %size.addr, align 8, !dbg !4800
  %tobool = icmp ne i64 %0, 0, !dbg !4799
  br i1 %tobool, label %while.body, label %while.end, !dbg !4799

while.body:                                       ; preds = %while.cond
  %call = call %struct.hwrng* @get_current_rng() #8, !dbg !4801
  store %struct.hwrng* %call, %struct.hwrng** %rng, align 8, !dbg !4802
  %1 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !4803
  %2 = bitcast %struct.hwrng* %1 to i8*, !dbg !4803
  %call1 = call zeroext i1 @IS_ERR(i8* %2) #8, !dbg !4805
  br i1 %call1, label %if.then, label %if.end, !dbg !4806

if.then:                                          ; preds = %while.body
  %3 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !4807
  %4 = bitcast %struct.hwrng* %3 to i8*, !dbg !4807
  %call2 = call i64 @PTR_ERR(i8* %4) #8, !dbg !4809
  %conv = trunc i64 %call2 to i32, !dbg !4809
  store i32 %conv, i32* %err, align 4, !dbg !4810
  br label %out, !dbg !4811

if.end:                                           ; preds = %while.body
  %5 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !4812
  %tobool3 = icmp ne %struct.hwrng* %5, null, !dbg !4812
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4814

if.then4:                                         ; preds = %if.end
  store i32 -19, i32* %err, align 4, !dbg !4815
  br label %out, !dbg !4817

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @mutex_lock_interruptible(%struct.mutex* @reading_mutex) #8, !dbg !4818
  %tobool7 = icmp ne i32 %call6, 0, !dbg !4818
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4820

if.then8:                                         ; preds = %if.end5
  store i32 -512, i32* %err, align 4, !dbg !4821
  br label %out_put, !dbg !4823

if.end9:                                          ; preds = %if.end5
  %6 = load i32, i32* @data_avail, align 4, !dbg !4824
  %tobool10 = icmp ne i32 %6, 0, !dbg !4824
  br i1 %tobool10, label %if.end18, label %if.then11, !dbg !4826

if.then11:                                        ; preds = %if.end9
  %7 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !4827
  %8 = load i8*, i8** @rng_buffer, align 8, !dbg !4829
  %call12 = call i64 @rng_buffer_size() #8, !dbg !4830
  %9 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !4831
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 7, !dbg !4832
  %10 = load i32, i32* %f_flags, align 8, !dbg !4832
  %and = and i32 %10, 2048, !dbg !4833
  %tobool13 = icmp ne i32 %and, 0, !dbg !4834
  %lnot = xor i1 %tobool13, true, !dbg !4834
  %lnot.ext = zext i1 %lnot to i32, !dbg !4834
  %call14 = call i32 @rng_get_data(%struct.hwrng* %7, i8* %8, i64 %call12, i32 %lnot.ext) #8, !dbg !4835
  store i32 %call14, i32* %bytes_read, align 4, !dbg !4836
  %11 = load i32, i32* %bytes_read, align 4, !dbg !4837
  %cmp = icmp slt i32 %11, 0, !dbg !4839
  br i1 %cmp, label %if.then16, label %if.end17, !dbg !4840

if.then16:                                        ; preds = %if.then11
  %12 = load i32, i32* %bytes_read, align 4, !dbg !4841
  store i32 %12, i32* %err, align 4, !dbg !4843
  br label %out_unlock_reading, !dbg !4844

if.end17:                                         ; preds = %if.then11
  %13 = load i32, i32* %bytes_read, align 4, !dbg !4845
  store i32 %13, i32* @data_avail, align 4, !dbg !4846
  br label %if.end18, !dbg !4847

if.end18:                                         ; preds = %if.end17, %if.end9
  %14 = load i32, i32* @data_avail, align 4, !dbg !4848
  %tobool19 = icmp ne i32 %14, 0, !dbg !4848
  br i1 %tobool19, label %if.else, label %if.then20, !dbg !4849

if.then20:                                        ; preds = %if.end18
  %15 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !4850
  %f_flags21 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 7, !dbg !4853
  %16 = load i32, i32* %f_flags21, align 8, !dbg !4853
  %and22 = and i32 %16, 2048, !dbg !4854
  %tobool23 = icmp ne i32 %and22, 0, !dbg !4854
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !4855

if.then24:                                        ; preds = %if.then20
  store i32 -11, i32* %err, align 4, !dbg !4856
  br label %out_unlock_reading, !dbg !4858

if.end25:                                         ; preds = %if.then20
  br label %if.end41, !dbg !4859

if.else:                                          ; preds = %if.end18
  %17 = load i32, i32* @data_avail, align 4, !dbg !4860
  store i32 %17, i32* %len, align 4, !dbg !4861
  %18 = load i32, i32* %len, align 4, !dbg !4862
  %conv26 = sext i32 %18 to i64, !dbg !4862
  %19 = load i64, i64* %size.addr, align 8, !dbg !4864
  %cmp27 = icmp ugt i64 %conv26, %19, !dbg !4865
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !4866

if.then29:                                        ; preds = %if.else
  %20 = load i64, i64* %size.addr, align 8, !dbg !4867
  %conv30 = trunc i64 %20 to i32, !dbg !4867
  store i32 %conv30, i32* %len, align 4, !dbg !4868
  br label %if.end31, !dbg !4869

if.end31:                                         ; preds = %if.then29, %if.else
  %21 = load i32, i32* %len, align 4, !dbg !4870
  %22 = load i32, i32* @data_avail, align 4, !dbg !4871
  %sub = sub i32 %22, %21, !dbg !4871
  store i32 %sub, i32* @data_avail, align 4, !dbg !4871
  %23 = load i8*, i8** %buf.addr, align 8, !dbg !4872
  %24 = load i64, i64* %ret, align 8, !dbg !4873
  %add.ptr = getelementptr i8, i8* %23, i64 %24, !dbg !4874
  %25 = load i8*, i8** @rng_buffer, align 8, !dbg !4875
  %26 = load i32, i32* @data_avail, align 4, !dbg !4876
  %idx.ext = sext i32 %26 to i64, !dbg !4877
  %add.ptr32 = getelementptr i8, i8* %25, i64 %idx.ext, !dbg !4877
  %27 = load i32, i32* %len, align 4, !dbg !4878
  %conv33 = sext i32 %27 to i64, !dbg !4878
  store i8* %add.ptr, i8** %to.addr.i, align 8
  store i8* %add.ptr32, i8** %from.addr.i, align 8
  store i64 %conv33, i64* %n.addr.i, align 8
  %28 = load i8*, i8** %from.addr.i, align 8, !dbg !4879
  %29 = load i64, i64* %n.addr.i, align 8, !dbg !4879
  store i8* %28, i8** %addr.addr.i.i, align 8
  store i64 %29, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !4770
  %30 = load i32, i32* %sz.i.i, align 4, !dbg !4880
  %cmp.i.i = icmp sge i32 %30, 0, !dbg !4880
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !4880

land.rhs.i.i:                                     ; preds = %if.end31
  %31 = load i32, i32* %sz.i.i, align 4, !dbg !4880
  %conv.i.i = sext i32 %31 to i64, !dbg !4880
  %32 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4880
  %cmp1.i.i = icmp ult i64 %conv.i.i, %32, !dbg !4880
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end31
  %33 = phi i1 [ false, %if.end31 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !4882
  %lnot.i.i = xor i1 %33, true, !dbg !4880
  %lnot.ext.i.i = zext i1 %33 to i32, !dbg !4880
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4880
  br i1 %33, label %if.then.i.i, label %if.end10.i.i, !dbg !4883

if.then.i.i:                                      ; preds = %land.end.i.i
  %34 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4884
  %35 = call i1 @llvm.is.constant.i64(i64 %34) #9, !dbg !4887
  br i1 %35, label %if.else.i.i, label %if.then5.i.i, !dbg !4888

if.then5.i.i:                                     ; preds = %if.then.i.i
  %36 = load i32, i32* %sz.i.i, align 4, !dbg !4889
  %37 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4890
  call void @copy_overflow(i32 %36, i64 %37) #12, !dbg !4891
  br label %if.end9.i.i, !dbg !4891

if.else.i.i:                                      ; preds = %if.then.i.i
  %38 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4892
  %tobool6.i.i = trunc i8 %38 to i1, !dbg !4892
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !4894

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #12, !dbg !4895
  br label %if.end.i.i, !dbg !4895

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #12, !dbg !4896
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4897
  br label %check_copy_size.exit.i, !dbg !4897

if.end10.i.i:                                     ; preds = %land.end.i.i
  %39 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4774
  %cmp11.i.i = icmp ugt i64 %39, 2147483647, !dbg !4774
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !4774
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !4774
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !4774
  %40 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4898
  %tobool17.i.i = icmp ne i32 %40, 0, !dbg !4898
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !4898
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !4898
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !4898
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !4774

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 150, i32 2307, i64 12) #9, !dbg !4900, !srcloc !4903
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #9, !dbg !4904, !srcloc !4906
  br label %if.end31.i.i, !dbg !4907

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %41 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4774
  %tobool32.i.i = icmp ne i32 %41, 0, !dbg !4774
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !4774
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !4774
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !4774
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !4898
  %42 = load i64, i64* %tmp.i.i, align 8, !dbg !4774
  %tobool38.i.i = icmp ne i64 %42, 0, !dbg !4908
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !4909

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4910
  br label %check_copy_size.exit.i, !dbg !4910

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %43 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !4911
  %44 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4912
  %45 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4913
  %tobool41.i.i = trunc i8 %45 to i1, !dbg !4913
  call void @check_object_size(i8* %43, i64 %44, i1 zeroext %tobool41.i.i) #12, !dbg !4914
  store i1 true, i1* %retval.i.i, align 1, !dbg !4915
  br label %check_copy_size.exit.i, !dbg !4915

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %46 = load i1, i1* %retval.i.i, align 1, !dbg !4916
  %lnot.i = xor i1 %46, true, !dbg !4879
  %lnot.ext.i = zext i1 %46 to i32, !dbg !4879
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !4879
  br i1 %46, label %if.then.i, label %copy_to_user.exit, !dbg !4917

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %47 = load i8*, i8** %to.addr.i, align 8, !dbg !4918
  %48 = load i8*, i8** %from.addr.i, align 8, !dbg !4919
  %49 = load i64, i64* %n.addr.i, align 8, !dbg !4920
  %call2.i = call i64 @_copy_to_user(i8* %47, i8* %48, i64 %49) #12, !dbg !4921
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !4922
  br label %copy_to_user.exit, !dbg !4923

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %50 = load i64, i64* %n.addr.i, align 8, !dbg !4924
  %tobool35 = icmp ne i64 %50, 0, !dbg !4925
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !4926

if.then36:                                        ; preds = %copy_to_user.exit
  store i32 -14, i32* %err, align 4, !dbg !4927
  br label %out_unlock_reading, !dbg !4929

if.end37:                                         ; preds = %copy_to_user.exit
  %51 = load i32, i32* %len, align 4, !dbg !4930
  %conv38 = sext i32 %51 to i64, !dbg !4930
  %52 = load i64, i64* %size.addr, align 8, !dbg !4931
  %sub39 = sub i64 %52, %conv38, !dbg !4931
  store i64 %sub39, i64* %size.addr, align 8, !dbg !4931
  %53 = load i32, i32* %len, align 4, !dbg !4932
  %conv40 = sext i32 %53 to i64, !dbg !4932
  %54 = load i64, i64* %ret, align 8, !dbg !4933
  %add = add i64 %54, %conv40, !dbg !4933
  store i64 %add, i64* %ret, align 8, !dbg !4933
  br label %if.end41

if.end41:                                         ; preds = %if.end37, %if.end25
  call void @mutex_unlock(%struct.mutex* @reading_mutex) #8, !dbg !4934
  %55 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !4935
  call void @put_rng(%struct.hwrng* %55) #8, !dbg !4936
  store i8* null, i8** %__vpp_verify.i.i, align 8, !dbg !4747
  %56 = load i8*, i8** %__vpp_verify.i.i, align 8, !dbg !4747
  %57 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #13, !dbg !4748, !srcloc !4937
  store i64 %57, i64* %pfo_val__.i.i, align 8, !dbg !4748
  %58 = load i64, i64* %pfo_val__.i.i, align 8, !dbg !4748
  %59 = inttoptr i64 %58 to %struct.task_struct*, !dbg !4748
  store %struct.task_struct* %59, %struct.task_struct** %tmp.i.i53, align 8, !dbg !4748
  %60 = load %struct.task_struct*, %struct.task_struct** %tmp.i.i53, align 8, !dbg !4748
  store %struct.task_struct* %60, %struct.task_struct** %pscr_ret__.i.i, align 8, !dbg !4742
  %61 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i.i, align 8, !dbg !4742
  store %struct.task_struct* %61, %struct.task_struct** %tmp1.i.i, align 8, !dbg !4742
  %62 = load %struct.task_struct*, %struct.task_struct** %tmp1.i.i, align 8, !dbg !4742
  %63 = bitcast %struct.task_struct* %62 to %struct.thread_info*, !dbg !4938
  %call1.i = call i32 @test_ti_thread_flag(%struct.thread_info* %63, i32 3) #12, !dbg !4938
  %tobool.i = icmp ne i32 %call1.i, 0, !dbg !4938
  %lnot.i54 = xor i1 %tobool.i, true, !dbg !4938
  %lnot.ext.i55 = zext i1 %tobool.i to i32, !dbg !4938
  %conv.i56 = sext i32 %lnot.ext.i55 to i64, !dbg !4938
  br i1 %tobool.i, label %if.then43, label %if.end45, !dbg !4939

if.then43:                                        ; preds = %if.end41
  %call44 = call i64 @schedule_timeout_interruptible(i64 1) #8, !dbg !4940
  br label %if.end45, !dbg !4940

if.end45:                                         ; preds = %if.then43, %if.end41
  store i8* null, i8** %__vpp_verify.i, align 8, !dbg !4738
  %64 = load i8*, i8** %__vpp_verify.i, align 8, !dbg !4738
  %65 = call i64 asm "movq ${1:P}, $0", "=r,im,~{dirflag},~{fpsr},~{flags}"(%struct.task_struct** @current_task) #13, !dbg !4741, !srcloc !4937
  store i64 %65, i64* %pfo_val__.i, align 8, !dbg !4741
  %66 = load i64, i64* %pfo_val__.i, align 8, !dbg !4741
  %67 = inttoptr i64 %66 to %struct.task_struct*, !dbg !4741
  store %struct.task_struct* %67, %struct.task_struct** %tmp.i, align 8, !dbg !4741
  %68 = load %struct.task_struct*, %struct.task_struct** %tmp.i, align 8, !dbg !4741
  store %struct.task_struct* %68, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4732
  %69 = load %struct.task_struct*, %struct.task_struct** %pscr_ret__.i, align 8, !dbg !4732
  store %struct.task_struct* %69, %struct.task_struct** %tmp1.i, align 8, !dbg !4732
  %70 = load %struct.task_struct*, %struct.task_struct** %tmp1.i, align 8, !dbg !4732
  %call47 = call i32 @signal_pending(%struct.task_struct* %70) #8, !dbg !4941
  %tobool48 = icmp ne i32 %call47, 0, !dbg !4941
  br i1 %tobool48, label %if.then49, label %if.end50, !dbg !4942

if.then49:                                        ; preds = %if.end45
  store i32 -512, i32* %err, align 4, !dbg !4943
  br label %out, !dbg !4945

if.end50:                                         ; preds = %if.end45
  br label %while.cond, !dbg !4799, !llvm.loop !4946

while.end:                                        ; preds = %while.cond
  br label %out, !dbg !4799

out:                                              ; preds = %out_put, %while.end, %if.then49, %if.then4, %if.then
  call void @llvm.dbg.label(metadata !4948), !dbg !4949
  %71 = load i64, i64* %ret, align 8, !dbg !4950
  %tobool51 = icmp ne i64 %71, 0, !dbg !4950
  br i1 %tobool51, label %cond.true, label %cond.false, !dbg !4950

cond.true:                                        ; preds = %out
  br label %cond.end, !dbg !4950

cond.false:                                       ; preds = %out
  %72 = load i32, i32* %err, align 4, !dbg !4951
  %conv52 = sext i32 %72 to i64, !dbg !4951
  br label %cond.end, !dbg !4950

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %71, %cond.true ], [ %conv52, %cond.false ], !dbg !4950
  ret i64 %cond, !dbg !4952

out_unlock_reading:                               ; preds = %if.then36, %if.then24, %if.then16
  call void @llvm.dbg.label(metadata !4953), !dbg !4954
  call void @mutex_unlock(%struct.mutex* @reading_mutex) #8, !dbg !4955
  br label %out_put, !dbg !4955

out_put:                                          ; preds = %out_unlock_reading, %if.then8
  call void @llvm.dbg.label(metadata !4956), !dbg !4957
  %73 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !4958
  call void @put_rng(%struct.hwrng* %73) #8, !dbg !4959
  br label %out, !dbg !4960
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rng_dev_open(%struct.inode* %inode, %struct.file* %filp) #2 !dbg !4961 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %filp.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4962, metadata !DIExpression()), !dbg !4963
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !4964, metadata !DIExpression()), !dbg !4965
  %0 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !4966
  %f_mode = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 8, !dbg !4968
  %1 = load i32, i32* %f_mode, align 4, !dbg !4968
  %and = and i32 %1, 1, !dbg !4969
  %cmp = icmp eq i32 %and, 0, !dbg !4970
  br i1 %cmp, label %if.then, label %if.end, !dbg !4971

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !4972
  br label %return, !dbg !4972

if.end:                                           ; preds = %entry
  %2 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !4973
  %f_mode1 = getelementptr inbounds %struct.file, %struct.file* %2, i32 0, i32 8, !dbg !4975
  %3 = load i32, i32* %f_mode1, align 4, !dbg !4975
  %and2 = and i32 %3, 2, !dbg !4976
  %tobool = icmp ne i32 %and2, 0, !dbg !4976
  br i1 %tobool, label %if.then3, label %if.end4, !dbg !4977

if.then3:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4978
  br label %return, !dbg !4978

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4979
  br label %return, !dbg !4979

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !4980
  ret i32 %4, !dbg !4980
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.hwrng* @get_current_rng() #2 !dbg !4981 {
entry:
  %retval = alloca %struct.hwrng*, align 8
  %rng = alloca %struct.hwrng*, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng, metadata !4982, metadata !DIExpression()), !dbg !4983
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* @rng_mutex) #8, !dbg !4984
  %tobool = icmp ne i32 %call, 0, !dbg !4984
  br i1 %tobool, label %if.then, label %if.end, !dbg !4986

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -512) #8, !dbg !4987
  %0 = bitcast i8* %call1 to %struct.hwrng*, !dbg !4987
  store %struct.hwrng* %0, %struct.hwrng** %retval, align 8, !dbg !4988
  br label %return, !dbg !4988

if.end:                                           ; preds = %entry
  %call2 = call %struct.hwrng* @get_current_rng_nolock() #8, !dbg !4989
  store %struct.hwrng* %call2, %struct.hwrng** %rng, align 8, !dbg !4990
  call void @mutex_unlock(%struct.mutex* @rng_mutex) #8, !dbg !4991
  %1 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !4992
  store %struct.hwrng* %1, %struct.hwrng** %retval, align 8, !dbg !4993
  br label %return, !dbg !4993

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct.hwrng*, %struct.hwrng** %retval, align 8, !dbg !4994
  ret %struct.hwrng* %2, !dbg !4994
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !4995 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !4999, metadata !DIExpression()), !dbg !5000
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5001
  %1 = ptrtoint i8* %0 to i64, !dbg !5001
  %2 = inttoptr i64 %1 to i8*, !dbg !5001
  %3 = ptrtoint i8* %2 to i64, !dbg !5001
  %cmp = icmp uge i64 %3, -4095, !dbg !5001
  %lnot = xor i1 %cmp, true, !dbg !5001
  %lnot1 = xor i1 %lnot, true, !dbg !5001
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5001
  %conv = sext i32 %lnot.ext to i64, !dbg !5001
  %tobool = icmp ne i64 %conv, 0, !dbg !5001
  ret i1 %tobool, !dbg !5002
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !5003 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5006, metadata !DIExpression()), !dbg !5007
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5008
  %1 = ptrtoint i8* %0 to i64, !dbg !5009
  ret i64 %1, !dbg !5010
}

; Function Attrs: noredzone
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @rng_get_data(%struct.hwrng* %rng, i8* %buffer, i64 %size, i32 %wait) #2 !dbg !5011 {
entry:
  %retval = alloca i32, align 4
  %rng.addr = alloca %struct.hwrng*, align 8
  %buffer.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %wait.addr = alloca i32, align 4
  %present = alloca i32, align 4
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !5014, metadata !DIExpression()), !dbg !5015
  store i8* %buffer, i8** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buffer.addr, metadata !5016, metadata !DIExpression()), !dbg !5017
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5018, metadata !DIExpression()), !dbg !5019
  store i32 %wait, i32* %wait.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %wait.addr, metadata !5020, metadata !DIExpression()), !dbg !5021
  call void @llvm.dbg.declare(metadata i32* %present, metadata !5022, metadata !DIExpression()), !dbg !5023
  br label %do.body, !dbg !5024

do.body:                                          ; preds = %entry
  %call = call zeroext i1 @mutex_is_locked(%struct.mutex* @reading_mutex) #8, !dbg !5025
  %lnot = xor i1 %call, true, !dbg !5025
  %lnot1 = xor i1 %lnot, true, !dbg !5025
  %lnot2 = xor i1 %lnot1, true, !dbg !5025
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5025
  %conv = sext i32 %lnot.ext to i64, !dbg !5025
  %tobool = icmp ne i64 %conv, 0, !dbg !5025
  br i1 %tobool, label %if.then, label %if.end, !dbg !5028

if.then:                                          ; preds = %do.body
  br label %do.body3, !dbg !5025

do.body3:                                         ; preds = %if.then
  br label %do.body4, !dbg !5029

do.body4:                                         ; preds = %do.body3
  br label %do.end, !dbg !5031

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5029

do.body5:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 190, i32 0, i64 12) #9, !dbg !5033, !srcloc !5035
  br label %do.end6, !dbg !5033

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !5029

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 214) #9, !dbg !5036, !srcloc !5039
  unreachable, !dbg !5040

do.end8:                                          ; No predecessors!
  br label %do.end9, !dbg !5029

do.end9:                                          ; preds = %do.end8
  br label %if.end, !dbg !5029

if.end:                                           ; preds = %do.end9, %do.body
  br label %do.end10, !dbg !5028

do.end10:                                         ; preds = %if.end
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !5041
  %read = getelementptr inbounds %struct.hwrng, %struct.hwrng* %0, i32 0, i32 5, !dbg !5043
  %1 = load i32 (%struct.hwrng*, i8*, i64, i1)*, i32 (%struct.hwrng*, i8*, i64, i1)** %read, align 8, !dbg !5043
  %tobool11 = icmp ne i32 (%struct.hwrng*, i8*, i64, i1)* %1, null, !dbg !5041
  br i1 %tobool11, label %if.then12, label %if.end16, !dbg !5044

if.then12:                                        ; preds = %do.end10
  %2 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !5045
  %read13 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %2, i32 0, i32 5, !dbg !5046
  %3 = load i32 (%struct.hwrng*, i8*, i64, i1)*, i32 (%struct.hwrng*, i8*, i64, i1)** %read13, align 8, !dbg !5046
  %4 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !5047
  %5 = load i8*, i8** %buffer.addr, align 8, !dbg !5048
  %6 = load i64, i64* %size.addr, align 8, !dbg !5049
  %7 = load i32, i32* %wait.addr, align 4, !dbg !5050
  %tobool14 = icmp ne i32 %7, 0, !dbg !5050
  %call15 = call i32 %3(%struct.hwrng* %4, i8* %5, i64 %6, i1 zeroext %tobool14) #8, !dbg !5045
  store i32 %call15, i32* %retval, align 4, !dbg !5051
  br label %return, !dbg !5051

if.end16:                                         ; preds = %do.end10
  %8 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !5052
  %data_present = getelementptr inbounds %struct.hwrng, %struct.hwrng* %8, i32 0, i32 3, !dbg !5054
  %9 = load i32 (%struct.hwrng*, i32)*, i32 (%struct.hwrng*, i32)** %data_present, align 8, !dbg !5054
  %tobool17 = icmp ne i32 (%struct.hwrng*, i32)* %9, null, !dbg !5052
  br i1 %tobool17, label %if.then18, label %if.else, !dbg !5055

if.then18:                                        ; preds = %if.end16
  %10 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !5056
  %data_present19 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %10, i32 0, i32 3, !dbg !5057
  %11 = load i32 (%struct.hwrng*, i32)*, i32 (%struct.hwrng*, i32)** %data_present19, align 8, !dbg !5057
  %12 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !5058
  %13 = load i32, i32* %wait.addr, align 4, !dbg !5059
  %call20 = call i32 %11(%struct.hwrng* %12, i32 %13) #8, !dbg !5056
  store i32 %call20, i32* %present, align 4, !dbg !5060
  br label %if.end21, !dbg !5061

if.else:                                          ; preds = %if.end16
  store i32 1, i32* %present, align 4, !dbg !5062
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  %14 = load i32, i32* %present, align 4, !dbg !5063
  %tobool22 = icmp ne i32 %14, 0, !dbg !5063
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !5065

if.then23:                                        ; preds = %if.end21
  %15 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !5066
  %data_read = getelementptr inbounds %struct.hwrng, %struct.hwrng* %15, i32 0, i32 4, !dbg !5067
  %16 = load i32 (%struct.hwrng*, i32*)*, i32 (%struct.hwrng*, i32*)** %data_read, align 8, !dbg !5067
  %17 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !5068
  %18 = load i8*, i8** %buffer.addr, align 8, !dbg !5069
  %19 = bitcast i8* %18 to i32*, !dbg !5070
  %call24 = call i32 %16(%struct.hwrng* %17, i32* %19) #8, !dbg !5066
  store i32 %call24, i32* %retval, align 4, !dbg !5071
  br label %return, !dbg !5071

if.end25:                                         ; preds = %if.end21
  store i32 0, i32* %retval, align 4, !dbg !5072
  br label %return, !dbg !5072

return:                                           ; preds = %if.end25, %if.then23, %if.then12
  %20 = load i32, i32* %retval, align 4, !dbg !5073
  ret i32 %20, !dbg !5073
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @rng_buffer_size() #2 !dbg !5074 {
entry:
  ret i64 64, !dbg !5077
}

; Function Attrs: noredzone
declare dso_local i64 @schedule_timeout_interruptible(i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @signal_pending(%struct.task_struct* %p) #2 !dbg !5078 {
entry:
  %p.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %p, %struct.task_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %p.addr, metadata !5081, metadata !DIExpression()), !dbg !5082
  %0 = load %struct.task_struct*, %struct.task_struct** %p.addr, align 8, !dbg !5083
  %call = call i32 @test_tsk_thread_flag(%struct.task_struct* %0, i32 2) #8, !dbg !5083
  %tobool = icmp ne i32 %call, 0, !dbg !5083
  %lnot = xor i1 %tobool, true, !dbg !5083
  %lnot1 = xor i1 %lnot, true, !dbg !5083
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5083
  %conv = sext i32 %lnot.ext to i64, !dbg !5083
  %conv2 = trunc i64 %conv to i32, !dbg !5083
  ret i32 %conv2, !dbg !5084
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #2 !dbg !5085 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !5088, metadata !DIExpression()), !dbg !5089
  %0 = load i64, i64* %error.addr, align 8, !dbg !5090
  %1 = inttoptr i64 %0 to i8*, !dbg !5091
  ret i8* %1, !dbg !5092
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @mutex_is_locked(%struct.mutex*) #1

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #2 !dbg !5093 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5096, metadata !DIExpression()), !dbg !5097
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5098, metadata !DIExpression()), !dbg !5099
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5100, metadata !DIExpression()), !dbg !5102
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5102
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !5103
  %tobool = icmp ne i32 %0, 0, !dbg !5103
  %lnot = xor i1 %tobool, true, !dbg !5103
  %lnot1 = xor i1 %lnot, true, !dbg !5103
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5103
  %conv = sext i32 %lnot.ext to i64, !dbg !5103
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5103
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5102

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5103

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !5105

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !5107

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !5105
  %2 = load i64, i64* %count.addr, align 8, !dbg !5105
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %1, i64 %2) #8, !dbg !5105
  br label %do.body4, !dbg !5105

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !5109

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5111

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !5109

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 134, i32 2313, i64 12) #9, !dbg !5113, !srcloc !5115
  br label %do.end8, !dbg !5113

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #9, !dbg !5116, !srcloc !5118
  br label %do.body9, !dbg !5109

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5119

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !5109

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !5105

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5121

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5105

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !5105

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5102
  %tobool15 = icmp ne i32 %3, 0, !dbg !5102
  %lnot16 = xor i1 %tobool15, true, !dbg !5102
  %lnot18 = xor i1 %lnot16, true, !dbg !5102
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5102
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5102
  store i64 %conv20, i64* %tmp, align 8, !dbg !5103
  %4 = load i64, i64* %tmp, align 8, !dbg !5102
  ret void, !dbg !5123
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #1

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #2 !dbg !5124 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5127, metadata !DIExpression()), !dbg !5128
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5129, metadata !DIExpression()), !dbg !5130
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !5131, metadata !DIExpression()), !dbg !5132
  ret void, !dbg !5133
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_ti_thread_flag(%struct.thread_info* %ti, i32 %flag) #2 !dbg !5134 {
entry:
  %ti.addr = alloca %struct.thread_info*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.thread_info* %ti, %struct.thread_info** %ti.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.thread_info** %ti.addr, metadata !5137, metadata !DIExpression()), !dbg !5138
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !5139, metadata !DIExpression()), !dbg !5140
  %0 = load i32, i32* %flag.addr, align 4, !dbg !5141
  %conv = sext i32 %0 to i64, !dbg !5141
  %1 = load %struct.thread_info*, %struct.thread_info** %ti.addr, align 8, !dbg !5142
  %flags = getelementptr inbounds %struct.thread_info, %struct.thread_info* %1, i32 0, i32 0, !dbg !5143
  %call = call zeroext i1 @test_bit(i64 %conv, i64* %flags) #8, !dbg !5144
  %conv1 = zext i1 %call to i32, !dbg !5144
  ret i32 %conv1, !dbg !5145
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #2 !dbg !5146 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !5153, metadata !DIExpression()), !dbg !5156
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !5158, metadata !DIExpression()), !dbg !5159
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !5160, metadata !DIExpression()), !dbg !5161
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5162, metadata !DIExpression()), !dbg !5164
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5166, metadata !DIExpression()), !dbg !5167
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5168, metadata !DIExpression()), !dbg !5176
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5178, metadata !DIExpression()), !dbg !5179
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5180, metadata !DIExpression()), !dbg !5181
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5182, metadata !DIExpression()), !dbg !5183
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5184
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5185
  %div = sdiv i64 %1, 64, !dbg !5185
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5186
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5184
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5187
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5188
  %conv.i = trunc i64 %4 to i32, !dbg !5188
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #12, !dbg !5189
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5190
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5190
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !5190
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5191
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5191
  br i1 %8, label %cond.true, label %cond.false, !dbg !5191

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !5191
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !5191
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !5192
  %and.i = and i64 %11, 63, !dbg !5193
  %shl.i = shl i64 1, %and.i, !dbg !5194
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !5195
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5196
  %shr.i = ashr i64 %13, 6, !dbg !5197
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !5195
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !5195
  %and1.i = and i64 %shl.i, %14, !dbg !5198
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !5199
  %conv = zext i1 %cmp.i to i32, !dbg !5191
  br label %cond.end, !dbg !5191

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !5191
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !5191
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !5200
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !5201
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #9, !dbg !5202, !srcloc !5203
  store i8 %19, i8* %oldbit.i, align 1, !dbg !5202
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !5204
  %tobool.i = trunc i8 %20 to i1, !dbg !5204
  %conv2 = zext i1 %tobool.i to i32, !dbg !5191
  br label %cond.end, !dbg !5191

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5191
  %tobool = icmp ne i32 %cond, 0, !dbg !5191
  ret i1 %tobool, !dbg !5205
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #2 !dbg !5206 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5210, metadata !DIExpression()), !dbg !5211
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5212, metadata !DIExpression()), !dbg !5213
  ret i1 true, !dbg !5214
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !5215 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5219, metadata !DIExpression()), !dbg !5220
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5221, metadata !DIExpression()), !dbg !5222
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5223, metadata !DIExpression()), !dbg !5224
  ret void, !dbg !5225
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @test_tsk_thread_flag(%struct.task_struct* %tsk, i32 %flag) #2 !dbg !5226 {
entry:
  %tsk.addr = alloca %struct.task_struct*, align 8
  %flag.addr = alloca i32, align 4
  store %struct.task_struct* %tsk, %struct.task_struct** %tsk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %tsk.addr, metadata !5229, metadata !DIExpression()), !dbg !5230
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !5231, metadata !DIExpression()), !dbg !5232
  %0 = load %struct.task_struct*, %struct.task_struct** %tsk.addr, align 8, !dbg !5233
  %call = call %struct.thread_info* @task_thread_info(%struct.task_struct* %0) #8, !dbg !5234
  %1 = load i32, i32* %flag.addr, align 4, !dbg !5235
  %call1 = call i32 @test_ti_thread_flag(%struct.thread_info* %call, i32 %1) #8, !dbg !5236
  ret i32 %call1, !dbg !5237
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.thread_info* @task_thread_info(%struct.task_struct* %task) #2 !dbg !5238 {
entry:
  %task.addr = alloca %struct.task_struct*, align 8
  store %struct.task_struct* %task, %struct.task_struct** %task.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %task.addr, metadata !5241, metadata !DIExpression()), !dbg !5242
  %0 = load %struct.task_struct*, %struct.task_struct** %task.addr, align 8, !dbg !5243
  %thread_info = getelementptr inbounds %struct.task_struct, %struct.task_struct* %0, i32 0, i32 0, !dbg !5244
  ret %struct.thread_info* %thread_info, !dbg !5245
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @hwrng_attr_current_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5246 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %ret = alloca i64, align 8
  %rng = alloca %struct.hwrng*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5247, metadata !DIExpression()), !dbg !5248
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5249, metadata !DIExpression()), !dbg !5250
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5251, metadata !DIExpression()), !dbg !5252
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !5253, metadata !DIExpression()), !dbg !5254
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng, metadata !5255, metadata !DIExpression()), !dbg !5256
  %call = call %struct.hwrng* @get_current_rng() #8, !dbg !5257
  store %struct.hwrng* %call, %struct.hwrng** %rng, align 8, !dbg !5258
  %0 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5259
  %1 = bitcast %struct.hwrng* %0 to i8*, !dbg !5259
  %call1 = call zeroext i1 @IS_ERR(i8* %1) #8, !dbg !5261
  br i1 %call1, label %if.then, label %if.end, !dbg !5262

if.then:                                          ; preds = %entry
  %2 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5263
  %3 = bitcast %struct.hwrng* %2 to i8*, !dbg !5263
  %call2 = call i64 @PTR_ERR(i8* %3) #8, !dbg !5264
  store i64 %call2, i64* %retval, align 8, !dbg !5265
  br label %return, !dbg !5265

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !5266
  %5 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5267
  %tobool = icmp ne %struct.hwrng* %5, null, !dbg !5267
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5267

cond.true:                                        ; preds = %if.end
  %6 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5268
  %name = getelementptr inbounds %struct.hwrng, %struct.hwrng* %6, i32 0, i32 0, !dbg !5269
  %7 = load i8*, i8** %name, align 8, !dbg !5269
  br label %cond.end, !dbg !5267

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5267

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %7, %cond.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), %cond.false ], !dbg !5267
  %call3 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %4, i64 4096, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %cond) #8, !dbg !5270
  %conv = sext i32 %call3 to i64, !dbg !5270
  store i64 %conv, i64* %ret, align 8, !dbg !5271
  %8 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5272
  call void @put_rng(%struct.hwrng* %8) #8, !dbg !5273
  %9 = load i64, i64* %ret, align 8, !dbg !5274
  store i64 %9, i64* %retval, align 8, !dbg !5275
  br label %return, !dbg !5275

return:                                           ; preds = %cond.end, %if.then
  %10 = load i64, i64* %retval, align 8, !dbg !5276
  ret i64 %10, !dbg !5276
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @hwrng_attr_current_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %len) #2 !dbg !5277 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %err = alloca i32, align 4
  %rng = alloca %struct.hwrng*, align 8
  %old_rng = alloca %struct.hwrng*, align 8
  %new_rng = alloca %struct.hwrng*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.hwrng*, align 8
  %__mptr8 = alloca i8*, align 8
  %tmp12 = alloca %struct.hwrng*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5278, metadata !DIExpression()), !dbg !5279
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5280, metadata !DIExpression()), !dbg !5281
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5282, metadata !DIExpression()), !dbg !5283
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !5284, metadata !DIExpression()), !dbg !5285
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5286, metadata !DIExpression()), !dbg !5287
  store i32 -19, i32* %err, align 4, !dbg !5287
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng, metadata !5288, metadata !DIExpression()), !dbg !5289
  call void @llvm.dbg.declare(metadata %struct.hwrng** %old_rng, metadata !5290, metadata !DIExpression()), !dbg !5291
  call void @llvm.dbg.declare(metadata %struct.hwrng** %new_rng, metadata !5292, metadata !DIExpression()), !dbg !5293
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* @rng_mutex) #8, !dbg !5294
  store i32 %call, i32* %err, align 4, !dbg !5295
  %0 = load i32, i32* %err, align 4, !dbg !5296
  %tobool = icmp ne i32 %0, 0, !dbg !5296
  br i1 %tobool, label %if.then, label %if.end, !dbg !5298

if.then:                                          ; preds = %entry
  store i64 -512, i64* %retval, align 8, !dbg !5299
  br label %return, !dbg !5299

if.end:                                           ; preds = %entry
  %1 = load %struct.hwrng*, %struct.hwrng** @current_rng, align 8, !dbg !5300
  store %struct.hwrng* %1, %struct.hwrng** %old_rng, align 8, !dbg !5301
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !5302
  %call1 = call zeroext i1 @sysfs_streq(i8* %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0)) #8, !dbg !5304
  br i1 %call1, label %if.then2, label %if.else, !dbg !5305

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @enable_best_rng() #8, !dbg !5306
  store i32 %call3, i32* %err, align 4, !dbg !5308
  br label %if.end14, !dbg !5309

if.else:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5310, metadata !DIExpression()), !dbg !5314
  %3 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @rng_list, i32 0, i32 0), align 8, !dbg !5314
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !5314
  store i8* %4, i8** %__mptr, align 8, !dbg !5314
  br label %do.body, !dbg !5314

do.body:                                          ; preds = %if.else
  br label %do.end, !dbg !5315

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !5314
  %add.ptr = getelementptr i8, i8* %5, i64 -64, !dbg !5314
  %6 = bitcast i8* %add.ptr to %struct.hwrng*, !dbg !5314
  store %struct.hwrng* %6, %struct.hwrng** %tmp, align 8, !dbg !5315
  %7 = load %struct.hwrng*, %struct.hwrng** %tmp, align 8, !dbg !5314
  store %struct.hwrng* %7, %struct.hwrng** %rng, align 8, !dbg !5317
  br label %for.cond, !dbg !5317

for.cond:                                         ; preds = %do.end11, %do.end
  %8 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5318
  %list = getelementptr inbounds %struct.hwrng, %struct.hwrng* %8, i32 0, i32 8, !dbg !5318
  %cmp = icmp eq %struct.list_head* %list, @rng_list, !dbg !5318
  %lnot = xor i1 %cmp, true, !dbg !5318
  br i1 %lnot, label %for.body, label %for.end, !dbg !5317

for.body:                                         ; preds = %for.cond
  %9 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5320
  %name = getelementptr inbounds %struct.hwrng, %struct.hwrng* %9, i32 0, i32 0, !dbg !5323
  %10 = load i8*, i8** %name, align 8, !dbg !5323
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !5324
  %call4 = call zeroext i1 @sysfs_streq(i8* %10, i8* %11) #8, !dbg !5325
  br i1 %call4, label %if.then5, label %if.end7, !dbg !5326

if.then5:                                         ; preds = %for.body
  store i32 1, i32* @cur_rng_set_by_user, align 4, !dbg !5327
  %12 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5329
  %call6 = call i32 @set_current_rng(%struct.hwrng* %12) #8, !dbg !5330
  store i32 %call6, i32* %err, align 4, !dbg !5331
  br label %for.end, !dbg !5332

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !5333

for.inc:                                          ; preds = %if.end7
  call void @llvm.dbg.declare(metadata i8** %__mptr8, metadata !5334, metadata !DIExpression()), !dbg !5336
  %13 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5336
  %list9 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %13, i32 0, i32 8, !dbg !5336
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list9, i32 0, i32 0, !dbg !5336
  %14 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5336
  %15 = bitcast %struct.list_head* %14 to i8*, !dbg !5336
  store i8* %15, i8** %__mptr8, align 8, !dbg !5336
  br label %do.body10, !dbg !5336

do.body10:                                        ; preds = %for.inc
  br label %do.end11, !dbg !5337

do.end11:                                         ; preds = %do.body10
  %16 = load i8*, i8** %__mptr8, align 8, !dbg !5336
  %add.ptr13 = getelementptr i8, i8* %16, i64 -64, !dbg !5336
  %17 = bitcast i8* %add.ptr13 to %struct.hwrng*, !dbg !5336
  store %struct.hwrng* %17, %struct.hwrng** %tmp12, align 8, !dbg !5337
  %18 = load %struct.hwrng*, %struct.hwrng** %tmp12, align 8, !dbg !5336
  store %struct.hwrng* %18, %struct.hwrng** %rng, align 8, !dbg !5318
  br label %for.cond, !dbg !5318, !llvm.loop !5339

for.end:                                          ; preds = %if.then5, %for.cond
  br label %if.end14

if.end14:                                         ; preds = %for.end, %if.then2
  %call15 = call %struct.hwrng* @get_current_rng_nolock() #8, !dbg !5341
  store %struct.hwrng* %call15, %struct.hwrng** %new_rng, align 8, !dbg !5342
  call void @mutex_unlock(%struct.mutex* @rng_mutex) #8, !dbg !5343
  %19 = load %struct.hwrng*, %struct.hwrng** %new_rng, align 8, !dbg !5344
  %tobool16 = icmp ne %struct.hwrng* %19, null, !dbg !5344
  br i1 %tobool16, label %if.then17, label %if.end21, !dbg !5346

if.then17:                                        ; preds = %if.end14
  %20 = load %struct.hwrng*, %struct.hwrng** %new_rng, align 8, !dbg !5347
  %21 = load %struct.hwrng*, %struct.hwrng** %old_rng, align 8, !dbg !5350
  %cmp18 = icmp ne %struct.hwrng* %20, %21, !dbg !5351
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5352

if.then19:                                        ; preds = %if.then17
  %22 = load %struct.hwrng*, %struct.hwrng** %new_rng, align 8, !dbg !5353
  call void @add_early_randomness(%struct.hwrng* %22) #8, !dbg !5354
  br label %if.end20, !dbg !5354

if.end20:                                         ; preds = %if.then19, %if.then17
  %23 = load %struct.hwrng*, %struct.hwrng** %new_rng, align 8, !dbg !5355
  call void @put_rng(%struct.hwrng* %23) #8, !dbg !5356
  br label %if.end21, !dbg !5357

if.end21:                                         ; preds = %if.end20, %if.end14
  %24 = load i32, i32* %err, align 4, !dbg !5358
  %tobool22 = icmp ne i32 %24, 0, !dbg !5358
  br i1 %tobool22, label %cond.true, label %cond.false, !dbg !5358

cond.true:                                        ; preds = %if.end21
  %conv = sext i32 %24 to i64, !dbg !5358
  br label %cond.end, !dbg !5358

cond.false:                                       ; preds = %if.end21
  %25 = load i64, i64* %len.addr, align 8, !dbg !5359
  br label %cond.end, !dbg !5358

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %25, %cond.false ], !dbg !5358
  store i64 %cond, i64* %retval, align 8, !dbg !5360
  br label %return, !dbg !5360

return:                                           ; preds = %cond.end, %if.then
  %26 = load i64, i64* %retval, align 8, !dbg !5361
  ret i64 %26, !dbg !5361
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: noredzone
declare dso_local zeroext i1 @sysfs_streq(i8*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @hwrng_attr_available_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5362 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %err = alloca i32, align 4
  %rng = alloca %struct.hwrng*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.hwrng*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp7 = alloca %struct.hwrng*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5363, metadata !DIExpression()), !dbg !5364
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5365, metadata !DIExpression()), !dbg !5366
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5367, metadata !DIExpression()), !dbg !5368
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5369, metadata !DIExpression()), !dbg !5370
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng, metadata !5371, metadata !DIExpression()), !dbg !5372
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* @rng_mutex) #8, !dbg !5373
  store i32 %call, i32* %err, align 4, !dbg !5374
  %0 = load i32, i32* %err, align 4, !dbg !5375
  %tobool = icmp ne i32 %0, 0, !dbg !5375
  br i1 %tobool, label %if.then, label %if.end, !dbg !5377

if.then:                                          ; preds = %entry
  store i64 -512, i64* %retval, align 8, !dbg !5378
  br label %return, !dbg !5378

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !5379
  %arrayidx = getelementptr i8, i8* %1, i64 0, !dbg !5379
  store i8 0, i8* %arrayidx, align 1, !dbg !5380
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5381, metadata !DIExpression()), !dbg !5384
  %2 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @rng_list, i32 0, i32 0), align 8, !dbg !5384
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !5384
  store i8* %3, i8** %__mptr, align 8, !dbg !5384
  br label %do.body, !dbg !5384

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !5385

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5384
  %add.ptr = getelementptr i8, i8* %4, i64 -64, !dbg !5384
  %5 = bitcast i8* %add.ptr to %struct.hwrng*, !dbg !5384
  store %struct.hwrng* %5, %struct.hwrng** %tmp, align 8, !dbg !5385
  %6 = load %struct.hwrng*, %struct.hwrng** %tmp, align 8, !dbg !5384
  store %struct.hwrng* %6, %struct.hwrng** %rng, align 8, !dbg !5387
  br label %for.cond, !dbg !5387

for.cond:                                         ; preds = %do.end6, %do.end
  %7 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5388
  %list = getelementptr inbounds %struct.hwrng, %struct.hwrng* %7, i32 0, i32 8, !dbg !5388
  %cmp = icmp eq %struct.list_head* %list, @rng_list, !dbg !5388
  %lnot = xor i1 %cmp, true, !dbg !5388
  br i1 %lnot, label %for.body, label %for.end, !dbg !5387

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %buf.addr, align 8, !dbg !5390
  %9 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5392
  %name = getelementptr inbounds %struct.hwrng, %struct.hwrng* %9, i32 0, i32 0, !dbg !5393
  %10 = load i8*, i8** %name, align 8, !dbg !5393
  %call1 = call i64 @strlcat(i8* %8, i8* %10, i64 4096) #8, !dbg !5394
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !5395
  %call2 = call i64 @strlcat(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i64 4096) #8, !dbg !5396
  br label %for.inc, !dbg !5397

for.inc:                                          ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !5398, metadata !DIExpression()), !dbg !5400
  %12 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5400
  %list4 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %12, i32 0, i32 8, !dbg !5400
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list4, i32 0, i32 0, !dbg !5400
  %13 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5400
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !5400
  store i8* %14, i8** %__mptr3, align 8, !dbg !5400
  br label %do.body5, !dbg !5400

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !5401

do.end6:                                          ; preds = %do.body5
  %15 = load i8*, i8** %__mptr3, align 8, !dbg !5400
  %add.ptr8 = getelementptr i8, i8* %15, i64 -64, !dbg !5400
  %16 = bitcast i8* %add.ptr8 to %struct.hwrng*, !dbg !5400
  store %struct.hwrng* %16, %struct.hwrng** %tmp7, align 8, !dbg !5401
  %17 = load %struct.hwrng*, %struct.hwrng** %tmp7, align 8, !dbg !5400
  store %struct.hwrng* %17, %struct.hwrng** %rng, align 8, !dbg !5388
  br label %for.cond, !dbg !5388, !llvm.loop !5403

for.end:                                          ; preds = %for.cond
  %18 = load i8*, i8** %buf.addr, align 8, !dbg !5405
  %call9 = call i64 @strlcat(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), i64 4096) #8, !dbg !5406
  call void @mutex_unlock(%struct.mutex* @rng_mutex) #8, !dbg !5407
  %19 = load i8*, i8** %buf.addr, align 8, !dbg !5408
  %call10 = call i64 @strlen(i8* %19) #8, !dbg !5409
  store i64 %call10, i64* %retval, align 8, !dbg !5410
  br label %return, !dbg !5410

return:                                           ; preds = %for.end, %if.then
  %20 = load i64, i64* %retval, align 8, !dbg !5411
  ret i64 %20, !dbg !5411
}

; Function Attrs: noredzone
declare dso_local i64 @strlcat(i8*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @hwrng_attr_selected_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #2 !dbg !5412 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5413, metadata !DIExpression()), !dbg !5414
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !5415, metadata !DIExpression()), !dbg !5416
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !5417, metadata !DIExpression()), !dbg !5418
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !5419
  %1 = load i32, i32* @cur_rng_set_by_user, align 4, !dbg !5420
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %0, i64 4096, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32 %1) #8, !dbg !5421
  %conv = sext i32 %call to i64, !dbg !5421
  ret i64 %conv, !dbg !5422
}

; Function Attrs: noredzone
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !5423 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5426, metadata !DIExpression()), !dbg !5427
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5428, metadata !DIExpression()), !dbg !5429
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5430, metadata !DIExpression()), !dbg !5431
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5432
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5434
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5435
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !5436
  br i1 %call, label %if.end, label %if.then, !dbg !5437

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5438

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5439
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5440
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5441
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5442
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5443
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5444
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5445
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5446
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5447
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5448
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5449
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5450
  br label %do.body, !dbg !5451

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5452

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5454

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5452

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5456
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5456
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5456
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5456
  br label %do.end7, !dbg !5456

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5452

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5458
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !5459 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5462, metadata !DIExpression()), !dbg !5463
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5464, metadata !DIExpression()), !dbg !5465
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5466, metadata !DIExpression()), !dbg !5467
  ret i1 true, !dbg !5468
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hwrng_init(%struct.hwrng* %rng) #2 !dbg !5469 {
entry:
  %retval = alloca i32, align 4
  %rng.addr = alloca %struct.hwrng*, align 8
  %ret = alloca i32, align 4
  store %struct.hwrng* %rng, %struct.hwrng** %rng.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng.addr, metadata !5470, metadata !DIExpression()), !dbg !5471
  %0 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !5472
  %ref = getelementptr inbounds %struct.hwrng, %struct.hwrng* %0, i32 0, i32 9, !dbg !5474
  %call = call i32 @kref_get_unless_zero(%struct.kref* %ref) #8, !dbg !5475
  %tobool = icmp ne i32 %call, 0, !dbg !5475
  br i1 %tobool, label %if.then, label %if.end, !dbg !5476

if.then:                                          ; preds = %entry
  br label %skip_init, !dbg !5477

if.end:                                           ; preds = %entry
  %1 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !5478
  %init = getelementptr inbounds %struct.hwrng, %struct.hwrng* %1, i32 0, i32 1, !dbg !5480
  %init1 = bitcast {}** %init to i32 (%struct.hwrng*)**, !dbg !5480
  %2 = load i32 (%struct.hwrng*)*, i32 (%struct.hwrng*)** %init1, align 8, !dbg !5480
  %tobool2 = icmp ne i32 (%struct.hwrng*)* %2, null, !dbg !5478
  br i1 %tobool2, label %if.then3, label %if.end10, !dbg !5481

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5482, metadata !DIExpression()), !dbg !5484
  %3 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !5485
  %init4 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %3, i32 0, i32 1, !dbg !5486
  %init5 = bitcast {}** %init4 to i32 (%struct.hwrng*)**, !dbg !5486
  %4 = load i32 (%struct.hwrng*)*, i32 (%struct.hwrng*)** %init5, align 8, !dbg !5486
  %5 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !5487
  %call6 = call i32 %4(%struct.hwrng* %5) #8, !dbg !5485
  store i32 %call6, i32* %ret, align 4, !dbg !5488
  %6 = load i32, i32* %ret, align 4, !dbg !5489
  %tobool7 = icmp ne i32 %6, 0, !dbg !5489
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5491

if.then8:                                         ; preds = %if.then3
  %7 = load i32, i32* %ret, align 4, !dbg !5492
  store i32 %7, i32* %retval, align 4, !dbg !5493
  br label %return, !dbg !5493

if.end9:                                          ; preds = %if.then3
  br label %if.end10, !dbg !5494

if.end10:                                         ; preds = %if.end9, %if.end
  %8 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !5495
  %ref11 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %8, i32 0, i32 9, !dbg !5496
  call void @kref_init(%struct.kref* %ref11) #8, !dbg !5497
  %9 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !5498
  %cleanup_done = getelementptr inbounds %struct.hwrng, %struct.hwrng* %9, i32 0, i32 10, !dbg !5499
  call void @reinit_completion(%struct.completion* %cleanup_done) #8, !dbg !5500
  br label %skip_init, !dbg !5500

skip_init:                                        ; preds = %if.end10, %if.then
  call void @llvm.dbg.label(metadata !5501), !dbg !5502
  %10 = load %struct.hwrng*, %struct.hwrng** %rng.addr, align 8, !dbg !5503
  %quality = getelementptr inbounds %struct.hwrng, %struct.hwrng* %10, i32 0, i32 7, !dbg !5504
  %11 = load i16, i16* %quality, align 8, !dbg !5504
  %conv = zext i16 %11 to i32, !dbg !5503
  %tobool12 = icmp ne i32 %conv, 0, !dbg !5503
  br i1 %tobool12, label %cond.true, label %cond.false, !dbg !5503

cond.true:                                        ; preds = %skip_init
  br label %cond.end, !dbg !5503

cond.false:                                       ; preds = %skip_init
  %12 = load i16, i16* @default_quality, align 2, !dbg !5505
  %conv13 = zext i16 %12 to i32, !dbg !5505
  br label %cond.end, !dbg !5503

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv13, %cond.false ], !dbg !5503
  %conv14 = trunc i32 %cond to i16, !dbg !5503
  store i16 %conv14, i16* @current_quality, align 2, !dbg !5506
  %13 = load i16, i16* @current_quality, align 2, !dbg !5507
  %conv15 = zext i16 %13 to i32, !dbg !5507
  %cmp = icmp sgt i32 %conv15, 1024, !dbg !5509
  br i1 %cmp, label %if.then17, label %if.end18, !dbg !5510

if.then17:                                        ; preds = %cond.end
  store i16 1024, i16* @current_quality, align 2, !dbg !5511
  br label %if.end18, !dbg !5512

if.end18:                                         ; preds = %if.then17, %cond.end
  %14 = load i16, i16* @current_quality, align 2, !dbg !5513
  %conv19 = zext i16 %14 to i32, !dbg !5513
  %cmp20 = icmp eq i32 %conv19, 0, !dbg !5515
  br i1 %cmp20, label %land.lhs.true, label %if.end25, !dbg !5516

land.lhs.true:                                    ; preds = %if.end18
  %15 = load %struct.task_struct*, %struct.task_struct** @hwrng_fill, align 8, !dbg !5517
  %tobool22 = icmp ne %struct.task_struct* %15, null, !dbg !5517
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !5518

if.then23:                                        ; preds = %land.lhs.true
  %16 = load %struct.task_struct*, %struct.task_struct** @hwrng_fill, align 8, !dbg !5519
  %call24 = call i32 @kthread_stop(%struct.task_struct* %16) #8, !dbg !5520
  br label %if.end25, !dbg !5520

if.end25:                                         ; preds = %if.then23, %land.lhs.true, %if.end18
  %17 = load i16, i16* @current_quality, align 2, !dbg !5521
  %conv26 = zext i16 %17 to i32, !dbg !5521
  %cmp27 = icmp sgt i32 %conv26, 0, !dbg !5523
  br i1 %cmp27, label %land.lhs.true29, label %if.end32, !dbg !5524

land.lhs.true29:                                  ; preds = %if.end25
  %18 = load %struct.task_struct*, %struct.task_struct** @hwrng_fill, align 8, !dbg !5525
  %tobool30 = icmp ne %struct.task_struct* %18, null, !dbg !5525
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !5526

if.then31:                                        ; preds = %land.lhs.true29
  call void @start_khwrngd() #8, !dbg !5527
  br label %if.end32, !dbg !5527

if.end32:                                         ; preds = %if.then31, %land.lhs.true29, %if.end25
  store i32 0, i32* %retval, align 4, !dbg !5528
  br label %return, !dbg !5528

return:                                           ; preds = %if.end32, %if.then8
  %19 = load i32, i32* %retval, align 4, !dbg !5529
  ret i32 %19, !dbg !5529
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_get_unless_zero(%struct.kref* %kref) #2 !dbg !5530 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5533, metadata !DIExpression()), !dbg !5534
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5535
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5536
  %call = call zeroext i1 @refcount_inc_not_zero(%struct.refcount_struct* %refcount) #8, !dbg !5537
  %conv = zext i1 %call to i32, !dbg !5537
  ret i32 %conv, !dbg !5538
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_init(%struct.kref* %kref) #2 !dbg !5539 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5540, metadata !DIExpression()), !dbg !5541
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5542
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5543
  call void @refcount_set(%struct.refcount_struct* %refcount, i32 1) #8, !dbg !5544
  ret void, !dbg !5545
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @reinit_completion(%struct.completion* %x) #2 !dbg !5546 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !5547, metadata !DIExpression()), !dbg !5548
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !5549
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !5550
  store i32 0, i32* %done, align 8, !dbg !5551
  ret void, !dbg !5552
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @start_khwrngd() #2 !dbg !5553 {
entry:
  %__k = alloca %struct.task_struct*, align 8
  %tmp = alloca %struct.task_struct*, align 8
  call void @llvm.dbg.declare(metadata %struct.task_struct** %__k, metadata !5554, metadata !DIExpression()), !dbg !5556
  %call = call %struct.task_struct* (i32 (i8*)*, i8*, i32, i8*, ...) @kthread_create_on_node(i32 (i8*)* @hwrng_fillfn, i8* null, i32 -1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !5556
  store %struct.task_struct* %call, %struct.task_struct** %__k, align 8, !dbg !5556
  %0 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !5557
  %1 = bitcast %struct.task_struct* %0 to i8*, !dbg !5557
  %call1 = call zeroext i1 @IS_ERR(i8* %1) #8, !dbg !5557
  br i1 %call1, label %if.end, label %if.then, !dbg !5556

if.then:                                          ; preds = %entry
  %2 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !5557
  %call2 = call i32 @wake_up_process(%struct.task_struct* %2) #8, !dbg !5557
  br label %if.end, !dbg !5557

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.task_struct*, %struct.task_struct** %__k, align 8, !dbg !5556
  store %struct.task_struct* %3, %struct.task_struct** %tmp, align 8, !dbg !5557
  %4 = load %struct.task_struct*, %struct.task_struct** %tmp, align 8, !dbg !5556
  store %struct.task_struct* %4, %struct.task_struct** @hwrng_fill, align 8, !dbg !5559
  %5 = load %struct.task_struct*, %struct.task_struct** @hwrng_fill, align 8, !dbg !5560
  %6 = bitcast %struct.task_struct* %5 to i8*, !dbg !5560
  %call3 = call zeroext i1 @IS_ERR(i8* %6) #8, !dbg !5562
  br i1 %call3, label %if.then4, label %if.end6, !dbg !5563

if.then4:                                         ; preds = %if.end
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !5564
  store %struct.task_struct* null, %struct.task_struct** @hwrng_fill, align 8, !dbg !5566
  br label %if.end6, !dbg !5567

if.end6:                                          ; preds = %if.then4, %if.end
  ret void, !dbg !5568
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_inc_not_zero(%struct.refcount_struct* %r) #2 !dbg !5569 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5573, metadata !DIExpression()), !dbg !5574
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5575
  %call = call zeroext i1 @__refcount_inc_not_zero(%struct.refcount_struct* %0, i32* null) #8, !dbg !5576
  ret i1 %call, !dbg !5577
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_inc_not_zero(%struct.refcount_struct* %r, i32* %oldp) #2 !dbg !5578 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5581, metadata !DIExpression()), !dbg !5582
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5583, metadata !DIExpression()), !dbg !5584
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5585
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5586
  %call = call zeroext i1 @__refcount_add_not_zero(i32 1, %struct.refcount_struct* %0, i32* %1) #8, !dbg !5587
  ret i1 %call, !dbg !5588
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_add_not_zero(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #2 !dbg !5589 {
entry:
  %v.addr.i5.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i5.i, metadata !5592, metadata !DIExpression()), !dbg !5598
  %old.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i.i, metadata !5603, metadata !DIExpression()), !dbg !5604
  %new.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i.i, metadata !5605, metadata !DIExpression()), !dbg !5606
  %success.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %success.i.i, metadata !5607, metadata !DIExpression()), !dbg !5609
  %_old.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %_old.i.i, metadata !5610, metadata !DIExpression()), !dbg !5609
  %__old.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__old.i.i, metadata !5611, metadata !DIExpression()), !dbg !5609
  %__new.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__new.i.i, metadata !5612, metadata !DIExpression()), !dbg !5609
  %__ptr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %__ptr.i.i, metadata !5613, metadata !DIExpression()), !dbg !5609
  %tmp.i.i = alloca i64, align 8
  %v.addr.i1.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i1.i, metadata !5614, metadata !DIExpression()), !dbg !5616
  %size.addr.i2.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i2.i, metadata !5618, metadata !DIExpression()), !dbg !5619
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5614, metadata !DIExpression()), !dbg !5620
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5618, metadata !DIExpression()), !dbg !5622
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5623, metadata !DIExpression()), !dbg !5624
  %old.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %old.addr.i, metadata !5625, metadata !DIExpression()), !dbg !5626
  %new.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %new.addr.i, metadata !5627, metadata !DIExpression()), !dbg !5628
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5629, metadata !DIExpression()), !dbg !5630
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5631, metadata !DIExpression()), !dbg !5632
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5633, metadata !DIExpression()), !dbg !5634
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5635, metadata !DIExpression()), !dbg !5636
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5637
  %call = call i32 @refcount_read(%struct.refcount_struct* %0) #8, !dbg !5638
  store i32 %call, i32* %old, align 4, !dbg !5636
  br label %do.body, !dbg !5639

do.body:                                          ; preds = %atomic_try_cmpxchg_relaxed.exit, %entry
  %1 = load i32, i32* %old, align 4, !dbg !5640
  %tobool = icmp ne i32 %1, 0, !dbg !5640
  br i1 %tobool, label %if.end, label %if.then, !dbg !5643

if.then:                                          ; preds = %do.body
  br label %do.end, !dbg !5644

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !5645

do.cond:                                          ; preds = %if.end
  %2 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5646
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %2, i32 0, i32 0, !dbg !5647
  %3 = load i32, i32* %old, align 4, !dbg !5648
  %4 = load i32, i32* %i.addr, align 4, !dbg !5649
  %add = add i32 %3, %4, !dbg !5650
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32* %old, i32** %old.addr.i, align 8
  store i32 %add, i32* %new.addr.i, align 4
  %5 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5651
  %6 = bitcast %struct.atomic_t* %5 to i8*, !dbg !5651
  store i8* %6, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %7 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5652
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5653
  %conv.i.i = trunc i64 %8 to i32, !dbg !5653
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %7, i32 %conv.i.i) #12, !dbg !5654
  %9 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5655
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !5655
  call void @kcsan_check_access(i8* %9, i64 %10, i32 7) #12, !dbg !5655
  %11 = load i32*, i32** %old.addr.i, align 8, !dbg !5656
  %12 = bitcast i32* %11 to i8*, !dbg !5656
  store i8* %12, i8** %v.addr.i1.i, align 8
  store i64 4, i64* %size.addr.i2.i, align 8
  %13 = load i8*, i8** %v.addr.i1.i, align 8, !dbg !5657
  %14 = load i64, i64* %size.addr.i2.i, align 8, !dbg !5658
  %conv.i3.i = trunc i64 %14 to i32, !dbg !5658
  %call.i4.i = call zeroext i1 @kasan_check_write(i8* %13, i32 %conv.i3.i) #12, !dbg !5659
  %15 = load i8*, i8** %v.addr.i1.i, align 8, !dbg !5660
  %16 = load i64, i64* %size.addr.i2.i, align 8, !dbg !5660
  call void @kcsan_check_access(i8* %15, i64 %16, i32 7) #12, !dbg !5660
  %17 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5661
  %18 = load i32*, i32** %old.addr.i, align 8, !dbg !5662
  %19 = load i32, i32* %new.addr.i, align 4, !dbg !5663
  store %struct.atomic_t* %17, %struct.atomic_t** %v.addr.i5.i, align 8
  store i32* %18, i32** %old.addr.i.i, align 8
  store i32 %19, i32* %new.addr.i.i, align 4
  %20 = load i32*, i32** %old.addr.i.i, align 8, !dbg !5609
  store i32* %20, i32** %_old.i.i, align 8, !dbg !5609
  %21 = load i32*, i32** %_old.i.i, align 8, !dbg !5609
  %22 = load i32, i32* %21, align 4, !dbg !5609
  store i32 %22, i32* %__old.i.i, align 4, !dbg !5609
  %23 = load i32, i32* %new.addr.i.i, align 4, !dbg !5609
  store i32 %23, i32* %__new.i.i, align 4, !dbg !5609
  %24 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i5.i, align 8, !dbg !5609
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %24, i32 0, i32 0, !dbg !5609
  store i32* %counter.i.i, i32** %__ptr.i.i, align 8, !dbg !5609
  %25 = load i32*, i32** %__ptr.i.i, align 8, !dbg !5609
  %26 = load i32, i32* %__old.i.i, align 4, !dbg !5609
  %27 = load i32, i32* %__new.i.i, align 4, !dbg !5609
  %28 = call { i8, i32 } asm sideeffect "cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32* %25, i32 %27, i32* %25, i32 %26) #9, !dbg !5609, !srcloc !5664
  %asmresult.i.i = extractvalue { i8, i32 } %28, 0, !dbg !5609
  %asmresult1.i.i = extractvalue { i8, i32 } %28, 1, !dbg !5609
  store i8 %asmresult.i.i, i8* %success.i.i, align 1, !dbg !5609
  store i32 %asmresult1.i.i, i32* %__old.i.i, align 4, !dbg !5609
  %29 = load i8, i8* %success.i.i, align 1, !dbg !5665
  %tobool.i.i = trunc i8 %29 to i1, !dbg !5665
  %lnot.i.i = xor i1 %tobool.i.i, true, !dbg !5665
  %lnot3.i.i = xor i1 %tobool.i.i, true, !dbg !5665
  %lnot.ext.i.i = zext i1 %lnot3.i.i to i32, !dbg !5665
  %conv.i6.i = sext i32 %lnot.ext.i.i to i64, !dbg !5665
  br i1 %lnot3.i.i, label %if.then.i.i, label %atomic_try_cmpxchg_relaxed.exit, !dbg !5609

if.then.i.i:                                      ; preds = %do.cond
  %30 = load i32, i32* %__old.i.i, align 4, !dbg !5665
  %31 = load i32*, i32** %_old.i.i, align 8, !dbg !5665
  store i32 %30, i32* %31, align 4, !dbg !5665
  br label %atomic_try_cmpxchg_relaxed.exit, !dbg !5665

atomic_try_cmpxchg_relaxed.exit:                  ; preds = %do.cond, %if.then.i.i
  %32 = load i8, i8* %success.i.i, align 1, !dbg !5609
  %tobool5.i.i = trunc i8 %32 to i1, !dbg !5609
  %lnot6.i.i = xor i1 %tobool5.i.i, true, !dbg !5609
  %lnot.ext9.i.i = zext i1 %tobool5.i.i to i32, !dbg !5609
  %conv10.i.i = sext i32 %lnot.ext9.i.i to i64, !dbg !5609
  store i64 %conv10.i.i, i64* %tmp.i.i, align 8, !dbg !5665
  %33 = load i64, i64* %tmp.i.i, align 8, !dbg !5609
  %tobool11.i.i = icmp ne i64 %33, 0, !dbg !5667
  %lnot = xor i1 %tobool11.i.i, true, !dbg !5668
  br i1 %lnot, label %do.body, label %do.end, !dbg !5645, !llvm.loop !5669

do.end:                                           ; preds = %atomic_try_cmpxchg_relaxed.exit, %if.then
  %34 = load i32*, i32** %oldp.addr, align 8, !dbg !5671
  %tobool2 = icmp ne i32* %34, null, !dbg !5671
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5673

if.then3:                                         ; preds = %do.end
  %35 = load i32, i32* %old, align 4, !dbg !5674
  %36 = load i32*, i32** %oldp.addr, align 8, !dbg !5675
  store i32 %35, i32* %36, align 4, !dbg !5676
  br label %if.end4, !dbg !5677

if.end4:                                          ; preds = %if.then3, %do.end
  %37 = load i32, i32* %old, align 4, !dbg !5678
  %cmp = icmp slt i32 %37, 0, !dbg !5678
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5678

lor.rhs:                                          ; preds = %if.end4
  %38 = load i32, i32* %old, align 4, !dbg !5678
  %39 = load i32, i32* %i.addr, align 4, !dbg !5678
  %add5 = add i32 %38, %39, !dbg !5678
  %cmp6 = icmp slt i32 %add5, 0, !dbg !5678
  br label %lor.end, !dbg !5678

lor.end:                                          ; preds = %lor.rhs, %if.end4
  %40 = phi i1 [ true, %if.end4 ], [ %cmp6, %lor.rhs ]
  %lnot7 = xor i1 %40, true, !dbg !5678
  %lnot8 = xor i1 %lnot7, true, !dbg !5678
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !5678
  %conv = sext i32 %lnot.ext to i64, !dbg !5678
  %tobool9 = icmp ne i64 %conv, 0, !dbg !5678
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5680

if.then10:                                        ; preds = %lor.end
  %41 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5681
  call void @refcount_warn_saturate(%struct.refcount_struct* %41, i32 0) #8, !dbg !5682
  br label %if.end11, !dbg !5682

if.end11:                                         ; preds = %if.then10, %lor.end
  %42 = load i32, i32* %old, align 4, !dbg !5683
  %tobool12 = icmp ne i32 %42, 0, !dbg !5683
  ret i1 %tobool12, !dbg !5684
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @refcount_read(%struct.refcount_struct* %r) #2 !dbg !5685 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5690, metadata !DIExpression()), !dbg !5696
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5168, metadata !DIExpression()), !dbg !5700
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5178, metadata !DIExpression()), !dbg !5702
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5703, metadata !DIExpression()), !dbg !5704
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5705, metadata !DIExpression()), !dbg !5706
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5707
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !5708
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %1 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5709
  %2 = bitcast %struct.atomic_t* %1 to i8*, !dbg !5709
  store i8* %2, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %3 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5710
  %4 = load i64, i64* %size.addr.i.i, align 8, !dbg !5711
  %conv.i.i = trunc i64 %4 to i32, !dbg !5711
  %call.i.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i.i) #12, !dbg !5712
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5713
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !5713
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #12, !dbg !5713
  %7 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5714
  store %struct.atomic_t* %7, %struct.atomic_t** %v.addr.i1.i, align 8
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5715
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %8, i32 0, i32 0, !dbg !5715
  %9 = load volatile i32, i32* %counter.i.i, align 4, !dbg !5715
  ret i32 %9, !dbg !5716
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !5717 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5718, metadata !DIExpression()), !dbg !5719
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5720, metadata !DIExpression()), !dbg !5721
  ret i1 true, !dbg !5722
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #2 !dbg !5723 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5726, metadata !DIExpression()), !dbg !5730
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5734, metadata !DIExpression()), !dbg !5735
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5736, metadata !DIExpression()), !dbg !5738
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5740, metadata !DIExpression()), !dbg !5741
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5742, metadata !DIExpression()), !dbg !5743
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5744, metadata !DIExpression()), !dbg !5745
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5746, metadata !DIExpression()), !dbg !5747
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !5748, metadata !DIExpression()), !dbg !5749
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5750
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !5751
  %1 = load i32, i32* %n.addr, align 4, !dbg !5752
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5753
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5753
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5754
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5755
  %conv.i.i = trunc i64 %5 to i32, !dbg !5755
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !5756
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5757
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5757
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #12, !dbg !5757
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5758
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !5759
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5760
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5760
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !5760
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !5760
  ret void, !dbg !5762
}

; Function Attrs: noredzone
declare dso_local %struct.task_struct* @kthread_create_on_node(i32 (i8*)*, i8*, i32, i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hwrng_fillfn(i8* %unused) #2 !dbg !5763 {
entry:
  %unused.addr = alloca i8*, align 8
  %rc = alloca i64, align 8
  %rng = alloca %struct.hwrng*, align 8
  store i8* %unused, i8** %unused.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %unused.addr, metadata !5766, metadata !DIExpression()), !dbg !5767
  call void @llvm.dbg.declare(metadata i64* %rc, metadata !5768, metadata !DIExpression()), !dbg !5769
  br label %while.cond, !dbg !5770

while.cond:                                       ; preds = %if.end9, %if.then6, %entry
  %call = call zeroext i1 @kthread_should_stop() #8, !dbg !5771
  %lnot = xor i1 %call, true, !dbg !5772
  br i1 %lnot, label %while.body, label %while.end, !dbg !5770

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng, metadata !5773, metadata !DIExpression()), !dbg !5775
  %call1 = call %struct.hwrng* @get_current_rng() #8, !dbg !5776
  store %struct.hwrng* %call1, %struct.hwrng** %rng, align 8, !dbg !5777
  %0 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5778
  %1 = bitcast %struct.hwrng* %0 to i8*, !dbg !5778
  %call2 = call zeroext i1 @IS_ERR(i8* %1) #8, !dbg !5780
  br i1 %call2, label %if.then, label %lor.lhs.false, !dbg !5781

lor.lhs.false:                                    ; preds = %while.body
  %2 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5782
  %tobool = icmp ne %struct.hwrng* %2, null, !dbg !5782
  br i1 %tobool, label %if.end, label %if.then, !dbg !5783

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end, !dbg !5784

if.end:                                           ; preds = %lor.lhs.false
  call void @mutex_lock(%struct.mutex* @reading_mutex) #8, !dbg !5785
  %3 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5786
  %4 = load i8*, i8** @rng_fillbuf, align 8, !dbg !5787
  %call3 = call i64 @rng_buffer_size() #8, !dbg !5788
  %call4 = call i32 @rng_get_data(%struct.hwrng* %3, i8* %4, i64 %call3, i32 1) #8, !dbg !5789
  %conv = sext i32 %call4 to i64, !dbg !5789
  store i64 %conv, i64* %rc, align 8, !dbg !5790
  call void @mutex_unlock(%struct.mutex* @reading_mutex) #8, !dbg !5791
  %5 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5792
  call void @put_rng(%struct.hwrng* %5) #8, !dbg !5793
  %6 = load i64, i64* %rc, align 8, !dbg !5794
  %cmp = icmp sle i64 %6, 0, !dbg !5796
  br i1 %cmp, label %if.then6, label %if.end9, !dbg !5797

if.then6:                                         ; preds = %if.end
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0)) #10, !dbg !5798
  %call8 = call i64 @msleep_interruptible(i32 10000) #8, !dbg !5800
  br label %while.cond, !dbg !5801, !llvm.loop !5802

if.end9:                                          ; preds = %if.end
  %7 = load i8*, i8** @rng_fillbuf, align 8, !dbg !5804
  %8 = load i64, i64* %rc, align 8, !dbg !5805
  %9 = load i64, i64* %rc, align 8, !dbg !5806
  %10 = load i16, i16* @current_quality, align 2, !dbg !5807
  %conv10 = zext i16 %10 to i64, !dbg !5807
  %mul = mul i64 %9, %conv10, !dbg !5808
  %mul11 = mul i64 %mul, 8, !dbg !5809
  %shr = ashr i64 %mul11, 10, !dbg !5810
  call void @add_hwgenerator_randomness(i8* %7, i64 %8, i64 %shr) #8, !dbg !5811
  br label %while.cond, !dbg !5770, !llvm.loop !5802

while.end:                                        ; preds = %if.then, %while.cond
  store %struct.task_struct* null, %struct.task_struct** @hwrng_fill, align 8, !dbg !5812
  ret i32 0, !dbg !5813
}

; Function Attrs: noredzone
declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noredzone
declare dso_local zeroext i1 @kthread_should_stop() #1

; Function Attrs: noredzone
declare dso_local i64 @msleep_interruptible(i32) #1

; Function Attrs: noredzone
declare dso_local void @add_hwgenerator_randomness(i8*, i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #2 !dbg !5814 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5817, metadata !DIExpression()), !dbg !5818
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5819
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #8, !dbg !5820
  ret void, !dbg !5821
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #2 !dbg !5822 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5825, metadata !DIExpression()), !dbg !5826
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5827, metadata !DIExpression()), !dbg !5828
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5829
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5830
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #8, !dbg !5831
  ret void, !dbg !5832
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #2 !dbg !5833 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5836, metadata !DIExpression()), !dbg !5840
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5844, metadata !DIExpression()), !dbg !5845
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5846, metadata !DIExpression()), !dbg !5848
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5614, metadata !DIExpression()), !dbg !5849
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5618, metadata !DIExpression()), !dbg !5851
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5852, metadata !DIExpression()), !dbg !5853
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5854, metadata !DIExpression()), !dbg !5855
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5856, metadata !DIExpression()), !dbg !5857
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5858, metadata !DIExpression()), !dbg !5859
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5860, metadata !DIExpression()), !dbg !5861
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5862, metadata !DIExpression()), !dbg !5863
  %0 = load i32, i32* %i.addr, align 4, !dbg !5864
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5865
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5866
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5867
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5867
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5868
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5869
  %conv.i.i = trunc i64 %5 to i32, !dbg !5869
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !5870
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5871
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5871
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #12, !dbg !5871
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5872
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5873
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5848
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !5848
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5848
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5848
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5848
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #9, !dbg !5848, !srcloc !5874
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5848
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5848
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5848
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5848
  store i32 %15, i32* %old, align 4, !dbg !5863
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5875
  %tobool = icmp ne i32* %16, null, !dbg !5875
  br i1 %tobool, label %if.then, label %if.end, !dbg !5877

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5878
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5879
  store i32 %17, i32* %18, align 4, !dbg !5880
  br label %if.end, !dbg !5881

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5882
  %tobool1 = icmp ne i32 %19, 0, !dbg !5882
  %lnot = xor i1 %tobool1, true, !dbg !5882
  %lnot2 = xor i1 %lnot, true, !dbg !5882
  %lnot3 = xor i1 %lnot2, true, !dbg !5882
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5882
  %conv = sext i32 %lnot.ext to i64, !dbg !5882
  %tobool4 = icmp ne i64 %conv, 0, !dbg !5882
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5884

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5885
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #8, !dbg !5886
  br label %if.end17, !dbg !5886

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5887
  %cmp = icmp slt i32 %21, 0, !dbg !5887
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5887

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !5887
  %23 = load i32, i32* %i.addr, align 4, !dbg !5887
  %add = add i32 %22, %23, !dbg !5887
  %cmp7 = icmp slt i32 %add, 0, !dbg !5887
  br label %lor.end, !dbg !5887

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !5887
  %lnot11 = xor i1 %lnot9, true, !dbg !5887
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5887
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5887
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !5887
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5889

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5890
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #8, !dbg !5891
  br label %if.end16, !dbg !5891

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !5892
}

; Function Attrs: noredzone
declare dso_local void @add_device_randomness(i8*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #2 !dbg !5893 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5897, metadata !DIExpression()), !dbg !5898
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !5899, metadata !DIExpression()), !dbg !5900
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5901
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5903
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #8, !dbg !5904
  br i1 %call, label %if.then, label %if.end, !dbg !5905

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !5906
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5908
  call void %1(%struct.kref* %2) #8, !dbg !5906
  store i32 1, i32* %retval, align 4, !dbg !5909
  br label %return, !dbg !5909

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5910
  br label %return, !dbg !5910

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5911
  ret i32 %3, !dbg !5911
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cleanup_rng(%struct.kref* %kref) #2 !dbg !5912 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  %rng = alloca %struct.hwrng*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.hwrng*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5913, metadata !DIExpression()), !dbg !5914
  call void @llvm.dbg.declare(metadata %struct.hwrng** %rng, metadata !5915, metadata !DIExpression()), !dbg !5916
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5917, metadata !DIExpression()), !dbg !5919
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5919
  %1 = bitcast %struct.kref* %0 to i8*, !dbg !5919
  store i8* %1, i8** %__mptr, align 8, !dbg !5919
  br label %do.body, !dbg !5919

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5920

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5919
  %add.ptr = getelementptr i8, i8* %2, i64 -80, !dbg !5919
  %3 = bitcast i8* %add.ptr to %struct.hwrng*, !dbg !5919
  store %struct.hwrng* %3, %struct.hwrng** %tmp, align 8, !dbg !5920
  %4 = load %struct.hwrng*, %struct.hwrng** %tmp, align 8, !dbg !5919
  store %struct.hwrng* %4, %struct.hwrng** %rng, align 8, !dbg !5916
  %5 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5922
  %cleanup = getelementptr inbounds %struct.hwrng, %struct.hwrng* %5, i32 0, i32 2, !dbg !5924
  %6 = load void (%struct.hwrng*)*, void (%struct.hwrng*)** %cleanup, align 8, !dbg !5924
  %tobool = icmp ne void (%struct.hwrng*)* %6, null, !dbg !5922
  br i1 %tobool, label %if.then, label %if.end, !dbg !5925

if.then:                                          ; preds = %do.end
  %7 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5926
  %cleanup1 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %7, i32 0, i32 2, !dbg !5927
  %8 = load void (%struct.hwrng*)*, void (%struct.hwrng*)** %cleanup1, align 8, !dbg !5927
  %9 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5928
  call void %8(%struct.hwrng* %9) #8, !dbg !5926
  br label %if.end, !dbg !5926

if.end:                                           ; preds = %if.then, %do.end
  %10 = load %struct.hwrng*, %struct.hwrng** %rng, align 8, !dbg !5929
  %cleanup_done = getelementptr inbounds %struct.hwrng, %struct.hwrng* %10, i32 0, i32 10, !dbg !5930
  call void @complete(%struct.completion* %cleanup_done) #8, !dbg !5931
  ret void, !dbg !5932
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #2 !dbg !5933 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5934, metadata !DIExpression()), !dbg !5935
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5936
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #8, !dbg !5937
  ret i1 %call, !dbg !5938
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #2 !dbg !5939 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5940, metadata !DIExpression()), !dbg !5941
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5942, metadata !DIExpression()), !dbg !5943
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5944
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5945
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #8, !dbg !5946
  ret i1 %call, !dbg !5947
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #2 !dbg !5948 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5949, metadata !DIExpression()), !dbg !5951
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5955, metadata !DIExpression()), !dbg !5956
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5957, metadata !DIExpression()), !dbg !5959
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5614, metadata !DIExpression()), !dbg !5960
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5618, metadata !DIExpression()), !dbg !5962
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5963, metadata !DIExpression()), !dbg !5964
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5965, metadata !DIExpression()), !dbg !5966
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5967, metadata !DIExpression()), !dbg !5968
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5969, metadata !DIExpression()), !dbg !5970
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5971, metadata !DIExpression()), !dbg !5972
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5973, metadata !DIExpression()), !dbg !5974
  %0 = load i32, i32* %i.addr, align 4, !dbg !5975
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5976
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5977
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5978
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5978
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5979
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5980
  %conv.i.i = trunc i64 %5 to i32, !dbg !5980
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !5981
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5982
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5982
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #12, !dbg !5982
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5983
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5984
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5959
  %sub.i.i = sub i32 0, %10, !dbg !5959
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !5959
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5959
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5959
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5959
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #9, !dbg !5959, !srcloc !5985
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5959
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5959
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5959
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5959
  store i32 %15, i32* %old, align 4, !dbg !5974
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5986
  %tobool = icmp ne i32* %16, null, !dbg !5986
  br i1 %tobool, label %if.then, label %if.end, !dbg !5988

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5989
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5990
  store i32 %17, i32* %18, align 4, !dbg !5991
  br label %if.end, !dbg !5992

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5993
  %20 = load i32, i32* %i.addr, align 4, !dbg !5995
  %cmp = icmp eq i32 %19, %20, !dbg !5996
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5997

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !5998, !srcloc !6000
  store i1 true, i1* %retval, align 1, !dbg !6001
  br label %return, !dbg !6001

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !6002
  %cmp3 = icmp slt i32 %21, 0, !dbg !6002
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !6002

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !6002
  %23 = load i32, i32* %i.addr, align 4, !dbg !6002
  %sub = sub i32 %22, %23, !dbg !6002
  %cmp4 = icmp slt i32 %sub, 0, !dbg !6002
  br label %lor.end, !dbg !6002

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !6002
  %lnot5 = xor i1 %lnot, true, !dbg !6002
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6002
  %conv = sext i32 %lnot.ext to i64, !dbg !6002
  %tobool6 = icmp ne i64 %conv, 0, !dbg !6002
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !6004

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6005
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #8, !dbg !6006
  br label %if.end8, !dbg !6006

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !6007
  br label %return, !dbg !6007

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !6008
  ret i1 %26, !dbg !6008
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #2 !dbg !6009 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6010, metadata !DIExpression()), !dbg !6011
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6012
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !6014
  br i1 %call, label %if.end, label %if.then, !dbg !6015

if.then:                                          ; preds = %entry
  br label %return, !dbg !6016

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6017
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6018
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6018
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6019
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6020
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6020
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !6021
  br label %return, !dbg !6022

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6022
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #2 !dbg !6023 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6026, metadata !DIExpression()), !dbg !6027
  ret i1 true, !dbg !6028
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !6029 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6030, metadata !DIExpression()), !dbg !6031
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6032, metadata !DIExpression()), !dbg !6033
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6034
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6035
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6036
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !6037
  br label %do.body, !dbg !6038

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6039

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6041

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6039

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6043
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6043
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6043
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !6043
  br label %do.end5, !dbg !6043

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6039

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6045
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)*, i64, i32, i32) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @register_miscdev() #0 section ".init.text" !dbg !6046 {
entry:
  %call = call i32 @misc_register(%struct.miscdevice* @rng_miscdev) #8, !dbg !6047
  ret i32 %call, !dbg !6048
}

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !6049 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6053, metadata !DIExpression()), !dbg !6057
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6059, metadata !DIExpression()), !dbg !6060
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6061, metadata !DIExpression()), !dbg !6062
  %0 = load i64, i64* %size.addr, align 8, !dbg !6063
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6065
  br i1 %1, label %if.then, label %if.end447, !dbg !6066

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !6067
  %tobool = icmp ne i64 %2, 0, !dbg !6067
  br i1 %tobool, label %if.end, label %if.then1, !dbg !6070

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !6071
  br label %return, !dbg !6071

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !6072
  %cmp = icmp ult i64 %3, 4096, !dbg !6074
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6075

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !6076
  br label %return, !dbg !6076

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub = sub i64 %4, 1, !dbg !6077
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !6077
  br i1 %5, label %cond.true, label %cond.false442, !dbg !6077

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub4 = sub i64 %6, 1, !dbg !6077
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !6077
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !6077

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub6 = sub i64 %8, 1, !dbg !6077
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !6077
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !6077

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !6077

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub9 = sub i64 %9, 1, !dbg !6077
  %and = and i64 %sub9, -9223372036854775808, !dbg !6077
  %tobool10 = icmp ne i64 %and, 0, !dbg !6077
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !6077

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !6077

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub13 = sub i64 %10, 1, !dbg !6077
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !6077
  %tobool15 = icmp ne i64 %and14, 0, !dbg !6077
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !6077

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !6077

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub18 = sub i64 %11, 1, !dbg !6077
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !6077
  %tobool20 = icmp ne i64 %and19, 0, !dbg !6077
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !6077

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !6077

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub23 = sub i64 %12, 1, !dbg !6077
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !6077
  %tobool25 = icmp ne i64 %and24, 0, !dbg !6077
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !6077

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !6077

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub28 = sub i64 %13, 1, !dbg !6077
  %and29 = and i64 %sub28, 576460752303423488, !dbg !6077
  %tobool30 = icmp ne i64 %and29, 0, !dbg !6077
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !6077

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !6077

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub33 = sub i64 %14, 1, !dbg !6077
  %and34 = and i64 %sub33, 288230376151711744, !dbg !6077
  %tobool35 = icmp ne i64 %and34, 0, !dbg !6077
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !6077

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !6077

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub38 = sub i64 %15, 1, !dbg !6077
  %and39 = and i64 %sub38, 144115188075855872, !dbg !6077
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6077
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !6077

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !6077

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub43 = sub i64 %16, 1, !dbg !6077
  %and44 = and i64 %sub43, 72057594037927936, !dbg !6077
  %tobool45 = icmp ne i64 %and44, 0, !dbg !6077
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !6077

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !6077

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub48 = sub i64 %17, 1, !dbg !6077
  %and49 = and i64 %sub48, 36028797018963968, !dbg !6077
  %tobool50 = icmp ne i64 %and49, 0, !dbg !6077
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !6077

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !6077

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub53 = sub i64 %18, 1, !dbg !6077
  %and54 = and i64 %sub53, 18014398509481984, !dbg !6077
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6077
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !6077

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !6077

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub58 = sub i64 %19, 1, !dbg !6077
  %and59 = and i64 %sub58, 9007199254740992, !dbg !6077
  %tobool60 = icmp ne i64 %and59, 0, !dbg !6077
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !6077

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !6077

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub63 = sub i64 %20, 1, !dbg !6077
  %and64 = and i64 %sub63, 4503599627370496, !dbg !6077
  %tobool65 = icmp ne i64 %and64, 0, !dbg !6077
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !6077

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !6077

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub68 = sub i64 %21, 1, !dbg !6077
  %and69 = and i64 %sub68, 2251799813685248, !dbg !6077
  %tobool70 = icmp ne i64 %and69, 0, !dbg !6077
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !6077

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !6077

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub73 = sub i64 %22, 1, !dbg !6077
  %and74 = and i64 %sub73, 1125899906842624, !dbg !6077
  %tobool75 = icmp ne i64 %and74, 0, !dbg !6077
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !6077

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !6077

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub78 = sub i64 %23, 1, !dbg !6077
  %and79 = and i64 %sub78, 562949953421312, !dbg !6077
  %tobool80 = icmp ne i64 %and79, 0, !dbg !6077
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !6077

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !6077

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub83 = sub i64 %24, 1, !dbg !6077
  %and84 = and i64 %sub83, 281474976710656, !dbg !6077
  %tobool85 = icmp ne i64 %and84, 0, !dbg !6077
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !6077

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !6077

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub88 = sub i64 %25, 1, !dbg !6077
  %and89 = and i64 %sub88, 140737488355328, !dbg !6077
  %tobool90 = icmp ne i64 %and89, 0, !dbg !6077
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !6077

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !6077

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub93 = sub i64 %26, 1, !dbg !6077
  %and94 = and i64 %sub93, 70368744177664, !dbg !6077
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6077
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !6077

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !6077

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub98 = sub i64 %27, 1, !dbg !6077
  %and99 = and i64 %sub98, 35184372088832, !dbg !6077
  %tobool100 = icmp ne i64 %and99, 0, !dbg !6077
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !6077

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !6077

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub103 = sub i64 %28, 1, !dbg !6077
  %and104 = and i64 %sub103, 17592186044416, !dbg !6077
  %tobool105 = icmp ne i64 %and104, 0, !dbg !6077
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !6077

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !6077

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub108 = sub i64 %29, 1, !dbg !6077
  %and109 = and i64 %sub108, 8796093022208, !dbg !6077
  %tobool110 = icmp ne i64 %and109, 0, !dbg !6077
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !6077

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !6077

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub113 = sub i64 %30, 1, !dbg !6077
  %and114 = and i64 %sub113, 4398046511104, !dbg !6077
  %tobool115 = icmp ne i64 %and114, 0, !dbg !6077
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !6077

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !6077

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub118 = sub i64 %31, 1, !dbg !6077
  %and119 = and i64 %sub118, 2199023255552, !dbg !6077
  %tobool120 = icmp ne i64 %and119, 0, !dbg !6077
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !6077

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !6077

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub123 = sub i64 %32, 1, !dbg !6077
  %and124 = and i64 %sub123, 1099511627776, !dbg !6077
  %tobool125 = icmp ne i64 %and124, 0, !dbg !6077
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !6077

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !6077

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub128 = sub i64 %33, 1, !dbg !6077
  %and129 = and i64 %sub128, 549755813888, !dbg !6077
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6077
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !6077

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !6077

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub133 = sub i64 %34, 1, !dbg !6077
  %and134 = and i64 %sub133, 274877906944, !dbg !6077
  %tobool135 = icmp ne i64 %and134, 0, !dbg !6077
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !6077

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !6077

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub138 = sub i64 %35, 1, !dbg !6077
  %and139 = and i64 %sub138, 137438953472, !dbg !6077
  %tobool140 = icmp ne i64 %and139, 0, !dbg !6077
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !6077

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !6077

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub143 = sub i64 %36, 1, !dbg !6077
  %and144 = and i64 %sub143, 68719476736, !dbg !6077
  %tobool145 = icmp ne i64 %and144, 0, !dbg !6077
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !6077

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !6077

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub148 = sub i64 %37, 1, !dbg !6077
  %and149 = and i64 %sub148, 34359738368, !dbg !6077
  %tobool150 = icmp ne i64 %and149, 0, !dbg !6077
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !6077

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !6077

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub153 = sub i64 %38, 1, !dbg !6077
  %and154 = and i64 %sub153, 17179869184, !dbg !6077
  %tobool155 = icmp ne i64 %and154, 0, !dbg !6077
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !6077

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !6077

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub158 = sub i64 %39, 1, !dbg !6077
  %and159 = and i64 %sub158, 8589934592, !dbg !6077
  %tobool160 = icmp ne i64 %and159, 0, !dbg !6077
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !6077

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !6077

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub163 = sub i64 %40, 1, !dbg !6077
  %and164 = and i64 %sub163, 4294967296, !dbg !6077
  %tobool165 = icmp ne i64 %and164, 0, !dbg !6077
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !6077

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !6077

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub168 = sub i64 %41, 1, !dbg !6077
  %and169 = and i64 %sub168, 2147483648, !dbg !6077
  %tobool170 = icmp ne i64 %and169, 0, !dbg !6077
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !6077

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !6077

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub173 = sub i64 %42, 1, !dbg !6077
  %and174 = and i64 %sub173, 1073741824, !dbg !6077
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6077
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !6077

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !6077

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub178 = sub i64 %43, 1, !dbg !6077
  %and179 = and i64 %sub178, 536870912, !dbg !6077
  %tobool180 = icmp ne i64 %and179, 0, !dbg !6077
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !6077

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !6077

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub183 = sub i64 %44, 1, !dbg !6077
  %and184 = and i64 %sub183, 268435456, !dbg !6077
  %tobool185 = icmp ne i64 %and184, 0, !dbg !6077
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !6077

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !6077

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub188 = sub i64 %45, 1, !dbg !6077
  %and189 = and i64 %sub188, 134217728, !dbg !6077
  %tobool190 = icmp ne i64 %and189, 0, !dbg !6077
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !6077

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !6077

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub193 = sub i64 %46, 1, !dbg !6077
  %and194 = and i64 %sub193, 67108864, !dbg !6077
  %tobool195 = icmp ne i64 %and194, 0, !dbg !6077
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !6077

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !6077

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub198 = sub i64 %47, 1, !dbg !6077
  %and199 = and i64 %sub198, 33554432, !dbg !6077
  %tobool200 = icmp ne i64 %and199, 0, !dbg !6077
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !6077

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !6077

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub203 = sub i64 %48, 1, !dbg !6077
  %and204 = and i64 %sub203, 16777216, !dbg !6077
  %tobool205 = icmp ne i64 %and204, 0, !dbg !6077
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !6077

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !6077

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub208 = sub i64 %49, 1, !dbg !6077
  %and209 = and i64 %sub208, 8388608, !dbg !6077
  %tobool210 = icmp ne i64 %and209, 0, !dbg !6077
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !6077

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !6077

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub213 = sub i64 %50, 1, !dbg !6077
  %and214 = and i64 %sub213, 4194304, !dbg !6077
  %tobool215 = icmp ne i64 %and214, 0, !dbg !6077
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !6077

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !6077

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub218 = sub i64 %51, 1, !dbg !6077
  %and219 = and i64 %sub218, 2097152, !dbg !6077
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6077
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !6077

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !6077

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub223 = sub i64 %52, 1, !dbg !6077
  %and224 = and i64 %sub223, 1048576, !dbg !6077
  %tobool225 = icmp ne i64 %and224, 0, !dbg !6077
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !6077

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !6077

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub228 = sub i64 %53, 1, !dbg !6077
  %and229 = and i64 %sub228, 524288, !dbg !6077
  %tobool230 = icmp ne i64 %and229, 0, !dbg !6077
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !6077

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !6077

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub233 = sub i64 %54, 1, !dbg !6077
  %and234 = and i64 %sub233, 262144, !dbg !6077
  %tobool235 = icmp ne i64 %and234, 0, !dbg !6077
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !6077

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !6077

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub238 = sub i64 %55, 1, !dbg !6077
  %and239 = and i64 %sub238, 131072, !dbg !6077
  %tobool240 = icmp ne i64 %and239, 0, !dbg !6077
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !6077

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !6077

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub243 = sub i64 %56, 1, !dbg !6077
  %and244 = and i64 %sub243, 65536, !dbg !6077
  %tobool245 = icmp ne i64 %and244, 0, !dbg !6077
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !6077

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !6077

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub248 = sub i64 %57, 1, !dbg !6077
  %and249 = and i64 %sub248, 32768, !dbg !6077
  %tobool250 = icmp ne i64 %and249, 0, !dbg !6077
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !6077

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !6077

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub253 = sub i64 %58, 1, !dbg !6077
  %and254 = and i64 %sub253, 16384, !dbg !6077
  %tobool255 = icmp ne i64 %and254, 0, !dbg !6077
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !6077

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !6077

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub258 = sub i64 %59, 1, !dbg !6077
  %and259 = and i64 %sub258, 8192, !dbg !6077
  %tobool260 = icmp ne i64 %and259, 0, !dbg !6077
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !6077

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !6077

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub263 = sub i64 %60, 1, !dbg !6077
  %and264 = and i64 %sub263, 4096, !dbg !6077
  %tobool265 = icmp ne i64 %and264, 0, !dbg !6077
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !6077

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !6077

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub268 = sub i64 %61, 1, !dbg !6077
  %and269 = and i64 %sub268, 2048, !dbg !6077
  %tobool270 = icmp ne i64 %and269, 0, !dbg !6077
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !6077

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !6077

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub273 = sub i64 %62, 1, !dbg !6077
  %and274 = and i64 %sub273, 1024, !dbg !6077
  %tobool275 = icmp ne i64 %and274, 0, !dbg !6077
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !6077

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !6077

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub278 = sub i64 %63, 1, !dbg !6077
  %and279 = and i64 %sub278, 512, !dbg !6077
  %tobool280 = icmp ne i64 %and279, 0, !dbg !6077
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !6077

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !6077

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub283 = sub i64 %64, 1, !dbg !6077
  %and284 = and i64 %sub283, 256, !dbg !6077
  %tobool285 = icmp ne i64 %and284, 0, !dbg !6077
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !6077

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !6077

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub288 = sub i64 %65, 1, !dbg !6077
  %and289 = and i64 %sub288, 128, !dbg !6077
  %tobool290 = icmp ne i64 %and289, 0, !dbg !6077
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !6077

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !6077

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub293 = sub i64 %66, 1, !dbg !6077
  %and294 = and i64 %sub293, 64, !dbg !6077
  %tobool295 = icmp ne i64 %and294, 0, !dbg !6077
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !6077

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !6077

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub298 = sub i64 %67, 1, !dbg !6077
  %and299 = and i64 %sub298, 32, !dbg !6077
  %tobool300 = icmp ne i64 %and299, 0, !dbg !6077
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !6077

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !6077

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub303 = sub i64 %68, 1, !dbg !6077
  %and304 = and i64 %sub303, 16, !dbg !6077
  %tobool305 = icmp ne i64 %and304, 0, !dbg !6077
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !6077

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !6077

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub308 = sub i64 %69, 1, !dbg !6077
  %and309 = and i64 %sub308, 8, !dbg !6077
  %tobool310 = icmp ne i64 %and309, 0, !dbg !6077
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !6077

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !6077

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub313 = sub i64 %70, 1, !dbg !6077
  %and314 = and i64 %sub313, 4, !dbg !6077
  %tobool315 = icmp ne i64 %and314, 0, !dbg !6077
  %71 = zext i1 %tobool315 to i64, !dbg !6077
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !6077
  br label %cond.end, !dbg !6077

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !6077
  br label %cond.end317, !dbg !6077

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !6077
  br label %cond.end319, !dbg !6077

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !6077
  br label %cond.end321, !dbg !6077

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !6077
  br label %cond.end323, !dbg !6077

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !6077
  br label %cond.end325, !dbg !6077

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !6077
  br label %cond.end327, !dbg !6077

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !6077
  br label %cond.end329, !dbg !6077

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !6077
  br label %cond.end331, !dbg !6077

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !6077
  br label %cond.end333, !dbg !6077

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !6077
  br label %cond.end335, !dbg !6077

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !6077
  br label %cond.end337, !dbg !6077

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !6077
  br label %cond.end339, !dbg !6077

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !6077
  br label %cond.end341, !dbg !6077

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !6077
  br label %cond.end343, !dbg !6077

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !6077
  br label %cond.end345, !dbg !6077

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !6077
  br label %cond.end347, !dbg !6077

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !6077
  br label %cond.end349, !dbg !6077

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !6077
  br label %cond.end351, !dbg !6077

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !6077
  br label %cond.end353, !dbg !6077

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !6077
  br label %cond.end355, !dbg !6077

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !6077
  br label %cond.end357, !dbg !6077

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !6077
  br label %cond.end359, !dbg !6077

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !6077
  br label %cond.end361, !dbg !6077

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !6077
  br label %cond.end363, !dbg !6077

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !6077
  br label %cond.end365, !dbg !6077

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !6077
  br label %cond.end367, !dbg !6077

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !6077
  br label %cond.end369, !dbg !6077

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !6077
  br label %cond.end371, !dbg !6077

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !6077
  br label %cond.end373, !dbg !6077

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !6077
  br label %cond.end375, !dbg !6077

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !6077
  br label %cond.end377, !dbg !6077

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !6077
  br label %cond.end379, !dbg !6077

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !6077
  br label %cond.end381, !dbg !6077

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !6077
  br label %cond.end383, !dbg !6077

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !6077
  br label %cond.end385, !dbg !6077

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !6077
  br label %cond.end387, !dbg !6077

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !6077
  br label %cond.end389, !dbg !6077

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !6077
  br label %cond.end391, !dbg !6077

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !6077
  br label %cond.end393, !dbg !6077

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !6077
  br label %cond.end395, !dbg !6077

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !6077
  br label %cond.end397, !dbg !6077

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !6077
  br label %cond.end399, !dbg !6077

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !6077
  br label %cond.end401, !dbg !6077

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !6077
  br label %cond.end403, !dbg !6077

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !6077
  br label %cond.end405, !dbg !6077

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !6077
  br label %cond.end407, !dbg !6077

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !6077
  br label %cond.end409, !dbg !6077

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !6077
  br label %cond.end411, !dbg !6077

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !6077
  br label %cond.end413, !dbg !6077

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !6077
  br label %cond.end415, !dbg !6077

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !6077
  br label %cond.end417, !dbg !6077

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !6077
  br label %cond.end419, !dbg !6077

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !6077
  br label %cond.end421, !dbg !6077

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !6077
  br label %cond.end423, !dbg !6077

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !6077
  br label %cond.end425, !dbg !6077

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !6077
  br label %cond.end427, !dbg !6077

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !6077
  br label %cond.end429, !dbg !6077

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !6077
  br label %cond.end431, !dbg !6077

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !6077
  br label %cond.end433, !dbg !6077

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !6077
  br label %cond.end435, !dbg !6077

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !6077
  br label %cond.end437, !dbg !6077

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !6077
  br label %cond.end440, !dbg !6077

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !6077

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !6077
  br label %cond.end444, !dbg !6077

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !6077
  %sub443 = sub i64 %72, 1, !dbg !6077
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !6077
  br label %cond.end444, !dbg !6077

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !6077
  %sub446 = sub i32 %cond445, 12, !dbg !6078
  %add = add i32 %sub446, 1, !dbg !6079
  store i32 %add, i32* %retval, align 4, !dbg !6080
  br label %return, !dbg !6080

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !6081
  %dec = add i64 %73, -1, !dbg !6081
  store i64 %dec, i64* %size.addr, align 8, !dbg !6081
  %74 = load i64, i64* %size.addr, align 8, !dbg !6082
  %shr = lshr i64 %74, 12, !dbg !6082
  store i64 %shr, i64* %size.addr, align 8, !dbg !6082
  %75 = load i64, i64* %size.addr, align 8, !dbg !6083
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6060
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !6084
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !6085
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !6084, !srcloc !6086
  store i32 %78, i32* %bitpos.i, align 4, !dbg !6084
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !6087
  %add.i = add i32 %79, 1, !dbg !6088
  store i32 %add.i, i32* %retval, align 4, !dbg !6089
  br label %return, !dbg !6089

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !6090
  ret i32 %80, !dbg !6090
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !6091 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !6053, metadata !DIExpression()), !dbg !6095
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !6059, metadata !DIExpression()), !dbg !6097
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !6098, metadata !DIExpression()), !dbg !6099
  %0 = load i64, i64* %n.addr, align 8, !dbg !6100
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !6097
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !6101
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !6102
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !6101, !srcloc !6086
  store i32 %3, i32* %bitpos.i, align 4, !dbg !6101
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !6103
  %add.i = add i32 %4, 1, !dbg !6104
  %sub = sub i32 %add.i, 1, !dbg !6105
  ret i32 %sub, !dbg !6106
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !6107 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !6111, metadata !DIExpression()), !dbg !6112
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !6113, metadata !DIExpression()), !dbg !6114
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6115, metadata !DIExpression()), !dbg !6116
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6117, metadata !DIExpression()), !dbg !6118
  %0 = load i8*, i8** %object.addr, align 8, !dbg !6119
  ret i8* %0, !dbg !6120
}

; Function Attrs: noredzone
declare dso_local i32 @misc_register(%struct.miscdevice*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { cold noredzone }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3671, !3672, !3673, !3674}
!llvm.ident = !{!3675}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_current_quality", scope: !2, file: !3, line: 45, type: !2974, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !100, globals: !2866, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/char/hw_random/core.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !18, !23, !29, !35, !44, !52, !58, !64, !71, !79, !85, !93}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !12, line: 15, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!17 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !19, line: 65, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!22 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !24, line: 16, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !27, !28}
!26 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!27 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!28 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !30, line: 54, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !36, line: 296, baseType: !7, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!37 = !{!38, !39, !40, !41, !42, !43}
!38 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!39 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!40 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!41 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!42 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!43 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !45, line: 9, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!46 = !{!47, !48, !49, !50, !51}
!47 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!48 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!49 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!50 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!51 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !53, line: 26, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!54 = !{!55, !56, !57}
!55 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!56 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!57 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !59, line: 44, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!60 = !{!61, !62, !63}
!61 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!62 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!63 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !65, line: 343, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70}
!67 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !72, line: 524, baseType: !7, size: 32, elements: !73)
!72 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !75, !76, !77, !78}
!74 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!75 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!76 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!77 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!78 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !72, line: 502, baseType: !7, size: 32, elements: !80)
!80 = !{!81, !82, !83, !84}
!81 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!82 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!83 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!84 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !86, line: 119, baseType: !7, size: 32, elements: !87)
!86 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !89, !90, !91, !92}
!88 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!92 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !94, line: 305, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!100 = !{!101, !102, !186, !141, !187, !127, !114, !188, !194, !195, !196, !1350, !2855, !2857, !762, !2860, !2862, !136, !2863, !2865}
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hwrng", file: !104, line: 39, size: 896, elements: !105)
!104 = !DIFile(filename: "./include/linux/hw_random.h", directory: "/home/lizy2001/genbc/linux")
!105 = !{!106, !110, !115, !119, !123, !132, !144, !145, !147, !153, !166}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !103, file: !104, line: 40, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !103, file: !104, line: 41, baseType: !111, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!114, !102}
!114 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !103, file: !104, line: 42, baseType: !116, size: 64, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !102}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "data_present", scope: !103, file: !104, line: 43, baseType: !120, size: 64, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!114, !102, !114}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "data_read", scope: !103, file: !104, line: 44, baseType: !124, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!114, !102, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !129, line: 21, baseType: !130)
!129 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !131, line: 27, baseType: !7)
!131 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!132 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !103, file: !104, line: 45, baseType: !133, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!114, !102, !101, !136, !142}
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !137, line: 55, baseType: !138)
!137 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !139, line: 72, baseType: !140)
!139 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !139, line: 16, baseType: !141)
!141 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !137, line: 30, baseType: !143)
!143 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !103, file: !104, line: 46, baseType: !141, size: 64, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "quality", scope: !103, file: !104, line: 47, baseType: !146, size: 16, offset: 448)
!146 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !103, file: !104, line: 50, baseType: !148, size: 128, offset: 512)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !137, line: 178, size: 128, elements: !149)
!149 = !{!150, !152}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !137, line: 179, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !148, file: !137, line: 179, baseType: !151, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !103, file: !104, line: 51, baseType: !154, size: 32, offset: 640)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !155, line: 19, size: 32, elements: !156)
!155 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!156 = !{!157}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !154, file: !155, line: 20, baseType: !158, size: 32)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !86, line: 113, baseType: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !86, line: 111, size: 32, elements: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !159, file: !86, line: 112, baseType: !162, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !137, line: 168, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !137, line: 166, size: 32, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !163, file: !137, line: 167, baseType: !114, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !103, file: !104, line: 52, baseType: !167, size: 192, offset: 704)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !168, line: 26, size: 192, elements: !169)
!168 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !167, file: !168, line: 27, baseType: !7, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !167, file: !168, line: 28, baseType: !172, size: 128, offset: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !173, line: 43, size: 128, elements: !174)
!173 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!174 = !{!175, !185}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !172, file: !173, line: 44, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !177, line: 29, baseType: !178)
!177 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !177, line: 20, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !178, file: !177, line: 21, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !182, line: 25, baseType: !183)
!182 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !182, line: 25, elements: !184)
!184 = !{}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !172, file: !173, line: 45, baseType: !148, size: 128)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !137, line: 148, baseType: !7)
!187 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !190, line: 56, size: 128, elements: !191)
!190 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!191 = !{!192, !193}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !189, file: !190, line: 57, baseType: !141, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !189, file: !190, line: 58, baseType: !128, size: 32, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !198, line: 640, size: 48640, elements: !199)
!198 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!199 = !{!200, !201, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !216, !244, !255, !356, !357, !358, !369, !370, !372, !373, !2173, !2174, !2180, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2250, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2265, !2266, !2267, !2269, !2270, !2271, !2272, !2273, !2274, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2298, !2303, !2304, !2305, !2306, !2307, !2309, !2312, !2315, !2318, !2321, !2324, !2425, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2473, !2474, !2475, !2476, !2477, !2482, !2483, !2484, !2487, !2488, !2491, !2494, !2497, !2498, !2530, !2533, !2534, !2613, !2614, !2617, !2618, !2621, !2622, !2623, !2627, !2628, !2629, !2642, !2643, !2644, !2654, !2659, !2660, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !197, file: !198, line: 646, baseType: !189, size: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !197, file: !198, line: 649, baseType: !202, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !187)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !197, file: !198, line: 657, baseType: !101, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !197, file: !198, line: 658, baseType: !158, size: 32, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !198, line: 660, baseType: !7, size: 32, offset: 288)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !197, file: !198, line: 661, baseType: !7, size: 32, offset: 320)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !197, file: !198, line: 684, baseType: !114, size: 32, offset: 352)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !197, file: !198, line: 686, baseType: !114, size: 32, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !197, file: !198, line: 687, baseType: !114, size: 32, offset: 416)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !197, file: !198, line: 688, baseType: !114, size: 32, offset: 448)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !197, file: !198, line: 689, baseType: !7, size: 32, offset: 480)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !197, file: !198, line: 691, baseType: !213, size: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !198, line: 691, flags: DIFlagFwdDecl)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !197, file: !198, line: 692, baseType: !217, size: 832, offset: 576)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !198, line: 451, size: 832, elements: !218)
!218 = !{!219, !224, !232, !233, !234, !238, !239, !240, !241, !242}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !217, file: !198, line: 453, baseType: !220, size: 128)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !198, line: 325, size: 128, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !220, file: !198, line: 326, baseType: !141, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !220, file: !198, line: 327, baseType: !128, size: 32, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !217, file: !198, line: 454, baseType: !225, size: 192, align: 64, offset: 128)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !226, line: 24, size: 192, align: 64, elements: !227)
!226 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!227 = !{!228, !229, !231}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !225, file: !226, line: 25, baseType: !141, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !225, file: !226, line: 26, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !225, file: !226, line: 27, baseType: !230, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !217, file: !198, line: 455, baseType: !148, size: 128, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !217, file: !198, line: 456, baseType: !7, size: 32, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !217, file: !198, line: 458, baseType: !235, size: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !129, line: 23, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !131, line: 31, baseType: !237)
!237 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !217, file: !198, line: 459, baseType: !235, size: 64, offset: 576)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !217, file: !198, line: 460, baseType: !235, size: 64, offset: 640)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !217, file: !198, line: 461, baseType: !235, size: 64, offset: 704)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !217, file: !198, line: 463, baseType: !235, size: 64, offset: 768)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !217, file: !198, line: 465, baseType: !243, offset: 832)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !198, line: 415, elements: !184)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !197, file: !198, line: 693, baseType: !245, size: 384, offset: 1408)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !198, line: 489, size: 384, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !245, file: !198, line: 490, baseType: !148, size: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !245, file: !198, line: 491, baseType: !141, size: 64, offset: 128)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !245, file: !198, line: 492, baseType: !141, size: 64, offset: 192)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !245, file: !198, line: 493, baseType: !7, size: 32, offset: 256)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !245, file: !198, line: 494, baseType: !146, size: 16, offset: 288)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !245, file: !198, line: 495, baseType: !146, size: 16, offset: 304)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !245, file: !198, line: 497, baseType: !254, size: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !197, file: !198, line: 697, baseType: !256, size: 1792, offset: 1792)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !198, line: 507, size: 1792, elements: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !268, !269, !270, !271, !272, !273, !274, !353, !354}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !256, file: !198, line: 508, baseType: !225, size: 192, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !256, file: !198, line: 515, baseType: !235, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !256, file: !198, line: 516, baseType: !235, size: 64, offset: 256)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !256, file: !198, line: 517, baseType: !235, size: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !256, file: !198, line: 518, baseType: !235, size: 64, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !256, file: !198, line: 519, baseType: !235, size: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !256, file: !198, line: 526, baseType: !265, size: 64, offset: 512)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !129, line: 22, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !131, line: 30, baseType: !267)
!267 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !256, file: !198, line: 527, baseType: !235, size: 64, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !256, file: !198, line: 528, baseType: !7, size: 32, offset: 640)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !256, file: !198, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !256, file: !198, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !256, file: !198, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !256, file: !198, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !256, file: !198, line: 563, baseType: !275, size: 512, offset: 704)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !19, line: 118, size: 512, elements: !276)
!276 = !{!277, !285, !286, !291, !346, !350, !351, !352}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !275, file: !19, line: 119, baseType: !278, size: 256)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !279, line: 9, size: 256, elements: !280)
!279 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!280 = !{!281, !282}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !278, file: !279, line: 10, baseType: !225, size: 192, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !278, file: !279, line: 11, baseType: !283, size: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !284, line: 29, baseType: !265)
!284 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !275, file: !19, line: 120, baseType: !283, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !275, file: !19, line: 121, baseType: !287, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!18, !290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !275, file: !19, line: 122, baseType: !292, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !19, line: 159, size: 512, align: 512, elements: !294)
!294 = !{!295, !315, !316, !319, !329, !330, !341, !345}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !293, file: !19, line: 160, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !19, line: 214, size: 4608, align: 512, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !297, file: !19, line: 215, baseType: !176)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !297, file: !19, line: 216, baseType: !7, size: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !297, file: !19, line: 217, baseType: !7, size: 32, offset: 32)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !297, file: !19, line: 218, baseType: !7, size: 32, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !297, file: !19, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !297, file: !19, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !297, file: !19, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !297, file: !19, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !297, file: !19, line: 233, baseType: !283, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !297, file: !19, line: 234, baseType: !290, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !297, file: !19, line: 235, baseType: !283, size: 64, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !297, file: !19, line: 236, baseType: !290, size: 64, offset: 320)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !297, file: !19, line: 237, baseType: !312, size: 4096, offset: 512)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 4096, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 8)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !293, file: !19, line: 161, baseType: !7, size: 32, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !293, file: !19, line: 162, baseType: !317, size: 32, offset: 96)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !137, line: 27, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !139, line: 96, baseType: !114)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !293, file: !19, line: 163, baseType: !320, size: 32, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !321, line: 276, baseType: !322)
!321 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !321, line: 276, size: 32, elements: !323)
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !322, file: !321, line: 276, baseType: !325, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !321, line: 70, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !321, line: 65, size: 32, elements: !327)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !326, file: !321, line: 66, baseType: !7, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !293, file: !19, line: 164, baseType: !290, size: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !293, file: !19, line: 165, baseType: !331, size: 128, offset: 256)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !279, line: 14, size: 128, elements: !332)
!332 = !{!333}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !331, file: !279, line: 15, baseType: !334, size: 128)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !226, line: 125, size: 128, elements: !335)
!335 = !{!336, !340}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !334, file: !226, line: 126, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !226, line: 31, size: 64, elements: !338)
!338 = !{!339}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !337, file: !226, line: 32, baseType: !230, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !334, file: !226, line: 127, baseType: !230, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !293, file: !19, line: 166, baseType: !342, size: 64, offset: 384)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!283}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !293, file: !19, line: 167, baseType: !283, size: 64, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !275, file: !19, line: 123, baseType: !347, size: 8, offset: 448)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !129, line: 17, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !131, line: 21, baseType: !349)
!349 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !275, file: !19, line: 124, baseType: !347, size: 8, offset: 456)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !275, file: !19, line: 125, baseType: !347, size: 8, offset: 464)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !275, file: !19, line: 126, baseType: !347, size: 8, offset: 472)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !256, file: !198, line: 572, baseType: !275, size: 512, offset: 1216)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !256, file: !198, line: 580, baseType: !355, size: 64, offset: 1728)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !197, file: !198, line: 721, baseType: !7, size: 32, offset: 3584)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !197, file: !198, line: 722, baseType: !114, size: 32, offset: 3616)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !197, file: !198, line: 723, baseType: !359, size: 64, offset: 3648)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !362, line: 17, baseType: !363)
!362 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !362, line: 17, size: 64, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !363, file: !362, line: 17, baseType: !366, size: 64)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 64, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 1)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !197, file: !198, line: 724, baseType: !361, size: 64, offset: 3712)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !197, file: !198, line: 749, baseType: !371, offset: 3776)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !198, line: 290, elements: !184)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !197, file: !198, line: 751, baseType: !148, size: 128, offset: 3776)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !197, file: !198, line: 757, baseType: !374, size: 64, offset: 3904)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !376, line: 388, size: 7296, elements: !377)
!376 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!377 = !{!378, !2169}
!378 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !376, line: 389, baseType: !379, size: 7296)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !375, file: !376, line: 389, size: 7296, elements: !380)
!380 = !{!381, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2092, !2098, !2101, !2140, !2141, !2153, !2154, !2157, !2158, !2159, !2162, !2163, !2164, !2167, !2168}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !379, file: !376, line: 390, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !376, line: 305, size: 1472, elements: !384)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !400, !401, !406, !407, !410, !414, !415, !2040, !2041, !2042}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !383, file: !376, line: 308, baseType: !141, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !383, file: !376, line: 309, baseType: !141, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !383, file: !376, line: 313, baseType: !382, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !383, file: !376, line: 313, baseType: !382, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !383, file: !376, line: 315, baseType: !225, size: 192, align: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !383, file: !376, line: 323, baseType: !141, size: 64, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !383, file: !376, line: 327, baseType: !374, size: 64, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !383, file: !376, line: 333, baseType: !393, size: 64, offset: 576)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !394, line: 284, baseType: !395)
!394 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !394, line: 284, size: 64, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !395, file: !394, line: 284, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !399, line: 19, baseType: !141)
!399 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!400 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !383, file: !376, line: 334, baseType: !141, size: 64, offset: 640)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !383, file: !376, line: 343, baseType: !402, size: 256, offset: 704)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !383, file: !376, line: 340, size: 256, elements: !403)
!403 = !{!404, !405}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !402, file: !376, line: 341, baseType: !225, size: 192, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !402, file: !376, line: 342, baseType: !141, size: 64, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !383, file: !376, line: 351, baseType: !148, size: 128, offset: 960)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !383, file: !376, line: 353, baseType: !408, size: 64, offset: 1088)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !376, line: 353, flags: DIFlagFwdDecl)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !383, file: !376, line: 356, baseType: !411, size: 64, offset: 1152)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!413 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !376, line: 356, flags: DIFlagFwdDecl)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !383, file: !376, line: 359, baseType: !141, size: 64, offset: 1216)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !383, file: !376, line: 361, baseType: !416, size: 64, offset: 1280)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !36, line: 916, size: 1856, align: 32, elements: !418)
!418 = !{!419, !437, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1839, !2024, !2033, !2034, !2035, !2036, !2037, !2038, !2039}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !417, file: !36, line: 920, baseType: !420, size: 128)
!420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !417, file: !36, line: 917, size: 128, elements: !421)
!421 = !{!422, !428}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !420, file: !36, line: 918, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !424, line: 58, size: 64, elements: !425)
!424 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !423, file: !424, line: 59, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !420, file: !36, line: 919, baseType: !429, size: 128, align: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !137, line: 216, size: 128, align: 64, elements: !430)
!430 = !{!431, !433}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !429, file: !137, line: 217, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !429, file: !137, line: 218, baseType: !434, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !432}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !417, file: !36, line: 921, baseType: !438, size: 128, offset: 128)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !439, line: 8, size: 128, elements: !440)
!439 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!440 = !{!441, !445}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !438, file: !439, line: 9, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !444, line: 18, flags: DIFlagFwdDecl)
!444 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!445 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !438, file: !439, line: 10, baseType: !446, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !444, line: 89, size: 1536, elements: !448)
!448 = !{!449, !450, !455, !463, !464, !479, !1768, !1770, !1782, !1783, !1784, !1785, !1786, !1792, !1793, !1794}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !447, file: !444, line: 91, baseType: !7, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !447, file: !444, line: 92, baseType: !451, size: 32, offset: 32)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !321, line: 277, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !321, line: 277, size: 32, elements: !453)
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !452, file: !321, line: 277, baseType: !325, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !447, file: !444, line: 93, baseType: !456, size: 128, offset: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !457, line: 38, size: 128, elements: !458)
!457 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!458 = !{!459, !461}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !456, file: !457, line: 39, baseType: !460, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !456, file: !457, line: 39, baseType: !462, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !447, file: !444, line: 94, baseType: !446, size: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !447, file: !444, line: 95, baseType: !465, size: 128, offset: 256)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !444, line: 47, size: 128, elements: !466)
!466 = !{!467, !476}
!467 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !444, line: 48, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !465, file: !444, line: 48, size: 64, elements: !469)
!469 = !{!470, !475}
!470 = !DIDerivedType(tag: DW_TAG_member, scope: !468, file: !444, line: 49, baseType: !471, size: 64)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !468, file: !444, line: 49, size: 64, elements: !472)
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !471, file: !444, line: 50, baseType: !128, size: 32)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !471, file: !444, line: 50, baseType: !128, size: 32, offset: 32)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !468, file: !444, line: 52, baseType: !235, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !465, file: !444, line: 54, baseType: !477, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !447, file: !444, line: 96, baseType: !480, size: 64, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !36, line: 610, size: 4224, elements: !482)
!482 = !{!483, !485, !486, !494, !501, !502, !650, !1474, !1475, !1476, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1744, !1752, !1753, !1754, !1764, !1765, !1766, !1767}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !481, file: !36, line: 611, baseType: !484, size: 16)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !137, line: 19, baseType: !146)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !481, file: !36, line: 612, baseType: !146, size: 16, offset: 16)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !481, file: !36, line: 613, baseType: !487, size: 32, offset: 32)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !488, line: 23, baseType: !489)
!488 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !488, line: 21, size: 32, elements: !490)
!490 = !{!491}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !489, file: !488, line: 22, baseType: !492, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !137, line: 32, baseType: !493)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !139, line: 49, baseType: !7)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !481, file: !36, line: 614, baseType: !495, size: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !488, line: 28, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !488, line: 26, size: 32, elements: !497)
!497 = !{!498}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !496, file: !488, line: 27, baseType: !499, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !137, line: 33, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !139, line: 50, baseType: !7)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !481, file: !36, line: 615, baseType: !7, size: 32, offset: 96)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !481, file: !36, line: 622, baseType: !503, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !36, line: 1864, size: 1536, align: 512, elements: !506)
!506 = !{!507, !511, !524, !528, !534, !539, !543, !547, !551, !555, !559, !560, !566, !570, !594, !623, !630, !636, !641, !645, !646}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !505, file: !36, line: 1865, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!446, !480, !446, !7}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !505, file: !36, line: 1866, baseType: !512, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!107, !446, !480, !515}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !517, line: 10, size: 128, elements: !518)
!517 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!518 = !{!519, !523}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !516, file: !517, line: 11, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{null, !101}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !516, file: !517, line: 12, baseType: !101, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !505, file: !36, line: 1867, baseType: !525, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!114, !480, !114}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !505, file: !36, line: 1868, baseType: !529, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!532, !480, !114}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !36, line: 581, flags: DIFlagFwdDecl)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !505, file: !36, line: 1870, baseType: !535, size: 64, offset: 256)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!114, !446, !538, !114}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !505, file: !36, line: 1872, baseType: !540, size: 64, offset: 320)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!114, !480, !446, !484, !142}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !505, file: !36, line: 1873, baseType: !544, size: 64, offset: 384)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!114, !446, !480, !446}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !505, file: !36, line: 1874, baseType: !548, size: 64, offset: 448)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!114, !480, !446}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !505, file: !36, line: 1875, baseType: !552, size: 64, offset: 512)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!114, !480, !446, !107}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !505, file: !36, line: 1876, baseType: !556, size: 64, offset: 576)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!114, !480, !446, !484}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !505, file: !36, line: 1877, baseType: !548, size: 64, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !505, file: !36, line: 1878, baseType: !561, size: 64, offset: 704)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!114, !480, !446, !484, !564}
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !137, line: 16, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !137, line: 13, baseType: !128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !505, file: !36, line: 1879, baseType: !567, size: 64, offset: 768)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!114, !480, !446, !480, !446, !7}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !505, file: !36, line: 1881, baseType: !571, size: 64, offset: 832)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!114, !446, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !36, line: 219, size: 640, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !584, !591, !592, !593}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !575, file: !36, line: 220, baseType: !7, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !575, file: !36, line: 221, baseType: !484, size: 16, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !575, file: !36, line: 222, baseType: !487, size: 32, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !575, file: !36, line: 223, baseType: !495, size: 32, offset: 96)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !575, file: !36, line: 224, baseType: !582, size: 64, offset: 128)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !137, line: 46, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !139, line: 88, baseType: !267)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !575, file: !36, line: 225, baseType: !585, size: 128, offset: 192)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !586, line: 13, size: 128, elements: !587)
!586 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!587 = !{!588, !590}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !585, file: !586, line: 14, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !586, line: 8, baseType: !266)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !585, file: !586, line: 15, baseType: !187, size: 64, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !575, file: !36, line: 226, baseType: !585, size: 128, offset: 320)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !575, file: !36, line: 227, baseType: !585, size: 128, offset: 448)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !575, file: !36, line: 234, baseType: !416, size: 64, offset: 576)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !505, file: !36, line: 1882, baseType: !595, size: 64, offset: 896)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!114, !598, !600, !128, !7}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !602, line: 22, size: 1152, elements: !603)
!602 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!603 = !{!604, !605, !606, !607, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !601, file: !602, line: 23, baseType: !128, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !601, file: !602, line: 24, baseType: !484, size: 16, offset: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !601, file: !602, line: 25, baseType: !7, size: 32, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !601, file: !602, line: 26, baseType: !608, size: 32, offset: 96)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !137, line: 104, baseType: !128)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !601, file: !602, line: 27, baseType: !235, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !601, file: !602, line: 28, baseType: !235, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !601, file: !602, line: 37, baseType: !235, size: 64, offset: 256)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !601, file: !602, line: 38, baseType: !564, size: 32, offset: 320)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !601, file: !602, line: 39, baseType: !564, size: 32, offset: 352)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !601, file: !602, line: 40, baseType: !487, size: 32, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !601, file: !602, line: 41, baseType: !495, size: 32, offset: 416)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !601, file: !602, line: 42, baseType: !582, size: 64, offset: 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !601, file: !602, line: 43, baseType: !585, size: 128, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !601, file: !602, line: 44, baseType: !585, size: 128, offset: 640)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !601, file: !602, line: 45, baseType: !585, size: 128, offset: 768)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !601, file: !602, line: 46, baseType: !585, size: 128, offset: 896)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !601, file: !602, line: 47, baseType: !235, size: 64, offset: 1024)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !601, file: !602, line: 48, baseType: !235, size: 64, offset: 1088)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !505, file: !36, line: 1883, baseType: !624, size: 64, offset: 960)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!627, !446, !538, !136}
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !137, line: 60, baseType: !628)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !139, line: 73, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !139, line: 15, baseType: !187)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !505, file: !36, line: 1884, baseType: !631, size: 64, offset: 1024)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!114, !480, !634, !235, !235}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !36, line: 50, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !505, file: !36, line: 1886, baseType: !637, size: 64, offset: 1088)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!114, !480, !640, !114}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !505, file: !36, line: 1887, baseType: !642, size: 64, offset: 1152)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!114, !480, !446, !416, !7, !484}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !505, file: !36, line: 1890, baseType: !556, size: 64, offset: 1216)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !505, file: !36, line: 1891, baseType: !647, size: 64, offset: 1280)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!114, !480, !532, !114}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !481, file: !36, line: 623, baseType: !651, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !36, line: 1416, size: 9472, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !711, !1050, !1138, !1221, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1237, !1241, !1242, !1245, !1248, !1251, !1252, !1253, !1294, !1327, !1328, !1329, !1330, !1331, !1332, !1335, !1339, !1348, !1349, !1351, !1352, !1353, !1412, !1413, !1428, !1429, !1430, !1431, !1432, !1436, !1437, !1440, !1455, !1456, !1457, !1468, !1469, !1470, !1471, !1472, !1473}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !652, file: !36, line: 1417, baseType: !148, size: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !652, file: !36, line: 1418, baseType: !564, size: 32, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !652, file: !36, line: 1419, baseType: !349, size: 8, offset: 160)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !652, file: !36, line: 1420, baseType: !141, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !652, file: !36, line: 1421, baseType: !582, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !652, file: !36, line: 1422, baseType: !660, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !36, line: 2228, size: 576, elements: !662)
!662 = !{!663, !664, !665, !672, !676, !680, !684, !688, !689, !699, !702, !703, !704, !708, !709, !710}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !661, file: !36, line: 2229, baseType: !107, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !661, file: !36, line: 2230, baseType: !114, size: 32, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !661, file: !36, line: 2238, baseType: !666, size: 64, offset: 128)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!114, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !671, line: 28, flags: DIFlagFwdDecl)
!671 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!672 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !661, file: !36, line: 2239, baseType: !673, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !36, line: 70, flags: DIFlagFwdDecl)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !661, file: !36, line: 2240, baseType: !677, size: 64, offset: 256)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!446, !660, !114, !107, !101}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !661, file: !36, line: 2242, baseType: !681, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DISubroutineType(types: !683)
!683 = !{null, !651}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !661, file: !36, line: 2243, baseType: !685, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !687, line: 76, flags: DIFlagFwdDecl)
!687 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !661, file: !36, line: 2244, baseType: !660, size: 64, offset: 448)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !661, file: !36, line: 2245, baseType: !690, size: 64, offset: 512)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !137, line: 182, size: 64, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !690, file: !137, line: 183, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !137, line: 186, size: 128, elements: !695)
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !694, file: !137, line: 187, baseType: !693, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !694, file: !137, line: 187, baseType: !698, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !661, file: !36, line: 2247, baseType: !700, offset: 576)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !701, line: 187, elements: !184)
!701 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!702 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !661, file: !36, line: 2248, baseType: !700, offset: 576)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !661, file: !36, line: 2249, baseType: !700, offset: 576)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !661, file: !36, line: 2250, baseType: !705, offset: 576)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !700, elements: !706)
!706 = !{!707}
!707 = !DISubrange(count: 3)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !661, file: !36, line: 2252, baseType: !700, offset: 576)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !661, file: !36, line: 2253, baseType: !700, offset: 576)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !661, file: !36, line: 2254, baseType: !700, offset: 576)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !652, file: !36, line: 1423, baseType: !712, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !36, line: 1935, size: 1472, elements: !715)
!715 = !{!716, !720, !724, !725, !729, !735, !739, !740, !741, !745, !749, !750, !751, !752, !758, !763, !764, !770, !771, !772, !773, !1034, !1049}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !714, file: !36, line: 1936, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!480, !651}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !714, file: !36, line: 1937, baseType: !721, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !480}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !714, file: !36, line: 1938, baseType: !721, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !714, file: !36, line: 1940, baseType: !726, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !480, !114}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !714, file: !36, line: 1941, baseType: !730, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!114, !480, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !36, line: 289, flags: DIFlagFwdDecl)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !714, file: !36, line: 1942, baseType: !736, size: 64, offset: 320)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!114, !480}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !714, file: !36, line: 1943, baseType: !721, size: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !714, file: !36, line: 1944, baseType: !681, size: 64, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !714, file: !36, line: 1945, baseType: !742, size: 64, offset: 512)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!114, !651, !114}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !714, file: !36, line: 1946, baseType: !746, size: 64, offset: 576)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!114, !651}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !714, file: !36, line: 1947, baseType: !746, size: 64, offset: 640)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !714, file: !36, line: 1948, baseType: !746, size: 64, offset: 704)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !714, file: !36, line: 1949, baseType: !746, size: 64, offset: 768)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !714, file: !36, line: 1950, baseType: !753, size: 64, offset: 832)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!114, !446, !756}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !36, line: 57, flags: DIFlagFwdDecl)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !714, file: !36, line: 1951, baseType: !759, size: 64, offset: 896)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!114, !651, !762, !538}
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !714, file: !36, line: 1952, baseType: !681, size: 64, offset: 960)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !714, file: !36, line: 1954, baseType: !765, size: 64, offset: 1024)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!114, !768, !446}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !394, line: 539, flags: DIFlagFwdDecl)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !714, file: !36, line: 1955, baseType: !765, size: 64, offset: 1088)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !714, file: !36, line: 1956, baseType: !765, size: 64, offset: 1152)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !714, file: !36, line: 1957, baseType: !765, size: 64, offset: 1216)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !714, file: !36, line: 1963, baseType: !774, size: 64, offset: 1280)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!114, !651, !777, !186}
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !376, line: 68, size: 512, align: 128, elements: !779)
!779 = !{!780, !781, !1026, !1033}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !778, file: !376, line: 69, baseType: !141, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, scope: !778, file: !376, line: 77, baseType: !782, size: 320, offset: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !778, file: !376, line: 77, size: 320, elements: !783)
!783 = !{!784, !958, !963, !991, !999, !1005, !1018, !1025}
!784 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !376, line: 78, baseType: !785, size: 320)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !376, line: 78, size: 320, elements: !786)
!786 = !{!787, !788, !956, !957}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !785, file: !376, line: 84, baseType: !148, size: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !785, file: !376, line: 86, baseType: !789, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !36, line: 451, size: 1216, align: 64, elements: !791)
!791 = !{!792, !793, !807, !808, !809, !810, !824, !825, !826, !827, !949, !950, !953, !954, !955}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !790, file: !36, line: 452, baseType: !480, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !790, file: !36, line: 453, baseType: !794, size: 128, offset: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !795, line: 292, size: 128, elements: !796)
!795 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!796 = !{!797, !805, !806}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !794, file: !795, line: 293, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !177, line: 83, baseType: !799)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !177, line: 71, elements: !800)
!800 = !{!801}
!801 = !DIDerivedType(tag: DW_TAG_member, scope: !799, file: !177, line: 72, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !799, file: !177, line: 72, elements: !803)
!803 = !{!804}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !802, file: !177, line: 73, baseType: !178)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !794, file: !795, line: 295, baseType: !186, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !794, file: !795, line: 296, baseType: !101, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !790, file: !36, line: 454, baseType: !186, size: 32, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !790, file: !36, line: 455, baseType: !162, size: 32, offset: 224)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !790, file: !36, line: 460, baseType: !334, size: 128, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !790, file: !36, line: 461, baseType: !811, size: 256, offset: 384)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !812, line: 35, size: 256, elements: !813)
!812 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!813 = !{!814, !821, !822, !823}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !811, file: !812, line: 36, baseType: !815, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !816, line: 13, baseType: !817)
!816 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !137, line: 175, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !137, line: 173, size: 64, elements: !819)
!819 = !{!820}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !818, file: !137, line: 174, baseType: !265, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !811, file: !812, line: 42, baseType: !815, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !811, file: !812, line: 46, baseType: !176, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !811, file: !812, line: 47, baseType: !148, size: 128, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !790, file: !36, line: 462, baseType: !141, size: 64, offset: 640)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !790, file: !36, line: 463, baseType: !141, size: 64, offset: 704)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !790, file: !36, line: 464, baseType: !141, size: 64, offset: 768)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !790, file: !36, line: 465, baseType: !828, size: 64, offset: 832)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !830)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !36, line: 367, size: 1408, elements: !831)
!831 = !{!832, !836, !840, !844, !848, !852, !858, !864, !868, !873, !877, !881, !885, !913, !917, !923, !924, !925, !929, !934, !938, !945}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !830, file: !36, line: 368, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!114, !777, !733}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !830, file: !36, line: 369, baseType: !837, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!114, !416, !777}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !830, file: !36, line: 372, baseType: !841, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!114, !789, !733}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !830, file: !36, line: 375, baseType: !845, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!114, !777}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !830, file: !36, line: 381, baseType: !849, size: 64, offset: 256)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!114, !416, !789, !151, !7}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !830, file: !36, line: 383, baseType: !853, size: 64, offset: 320)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !856}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !36, line: 290, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !830, file: !36, line: 385, baseType: !859, size: 64, offset: 384)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!114, !416, !789, !582, !7, !7, !862, !863}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !830, file: !36, line: 388, baseType: !865, size: 64, offset: 448)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{!114, !416, !789, !582, !7, !7, !777, !101}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !830, file: !36, line: 393, baseType: !869, size: 64, offset: 512)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!872, !789, !872}
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !137, line: 125, baseType: !235)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !830, file: !36, line: 394, baseType: !874, size: 64, offset: 576)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{null, !777, !7, !7}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !830, file: !36, line: 395, baseType: !878, size: 64, offset: 640)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!114, !777, !186}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !830, file: !36, line: 396, baseType: !882, size: 64, offset: 704)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !777}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !830, file: !36, line: 397, baseType: !886, size: 64, offset: 768)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!627, !889, !911}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !36, line: 320, size: 384, elements: !891)
!891 = !{!892, !893, !894, !898, !899, !900, !903, !904}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !890, file: !36, line: 321, baseType: !416, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !890, file: !36, line: 326, baseType: !582, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !890, file: !36, line: 327, baseType: !895, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{null, !889, !187, !187}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !890, file: !36, line: 328, baseType: !101, size: 64, offset: 192)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !890, file: !36, line: 329, baseType: !114, size: 32, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !890, file: !36, line: 330, baseType: !901, size: 16, offset: 288)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !129, line: 19, baseType: !902)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !131, line: 24, baseType: !146)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !890, file: !36, line: 331, baseType: !901, size: 16, offset: 304)
!904 = !DIDerivedType(tag: DW_TAG_member, scope: !890, file: !36, line: 332, baseType: !905, size: 64, offset: 320)
!905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !890, file: !36, line: 332, size: 64, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !905, file: !36, line: 333, baseType: !7, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !905, file: !36, line: 334, baseType: !909, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !36, line: 334, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !36, line: 64, flags: DIFlagFwdDecl)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !830, file: !36, line: 402, baseType: !914, size: 64, offset: 832)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!114, !789, !777, !777, !11}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !830, file: !36, line: 404, baseType: !918, size: 64, offset: 896)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{!142, !777, !921}
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !922, line: 305, baseType: !7)
!922 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!923 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !830, file: !36, line: 405, baseType: !882, size: 64, offset: 960)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !830, file: !36, line: 406, baseType: !845, size: 64, offset: 1024)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !830, file: !36, line: 407, baseType: !926, size: 64, offset: 1088)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{!114, !777, !141, !141}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !830, file: !36, line: 409, baseType: !930, size: 64, offset: 1152)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !777, !933, !933}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !830, file: !36, line: 410, baseType: !935, size: 64, offset: 1216)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!114, !789, !777}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !830, file: !36, line: 413, baseType: !939, size: 64, offset: 1280)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!114, !942, !416, !944}
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !36, line: 61, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !830, file: !36, line: 415, baseType: !946, size: 64, offset: 1344)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{null, !416}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !790, file: !36, line: 466, baseType: !141, size: 64, offset: 896)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !790, file: !36, line: 467, baseType: !951, size: 32, offset: 960)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !952, line: 8, baseType: !128)
!952 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!953 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !790, file: !36, line: 468, baseType: !798, offset: 992)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !790, file: !36, line: 469, baseType: !148, size: 128, offset: 1024)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !790, file: !36, line: 470, baseType: !101, size: 64, offset: 1152)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !785, file: !376, line: 87, baseType: !141, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !785, file: !376, line: 94, baseType: !141, size: 64, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !376, line: 96, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !376, line: 96, size: 64, elements: !960)
!960 = !{!961}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !959, file: !376, line: 101, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !137, line: 143, baseType: !235)
!963 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !376, line: 103, baseType: !964, size: 320)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !376, line: 103, size: 320, elements: !965)
!965 = !{!966, !976, !979, !980}
!966 = !DIDerivedType(tag: DW_TAG_member, scope: !964, file: !376, line: 104, baseType: !967, size: 128)
!967 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !964, file: !376, line: 104, size: 128, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !967, file: !376, line: 105, baseType: !148, size: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !376, line: 106, baseType: !971, size: 128)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !967, file: !376, line: 106, size: 128, elements: !972)
!972 = !{!973, !974, !975}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !971, file: !376, line: 107, baseType: !777, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !971, file: !376, line: 109, baseType: !114, size: 32, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !971, file: !376, line: 110, baseType: !114, size: 32, offset: 96)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !964, file: !376, line: 117, baseType: !977, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !376, line: 117, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !964, file: !376, line: 119, baseType: !101, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_member, scope: !964, file: !376, line: 120, baseType: !981, size: 64, offset: 256)
!981 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !964, file: !376, line: 120, size: 64, elements: !982)
!982 = !{!983, !984, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !981, file: !376, line: 121, baseType: !101, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !981, file: !376, line: 122, baseType: !141, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, scope: !981, file: !376, line: 123, baseType: !986, size: 32)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !981, file: !376, line: 123, size: 32, elements: !987)
!987 = !{!988, !989, !990}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !986, file: !376, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !986, file: !376, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !986, file: !376, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !376, line: 130, baseType: !992, size: 192)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !376, line: 130, size: 192, elements: !993)
!993 = !{!994, !995, !996, !997, !998}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !992, file: !376, line: 131, baseType: !141, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !992, file: !376, line: 134, baseType: !349, size: 8, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !992, file: !376, line: 135, baseType: !349, size: 8, offset: 72)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !992, file: !376, line: 136, baseType: !162, size: 32, offset: 96)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !992, file: !376, line: 137, baseType: !7, size: 32, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !376, line: 139, baseType: !1000, size: 256)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !376, line: 139, size: 256, elements: !1001)
!1001 = !{!1002, !1003, !1004}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1000, file: !376, line: 140, baseType: !141, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1000, file: !376, line: 141, baseType: !162, size: 32, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1000, file: !376, line: 143, baseType: !148, size: 128, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !376, line: 145, baseType: !1006, size: 256)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !376, line: 145, size: 256, elements: !1007)
!1007 = !{!1008, !1009, !1011, !1012, !1017}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1006, file: !376, line: 146, baseType: !141, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1006, file: !376, line: 147, baseType: !1010, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !394, line: 509, baseType: !777)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1006, file: !376, line: 148, baseType: !141, size: 64, offset: 128)
!1012 = !DIDerivedType(tag: DW_TAG_member, scope: !1006, file: !376, line: 149, baseType: !1013, size: 64, offset: 192)
!1013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1006, file: !376, line: 149, size: 64, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1013, file: !376, line: 150, baseType: !374, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1013, file: !376, line: 151, baseType: !162, size: 32)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1006, file: !376, line: 156, baseType: !798, offset: 256)
!1018 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !376, line: 159, baseType: !1019, size: 128)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !376, line: 159, size: 128, elements: !1020)
!1020 = !{!1021, !1024}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1019, file: !376, line: 161, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !376, line: 161, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1019, file: !376, line: 162, baseType: !101, size: 64, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !782, file: !376, line: 176, baseType: !429, size: 128, align: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, scope: !778, file: !376, line: 179, baseType: !1027, size: 32, offset: 384)
!1027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !778, file: !376, line: 179, size: 32, elements: !1028)
!1028 = !{!1029, !1030, !1031, !1032}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1027, file: !376, line: 184, baseType: !162, size: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1027, file: !376, line: 192, baseType: !7, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1027, file: !376, line: 194, baseType: !7, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1027, file: !376, line: 195, baseType: !114, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !778, file: !376, line: 199, baseType: !162, size: 32, offset: 416)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !714, file: !36, line: 1964, baseType: !1035, size: 64, offset: 1344)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!187, !651, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1040, line: 12, size: 256, elements: !1041)
!1040 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!1041 = !{!1042, !1043, !1044, !1045, !1046}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1039, file: !1040, line: 13, baseType: !186, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1039, file: !1040, line: 16, baseType: !114, size: 32, offset: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1039, file: !1040, line: 23, baseType: !141, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1039, file: !1040, line: 30, baseType: !141, size: 64, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1039, file: !1040, line: 33, baseType: !1047, size: 64, offset: 192)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !376, line: 27, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !714, file: !36, line: 1966, baseType: !1035, size: 64, offset: 1408)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !652, file: !36, line: 1424, baseType: !1051, size: 64, offset: 448)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1053)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !30, line: 322, size: 704, elements: !1054)
!1054 = !{!1055, !1107, !1111, !1115, !1116, !1117, !1118, !1119, !1124, !1129, !1133}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1053, file: !30, line: 323, baseType: !1056, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!114, !1059}
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !30, line: 294, size: 1600, elements: !1061)
!1061 = !{!1062, !1063, !1064, !1065, !1066, !1073, !1074, !1075, !1076, !1092, !1093, !1094}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1060, file: !30, line: 295, baseType: !694, size: 128)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1060, file: !30, line: 296, baseType: !148, size: 128, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1060, file: !30, line: 297, baseType: !148, size: 128, offset: 256)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1060, file: !30, line: 298, baseType: !148, size: 128, offset: 384)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1060, file: !30, line: 299, baseType: !1067, size: 192, offset: 512)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1068, line: 53, size: 192, elements: !1069)
!1068 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1069 = !{!1070, !1071, !1072}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1067, file: !1068, line: 54, baseType: !815, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1067, file: !1068, line: 55, baseType: !798, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1067, file: !1068, line: 59, baseType: !148, size: 128, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1060, file: !30, line: 300, baseType: !798, offset: 704)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1060, file: !30, line: 301, baseType: !162, size: 32, offset: 704)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1060, file: !30, line: 302, baseType: !651, size: 64, offset: 768)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1060, file: !30, line: 303, baseType: !1077, size: 64, offset: 832)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !30, line: 68, size: 64, elements: !1078)
!1078 = !{!1079, !1091}
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !30, line: 69, baseType: !1080, size: 32)
!1080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !30, line: 69, size: 32, elements: !1081)
!1081 = !{!1082, !1083, !1084}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1080, file: !30, line: 70, baseType: !487, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1080, file: !30, line: 71, baseType: !495, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1080, file: !30, line: 72, baseType: !1085, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1086, line: 24, baseType: !1087)
!1086 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1086, line: 22, size: 32, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1087, file: !1086, line: 23, baseType: !1090, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1086, line: 20, baseType: !493)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1077, file: !30, line: 74, baseType: !29, size: 32, offset: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1060, file: !30, line: 304, baseType: !582, size: 64, offset: 896)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1060, file: !30, line: 305, baseType: !141, size: 64, offset: 960)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1060, file: !30, line: 306, baseType: !1095, size: 576, offset: 1024)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !30, line: 205, size: 576, elements: !1096)
!1096 = !{!1097, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1095, file: !30, line: 206, baseType: !1098, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !30, line: 66, baseType: !267)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1095, file: !30, line: 207, baseType: !1098, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1095, file: !30, line: 208, baseType: !1098, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1095, file: !30, line: 209, baseType: !1098, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1095, file: !30, line: 210, baseType: !1098, size: 64, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1095, file: !30, line: 211, baseType: !1098, size: 64, offset: 320)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1095, file: !30, line: 212, baseType: !1098, size: 64, offset: 384)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1095, file: !30, line: 213, baseType: !589, size: 64, offset: 448)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1095, file: !30, line: 214, baseType: !589, size: 64, offset: 512)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1053, file: !30, line: 324, baseType: !1108, size: 64, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DISubroutineType(types: !1110)
!1110 = !{!1059, !651, !114}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1053, file: !30, line: 325, baseType: !1112, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !1059}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1053, file: !30, line: 326, baseType: !1056, size: 64, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1053, file: !30, line: 327, baseType: !1056, size: 64, offset: 256)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1053, file: !30, line: 328, baseType: !1056, size: 64, offset: 320)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1053, file: !30, line: 329, baseType: !742, size: 64, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1053, file: !30, line: 332, baseType: !1120, size: 64, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!1123, !480}
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1053, file: !30, line: 333, baseType: !1125, size: 64, offset: 512)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!114, !480, !1128}
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1053, file: !30, line: 335, baseType: !1130, size: 64, offset: 576)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!114, !480, !1123}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1053, file: !30, line: 337, baseType: !1134, size: 64, offset: 640)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!114, !651, !1137}
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !652, file: !36, line: 1425, baseType: !1139, size: 64, offset: 512)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !30, line: 428, size: 704, elements: !1142)
!1142 = !{!1143, !1147, !1148, !1152, !1153, !1154, !1169, !1192, !1196, !1197, !1220}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1141, file: !30, line: 429, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!114, !651, !114, !114, !598}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1141, file: !30, line: 430, baseType: !742, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1141, file: !30, line: 431, baseType: !1149, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!114, !651, !7}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1141, file: !30, line: 432, baseType: !1149, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1141, file: !30, line: 433, baseType: !742, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1141, file: !30, line: 434, baseType: !1155, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!114, !651, !114, !1158}
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !30, line: 415, size: 256, elements: !1160)
!1160 = !{!1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1159, file: !30, line: 416, baseType: !114, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1159, file: !30, line: 417, baseType: !7, size: 32, offset: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1159, file: !30, line: 418, baseType: !7, size: 32, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1159, file: !30, line: 420, baseType: !7, size: 32, offset: 96)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1159, file: !30, line: 421, baseType: !7, size: 32, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1159, file: !30, line: 422, baseType: !7, size: 32, offset: 160)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1159, file: !30, line: 423, baseType: !7, size: 32, offset: 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1159, file: !30, line: 424, baseType: !7, size: 32, offset: 224)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1141, file: !30, line: 435, baseType: !1170, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!114, !651, !1077, !1173}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !30, line: 343, size: 960, elements: !1175)
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1174, file: !30, line: 344, baseType: !114, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1174, file: !30, line: 345, baseType: !235, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1174, file: !30, line: 346, baseType: !235, size: 64, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1174, file: !30, line: 347, baseType: !235, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1174, file: !30, line: 348, baseType: !235, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1174, file: !30, line: 349, baseType: !235, size: 64, offset: 320)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1174, file: !30, line: 350, baseType: !235, size: 64, offset: 384)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1174, file: !30, line: 351, baseType: !265, size: 64, offset: 448)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1174, file: !30, line: 353, baseType: !265, size: 64, offset: 512)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1174, file: !30, line: 354, baseType: !114, size: 32, offset: 576)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1174, file: !30, line: 355, baseType: !114, size: 32, offset: 608)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1174, file: !30, line: 356, baseType: !235, size: 64, offset: 640)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1174, file: !30, line: 357, baseType: !235, size: 64, offset: 704)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1174, file: !30, line: 358, baseType: !235, size: 64, offset: 768)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1174, file: !30, line: 359, baseType: !265, size: 64, offset: 832)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1174, file: !30, line: 360, baseType: !114, size: 32, offset: 896)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1141, file: !30, line: 436, baseType: !1193, size: 64, offset: 448)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!114, !651, !1137, !1173}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1141, file: !30, line: 438, baseType: !1170, size: 64, offset: 512)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1141, file: !30, line: 439, baseType: !1198, size: 64, offset: 576)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!114, !651, !1201}
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !30, line: 409, size: 1408, elements: !1203)
!1203 = !{!1204, !1205}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1202, file: !30, line: 410, baseType: !7, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1202, file: !30, line: 411, baseType: !1206, size: 1344, offset: 64)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1207, size: 1344, elements: !706)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !30, line: 395, size: 448, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1219}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1207, file: !30, line: 396, baseType: !7, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1207, file: !30, line: 397, baseType: !7, size: 32, offset: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1207, file: !30, line: 399, baseType: !7, size: 32, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1207, file: !30, line: 400, baseType: !7, size: 32, offset: 96)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1207, file: !30, line: 401, baseType: !7, size: 32, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1207, file: !30, line: 402, baseType: !7, size: 32, offset: 160)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1207, file: !30, line: 403, baseType: !7, size: 32, offset: 192)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1207, file: !30, line: 404, baseType: !237, size: 64, offset: 256)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1207, file: !30, line: 405, baseType: !1218, size: 64, offset: 320)
!1218 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !137, line: 126, baseType: !235)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1207, file: !30, line: 406, baseType: !1218, size: 64, offset: 384)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1141, file: !30, line: 440, baseType: !1149, size: 64, offset: 640)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !652, file: !36, line: 1426, baseType: !1222, size: 64, offset: 576)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1224)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !36, line: 49, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !652, file: !36, line: 1427, baseType: !141, size: 64, offset: 640)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !652, file: !36, line: 1428, baseType: !141, size: 64, offset: 704)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !652, file: !36, line: 1429, baseType: !141, size: 64, offset: 768)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !652, file: !36, line: 1430, baseType: !446, size: 64, offset: 832)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !652, file: !36, line: 1431, baseType: !811, size: 256, offset: 896)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !652, file: !36, line: 1432, baseType: !114, size: 32, offset: 1152)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !652, file: !36, line: 1433, baseType: !162, size: 32, offset: 1184)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !652, file: !36, line: 1437, baseType: !1233, size: 64, offset: 1216)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1236)
!1236 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !36, line: 1437, flags: DIFlagFwdDecl)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !652, file: !36, line: 1449, baseType: !1238, size: 64, offset: 1280)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !457, line: 34, size: 64, elements: !1239)
!1239 = !{!1240}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1238, file: !457, line: 35, baseType: !460, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !652, file: !36, line: 1450, baseType: !148, size: 128, offset: 1344)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !652, file: !36, line: 1451, baseType: !1243, size: 64, offset: 1472)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !36, line: 699, flags: DIFlagFwdDecl)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !652, file: !36, line: 1452, baseType: !1246, size: 64, offset: 1536)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !198, line: 40, flags: DIFlagFwdDecl)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !652, file: !36, line: 1453, baseType: !1249, size: 64, offset: 1600)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !36, line: 1453, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !652, file: !36, line: 1454, baseType: !694, size: 128, offset: 1664)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !652, file: !36, line: 1455, baseType: !7, size: 32, offset: 1792)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !652, file: !36, line: 1456, baseType: !1254, size: 2432, offset: 1856)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !30, line: 518, size: 2432, elements: !1255)
!1255 = !{!1256, !1257, !1258, !1260, !1292}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1254, file: !30, line: 519, baseType: !7, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1254, file: !30, line: 520, baseType: !811, size: 256, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1254, file: !30, line: 521, baseType: !1259, size: 192, offset: 320)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !480, size: 192, elements: !706)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1254, file: !30, line: 522, baseType: !1261, size: 1728, offset: 512)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1262, size: 1728, elements: !706)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !30, line: 222, size: 576, elements: !1263)
!1263 = !{!1264, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1262, file: !30, line: 223, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !30, line: 443, size: 256, elements: !1267)
!1267 = !{!1268, !1269, !1282, !1283}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1266, file: !30, line: 444, baseType: !114, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1266, file: !30, line: 445, baseType: !1270, size: 64, offset: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1272)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !30, line: 310, size: 512, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1272, file: !30, line: 311, baseType: !742, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1272, file: !30, line: 312, baseType: !742, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1272, file: !30, line: 313, baseType: !742, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1272, file: !30, line: 314, baseType: !742, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1272, file: !30, line: 315, baseType: !1056, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1272, file: !30, line: 316, baseType: !1056, size: 64, offset: 320)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1272, file: !30, line: 317, baseType: !1056, size: 64, offset: 384)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1272, file: !30, line: 318, baseType: !1134, size: 64, offset: 448)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1266, file: !30, line: 446, baseType: !685, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1266, file: !30, line: 447, baseType: !1265, size: 64, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1262, file: !30, line: 224, baseType: !114, size: 32, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1262, file: !30, line: 226, baseType: !148, size: 128, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1262, file: !30, line: 227, baseType: !141, size: 64, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1262, file: !30, line: 228, baseType: !7, size: 32, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1262, file: !30, line: 229, baseType: !7, size: 32, offset: 352)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1262, file: !30, line: 230, baseType: !1098, size: 64, offset: 384)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1262, file: !30, line: 231, baseType: !1098, size: 64, offset: 448)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1262, file: !30, line: 232, baseType: !101, size: 64, offset: 512)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1254, file: !30, line: 523, baseType: !1293, size: 192, offset: 2240)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1270, size: 192, elements: !706)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !652, file: !36, line: 1458, baseType: !1295, size: 2112, offset: 4288)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !36, line: 1410, size: 2112, elements: !1296)
!1296 = !{!1297, !1298, !1305}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1295, file: !36, line: 1411, baseType: !114, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !1295, file: !36, line: 1412, baseType: !1299, size: 128, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1300, line: 40, baseType: !1301)
!1300 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1300, line: 36, size: 128, elements: !1302)
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1301, file: !1300, line: 37, baseType: !798)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1301, file: !1300, line: 38, baseType: !148, size: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1295, file: !36, line: 1413, baseType: !1306, size: 1920, offset: 192)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1307, size: 1920, elements: !706)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1308, line: 12, size: 640, elements: !1309)
!1308 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!1309 = !{!1310, !1318, !1320, !1325, !1326}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1307, file: !1308, line: 13, baseType: !1311, size: 320)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1312, line: 17, size: 320, elements: !1313)
!1312 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!1313 = !{!1314, !1315, !1316, !1317}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1311, file: !1312, line: 18, baseType: !114, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1311, file: !1312, line: 19, baseType: !114, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1311, file: !1312, line: 20, baseType: !1299, size: 128, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1311, file: !1312, line: 22, baseType: !429, size: 128, align: 64, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1307, file: !1308, line: 14, baseType: !1319, size: 64, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1307, file: !1308, line: 15, baseType: !1321, size: 64, offset: 384)
!1321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1322, line: 16, size: 64, elements: !1323)
!1322 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!1323 = !{!1324}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1321, file: !1322, line: 17, baseType: !196, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1307, file: !1308, line: 16, baseType: !1299, size: 128, offset: 448)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1307, file: !1308, line: 17, baseType: !162, size: 32, offset: 576)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !652, file: !36, line: 1465, baseType: !101, size: 64, offset: 6400)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !652, file: !36, line: 1468, baseType: !128, size: 32, offset: 6464)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !652, file: !36, line: 1470, baseType: !589, size: 64, offset: 6528)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !652, file: !36, line: 1471, baseType: !589, size: 64, offset: 6592)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !652, file: !36, line: 1473, baseType: !130, size: 32, offset: 6656)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !652, file: !36, line: 1474, baseType: !1333, size: 64, offset: 6720)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !36, line: 603, flags: DIFlagFwdDecl)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !652, file: !36, line: 1477, baseType: !1336, size: 256, offset: 6784)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !1337)
!1337 = !{!1338}
!1338 = !DISubrange(count: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !652, file: !36, line: 1478, baseType: !1340, size: 128, offset: 7040)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !1341, line: 18, baseType: !1342)
!1341 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1341, line: 16, size: 128, elements: !1343)
!1343 = !{!1344}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1342, file: !1341, line: 17, baseType: !1345, size: 128)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !348, size: 128, elements: !1346)
!1346 = !{!1347}
!1347 = !DISubrange(count: 16)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !652, file: !36, line: 1480, baseType: !7, size: 32, offset: 7168)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !652, file: !36, line: 1481, baseType: !1350, size: 32, offset: 7200)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !137, line: 150, baseType: !7)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !652, file: !36, line: 1487, baseType: !1067, size: 192, offset: 7232)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !652, file: !36, line: 1493, baseType: !107, size: 64, offset: 7424)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !652, file: !36, line: 1495, baseType: !1354, size: 64, offset: 7488)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1356)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !444, line: 135, size: 1024, align: 512, elements: !1357)
!1357 = !{!1358, !1362, !1363, !1370, !1376, !1380, !1384, !1388, !1389, !1393, !1397, !1402, !1406}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !1356, file: !444, line: 136, baseType: !1359, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!114, !446, !7}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !1356, file: !444, line: 137, baseType: !1359, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1356, file: !444, line: 138, baseType: !1364, size: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!114, !1367, !1369}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !1356, file: !444, line: 139, baseType: !1371, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!114, !1367, !7, !107, !1374}
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !1356, file: !444, line: 141, baseType: !1377, size: 64, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!114, !1367}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !1356, file: !444, line: 142, baseType: !1381, size: 64, offset: 320)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!114, !446}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !1356, file: !444, line: 143, baseType: !1385, size: 64, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !446}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !1356, file: !444, line: 144, baseType: !1385, size: 64, offset: 448)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !1356, file: !444, line: 145, baseType: !1390, size: 64, offset: 512)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{null, !446, !480}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !1356, file: !444, line: 146, baseType: !1394, size: 64, offset: 576)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!538, !446, !538, !114}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !1356, file: !444, line: 147, baseType: !1398, size: 64, offset: 640)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!442, !1401}
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !1356, file: !444, line: 148, baseType: !1403, size: 64, offset: 704)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!114, !598, !142}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !1356, file: !444, line: 149, baseType: !1407, size: 64, offset: 768)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!446, !446, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !652, file: !36, line: 1500, baseType: !114, size: 32, offset: 7552)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !652, file: !36, line: 1502, baseType: !1414, size: 448, offset: 7616)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1040, line: 60, size: 448, elements: !1415)
!1415 = !{!1416, !1421, !1422, !1423, !1424, !1425, !1426}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !1414, file: !1040, line: 61, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!141, !1420, !1038}
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !1414, file: !1040, line: 63, baseType: !1417, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !1414, file: !1040, line: 66, baseType: !187, size: 64, offset: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !1414, file: !1040, line: 67, baseType: !114, size: 32, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1414, file: !1040, line: 68, baseType: !7, size: 32, offset: 224)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1414, file: !1040, line: 71, baseType: !148, size: 128, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !1414, file: !1040, line: 77, baseType: !1427, size: 64, offset: 384)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !652, file: !36, line: 1505, baseType: !815, size: 64, offset: 8064)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !652, file: !36, line: 1508, baseType: !815, size: 64, offset: 8128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !652, file: !36, line: 1511, baseType: !114, size: 32, offset: 8192)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !652, file: !36, line: 1514, baseType: !951, size: 32, offset: 8224)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !652, file: !36, line: 1517, baseType: !1433, size: 64, offset: 8256)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1435, line: 18, flags: DIFlagFwdDecl)
!1435 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !652, file: !36, line: 1518, baseType: !690, size: 64, offset: 8320)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !652, file: !36, line: 1525, baseType: !1438, size: 64, offset: 8384)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !488, line: 18, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !652, file: !36, line: 1532, baseType: !1441, size: 64, offset: 8448)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !1442, line: 52, size: 64, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!1443 = !{!1444}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1441, file: !1442, line: 53, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !1442, line: 40, size: 256, elements: !1447)
!1447 = !{!1448, !1449, !1454}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1446, file: !1442, line: 42, baseType: !798)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1446, file: !1442, line: 44, baseType: !1450, size: 192)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !1442, line: 28, size: 192, elements: !1451)
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1450, file: !1442, line: 29, baseType: !148, size: 128)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1450, file: !1442, line: 31, baseType: !187, size: 64, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !1446, file: !1442, line: 49, baseType: !187, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !652, file: !36, line: 1533, baseType: !1441, size: 64, offset: 8512)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !652, file: !36, line: 1534, baseType: !429, size: 128, align: 64, offset: 8576)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !652, file: !36, line: 1535, baseType: !1458, size: 256, offset: 8704)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1435, line: 102, size: 256, elements: !1459)
!1459 = !{!1460, !1461, !1462}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1458, file: !1435, line: 103, baseType: !815, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1458, file: !1435, line: 104, baseType: !148, size: 128, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1458, file: !1435, line: 105, baseType: !1463, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1435, line: 21, baseType: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{null, !1467}
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !652, file: !36, line: 1537, baseType: !1067, size: 192, offset: 8960)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !652, file: !36, line: 1542, baseType: !114, size: 32, offset: 9152)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !652, file: !36, line: 1545, baseType: !798, offset: 9184)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !652, file: !36, line: 1546, baseType: !148, size: 128, offset: 9216)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !652, file: !36, line: 1548, baseType: !798, offset: 9344)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !652, file: !36, line: 1549, baseType: !148, size: 128, offset: 9344)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !481, file: !36, line: 624, baseType: !789, size: 64, offset: 256)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !481, file: !36, line: 631, baseType: !141, size: 64, offset: 320)
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !36, line: 639, baseType: !1477, size: 32, offset: 384)
!1477 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !481, file: !36, line: 639, size: 32, elements: !1478)
!1478 = !{!1479, !1481}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !1477, file: !36, line: 640, baseType: !1480, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !1477, file: !36, line: 641, baseType: !7, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !481, file: !36, line: 643, baseType: !564, size: 32, offset: 416)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !481, file: !36, line: 644, baseType: !582, size: 64, offset: 448)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !481, file: !36, line: 645, baseType: !585, size: 128, offset: 512)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !481, file: !36, line: 646, baseType: !585, size: 128, offset: 640)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !481, file: !36, line: 647, baseType: !585, size: 128, offset: 768)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !481, file: !36, line: 648, baseType: !798, offset: 896)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !481, file: !36, line: 649, baseType: !146, size: 16, offset: 896)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !481, file: !36, line: 650, baseType: !347, size: 8, offset: 912)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !481, file: !36, line: 651, baseType: !347, size: 8, offset: 920)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !481, file: !36, line: 652, baseType: !1218, size: 64, offset: 960)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !481, file: !36, line: 659, baseType: !141, size: 64, offset: 1024)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !481, file: !36, line: 660, baseType: !811, size: 256, offset: 1088)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !481, file: !36, line: 662, baseType: !141, size: 64, offset: 1344)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !481, file: !36, line: 663, baseType: !141, size: 64, offset: 1408)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !481, file: !36, line: 665, baseType: !694, size: 128, offset: 1472)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !481, file: !36, line: 666, baseType: !148, size: 128, offset: 1600)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !481, file: !36, line: 675, baseType: !148, size: 128, offset: 1728)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !481, file: !36, line: 676, baseType: !148, size: 128, offset: 1856)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !481, file: !36, line: 677, baseType: !148, size: 128, offset: 1984)
!1501 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !36, line: 678, baseType: !1502, size: 128, offset: 2112)
!1502 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !481, file: !36, line: 678, size: 128, elements: !1503)
!1503 = !{!1504, !1505}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !1502, file: !36, line: 679, baseType: !690, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !1502, file: !36, line: 680, baseType: !429, size: 128, align: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !481, file: !36, line: 682, baseType: !817, size: 64, offset: 2240)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !481, file: !36, line: 683, baseType: !817, size: 64, offset: 2304)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !481, file: !36, line: 684, baseType: !162, size: 32, offset: 2368)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !481, file: !36, line: 685, baseType: !162, size: 32, offset: 2400)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !481, file: !36, line: 686, baseType: !162, size: 32, offset: 2432)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !481, file: !36, line: 688, baseType: !162, size: 32, offset: 2464)
!1512 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !36, line: 690, baseType: !1513, size: 64, offset: 2496)
!1513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !481, file: !36, line: 690, size: 64, elements: !1514)
!1514 = !{!1515, !1743}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !1513, file: !36, line: 691, baseType: !1516, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !36, line: 1822, size: 2048, elements: !1519)
!1519 = !{!1520, !1521, !1525, !1530, !1534, !1535, !1536, !1540, !1553, !1554, !1562, !1566, !1567, !1571, !1572, !1576, !1581, !1582, !1586, !1590, !1698, !1702, !1706, !1710, !1711, !1717, !1721, !1726, !1730, !1734, !1738, !1742}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1518, file: !36, line: 1823, baseType: !685, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1518, file: !36, line: 1824, baseType: !1522, size: 64, offset: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!582, !416, !582, !114}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1518, file: !36, line: 1825, baseType: !1526, size: 64, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!627, !416, !538, !136, !1529}
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1518, file: !36, line: 1826, baseType: !1531, size: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!627, !416, !107, !136, !1529}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1518, file: !36, line: 1827, baseType: !886, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1518, file: !36, line: 1828, baseType: !886, size: 64, offset: 320)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1518, file: !36, line: 1829, baseType: !1537, size: 64, offset: 384)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!114, !889, !142}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1518, file: !36, line: 1830, baseType: !1541, size: 64, offset: 448)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!114, !416, !1544}
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !36, line: 1776, size: 128, elements: !1546)
!1546 = !{!1547, !1552}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1545, file: !36, line: 1777, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !36, line: 1773, baseType: !1549)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!114, !1544, !107, !114, !582, !235, !7}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1545, file: !36, line: 1778, baseType: !582, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1518, file: !36, line: 1831, baseType: !1541, size: 64, offset: 512)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1518, file: !36, line: 1832, baseType: !1555, size: 64, offset: 576)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DISubroutineType(types: !1557)
!1557 = !{!1558, !416, !1560}
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1559, line: 52, baseType: !7)
!1559 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !671, line: 27, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1518, file: !36, line: 1833, baseType: !1563, size: 64, offset: 640)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!187, !416, !7, !141}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1518, file: !36, line: 1834, baseType: !1563, size: 64, offset: 704)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1518, file: !36, line: 1835, baseType: !1568, size: 64, offset: 768)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!114, !416, !382}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1518, file: !36, line: 1836, baseType: !141, size: 64, offset: 832)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1518, file: !36, line: 1837, baseType: !1573, size: 64, offset: 896)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!114, !480, !416}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1518, file: !36, line: 1838, baseType: !1577, size: 64, offset: 960)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!114, !416, !1580}
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !36, line: 1007, baseType: !101)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1518, file: !36, line: 1839, baseType: !1573, size: 64, offset: 1024)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1518, file: !36, line: 1840, baseType: !1583, size: 64, offset: 1088)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!114, !416, !582, !582, !114}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1518, file: !36, line: 1841, baseType: !1587, size: 64, offset: 1152)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!114, !114, !416, !114}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1518, file: !36, line: 1842, baseType: !1591, size: 64, offset: 1216)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!114, !416, !114, !1594}
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !36, line: 1062, size: 1664, elements: !1596)
!1596 = !{!1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1628, !1629, !1630, !1643, !1674}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1595, file: !36, line: 1063, baseType: !1594, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1595, file: !36, line: 1064, baseType: !148, size: 128, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1595, file: !36, line: 1065, baseType: !694, size: 128, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1595, file: !36, line: 1066, baseType: !148, size: 128, offset: 320)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1595, file: !36, line: 1069, baseType: !148, size: 128, offset: 448)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1595, file: !36, line: 1072, baseType: !1580, size: 64, offset: 576)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1595, file: !36, line: 1073, baseType: !7, size: 32, offset: 640)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1595, file: !36, line: 1074, baseType: !349, size: 8, offset: 672)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1595, file: !36, line: 1075, baseType: !7, size: 32, offset: 704)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1595, file: !36, line: 1076, baseType: !114, size: 32, offset: 736)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1595, file: !36, line: 1077, baseType: !1299, size: 128, offset: 768)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1595, file: !36, line: 1078, baseType: !416, size: 64, offset: 896)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1595, file: !36, line: 1079, baseType: !582, size: 64, offset: 960)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1595, file: !36, line: 1080, baseType: !582, size: 64, offset: 1024)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1595, file: !36, line: 1082, baseType: !1612, size: 64, offset: 1088)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !36, line: 1314, size: 320, elements: !1614)
!1614 = !{!1615, !1623, !1624, !1625, !1626, !1627}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1613, file: !36, line: 1315, baseType: !1616)
!1616 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1617, line: 20, baseType: !1618)
!1617 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1617, line: 11, elements: !1619)
!1619 = !{!1620}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1618, file: !1617, line: 12, baseType: !1621)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !182, line: 33, baseType: !1622)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !182, line: 31, elements: !184)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1613, file: !36, line: 1316, baseType: !114, size: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1613, file: !36, line: 1317, baseType: !114, size: 32, offset: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1613, file: !36, line: 1318, baseType: !1612, size: 64, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1613, file: !36, line: 1319, baseType: !416, size: 64, offset: 128)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1613, file: !36, line: 1320, baseType: !429, size: 128, align: 64, offset: 192)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1595, file: !36, line: 1084, baseType: !141, size: 64, offset: 1152)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1595, file: !36, line: 1085, baseType: !141, size: 64, offset: 1216)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1595, file: !36, line: 1087, baseType: !1631, size: 64, offset: 1280)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !36, line: 1011, size: 128, elements: !1634)
!1634 = !{!1635, !1639}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1633, file: !36, line: 1012, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{null, !1594, !1594}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1633, file: !36, line: 1013, baseType: !1640, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !1594}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1595, file: !36, line: 1088, baseType: !1644, size: 64, offset: 1344)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !36, line: 1016, size: 512, elements: !1647)
!1647 = !{!1648, !1652, !1656, !1657, !1661, !1665, !1669, !1673}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1646, file: !36, line: 1017, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!1580, !1580}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1646, file: !36, line: 1018, baseType: !1653, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{null, !1580}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1646, file: !36, line: 1019, baseType: !1640, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1646, file: !36, line: 1020, baseType: !1658, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!114, !1594, !114}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1646, file: !36, line: 1021, baseType: !1662, size: 64, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!142, !1594}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1646, file: !36, line: 1022, baseType: !1666, size: 64, offset: 320)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!114, !1594, !114, !151}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1646, file: !36, line: 1023, baseType: !1670, size: 64, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{null, !1594, !863}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1646, file: !36, line: 1024, baseType: !1662, size: 64, offset: 448)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1595, file: !36, line: 1097, baseType: !1675, size: 256, offset: 1408)
!1675 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1595, file: !36, line: 1089, size: 256, elements: !1676)
!1676 = !{!1677, !1686, !1692}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1675, file: !36, line: 1090, baseType: !1678, size: 256)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1679, line: 10, size: 256, elements: !1680)
!1679 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1680 = !{!1681, !1682, !1685}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1678, file: !1679, line: 11, baseType: !128, size: 32)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1678, file: !1679, line: 12, baseType: !1683, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1679, line: 5, flags: DIFlagFwdDecl)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1678, file: !1679, line: 13, baseType: !148, size: 128, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1675, file: !36, line: 1091, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1679, line: 17, size: 64, elements: !1688)
!1688 = !{!1689}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1687, file: !1679, line: 18, baseType: !1690, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1679, line: 16, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1675, file: !36, line: 1096, baseType: !1693, size: 192)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1675, file: !36, line: 1092, size: 192, elements: !1694)
!1694 = !{!1695, !1696, !1697}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1693, file: !36, line: 1093, baseType: !148, size: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1693, file: !36, line: 1094, baseType: !114, size: 32, offset: 128)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1693, file: !36, line: 1095, baseType: !7, size: 32, offset: 160)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1518, file: !36, line: 1843, baseType: !1699, size: 64, offset: 1280)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!627, !416, !777, !114, !136, !1529, !114}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1518, file: !36, line: 1844, baseType: !1703, size: 64, offset: 1344)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!141, !416, !141, !141, !141, !141}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1518, file: !36, line: 1845, baseType: !1707, size: 64, offset: 1408)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!114, !114}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1518, file: !36, line: 1846, baseType: !1591, size: 64, offset: 1472)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1518, file: !36, line: 1847, baseType: !1712, size: 64, offset: 1536)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!627, !1715, !416, !1529, !136, !7}
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !198, line: 53, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1518, file: !36, line: 1848, baseType: !1718, size: 64, offset: 1600)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!627, !416, !1529, !1715, !136, !7}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1518, file: !36, line: 1849, baseType: !1722, size: 64, offset: 1664)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{!114, !416, !187, !1725, !863}
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1518, file: !36, line: 1850, baseType: !1727, size: 64, offset: 1728)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!187, !416, !114, !582, !582}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1518, file: !36, line: 1852, baseType: !1731, size: 64, offset: 1792)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !768, !416}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1518, file: !36, line: 1856, baseType: !1735, size: 64, offset: 1856)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{!627, !416, !582, !416, !582, !136, !7}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1518, file: !36, line: 1858, baseType: !1739, size: 64, offset: 1920)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!582, !416, !582, !416, !582, !582, !7}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1518, file: !36, line: 1861, baseType: !1583, size: 64, offset: 1984)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1513, file: !36, line: 692, baseType: !721, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !481, file: !36, line: 694, baseType: !1745, size: 64, offset: 2560)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !36, line: 1100, size: 384, elements: !1747)
!1747 = !{!1748, !1749, !1750, !1751}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !1746, file: !36, line: 1101, baseType: !798)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !1746, file: !36, line: 1102, baseType: !148, size: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !1746, file: !36, line: 1103, baseType: !148, size: 128, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !1746, file: !36, line: 1104, baseType: !148, size: 128, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !481, file: !36, line: 695, baseType: !790, size: 1216, align: 64, offset: 2624)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !481, file: !36, line: 696, baseType: !148, size: 128, offset: 3840)
!1754 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !36, line: 697, baseType: !1755, size: 64, offset: 3968)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !481, file: !36, line: 697, size: 64, elements: !1756)
!1756 = !{!1757, !1758, !1759, !1762, !1763}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !1755, file: !36, line: 698, baseType: !1715, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !1755, file: !36, line: 699, baseType: !1243, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !1755, file: !36, line: 700, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !36, line: 700, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !1755, file: !36, line: 701, baseType: !538, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !1755, file: !36, line: 702, baseType: !7, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !481, file: !36, line: 705, baseType: !130, size: 32, offset: 4032)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !481, file: !36, line: 708, baseType: !130, size: 32, offset: 4064)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !481, file: !36, line: 709, baseType: !1333, size: 64, offset: 4096)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !481, file: !36, line: 720, baseType: !101, size: 64, offset: 4160)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !447, file: !444, line: 98, baseType: !1769, size: 256, offset: 448)
!1769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 256, elements: !1337)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !447, file: !444, line: 101, baseType: !1771, size: 32, offset: 704)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !1772, line: 25, size: 32, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!1773 = !{!1774}
!1774 = !DIDerivedType(tag: DW_TAG_member, scope: !1771, file: !1772, line: 26, baseType: !1775, size: 32)
!1775 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1771, file: !1772, line: 26, size: 32, elements: !1776)
!1776 = !{!1777}
!1777 = !DIDerivedType(tag: DW_TAG_member, scope: !1775, file: !1772, line: 30, baseType: !1778, size: 32)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1775, file: !1772, line: 30, size: 32, elements: !1779)
!1779 = !{!1780, !1781}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1778, file: !1772, line: 31, baseType: !798)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1778, file: !1772, line: 32, baseType: !114, size: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !447, file: !444, line: 102, baseType: !1354, size: 64, offset: 768)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !447, file: !444, line: 103, baseType: !651, size: 64, offset: 832)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !447, file: !444, line: 104, baseType: !141, size: 64, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !447, file: !444, line: 105, baseType: !101, size: 64, offset: 960)
!1786 = !DIDerivedType(tag: DW_TAG_member, scope: !447, file: !444, line: 107, baseType: !1787, size: 128, offset: 1024)
!1787 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !444, line: 107, size: 128, elements: !1788)
!1788 = !{!1789, !1790}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !1787, file: !444, line: 108, baseType: !148, size: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !1787, file: !444, line: 109, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !447, file: !444, line: 111, baseType: !148, size: 128, offset: 1152)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !447, file: !444, line: 112, baseType: !148, size: 128, offset: 1280)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !447, file: !444, line: 120, baseType: !1795, size: 128, offset: 1408)
!1795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !447, file: !444, line: 116, size: 128, elements: !1796)
!1796 = !{!1797, !1798, !1799}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !1795, file: !444, line: 117, baseType: !694, size: 128)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !1795, file: !444, line: 118, baseType: !456, size: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !1795, file: !444, line: 119, baseType: !429, size: 128, align: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !417, file: !36, line: 922, baseType: !480, size: 64, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !417, file: !36, line: 923, baseType: !1516, size: 64, offset: 320)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !417, file: !36, line: 929, baseType: !798, offset: 384)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !417, file: !36, line: 930, baseType: !35, size: 32, offset: 384)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !417, file: !36, line: 931, baseType: !815, size: 64, offset: 448)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !417, file: !36, line: 932, baseType: !7, size: 32, offset: 512)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !417, file: !36, line: 933, baseType: !1350, size: 32, offset: 544)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !417, file: !36, line: 934, baseType: !1067, size: 192, offset: 576)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !417, file: !36, line: 935, baseType: !582, size: 64, offset: 768)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !417, file: !36, line: 936, baseType: !1810, size: 192, offset: 832)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !36, line: 885, size: 192, elements: !1811)
!1811 = !{!1812, !1813, !1835, !1836, !1837, !1838}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1810, file: !36, line: 886, baseType: !1616)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1810, file: !36, line: 887, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !45, line: 59, size: 768, elements: !1816)
!1816 = !{!1817, !1818, !1819, !1820, !1824, !1825, !1826, !1827}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1815, file: !45, line: 61, baseType: !158, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1815, file: !45, line: 62, baseType: !7, size: 32, offset: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1815, file: !45, line: 63, baseType: !798, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1815, file: !45, line: 65, baseType: !1821, size: 256, offset: 64)
!1821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 256, elements: !1822)
!1822 = !{!1823}
!1823 = !DISubrange(count: 4)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1815, file: !45, line: 66, baseType: !690, size: 64, offset: 320)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1815, file: !45, line: 68, baseType: !1299, size: 128, offset: 384)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1815, file: !45, line: 69, baseType: !429, size: 128, align: 64, offset: 512)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1815, file: !45, line: 70, baseType: !1828, size: 128, offset: 640)
!1828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1829, size: 128, elements: !367)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !45, line: 54, size: 128, elements: !1830)
!1830 = !{!1831, !1832}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1829, file: !45, line: 55, baseType: !114, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1829, file: !45, line: 56, baseType: !1833, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !45, line: 56, flags: DIFlagFwdDecl)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1810, file: !36, line: 888, baseType: !44, size: 32, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1810, file: !36, line: 889, baseType: !487, size: 32, offset: 96)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1810, file: !36, line: 889, baseType: !487, size: 32, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1810, file: !36, line: 890, baseType: !114, size: 32, offset: 160)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !417, file: !36, line: 937, baseType: !1840, size: 64, offset: 1024)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1842)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1843, line: 111, size: 1280, elements: !1844)
!1843 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1844 = !{!1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1864, !1865, !1866, !1867, !1868, !1869, !1979, !1980, !1981, !1982, !2008, !2009, !2019}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1842, file: !1843, line: 112, baseType: !162, size: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1842, file: !1843, line: 120, baseType: !487, size: 32, offset: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1842, file: !1843, line: 121, baseType: !495, size: 32, offset: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1842, file: !1843, line: 122, baseType: !487, size: 32, offset: 96)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1842, file: !1843, line: 123, baseType: !495, size: 32, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1842, file: !1843, line: 124, baseType: !487, size: 32, offset: 160)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1842, file: !1843, line: 125, baseType: !495, size: 32, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1842, file: !1843, line: 126, baseType: !487, size: 32, offset: 224)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1842, file: !1843, line: 127, baseType: !495, size: 32, offset: 256)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1842, file: !1843, line: 128, baseType: !7, size: 32, offset: 288)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1842, file: !1843, line: 129, baseType: !1856, size: 64, offset: 320)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1857, line: 26, baseType: !1858)
!1857 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1857, line: 24, size: 64, elements: !1859)
!1859 = !{!1860}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1858, file: !1857, line: 25, baseType: !1861, size: 64)
!1861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 64, elements: !1862)
!1862 = !{!1863}
!1863 = !DISubrange(count: 2)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1842, file: !1843, line: 130, baseType: !1856, size: 64, offset: 384)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1842, file: !1843, line: 131, baseType: !1856, size: 64, offset: 448)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1842, file: !1843, line: 132, baseType: !1856, size: 64, offset: 512)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1842, file: !1843, line: 133, baseType: !1856, size: 64, offset: 576)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1842, file: !1843, line: 135, baseType: !349, size: 8, offset: 640)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1842, file: !1843, line: 137, baseType: !1870, size: 64, offset: 704)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1872, line: 189, size: 1664, elements: !1873)
!1872 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1873 = !{!1874, !1875, !1880, !1885, !1886, !1889, !1890, !1895, !1896, !1897, !1898, !1900, !1901, !1902, !1904, !1905, !1943, !1964}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1871, file: !1872, line: 190, baseType: !158, size: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1871, file: !1872, line: 191, baseType: !1876, size: 32, offset: 32)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1872, line: 28, baseType: !1877)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !137, line: 98, baseType: !1878)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !129, line: 20, baseType: !1879)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !131, line: 26, baseType: !114)
!1880 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !1872, line: 192, baseType: !1881, size: 192, offset: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !1872, line: 192, size: 192, elements: !1882)
!1882 = !{!1883, !1884}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1881, file: !1872, line: 193, baseType: !148, size: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1881, file: !1872, line: 194, baseType: !225, size: 192, align: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1871, file: !1872, line: 199, baseType: !811, size: 256, offset: 256)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1871, file: !1872, line: 200, baseType: !1887, size: 64, offset: 512)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1872, line: 200, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1871, file: !1872, line: 201, baseType: !101, size: 64, offset: 576)
!1890 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !1872, line: 202, baseType: !1891, size: 64, offset: 640)
!1891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !1872, line: 202, size: 64, elements: !1892)
!1892 = !{!1893, !1894}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1891, file: !1872, line: 203, baseType: !589, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1891, file: !1872, line: 204, baseType: !589, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1871, file: !1872, line: 206, baseType: !589, size: 64, offset: 704)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1871, file: !1872, line: 207, baseType: !487, size: 32, offset: 768)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1871, file: !1872, line: 208, baseType: !495, size: 32, offset: 800)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1871, file: !1872, line: 209, baseType: !1899, size: 32, offset: 832)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1872, line: 31, baseType: !608)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1871, file: !1872, line: 210, baseType: !146, size: 16, offset: 864)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1871, file: !1872, line: 211, baseType: !146, size: 16, offset: 880)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1871, file: !1872, line: 215, baseType: !1903, size: 16, offset: 896)
!1903 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1871, file: !1872, line: 222, baseType: !141, size: 64, offset: 960)
!1905 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !1872, line: 239, baseType: !1906, size: 320, offset: 1024)
!1906 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !1872, line: 239, size: 320, elements: !1907)
!1907 = !{!1908, !1935}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1906, file: !1872, line: 240, baseType: !1909, size: 320)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1872, line: 108, size: 320, elements: !1910)
!1910 = !{!1911, !1912, !1924, !1927, !1934}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1909, file: !1872, line: 110, baseType: !141, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, scope: !1909, file: !1872, line: 111, baseType: !1913, size: 64, offset: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1909, file: !1872, line: 111, size: 64, elements: !1914)
!1914 = !{!1915, !1923}
!1915 = !DIDerivedType(tag: DW_TAG_member, scope: !1913, file: !1872, line: 112, baseType: !1916, size: 64)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1913, file: !1872, line: 112, size: 64, elements: !1917)
!1917 = !{!1918, !1919}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1916, file: !1872, line: 114, baseType: !901, size: 16)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1916, file: !1872, line: 115, baseType: !1920, size: 48, offset: 16)
!1920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 48, elements: !1921)
!1921 = !{!1922}
!1922 = !DISubrange(count: 6)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1913, file: !1872, line: 121, baseType: !141, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1909, file: !1872, line: 123, baseType: !1925, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1872, line: 96, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1909, file: !1872, line: 124, baseType: !1928, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1872, line: 102, size: 192, elements: !1930)
!1930 = !{!1931, !1932, !1933}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1929, file: !1872, line: 103, baseType: !429, size: 128, align: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1929, file: !1872, line: 104, baseType: !158, size: 32, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1929, file: !1872, line: 105, baseType: !142, size: 8, offset: 160)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1909, file: !1872, line: 125, baseType: !107, size: 64, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_member, scope: !1906, file: !1872, line: 241, baseType: !1936, size: 320)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1906, file: !1872, line: 241, size: 320, elements: !1937)
!1937 = !{!1938, !1939, !1940, !1941, !1942}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1936, file: !1872, line: 242, baseType: !141, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1936, file: !1872, line: 243, baseType: !141, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1936, file: !1872, line: 244, baseType: !1925, size: 64, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1936, file: !1872, line: 245, baseType: !1928, size: 64, offset: 192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1936, file: !1872, line: 246, baseType: !538, size: 64, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_member, scope: !1871, file: !1872, line: 254, baseType: !1944, size: 256, offset: 1344)
!1944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1871, file: !1872, line: 254, size: 256, elements: !1945)
!1945 = !{!1946, !1952}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1944, file: !1872, line: 255, baseType: !1947, size: 256)
!1947 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1872, line: 128, size: 256, elements: !1948)
!1948 = !{!1949, !1950}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1947, file: !1872, line: 129, baseType: !101, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1947, file: !1872, line: 130, baseType: !1951, size: 256)
!1951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 256, elements: !1822)
!1952 = !DIDerivedType(tag: DW_TAG_member, scope: !1944, file: !1872, line: 256, baseType: !1953, size: 256)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1944, file: !1872, line: 256, size: 256, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1953, file: !1872, line: 258, baseType: !148, size: 128)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1953, file: !1872, line: 259, baseType: !1957, size: 128, offset: 128)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1958, line: 22, size: 128, elements: !1959)
!1958 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1959 = !{!1960, !1963}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1957, file: !1958, line: 23, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1958, line: 23, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1957, file: !1958, line: 24, baseType: !141, size: 64, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1871, file: !1872, line: 274, baseType: !1965, size: 64, offset: 1600)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1872, line: 170, size: 192, elements: !1967)
!1967 = !{!1968, !1977, !1978}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1966, file: !1872, line: 171, baseType: !1969, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1872, line: 165, baseType: !1970)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!114, !1870, !1973, !1975, !1870}
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1926)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1947)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1966, file: !1872, line: 172, baseType: !1870, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1966, file: !1872, line: 173, baseType: !1925, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1842, file: !1843, line: 138, baseType: !1870, size: 64, offset: 768)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1842, file: !1843, line: 139, baseType: !1870, size: 64, offset: 832)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1842, file: !1843, line: 140, baseType: !1870, size: 64, offset: 896)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1842, file: !1843, line: 145, baseType: !1983, size: 64, offset: 960)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1985, line: 13, size: 896, elements: !1986)
!1985 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1984, file: !1985, line: 14, baseType: !158, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1984, file: !1985, line: 15, baseType: !162, size: 32, offset: 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1984, file: !1985, line: 16, baseType: !162, size: 32, offset: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1984, file: !1985, line: 21, baseType: !815, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1984, file: !1985, line: 27, baseType: !141, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1984, file: !1985, line: 28, baseType: !141, size: 64, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1984, file: !1985, line: 29, baseType: !815, size: 64, offset: 320)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1984, file: !1985, line: 32, baseType: !694, size: 128, offset: 384)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1984, file: !1985, line: 33, baseType: !487, size: 32, offset: 512)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1984, file: !1985, line: 37, baseType: !815, size: 64, offset: 576)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1984, file: !1985, line: 44, baseType: !1998, size: 256, offset: 640)
!1998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1999, line: 15, size: 256, elements: !2000)
!1999 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!2000 = !{!2001, !2002, !2003, !2004, !2005, !2006, !2007}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1998, file: !1999, line: 16, baseType: !176)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1998, file: !1999, line: 18, baseType: !114, size: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1998, file: !1999, line: 19, baseType: !114, size: 32, offset: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1998, file: !1999, line: 20, baseType: !114, size: 32, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1998, file: !1999, line: 21, baseType: !114, size: 32, offset: 96)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1998, file: !1999, line: 22, baseType: !141, size: 64, offset: 128)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1998, file: !1999, line: 23, baseType: !141, size: 64, offset: 192)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1842, file: !1843, line: 146, baseType: !1438, size: 64, offset: 1024)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1842, file: !1843, line: 147, baseType: !2010, size: 64, offset: 1088)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1843, line: 25, size: 64, elements: !2012)
!2012 = !{!2013, !2014, !2015}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2011, file: !1843, line: 26, baseType: !162, size: 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2011, file: !1843, line: 27, baseType: !114, size: 32, offset: 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2011, file: !1843, line: 28, baseType: !2016, offset: 64)
!2016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !495, elements: !2017)
!2017 = !{!2018}
!2018 = !DISubrange(count: 0)
!2019 = !DIDerivedType(tag: DW_TAG_member, scope: !1842, file: !1843, line: 149, baseType: !2020, size: 128, offset: 1152)
!2020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1842, file: !1843, line: 149, size: 128, elements: !2021)
!2021 = !{!2022, !2023}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2020, file: !1843, line: 150, baseType: !114, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2020, file: !1843, line: 151, baseType: !429, size: 128, align: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !417, file: !36, line: 938, baseType: !2025, size: 256, offset: 1088)
!2025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !36, line: 896, size: 256, elements: !2026)
!2026 = !{!2027, !2028, !2029, !2030, !2031, !2032}
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2025, file: !36, line: 897, baseType: !141, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2025, file: !36, line: 898, baseType: !7, size: 32, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2025, file: !36, line: 899, baseType: !7, size: 32, offset: 96)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2025, file: !36, line: 902, baseType: !7, size: 32, offset: 128)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2025, file: !36, line: 903, baseType: !7, size: 32, offset: 160)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2025, file: !36, line: 904, baseType: !582, size: 64, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !417, file: !36, line: 940, baseType: !235, size: 64, offset: 1344)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !417, file: !36, line: 945, baseType: !101, size: 64, offset: 1408)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !417, file: !36, line: 949, baseType: !148, size: 128, offset: 1472)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !417, file: !36, line: 950, baseType: !148, size: 128, offset: 1600)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !417, file: !36, line: 952, baseType: !789, size: 64, offset: 1728)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !417, file: !36, line: 953, baseType: !951, size: 32, offset: 1792)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !417, file: !36, line: 954, baseType: !951, size: 32, offset: 1824)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !383, file: !376, line: 362, baseType: !101, size: 64, offset: 1344)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !383, file: !376, line: 365, baseType: !815, size: 64, offset: 1408)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !383, file: !376, line: 373, baseType: !2043, offset: 1472)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !376, line: 296, elements: !184)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !379, file: !376, line: 391, baseType: !337, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !379, file: !376, line: 392, baseType: !235, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !379, file: !376, line: 394, baseType: !1703, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !379, file: !376, line: 398, baseType: !141, size: 64, offset: 256)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !379, file: !376, line: 399, baseType: !141, size: 64, offset: 320)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !379, file: !376, line: 405, baseType: !141, size: 64, offset: 384)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !379, file: !376, line: 406, baseType: !141, size: 64, offset: 448)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !379, file: !376, line: 407, baseType: !2052, size: 64, offset: 512)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !394, line: 286, baseType: !2054)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !394, line: 286, size: 64, elements: !2055)
!2055 = !{!2056}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2054, file: !394, line: 286, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !399, line: 18, baseType: !141)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !379, file: !376, line: 416, baseType: !162, size: 32, offset: 576)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !379, file: !376, line: 428, baseType: !162, size: 32, offset: 608)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !379, file: !376, line: 437, baseType: !162, size: 32, offset: 640)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !379, file: !376, line: 447, baseType: !162, size: 32, offset: 672)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !379, file: !376, line: 450, baseType: !815, size: 64, offset: 704)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !379, file: !376, line: 452, baseType: !114, size: 32, offset: 768)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !379, file: !376, line: 454, baseType: !798, offset: 800)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !379, file: !376, line: 457, baseType: !811, size: 256, offset: 832)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !379, file: !376, line: 459, baseType: !148, size: 128, offset: 1088)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !379, file: !376, line: 466, baseType: !141, size: 64, offset: 1216)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !379, file: !376, line: 467, baseType: !141, size: 64, offset: 1280)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !379, file: !376, line: 469, baseType: !141, size: 64, offset: 1344)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !379, file: !376, line: 470, baseType: !141, size: 64, offset: 1408)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !379, file: !376, line: 471, baseType: !817, size: 64, offset: 1472)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !379, file: !376, line: 472, baseType: !141, size: 64, offset: 1536)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !379, file: !376, line: 473, baseType: !141, size: 64, offset: 1600)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !379, file: !376, line: 474, baseType: !141, size: 64, offset: 1664)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !379, file: !376, line: 475, baseType: !141, size: 64, offset: 1728)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !379, file: !376, line: 477, baseType: !798, offset: 1792)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !379, file: !376, line: 478, baseType: !141, size: 64, offset: 1792)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !379, file: !376, line: 478, baseType: !141, size: 64, offset: 1856)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !379, file: !376, line: 478, baseType: !141, size: 64, offset: 1920)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !379, file: !376, line: 478, baseType: !141, size: 64, offset: 1984)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !379, file: !376, line: 479, baseType: !141, size: 64, offset: 2048)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !379, file: !376, line: 479, baseType: !141, size: 64, offset: 2112)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !379, file: !376, line: 479, baseType: !141, size: 64, offset: 2176)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !379, file: !376, line: 480, baseType: !141, size: 64, offset: 2240)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !379, file: !376, line: 480, baseType: !141, size: 64, offset: 2304)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !379, file: !376, line: 480, baseType: !141, size: 64, offset: 2368)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !379, file: !376, line: 480, baseType: !141, size: 64, offset: 2432)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !379, file: !376, line: 482, baseType: !2089, size: 2816, offset: 2496)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 2816, elements: !2090)
!2090 = !{!2091}
!2091 = !DISubrange(count: 44)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !379, file: !376, line: 488, baseType: !2093, size: 256, offset: 5312)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !2094, line: 60, size: 256, elements: !2095)
!2094 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!2095 = !{!2096}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2093, file: !2094, line: 61, baseType: !2097, size: 256)
!2097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !815, size: 256, elements: !1822)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !379, file: !376, line: 490, baseType: !2099, size: 64, offset: 5568)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !376, line: 490, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !379, file: !376, line: 493, baseType: !2102, size: 896, offset: 5632)
!2102 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2103, line: 53, baseType: !2104)
!2103 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2103, line: 13, size: 896, elements: !2105)
!2105 = !{!2106, !2107, !2108, !2109, !2112, !2113, !2114, !2115, !2135, !2136, !2137}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2104, file: !2103, line: 18, baseType: !235, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2104, file: !2103, line: 28, baseType: !817, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2104, file: !2103, line: 31, baseType: !811, size: 256, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2104, file: !2103, line: 32, baseType: !2110, size: 64, offset: 384)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2103, line: 32, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !2104, file: !2103, line: 37, baseType: !146, size: 16, offset: 448)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2104, file: !2103, line: 40, baseType: !1067, size: 192, offset: 512)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2104, file: !2103, line: 41, baseType: !101, size: 64, offset: 704)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2104, file: !2103, line: 42, baseType: !2116, size: 64, offset: 768)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2118)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2119, line: 13, size: 896, elements: !2120)
!2119 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!2120 = !{!2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2118, file: !2119, line: 14, baseType: !101, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2118, file: !2119, line: 15, baseType: !141, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2118, file: !2119, line: 17, baseType: !141, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2118, file: !2119, line: 17, baseType: !141, size: 64, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2118, file: !2119, line: 19, baseType: !187, size: 64, offset: 256)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2118, file: !2119, line: 21, baseType: !187, size: 64, offset: 320)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2118, file: !2119, line: 22, baseType: !187, size: 64, offset: 384)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2118, file: !2119, line: 23, baseType: !187, size: 64, offset: 448)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2118, file: !2119, line: 24, baseType: !187, size: 64, offset: 512)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2118, file: !2119, line: 25, baseType: !187, size: 64, offset: 576)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2118, file: !2119, line: 26, baseType: !187, size: 64, offset: 640)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2118, file: !2119, line: 27, baseType: !187, size: 64, offset: 704)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2118, file: !2119, line: 28, baseType: !187, size: 64, offset: 768)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2118, file: !2119, line: 29, baseType: !187, size: 64, offset: 832)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2104, file: !2103, line: 44, baseType: !162, size: 32, offset: 832)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2104, file: !2103, line: 50, baseType: !901, size: 16, offset: 864)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2104, file: !2103, line: 51, baseType: !2138, size: 16, offset: 880)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !129, line: 18, baseType: !2139)
!2139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !131, line: 23, baseType: !1903)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !379, file: !376, line: 495, baseType: !141, size: 64, offset: 6528)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !379, file: !376, line: 497, baseType: !2142, size: 64, offset: 6592)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !376, line: 381, size: 384, elements: !2144)
!2144 = !{!2145, !2146, !2152}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2143, file: !376, line: 382, baseType: !162, size: 32)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2143, file: !376, line: 383, baseType: !2147, size: 128, offset: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !376, line: 376, size: 128, elements: !2148)
!2148 = !{!2149, !2150}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2147, file: !376, line: 377, baseType: !196, size: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2147, file: !376, line: 378, baseType: !2151, size: 64, offset: 64)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2143, file: !376, line: 384, baseType: !167, size: 192, offset: 192)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !379, file: !376, line: 500, baseType: !798, offset: 6656)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !379, file: !376, line: 501, baseType: !2155, size: 64, offset: 6656)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !376, line: 387, flags: DIFlagFwdDecl)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !379, file: !376, line: 516, baseType: !1438, size: 64, offset: 6720)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !379, file: !376, line: 519, baseType: !416, size: 64, offset: 6784)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !379, file: !376, line: 521, baseType: !2160, size: 64, offset: 6848)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !376, line: 521, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !379, file: !376, line: 545, baseType: !162, size: 32, offset: 6912)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !379, file: !376, line: 548, baseType: !142, size: 8, offset: 6944)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !379, file: !376, line: 550, baseType: !2165, offset: 6952)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2166, line: 142, elements: !184)
!2166 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !379, file: !376, line: 554, baseType: !1458, size: 256, offset: 6976)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !379, file: !376, line: 557, baseType: !128, size: 32, offset: 7232)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !375, file: !376, line: 565, baseType: !2170, offset: 7296)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, elements: !2171)
!2171 = !{!2172}
!2172 = !DISubrange(count: -1)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !197, file: !198, line: 758, baseType: !374, size: 64, offset: 3968)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !197, file: !198, line: 761, baseType: !2175, size: 320, offset: 4032)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !2094, line: 34, size: 320, elements: !2176)
!2176 = !{!2177, !2178}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !2175, file: !2094, line: 35, baseType: !235, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !2175, file: !2094, line: 36, baseType: !2179, size: 256, offset: 64)
!2179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 256, elements: !1822)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !197, file: !198, line: 766, baseType: !114, size: 32, offset: 4352)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !197, file: !198, line: 767, baseType: !114, size: 32, offset: 4384)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !197, file: !198, line: 768, baseType: !114, size: 32, offset: 4416)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !197, file: !198, line: 770, baseType: !114, size: 32, offset: 4448)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !197, file: !198, line: 772, baseType: !141, size: 64, offset: 4480)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !197, file: !198, line: 775, baseType: !7, size: 32, offset: 4544)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !197, file: !198, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !197, file: !198, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !197, file: !198, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !197, file: !198, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !197, file: !198, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !197, file: !198, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !197, file: !198, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !197, file: !198, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !197, file: !198, line: 831, baseType: !141, size: 64, offset: 4672)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !197, file: !198, line: 833, baseType: !2196, size: 384, offset: 4736)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !24, line: 25, size: 384, elements: !2197)
!2197 = !{!2198, !2203}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2196, file: !24, line: 26, baseType: !2199, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!187, !2202}
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, scope: !2196, file: !24, line: 27, baseType: !2204, size: 320, offset: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2196, file: !24, line: 27, size: 320, elements: !2205)
!2205 = !{!2206, !2215, !2240}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2204, file: !24, line: 36, baseType: !2207, size: 320)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2204, file: !24, line: 29, size: 320, elements: !2208)
!2208 = !{!2209, !2210, !2211, !2212, !2213, !2214}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2207, file: !24, line: 30, baseType: !127, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2207, file: !24, line: 31, baseType: !128, size: 32, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2207, file: !24, line: 32, baseType: !128, size: 32, offset: 96)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2207, file: !24, line: 33, baseType: !128, size: 32, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2207, file: !24, line: 34, baseType: !235, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2207, file: !24, line: 35, baseType: !127, size: 64, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2204, file: !24, line: 46, baseType: !2216, size: 192)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2204, file: !24, line: 38, size: 192, elements: !2217)
!2217 = !{!2218, !2219, !2220, !2239}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2216, file: !24, line: 39, baseType: !317, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2216, file: !24, line: 40, baseType: !23, size: 32, offset: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, scope: !2216, file: !24, line: 41, baseType: !2221, size: 64, offset: 64)
!2221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2216, file: !24, line: 41, size: 64, elements: !2222)
!2222 = !{!2223, !2231}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2221, file: !24, line: 42, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2226, line: 7, size: 128, elements: !2227)
!2226 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!2227 = !{!2228, !2230}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2225, file: !2226, line: 8, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !139, line: 93, baseType: !267)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2225, file: !2226, line: 9, baseType: !267, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2221, file: !24, line: 43, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2234, line: 7, size: 64, elements: !2235)
!2234 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!2235 = !{!2236, !2238}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2233, file: !2234, line: 8, baseType: !2237, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2234, line: 5, baseType: !1878)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2233, file: !2234, line: 9, baseType: !1878, size: 32, offset: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2216, file: !24, line: 45, baseType: !235, size: 64, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2204, file: !24, line: 54, baseType: !2241, size: 256)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2204, file: !24, line: 48, size: 256, elements: !2242)
!2242 = !{!2243, !2246, !2247, !2248, !2249}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2241, file: !24, line: 49, baseType: !2244, size: 64)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !24, line: 14, flags: DIFlagFwdDecl)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2241, file: !24, line: 50, baseType: !114, size: 32, offset: 64)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2241, file: !24, line: 51, baseType: !114, size: 32, offset: 96)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2241, file: !24, line: 52, baseType: !141, size: 64, offset: 128)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2241, file: !24, line: 53, baseType: !141, size: 64, offset: 192)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !197, file: !198, line: 835, baseType: !2251, size: 32, offset: 5120)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !137, line: 22, baseType: !2252)
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !139, line: 28, baseType: !114)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !197, file: !198, line: 836, baseType: !2251, size: 32, offset: 5152)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !197, file: !198, line: 840, baseType: !141, size: 64, offset: 5184)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !197, file: !198, line: 849, baseType: !196, size: 64, offset: 5248)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !197, file: !198, line: 852, baseType: !196, size: 64, offset: 5312)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !197, file: !198, line: 857, baseType: !148, size: 128, offset: 5376)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !197, file: !198, line: 858, baseType: !148, size: 128, offset: 5504)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !197, file: !198, line: 859, baseType: !196, size: 64, offset: 5632)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !197, file: !198, line: 867, baseType: !148, size: 128, offset: 5696)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !197, file: !198, line: 868, baseType: !148, size: 128, offset: 5824)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !197, file: !198, line: 871, baseType: !1814, size: 64, offset: 5952)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !197, file: !198, line: 872, baseType: !2264, size: 512, offset: 6016)
!2264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !694, size: 512, elements: !1822)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !197, file: !198, line: 873, baseType: !148, size: 128, offset: 6528)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !197, file: !198, line: 874, baseType: !148, size: 128, offset: 6656)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !197, file: !198, line: 876, baseType: !2268, size: 64, offset: 6784)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !197, file: !198, line: 879, baseType: !762, size: 64, offset: 6848)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !197, file: !198, line: 882, baseType: !762, size: 64, offset: 6912)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !197, file: !198, line: 884, baseType: !235, size: 64, offset: 6976)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !197, file: !198, line: 885, baseType: !235, size: 64, offset: 7040)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !197, file: !198, line: 890, baseType: !235, size: 64, offset: 7104)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !197, file: !198, line: 891, baseType: !2275, size: 128, offset: 7168)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !198, line: 242, size: 128, elements: !2276)
!2276 = !{!2277, !2278, !2279}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2275, file: !198, line: 244, baseType: !235, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2275, file: !198, line: 245, baseType: !235, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2275, file: !198, line: 246, baseType: !176, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !197, file: !198, line: 900, baseType: !141, size: 64, offset: 7296)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !197, file: !198, line: 901, baseType: !141, size: 64, offset: 7360)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !197, file: !198, line: 904, baseType: !235, size: 64, offset: 7424)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !197, file: !198, line: 907, baseType: !235, size: 64, offset: 7488)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !197, file: !198, line: 910, baseType: !141, size: 64, offset: 7552)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !197, file: !198, line: 911, baseType: !141, size: 64, offset: 7616)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !197, file: !198, line: 914, baseType: !2287, size: 640, offset: 7680)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2288, line: 123, size: 640, elements: !2289)
!2288 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!2289 = !{!2290, !2296, !2297}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2287, file: !2288, line: 124, baseType: !2291, size: 576)
!2291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2292, size: 576, elements: !706)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2288, line: 108, size: 192, elements: !2293)
!2293 = !{!2294, !2295}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2292, file: !2288, line: 109, baseType: !235, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2292, file: !2288, line: 110, baseType: !331, size: 128, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2287, file: !2288, line: 125, baseType: !7, size: 32, offset: 576)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2287, file: !2288, line: 126, baseType: !7, size: 32, offset: 608)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !197, file: !198, line: 917, baseType: !2299, size: 192, offset: 8320)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2288, line: 134, size: 192, elements: !2300)
!2300 = !{!2301, !2302}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2299, file: !2288, line: 135, baseType: !429, size: 128, align: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2299, file: !2288, line: 136, baseType: !7, size: 32, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !197, file: !198, line: 923, baseType: !1840, size: 64, offset: 8512)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !197, file: !198, line: 926, baseType: !1840, size: 64, offset: 8576)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !197, file: !198, line: 929, baseType: !1840, size: 64, offset: 8640)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !197, file: !198, line: 933, baseType: !1870, size: 64, offset: 8704)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !197, file: !198, line: 943, baseType: !2308, size: 128, offset: 8768)
!2308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 128, elements: !1346)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !197, file: !198, line: 945, baseType: !2310, size: 64, offset: 8896)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !198, line: 49, flags: DIFlagFwdDecl)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !197, file: !198, line: 956, baseType: !2313, size: 64, offset: 8960)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !198, line: 45, flags: DIFlagFwdDecl)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !197, file: !198, line: 959, baseType: !2316, size: 64, offset: 9024)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !198, line: 959, flags: DIFlagFwdDecl)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !197, file: !198, line: 962, baseType: !2319, size: 64, offset: 9088)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !198, line: 66, flags: DIFlagFwdDecl)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !197, file: !198, line: 966, baseType: !2322, size: 64, offset: 9152)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !198, line: 50, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !197, file: !198, line: 969, baseType: !2325, size: 64, offset: 9216)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2327, line: 82, size: 7296, elements: !2328)
!2327 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!2328 = !{!2329, !2330, !2331, !2332, !2333, !2334, !2335, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2364, !2373, !2374, !2376, !2377, !2378, !2381, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2411, !2412, !2419, !2420, !2421, !2422, !2423, !2424}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2326, file: !2327, line: 83, baseType: !158, size: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2326, file: !2327, line: 84, baseType: !162, size: 32, offset: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2326, file: !2327, line: 85, baseType: !114, size: 32, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2326, file: !2327, line: 86, baseType: !148, size: 128, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2326, file: !2327, line: 88, baseType: !1299, size: 128, offset: 256)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2326, file: !2327, line: 91, baseType: !196, size: 64, offset: 384)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2326, file: !2327, line: 94, baseType: !2336, size: 192, offset: 448)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2337, line: 30, size: 192, elements: !2338)
!2337 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!2338 = !{!2339, !2340}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2336, file: !2337, line: 31, baseType: !148, size: 128)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2336, file: !2337, line: 32, baseType: !2341, size: 64, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2342, line: 25, baseType: !2343)
!2342 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2342, line: 23, size: 64, elements: !2344)
!2344 = !{!2345}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2343, file: !2342, line: 24, baseType: !366, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2326, file: !2327, line: 97, baseType: !690, size: 64, offset: 640)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2326, file: !2327, line: 100, baseType: !114, size: 32, offset: 704)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2326, file: !2327, line: 106, baseType: !114, size: 32, offset: 736)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !2326, file: !2327, line: 107, baseType: !196, size: 64, offset: 768)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2326, file: !2327, line: 110, baseType: !114, size: 32, offset: 832)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2326, file: !2327, line: 111, baseType: !7, size: 32, offset: 864)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2326, file: !2327, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2326, file: !2327, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !2326, file: !2327, line: 128, baseType: !114, size: 32, offset: 928)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2326, file: !2327, line: 129, baseType: !148, size: 128, offset: 960)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2326, file: !2327, line: 132, baseType: !275, size: 512, offset: 1088)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2326, file: !2327, line: 133, baseType: !283, size: 64, offset: 1600)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2326, file: !2327, line: 140, baseType: !2359, size: 256, offset: 1664)
!2359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2360, size: 256, elements: !1862)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2327, line: 38, size: 128, elements: !2361)
!2361 = !{!2362, !2363}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2360, file: !2327, line: 39, baseType: !235, size: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2360, file: !2327, line: 40, baseType: !235, size: 64, offset: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2326, file: !2327, line: 146, baseType: !2365, size: 192, offset: 1920)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2327, line: 66, size: 192, elements: !2366)
!2366 = !{!2367}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2365, file: !2327, line: 67, baseType: !2368, size: 192)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2327, line: 47, size: 192, elements: !2369)
!2369 = !{!2370, !2371, !2372}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2368, file: !2327, line: 48, baseType: !817, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2368, file: !2327, line: 49, baseType: !817, size: 64, offset: 64)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2368, file: !2327, line: 50, baseType: !817, size: 64, offset: 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2326, file: !2327, line: 150, baseType: !2287, size: 640, offset: 2112)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2326, file: !2327, line: 153, baseType: !2375, size: 256, offset: 2752)
!2375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1814, size: 256, elements: !1822)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2326, file: !2327, line: 159, baseType: !1814, size: 64, offset: 3008)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2326, file: !2327, line: 162, baseType: !114, size: 32, offset: 3072)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2326, file: !2327, line: 164, baseType: !2379, size: 64, offset: 3136)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2327, line: 164, flags: DIFlagFwdDecl)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2326, file: !2327, line: 175, baseType: !2382, size: 32, offset: 3200)
!2382 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !321, line: 805, baseType: !2383)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !321, line: 798, size: 32, elements: !2384)
!2384 = !{!2385, !2386}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2383, file: !321, line: 803, baseType: !451, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2383, file: !321, line: 804, baseType: !798, offset: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2326, file: !2327, line: 176, baseType: !235, size: 64, offset: 3264)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2326, file: !2327, line: 176, baseType: !235, size: 64, offset: 3328)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2326, file: !2327, line: 176, baseType: !235, size: 64, offset: 3392)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2326, file: !2327, line: 176, baseType: !235, size: 64, offset: 3456)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2326, file: !2327, line: 177, baseType: !235, size: 64, offset: 3520)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2326, file: !2327, line: 178, baseType: !235, size: 64, offset: 3584)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2326, file: !2327, line: 179, baseType: !2275, size: 128, offset: 3648)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2326, file: !2327, line: 180, baseType: !141, size: 64, offset: 3776)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2326, file: !2327, line: 180, baseType: !141, size: 64, offset: 3840)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2326, file: !2327, line: 180, baseType: !141, size: 64, offset: 3904)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2326, file: !2327, line: 180, baseType: !141, size: 64, offset: 3968)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2326, file: !2327, line: 181, baseType: !141, size: 64, offset: 4032)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2326, file: !2327, line: 181, baseType: !141, size: 64, offset: 4096)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2326, file: !2327, line: 181, baseType: !141, size: 64, offset: 4160)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2326, file: !2327, line: 181, baseType: !141, size: 64, offset: 4224)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2326, file: !2327, line: 182, baseType: !141, size: 64, offset: 4288)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2326, file: !2327, line: 182, baseType: !141, size: 64, offset: 4352)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2326, file: !2327, line: 182, baseType: !141, size: 64, offset: 4416)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2326, file: !2327, line: 182, baseType: !141, size: 64, offset: 4480)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2326, file: !2327, line: 183, baseType: !141, size: 64, offset: 4544)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2326, file: !2327, line: 183, baseType: !141, size: 64, offset: 4608)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2326, file: !2327, line: 184, baseType: !2409, offset: 4672)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2410, line: 12, elements: !184)
!2410 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2326, file: !2327, line: 192, baseType: !237, size: 64, offset: 4672)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2326, file: !2327, line: 203, baseType: !2413, size: 2048, offset: 4736)
!2413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2414, size: 2048, elements: !1346)
!2414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2415, line: 43, size: 128, elements: !2416)
!2415 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2416 = !{!2417, !2418}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2414, file: !2415, line: 44, baseType: !140, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2414, file: !2415, line: 45, baseType: !140, size: 64, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2326, file: !2327, line: 220, baseType: !142, size: 8, offset: 6784)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2326, file: !2327, line: 221, baseType: !1903, size: 16, offset: 6800)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2326, file: !2327, line: 222, baseType: !1903, size: 16, offset: 6816)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2326, file: !2327, line: 224, baseType: !374, size: 64, offset: 6848)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2326, file: !2327, line: 227, baseType: !1067, size: 192, offset: 6912)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !2326, file: !2327, line: 233, baseType: !1067, size: 192, offset: 7104)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !197, file: !198, line: 970, baseType: !2426, size: 64, offset: 9280)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2327, line: 20, size: 16576, elements: !2428)
!2428 = !{!2429, !2430, !2431, !2432}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2427, file: !2327, line: 21, baseType: !798)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2427, file: !2327, line: 22, baseType: !158, size: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2427, file: !2327, line: 23, baseType: !1299, size: 128, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2427, file: !2327, line: 24, baseType: !2433, size: 16384, offset: 192)
!2433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2434, size: 16384, elements: !2454)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2337, line: 49, size: 256, elements: !2435)
!2435 = !{!2436}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2434, file: !2337, line: 50, baseType: !2437, size: 256)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2337, line: 35, size: 256, elements: !2438)
!2438 = !{!2439, !2446, !2447, !2453}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2437, file: !2337, line: 37, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2441, line: 19, baseType: !2442)
!2441 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2441, line: 18, baseType: !2444)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{null, !114}
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2437, file: !2337, line: 38, baseType: !141, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2437, file: !2337, line: 44, baseType: !2448, size: 64, offset: 128)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2441, line: 22, baseType: !2449)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2441, line: 21, baseType: !2451)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{null}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2437, file: !2337, line: 46, baseType: !2341, size: 64, offset: 192)
!2454 = !{!2455}
!2455 = !DISubrange(count: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !197, file: !198, line: 971, baseType: !2341, size: 64, offset: 9344)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !197, file: !198, line: 972, baseType: !2341, size: 64, offset: 9408)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !197, file: !198, line: 974, baseType: !2341, size: 64, offset: 9472)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !197, file: !198, line: 975, baseType: !2336, size: 192, offset: 9536)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !197, file: !198, line: 976, baseType: !141, size: 64, offset: 9728)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !197, file: !198, line: 977, baseType: !136, size: 64, offset: 9792)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !197, file: !198, line: 978, baseType: !7, size: 32, offset: 9856)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !197, file: !198, line: 980, baseType: !432, size: 64, offset: 9920)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !197, file: !198, line: 989, baseType: !2465, size: 128, offset: 9984)
!2465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2466, line: 35, size: 128, elements: !2467)
!2466 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2467 = !{!2468, !2469, !2470}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2465, file: !2466, line: 36, baseType: !114, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2465, file: !2466, line: 37, baseType: !162, size: 32, offset: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2465, file: !2466, line: 38, baseType: !2471, size: 64, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2466, line: 23, flags: DIFlagFwdDecl)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !197, file: !198, line: 992, baseType: !235, size: 64, offset: 10112)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !197, file: !198, line: 993, baseType: !235, size: 64, offset: 10176)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !197, file: !198, line: 996, baseType: !798, offset: 10240)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !197, file: !198, line: 999, baseType: !176, offset: 10240)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !197, file: !198, line: 1001, baseType: !2478, size: 64, offset: 10240)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !198, line: 636, size: 64, elements: !2479)
!2479 = !{!2480}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2478, file: !198, line: 637, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !197, file: !198, line: 1005, baseType: !334, size: 128, offset: 10304)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !197, file: !198, line: 1007, baseType: !196, size: 64, offset: 10432)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !197, file: !198, line: 1009, baseType: !2485, size: 64, offset: 10496)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !198, line: 1009, flags: DIFlagFwdDecl)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !197, file: !198, line: 1043, baseType: !101, size: 64, offset: 10560)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !197, file: !198, line: 1046, baseType: !2489, size: 64, offset: 10624)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !198, line: 41, flags: DIFlagFwdDecl)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !197, file: !198, line: 1050, baseType: !2492, size: 64, offset: 10688)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !198, line: 42, flags: DIFlagFwdDecl)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !197, file: !198, line: 1054, baseType: !2495, size: 64, offset: 10752)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !198, line: 55, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !197, file: !198, line: 1056, baseType: !1246, size: 64, offset: 10816)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !197, file: !198, line: 1058, baseType: !2499, size: 64, offset: 10880)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2501, line: 99, size: 704, elements: !2502)
!2501 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508, !2509, !2528, !2529}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2500, file: !2501, line: 100, baseType: !815, size: 64)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2500, file: !2501, line: 101, baseType: !162, size: 32, offset: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2500, file: !2501, line: 102, baseType: !162, size: 32, offset: 96)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2500, file: !2501, line: 105, baseType: !798, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2500, file: !2501, line: 107, baseType: !146, size: 16, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2500, file: !2501, line: 109, baseType: !794, size: 128, offset: 192)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2500, file: !2501, line: 110, baseType: !2510, size: 64, offset: 320)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2501, line: 73, size: 448, elements: !2512)
!2512 = !{!2513, !2516, !2517, !2522, !2527}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2511, file: !2501, line: 74, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2501, line: 74, flags: DIFlagFwdDecl)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2511, file: !2501, line: 75, baseType: !2499, size: 64, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, scope: !2511, file: !2501, line: 83, baseType: !2518, size: 128, offset: 128)
!2518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2511, file: !2501, line: 83, size: 128, elements: !2519)
!2519 = !{!2520, !2521}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2518, file: !2501, line: 84, baseType: !148, size: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2518, file: !2501, line: 85, baseType: !977, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, scope: !2511, file: !2501, line: 87, baseType: !2523, size: 128, offset: 256)
!2523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2511, file: !2501, line: 87, size: 128, elements: !2524)
!2524 = !{!2525, !2526}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2523, file: !2501, line: 88, baseType: !694, size: 128)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2523, file: !2501, line: 89, baseType: !429, size: 128, align: 64)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2511, file: !2501, line: 92, baseType: !7, size: 32, offset: 384)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2500, file: !2501, line: 111, baseType: !690, size: 64, offset: 384)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2500, file: !2501, line: 113, baseType: !1458, size: 256, offset: 448)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !197, file: !198, line: 1061, baseType: !2531, size: 64, offset: 10944)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !198, line: 43, flags: DIFlagFwdDecl)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !197, file: !198, line: 1064, baseType: !141, size: 64, offset: 11008)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !197, file: !198, line: 1065, baseType: !2535, size: 64, offset: 11072)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2337, line: 14, baseType: !2537)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2337, line: 12, size: 384, elements: !2538)
!2538 = !{!2539}
!2539 = !DIDerivedType(tag: DW_TAG_member, scope: !2537, file: !2337, line: 13, baseType: !2540, size: 384)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2537, file: !2337, line: 13, size: 384, elements: !2541)
!2541 = !{!2542, !2543, !2544, !2545}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2540, file: !2337, line: 13, baseType: !114, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2540, file: !2337, line: 13, baseType: !114, size: 32, offset: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2540, file: !2337, line: 13, baseType: !114, size: 32, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2540, file: !2337, line: 13, baseType: !2546, size: 256, offset: 128)
!2546 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2547, line: 32, size: 256, elements: !2548)
!2547 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2548 = !{!2549, !2554, !2567, !2573, !2582, !2602, !2607}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2546, file: !2547, line: 37, baseType: !2550, size: 64)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2546, file: !2547, line: 34, size: 64, elements: !2551)
!2551 = !{!2552, !2553}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2550, file: !2547, line: 35, baseType: !2252, size: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2550, file: !2547, line: 36, baseType: !493, size: 32, offset: 32)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2546, file: !2547, line: 45, baseType: !2555, size: 192)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2546, file: !2547, line: 40, size: 192, elements: !2556)
!2556 = !{!2557, !2559, !2560, !2566}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2555, file: !2547, line: 41, baseType: !2558, size: 32)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !139, line: 95, baseType: !114)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2555, file: !2547, line: 42, baseType: !114, size: 32, offset: 32)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2555, file: !2547, line: 43, baseType: !2561, size: 64, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2547, line: 11, baseType: !2562)
!2562 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2547, line: 8, size: 64, elements: !2563)
!2563 = !{!2564, !2565}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2562, file: !2547, line: 9, baseType: !114, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2562, file: !2547, line: 10, baseType: !101, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2555, file: !2547, line: 44, baseType: !114, size: 32, offset: 128)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2546, file: !2547, line: 52, baseType: !2568, size: 128)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2546, file: !2547, line: 48, size: 128, elements: !2569)
!2569 = !{!2570, !2571, !2572}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2568, file: !2547, line: 49, baseType: !2252, size: 32)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2568, file: !2547, line: 50, baseType: !493, size: 32, offset: 32)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2568, file: !2547, line: 51, baseType: !2561, size: 64, offset: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2546, file: !2547, line: 61, baseType: !2574, size: 256)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2546, file: !2547, line: 55, size: 256, elements: !2575)
!2575 = !{!2576, !2577, !2578, !2579, !2581}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2574, file: !2547, line: 56, baseType: !2252, size: 32)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2574, file: !2547, line: 57, baseType: !493, size: 32, offset: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2574, file: !2547, line: 58, baseType: !114, size: 32, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2574, file: !2547, line: 59, baseType: !2580, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !139, line: 94, baseType: !629)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2574, file: !2547, line: 60, baseType: !2580, size: 64, offset: 192)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2546, file: !2547, line: 95, baseType: !2583, size: 256)
!2583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2546, file: !2547, line: 64, size: 256, elements: !2584)
!2584 = !{!2585, !2586}
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2583, file: !2547, line: 65, baseType: !101, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, scope: !2583, file: !2547, line: 77, baseType: !2587, size: 192, offset: 64)
!2587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2583, file: !2547, line: 77, size: 192, elements: !2588)
!2588 = !{!2589, !2590, !2597}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2587, file: !2547, line: 82, baseType: !1903, size: 16)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2587, file: !2547, line: 88, baseType: !2591, size: 192)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !2547, line: 84, size: 192, elements: !2592)
!2592 = !{!2593, !2595, !2596}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2591, file: !2547, line: 85, baseType: !2594, size: 64)
!2594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64, elements: !313)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2591, file: !2547, line: 86, baseType: !101, size: 64, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2591, file: !2547, line: 87, baseType: !101, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2587, file: !2547, line: 93, baseType: !2598, size: 96)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !2547, line: 90, size: 96, elements: !2599)
!2599 = !{!2600, !2601}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2598, file: !2547, line: 91, baseType: !2594, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2598, file: !2547, line: 92, baseType: !130, size: 32, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2546, file: !2547, line: 101, baseType: !2603, size: 128)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2546, file: !2547, line: 98, size: 128, elements: !2604)
!2604 = !{!2605, !2606}
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2603, file: !2547, line: 99, baseType: !187, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2603, file: !2547, line: 100, baseType: !114, size: 32, offset: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2546, file: !2547, line: 108, baseType: !2608, size: 128)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2546, file: !2547, line: 104, size: 128, elements: !2609)
!2609 = !{!2610, !2611, !2612}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2608, file: !2547, line: 105, baseType: !101, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2608, file: !2547, line: 106, baseType: !114, size: 32, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2608, file: !2547, line: 107, baseType: !7, size: 32, offset: 96)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !197, file: !198, line: 1067, baseType: !2409, offset: 11136)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !197, file: !198, line: 1099, baseType: !2615, size: 64, offset: 11136)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !198, line: 56, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !197, file: !198, line: 1103, baseType: !148, size: 128, offset: 11200)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !197, file: !198, line: 1104, baseType: !2619, size: 64, offset: 11328)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !198, line: 46, flags: DIFlagFwdDecl)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !197, file: !198, line: 1105, baseType: !1067, size: 192, offset: 11392)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !197, file: !198, line: 1106, baseType: !7, size: 32, offset: 11584)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !197, file: !198, line: 1109, baseType: !2624, size: 128, offset: 11648)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2625, size: 128, elements: !1862)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !198, line: 51, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !197, file: !198, line: 1110, baseType: !1067, size: 192, offset: 11776)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !197, file: !198, line: 1111, baseType: !148, size: 128, offset: 11968)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !197, file: !198, line: 1173, baseType: !2630, size: 64, offset: 12096)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2632, line: 62, size: 256, align: 256, elements: !2633)
!2632 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2633 = !{!2634, !2635, !2636, !2641}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2631, file: !2632, line: 75, baseType: !130, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2631, file: !2632, line: 90, baseType: !130, size: 32, offset: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2631, file: !2632, line: 124, baseType: !2637, size: 64, offset: 64)
!2637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2631, file: !2632, line: 109, size: 64, elements: !2638)
!2638 = !{!2639, !2640}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2637, file: !2632, line: 110, baseType: !236, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2637, file: !2632, line: 112, baseType: !236, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2631, file: !2632, line: 144, baseType: !130, size: 32, offset: 128)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !197, file: !198, line: 1174, baseType: !128, size: 32, offset: 12160)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !197, file: !198, line: 1179, baseType: !141, size: 64, offset: 12224)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !197, file: !198, line: 1182, baseType: !2645, size: 128, offset: 12288)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2094, line: 76, size: 128, elements: !2646)
!2646 = !{!2647, !2652, !2653}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2645, file: !2094, line: 85, baseType: !2648, size: 64)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2649, line: 7, size: 64, elements: !2650)
!2649 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2650 = !{!2651}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2648, file: !2649, line: 12, baseType: !363, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2645, file: !2094, line: 88, baseType: !142, size: 8, offset: 64)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2645, file: !2094, line: 95, baseType: !142, size: 8, offset: 72)
!2654 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !198, line: 1184, baseType: !2655, size: 128, offset: 12416)
!2655 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !197, file: !198, line: 1184, size: 128, elements: !2656)
!2656 = !{!2657, !2658}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2655, file: !198, line: 1185, baseType: !158, size: 32)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2655, file: !198, line: 1186, baseType: !429, size: 128, align: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !197, file: !198, line: 1190, baseType: !1715, size: 64, offset: 12544)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !197, file: !198, line: 1192, baseType: !2661, size: 128, offset: 12608)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2094, line: 64, size: 128, elements: !2662)
!2662 = !{!2663, !2664, !2665}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2661, file: !2094, line: 65, baseType: !777, size: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2661, file: !2094, line: 67, baseType: !130, size: 32, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2661, file: !2094, line: 68, baseType: !130, size: 32, offset: 96)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !197, file: !198, line: 1206, baseType: !114, size: 32, offset: 12736)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !197, file: !198, line: 1207, baseType: !114, size: 32, offset: 12768)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !197, file: !198, line: 1209, baseType: !141, size: 64, offset: 12800)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !197, file: !198, line: 1219, baseType: !235, size: 64, offset: 12864)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !197, file: !198, line: 1220, baseType: !235, size: 64, offset: 12928)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !197, file: !198, line: 1317, baseType: !114, size: 32, offset: 12992)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !197, file: !198, line: 1319, baseType: !196, size: 64, offset: 13056)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !197, file: !198, line: 1322, baseType: !2674, size: 64, offset: 13120)
!2674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2675, size: 64)
!2675 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !198, line: 1322, flags: DIFlagFwdDecl)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !197, file: !198, line: 1326, baseType: !158, size: 32, offset: 13184)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !197, file: !198, line: 1342, baseType: !101, size: 64, offset: 13248)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !197, file: !198, line: 1343, baseType: !236, size: 64, offset: 13312)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !197, file: !198, line: 1344, baseType: !235, size: 64, offset: 13376)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !197, file: !198, line: 1345, baseType: !236, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !197, file: !198, line: 1346, baseType: !236, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !197, file: !198, line: 1347, baseType: !236, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !197, file: !198, line: 1348, baseType: !429, size: 128, align: 64, offset: 13504)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !197, file: !198, line: 1358, baseType: !2685, size: 34816, offset: 13824)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2686, line: 485, size: 34816, elements: !2687)
!2686 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2687 = !{!2688, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2717, !2718, !2719, !2720, !2721, !2722, !2725, !2726, !2727}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2685, file: !2686, line: 487, baseType: !2689, size: 192)
!2689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2690, size: 192, elements: !706)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2691, line: 16, size: 64, elements: !2692)
!2691 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2692 = !{!2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2690, file: !2691, line: 17, baseType: !901, size: 16)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2690, file: !2691, line: 18, baseType: !901, size: 16, offset: 16)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2690, file: !2691, line: 19, baseType: !901, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2690, file: !2691, line: 19, baseType: !901, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2690, file: !2691, line: 19, baseType: !901, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2690, file: !2691, line: 19, baseType: !901, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2690, file: !2691, line: 19, baseType: !901, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2690, file: !2691, line: 20, baseType: !901, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2690, file: !2691, line: 20, baseType: !901, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2690, file: !2691, line: 20, baseType: !901, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2690, file: !2691, line: 20, baseType: !901, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2690, file: !2691, line: 20, baseType: !901, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2690, file: !2691, line: 20, baseType: !901, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2685, file: !2686, line: 491, baseType: !141, size: 64, offset: 192)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2685, file: !2686, line: 495, baseType: !146, size: 16, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2685, file: !2686, line: 496, baseType: !146, size: 16, offset: 272)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2685, file: !2686, line: 497, baseType: !146, size: 16, offset: 288)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2685, file: !2686, line: 498, baseType: !146, size: 16, offset: 304)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2685, file: !2686, line: 502, baseType: !141, size: 64, offset: 320)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2685, file: !2686, line: 503, baseType: !141, size: 64, offset: 384)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2685, file: !2686, line: 514, baseType: !2714, size: 256, offset: 448)
!2714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2715, size: 256, elements: !1822)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2686, line: 483, flags: DIFlagFwdDecl)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2685, file: !2686, line: 516, baseType: !141, size: 64, offset: 704)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2685, file: !2686, line: 518, baseType: !141, size: 64, offset: 768)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2685, file: !2686, line: 520, baseType: !141, size: 64, offset: 832)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2685, file: !2686, line: 521, baseType: !141, size: 64, offset: 896)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2685, file: !2686, line: 522, baseType: !141, size: 64, offset: 960)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2685, file: !2686, line: 528, baseType: !2723, size: 64, offset: 1024)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2686, line: 10, flags: DIFlagFwdDecl)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2685, file: !2686, line: 535, baseType: !141, size: 64, offset: 1088)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2685, file: !2686, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2685, file: !2686, line: 540, baseType: !2728, size: 33280, offset: 1536)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2729, line: 317, size: 33280, elements: !2730)
!2729 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2730 = !{!2731, !2732, !2733}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2728, file: !2729, line: 330, baseType: !7, size: 32)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2728, file: !2729, line: 337, baseType: !141, size: 64, offset: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2728, file: !2729, line: 348, baseType: !2734, size: 32768, offset: 512)
!2734 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2729, line: 304, size: 32768, elements: !2735)
!2735 = !{!2736, !2751, !2788, !2838, !2851}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2734, file: !2729, line: 305, baseType: !2737, size: 896)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2729, line: 12, size: 896, elements: !2738)
!2738 = !{!2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2750}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2737, file: !2729, line: 13, baseType: !128, size: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2737, file: !2729, line: 14, baseType: !128, size: 32, offset: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2737, file: !2729, line: 15, baseType: !128, size: 32, offset: 64)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2737, file: !2729, line: 16, baseType: !128, size: 32, offset: 96)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2737, file: !2729, line: 17, baseType: !128, size: 32, offset: 128)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2737, file: !2729, line: 18, baseType: !128, size: 32, offset: 160)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2737, file: !2729, line: 19, baseType: !128, size: 32, offset: 192)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2737, file: !2729, line: 22, baseType: !2747, size: 640, offset: 224)
!2747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 640, elements: !2748)
!2748 = !{!2749}
!2749 = !DISubrange(count: 20)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2737, file: !2729, line: 25, baseType: !128, size: 32, offset: 864)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2734, file: !2729, line: 306, baseType: !2752, size: 4096, align: 128)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2729, line: 34, size: 4096, align: 128, elements: !2753)
!2753 = !{!2754, !2755, !2756, !2757, !2758, !2773, !2774, !2775, !2777, !2779, !2783}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2752, file: !2729, line: 35, baseType: !901, size: 16)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2752, file: !2729, line: 36, baseType: !901, size: 16, offset: 16)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2752, file: !2729, line: 37, baseType: !901, size: 16, offset: 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2752, file: !2729, line: 38, baseType: !901, size: 16, offset: 48)
!2758 = !DIDerivedType(tag: DW_TAG_member, scope: !2752, file: !2729, line: 39, baseType: !2759, size: 128, offset: 64)
!2759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2752, file: !2729, line: 39, size: 128, elements: !2760)
!2760 = !{!2761, !2766}
!2761 = !DIDerivedType(tag: DW_TAG_member, scope: !2759, file: !2729, line: 40, baseType: !2762, size: 128)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2759, file: !2729, line: 40, size: 128, elements: !2763)
!2763 = !{!2764, !2765}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2762, file: !2729, line: 41, baseType: !235, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2762, file: !2729, line: 42, baseType: !235, size: 64, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, scope: !2759, file: !2729, line: 44, baseType: !2767, size: 128)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2759, file: !2729, line: 44, size: 128, elements: !2768)
!2768 = !{!2769, !2770, !2771, !2772}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2767, file: !2729, line: 45, baseType: !128, size: 32)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2767, file: !2729, line: 46, baseType: !128, size: 32, offset: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2767, file: !2729, line: 47, baseType: !128, size: 32, offset: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2767, file: !2729, line: 48, baseType: !128, size: 32, offset: 96)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2752, file: !2729, line: 51, baseType: !128, size: 32, offset: 192)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2752, file: !2729, line: 52, baseType: !128, size: 32, offset: 224)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2752, file: !2729, line: 55, baseType: !2776, size: 1024, offset: 256)
!2776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 1024, elements: !1337)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2752, file: !2729, line: 58, baseType: !2778, size: 2048, offset: 1280)
!2778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 2048, elements: !2454)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2752, file: !2729, line: 60, baseType: !2780, size: 384, offset: 3328)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 384, elements: !2781)
!2781 = !{!2782}
!2782 = !DISubrange(count: 12)
!2783 = !DIDerivedType(tag: DW_TAG_member, scope: !2752, file: !2729, line: 62, baseType: !2784, size: 384, offset: 3712)
!2784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2752, file: !2729, line: 62, size: 384, elements: !2785)
!2785 = !{!2786, !2787}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2784, file: !2729, line: 63, baseType: !2780, size: 384)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2784, file: !2729, line: 64, baseType: !2780, size: 384)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2734, file: !2729, line: 307, baseType: !2789, size: 1088)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2729, line: 79, size: 1088, elements: !2790)
!2790 = !{!2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2837}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2789, file: !2729, line: 80, baseType: !128, size: 32)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2789, file: !2729, line: 81, baseType: !128, size: 32, offset: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2789, file: !2729, line: 82, baseType: !128, size: 32, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2789, file: !2729, line: 83, baseType: !128, size: 32, offset: 96)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2789, file: !2729, line: 84, baseType: !128, size: 32, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2789, file: !2729, line: 85, baseType: !128, size: 32, offset: 160)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2789, file: !2729, line: 86, baseType: !128, size: 32, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2789, file: !2729, line: 88, baseType: !2747, size: 640, offset: 224)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2789, file: !2729, line: 89, baseType: !347, size: 8, offset: 864)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2789, file: !2729, line: 90, baseType: !347, size: 8, offset: 872)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2789, file: !2729, line: 91, baseType: !347, size: 8, offset: 880)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2789, file: !2729, line: 92, baseType: !347, size: 8, offset: 888)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2789, file: !2729, line: 93, baseType: !347, size: 8, offset: 896)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2789, file: !2729, line: 94, baseType: !347, size: 8, offset: 904)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2789, file: !2729, line: 95, baseType: !2806, size: 64, offset: 960)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2808, line: 11, size: 128, elements: !2809)
!2808 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2809 = !{!2810, !2811}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2807, file: !2808, line: 12, baseType: !187, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2807, file: !2808, line: 13, baseType: !2812, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2814, line: 56, size: 1344, elements: !2815)
!2814 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2815 = !{!2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2813, file: !2814, line: 61, baseType: !141, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2813, file: !2814, line: 62, baseType: !141, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2813, file: !2814, line: 63, baseType: !141, size: 64, offset: 128)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2813, file: !2814, line: 64, baseType: !141, size: 64, offset: 192)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2813, file: !2814, line: 65, baseType: !141, size: 64, offset: 256)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2813, file: !2814, line: 66, baseType: !141, size: 64, offset: 320)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2813, file: !2814, line: 68, baseType: !141, size: 64, offset: 384)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2813, file: !2814, line: 69, baseType: !141, size: 64, offset: 448)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2813, file: !2814, line: 70, baseType: !141, size: 64, offset: 512)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2813, file: !2814, line: 71, baseType: !141, size: 64, offset: 576)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2813, file: !2814, line: 72, baseType: !141, size: 64, offset: 640)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2813, file: !2814, line: 73, baseType: !141, size: 64, offset: 704)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2813, file: !2814, line: 74, baseType: !141, size: 64, offset: 768)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2813, file: !2814, line: 75, baseType: !141, size: 64, offset: 832)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2813, file: !2814, line: 76, baseType: !141, size: 64, offset: 896)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2813, file: !2814, line: 81, baseType: !141, size: 64, offset: 960)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2813, file: !2814, line: 83, baseType: !141, size: 64, offset: 1024)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2813, file: !2814, line: 84, baseType: !141, size: 64, offset: 1088)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2813, file: !2814, line: 85, baseType: !141, size: 64, offset: 1152)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2813, file: !2814, line: 86, baseType: !141, size: 64, offset: 1216)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2813, file: !2814, line: 87, baseType: !141, size: 64, offset: 1280)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2789, file: !2729, line: 96, baseType: !128, size: 32, offset: 1024)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2734, file: !2729, line: 308, baseType: !2839, size: 4608, align: 512)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2729, line: 289, size: 4608, align: 512, elements: !2840)
!2840 = !{!2841, !2842, !2849}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2839, file: !2729, line: 290, baseType: !2752, size: 4096, align: 128)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2839, file: !2729, line: 291, baseType: !2843, size: 512, offset: 4096)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2729, line: 268, size: 512, elements: !2844)
!2844 = !{!2845, !2846, !2847}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2843, file: !2729, line: 269, baseType: !235, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2843, file: !2729, line: 270, baseType: !235, size: 64, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2843, file: !2729, line: 271, baseType: !2848, size: 384, offset: 128)
!2848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 384, elements: !1921)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2839, file: !2729, line: 292, baseType: !2850, offset: 4608)
!2850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, elements: !2017)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2734, file: !2729, line: 309, baseType: !2852, size: 32768)
!2852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, size: 32768, elements: !2853)
!2853 = !{!2854}
!2854 = !DISubrange(count: 4096)
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !151)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2859)
!2859 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !114)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !128)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2856)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!2866 = !{!2867, !2919, !2924, !2929, !2931, !2933, !2935, !2937, !2942, !2947, !2952, !2957, !2959, !2961, !2963, !2966, !2968, !2970, !0, !2972, !2977, !3630, !3632, !3634, !3636, !3639, !3641, !3644, !3658, !3660, !3662, !3664, !3666}
!2867 = !DIGlobalVariableExpression(var: !2868, expr: !DIExpression())
!2868 = distinct !DIGlobalVariable(name: "__param_current_quality", scope: !2, file: !3, line: 45, type: !2869, isLocal: true, isDefinition: true, align: 64)
!2869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2870)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2871, line: 69, size: 320, elements: !2872)
!2871 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!2872 = !{!2873, !2874, !2875, !2891, !2893, !2897, !2898}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2870, file: !2871, line: 70, baseType: !107, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2870, file: !2871, line: 71, baseType: !685, size: 64, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2870, file: !2871, line: 72, baseType: !2876, size: 64, offset: 128)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2877, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2878)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2871, line: 47, size: 256, elements: !2879)
!2879 = !{!2880, !2881, !2886, !2890}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2878, file: !2871, line: 49, baseType: !7, size: 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2878, file: !2871, line: 51, baseType: !2882, size: 64, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!114, !107, !2885}
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2878, file: !2871, line: 53, baseType: !2887, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DISubroutineType(types: !2889)
!2889 = !{!114, !538, !2885}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2878, file: !2871, line: 55, baseType: !520, size: 64, offset: 192)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2870, file: !2871, line: 73, baseType: !2892, size: 16, offset: 192)
!2892 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !901)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2870, file: !2871, line: 74, baseType: !2894, size: 8, offset: 208)
!2894 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !129, line: 16, baseType: !2895)
!2895 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !131, line: 20, baseType: !2896)
!2896 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2870, file: !2871, line: 75, baseType: !347, size: 8, offset: 216)
!2898 = !DIDerivedType(tag: DW_TAG_member, scope: !2870, file: !2871, line: 76, baseType: !2899, size: 64, offset: 256)
!2899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2870, file: !2871, line: 76, size: 64, elements: !2900)
!2900 = !{!2901, !2902, !2909}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2899, file: !2871, line: 77, baseType: !101, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2899, file: !2871, line: 78, baseType: !2903, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2905)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2871, line: 86, size: 128, elements: !2906)
!2906 = !{!2907, !2908}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2905, file: !2871, line: 87, baseType: !7, size: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2905, file: !2871, line: 88, baseType: !538, size: 64, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2899, file: !2871, line: 79, baseType: !2910, size: 64)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2912)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2871, line: 92, size: 256, elements: !2913)
!2913 = !{!2914, !2915, !2916, !2917, !2918}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2912, file: !2871, line: 94, baseType: !7, size: 32)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2912, file: !2871, line: 95, baseType: !7, size: 32, offset: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2912, file: !2871, line: 96, baseType: !1319, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2912, file: !2871, line: 97, baseType: !2876, size: 64, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2912, file: !2871, line: 98, baseType: !101, size: 64, offset: 192)
!2919 = !DIGlobalVariableExpression(var: !2920, expr: !DIExpression())
!2920 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_current_qualitytype205", scope: !2, file: !3, line: 45, type: !2921, isLocal: true, isDefinition: true, align: 8)
!2921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 328, elements: !2922)
!2922 = !{!2923}
!2923 = !DISubrange(count: 41)
!2924 = !DIGlobalVariableExpression(var: !2925, expr: !DIExpression())
!2925 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_current_quality206", scope: !2, file: !3, line: 46, type: !2926, isLocal: true, isDefinition: true, align: 8)
!2926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 688, elements: !2927)
!2927 = !{!2928}
!2928 = !DISubrange(count: 86)
!2929 = !DIGlobalVariableExpression(var: !2930, expr: !DIExpression())
!2930 = distinct !DIGlobalVariable(name: "__param_default_quality", scope: !2, file: !3, line: 48, type: !2869, isLocal: true, isDefinition: true, align: 64)
!2931 = !DIGlobalVariableExpression(var: !2932, expr: !DIExpression())
!2932 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_default_qualitytype207", scope: !2, file: !3, line: 48, type: !2921, isLocal: true, isDefinition: true, align: 8)
!2933 = !DIGlobalVariableExpression(var: !2934, expr: !DIExpression())
!2934 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_default_quality208", scope: !2, file: !3, line: 49, type: !2926, isLocal: true, isDefinition: true, align: 8)
!2935 = !DIGlobalVariableExpression(var: !2936, expr: !DIExpression())
!2936 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_hwrng_modinit226", scope: !2, file: !3, line: 647, type: !101, isLocal: true, isDefinition: true)
!2937 = !DIGlobalVariableExpression(var: !2938, expr: !DIExpression())
!2938 = distinct !DIGlobalVariable(name: "__exitcall_hwrng_modexit", scope: !2, file: !3, line: 648, type: !2939, isLocal: true, isDefinition: true)
!2939 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2940, line: 117, baseType: !2941)
!2940 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2942 = !DIGlobalVariableExpression(var: !2943, expr: !DIExpression())
!2943 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description227", scope: !2, file: !3, line: 650, type: !2944, isLocal: true, isDefinition: true, align: 8)
!2944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 496, elements: !2945)
!2945 = !{!2946}
!2946 = !DISubrange(count: 62)
!2947 = !DIGlobalVariableExpression(var: !2948, expr: !DIExpression())
!2948 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file228", scope: !2, file: !3, line: 651, type: !2949, isLocal: true, isDefinition: true, align: 8)
!2949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 368, elements: !2950)
!2950 = !{!2951}
!2951 = !DISubrange(count: 46)
!2952 = !DIGlobalVariableExpression(var: !2953, expr: !DIExpression())
!2953 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license229", scope: !2, file: !3, line: 651, type: !2954, isLocal: true, isDefinition: true, align: 8)
!2954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 168, elements: !2955)
!2955 = !{!2956}
!2956 = !DISubrange(count: 21)
!2957 = !DIGlobalVariableExpression(var: !2958, expr: !DIExpression())
!2958 = distinct !DIGlobalVariable(name: "current_rng", scope: !2, file: !3, line: 30, type: !102, isLocal: true, isDefinition: true)
!2959 = !DIGlobalVariableExpression(var: !2960, expr: !DIExpression())
!2960 = distinct !DIGlobalVariable(name: "cur_rng_set_by_user", scope: !2, file: !3, line: 32, type: !114, isLocal: true, isDefinition: true)
!2961 = !DIGlobalVariableExpression(var: !2962, expr: !DIExpression())
!2962 = distinct !DIGlobalVariable(name: "hwrng_fill", scope: !2, file: !3, line: 33, type: !196, isLocal: true, isDefinition: true)
!2963 = !DIGlobalVariableExpression(var: !2964, expr: !DIExpression())
!2964 = distinct !DIGlobalVariable(name: "rng_buffer", scope: !2, file: !3, line: 41, type: !2965, isLocal: true, isDefinition: true)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!2966 = !DIGlobalVariableExpression(var: !2967, expr: !DIExpression())
!2967 = distinct !DIGlobalVariable(name: "rng_fillbuf", scope: !2, file: !3, line: 41, type: !2965, isLocal: true, isDefinition: true)
!2968 = !DIGlobalVariableExpression(var: !2969, expr: !DIExpression())
!2969 = distinct !DIGlobalVariable(name: "current_quality", scope: !2, file: !3, line: 42, type: !146, isLocal: true, isDefinition: true)
!2970 = !DIGlobalVariableExpression(var: !2971, expr: !DIExpression())
!2971 = distinct !DIGlobalVariable(name: "default_quality", scope: !2, file: !3, line: 43, type: !146, isLocal: true, isDefinition: true)
!2972 = !DIGlobalVariableExpression(var: !2973, expr: !DIExpression())
!2973 = distinct !DIGlobalVariable(name: "__param_str_default_quality", scope: !2, file: !3, line: 48, type: !2974, isLocal: true, isDefinition: true)
!2974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 200, elements: !2975)
!2975 = !{!2976}
!2976 = !DISubrange(count: 25)
!2977 = !DIGlobalVariableExpression(var: !2978, expr: !DIExpression())
!2978 = distinct !DIGlobalVariable(name: "rng_miscdev", scope: !2, file: !3, line: 291, type: !2979, isLocal: true, isDefinition: true)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "miscdevice", file: !2980, line: 79, size: 640, elements: !2981)
!2980 = !DIFile(filename: "./include/linux/miscdevice.h", directory: "/home/lizy2001/genbc/linux")
!2981 = !{!2982, !2983, !2984, !2985, !2986, !3626, !3627, !3628, !3629}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !2979, file: !2980, line: 80, baseType: !114, size: 32)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2979, file: !2980, line: 81, baseType: !107, size: 64, offset: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !2979, file: !2980, line: 82, baseType: !1516, size: 64, offset: 128)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2979, file: !2980, line: 83, baseType: !148, size: 128, offset: 192)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2979, file: !2980, line: 84, baseType: !2987, size: 64, offset: 320)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !65, line: 461, size: 5568, elements: !2989)
!2989 = !{!2990, !3285, !3286, !3289, !3290, !3341, !3414, !3415, !3416, !3417, !3418, !3427, !3532, !3545, !3548, !3549, !3553, !3555, !3556, !3557, !3561, !3567, !3568, !3571, !3575, !3578, !3579, !3580, !3581, !3582, !3614, !3615, !3616, !3619, !3622, !3623, !3624, !3625}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2988, file: !65, line: 462, baseType: !2991, size: 512)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2992, line: 64, size: 512, elements: !2993)
!2992 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2993 = !{!2994, !2995, !2996, !2998, !3038, !3140, !3279, !3280, !3281, !3282, !3283, !3284}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2991, file: !2992, line: 65, baseType: !107, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2991, file: !2992, line: 66, baseType: !148, size: 128, offset: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2991, file: !2992, line: 67, baseType: !2997, size: 64, offset: 192)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2991, file: !2992, line: 68, baseType: !2999, size: 64, offset: 256)
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3000, size: 64)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2992, line: 192, size: 704, elements: !3001)
!3001 = !{!3002, !3003, !3004, !3005}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3000, file: !2992, line: 193, baseType: !148, size: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3000, file: !2992, line: 194, baseType: !798, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3000, file: !2992, line: 195, baseType: !2991, size: 512, offset: 128)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3000, file: !2992, line: 196, baseType: !3006, size: 64, offset: 640)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3008)
!3008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2992, line: 156, size: 192, elements: !3009)
!3009 = !{!3010, !3015, !3020}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3008, file: !2992, line: 157, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3012)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!114, !2999, !2997}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3008, file: !2992, line: 158, baseType: !3016, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3017)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!107, !2999, !2997}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3008, file: !2992, line: 159, baseType: !3021, size: 64, offset: 128)
!3021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3022)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!114, !2999, !2997, !3025}
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2992, line: 148, size: 20736, elements: !3027)
!3027 = !{!3028, !3030, !3032, !3033, !3037}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3026, file: !2992, line: 149, baseType: !3029, size: 192)
!3029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 192, elements: !706)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3026, file: !2992, line: 150, baseType: !3031, size: 4096, offset: 192)
!3031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 4096, elements: !2454)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3026, file: !2992, line: 151, baseType: !114, size: 32, offset: 4288)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3026, file: !2992, line: 152, baseType: !3034, size: 16384, offset: 4320)
!3034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 16384, elements: !3035)
!3035 = !{!3036}
!3036 = !DISubrange(count: 2048)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3026, file: !2992, line: 153, baseType: !114, size: 32, offset: 20704)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2991, file: !2992, line: 69, baseType: !3039, size: 64, offset: 320)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2992, line: 138, size: 448, elements: !3041)
!3041 = !{!3042, !3046, !3065, !3067, !3100, !3130, !3134}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3040, file: !2992, line: 139, baseType: !3043, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !2997}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3040, file: !2992, line: 140, baseType: !3047, size: 64, offset: 64)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3049)
!3049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3050, line: 230, size: 128, elements: !3051)
!3050 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3051 = !{!3052, !3061}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3049, file: !3050, line: 231, baseType: !3053, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!627, !2997, !3056, !538}
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3050, line: 30, size: 128, elements: !3058)
!3058 = !{!3059, !3060}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3057, file: !3050, line: 31, baseType: !107, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3057, file: !3050, line: 32, baseType: !484, size: 16, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3049, file: !3050, line: 232, baseType: !3062, size: 64, offset: 64)
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3063, size: 64)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!627, !2997, !3056, !107, !136}
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3040, file: !2992, line: 141, baseType: !3066, size: 64, offset: 128)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3040, file: !2992, line: 142, baseType: !3068, size: 64, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3071)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3050, line: 84, size: 320, elements: !3072)
!3072 = !{!3073, !3074, !3078, !3097, !3098}
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3071, file: !3050, line: 85, baseType: !107, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3071, file: !3050, line: 86, baseType: !3075, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3076, size: 64)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!484, !2997, !3056, !114}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3071, file: !3050, line: 88, baseType: !3079, size: 64, offset: 128)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!484, !2997, !3082, !114}
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3050, line: 168, size: 448, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088, !3092, !3093}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3083, file: !3050, line: 169, baseType: !3057, size: 128)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3083, file: !3050, line: 170, baseType: !136, size: 64, offset: 128)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3083, file: !3050, line: 171, baseType: !101, size: 64, offset: 192)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3083, file: !3050, line: 172, baseType: !3089, size: 64, offset: 256)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!627, !416, !2997, !3082, !538, !582, !136}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3083, file: !3050, line: 174, baseType: !3089, size: 64, offset: 320)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3083, file: !3050, line: 176, baseType: !3094, size: 64, offset: 384)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!114, !416, !2997, !3082, !382}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3071, file: !3050, line: 90, baseType: !3066, size: 64, offset: 192)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3071, file: !3050, line: 91, baseType: !3099, size: 64, offset: 256)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3082, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3040, file: !2992, line: 143, baseType: !3101, size: 64, offset: 256)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!3104, !2997}
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3106)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !53, line: 39, size: 384, elements: !3107)
!3107 = !{!3108, !3109, !3113, !3117, !3125, !3129}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3106, file: !53, line: 40, baseType: !52, size: 32)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3106, file: !53, line: 41, baseType: !3110, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!142}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3106, file: !53, line: 42, baseType: !3114, size: 64, offset: 128)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!101}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3106, file: !53, line: 43, baseType: !3118, size: 64, offset: 192)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!3121, !3123}
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !53, line: 19, flags: DIFlagFwdDecl)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3106, file: !53, line: 44, baseType: !3126, size: 64, offset: 256)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!3121}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3106, file: !53, line: 45, baseType: !520, size: 64, offset: 320)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3040, file: !2992, line: 144, baseType: !3131, size: 64, offset: 320)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DISubroutineType(types: !3133)
!3133 = !{!3121, !2997}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3040, file: !2992, line: 145, baseType: !3135, size: 64, offset: 384)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{null, !2997, !3138, !3139}
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2991, file: !2992, line: 70, baseType: !3141, size: 64, offset: 384)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !671, line: 123, size: 1024, elements: !3143)
!3143 = !{!3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3272, !3273, !3274, !3275, !3276}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3142, file: !671, line: 124, baseType: !162, size: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3142, file: !671, line: 125, baseType: !162, size: 32, offset: 32)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3142, file: !671, line: 135, baseType: !3141, size: 64, offset: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3142, file: !671, line: 136, baseType: !107, size: 64, offset: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3142, file: !671, line: 138, baseType: !225, size: 192, align: 64, offset: 192)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3142, file: !671, line: 140, baseType: !3121, size: 64, offset: 384)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3142, file: !671, line: 141, baseType: !7, size: 32, offset: 448)
!3151 = !DIDerivedType(tag: DW_TAG_member, scope: !3142, file: !671, line: 142, baseType: !3152, size: 256, offset: 512)
!3152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3142, file: !671, line: 142, size: 256, elements: !3153)
!3153 = !{!3154, !3200, !3204}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3152, file: !671, line: 143, baseType: !3155, size: 192)
!3155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !671, line: 91, size: 192, elements: !3156)
!3156 = !{!3157, !3158, !3159}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3155, file: !671, line: 92, baseType: !141, size: 64)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3155, file: !671, line: 94, baseType: !337, size: 64, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3155, file: !671, line: 100, baseType: !3160, size: 64, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !671, line: 180, size: 704, elements: !3162)
!3162 = !{!3163, !3164, !3165, !3172, !3173, !3174, !3198, !3199}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3161, file: !671, line: 182, baseType: !3141, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3161, file: !671, line: 183, baseType: !7, size: 32, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3161, file: !671, line: 186, baseType: !3166, size: 192, offset: 128)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3167, line: 19, size: 192, elements: !3168)
!3167 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3168 = !{!3169, !3170, !3171}
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3166, file: !3167, line: 20, baseType: !794, size: 128)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3166, file: !3167, line: 21, baseType: !7, size: 32, offset: 128)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3166, file: !3167, line: 22, baseType: !7, size: 32, offset: 160)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3161, file: !671, line: 187, baseType: !128, size: 32, offset: 320)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3161, file: !671, line: 188, baseType: !128, size: 32, offset: 352)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3161, file: !671, line: 189, baseType: !3175, size: 64, offset: 384)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !671, line: 168, size: 320, elements: !3177)
!3177 = !{!3178, !3182, !3186, !3190, !3194}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3176, file: !671, line: 169, baseType: !3179, size: 64)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!114, !768, !3160}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3176, file: !671, line: 171, baseType: !3183, size: 64, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!114, !3141, !107, !484}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3176, file: !671, line: 173, baseType: !3187, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!114, !3141}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3176, file: !671, line: 174, baseType: !3191, size: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!114, !3141, !3141, !107}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3176, file: !671, line: 176, baseType: !3195, size: 64, offset: 256)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!114, !768, !3141, !3160}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3161, file: !671, line: 192, baseType: !148, size: 128, offset: 448)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3161, file: !671, line: 194, baseType: !1299, size: 128, offset: 576)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3152, file: !671, line: 144, baseType: !3201, size: 64)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !671, line: 103, size: 64, elements: !3202)
!3202 = !{!3203}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3201, file: !671, line: 104, baseType: !3141, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3152, file: !671, line: 145, baseType: !3205, size: 256)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !671, line: 107, size: 256, elements: !3206)
!3206 = !{!3207, !3267, !3270, !3271}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3205, file: !671, line: 108, baseType: !3208, size: 64)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3210)
!3210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !671, line: 217, size: 768, elements: !3211)
!3211 = !{!3212, !3232, !3236, !3240, !3244, !3248, !3252, !3256, !3257, !3258, !3259, !3263}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3210, file: !671, line: 222, baseType: !3213, size: 64)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!114, !3216}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !671, line: 197, size: 1088, elements: !3218)
!3218 = !{!3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229, !3230, !3231}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3217, file: !671, line: 199, baseType: !3141, size: 64)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3217, file: !671, line: 200, baseType: !416, size: 64, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3217, file: !671, line: 201, baseType: !768, size: 64, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3217, file: !671, line: 202, baseType: !101, size: 64, offset: 192)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3217, file: !671, line: 205, baseType: !1067, size: 192, offset: 256)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3217, file: !671, line: 206, baseType: !1067, size: 192, offset: 448)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3217, file: !671, line: 207, baseType: !114, size: 32, offset: 640)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3217, file: !671, line: 208, baseType: !148, size: 128, offset: 704)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3217, file: !671, line: 209, baseType: !538, size: 64, offset: 832)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3217, file: !671, line: 211, baseType: !136, size: 64, offset: 896)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3217, file: !671, line: 212, baseType: !142, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3217, file: !671, line: 213, baseType: !142, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3217, file: !671, line: 214, baseType: !411, size: 64, offset: 1024)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3210, file: !671, line: 223, baseType: !3233, size: 64, offset: 64)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{null, !3216}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3210, file: !671, line: 236, baseType: !3237, size: 64, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!114, !768, !101}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3210, file: !671, line: 238, baseType: !3241, size: 64, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!101, !768, !1529}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3210, file: !671, line: 239, baseType: !3245, size: 64, offset: 256)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!101, !768, !101, !1529}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3210, file: !671, line: 240, baseType: !3249, size: 64, offset: 320)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{null, !768, !101}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3210, file: !671, line: 242, baseType: !3253, size: 64, offset: 384)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3254, size: 64)
!3254 = !DISubroutineType(types: !3255)
!3255 = !{!627, !3216, !538, !136, !582}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3210, file: !671, line: 252, baseType: !136, size: 64, offset: 448)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3210, file: !671, line: 259, baseType: !142, size: 8, offset: 512)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3210, file: !671, line: 260, baseType: !3253, size: 64, offset: 576)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3210, file: !671, line: 263, baseType: !3260, size: 64, offset: 640)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!1558, !3216, !1560}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3210, file: !671, line: 266, baseType: !3264, size: 64, offset: 704)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!114, !3216, !382}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3205, file: !671, line: 109, baseType: !3268, size: 64, offset: 64)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !671, line: 31, flags: DIFlagFwdDecl)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3205, file: !671, line: 110, baseType: !582, size: 64, offset: 128)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3205, file: !671, line: 111, baseType: !3141, size: 64, offset: 192)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3142, file: !671, line: 148, baseType: !101, size: 64, offset: 768)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3142, file: !671, line: 154, baseType: !235, size: 64, offset: 832)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3142, file: !671, line: 156, baseType: !146, size: 16, offset: 896)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3142, file: !671, line: 157, baseType: !484, size: 16, offset: 912)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3142, file: !671, line: 158, baseType: !3277, size: 64, offset: 960)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !671, line: 32, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2991, file: !2992, line: 71, baseType: !154, size: 32, offset: 448)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2991, file: !2992, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2991, file: !2992, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2991, file: !2992, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2991, file: !2992, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2991, file: !2992, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2988, file: !65, line: 463, baseType: !2987, size: 64, offset: 512)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2988, file: !65, line: 465, baseType: !3287, size: 64, offset: 576)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !65, line: 36, flags: DIFlagFwdDecl)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2988, file: !65, line: 467, baseType: !107, size: 64, offset: 640)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2988, file: !65, line: 468, baseType: !3291, size: 64, offset: 704)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3293)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !65, line: 87, size: 384, elements: !3294)
!3294 = !{!3295, !3296, !3297, !3301, !3306, !3310}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3293, file: !65, line: 88, baseType: !107, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3293, file: !65, line: 89, baseType: !3068, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3293, file: !65, line: 90, baseType: !3298, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!114, !2987, !3025}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3293, file: !65, line: 91, baseType: !3302, size: 64, offset: 192)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!538, !2987, !3305, !3138, !3139}
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3293, file: !65, line: 93, baseType: !3307, size: 64, offset: 256)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{null, !2987}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3293, file: !65, line: 95, baseType: !3311, size: 64, offset: 320)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3313)
!3313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !72, line: 278, size: 1472, elements: !3314)
!3314 = !{!3315, !3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3328, !3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3313, file: !72, line: 279, baseType: !3316, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!114, !2987}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3313, file: !72, line: 280, baseType: !3307, size: 64, offset: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3313, file: !72, line: 281, baseType: !3316, size: 64, offset: 128)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3313, file: !72, line: 282, baseType: !3316, size: 64, offset: 192)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3313, file: !72, line: 283, baseType: !3316, size: 64, offset: 256)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3313, file: !72, line: 284, baseType: !3316, size: 64, offset: 320)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3313, file: !72, line: 285, baseType: !3316, size: 64, offset: 384)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3313, file: !72, line: 286, baseType: !3316, size: 64, offset: 448)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3313, file: !72, line: 287, baseType: !3316, size: 64, offset: 512)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3313, file: !72, line: 288, baseType: !3316, size: 64, offset: 576)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3313, file: !72, line: 289, baseType: !3316, size: 64, offset: 640)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3313, file: !72, line: 290, baseType: !3316, size: 64, offset: 704)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3313, file: !72, line: 291, baseType: !3316, size: 64, offset: 768)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3313, file: !72, line: 292, baseType: !3316, size: 64, offset: 832)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3313, file: !72, line: 293, baseType: !3316, size: 64, offset: 896)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3313, file: !72, line: 294, baseType: !3316, size: 64, offset: 960)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3313, file: !72, line: 295, baseType: !3316, size: 64, offset: 1024)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3313, file: !72, line: 296, baseType: !3316, size: 64, offset: 1088)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3313, file: !72, line: 297, baseType: !3316, size: 64, offset: 1152)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3313, file: !72, line: 298, baseType: !3316, size: 64, offset: 1216)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3313, file: !72, line: 299, baseType: !3316, size: 64, offset: 1280)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3313, file: !72, line: 300, baseType: !3316, size: 64, offset: 1344)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3313, file: !72, line: 301, baseType: !3316, size: 64, offset: 1408)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2988, file: !65, line: 470, baseType: !3342, size: 64, offset: 768)
!3342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3343, size: 64)
!3343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3344, line: 82, size: 1408, elements: !3345)
!3344 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3345 = !{!3346, !3347, !3348, !3349, !3350, !3351, !3352, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3409, !3412, !3413}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3343, file: !3344, line: 83, baseType: !107, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3343, file: !3344, line: 84, baseType: !107, size: 64, offset: 64)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3343, file: !3344, line: 85, baseType: !2987, size: 64, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3343, file: !3344, line: 86, baseType: !3068, size: 64, offset: 192)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3343, file: !3344, line: 87, baseType: !3068, size: 64, offset: 256)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3343, file: !3344, line: 88, baseType: !3068, size: 64, offset: 320)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3343, file: !3344, line: 90, baseType: !3353, size: 64, offset: 384)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!114, !2987, !3356}
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !59, line: 95, size: 1152, elements: !3358)
!3358 = !{!3359, !3360, !3361, !3362, !3363, !3364, !3365, !3369, !3373, !3374, !3375, !3376, !3377, !3385, !3386, !3387, !3388, !3389, !3390}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3357, file: !59, line: 96, baseType: !107, size: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3357, file: !59, line: 97, baseType: !3342, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3357, file: !59, line: 99, baseType: !685, size: 64, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3357, file: !59, line: 100, baseType: !107, size: 64, offset: 192)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3357, file: !59, line: 102, baseType: !142, size: 8, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3357, file: !59, line: 103, baseType: !58, size: 32, offset: 288)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3357, file: !59, line: 105, baseType: !3366, size: 64, offset: 320)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3368)
!3368 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !59, line: 105, flags: DIFlagFwdDecl)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3357, file: !59, line: 106, baseType: !3370, size: 64, offset: 384)
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3372)
!3372 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !59, line: 106, flags: DIFlagFwdDecl)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3357, file: !59, line: 108, baseType: !3316, size: 64, offset: 448)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3357, file: !59, line: 109, baseType: !3307, size: 64, offset: 512)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3357, file: !59, line: 110, baseType: !3316, size: 64, offset: 576)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3357, file: !59, line: 111, baseType: !3307, size: 64, offset: 640)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3357, file: !59, line: 112, baseType: !3378, size: 64, offset: 704)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!114, !2987, !3381}
!3381 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !72, line: 52, baseType: !3382)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !72, line: 50, size: 32, elements: !3383)
!3383 = !{!3384}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3382, file: !72, line: 51, baseType: !114, size: 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3357, file: !59, line: 113, baseType: !3316, size: 64, offset: 768)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3357, file: !59, line: 114, baseType: !3068, size: 64, offset: 832)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3357, file: !59, line: 115, baseType: !3068, size: 64, offset: 896)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3357, file: !59, line: 117, baseType: !3311, size: 64, offset: 960)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3357, file: !59, line: 118, baseType: !3307, size: 64, offset: 1024)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3357, file: !59, line: 120, baseType: !3391, size: 64, offset: 1088)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !59, line: 120, flags: DIFlagFwdDecl)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3343, file: !3344, line: 91, baseType: !3298, size: 64, offset: 448)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3343, file: !3344, line: 92, baseType: !3316, size: 64, offset: 512)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3343, file: !3344, line: 93, baseType: !3307, size: 64, offset: 576)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3343, file: !3344, line: 94, baseType: !3316, size: 64, offset: 640)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3343, file: !3344, line: 95, baseType: !3307, size: 64, offset: 704)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3343, file: !3344, line: 97, baseType: !3316, size: 64, offset: 768)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3343, file: !3344, line: 98, baseType: !3316, size: 64, offset: 832)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3343, file: !3344, line: 100, baseType: !3378, size: 64, offset: 896)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3343, file: !3344, line: 101, baseType: !3316, size: 64, offset: 960)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3343, file: !3344, line: 103, baseType: !3316, size: 64, offset: 1024)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3343, file: !3344, line: 105, baseType: !3316, size: 64, offset: 1088)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3343, file: !3344, line: 107, baseType: !3311, size: 64, offset: 1152)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3343, file: !3344, line: 109, baseType: !3406, size: 64, offset: 1216)
!3406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3407, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3408)
!3408 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3344, line: 109, flags: DIFlagFwdDecl)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3343, file: !3344, line: 111, baseType: !3410, size: 64, offset: 1280)
!3410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3411 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3344, line: 111, flags: DIFlagFwdDecl)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3343, file: !3344, line: 112, baseType: !700, offset: 1344)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3343, file: !3344, line: 114, baseType: !142, size: 8, offset: 1344)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2988, file: !65, line: 471, baseType: !3356, size: 64, offset: 832)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2988, file: !65, line: 473, baseType: !101, size: 64, offset: 896)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2988, file: !65, line: 475, baseType: !101, size: 64, offset: 960)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2988, file: !65, line: 480, baseType: !1067, size: 192, offset: 1024)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2988, file: !65, line: 484, baseType: !3419, size: 576, offset: 1216)
!3419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !65, line: 361, size: 576, elements: !3420)
!3420 = !{!3421, !3422, !3423, !3424, !3425, !3426}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3419, file: !65, line: 362, baseType: !148, size: 128)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3419, file: !65, line: 363, baseType: !148, size: 128, offset: 128)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3419, file: !65, line: 364, baseType: !148, size: 128, offset: 256)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3419, file: !65, line: 365, baseType: !148, size: 128, offset: 384)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3419, file: !65, line: 366, baseType: !142, size: 8, offset: 512)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3419, file: !65, line: 367, baseType: !64, size: 32, offset: 544)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2988, file: !65, line: 485, baseType: !3428, size: 2304, offset: 1792)
!3428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !72, line: 565, size: 2304, elements: !3429)
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3525, !3529}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3428, file: !72, line: 566, baseType: !3381, size: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3428, file: !72, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3428, file: !72, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3428, file: !72, line: 569, baseType: !142, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3428, file: !72, line: 570, baseType: !142, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3428, file: !72, line: 571, baseType: !142, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3428, file: !72, line: 572, baseType: !142, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3428, file: !72, line: 573, baseType: !142, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3428, file: !72, line: 574, baseType: !142, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3428, file: !72, line: 575, baseType: !142, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3428, file: !72, line: 576, baseType: !142, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3428, file: !72, line: 577, baseType: !128, size: 32, offset: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3428, file: !72, line: 578, baseType: !798, offset: 96)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3428, file: !72, line: 580, baseType: !148, size: 128, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3428, file: !72, line: 581, baseType: !167, size: 192, offset: 256)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3428, file: !72, line: 582, baseType: !3446, size: 64, offset: 448)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3448, line: 43, size: 1472, elements: !3449)
!3448 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3449 = !{!3450, !3451, !3452, !3453, !3454, !3457, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3447, file: !3448, line: 44, baseType: !107, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3447, file: !3448, line: 45, baseType: !114, size: 32, offset: 64)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3447, file: !3448, line: 46, baseType: !148, size: 128, offset: 128)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3447, file: !3448, line: 47, baseType: !798, offset: 256)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3447, file: !3448, line: 48, baseType: !3455, size: 64, offset: 256)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !72, line: 533, flags: DIFlagFwdDecl)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3447, file: !3448, line: 49, baseType: !3458, size: 320, offset: 320)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3459, line: 11, size: 320, elements: !3460)
!3459 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3460 = !{!3461, !3462, !3463, !3468}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3458, file: !3459, line: 16, baseType: !694, size: 128)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3458, file: !3459, line: 17, baseType: !141, size: 64, offset: 128)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3458, file: !3459, line: 18, baseType: !3464, size: 64, offset: 192)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{null, !3467}
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3458, file: !3459, line: 19, baseType: !128, size: 32, offset: 256)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3447, file: !3448, line: 50, baseType: !141, size: 64, offset: 640)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3447, file: !3448, line: 51, baseType: !283, size: 64, offset: 704)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3447, file: !3448, line: 52, baseType: !283, size: 64, offset: 768)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3447, file: !3448, line: 53, baseType: !283, size: 64, offset: 832)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3447, file: !3448, line: 54, baseType: !283, size: 64, offset: 896)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3447, file: !3448, line: 55, baseType: !283, size: 64, offset: 960)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3447, file: !3448, line: 56, baseType: !141, size: 64, offset: 1024)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3447, file: !3448, line: 57, baseType: !141, size: 64, offset: 1088)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3447, file: !3448, line: 58, baseType: !141, size: 64, offset: 1152)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3447, file: !3448, line: 59, baseType: !141, size: 64, offset: 1216)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3447, file: !3448, line: 60, baseType: !141, size: 64, offset: 1280)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3447, file: !3448, line: 61, baseType: !2987, size: 64, offset: 1344)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3447, file: !3448, line: 62, baseType: !142, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3447, file: !3448, line: 63, baseType: !142, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3428, file: !72, line: 583, baseType: !142, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3428, file: !72, line: 584, baseType: !142, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3428, file: !72, line: 585, baseType: !142, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3428, file: !72, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3428, file: !72, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3428, file: !72, line: 592, baseType: !275, size: 512, offset: 576)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3428, file: !72, line: 593, baseType: !235, size: 64, offset: 1088)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3428, file: !72, line: 594, baseType: !1458, size: 256, offset: 1152)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3428, file: !72, line: 595, baseType: !1299, size: 128, offset: 1408)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3428, file: !72, line: 596, baseType: !3455, size: 64, offset: 1536)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3428, file: !72, line: 597, baseType: !162, size: 32, offset: 1600)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3428, file: !72, line: 598, baseType: !162, size: 32, offset: 1632)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3428, file: !72, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3428, file: !72, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3428, file: !72, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3428, file: !72, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3428, file: !72, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3428, file: !72, line: 604, baseType: !142, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3428, file: !72, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3428, file: !72, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3428, file: !72, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3428, file: !72, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3428, file: !72, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3428, file: !72, line: 610, baseType: !7, size: 32, offset: 1696)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3428, file: !72, line: 611, baseType: !71, size: 32, offset: 1728)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3428, file: !72, line: 612, baseType: !79, size: 32, offset: 1760)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3428, file: !72, line: 613, baseType: !114, size: 32, offset: 1792)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3428, file: !72, line: 614, baseType: !114, size: 32, offset: 1824)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3428, file: !72, line: 615, baseType: !235, size: 64, offset: 1856)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3428, file: !72, line: 616, baseType: !235, size: 64, offset: 1920)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3428, file: !72, line: 617, baseType: !235, size: 64, offset: 1984)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3428, file: !72, line: 618, baseType: !235, size: 64, offset: 2048)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3428, file: !72, line: 620, baseType: !3516, size: 64, offset: 2112)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !72, line: 536, size: 256, elements: !3518)
!3518 = !{!3519, !3520, !3521, !3522}
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3517, file: !72, line: 537, baseType: !798)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3517, file: !72, line: 538, baseType: !7, size: 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3517, file: !72, line: 540, baseType: !148, size: 128, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3517, file: !72, line: 543, baseType: !3523, size: 64, offset: 192)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !72, line: 534, flags: DIFlagFwdDecl)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3428, file: !72, line: 621, baseType: !3526, size: 64, offset: 2176)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{null, !2987, !1878}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3428, file: !72, line: 622, baseType: !3530, size: 64, offset: 2240)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !72, line: 622, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2988, file: !65, line: 486, baseType: !3533, size: 64, offset: 4096)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !72, line: 642, size: 1792, elements: !3535)
!3535 = !{!3536, !3537, !3538, !3542, !3543, !3544}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3534, file: !72, line: 643, baseType: !3313, size: 1472)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3534, file: !72, line: 644, baseType: !3316, size: 64, offset: 1472)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3534, file: !72, line: 645, baseType: !3539, size: 64, offset: 1536)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{null, !2987, !142}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3534, file: !72, line: 646, baseType: !3316, size: 64, offset: 1600)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3534, file: !72, line: 647, baseType: !3307, size: 64, offset: 1664)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3534, file: !72, line: 648, baseType: !3307, size: 64, offset: 1728)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !2988, file: !65, line: 493, baseType: !3546, size: 64, offset: 4160)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !65, line: 493, flags: DIFlagFwdDecl)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !2988, file: !65, line: 499, baseType: !148, size: 128, offset: 4224)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2988, file: !65, line: 502, baseType: !3550, size: 64, offset: 4352)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3552)
!3552 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !65, line: 502, flags: DIFlagFwdDecl)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2988, file: !65, line: 504, baseType: !3554, size: 64, offset: 4416)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2988, file: !65, line: 505, baseType: !235, size: 64, offset: 4480)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2988, file: !65, line: 510, baseType: !235, size: 64, offset: 4544)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2988, file: !65, line: 511, baseType: !3558, size: 64, offset: 4608)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3560)
!3560 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !65, line: 511, flags: DIFlagFwdDecl)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2988, file: !65, line: 513, baseType: !3562, size: 64, offset: 4672)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !65, line: 288, size: 128, elements: !3564)
!3564 = !{!3565, !3566}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3563, file: !65, line: 293, baseType: !7, size: 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3563, file: !65, line: 294, baseType: !141, size: 64, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2988, file: !65, line: 515, baseType: !148, size: 128, offset: 4736)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2988, file: !65, line: 526, baseType: !3569, offset: 4864)
!3569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3570, line: 5, elements: !184)
!3570 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2988, file: !65, line: 528, baseType: !3572, size: 64, offset: 4864)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3574, line: 14, flags: DIFlagFwdDecl)
!3574 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2988, file: !65, line: 529, baseType: !3576, size: 64, offset: 4928)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3344, line: 22, flags: DIFlagFwdDecl)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2988, file: !65, line: 534, baseType: !564, size: 32, offset: 4992)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2988, file: !65, line: 535, baseType: !128, size: 32, offset: 5024)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2988, file: !65, line: 537, baseType: !798, offset: 5056)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2988, file: !65, line: 538, baseType: !148, size: 128, offset: 5056)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2988, file: !65, line: 540, baseType: !3583, size: 64, offset: 5184)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3585, line: 54, size: 960, elements: !3586)
!3585 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3586 = !{!3587, !3588, !3589, !3590, !3591, !3592, !3593, !3597, !3601, !3602, !3603, !3604, !3608, !3612, !3613}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3584, file: !3585, line: 55, baseType: !107, size: 64)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3584, file: !3585, line: 56, baseType: !685, size: 64, offset: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3584, file: !3585, line: 58, baseType: !3068, size: 64, offset: 128)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3584, file: !3585, line: 59, baseType: !3068, size: 64, offset: 192)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3584, file: !3585, line: 60, baseType: !2997, size: 64, offset: 256)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3584, file: !3585, line: 62, baseType: !3298, size: 64, offset: 320)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3584, file: !3585, line: 63, baseType: !3594, size: 64, offset: 384)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!538, !2987, !3305}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3584, file: !3585, line: 65, baseType: !3598, size: 64, offset: 448)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{null, !3583}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3584, file: !3585, line: 66, baseType: !3307, size: 64, offset: 512)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3584, file: !3585, line: 68, baseType: !3316, size: 64, offset: 576)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3584, file: !3585, line: 70, baseType: !3104, size: 64, offset: 640)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3584, file: !3585, line: 71, baseType: !3605, size: 64, offset: 704)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!3121, !2987}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3584, file: !3585, line: 73, baseType: !3609, size: 64, offset: 768)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{null, !2987, !3138, !3139}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3584, file: !3585, line: 75, baseType: !3311, size: 64, offset: 832)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3584, file: !3585, line: 77, baseType: !3410, size: 64, offset: 896)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2988, file: !65, line: 541, baseType: !3068, size: 64, offset: 5248)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2988, file: !65, line: 543, baseType: !3307, size: 64, offset: 5312)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2988, file: !65, line: 544, baseType: !3617, size: 64, offset: 5376)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !65, line: 45, flags: DIFlagFwdDecl)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2988, file: !65, line: 545, baseType: !3620, size: 64, offset: 5440)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !65, line: 47, flags: DIFlagFwdDecl)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2988, file: !65, line: 547, baseType: !142, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2988, file: !65, line: 548, baseType: !142, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2988, file: !65, line: 549, baseType: !142, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2988, file: !65, line: 550, baseType: !142, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "this_device", scope: !2979, file: !2980, line: 85, baseType: !2987, size: 64, offset: 384)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2979, file: !2980, line: 86, baseType: !3068, size: 64, offset: 448)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !2979, file: !2980, line: 87, baseType: !107, size: 64, offset: 512)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2979, file: !2980, line: 88, baseType: !484, size: 16, offset: 576)
!3630 = !DIGlobalVariableExpression(var: !3631, expr: !DIExpression())
!3631 = distinct !DIGlobalVariable(name: "rng_chrdev_ops", scope: !2, file: !3, line: 282, type: !1517, isLocal: true, isDefinition: true)
!3632 = !DIGlobalVariableExpression(var: !3633, expr: !DIExpression())
!3633 = distinct !DIGlobalVariable(name: "reading_mutex", scope: !2, file: !3, line: 39, type: !1067, isLocal: true, isDefinition: true)
!3634 = !DIGlobalVariableExpression(var: !3635, expr: !DIExpression())
!3635 = distinct !DIGlobalVariable(name: "data_avail", scope: !2, file: !3, line: 40, type: !114, isLocal: true, isDefinition: true)
!3636 = !DIGlobalVariableExpression(var: !3637, expr: !DIExpression())
!3637 = distinct !DIGlobalVariable(name: "rng_dev_groups", scope: !2, file: !3, line: 419, type: !3638, isLocal: true, isDefinition: true)
!3638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3069, size: 128, elements: !1862)
!3639 = !DIGlobalVariableExpression(var: !3640, expr: !DIExpression())
!3640 = distinct !DIGlobalVariable(name: "rng_dev_group", scope: !2, file: !3, line: 419, type: !3070, isLocal: true, isDefinition: true)
!3641 = !DIGlobalVariableExpression(var: !3642, expr: !DIExpression())
!3642 = distinct !DIGlobalVariable(name: "rng_dev_attrs", scope: !2, file: !3, line: 412, type: !3643, isLocal: true, isDefinition: true)
!3643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3056, size: 256, elements: !1822)
!3644 = !DIGlobalVariableExpression(var: !3645, expr: !DIExpression())
!3645 = distinct !DIGlobalVariable(name: "dev_attr_rng_current", scope: !2, file: !3, line: 402, type: !3646, isLocal: true, isDefinition: true)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !65, line: 99, size: 256, elements: !3647)
!3647 = !{!3648, !3649, !3654}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3646, file: !65, line: 100, baseType: !3057, size: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3646, file: !65, line: 101, baseType: !3650, size: 64, offset: 128)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DISubroutineType(types: !3652)
!3652 = !{!627, !2987, !3653, !538}
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3646, file: !65, line: 103, baseType: !3655, size: 64, offset: 192)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DISubroutineType(types: !3657)
!3657 = !{!627, !2987, !3653, !107, !136}
!3658 = !DIGlobalVariableExpression(var: !3659, expr: !DIExpression())
!3659 = distinct !DIGlobalVariable(name: "dev_attr_rng_available", scope: !2, file: !3, line: 405, type: !3646, isLocal: true, isDefinition: true)
!3660 = !DIGlobalVariableExpression(var: !3661, expr: !DIExpression())
!3661 = distinct !DIGlobalVariable(name: "dev_attr_rng_selected", scope: !2, file: !3, line: 408, type: !3646, isLocal: true, isDefinition: true)
!3662 = !DIGlobalVariableExpression(var: !3663, expr: !DIExpression())
!3663 = distinct !DIGlobalVariable(name: "rng_mutex", scope: !2, file: !3, line: 37, type: !1067, isLocal: true, isDefinition: true)
!3664 = !DIGlobalVariableExpression(var: !3665, expr: !DIExpression())
!3665 = distinct !DIGlobalVariable(name: "rng_list", scope: !2, file: !3, line: 35, type: !148, isLocal: true, isDefinition: true)
!3666 = !DIGlobalVariableExpression(var: !3667, expr: !DIExpression())
!3667 = distinct !DIGlobalVariable(name: "__key", scope: !3668, file: !168, line: 88, type: !700, isLocal: true, isDefinition: true)
!3668 = distinct !DISubprogram(name: "__init_completion", scope: !168, file: !168, line: 85, type: !3669, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!3669 = !DISubroutineType(types: !3670)
!3670 = !{null, !2268}
!3671 = !{i32 7, !"Dwarf Version", i32 4}
!3672 = !{i32 2, !"Debug Info Version", i32 3}
!3673 = !{i32 1, !"wchar_size", i32 2}
!3674 = !{i32 1, !"Code Model", i32 2}
!3675 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3676 = distinct !DISubprogram(name: "unregister_miscdev", scope: !3, file: !3, line: 421, type: !2451, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!3677 = !DILocation(line: 423, column: 2, scope: !3676)
!3678 = !DILocation(line: 424, column: 1, scope: !3676)
!3679 = distinct !DISubprogram(name: "hwrng_register", scope: !3, file: !3, line: 468, type: !112, scopeLine: 469, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!3680 = !DILocalVariable(name: "rng", arg: 1, scope: !3679, file: !3, line: 468, type: !102)
!3681 = !DILocation(line: 468, column: 34, scope: !3679)
!3682 = !DILocalVariable(name: "err", scope: !3679, file: !3, line: 470, type: !114)
!3683 = !DILocation(line: 470, column: 6, scope: !3679)
!3684 = !DILocalVariable(name: "tmp", scope: !3679, file: !3, line: 471, type: !102)
!3685 = !DILocation(line: 471, column: 16, scope: !3679)
!3686 = !DILocalVariable(name: "rng_list_ptr", scope: !3679, file: !3, line: 472, type: !151)
!3687 = !DILocation(line: 472, column: 20, scope: !3679)
!3688 = !DILocalVariable(name: "is_new_current", scope: !3679, file: !3, line: 473, type: !142)
!3689 = !DILocation(line: 473, column: 7, scope: !3679)
!3690 = !DILocation(line: 475, column: 7, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 475, column: 6)
!3692 = !DILocation(line: 475, column: 12, scope: !3691)
!3693 = !DILocation(line: 475, column: 17, scope: !3691)
!3694 = !DILocation(line: 475, column: 22, scope: !3691)
!3695 = !DILocation(line: 475, column: 27, scope: !3691)
!3696 = !DILocation(line: 475, column: 37, scope: !3691)
!3697 = !DILocation(line: 475, column: 41, scope: !3691)
!3698 = !DILocation(line: 475, column: 46, scope: !3691)
!3699 = !DILocation(line: 475, column: 6, scope: !3679)
!3700 = !DILocation(line: 476, column: 3, scope: !3691)
!3701 = !DILocation(line: 478, column: 2, scope: !3679)
!3702 = !DILocation(line: 481, column: 6, scope: !3679)
!3703 = !DILocalVariable(name: "__mptr", scope: !3704, file: !3, line: 482, type: !101)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !3, line: 482, column: 2)
!3705 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 482, column: 2)
!3706 = !DILocation(line: 482, column: 2, scope: !3704)
!3707 = !DILocation(line: 482, column: 2, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3704, file: !3, line: 482, column: 2)
!3709 = !DILocation(line: 482, column: 2, scope: !3705)
!3710 = !DILocation(line: 482, column: 2, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3705, file: !3, line: 482, column: 2)
!3712 = !DILocation(line: 483, column: 14, scope: !3713)
!3713 = distinct !DILexicalBlock(scope: !3714, file: !3, line: 483, column: 7)
!3714 = distinct !DILexicalBlock(scope: !3711, file: !3, line: 482, column: 44)
!3715 = !DILocation(line: 483, column: 19, scope: !3713)
!3716 = !DILocation(line: 483, column: 25, scope: !3713)
!3717 = !DILocation(line: 483, column: 30, scope: !3713)
!3718 = !DILocation(line: 483, column: 7, scope: !3713)
!3719 = !DILocation(line: 483, column: 36, scope: !3713)
!3720 = !DILocation(line: 483, column: 7, scope: !3714)
!3721 = !DILocation(line: 484, column: 4, scope: !3713)
!3722 = !DILocation(line: 485, column: 2, scope: !3714)
!3723 = !DILocalVariable(name: "__mptr", scope: !3724, file: !3, line: 482, type: !101)
!3724 = distinct !DILexicalBlock(scope: !3711, file: !3, line: 482, column: 2)
!3725 = !DILocation(line: 482, column: 2, scope: !3724)
!3726 = !DILocation(line: 482, column: 2, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3724, file: !3, line: 482, column: 2)
!3728 = distinct !{!3728, !3709, !3729}
!3729 = !DILocation(line: 485, column: 2, scope: !3705)
!3730 = !DILocation(line: 487, column: 2, scope: !3679)
!3731 = !DILocation(line: 488, column: 12, scope: !3679)
!3732 = !DILocation(line: 488, column: 17, scope: !3679)
!3733 = !DILocation(line: 488, column: 2, scope: !3679)
!3734 = !DILocation(line: 491, column: 2, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 491, column: 2)
!3736 = !DILocation(line: 491, column: 2, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 491, column: 2)
!3738 = !DILocalVariable(name: "__mptr", scope: !3739, file: !3, line: 492, type: !101)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !3, line: 492, column: 9)
!3740 = distinct !DILexicalBlock(scope: !3737, file: !3, line: 491, column: 41)
!3741 = !DILocation(line: 492, column: 9, scope: !3739)
!3742 = !DILocation(line: 492, column: 9, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 492, column: 9)
!3744 = !DILocation(line: 492, column: 7, scope: !3740)
!3745 = !DILocation(line: 493, column: 7, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3740, file: !3, line: 493, column: 7)
!3747 = !DILocation(line: 493, column: 12, scope: !3746)
!3748 = !DILocation(line: 493, column: 22, scope: !3746)
!3749 = !DILocation(line: 493, column: 27, scope: !3746)
!3750 = !DILocation(line: 493, column: 20, scope: !3746)
!3751 = !DILocation(line: 493, column: 7, scope: !3740)
!3752 = !DILocation(line: 494, column: 4, scope: !3746)
!3753 = !DILocation(line: 495, column: 2, scope: !3740)
!3754 = distinct !{!3754, !3734, !3755}
!3755 = !DILocation(line: 495, column: 2, scope: !3735)
!3756 = !DILocation(line: 496, column: 17, scope: !3679)
!3757 = !DILocation(line: 496, column: 22, scope: !3679)
!3758 = !DILocation(line: 496, column: 28, scope: !3679)
!3759 = !DILocation(line: 496, column: 2, scope: !3679)
!3760 = !DILocation(line: 498, column: 7, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 498, column: 6)
!3762 = !DILocation(line: 498, column: 19, scope: !3761)
!3763 = !DILocation(line: 499, column: 8, scope: !3761)
!3764 = !DILocation(line: 499, column: 28, scope: !3761)
!3765 = !DILocation(line: 499, column: 31, scope: !3761)
!3766 = !DILocation(line: 499, column: 36, scope: !3761)
!3767 = !DILocation(line: 499, column: 46, scope: !3761)
!3768 = !DILocation(line: 499, column: 59, scope: !3761)
!3769 = !DILocation(line: 499, column: 44, scope: !3761)
!3770 = !DILocation(line: 498, column: 6, scope: !3679)
!3771 = !DILocation(line: 505, column: 25, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3761, file: !3, line: 499, column: 69)
!3773 = !DILocation(line: 505, column: 9, scope: !3772)
!3774 = !DILocation(line: 505, column: 7, scope: !3772)
!3775 = !DILocation(line: 506, column: 7, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3772, file: !3, line: 506, column: 7)
!3777 = !DILocation(line: 506, column: 7, scope: !3772)
!3778 = !DILocation(line: 507, column: 4, scope: !3776)
!3779 = !DILocation(line: 511, column: 18, scope: !3772)
!3780 = !DILocation(line: 512, column: 13, scope: !3772)
!3781 = !DILocation(line: 512, column: 18, scope: !3772)
!3782 = !DILocation(line: 512, column: 3, scope: !3772)
!3783 = !DILocation(line: 513, column: 2, scope: !3772)
!3784 = !DILocation(line: 514, column: 2, scope: !3679)
!3785 = !DILocation(line: 515, column: 6, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 515, column: 6)
!3787 = !DILocation(line: 515, column: 21, scope: !3786)
!3788 = !DILocation(line: 515, column: 25, scope: !3786)
!3789 = !DILocation(line: 515, column: 30, scope: !3786)
!3790 = !DILocation(line: 515, column: 6, scope: !3679)
!3791 = !DILocation(line: 523, column: 24, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3786, file: !3, line: 515, column: 36)
!3793 = !DILocation(line: 523, column: 3, scope: !3792)
!3794 = !DILocation(line: 524, column: 2, scope: !3792)
!3795 = !DILocation(line: 525, column: 6, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3679, file: !3, line: 525, column: 6)
!3797 = !DILocation(line: 525, column: 6, scope: !3679)
!3798 = !DILocation(line: 526, column: 11, scope: !3796)
!3799 = !DILocation(line: 526, column: 3, scope: !3796)
!3800 = !DILocation(line: 527, column: 2, scope: !3679)
!3801 = !DILabel(scope: !3679, name: "out_unlock", file: !3, line: 528)
!3802 = !DILocation(line: 528, column: 1, scope: !3679)
!3803 = !DILocation(line: 529, column: 2, scope: !3679)
!3804 = !DILabel(scope: !3679, name: "out", file: !3, line: 530)
!3805 = !DILocation(line: 530, column: 1, scope: !3679)
!3806 = !DILocation(line: 531, column: 9, scope: !3679)
!3807 = !DILocation(line: 531, column: 2, scope: !3679)
!3808 = !DILocation(line: 532, column: 1, scope: !3679)
!3809 = !DILocalVariable(name: "x", arg: 1, scope: !3668, file: !168, line: 85, type: !2268)
!3810 = !DILocation(line: 85, column: 57, scope: !3668)
!3811 = !DILocation(line: 87, column: 2, scope: !3668)
!3812 = !DILocation(line: 87, column: 5, scope: !3668)
!3813 = !DILocation(line: 87, column: 10, scope: !3668)
!3814 = !DILocation(line: 88, column: 2, scope: !3668)
!3815 = !DILocation(line: 88, column: 2, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3668, file: !168, line: 88, column: 2)
!3817 = !DILocation(line: 89, column: 1, scope: !3668)
!3818 = distinct !DISubprogram(name: "list_add_tail", scope: !3819, file: !3819, line: 98, type: !3820, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!3819 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!3820 = !DISubroutineType(types: !3821)
!3821 = !{null, !151, !151}
!3822 = !DILocalVariable(name: "new", arg: 1, scope: !3818, file: !3819, line: 98, type: !151)
!3823 = !DILocation(line: 98, column: 52, scope: !3818)
!3824 = !DILocalVariable(name: "head", arg: 2, scope: !3818, file: !3819, line: 98, type: !151)
!3825 = !DILocation(line: 98, column: 75, scope: !3818)
!3826 = !DILocation(line: 100, column: 13, scope: !3818)
!3827 = !DILocation(line: 100, column: 18, scope: !3818)
!3828 = !DILocation(line: 100, column: 24, scope: !3818)
!3829 = !DILocation(line: 100, column: 30, scope: !3818)
!3830 = !DILocation(line: 100, column: 2, scope: !3818)
!3831 = !DILocation(line: 101, column: 1, scope: !3818)
!3832 = distinct !DISubprogram(name: "set_current_rng", scope: !3, file: !3, line: 86, type: !112, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!3833 = !DILocalVariable(name: "rng", arg: 1, scope: !3832, file: !3, line: 86, type: !102)
!3834 = !DILocation(line: 86, column: 42, scope: !3832)
!3835 = !DILocalVariable(name: "err", scope: !3832, file: !3, line: 88, type: !114)
!3836 = !DILocation(line: 88, column: 6, scope: !3832)
!3837 = !DILocation(line: 90, column: 2, scope: !3832)
!3838 = !DILocation(line: 90, column: 2, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3840, file: !3, line: 90, column: 2)
!3840 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 90, column: 2)
!3841 = !DILocation(line: 90, column: 2, scope: !3840)
!3842 = !DILocation(line: 90, column: 2, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3839, file: !3, line: 90, column: 2)
!3844 = !DILocation(line: 90, column: 2, scope: !3845)
!3845 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 90, column: 2)
!3846 = !DILocation(line: 90, column: 2, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 90, column: 2)
!3848 = !{i32 -2142788604, i32 -2142788575, i32 -2142788529, i32 -2142788471, i32 -2142788417, i32 -2142788363, i32 -2142788308, i32 -2142788277}
!3849 = !DILocation(line: 90, column: 2, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3851, file: !3, line: 90, column: 2)
!3851 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 90, column: 2)
!3852 = !{i32 -2142787826, i32 -2142787819, i32 -2142787765, i32 -2142787734, i32 -2142787704}
!3853 = !DILocation(line: 90, column: 2, scope: !3851)
!3854 = !DILocation(line: 92, column: 19, scope: !3832)
!3855 = !DILocation(line: 92, column: 8, scope: !3832)
!3856 = !DILocation(line: 92, column: 6, scope: !3832)
!3857 = !DILocation(line: 93, column: 6, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3832, file: !3, line: 93, column: 6)
!3859 = !DILocation(line: 93, column: 6, scope: !3832)
!3860 = !DILocation(line: 94, column: 10, scope: !3858)
!3861 = !DILocation(line: 94, column: 3, scope: !3858)
!3862 = !DILocation(line: 96, column: 2, scope: !3832)
!3863 = !DILocation(line: 97, column: 16, scope: !3832)
!3864 = !DILocation(line: 97, column: 14, scope: !3832)
!3865 = !DILocation(line: 99, column: 2, scope: !3832)
!3866 = !DILocation(line: 100, column: 1, scope: !3832)
!3867 = distinct !DISubprogram(name: "kref_get", scope: !155, file: !155, line: 43, type: !3868, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{null, !3870}
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!3871 = !DILocalVariable(name: "kref", arg: 1, scope: !3867, file: !155, line: 43, type: !3870)
!3872 = !DILocation(line: 43, column: 42, scope: !3867)
!3873 = !DILocation(line: 45, column: 16, scope: !3867)
!3874 = !DILocation(line: 45, column: 22, scope: !3867)
!3875 = !DILocation(line: 45, column: 2, scope: !3867)
!3876 = !DILocation(line: 46, column: 1, scope: !3867)
!3877 = distinct !DISubprogram(name: "add_early_randomness", scope: !3, file: !3, line: 64, type: !117, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!3878 = !DILocalVariable(name: "rng", arg: 1, scope: !3877, file: !3, line: 64, type: !102)
!3879 = !DILocation(line: 64, column: 48, scope: !3877)
!3880 = !DILocalVariable(name: "bytes_read", scope: !3877, file: !3, line: 66, type: !114)
!3881 = !DILocation(line: 66, column: 6, scope: !3877)
!3882 = !DILocalVariable(name: "size", scope: !3877, file: !3, line: 67, type: !136)
!3883 = !DILocation(line: 67, column: 9, scope: !3877)
!3884 = !DILocalVariable(name: "__UNIQUE_ID___x209", scope: !3885, file: !3, line: 67, type: !136)
!3885 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 67, column: 16)
!3886 = !DILocation(line: 67, column: 16, scope: !3885)
!3887 = !DILocalVariable(name: "__UNIQUE_ID___y210", scope: !3885, file: !3, line: 67, type: !136)
!3888 = !DILocation(line: 69, column: 2, scope: !3877)
!3889 = !DILocation(line: 70, column: 28, scope: !3877)
!3890 = !DILocation(line: 70, column: 33, scope: !3877)
!3891 = !DILocation(line: 70, column: 45, scope: !3877)
!3892 = !DILocation(line: 70, column: 15, scope: !3877)
!3893 = !DILocation(line: 70, column: 13, scope: !3877)
!3894 = !DILocation(line: 71, column: 2, scope: !3877)
!3895 = !DILocation(line: 72, column: 6, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3877, file: !3, line: 72, column: 6)
!3897 = !DILocation(line: 72, column: 17, scope: !3896)
!3898 = !DILocation(line: 72, column: 6, scope: !3877)
!3899 = !DILocation(line: 73, column: 25, scope: !3896)
!3900 = !DILocation(line: 73, column: 37, scope: !3896)
!3901 = !DILocation(line: 73, column: 3, scope: !3896)
!3902 = !DILocation(line: 74, column: 1, scope: !3877)
!3903 = distinct !DISubprogram(name: "put_rng", scope: !3, file: !3, line: 135, type: !117, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!3904 = !DILocalVariable(name: "rng", arg: 1, scope: !3903, file: !3, line: 135, type: !102)
!3905 = !DILocation(line: 135, column: 35, scope: !3903)
!3906 = !DILocation(line: 141, column: 2, scope: !3903)
!3907 = !DILocation(line: 142, column: 6, scope: !3908)
!3908 = distinct !DILexicalBlock(scope: !3903, file: !3, line: 142, column: 6)
!3909 = !DILocation(line: 142, column: 6, scope: !3903)
!3910 = !DILocation(line: 143, column: 13, scope: !3908)
!3911 = !DILocation(line: 143, column: 18, scope: !3908)
!3912 = !DILocation(line: 143, column: 3, scope: !3908)
!3913 = !DILocation(line: 144, column: 2, scope: !3903)
!3914 = !DILocation(line: 145, column: 1, scope: !3903)
!3915 = distinct !DISubprogram(name: "hwrng_unregister", scope: !3, file: !3, line: 535, type: !117, scopeLine: 536, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!3916 = !DILocalVariable(name: "rng", arg: 1, scope: !3915, file: !3, line: 535, type: !102)
!3917 = !DILocation(line: 535, column: 37, scope: !3915)
!3918 = !DILocalVariable(name: "old_rng", scope: !3915, file: !3, line: 537, type: !102)
!3919 = !DILocation(line: 537, column: 16, scope: !3915)
!3920 = !DILocalVariable(name: "new_rng", scope: !3915, file: !3, line: 537, type: !102)
!3921 = !DILocation(line: 537, column: 26, scope: !3915)
!3922 = !DILocalVariable(name: "err", scope: !3915, file: !3, line: 538, type: !114)
!3923 = !DILocation(line: 538, column: 6, scope: !3915)
!3924 = !DILocation(line: 540, column: 2, scope: !3915)
!3925 = !DILocation(line: 542, column: 12, scope: !3915)
!3926 = !DILocation(line: 542, column: 10, scope: !3915)
!3927 = !DILocation(line: 543, column: 12, scope: !3915)
!3928 = !DILocation(line: 543, column: 17, scope: !3915)
!3929 = !DILocation(line: 543, column: 2, scope: !3915)
!3930 = !DILocation(line: 544, column: 6, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3915, file: !3, line: 544, column: 6)
!3932 = !DILocation(line: 544, column: 21, scope: !3931)
!3933 = !DILocation(line: 544, column: 18, scope: !3931)
!3934 = !DILocation(line: 544, column: 6, scope: !3915)
!3935 = !DILocation(line: 545, column: 9, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 544, column: 26)
!3937 = !DILocation(line: 545, column: 7, scope: !3936)
!3938 = !DILocation(line: 546, column: 7, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3936, file: !3, line: 546, column: 7)
!3940 = !DILocation(line: 546, column: 7, scope: !3936)
!3941 = !DILocation(line: 547, column: 4, scope: !3942)
!3942 = distinct !DILexicalBlock(scope: !3939, file: !3, line: 546, column: 12)
!3943 = !DILocation(line: 548, column: 24, scope: !3942)
!3944 = !DILocation(line: 549, column: 3, scope: !3942)
!3945 = !DILocation(line: 550, column: 2, scope: !3936)
!3946 = !DILocation(line: 552, column: 12, scope: !3915)
!3947 = !DILocation(line: 552, column: 10, scope: !3915)
!3948 = !DILocation(line: 553, column: 6, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3915, file: !3, line: 553, column: 6)
!3950 = !DILocation(line: 553, column: 6, scope: !3915)
!3951 = !DILocation(line: 554, column: 3, scope: !3952)
!3952 = distinct !DILexicalBlock(scope: !3949, file: !3, line: 553, column: 29)
!3953 = !DILocation(line: 555, column: 7, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3952, file: !3, line: 555, column: 7)
!3955 = !DILocation(line: 555, column: 7, scope: !3952)
!3956 = !DILocation(line: 556, column: 17, scope: !3954)
!3957 = !DILocation(line: 556, column: 4, scope: !3954)
!3958 = !DILocation(line: 557, column: 2, scope: !3952)
!3959 = !DILocation(line: 558, column: 3, scope: !3949)
!3960 = !DILocation(line: 560, column: 6, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3915, file: !3, line: 560, column: 6)
!3962 = !DILocation(line: 560, column: 6, scope: !3915)
!3963 = !DILocation(line: 561, column: 7, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 561, column: 7)
!3965 = distinct !DILexicalBlock(scope: !3961, file: !3, line: 560, column: 15)
!3966 = !DILocation(line: 561, column: 18, scope: !3964)
!3967 = !DILocation(line: 561, column: 15, scope: !3964)
!3968 = !DILocation(line: 561, column: 7, scope: !3965)
!3969 = !DILocation(line: 562, column: 25, scope: !3964)
!3970 = !DILocation(line: 562, column: 4, scope: !3964)
!3971 = !DILocation(line: 563, column: 11, scope: !3965)
!3972 = !DILocation(line: 563, column: 3, scope: !3965)
!3973 = !DILocation(line: 564, column: 2, scope: !3965)
!3974 = !DILocation(line: 566, column: 23, scope: !3915)
!3975 = !DILocation(line: 566, column: 28, scope: !3915)
!3976 = !DILocation(line: 566, column: 2, scope: !3915)
!3977 = !DILocation(line: 567, column: 1, scope: !3915)
!3978 = distinct !DISubprogram(name: "list_del", scope: !3819, file: !3819, line: 144, type: !3979, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{null, !151}
!3981 = !DILocalVariable(name: "entry", arg: 1, scope: !3978, file: !3819, line: 144, type: !151)
!3982 = !DILocation(line: 144, column: 47, scope: !3978)
!3983 = !DILocation(line: 146, column: 19, scope: !3978)
!3984 = !DILocation(line: 146, column: 2, scope: !3978)
!3985 = !DILocation(line: 147, column: 2, scope: !3978)
!3986 = !DILocation(line: 147, column: 9, scope: !3978)
!3987 = !DILocation(line: 147, column: 14, scope: !3978)
!3988 = !DILocation(line: 148, column: 2, scope: !3978)
!3989 = !DILocation(line: 148, column: 9, scope: !3978)
!3990 = !DILocation(line: 148, column: 14, scope: !3978)
!3991 = !DILocation(line: 149, column: 1, scope: !3978)
!3992 = distinct !DISubprogram(name: "enable_best_rng", scope: !3, file: !3, line: 299, type: !3993, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!114}
!3995 = !DILocalVariable(name: "ret", scope: !3992, file: !3, line: 301, type: !114)
!3996 = !DILocation(line: 301, column: 6, scope: !3992)
!3997 = !DILocation(line: 303, column: 2, scope: !3992)
!3998 = !DILocation(line: 303, column: 2, scope: !3999)
!3999 = distinct !DILexicalBlock(scope: !4000, file: !3, line: 303, column: 2)
!4000 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 303, column: 2)
!4001 = !DILocation(line: 303, column: 2, scope: !4000)
!4002 = !DILocation(line: 303, column: 2, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 303, column: 2)
!4004 = !DILocation(line: 303, column: 2, scope: !4005)
!4005 = distinct !DILexicalBlock(scope: !4003, file: !3, line: 303, column: 2)
!4006 = !DILocation(line: 303, column: 2, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4003, file: !3, line: 303, column: 2)
!4008 = !{i32 -2142784555, i32 -2142784526, i32 -2142784480, i32 -2142784422, i32 -2142784368, i32 -2142784314, i32 -2142784259, i32 -2142784228}
!4009 = !DILocation(line: 303, column: 2, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4011, file: !3, line: 303, column: 2)
!4011 = distinct !DILexicalBlock(scope: !4003, file: !3, line: 303, column: 2)
!4012 = !{i32 -2142783776, i32 -2142783769, i32 -2142783715, i32 -2142783684, i32 -2142783654}
!4013 = !DILocation(line: 303, column: 2, scope: !4011)
!4014 = !DILocation(line: 306, column: 7, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !3992, file: !3, line: 306, column: 6)
!4016 = !DILocation(line: 306, column: 6, scope: !3992)
!4017 = !DILocalVariable(name: "new_rng", scope: !4018, file: !3, line: 307, type: !102)
!4018 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 306, column: 30)
!4019 = !DILocation(line: 307, column: 17, scope: !4018)
!4020 = !DILocalVariable(name: "__mptr", scope: !4021, file: !3, line: 309, type: !101)
!4021 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 309, column: 13)
!4022 = !DILocation(line: 309, column: 13, scope: !4021)
!4023 = !DILocation(line: 309, column: 13, scope: !4024)
!4024 = distinct !DILexicalBlock(scope: !4021, file: !3, line: 309, column: 13)
!4025 = !DILocation(line: 309, column: 11, scope: !4018)
!4026 = !DILocation(line: 310, column: 11, scope: !4018)
!4027 = !DILocation(line: 310, column: 22, scope: !4018)
!4028 = !DILocation(line: 310, column: 19, scope: !4018)
!4029 = !DILocation(line: 310, column: 10, scope: !4018)
!4030 = !DILocation(line: 310, column: 57, scope: !4018)
!4031 = !DILocation(line: 310, column: 41, scope: !4018)
!4032 = !DILocation(line: 310, column: 7, scope: !4018)
!4033 = !DILocation(line: 311, column: 8, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4018, file: !3, line: 311, column: 7)
!4035 = !DILocation(line: 311, column: 7, scope: !4018)
!4036 = !DILocation(line: 312, column: 24, scope: !4034)
!4037 = !DILocation(line: 312, column: 4, scope: !4034)
!4038 = !DILocation(line: 313, column: 2, scope: !4018)
!4039 = !DILocation(line: 314, column: 3, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4015, file: !3, line: 313, column: 9)
!4041 = !DILocation(line: 315, column: 23, scope: !4040)
!4042 = !DILocation(line: 316, column: 7, scope: !4040)
!4043 = !DILocation(line: 319, column: 9, scope: !3992)
!4044 = !DILocation(line: 319, column: 2, scope: !3992)
!4045 = distinct !DISubprogram(name: "drop_current_rng", scope: !3, file: !3, line: 102, type: !2451, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4046 = !DILocation(line: 104, column: 2, scope: !4045)
!4047 = !DILocation(line: 104, column: 2, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4049, file: !3, line: 104, column: 2)
!4049 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 104, column: 2)
!4050 = !DILocation(line: 104, column: 2, scope: !4049)
!4051 = !DILocation(line: 104, column: 2, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4048, file: !3, line: 104, column: 2)
!4053 = !DILocation(line: 104, column: 2, scope: !4054)
!4054 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 104, column: 2)
!4055 = !DILocation(line: 104, column: 2, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 104, column: 2)
!4057 = !{i32 -2142787365, i32 -2142787336, i32 -2142787290, i32 -2142787232, i32 -2142787178, i32 -2142787124, i32 -2142787069, i32 -2142787038}
!4058 = !DILocation(line: 104, column: 2, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4060, file: !3, line: 104, column: 2)
!4060 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 104, column: 2)
!4061 = !{i32 -2142786586, i32 -2142786579, i32 -2142786525, i32 -2142786494, i32 -2142786464}
!4062 = !DILocation(line: 104, column: 2, scope: !4060)
!4063 = !DILocation(line: 105, column: 7, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 105, column: 6)
!4065 = !DILocation(line: 105, column: 6, scope: !4045)
!4066 = !DILocation(line: 106, column: 3, scope: !4064)
!4067 = !DILocation(line: 109, column: 12, scope: !4045)
!4068 = !DILocation(line: 109, column: 25, scope: !4045)
!4069 = !DILocation(line: 109, column: 2, scope: !4045)
!4070 = !DILocation(line: 110, column: 14, scope: !4045)
!4071 = !DILocation(line: 111, column: 1, scope: !4045)
!4072 = distinct !DISubprogram(name: "get_current_rng_nolock", scope: !3, file: !3, line: 114, type: !4073, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!102}
!4075 = !DILocation(line: 116, column: 6, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4072, file: !3, line: 116, column: 6)
!4077 = !DILocation(line: 116, column: 6, scope: !4072)
!4078 = !DILocation(line: 117, column: 13, scope: !4076)
!4079 = !DILocation(line: 117, column: 26, scope: !4076)
!4080 = !DILocation(line: 117, column: 3, scope: !4076)
!4081 = !DILocation(line: 119, column: 9, scope: !4072)
!4082 = !DILocation(line: 119, column: 2, scope: !4072)
!4083 = distinct !DISubprogram(name: "list_empty", scope: !3819, file: !3819, line: 280, type: !4084, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4084 = !DISubroutineType(types: !4085)
!4085 = !{!114, !4086}
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!4088 = !DILocalVariable(name: "head", arg: 1, scope: !4083, file: !3819, line: 280, type: !4086)
!4089 = !DILocation(line: 280, column: 54, scope: !4083)
!4090 = !DILocation(line: 282, column: 9, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4083, file: !3819, line: 282, column: 9)
!4092 = !DILocation(line: 282, column: 9, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4091, file: !3819, line: 282, column: 9)
!4094 = !DILocation(line: 282, column: 34, scope: !4083)
!4095 = !DILocation(line: 282, column: 31, scope: !4083)
!4096 = !DILocation(line: 282, column: 2, scope: !4083)
!4097 = distinct !DISubprogram(name: "devm_hwrng_register", scope: !3, file: !3, line: 585, type: !4098, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!114, !2987, !102}
!4100 = !DILocalVariable(name: "dev", arg: 1, scope: !4097, file: !3, line: 585, type: !2987)
!4101 = !DILocation(line: 585, column: 40, scope: !4097)
!4102 = !DILocalVariable(name: "rng", arg: 2, scope: !4097, file: !3, line: 585, type: !102)
!4103 = !DILocation(line: 585, column: 59, scope: !4097)
!4104 = !DILocalVariable(name: "ptr", scope: !4097, file: !3, line: 587, type: !2865)
!4105 = !DILocation(line: 587, column: 17, scope: !4097)
!4106 = !DILocalVariable(name: "error", scope: !4097, file: !3, line: 588, type: !114)
!4107 = !DILocation(line: 588, column: 6, scope: !4097)
!4108 = !DILocation(line: 590, column: 8, scope: !4097)
!4109 = !DILocation(line: 590, column: 6, scope: !4097)
!4110 = !DILocation(line: 591, column: 7, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !4097, file: !3, line: 591, column: 6)
!4112 = !DILocation(line: 591, column: 6, scope: !4097)
!4113 = !DILocation(line: 592, column: 3, scope: !4111)
!4114 = !DILocation(line: 594, column: 25, scope: !4097)
!4115 = !DILocation(line: 594, column: 10, scope: !4097)
!4116 = !DILocation(line: 594, column: 8, scope: !4097)
!4117 = !DILocation(line: 595, column: 6, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4097, file: !3, line: 595, column: 6)
!4119 = !DILocation(line: 595, column: 6, scope: !4097)
!4120 = !DILocation(line: 596, column: 15, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 595, column: 13)
!4122 = !DILocation(line: 596, column: 3, scope: !4121)
!4123 = !DILocation(line: 597, column: 10, scope: !4121)
!4124 = !DILocation(line: 597, column: 3, scope: !4121)
!4125 = !DILocation(line: 600, column: 9, scope: !4097)
!4126 = !DILocation(line: 600, column: 3, scope: !4097)
!4127 = !DILocation(line: 600, column: 7, scope: !4097)
!4128 = !DILocation(line: 601, column: 13, scope: !4097)
!4129 = !DILocation(line: 601, column: 18, scope: !4097)
!4130 = !DILocation(line: 601, column: 2, scope: !4097)
!4131 = !DILocation(line: 602, column: 2, scope: !4097)
!4132 = !DILocation(line: 603, column: 1, scope: !4097)
!4133 = distinct !DISubprogram(name: "devres_alloc", scope: !65, file: !65, line: 178, type: !4134, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!101, !4136, !136, !186}
!4136 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !65, line: 165, baseType: !4137)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{null, !2987, !101}
!4140 = !DILocalVariable(name: "release", arg: 1, scope: !4133, file: !65, line: 178, type: !4136)
!4141 = !DILocation(line: 178, column: 47, scope: !4133)
!4142 = !DILocalVariable(name: "size", arg: 2, scope: !4133, file: !65, line: 178, type: !136)
!4143 = !DILocation(line: 178, column: 63, scope: !4133)
!4144 = !DILocalVariable(name: "gfp", arg: 3, scope: !4133, file: !65, line: 178, type: !186)
!4145 = !DILocation(line: 178, column: 75, scope: !4133)
!4146 = !DILocation(line: 180, column: 27, scope: !4133)
!4147 = !DILocation(line: 180, column: 36, scope: !4133)
!4148 = !DILocation(line: 180, column: 42, scope: !4133)
!4149 = !DILocation(line: 180, column: 9, scope: !4133)
!4150 = !DILocation(line: 180, column: 2, scope: !4133)
!4151 = distinct !DISubprogram(name: "devm_hwrng_release", scope: !3, file: !3, line: 570, type: !4138, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4152 = !DILocalVariable(name: "dev", arg: 1, scope: !4151, file: !3, line: 570, type: !2987)
!4153 = !DILocation(line: 570, column: 47, scope: !4151)
!4154 = !DILocalVariable(name: "res", arg: 2, scope: !4151, file: !3, line: 570, type: !101)
!4155 = !DILocation(line: 570, column: 58, scope: !4151)
!4156 = !DILocation(line: 572, column: 37, scope: !4151)
!4157 = !DILocation(line: 572, column: 20, scope: !4151)
!4158 = !DILocation(line: 572, column: 19, scope: !4151)
!4159 = !DILocation(line: 572, column: 2, scope: !4151)
!4160 = !DILocation(line: 573, column: 1, scope: !4151)
!4161 = distinct !DISubprogram(name: "devm_hwrng_unregister", scope: !3, file: !3, line: 606, type: !4162, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4162 = !DISubroutineType(types: !4163)
!4163 = !{null, !2987, !102}
!4164 = !DILocalVariable(name: "dev", arg: 1, scope: !4161, file: !3, line: 606, type: !2987)
!4165 = !DILocation(line: 606, column: 43, scope: !4161)
!4166 = !DILocalVariable(name: "rng", arg: 2, scope: !4161, file: !3, line: 606, type: !102)
!4167 = !DILocation(line: 606, column: 62, scope: !4161)
!4168 = !DILocation(line: 608, column: 17, scope: !4161)
!4169 = !DILocation(line: 608, column: 60, scope: !4161)
!4170 = !DILocation(line: 608, column: 2, scope: !4161)
!4171 = !DILocation(line: 609, column: 1, scope: !4161)
!4172 = distinct !DISubprogram(name: "devm_hwrng_match", scope: !3, file: !3, line: 575, type: !4173, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!114, !2987, !101, !101}
!4175 = !DILocalVariable(name: "dev", arg: 1, scope: !4172, file: !3, line: 575, type: !2987)
!4176 = !DILocation(line: 575, column: 44, scope: !4172)
!4177 = !DILocalVariable(name: "res", arg: 2, scope: !4172, file: !3, line: 575, type: !101)
!4178 = !DILocation(line: 575, column: 55, scope: !4172)
!4179 = !DILocalVariable(name: "data", arg: 3, scope: !4172, file: !3, line: 575, type: !101)
!4180 = !DILocation(line: 575, column: 66, scope: !4172)
!4181 = !DILocalVariable(name: "r", scope: !4172, file: !3, line: 577, type: !2865)
!4182 = !DILocation(line: 577, column: 17, scope: !4172)
!4183 = !DILocation(line: 577, column: 21, scope: !4172)
!4184 = !DILocalVariable(name: "__ret_warn_on", scope: !4185, file: !3, line: 579, type: !114)
!4185 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 579, column: 6)
!4186 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 579, column: 6)
!4187 = !DILocation(line: 579, column: 6, scope: !4185)
!4188 = !DILocation(line: 579, column: 6, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4185, file: !3, line: 579, column: 6)
!4190 = !DILocation(line: 579, column: 6, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4189, file: !3, line: 579, column: 6)
!4192 = !DILocation(line: 579, column: 6, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 579, column: 6)
!4194 = !DILocation(line: 579, column: 6, scope: !4195)
!4195 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 579, column: 6)
!4196 = !{i32 -2142760878, i32 -2142760849, i32 -2142760803, i32 -2142760745, i32 -2142760691, i32 -2142760637, i32 -2142760582, i32 -2142760551}
!4197 = !DILocation(line: 579, column: 6, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 579, column: 6)
!4199 = !{i32 -2142760140, i32 -2142760133, i32 -2142760081, i32 -2142760050, i32 -2142760020}
!4200 = !DILocation(line: 579, column: 6, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4191, file: !3, line: 579, column: 6)
!4202 = !DILocation(line: 579, column: 6, scope: !4186)
!4203 = !DILocation(line: 579, column: 6, scope: !4172)
!4204 = !DILocation(line: 580, column: 3, scope: !4186)
!4205 = !DILocation(line: 582, column: 10, scope: !4172)
!4206 = !DILocation(line: 582, column: 9, scope: !4172)
!4207 = !DILocation(line: 582, column: 15, scope: !4172)
!4208 = !DILocation(line: 582, column: 12, scope: !4172)
!4209 = !DILocation(line: 582, column: 2, scope: !4172)
!4210 = !DILocation(line: 583, column: 1, scope: !4172)
!4211 = distinct !DISubprogram(name: "hwrng_modexit", scope: !3, file: !3, line: 636, type: !2451, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4212 = !DILocation(line: 638, column: 2, scope: !4211)
!4213 = !DILocation(line: 639, column: 2, scope: !4211)
!4214 = !DILocation(line: 639, column: 2, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4216, file: !3, line: 639, column: 2)
!4216 = distinct !DILexicalBlock(scope: !4211, file: !3, line: 639, column: 2)
!4217 = !DILocation(line: 639, column: 2, scope: !4216)
!4218 = !DILocation(line: 639, column: 2, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 639, column: 2)
!4220 = !DILocation(line: 639, column: 2, scope: !4221)
!4221 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 639, column: 2)
!4222 = !DILocation(line: 639, column: 2, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 639, column: 2)
!4224 = !{i32 -2142758548, i32 -2142758519, i32 -2142758473, i32 -2142758415, i32 -2142758361, i32 -2142758307, i32 -2142758252, i32 -2142758221}
!4225 = !DILocation(line: 639, column: 2, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4227, file: !3, line: 639, column: 2)
!4227 = distinct !DILexicalBlock(scope: !4219, file: !3, line: 639, column: 2)
!4228 = !{i32 -2142757769, i32 -2142757762, i32 -2142757708, i32 -2142757677, i32 -2142757647}
!4229 = !DILocation(line: 639, column: 2, scope: !4227)
!4230 = !DILocation(line: 640, column: 8, scope: !4211)
!4231 = !DILocation(line: 640, column: 2, scope: !4211)
!4232 = !DILocation(line: 641, column: 8, scope: !4211)
!4233 = !DILocation(line: 641, column: 2, scope: !4211)
!4234 = !DILocation(line: 642, column: 2, scope: !4211)
!4235 = !DILocation(line: 644, column: 2, scope: !4211)
!4236 = !DILocation(line: 645, column: 1, scope: !4211)
!4237 = distinct !DISubprogram(name: "hwrng_modinit", scope: !3, file: !3, line: 612, type: !3993, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4238 = !DILocalVariable(name: "s", arg: 1, scope: !4239, file: !94, line: 445, type: !977)
!4239 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !94, file: !94, line: 445, type: !4240, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!101, !977, !186, !136}
!4242 = !DILocation(line: 445, column: 72, scope: !4239, inlinedAt: !4243)
!4243 = distinct !DILocation(line: 552, column: 10, scope: !4244, inlinedAt: !4249)
!4244 = distinct !DILexicalBlock(scope: !4245, file: !94, line: 540, column: 34)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !94, line: 540, column: 6)
!4246 = distinct !DISubprogram(name: "kmalloc", scope: !94, file: !94, line: 538, type: !4247, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4247 = !DISubroutineType(types: !4248)
!4248 = !{!101, !136, !186}
!4249 = distinct !DILocation(line: 621, column: 16, scope: !4237)
!4250 = !DILocalVariable(name: "flags", arg: 2, scope: !4239, file: !94, line: 446, type: !186)
!4251 = !DILocation(line: 446, column: 9, scope: !4239, inlinedAt: !4243)
!4252 = !DILocalVariable(name: "size", arg: 3, scope: !4239, file: !94, line: 446, type: !136)
!4253 = !DILocation(line: 446, column: 23, scope: !4239, inlinedAt: !4243)
!4254 = !DILocalVariable(name: "ret", scope: !4239, file: !94, line: 448, type: !101)
!4255 = !DILocation(line: 448, column: 8, scope: !4239, inlinedAt: !4243)
!4256 = !DILocalVariable(name: "flags", arg: 1, scope: !4257, file: !94, line: 318, type: !186)
!4257 = distinct !DISubprogram(name: "kmalloc_type", scope: !94, file: !94, line: 318, type: !4258, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4258 = !DISubroutineType(types: !4259)
!4259 = !{!93, !186}
!4260 = !DILocation(line: 318, column: 67, scope: !4257, inlinedAt: !4261)
!4261 = distinct !DILocation(line: 553, column: 20, scope: !4244, inlinedAt: !4249)
!4262 = !DILocalVariable(name: "size", arg: 1, scope: !4263, file: !94, line: 346, type: !136)
!4263 = distinct !DISubprogram(name: "kmalloc_index", scope: !94, file: !94, line: 346, type: !4264, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!7, !136}
!4266 = !DILocation(line: 346, column: 58, scope: !4263, inlinedAt: !4267)
!4267 = distinct !DILocation(line: 547, column: 11, scope: !4244, inlinedAt: !4249)
!4268 = !DILocalVariable(name: "size", arg: 1, scope: !4269, file: !94, line: 472, type: !136)
!4269 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !94, file: !94, line: 472, type: !4270, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!101, !136, !186, !7}
!4272 = !DILocation(line: 472, column: 28, scope: !4269, inlinedAt: !4273)
!4273 = distinct !DILocation(line: 481, column: 9, scope: !4274, inlinedAt: !4275)
!4274 = distinct !DISubprogram(name: "kmalloc_large", scope: !94, file: !94, line: 478, type: !4247, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4275 = distinct !DILocation(line: 545, column: 11, scope: !4276, inlinedAt: !4249)
!4276 = distinct !DILexicalBlock(scope: !4244, file: !94, line: 544, column: 7)
!4277 = !DILocalVariable(name: "flags", arg: 2, scope: !4269, file: !94, line: 472, type: !186)
!4278 = !DILocation(line: 472, column: 40, scope: !4269, inlinedAt: !4273)
!4279 = !DILocalVariable(name: "order", arg: 3, scope: !4269, file: !94, line: 472, type: !7)
!4280 = !DILocation(line: 472, column: 60, scope: !4269, inlinedAt: !4273)
!4281 = !DILocalVariable(name: "size", arg: 1, scope: !4274, file: !94, line: 478, type: !136)
!4282 = !DILocation(line: 478, column: 51, scope: !4274, inlinedAt: !4275)
!4283 = !DILocalVariable(name: "flags", arg: 2, scope: !4274, file: !94, line: 478, type: !186)
!4284 = !DILocation(line: 478, column: 63, scope: !4274, inlinedAt: !4275)
!4285 = !DILocalVariable(name: "order", scope: !4274, file: !94, line: 480, type: !7)
!4286 = !DILocation(line: 480, column: 15, scope: !4274, inlinedAt: !4275)
!4287 = !DILocalVariable(name: "size", arg: 1, scope: !4246, file: !94, line: 538, type: !136)
!4288 = !DILocation(line: 538, column: 45, scope: !4246, inlinedAt: !4249)
!4289 = !DILocalVariable(name: "flags", arg: 2, scope: !4246, file: !94, line: 538, type: !186)
!4290 = !DILocation(line: 538, column: 57, scope: !4246, inlinedAt: !4249)
!4291 = !DILocalVariable(name: "index", scope: !4244, file: !94, line: 542, type: !7)
!4292 = !DILocation(line: 542, column: 16, scope: !4244, inlinedAt: !4249)
!4293 = !DILocation(line: 445, column: 72, scope: !4239, inlinedAt: !4294)
!4294 = distinct !DILocation(line: 552, column: 10, scope: !4244, inlinedAt: !4295)
!4295 = distinct !DILocation(line: 617, column: 15, scope: !4237)
!4296 = !DILocation(line: 446, column: 9, scope: !4239, inlinedAt: !4294)
!4297 = !DILocation(line: 446, column: 23, scope: !4239, inlinedAt: !4294)
!4298 = !DILocation(line: 448, column: 8, scope: !4239, inlinedAt: !4294)
!4299 = !DILocation(line: 318, column: 67, scope: !4257, inlinedAt: !4300)
!4300 = distinct !DILocation(line: 553, column: 20, scope: !4244, inlinedAt: !4295)
!4301 = !DILocation(line: 346, column: 58, scope: !4263, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 547, column: 11, scope: !4244, inlinedAt: !4295)
!4303 = !DILocation(line: 472, column: 28, scope: !4269, inlinedAt: !4304)
!4304 = distinct !DILocation(line: 481, column: 9, scope: !4274, inlinedAt: !4305)
!4305 = distinct !DILocation(line: 545, column: 11, scope: !4276, inlinedAt: !4295)
!4306 = !DILocation(line: 472, column: 40, scope: !4269, inlinedAt: !4304)
!4307 = !DILocation(line: 472, column: 60, scope: !4269, inlinedAt: !4304)
!4308 = !DILocation(line: 478, column: 51, scope: !4274, inlinedAt: !4305)
!4309 = !DILocation(line: 478, column: 63, scope: !4274, inlinedAt: !4305)
!4310 = !DILocation(line: 480, column: 15, scope: !4274, inlinedAt: !4305)
!4311 = !DILocation(line: 538, column: 45, scope: !4246, inlinedAt: !4295)
!4312 = !DILocation(line: 538, column: 57, scope: !4246, inlinedAt: !4295)
!4313 = !DILocation(line: 542, column: 16, scope: !4244, inlinedAt: !4295)
!4314 = !DILocalVariable(name: "ret", scope: !4237, file: !3, line: 614, type: !114)
!4315 = !DILocation(line: 614, column: 6, scope: !4237)
!4316 = !DILocation(line: 617, column: 23, scope: !4237)
!4317 = !DILocation(line: 540, column: 27, scope: !4245, inlinedAt: !4295)
!4318 = !DILocation(line: 540, column: 6, scope: !4245, inlinedAt: !4295)
!4319 = !DILocation(line: 540, column: 6, scope: !4246, inlinedAt: !4295)
!4320 = !DILocation(line: 544, column: 7, scope: !4276, inlinedAt: !4295)
!4321 = !DILocation(line: 544, column: 12, scope: !4276, inlinedAt: !4295)
!4322 = !DILocation(line: 544, column: 7, scope: !4244, inlinedAt: !4295)
!4323 = !DILocation(line: 545, column: 25, scope: !4276, inlinedAt: !4295)
!4324 = !DILocation(line: 545, column: 31, scope: !4276, inlinedAt: !4295)
!4325 = !DILocation(line: 480, column: 33, scope: !4274, inlinedAt: !4305)
!4326 = !DILocation(line: 480, column: 23, scope: !4274, inlinedAt: !4305)
!4327 = !DILocation(line: 481, column: 29, scope: !4274, inlinedAt: !4305)
!4328 = !DILocation(line: 481, column: 35, scope: !4274, inlinedAt: !4305)
!4329 = !DILocation(line: 481, column: 42, scope: !4274, inlinedAt: !4305)
!4330 = !DILocation(line: 474, column: 23, scope: !4269, inlinedAt: !4304)
!4331 = !DILocation(line: 474, column: 29, scope: !4269, inlinedAt: !4304)
!4332 = !DILocation(line: 474, column: 36, scope: !4269, inlinedAt: !4304)
!4333 = !DILocation(line: 474, column: 9, scope: !4269, inlinedAt: !4304)
!4334 = !DILocation(line: 545, column: 4, scope: !4276, inlinedAt: !4295)
!4335 = !DILocation(line: 547, column: 25, scope: !4244, inlinedAt: !4295)
!4336 = !DILocation(line: 348, column: 7, scope: !4337, inlinedAt: !4302)
!4337 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 348, column: 6)
!4338 = !DILocation(line: 348, column: 6, scope: !4263, inlinedAt: !4302)
!4339 = !DILocation(line: 349, column: 3, scope: !4337, inlinedAt: !4302)
!4340 = !DILocation(line: 351, column: 6, scope: !4341, inlinedAt: !4302)
!4341 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 351, column: 6)
!4342 = !DILocation(line: 351, column: 11, scope: !4341, inlinedAt: !4302)
!4343 = !DILocation(line: 351, column: 6, scope: !4263, inlinedAt: !4302)
!4344 = !DILocation(line: 352, column: 3, scope: !4341, inlinedAt: !4302)
!4345 = !DILocation(line: 354, column: 32, scope: !4346, inlinedAt: !4302)
!4346 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 354, column: 6)
!4347 = !DILocation(line: 354, column: 37, scope: !4346, inlinedAt: !4302)
!4348 = !DILocation(line: 354, column: 42, scope: !4346, inlinedAt: !4302)
!4349 = !DILocation(line: 354, column: 45, scope: !4346, inlinedAt: !4302)
!4350 = !DILocation(line: 354, column: 50, scope: !4346, inlinedAt: !4302)
!4351 = !DILocation(line: 354, column: 6, scope: !4263, inlinedAt: !4302)
!4352 = !DILocation(line: 355, column: 3, scope: !4346, inlinedAt: !4302)
!4353 = !DILocation(line: 356, column: 32, scope: !4354, inlinedAt: !4302)
!4354 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 356, column: 6)
!4355 = !DILocation(line: 356, column: 37, scope: !4354, inlinedAt: !4302)
!4356 = !DILocation(line: 356, column: 43, scope: !4354, inlinedAt: !4302)
!4357 = !DILocation(line: 356, column: 46, scope: !4354, inlinedAt: !4302)
!4358 = !DILocation(line: 356, column: 51, scope: !4354, inlinedAt: !4302)
!4359 = !DILocation(line: 356, column: 6, scope: !4263, inlinedAt: !4302)
!4360 = !DILocation(line: 357, column: 3, scope: !4354, inlinedAt: !4302)
!4361 = !DILocation(line: 358, column: 6, scope: !4362, inlinedAt: !4302)
!4362 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 358, column: 6)
!4363 = !DILocation(line: 358, column: 11, scope: !4362, inlinedAt: !4302)
!4364 = !DILocation(line: 358, column: 6, scope: !4263, inlinedAt: !4302)
!4365 = !DILocation(line: 358, column: 26, scope: !4362, inlinedAt: !4302)
!4366 = !DILocation(line: 359, column: 6, scope: !4367, inlinedAt: !4302)
!4367 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 359, column: 6)
!4368 = !DILocation(line: 359, column: 11, scope: !4367, inlinedAt: !4302)
!4369 = !DILocation(line: 359, column: 6, scope: !4263, inlinedAt: !4302)
!4370 = !DILocation(line: 359, column: 26, scope: !4367, inlinedAt: !4302)
!4371 = !DILocation(line: 360, column: 6, scope: !4372, inlinedAt: !4302)
!4372 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 360, column: 6)
!4373 = !DILocation(line: 360, column: 11, scope: !4372, inlinedAt: !4302)
!4374 = !DILocation(line: 360, column: 6, scope: !4263, inlinedAt: !4302)
!4375 = !DILocation(line: 360, column: 26, scope: !4372, inlinedAt: !4302)
!4376 = !DILocation(line: 361, column: 6, scope: !4377, inlinedAt: !4302)
!4377 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 361, column: 6)
!4378 = !DILocation(line: 361, column: 11, scope: !4377, inlinedAt: !4302)
!4379 = !DILocation(line: 361, column: 6, scope: !4263, inlinedAt: !4302)
!4380 = !DILocation(line: 361, column: 26, scope: !4377, inlinedAt: !4302)
!4381 = !DILocation(line: 362, column: 6, scope: !4382, inlinedAt: !4302)
!4382 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 362, column: 6)
!4383 = !DILocation(line: 362, column: 11, scope: !4382, inlinedAt: !4302)
!4384 = !DILocation(line: 362, column: 6, scope: !4263, inlinedAt: !4302)
!4385 = !DILocation(line: 362, column: 26, scope: !4382, inlinedAt: !4302)
!4386 = !DILocation(line: 363, column: 6, scope: !4387, inlinedAt: !4302)
!4387 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 363, column: 6)
!4388 = !DILocation(line: 363, column: 11, scope: !4387, inlinedAt: !4302)
!4389 = !DILocation(line: 363, column: 6, scope: !4263, inlinedAt: !4302)
!4390 = !DILocation(line: 363, column: 26, scope: !4387, inlinedAt: !4302)
!4391 = !DILocation(line: 364, column: 6, scope: !4392, inlinedAt: !4302)
!4392 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 364, column: 6)
!4393 = !DILocation(line: 364, column: 11, scope: !4392, inlinedAt: !4302)
!4394 = !DILocation(line: 364, column: 6, scope: !4263, inlinedAt: !4302)
!4395 = !DILocation(line: 364, column: 26, scope: !4392, inlinedAt: !4302)
!4396 = !DILocation(line: 365, column: 6, scope: !4397, inlinedAt: !4302)
!4397 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 365, column: 6)
!4398 = !DILocation(line: 365, column: 11, scope: !4397, inlinedAt: !4302)
!4399 = !DILocation(line: 365, column: 6, scope: !4263, inlinedAt: !4302)
!4400 = !DILocation(line: 365, column: 26, scope: !4397, inlinedAt: !4302)
!4401 = !DILocation(line: 366, column: 6, scope: !4402, inlinedAt: !4302)
!4402 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 366, column: 6)
!4403 = !DILocation(line: 366, column: 11, scope: !4402, inlinedAt: !4302)
!4404 = !DILocation(line: 366, column: 6, scope: !4263, inlinedAt: !4302)
!4405 = !DILocation(line: 366, column: 26, scope: !4402, inlinedAt: !4302)
!4406 = !DILocation(line: 367, column: 6, scope: !4407, inlinedAt: !4302)
!4407 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 367, column: 6)
!4408 = !DILocation(line: 367, column: 11, scope: !4407, inlinedAt: !4302)
!4409 = !DILocation(line: 367, column: 6, scope: !4263, inlinedAt: !4302)
!4410 = !DILocation(line: 367, column: 26, scope: !4407, inlinedAt: !4302)
!4411 = !DILocation(line: 368, column: 6, scope: !4412, inlinedAt: !4302)
!4412 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 368, column: 6)
!4413 = !DILocation(line: 368, column: 11, scope: !4412, inlinedAt: !4302)
!4414 = !DILocation(line: 368, column: 6, scope: !4263, inlinedAt: !4302)
!4415 = !DILocation(line: 368, column: 26, scope: !4412, inlinedAt: !4302)
!4416 = !DILocation(line: 369, column: 6, scope: !4417, inlinedAt: !4302)
!4417 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 369, column: 6)
!4418 = !DILocation(line: 369, column: 11, scope: !4417, inlinedAt: !4302)
!4419 = !DILocation(line: 369, column: 6, scope: !4263, inlinedAt: !4302)
!4420 = !DILocation(line: 369, column: 26, scope: !4417, inlinedAt: !4302)
!4421 = !DILocation(line: 370, column: 6, scope: !4422, inlinedAt: !4302)
!4422 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 370, column: 6)
!4423 = !DILocation(line: 370, column: 11, scope: !4422, inlinedAt: !4302)
!4424 = !DILocation(line: 370, column: 6, scope: !4263, inlinedAt: !4302)
!4425 = !DILocation(line: 370, column: 26, scope: !4422, inlinedAt: !4302)
!4426 = !DILocation(line: 371, column: 6, scope: !4427, inlinedAt: !4302)
!4427 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 371, column: 6)
!4428 = !DILocation(line: 371, column: 11, scope: !4427, inlinedAt: !4302)
!4429 = !DILocation(line: 371, column: 6, scope: !4263, inlinedAt: !4302)
!4430 = !DILocation(line: 371, column: 26, scope: !4427, inlinedAt: !4302)
!4431 = !DILocation(line: 372, column: 6, scope: !4432, inlinedAt: !4302)
!4432 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 372, column: 6)
!4433 = !DILocation(line: 372, column: 11, scope: !4432, inlinedAt: !4302)
!4434 = !DILocation(line: 372, column: 6, scope: !4263, inlinedAt: !4302)
!4435 = !DILocation(line: 372, column: 26, scope: !4432, inlinedAt: !4302)
!4436 = !DILocation(line: 373, column: 6, scope: !4437, inlinedAt: !4302)
!4437 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 373, column: 6)
!4438 = !DILocation(line: 373, column: 11, scope: !4437, inlinedAt: !4302)
!4439 = !DILocation(line: 373, column: 6, scope: !4263, inlinedAt: !4302)
!4440 = !DILocation(line: 373, column: 26, scope: !4437, inlinedAt: !4302)
!4441 = !DILocation(line: 374, column: 6, scope: !4442, inlinedAt: !4302)
!4442 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 374, column: 6)
!4443 = !DILocation(line: 374, column: 11, scope: !4442, inlinedAt: !4302)
!4444 = !DILocation(line: 374, column: 6, scope: !4263, inlinedAt: !4302)
!4445 = !DILocation(line: 374, column: 26, scope: !4442, inlinedAt: !4302)
!4446 = !DILocation(line: 375, column: 6, scope: !4447, inlinedAt: !4302)
!4447 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 375, column: 6)
!4448 = !DILocation(line: 375, column: 11, scope: !4447, inlinedAt: !4302)
!4449 = !DILocation(line: 375, column: 6, scope: !4263, inlinedAt: !4302)
!4450 = !DILocation(line: 375, column: 27, scope: !4447, inlinedAt: !4302)
!4451 = !DILocation(line: 376, column: 6, scope: !4452, inlinedAt: !4302)
!4452 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 376, column: 6)
!4453 = !DILocation(line: 376, column: 11, scope: !4452, inlinedAt: !4302)
!4454 = !DILocation(line: 376, column: 6, scope: !4263, inlinedAt: !4302)
!4455 = !DILocation(line: 376, column: 32, scope: !4452, inlinedAt: !4302)
!4456 = !DILocation(line: 377, column: 6, scope: !4457, inlinedAt: !4302)
!4457 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 377, column: 6)
!4458 = !DILocation(line: 377, column: 11, scope: !4457, inlinedAt: !4302)
!4459 = !DILocation(line: 377, column: 6, scope: !4263, inlinedAt: !4302)
!4460 = !DILocation(line: 377, column: 32, scope: !4457, inlinedAt: !4302)
!4461 = !DILocation(line: 378, column: 6, scope: !4462, inlinedAt: !4302)
!4462 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 378, column: 6)
!4463 = !DILocation(line: 378, column: 11, scope: !4462, inlinedAt: !4302)
!4464 = !DILocation(line: 378, column: 6, scope: !4263, inlinedAt: !4302)
!4465 = !DILocation(line: 378, column: 32, scope: !4462, inlinedAt: !4302)
!4466 = !DILocation(line: 379, column: 6, scope: !4467, inlinedAt: !4302)
!4467 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 379, column: 6)
!4468 = !DILocation(line: 379, column: 11, scope: !4467, inlinedAt: !4302)
!4469 = !DILocation(line: 379, column: 6, scope: !4263, inlinedAt: !4302)
!4470 = !DILocation(line: 379, column: 33, scope: !4467, inlinedAt: !4302)
!4471 = !DILocation(line: 380, column: 6, scope: !4472, inlinedAt: !4302)
!4472 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 380, column: 6)
!4473 = !DILocation(line: 380, column: 11, scope: !4472, inlinedAt: !4302)
!4474 = !DILocation(line: 380, column: 6, scope: !4263, inlinedAt: !4302)
!4475 = !DILocation(line: 380, column: 33, scope: !4472, inlinedAt: !4302)
!4476 = !DILocation(line: 381, column: 6, scope: !4477, inlinedAt: !4302)
!4477 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 381, column: 6)
!4478 = !DILocation(line: 381, column: 11, scope: !4477, inlinedAt: !4302)
!4479 = !DILocation(line: 381, column: 6, scope: !4263, inlinedAt: !4302)
!4480 = !DILocation(line: 381, column: 33, scope: !4477, inlinedAt: !4302)
!4481 = !DILocation(line: 382, column: 2, scope: !4482, inlinedAt: !4302)
!4482 = distinct !DILexicalBlock(scope: !4483, file: !94, line: 382, column: 2)
!4483 = distinct !DILexicalBlock(scope: !4263, file: !94, line: 382, column: 2)
!4484 = !{i32 -2142812625, i32 -2142812596, i32 -2142812550, i32 -2142812492, i32 -2142812438, i32 -2142812384, i32 -2142812329, i32 -2142812298}
!4485 = !DILocation(line: 382, column: 2, scope: !4486, inlinedAt: !4302)
!4486 = distinct !DILexicalBlock(scope: !4487, file: !94, line: 382, column: 2)
!4487 = distinct !DILexicalBlock(scope: !4483, file: !94, line: 382, column: 2)
!4488 = !{i32 -2142811855, i32 -2142811848, i32 -2142811794, i32 -2142811763, i32 -2142811733}
!4489 = !DILocation(line: 382, column: 2, scope: !4487, inlinedAt: !4302)
!4490 = !DILocation(line: 386, column: 1, scope: !4263, inlinedAt: !4302)
!4491 = !DILocation(line: 547, column: 9, scope: !4244, inlinedAt: !4295)
!4492 = !DILocation(line: 549, column: 8, scope: !4493, inlinedAt: !4295)
!4493 = distinct !DILexicalBlock(scope: !4244, file: !94, line: 549, column: 7)
!4494 = !DILocation(line: 549, column: 7, scope: !4244, inlinedAt: !4295)
!4495 = !DILocation(line: 550, column: 4, scope: !4493, inlinedAt: !4295)
!4496 = !DILocation(line: 553, column: 33, scope: !4244, inlinedAt: !4295)
!4497 = !DILocation(line: 325, column: 6, scope: !4498, inlinedAt: !4300)
!4498 = distinct !DILexicalBlock(scope: !4257, file: !94, line: 325, column: 6)
!4499 = !DILocation(line: 325, column: 6, scope: !4257, inlinedAt: !4300)
!4500 = !DILocation(line: 326, column: 3, scope: !4498, inlinedAt: !4300)
!4501 = !DILocation(line: 332, column: 9, scope: !4257, inlinedAt: !4300)
!4502 = !DILocation(line: 332, column: 15, scope: !4257, inlinedAt: !4300)
!4503 = !DILocation(line: 332, column: 2, scope: !4257, inlinedAt: !4300)
!4504 = !DILocation(line: 336, column: 1, scope: !4257, inlinedAt: !4300)
!4505 = !DILocation(line: 553, column: 5, scope: !4244, inlinedAt: !4295)
!4506 = !DILocation(line: 553, column: 41, scope: !4244, inlinedAt: !4295)
!4507 = !DILocation(line: 554, column: 5, scope: !4244, inlinedAt: !4295)
!4508 = !DILocation(line: 554, column: 12, scope: !4244, inlinedAt: !4295)
!4509 = !DILocation(line: 448, column: 31, scope: !4239, inlinedAt: !4294)
!4510 = !DILocation(line: 448, column: 34, scope: !4239, inlinedAt: !4294)
!4511 = !DILocation(line: 448, column: 14, scope: !4239, inlinedAt: !4294)
!4512 = !DILocation(line: 450, column: 22, scope: !4239, inlinedAt: !4294)
!4513 = !DILocation(line: 450, column: 25, scope: !4239, inlinedAt: !4294)
!4514 = !DILocation(line: 450, column: 30, scope: !4239, inlinedAt: !4294)
!4515 = !DILocation(line: 450, column: 36, scope: !4239, inlinedAt: !4294)
!4516 = !DILocation(line: 450, column: 8, scope: !4239, inlinedAt: !4294)
!4517 = !DILocation(line: 450, column: 6, scope: !4239, inlinedAt: !4294)
!4518 = !DILocation(line: 451, column: 9, scope: !4239, inlinedAt: !4294)
!4519 = !DILocation(line: 552, column: 3, scope: !4244, inlinedAt: !4295)
!4520 = !DILocation(line: 557, column: 19, scope: !4246, inlinedAt: !4295)
!4521 = !DILocation(line: 557, column: 25, scope: !4246, inlinedAt: !4295)
!4522 = !DILocation(line: 557, column: 9, scope: !4246, inlinedAt: !4295)
!4523 = !DILocation(line: 557, column: 2, scope: !4246, inlinedAt: !4295)
!4524 = !DILocation(line: 558, column: 1, scope: !4246, inlinedAt: !4295)
!4525 = !DILocation(line: 617, column: 13, scope: !4237)
!4526 = !DILocation(line: 618, column: 7, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 618, column: 6)
!4528 = !DILocation(line: 618, column: 6, scope: !4237)
!4529 = !DILocation(line: 619, column: 3, scope: !4527)
!4530 = !DILocation(line: 621, column: 24, scope: !4237)
!4531 = !DILocation(line: 540, column: 27, scope: !4245, inlinedAt: !4249)
!4532 = !DILocation(line: 540, column: 6, scope: !4245, inlinedAt: !4249)
!4533 = !DILocation(line: 540, column: 6, scope: !4246, inlinedAt: !4249)
!4534 = !DILocation(line: 544, column: 7, scope: !4276, inlinedAt: !4249)
!4535 = !DILocation(line: 544, column: 12, scope: !4276, inlinedAt: !4249)
!4536 = !DILocation(line: 544, column: 7, scope: !4244, inlinedAt: !4249)
!4537 = !DILocation(line: 545, column: 25, scope: !4276, inlinedAt: !4249)
!4538 = !DILocation(line: 545, column: 31, scope: !4276, inlinedAt: !4249)
!4539 = !DILocation(line: 480, column: 33, scope: !4274, inlinedAt: !4275)
!4540 = !DILocation(line: 480, column: 23, scope: !4274, inlinedAt: !4275)
!4541 = !DILocation(line: 481, column: 29, scope: !4274, inlinedAt: !4275)
!4542 = !DILocation(line: 481, column: 35, scope: !4274, inlinedAt: !4275)
!4543 = !DILocation(line: 481, column: 42, scope: !4274, inlinedAt: !4275)
!4544 = !DILocation(line: 474, column: 23, scope: !4269, inlinedAt: !4273)
!4545 = !DILocation(line: 474, column: 29, scope: !4269, inlinedAt: !4273)
!4546 = !DILocation(line: 474, column: 36, scope: !4269, inlinedAt: !4273)
!4547 = !DILocation(line: 474, column: 9, scope: !4269, inlinedAt: !4273)
!4548 = !DILocation(line: 545, column: 4, scope: !4276, inlinedAt: !4249)
!4549 = !DILocation(line: 547, column: 25, scope: !4244, inlinedAt: !4249)
!4550 = !DILocation(line: 348, column: 7, scope: !4337, inlinedAt: !4267)
!4551 = !DILocation(line: 348, column: 6, scope: !4263, inlinedAt: !4267)
!4552 = !DILocation(line: 349, column: 3, scope: !4337, inlinedAt: !4267)
!4553 = !DILocation(line: 351, column: 6, scope: !4341, inlinedAt: !4267)
!4554 = !DILocation(line: 351, column: 11, scope: !4341, inlinedAt: !4267)
!4555 = !DILocation(line: 351, column: 6, scope: !4263, inlinedAt: !4267)
!4556 = !DILocation(line: 352, column: 3, scope: !4341, inlinedAt: !4267)
!4557 = !DILocation(line: 354, column: 32, scope: !4346, inlinedAt: !4267)
!4558 = !DILocation(line: 354, column: 37, scope: !4346, inlinedAt: !4267)
!4559 = !DILocation(line: 354, column: 42, scope: !4346, inlinedAt: !4267)
!4560 = !DILocation(line: 354, column: 45, scope: !4346, inlinedAt: !4267)
!4561 = !DILocation(line: 354, column: 50, scope: !4346, inlinedAt: !4267)
!4562 = !DILocation(line: 354, column: 6, scope: !4263, inlinedAt: !4267)
!4563 = !DILocation(line: 355, column: 3, scope: !4346, inlinedAt: !4267)
!4564 = !DILocation(line: 356, column: 32, scope: !4354, inlinedAt: !4267)
!4565 = !DILocation(line: 356, column: 37, scope: !4354, inlinedAt: !4267)
!4566 = !DILocation(line: 356, column: 43, scope: !4354, inlinedAt: !4267)
!4567 = !DILocation(line: 356, column: 46, scope: !4354, inlinedAt: !4267)
!4568 = !DILocation(line: 356, column: 51, scope: !4354, inlinedAt: !4267)
!4569 = !DILocation(line: 356, column: 6, scope: !4263, inlinedAt: !4267)
!4570 = !DILocation(line: 357, column: 3, scope: !4354, inlinedAt: !4267)
!4571 = !DILocation(line: 358, column: 6, scope: !4362, inlinedAt: !4267)
!4572 = !DILocation(line: 358, column: 11, scope: !4362, inlinedAt: !4267)
!4573 = !DILocation(line: 358, column: 6, scope: !4263, inlinedAt: !4267)
!4574 = !DILocation(line: 358, column: 26, scope: !4362, inlinedAt: !4267)
!4575 = !DILocation(line: 359, column: 6, scope: !4367, inlinedAt: !4267)
!4576 = !DILocation(line: 359, column: 11, scope: !4367, inlinedAt: !4267)
!4577 = !DILocation(line: 359, column: 6, scope: !4263, inlinedAt: !4267)
!4578 = !DILocation(line: 359, column: 26, scope: !4367, inlinedAt: !4267)
!4579 = !DILocation(line: 360, column: 6, scope: !4372, inlinedAt: !4267)
!4580 = !DILocation(line: 360, column: 11, scope: !4372, inlinedAt: !4267)
!4581 = !DILocation(line: 360, column: 6, scope: !4263, inlinedAt: !4267)
!4582 = !DILocation(line: 360, column: 26, scope: !4372, inlinedAt: !4267)
!4583 = !DILocation(line: 361, column: 6, scope: !4377, inlinedAt: !4267)
!4584 = !DILocation(line: 361, column: 11, scope: !4377, inlinedAt: !4267)
!4585 = !DILocation(line: 361, column: 6, scope: !4263, inlinedAt: !4267)
!4586 = !DILocation(line: 361, column: 26, scope: !4377, inlinedAt: !4267)
!4587 = !DILocation(line: 362, column: 6, scope: !4382, inlinedAt: !4267)
!4588 = !DILocation(line: 362, column: 11, scope: !4382, inlinedAt: !4267)
!4589 = !DILocation(line: 362, column: 6, scope: !4263, inlinedAt: !4267)
!4590 = !DILocation(line: 362, column: 26, scope: !4382, inlinedAt: !4267)
!4591 = !DILocation(line: 363, column: 6, scope: !4387, inlinedAt: !4267)
!4592 = !DILocation(line: 363, column: 11, scope: !4387, inlinedAt: !4267)
!4593 = !DILocation(line: 363, column: 6, scope: !4263, inlinedAt: !4267)
!4594 = !DILocation(line: 363, column: 26, scope: !4387, inlinedAt: !4267)
!4595 = !DILocation(line: 364, column: 6, scope: !4392, inlinedAt: !4267)
!4596 = !DILocation(line: 364, column: 11, scope: !4392, inlinedAt: !4267)
!4597 = !DILocation(line: 364, column: 6, scope: !4263, inlinedAt: !4267)
!4598 = !DILocation(line: 364, column: 26, scope: !4392, inlinedAt: !4267)
!4599 = !DILocation(line: 365, column: 6, scope: !4397, inlinedAt: !4267)
!4600 = !DILocation(line: 365, column: 11, scope: !4397, inlinedAt: !4267)
!4601 = !DILocation(line: 365, column: 6, scope: !4263, inlinedAt: !4267)
!4602 = !DILocation(line: 365, column: 26, scope: !4397, inlinedAt: !4267)
!4603 = !DILocation(line: 366, column: 6, scope: !4402, inlinedAt: !4267)
!4604 = !DILocation(line: 366, column: 11, scope: !4402, inlinedAt: !4267)
!4605 = !DILocation(line: 366, column: 6, scope: !4263, inlinedAt: !4267)
!4606 = !DILocation(line: 366, column: 26, scope: !4402, inlinedAt: !4267)
!4607 = !DILocation(line: 367, column: 6, scope: !4407, inlinedAt: !4267)
!4608 = !DILocation(line: 367, column: 11, scope: !4407, inlinedAt: !4267)
!4609 = !DILocation(line: 367, column: 6, scope: !4263, inlinedAt: !4267)
!4610 = !DILocation(line: 367, column: 26, scope: !4407, inlinedAt: !4267)
!4611 = !DILocation(line: 368, column: 6, scope: !4412, inlinedAt: !4267)
!4612 = !DILocation(line: 368, column: 11, scope: !4412, inlinedAt: !4267)
!4613 = !DILocation(line: 368, column: 6, scope: !4263, inlinedAt: !4267)
!4614 = !DILocation(line: 368, column: 26, scope: !4412, inlinedAt: !4267)
!4615 = !DILocation(line: 369, column: 6, scope: !4417, inlinedAt: !4267)
!4616 = !DILocation(line: 369, column: 11, scope: !4417, inlinedAt: !4267)
!4617 = !DILocation(line: 369, column: 6, scope: !4263, inlinedAt: !4267)
!4618 = !DILocation(line: 369, column: 26, scope: !4417, inlinedAt: !4267)
!4619 = !DILocation(line: 370, column: 6, scope: !4422, inlinedAt: !4267)
!4620 = !DILocation(line: 370, column: 11, scope: !4422, inlinedAt: !4267)
!4621 = !DILocation(line: 370, column: 6, scope: !4263, inlinedAt: !4267)
!4622 = !DILocation(line: 370, column: 26, scope: !4422, inlinedAt: !4267)
!4623 = !DILocation(line: 371, column: 6, scope: !4427, inlinedAt: !4267)
!4624 = !DILocation(line: 371, column: 11, scope: !4427, inlinedAt: !4267)
!4625 = !DILocation(line: 371, column: 6, scope: !4263, inlinedAt: !4267)
!4626 = !DILocation(line: 371, column: 26, scope: !4427, inlinedAt: !4267)
!4627 = !DILocation(line: 372, column: 6, scope: !4432, inlinedAt: !4267)
!4628 = !DILocation(line: 372, column: 11, scope: !4432, inlinedAt: !4267)
!4629 = !DILocation(line: 372, column: 6, scope: !4263, inlinedAt: !4267)
!4630 = !DILocation(line: 372, column: 26, scope: !4432, inlinedAt: !4267)
!4631 = !DILocation(line: 373, column: 6, scope: !4437, inlinedAt: !4267)
!4632 = !DILocation(line: 373, column: 11, scope: !4437, inlinedAt: !4267)
!4633 = !DILocation(line: 373, column: 6, scope: !4263, inlinedAt: !4267)
!4634 = !DILocation(line: 373, column: 26, scope: !4437, inlinedAt: !4267)
!4635 = !DILocation(line: 374, column: 6, scope: !4442, inlinedAt: !4267)
!4636 = !DILocation(line: 374, column: 11, scope: !4442, inlinedAt: !4267)
!4637 = !DILocation(line: 374, column: 6, scope: !4263, inlinedAt: !4267)
!4638 = !DILocation(line: 374, column: 26, scope: !4442, inlinedAt: !4267)
!4639 = !DILocation(line: 375, column: 6, scope: !4447, inlinedAt: !4267)
!4640 = !DILocation(line: 375, column: 11, scope: !4447, inlinedAt: !4267)
!4641 = !DILocation(line: 375, column: 6, scope: !4263, inlinedAt: !4267)
!4642 = !DILocation(line: 375, column: 27, scope: !4447, inlinedAt: !4267)
!4643 = !DILocation(line: 376, column: 6, scope: !4452, inlinedAt: !4267)
!4644 = !DILocation(line: 376, column: 11, scope: !4452, inlinedAt: !4267)
!4645 = !DILocation(line: 376, column: 6, scope: !4263, inlinedAt: !4267)
!4646 = !DILocation(line: 376, column: 32, scope: !4452, inlinedAt: !4267)
!4647 = !DILocation(line: 377, column: 6, scope: !4457, inlinedAt: !4267)
!4648 = !DILocation(line: 377, column: 11, scope: !4457, inlinedAt: !4267)
!4649 = !DILocation(line: 377, column: 6, scope: !4263, inlinedAt: !4267)
!4650 = !DILocation(line: 377, column: 32, scope: !4457, inlinedAt: !4267)
!4651 = !DILocation(line: 378, column: 6, scope: !4462, inlinedAt: !4267)
!4652 = !DILocation(line: 378, column: 11, scope: !4462, inlinedAt: !4267)
!4653 = !DILocation(line: 378, column: 6, scope: !4263, inlinedAt: !4267)
!4654 = !DILocation(line: 378, column: 32, scope: !4462, inlinedAt: !4267)
!4655 = !DILocation(line: 379, column: 6, scope: !4467, inlinedAt: !4267)
!4656 = !DILocation(line: 379, column: 11, scope: !4467, inlinedAt: !4267)
!4657 = !DILocation(line: 379, column: 6, scope: !4263, inlinedAt: !4267)
!4658 = !DILocation(line: 379, column: 33, scope: !4467, inlinedAt: !4267)
!4659 = !DILocation(line: 380, column: 6, scope: !4472, inlinedAt: !4267)
!4660 = !DILocation(line: 380, column: 11, scope: !4472, inlinedAt: !4267)
!4661 = !DILocation(line: 380, column: 6, scope: !4263, inlinedAt: !4267)
!4662 = !DILocation(line: 380, column: 33, scope: !4472, inlinedAt: !4267)
!4663 = !DILocation(line: 381, column: 6, scope: !4477, inlinedAt: !4267)
!4664 = !DILocation(line: 381, column: 11, scope: !4477, inlinedAt: !4267)
!4665 = !DILocation(line: 381, column: 6, scope: !4263, inlinedAt: !4267)
!4666 = !DILocation(line: 381, column: 33, scope: !4477, inlinedAt: !4267)
!4667 = !DILocation(line: 382, column: 2, scope: !4482, inlinedAt: !4267)
!4668 = !DILocation(line: 382, column: 2, scope: !4486, inlinedAt: !4267)
!4669 = !DILocation(line: 382, column: 2, scope: !4487, inlinedAt: !4267)
!4670 = !DILocation(line: 386, column: 1, scope: !4263, inlinedAt: !4267)
!4671 = !DILocation(line: 547, column: 9, scope: !4244, inlinedAt: !4249)
!4672 = !DILocation(line: 549, column: 8, scope: !4493, inlinedAt: !4249)
!4673 = !DILocation(line: 549, column: 7, scope: !4244, inlinedAt: !4249)
!4674 = !DILocation(line: 550, column: 4, scope: !4493, inlinedAt: !4249)
!4675 = !DILocation(line: 553, column: 33, scope: !4244, inlinedAt: !4249)
!4676 = !DILocation(line: 325, column: 6, scope: !4498, inlinedAt: !4261)
!4677 = !DILocation(line: 325, column: 6, scope: !4257, inlinedAt: !4261)
!4678 = !DILocation(line: 326, column: 3, scope: !4498, inlinedAt: !4261)
!4679 = !DILocation(line: 332, column: 9, scope: !4257, inlinedAt: !4261)
!4680 = !DILocation(line: 332, column: 15, scope: !4257, inlinedAt: !4261)
!4681 = !DILocation(line: 332, column: 2, scope: !4257, inlinedAt: !4261)
!4682 = !DILocation(line: 336, column: 1, scope: !4257, inlinedAt: !4261)
!4683 = !DILocation(line: 553, column: 5, scope: !4244, inlinedAt: !4249)
!4684 = !DILocation(line: 553, column: 41, scope: !4244, inlinedAt: !4249)
!4685 = !DILocation(line: 554, column: 5, scope: !4244, inlinedAt: !4249)
!4686 = !DILocation(line: 554, column: 12, scope: !4244, inlinedAt: !4249)
!4687 = !DILocation(line: 448, column: 31, scope: !4239, inlinedAt: !4243)
!4688 = !DILocation(line: 448, column: 34, scope: !4239, inlinedAt: !4243)
!4689 = !DILocation(line: 448, column: 14, scope: !4239, inlinedAt: !4243)
!4690 = !DILocation(line: 450, column: 22, scope: !4239, inlinedAt: !4243)
!4691 = !DILocation(line: 450, column: 25, scope: !4239, inlinedAt: !4243)
!4692 = !DILocation(line: 450, column: 30, scope: !4239, inlinedAt: !4243)
!4693 = !DILocation(line: 450, column: 36, scope: !4239, inlinedAt: !4243)
!4694 = !DILocation(line: 450, column: 8, scope: !4239, inlinedAt: !4243)
!4695 = !DILocation(line: 450, column: 6, scope: !4239, inlinedAt: !4243)
!4696 = !DILocation(line: 451, column: 9, scope: !4239, inlinedAt: !4243)
!4697 = !DILocation(line: 552, column: 3, scope: !4244, inlinedAt: !4249)
!4698 = !DILocation(line: 557, column: 19, scope: !4246, inlinedAt: !4249)
!4699 = !DILocation(line: 557, column: 25, scope: !4246, inlinedAt: !4249)
!4700 = !DILocation(line: 557, column: 9, scope: !4246, inlinedAt: !4249)
!4701 = !DILocation(line: 557, column: 2, scope: !4246, inlinedAt: !4249)
!4702 = !DILocation(line: 558, column: 1, scope: !4246, inlinedAt: !4249)
!4703 = !DILocation(line: 621, column: 14, scope: !4237)
!4704 = !DILocation(line: 622, column: 7, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 622, column: 6)
!4706 = !DILocation(line: 622, column: 6, scope: !4237)
!4707 = !DILocation(line: 623, column: 9, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4705, file: !3, line: 622, column: 20)
!4709 = !DILocation(line: 623, column: 3, scope: !4708)
!4710 = !DILocation(line: 624, column: 3, scope: !4708)
!4711 = !DILocation(line: 627, column: 8, scope: !4237)
!4712 = !DILocation(line: 627, column: 6, scope: !4237)
!4713 = !DILocation(line: 628, column: 6, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4237, file: !3, line: 628, column: 6)
!4715 = !DILocation(line: 628, column: 6, scope: !4237)
!4716 = !DILocation(line: 629, column: 9, scope: !4717)
!4717 = distinct !DILexicalBlock(scope: !4714, file: !3, line: 628, column: 11)
!4718 = !DILocation(line: 629, column: 3, scope: !4717)
!4719 = !DILocation(line: 630, column: 9, scope: !4717)
!4720 = !DILocation(line: 630, column: 3, scope: !4717)
!4721 = !DILocation(line: 631, column: 2, scope: !4717)
!4722 = !DILocation(line: 633, column: 9, scope: !4237)
!4723 = !DILocation(line: 633, column: 2, scope: !4237)
!4724 = !DILocation(line: 634, column: 1, scope: !4237)
!4725 = distinct !DISubprogram(name: "rng_dev_read", scope: !3, file: !3, line: 205, type: !1527, scopeLine: 207, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4726 = !DILocalVariable(name: "pscr_ret__", scope: !4727, file: !4728, line: 15, type: !196)
!4727 = distinct !DILexicalBlock(scope: !4729, file: !4728, line: 15, column: 9)
!4728 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/lizy2001/genbc/linux")
!4729 = distinct !DISubprogram(name: "get_current", scope: !4728, file: !4728, line: 13, type: !4730, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4730 = !DISubroutineType(types: !4731)
!4731 = !{!196}
!4732 = !DILocation(line: 15, column: 9, scope: !4727, inlinedAt: !4733)
!4733 = distinct !DILocation(line: 267, column: 22, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 267, column: 7)
!4735 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 213, column: 15)
!4736 = !DILocalVariable(name: "__vpp_verify", scope: !4737, file: !4728, line: 15, type: !3121)
!4737 = distinct !DILexicalBlock(scope: !4727, file: !4728, line: 15, column: 9)
!4738 = !DILocation(line: 15, column: 9, scope: !4737, inlinedAt: !4733)
!4739 = !DILocalVariable(name: "pfo_val__", scope: !4740, file: !4728, line: 15, type: !235)
!4740 = distinct !DILexicalBlock(scope: !4727, file: !4728, line: 15, column: 9)
!4741 = !DILocation(line: 15, column: 9, scope: !4740, inlinedAt: !4733)
!4742 = !DILocation(line: 15, column: 9, scope: !4727, inlinedAt: !4743)
!4743 = distinct !DILocation(line: 1897, column: 9, scope: !4744, inlinedAt: !4745)
!4744 = distinct !DISubprogram(name: "need_resched", scope: !198, file: !198, line: 1895, type: !3111, scopeLine: 1896, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4745 = distinct !DILocation(line: 264, column: 7, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 264, column: 7)
!4747 = !DILocation(line: 15, column: 9, scope: !4737, inlinedAt: !4743)
!4748 = !DILocation(line: 15, column: 9, scope: !4740, inlinedAt: !4743)
!4749 = !DILocalVariable(name: "addr", arg: 1, scope: !4750, file: !4751, line: 138, type: !3121)
!4750 = distinct !DISubprogram(name: "check_copy_size", scope: !4751, file: !4751, line: 138, type: !4752, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4751 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!4752 = !DISubroutineType(types: !4753)
!4753 = !{!142, !3121, !136, !142}
!4754 = !DILocation(line: 138, column: 29, scope: !4750, inlinedAt: !4755)
!4755 = distinct !DILocation(line: 199, column: 6, scope: !4756, inlinedAt: !4761)
!4756 = distinct !DILexicalBlock(scope: !4758, file: !4757, line: 199, column: 6)
!4757 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!4758 = distinct !DISubprogram(name: "copy_to_user", scope: !4757, file: !4757, line: 197, type: !4759, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!141, !101, !3121, !141}
!4761 = distinct !DILocation(line: 251, column: 8, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4763, file: !3, line: 251, column: 8)
!4763 = distinct !DILexicalBlock(scope: !4764, file: !3, line: 244, column: 10)
!4764 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 239, column: 7)
!4765 = !DILocalVariable(name: "bytes", arg: 2, scope: !4750, file: !4751, line: 138, type: !136)
!4766 = !DILocation(line: 138, column: 42, scope: !4750, inlinedAt: !4755)
!4767 = !DILocalVariable(name: "is_source", arg: 3, scope: !4750, file: !4751, line: 138, type: !142)
!4768 = !DILocation(line: 138, column: 54, scope: !4750, inlinedAt: !4755)
!4769 = !DILocalVariable(name: "sz", scope: !4750, file: !4751, line: 140, type: !114)
!4770 = !DILocation(line: 140, column: 6, scope: !4750, inlinedAt: !4755)
!4771 = !DILocalVariable(name: "__ret_warn_on", scope: !4772, file: !4751, line: 150, type: !114)
!4772 = distinct !DILexicalBlock(scope: !4773, file: !4751, line: 150, column: 6)
!4773 = distinct !DILexicalBlock(scope: !4750, file: !4751, line: 150, column: 6)
!4774 = !DILocation(line: 150, column: 6, scope: !4772, inlinedAt: !4755)
!4775 = !DILocalVariable(name: "to", arg: 1, scope: !4758, file: !4757, line: 197, type: !101)
!4776 = !DILocation(line: 197, column: 27, scope: !4758, inlinedAt: !4761)
!4777 = !DILocalVariable(name: "from", arg: 2, scope: !4758, file: !4757, line: 197, type: !3121)
!4778 = !DILocation(line: 197, column: 43, scope: !4758, inlinedAt: !4761)
!4779 = !DILocalVariable(name: "n", arg: 3, scope: !4758, file: !4757, line: 197, type: !141)
!4780 = !DILocation(line: 197, column: 63, scope: !4758, inlinedAt: !4761)
!4781 = !DILocalVariable(name: "filp", arg: 1, scope: !4725, file: !3, line: 205, type: !416)
!4782 = !DILocation(line: 205, column: 42, scope: !4725)
!4783 = !DILocalVariable(name: "buf", arg: 2, scope: !4725, file: !3, line: 205, type: !538)
!4784 = !DILocation(line: 205, column: 61, scope: !4725)
!4785 = !DILocalVariable(name: "size", arg: 3, scope: !4725, file: !3, line: 206, type: !136)
!4786 = !DILocation(line: 206, column: 15, scope: !4725)
!4787 = !DILocalVariable(name: "offp", arg: 4, scope: !4725, file: !3, line: 206, type: !1529)
!4788 = !DILocation(line: 206, column: 29, scope: !4725)
!4789 = !DILocalVariable(name: "ret", scope: !4725, file: !3, line: 208, type: !627)
!4790 = !DILocation(line: 208, column: 10, scope: !4725)
!4791 = !DILocalVariable(name: "err", scope: !4725, file: !3, line: 209, type: !114)
!4792 = !DILocation(line: 209, column: 6, scope: !4725)
!4793 = !DILocalVariable(name: "bytes_read", scope: !4725, file: !3, line: 210, type: !114)
!4794 = !DILocation(line: 210, column: 6, scope: !4725)
!4795 = !DILocalVariable(name: "len", scope: !4725, file: !3, line: 210, type: !114)
!4796 = !DILocation(line: 210, column: 18, scope: !4725)
!4797 = !DILocalVariable(name: "rng", scope: !4725, file: !3, line: 211, type: !102)
!4798 = !DILocation(line: 211, column: 16, scope: !4725)
!4799 = !DILocation(line: 213, column: 2, scope: !4725)
!4800 = !DILocation(line: 213, column: 9, scope: !4725)
!4801 = !DILocation(line: 214, column: 9, scope: !4735)
!4802 = !DILocation(line: 214, column: 7, scope: !4735)
!4803 = !DILocation(line: 215, column: 14, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 215, column: 7)
!4805 = !DILocation(line: 215, column: 7, scope: !4804)
!4806 = !DILocation(line: 215, column: 7, scope: !4735)
!4807 = !DILocation(line: 216, column: 18, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 215, column: 20)
!4809 = !DILocation(line: 216, column: 10, scope: !4808)
!4810 = !DILocation(line: 216, column: 8, scope: !4808)
!4811 = !DILocation(line: 217, column: 4, scope: !4808)
!4812 = !DILocation(line: 219, column: 8, scope: !4813)
!4813 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 219, column: 7)
!4814 = !DILocation(line: 219, column: 7, scope: !4735)
!4815 = !DILocation(line: 220, column: 8, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4813, file: !3, line: 219, column: 13)
!4817 = !DILocation(line: 221, column: 4, scope: !4816)
!4818 = !DILocation(line: 224, column: 7, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 224, column: 7)
!4820 = !DILocation(line: 224, column: 7, scope: !4735)
!4821 = !DILocation(line: 225, column: 8, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4819, file: !3, line: 224, column: 49)
!4823 = !DILocation(line: 226, column: 4, scope: !4822)
!4824 = !DILocation(line: 228, column: 8, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4735, file: !3, line: 228, column: 7)
!4826 = !DILocation(line: 228, column: 7, scope: !4735)
!4827 = !DILocation(line: 229, column: 30, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4825, file: !3, line: 228, column: 20)
!4829 = !DILocation(line: 229, column: 35, scope: !4828)
!4830 = !DILocation(line: 230, column: 5, scope: !4828)
!4831 = !DILocation(line: 231, column: 7, scope: !4828)
!4832 = !DILocation(line: 231, column: 13, scope: !4828)
!4833 = !DILocation(line: 231, column: 21, scope: !4828)
!4834 = !DILocation(line: 231, column: 5, scope: !4828)
!4835 = !DILocation(line: 229, column: 17, scope: !4828)
!4836 = !DILocation(line: 229, column: 15, scope: !4828)
!4837 = !DILocation(line: 232, column: 8, scope: !4838)
!4838 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 232, column: 8)
!4839 = !DILocation(line: 232, column: 19, scope: !4838)
!4840 = !DILocation(line: 232, column: 8, scope: !4828)
!4841 = !DILocation(line: 233, column: 11, scope: !4842)
!4842 = distinct !DILexicalBlock(scope: !4838, file: !3, line: 232, column: 24)
!4843 = !DILocation(line: 233, column: 9, scope: !4842)
!4844 = !DILocation(line: 234, column: 5, scope: !4842)
!4845 = !DILocation(line: 236, column: 17, scope: !4828)
!4846 = !DILocation(line: 236, column: 15, scope: !4828)
!4847 = !DILocation(line: 237, column: 3, scope: !4828)
!4848 = !DILocation(line: 239, column: 8, scope: !4764)
!4849 = !DILocation(line: 239, column: 7, scope: !4735)
!4850 = !DILocation(line: 240, column: 8, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4852, file: !3, line: 240, column: 8)
!4852 = distinct !DILexicalBlock(scope: !4764, file: !3, line: 239, column: 20)
!4853 = !DILocation(line: 240, column: 14, scope: !4851)
!4854 = !DILocation(line: 240, column: 22, scope: !4851)
!4855 = !DILocation(line: 240, column: 8, scope: !4852)
!4856 = !DILocation(line: 241, column: 9, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4851, file: !3, line: 240, column: 36)
!4858 = !DILocation(line: 242, column: 5, scope: !4857)
!4859 = !DILocation(line: 244, column: 3, scope: !4852)
!4860 = !DILocation(line: 245, column: 10, scope: !4763)
!4861 = !DILocation(line: 245, column: 8, scope: !4763)
!4862 = !DILocation(line: 246, column: 8, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4763, file: !3, line: 246, column: 8)
!4864 = !DILocation(line: 246, column: 14, scope: !4863)
!4865 = !DILocation(line: 246, column: 12, scope: !4863)
!4866 = !DILocation(line: 246, column: 8, scope: !4763)
!4867 = !DILocation(line: 247, column: 11, scope: !4863)
!4868 = !DILocation(line: 247, column: 9, scope: !4863)
!4869 = !DILocation(line: 247, column: 5, scope: !4863)
!4870 = !DILocation(line: 249, column: 18, scope: !4763)
!4871 = !DILocation(line: 249, column: 15, scope: !4763)
!4872 = !DILocation(line: 251, column: 21, scope: !4762)
!4873 = !DILocation(line: 251, column: 27, scope: !4762)
!4874 = !DILocation(line: 251, column: 25, scope: !4762)
!4875 = !DILocation(line: 251, column: 32, scope: !4762)
!4876 = !DILocation(line: 251, column: 45, scope: !4762)
!4877 = !DILocation(line: 251, column: 43, scope: !4762)
!4878 = !DILocation(line: 252, column: 9, scope: !4762)
!4879 = !DILocation(line: 199, column: 6, scope: !4756, inlinedAt: !4761)
!4880 = !DILocation(line: 141, column: 6, scope: !4881, inlinedAt: !4755)
!4881 = distinct !DILexicalBlock(scope: !4750, file: !4751, line: 141, column: 6)
!4882 = !DILocation(line: 0, scope: !4881, inlinedAt: !4755)
!4883 = !DILocation(line: 141, column: 6, scope: !4750, inlinedAt: !4755)
!4884 = !DILocation(line: 142, column: 29, scope: !4885, inlinedAt: !4755)
!4885 = distinct !DILexicalBlock(scope: !4886, file: !4751, line: 142, column: 7)
!4886 = distinct !DILexicalBlock(scope: !4881, file: !4751, line: 141, column: 39)
!4887 = !DILocation(line: 142, column: 8, scope: !4885, inlinedAt: !4755)
!4888 = !DILocation(line: 142, column: 7, scope: !4886, inlinedAt: !4755)
!4889 = !DILocation(line: 143, column: 18, scope: !4885, inlinedAt: !4755)
!4890 = !DILocation(line: 143, column: 22, scope: !4885, inlinedAt: !4755)
!4891 = !DILocation(line: 143, column: 4, scope: !4885, inlinedAt: !4755)
!4892 = !DILocation(line: 144, column: 12, scope: !4893, inlinedAt: !4755)
!4893 = distinct !DILexicalBlock(scope: !4885, file: !4751, line: 144, column: 12)
!4894 = !DILocation(line: 144, column: 12, scope: !4885, inlinedAt: !4755)
!4895 = !DILocation(line: 145, column: 4, scope: !4893, inlinedAt: !4755)
!4896 = !DILocation(line: 147, column: 4, scope: !4893, inlinedAt: !4755)
!4897 = !DILocation(line: 148, column: 3, scope: !4886, inlinedAt: !4755)
!4898 = !DILocation(line: 150, column: 6, scope: !4899, inlinedAt: !4755)
!4899 = distinct !DILexicalBlock(scope: !4772, file: !4751, line: 150, column: 6)
!4900 = !DILocation(line: 150, column: 6, scope: !4901, inlinedAt: !4755)
!4901 = distinct !DILexicalBlock(scope: !4902, file: !4751, line: 150, column: 6)
!4902 = distinct !DILexicalBlock(scope: !4899, file: !4751, line: 150, column: 6)
!4903 = !{i32 -2145527139, i32 -2145527110, i32 -2145527064, i32 -2145527006, i32 -2145526952, i32 -2145526898, i32 -2145526843, i32 -2145526812}
!4904 = !DILocation(line: 150, column: 6, scope: !4905, inlinedAt: !4755)
!4905 = distinct !DILexicalBlock(scope: !4902, file: !4751, line: 150, column: 6)
!4906 = !{i32 -2145526392, i32 -2145526385, i32 -2145526333, i32 -2145526302, i32 -2145526272}
!4907 = !DILocation(line: 150, column: 6, scope: !4902, inlinedAt: !4755)
!4908 = !DILocation(line: 150, column: 6, scope: !4773, inlinedAt: !4755)
!4909 = !DILocation(line: 150, column: 6, scope: !4750, inlinedAt: !4755)
!4910 = !DILocation(line: 151, column: 3, scope: !4773, inlinedAt: !4755)
!4911 = !DILocation(line: 152, column: 20, scope: !4750, inlinedAt: !4755)
!4912 = !DILocation(line: 152, column: 26, scope: !4750, inlinedAt: !4755)
!4913 = !DILocation(line: 152, column: 33, scope: !4750, inlinedAt: !4755)
!4914 = !DILocation(line: 152, column: 2, scope: !4750, inlinedAt: !4755)
!4915 = !DILocation(line: 153, column: 2, scope: !4750, inlinedAt: !4755)
!4916 = !DILocation(line: 154, column: 1, scope: !4750, inlinedAt: !4755)
!4917 = !DILocation(line: 199, column: 6, scope: !4758, inlinedAt: !4761)
!4918 = !DILocation(line: 200, column: 21, scope: !4756, inlinedAt: !4761)
!4919 = !DILocation(line: 200, column: 25, scope: !4756, inlinedAt: !4761)
!4920 = !DILocation(line: 200, column: 31, scope: !4756, inlinedAt: !4761)
!4921 = !DILocation(line: 200, column: 7, scope: !4756, inlinedAt: !4761)
!4922 = !DILocation(line: 200, column: 5, scope: !4756, inlinedAt: !4761)
!4923 = !DILocation(line: 200, column: 3, scope: !4756, inlinedAt: !4761)
!4924 = !DILocation(line: 201, column: 9, scope: !4758, inlinedAt: !4761)
!4925 = !DILocation(line: 251, column: 8, scope: !4762)
!4926 = !DILocation(line: 251, column: 8, scope: !4763)
!4927 = !DILocation(line: 253, column: 9, scope: !4928)
!4928 = distinct !DILexicalBlock(scope: !4762, file: !3, line: 252, column: 15)
!4929 = !DILocation(line: 254, column: 5, scope: !4928)
!4930 = !DILocation(line: 257, column: 12, scope: !4763)
!4931 = !DILocation(line: 257, column: 9, scope: !4763)
!4932 = !DILocation(line: 258, column: 11, scope: !4763)
!4933 = !DILocation(line: 258, column: 8, scope: !4763)
!4934 = !DILocation(line: 261, column: 3, scope: !4735)
!4935 = !DILocation(line: 262, column: 11, scope: !4735)
!4936 = !DILocation(line: 262, column: 3, scope: !4735)
!4937 = !{i32 -2146809013}
!4938 = !DILocation(line: 1897, column: 9, scope: !4744, inlinedAt: !4745)
!4939 = !DILocation(line: 264, column: 7, scope: !4735)
!4940 = !DILocation(line: 265, column: 4, scope: !4746)
!4941 = !DILocation(line: 267, column: 7, scope: !4734)
!4942 = !DILocation(line: 267, column: 7, scope: !4735)
!4943 = !DILocation(line: 268, column: 8, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 267, column: 32)
!4945 = !DILocation(line: 269, column: 4, scope: !4944)
!4946 = distinct !{!4946, !4799, !4947}
!4947 = !DILocation(line: 271, column: 2, scope: !4725)
!4948 = !DILabel(scope: !4725, name: "out", file: !3, line: 272)
!4949 = !DILocation(line: 272, column: 1, scope: !4725)
!4950 = !DILocation(line: 273, column: 9, scope: !4725)
!4951 = !DILocation(line: 273, column: 17, scope: !4725)
!4952 = !DILocation(line: 273, column: 2, scope: !4725)
!4953 = !DILabel(scope: !4725, name: "out_unlock_reading", file: !3, line: 275)
!4954 = !DILocation(line: 275, column: 1, scope: !4725)
!4955 = !DILocation(line: 276, column: 2, scope: !4725)
!4956 = !DILabel(scope: !4725, name: "out_put", file: !3, line: 277)
!4957 = !DILocation(line: 277, column: 1, scope: !4725)
!4958 = !DILocation(line: 278, column: 10, scope: !4725)
!4959 = !DILocation(line: 278, column: 2, scope: !4725)
!4960 = !DILocation(line: 279, column: 2, scope: !4725)
!4961 = distinct !DISubprogram(name: "rng_dev_open", scope: !3, file: !3, line: 176, type: !1574, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4962 = !DILocalVariable(name: "inode", arg: 1, scope: !4961, file: !3, line: 176, type: !480)
!4963 = !DILocation(line: 176, column: 39, scope: !4961)
!4964 = !DILocalVariable(name: "filp", arg: 2, scope: !4961, file: !3, line: 176, type: !416)
!4965 = !DILocation(line: 176, column: 59, scope: !4961)
!4966 = !DILocation(line: 179, column: 7, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 179, column: 6)
!4968 = !DILocation(line: 179, column: 13, scope: !4967)
!4969 = !DILocation(line: 179, column: 20, scope: !4967)
!4970 = !DILocation(line: 179, column: 34, scope: !4967)
!4971 = !DILocation(line: 179, column: 6, scope: !4961)
!4972 = !DILocation(line: 180, column: 3, scope: !4967)
!4973 = !DILocation(line: 181, column: 6, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 181, column: 6)
!4975 = !DILocation(line: 181, column: 12, scope: !4974)
!4976 = !DILocation(line: 181, column: 19, scope: !4974)
!4977 = !DILocation(line: 181, column: 6, scope: !4961)
!4978 = !DILocation(line: 182, column: 3, scope: !4974)
!4979 = !DILocation(line: 183, column: 2, scope: !4961)
!4980 = !DILocation(line: 184, column: 1, scope: !4961)
!4981 = distinct !DISubprogram(name: "get_current_rng", scope: !3, file: !3, line: 122, type: !4073, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4982 = !DILocalVariable(name: "rng", scope: !4981, file: !3, line: 124, type: !102)
!4983 = !DILocation(line: 124, column: 16, scope: !4981)
!4984 = !DILocation(line: 126, column: 6, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 126, column: 6)
!4986 = !DILocation(line: 126, column: 6, scope: !4981)
!4987 = !DILocation(line: 127, column: 10, scope: !4985)
!4988 = !DILocation(line: 127, column: 3, scope: !4985)
!4989 = !DILocation(line: 129, column: 8, scope: !4981)
!4990 = !DILocation(line: 129, column: 6, scope: !4981)
!4991 = !DILocation(line: 131, column: 2, scope: !4981)
!4992 = !DILocation(line: 132, column: 9, scope: !4981)
!4993 = !DILocation(line: 132, column: 2, scope: !4981)
!4994 = !DILocation(line: 133, column: 1, scope: !4981)
!4995 = distinct !DISubprogram(name: "IS_ERR", scope: !4996, file: !4996, line: 34, type: !4997, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!4996 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!4997 = !DISubroutineType(types: !4998)
!4998 = !{!142, !3121}
!4999 = !DILocalVariable(name: "ptr", arg: 1, scope: !4995, file: !4996, line: 34, type: !3121)
!5000 = !DILocation(line: 34, column: 60, scope: !4995)
!5001 = !DILocation(line: 36, column: 9, scope: !4995)
!5002 = !DILocation(line: 36, column: 2, scope: !4995)
!5003 = distinct !DISubprogram(name: "PTR_ERR", scope: !4996, file: !4996, line: 29, type: !5004, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5004 = !DISubroutineType(types: !5005)
!5005 = !{!187, !3121}
!5006 = !DILocalVariable(name: "ptr", arg: 1, scope: !5003, file: !4996, line: 29, type: !3121)
!5007 = !DILocation(line: 29, column: 61, scope: !5003)
!5008 = !DILocation(line: 31, column: 16, scope: !5003)
!5009 = !DILocation(line: 31, column: 9, scope: !5003)
!5010 = !DILocation(line: 31, column: 2, scope: !5003)
!5011 = distinct !DISubprogram(name: "rng_get_data", scope: !3, file: !3, line: 186, type: !5012, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!114, !102, !2965, !136, !114}
!5014 = !DILocalVariable(name: "rng", arg: 1, scope: !5011, file: !3, line: 186, type: !102)
!5015 = !DILocation(line: 186, column: 46, scope: !5011)
!5016 = !DILocalVariable(name: "buffer", arg: 2, scope: !5011, file: !3, line: 186, type: !2965)
!5017 = !DILocation(line: 186, column: 55, scope: !5011)
!5018 = !DILocalVariable(name: "size", arg: 3, scope: !5011, file: !3, line: 186, type: !136)
!5019 = !DILocation(line: 186, column: 70, scope: !5011)
!5020 = !DILocalVariable(name: "wait", arg: 4, scope: !5011, file: !3, line: 187, type: !114)
!5021 = !DILocation(line: 187, column: 8, scope: !5011)
!5022 = !DILocalVariable(name: "present", scope: !5011, file: !3, line: 188, type: !114)
!5023 = !DILocation(line: 188, column: 6, scope: !5011)
!5024 = !DILocation(line: 190, column: 2, scope: !5011)
!5025 = !DILocation(line: 190, column: 2, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5027, file: !3, line: 190, column: 2)
!5027 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 190, column: 2)
!5028 = !DILocation(line: 190, column: 2, scope: !5027)
!5029 = !DILocation(line: 190, column: 2, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5026, file: !3, line: 190, column: 2)
!5031 = !DILocation(line: 190, column: 2, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5030, file: !3, line: 190, column: 2)
!5033 = !DILocation(line: 190, column: 2, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5030, file: !3, line: 190, column: 2)
!5035 = !{i32 -2142785884, i32 -2142785855, i32 -2142785809, i32 -2142785751, i32 -2142785697, i32 -2142785643, i32 -2142785588, i32 -2142785557}
!5036 = !DILocation(line: 190, column: 2, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !5038, file: !3, line: 190, column: 2)
!5038 = distinct !DILexicalBlock(scope: !5030, file: !3, line: 190, column: 2)
!5039 = !{i32 -2142785105, i32 -2142785098, i32 -2142785044, i32 -2142785013, i32 -2142784983}
!5040 = !DILocation(line: 190, column: 2, scope: !5038)
!5041 = !DILocation(line: 191, column: 6, scope: !5042)
!5042 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 191, column: 6)
!5043 = !DILocation(line: 191, column: 11, scope: !5042)
!5044 = !DILocation(line: 191, column: 6, scope: !5011)
!5045 = !DILocation(line: 192, column: 10, scope: !5042)
!5046 = !DILocation(line: 192, column: 15, scope: !5042)
!5047 = !DILocation(line: 192, column: 20, scope: !5042)
!5048 = !DILocation(line: 192, column: 33, scope: !5042)
!5049 = !DILocation(line: 192, column: 41, scope: !5042)
!5050 = !DILocation(line: 192, column: 47, scope: !5042)
!5051 = !DILocation(line: 192, column: 3, scope: !5042)
!5052 = !DILocation(line: 194, column: 6, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 194, column: 6)
!5054 = !DILocation(line: 194, column: 11, scope: !5053)
!5055 = !DILocation(line: 194, column: 6, scope: !5011)
!5056 = !DILocation(line: 195, column: 13, scope: !5053)
!5057 = !DILocation(line: 195, column: 18, scope: !5053)
!5058 = !DILocation(line: 195, column: 31, scope: !5053)
!5059 = !DILocation(line: 195, column: 36, scope: !5053)
!5060 = !DILocation(line: 195, column: 11, scope: !5053)
!5061 = !DILocation(line: 195, column: 3, scope: !5053)
!5062 = !DILocation(line: 197, column: 11, scope: !5053)
!5063 = !DILocation(line: 199, column: 6, scope: !5064)
!5064 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 199, column: 6)
!5065 = !DILocation(line: 199, column: 6, scope: !5011)
!5066 = !DILocation(line: 200, column: 10, scope: !5064)
!5067 = !DILocation(line: 200, column: 15, scope: !5064)
!5068 = !DILocation(line: 200, column: 25, scope: !5064)
!5069 = !DILocation(line: 200, column: 37, scope: !5064)
!5070 = !DILocation(line: 200, column: 30, scope: !5064)
!5071 = !DILocation(line: 200, column: 3, scope: !5064)
!5072 = !DILocation(line: 202, column: 2, scope: !5011)
!5073 = !DILocation(line: 203, column: 1, scope: !5011)
!5074 = distinct !DISubprogram(name: "rng_buffer_size", scope: !3, file: !3, line: 59, type: !5075, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{!136}
!5077 = !DILocation(line: 61, column: 2, scope: !5074)
!5078 = distinct !DISubprogram(name: "signal_pending", scope: !2327, file: !2327, line: 356, type: !5079, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{!114, !196}
!5081 = !DILocalVariable(name: "p", arg: 1, scope: !5078, file: !2327, line: 356, type: !196)
!5082 = !DILocation(line: 356, column: 54, scope: !5078)
!5083 = !DILocation(line: 358, column: 9, scope: !5078)
!5084 = !DILocation(line: 358, column: 2, scope: !5078)
!5085 = distinct !DISubprogram(name: "ERR_PTR", scope: !4996, file: !4996, line: 24, type: !5086, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!101, !187}
!5088 = !DILocalVariable(name: "error", arg: 1, scope: !5085, file: !4996, line: 24, type: !187)
!5089 = !DILocation(line: 24, column: 48, scope: !5085)
!5090 = !DILocation(line: 26, column: 18, scope: !5085)
!5091 = !DILocation(line: 26, column: 9, scope: !5085)
!5092 = !DILocation(line: 26, column: 2, scope: !5085)
!5093 = distinct !DISubprogram(name: "copy_overflow", scope: !4751, file: !4751, line: 132, type: !5094, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{null, !114, !141}
!5096 = !DILocalVariable(name: "size", arg: 1, scope: !5093, file: !4751, line: 132, type: !114)
!5097 = !DILocation(line: 132, column: 38, scope: !5093)
!5098 = !DILocalVariable(name: "count", arg: 2, scope: !5093, file: !4751, line: 132, type: !141)
!5099 = !DILocation(line: 132, column: 58, scope: !5093)
!5100 = !DILocalVariable(name: "__ret_warn_on", scope: !5101, file: !4751, line: 134, type: !114)
!5101 = distinct !DILexicalBlock(scope: !5093, file: !4751, line: 134, column: 2)
!5102 = !DILocation(line: 134, column: 2, scope: !5101)
!5103 = !DILocation(line: 134, column: 2, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5101, file: !4751, line: 134, column: 2)
!5105 = !DILocation(line: 134, column: 2, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5104, file: !4751, line: 134, column: 2)
!5107 = !DILocation(line: 134, column: 2, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5106, file: !4751, line: 134, column: 2)
!5109 = !DILocation(line: 134, column: 2, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5106, file: !4751, line: 134, column: 2)
!5111 = !DILocation(line: 134, column: 2, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5110, file: !4751, line: 134, column: 2)
!5113 = !DILocation(line: 134, column: 2, scope: !5114)
!5114 = distinct !DILexicalBlock(scope: !5110, file: !4751, line: 134, column: 2)
!5115 = !{i32 -2145528963, i32 -2145528934, i32 -2145528888, i32 -2145528830, i32 -2145528776, i32 -2145528722, i32 -2145528667, i32 -2145528636}
!5116 = !DILocation(line: 134, column: 2, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5110, file: !4751, line: 134, column: 2)
!5118 = !{i32 -2145528216, i32 -2145528209, i32 -2145528157, i32 -2145528126, i32 -2145528096}
!5119 = !DILocation(line: 134, column: 2, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5110, file: !4751, line: 134, column: 2)
!5121 = !DILocation(line: 134, column: 2, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5106, file: !4751, line: 134, column: 2)
!5123 = !DILocation(line: 135, column: 1, scope: !5093)
!5124 = distinct !DISubprogram(name: "check_object_size", scope: !4751, file: !4751, line: 122, type: !5125, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{null, !3121, !141, !142}
!5127 = !DILocalVariable(name: "ptr", arg: 1, scope: !5124, file: !4751, line: 122, type: !3121)
!5128 = !DILocation(line: 122, column: 50, scope: !5124)
!5129 = !DILocalVariable(name: "n", arg: 2, scope: !5124, file: !4751, line: 122, type: !141)
!5130 = !DILocation(line: 122, column: 69, scope: !5124)
!5131 = !DILocalVariable(name: "to_user", arg: 3, scope: !5124, file: !4751, line: 123, type: !142)
!5132 = !DILocation(line: 123, column: 15, scope: !5124)
!5133 = !DILocation(line: 124, column: 3, scope: !5124)
!5134 = distinct !DISubprogram(name: "test_ti_thread_flag", scope: !4751, file: !4751, line: 82, type: !5135, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!114, !188, !114}
!5137 = !DILocalVariable(name: "ti", arg: 1, scope: !5134, file: !4751, line: 82, type: !188)
!5138 = !DILocation(line: 82, column: 59, scope: !5134)
!5139 = !DILocalVariable(name: "flag", arg: 2, scope: !5134, file: !4751, line: 82, type: !114)
!5140 = !DILocation(line: 82, column: 67, scope: !5134)
!5141 = !DILocation(line: 84, column: 18, scope: !5134)
!5142 = !DILocation(line: 84, column: 42, scope: !5134)
!5143 = !DILocation(line: 84, column: 46, scope: !5134)
!5144 = !DILocation(line: 84, column: 9, scope: !5134)
!5145 = !DILocation(line: 84, column: 2, scope: !5134)
!5146 = distinct !DISubprogram(name: "test_bit", scope: !5147, file: !5147, line: 132, type: !5148, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5147 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5148 = !DISubroutineType(types: !5149)
!5149 = !{!142, !187, !5150}
!5150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5151, size: 64)
!5151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5152)
!5152 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !141)
!5153 = !DILocalVariable(name: "nr", arg: 1, scope: !5154, file: !5155, line: 210, type: !187)
!5154 = distinct !DISubprogram(name: "variable_test_bit", scope: !5155, file: !5155, line: 210, type: !5148, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5155 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5156 = !DILocation(line: 210, column: 52, scope: !5154, inlinedAt: !5157)
!5157 = distinct !DILocation(line: 135, column: 9, scope: !5146)
!5158 = !DILocalVariable(name: "addr", arg: 2, scope: !5154, file: !5155, line: 210, type: !5150)
!5159 = !DILocation(line: 210, column: 86, scope: !5154, inlinedAt: !5157)
!5160 = !DILocalVariable(name: "oldbit", scope: !5154, file: !5155, line: 212, type: !142)
!5161 = !DILocation(line: 212, column: 7, scope: !5154, inlinedAt: !5157)
!5162 = !DILocalVariable(name: "nr", arg: 1, scope: !5163, file: !5155, line: 204, type: !187)
!5163 = distinct !DISubprogram(name: "constant_test_bit", scope: !5155, file: !5155, line: 204, type: !5148, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5164 = !DILocation(line: 204, column: 52, scope: !5163, inlinedAt: !5165)
!5165 = distinct !DILocation(line: 135, column: 9, scope: !5146)
!5166 = !DILocalVariable(name: "addr", arg: 2, scope: !5163, file: !5155, line: 204, type: !5150)
!5167 = !DILocation(line: 204, column: 86, scope: !5163, inlinedAt: !5165)
!5168 = !DILocalVariable(name: "v", arg: 1, scope: !5169, file: !5170, line: 69, type: !5173)
!5169 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5170, file: !5170, line: 69, type: !5171, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5170 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5171 = !DISubroutineType(types: !5172)
!5172 = !{null, !5173, !136}
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5175)
!5175 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5176 = !DILocation(line: 69, column: 73, scope: !5169, inlinedAt: !5177)
!5177 = distinct !DILocation(line: 134, column: 2, scope: !5146)
!5178 = !DILocalVariable(name: "size", arg: 2, scope: !5169, file: !5170, line: 69, type: !136)
!5179 = !DILocation(line: 69, column: 83, scope: !5169, inlinedAt: !5177)
!5180 = !DILocalVariable(name: "nr", arg: 1, scope: !5146, file: !5147, line: 132, type: !187)
!5181 = !DILocation(line: 132, column: 34, scope: !5146)
!5182 = !DILocalVariable(name: "addr", arg: 2, scope: !5146, file: !5147, line: 132, type: !5150)
!5183 = !DILocation(line: 132, column: 68, scope: !5146)
!5184 = !DILocation(line: 134, column: 25, scope: !5146)
!5185 = !DILocation(line: 134, column: 32, scope: !5146)
!5186 = !DILocation(line: 134, column: 30, scope: !5146)
!5187 = !DILocation(line: 71, column: 19, scope: !5169, inlinedAt: !5177)
!5188 = !DILocation(line: 71, column: 22, scope: !5169, inlinedAt: !5177)
!5189 = !DILocation(line: 71, column: 2, scope: !5169, inlinedAt: !5177)
!5190 = !DILocation(line: 72, column: 2, scope: !5169, inlinedAt: !5177)
!5191 = !DILocation(line: 135, column: 9, scope: !5146)
!5192 = !DILocation(line: 206, column: 19, scope: !5163, inlinedAt: !5165)
!5193 = !DILocation(line: 206, column: 22, scope: !5163, inlinedAt: !5165)
!5194 = !DILocation(line: 206, column: 15, scope: !5163, inlinedAt: !5165)
!5195 = !DILocation(line: 207, column: 4, scope: !5163, inlinedAt: !5165)
!5196 = !DILocation(line: 207, column: 9, scope: !5163, inlinedAt: !5165)
!5197 = !DILocation(line: 207, column: 12, scope: !5163, inlinedAt: !5165)
!5198 = !DILocation(line: 206, column: 44, scope: !5163, inlinedAt: !5165)
!5199 = !DILocation(line: 207, column: 37, scope: !5163, inlinedAt: !5165)
!5200 = !DILocation(line: 217, column: 33, scope: !5154, inlinedAt: !5157)
!5201 = !DILocation(line: 217, column: 46, scope: !5154, inlinedAt: !5157)
!5202 = !DILocation(line: 214, column: 2, scope: !5154, inlinedAt: !5157)
!5203 = !{i32 -2147187933, i32 -2147187873}
!5204 = !DILocation(line: 219, column: 9, scope: !5154, inlinedAt: !5157)
!5205 = !DILocation(line: 135, column: 2, scope: !5146)
!5206 = distinct !DISubprogram(name: "kasan_check_read", scope: !5207, file: !5207, line: 34, type: !5208, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5207 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!142, !5173, !7}
!5210 = !DILocalVariable(name: "p", arg: 1, scope: !5206, file: !5207, line: 34, type: !5173)
!5211 = !DILocation(line: 34, column: 58, scope: !5206)
!5212 = !DILocalVariable(name: "size", arg: 2, scope: !5206, file: !5207, line: 34, type: !7)
!5213 = !DILocation(line: 34, column: 74, scope: !5206)
!5214 = !DILocation(line: 36, column: 2, scope: !5206)
!5215 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5216, file: !5216, line: 178, type: !5217, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5216 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5217 = !DISubroutineType(types: !5218)
!5218 = !{null, !5173, !136, !114}
!5219 = !DILocalVariable(name: "ptr", arg: 1, scope: !5215, file: !5216, line: 178, type: !5173)
!5220 = !DILocation(line: 178, column: 60, scope: !5215)
!5221 = !DILocalVariable(name: "size", arg: 2, scope: !5215, file: !5216, line: 178, type: !136)
!5222 = !DILocation(line: 178, column: 72, scope: !5215)
!5223 = !DILocalVariable(name: "type", arg: 3, scope: !5215, file: !5216, line: 179, type: !114)
!5224 = !DILocation(line: 179, column: 15, scope: !5215)
!5225 = !DILocation(line: 179, column: 23, scope: !5215)
!5226 = distinct !DISubprogram(name: "test_tsk_thread_flag", scope: !198, file: !198, line: 1828, type: !5227, scopeLine: 1829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!114, !196, !114}
!5229 = !DILocalVariable(name: "tsk", arg: 1, scope: !5226, file: !198, line: 1828, type: !196)
!5230 = !DILocation(line: 1828, column: 60, scope: !5226)
!5231 = !DILocalVariable(name: "flag", arg: 2, scope: !5226, file: !198, line: 1828, type: !114)
!5232 = !DILocation(line: 1828, column: 69, scope: !5226)
!5233 = !DILocation(line: 1830, column: 46, scope: !5226)
!5234 = !DILocation(line: 1830, column: 29, scope: !5226)
!5235 = !DILocation(line: 1830, column: 52, scope: !5226)
!5236 = !DILocation(line: 1830, column: 9, scope: !5226)
!5237 = !DILocation(line: 1830, column: 2, scope: !5226)
!5238 = distinct !DISubprogram(name: "task_thread_info", scope: !198, file: !198, line: 1729, type: !5239, scopeLine: 1730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!188, !196}
!5241 = !DILocalVariable(name: "task", arg: 1, scope: !5238, file: !198, line: 1729, type: !196)
!5242 = !DILocation(line: 1729, column: 72, scope: !5238)
!5243 = !DILocation(line: 1731, column: 10, scope: !5238)
!5244 = !DILocation(line: 1731, column: 16, scope: !5238)
!5245 = !DILocation(line: 1731, column: 2, scope: !5238)
!5246 = distinct !DISubprogram(name: "hwrng_attr_current_show", scope: !3, file: !3, line: 357, type: !3651, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5247 = !DILocalVariable(name: "dev", arg: 1, scope: !5246, file: !3, line: 357, type: !2987)
!5248 = !DILocation(line: 357, column: 55, scope: !5246)
!5249 = !DILocalVariable(name: "attr", arg: 2, scope: !5246, file: !3, line: 358, type: !3653)
!5250 = !DILocation(line: 358, column: 37, scope: !5246)
!5251 = !DILocalVariable(name: "buf", arg: 3, scope: !5246, file: !3, line: 359, type: !538)
!5252 = !DILocation(line: 359, column: 18, scope: !5246)
!5253 = !DILocalVariable(name: "ret", scope: !5246, file: !3, line: 361, type: !627)
!5254 = !DILocation(line: 361, column: 10, scope: !5246)
!5255 = !DILocalVariable(name: "rng", scope: !5246, file: !3, line: 362, type: !102)
!5256 = !DILocation(line: 362, column: 16, scope: !5246)
!5257 = !DILocation(line: 364, column: 8, scope: !5246)
!5258 = !DILocation(line: 364, column: 6, scope: !5246)
!5259 = !DILocation(line: 365, column: 13, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5246, file: !3, line: 365, column: 6)
!5261 = !DILocation(line: 365, column: 6, scope: !5260)
!5262 = !DILocation(line: 365, column: 6, scope: !5246)
!5263 = !DILocation(line: 366, column: 18, scope: !5260)
!5264 = !DILocation(line: 366, column: 10, scope: !5260)
!5265 = !DILocation(line: 366, column: 3, scope: !5260)
!5266 = !DILocation(line: 368, column: 17, scope: !5246)
!5267 = !DILocation(line: 368, column: 41, scope: !5246)
!5268 = !DILocation(line: 368, column: 47, scope: !5246)
!5269 = !DILocation(line: 368, column: 52, scope: !5246)
!5270 = !DILocation(line: 368, column: 8, scope: !5246)
!5271 = !DILocation(line: 368, column: 6, scope: !5246)
!5272 = !DILocation(line: 369, column: 10, scope: !5246)
!5273 = !DILocation(line: 369, column: 2, scope: !5246)
!5274 = !DILocation(line: 371, column: 9, scope: !5246)
!5275 = !DILocation(line: 371, column: 2, scope: !5246)
!5276 = !DILocation(line: 372, column: 1, scope: !5246)
!5277 = distinct !DISubprogram(name: "hwrng_attr_current_store", scope: !3, file: !3, line: 322, type: !3656, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5278 = !DILocalVariable(name: "dev", arg: 1, scope: !5277, file: !3, line: 322, type: !2987)
!5279 = !DILocation(line: 322, column: 56, scope: !5277)
!5280 = !DILocalVariable(name: "attr", arg: 2, scope: !5277, file: !3, line: 323, type: !3653)
!5281 = !DILocation(line: 323, column: 31, scope: !5277)
!5282 = !DILocalVariable(name: "buf", arg: 3, scope: !5277, file: !3, line: 324, type: !107)
!5283 = !DILocation(line: 324, column: 18, scope: !5277)
!5284 = !DILocalVariable(name: "len", arg: 4, scope: !5277, file: !3, line: 324, type: !136)
!5285 = !DILocation(line: 324, column: 30, scope: !5277)
!5286 = !DILocalVariable(name: "err", scope: !5277, file: !3, line: 326, type: !114)
!5287 = !DILocation(line: 326, column: 6, scope: !5277)
!5288 = !DILocalVariable(name: "rng", scope: !5277, file: !3, line: 327, type: !102)
!5289 = !DILocation(line: 327, column: 16, scope: !5277)
!5290 = !DILocalVariable(name: "old_rng", scope: !5277, file: !3, line: 327, type: !102)
!5291 = !DILocation(line: 327, column: 22, scope: !5277)
!5292 = !DILocalVariable(name: "new_rng", scope: !5277, file: !3, line: 327, type: !102)
!5293 = !DILocation(line: 327, column: 32, scope: !5277)
!5294 = !DILocation(line: 329, column: 8, scope: !5277)
!5295 = !DILocation(line: 329, column: 6, scope: !5277)
!5296 = !DILocation(line: 330, column: 6, scope: !5297)
!5297 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 330, column: 6)
!5298 = !DILocation(line: 330, column: 6, scope: !5277)
!5299 = !DILocation(line: 331, column: 3, scope: !5297)
!5300 = !DILocation(line: 333, column: 12, scope: !5277)
!5301 = !DILocation(line: 333, column: 10, scope: !5277)
!5302 = !DILocation(line: 334, column: 18, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 334, column: 6)
!5304 = !DILocation(line: 334, column: 6, scope: !5303)
!5305 = !DILocation(line: 334, column: 6, scope: !5277)
!5306 = !DILocation(line: 335, column: 9, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 334, column: 28)
!5308 = !DILocation(line: 335, column: 7, scope: !5307)
!5309 = !DILocation(line: 336, column: 2, scope: !5307)
!5310 = !DILocalVariable(name: "__mptr", scope: !5311, file: !3, line: 337, type: !101)
!5311 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 337, column: 3)
!5312 = distinct !DILexicalBlock(scope: !5313, file: !3, line: 337, column: 3)
!5313 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 336, column: 9)
!5314 = !DILocation(line: 337, column: 3, scope: !5311)
!5315 = !DILocation(line: 337, column: 3, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5311, file: !3, line: 337, column: 3)
!5317 = !DILocation(line: 337, column: 3, scope: !5312)
!5318 = !DILocation(line: 337, column: 3, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 337, column: 3)
!5320 = !DILocation(line: 338, column: 20, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 338, column: 8)
!5322 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 337, column: 45)
!5323 = !DILocation(line: 338, column: 25, scope: !5321)
!5324 = !DILocation(line: 338, column: 31, scope: !5321)
!5325 = !DILocation(line: 338, column: 8, scope: !5321)
!5326 = !DILocation(line: 338, column: 8, scope: !5322)
!5327 = !DILocation(line: 339, column: 25, scope: !5328)
!5328 = distinct !DILexicalBlock(scope: !5321, file: !3, line: 338, column: 37)
!5329 = !DILocation(line: 340, column: 27, scope: !5328)
!5330 = !DILocation(line: 340, column: 11, scope: !5328)
!5331 = !DILocation(line: 340, column: 9, scope: !5328)
!5332 = !DILocation(line: 341, column: 5, scope: !5328)
!5333 = !DILocation(line: 343, column: 3, scope: !5322)
!5334 = !DILocalVariable(name: "__mptr", scope: !5335, file: !3, line: 337, type: !101)
!5335 = distinct !DILexicalBlock(scope: !5319, file: !3, line: 337, column: 3)
!5336 = !DILocation(line: 337, column: 3, scope: !5335)
!5337 = !DILocation(line: 337, column: 3, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5335, file: !3, line: 337, column: 3)
!5339 = distinct !{!5339, !5317, !5340}
!5340 = !DILocation(line: 343, column: 3, scope: !5312)
!5341 = !DILocation(line: 345, column: 12, scope: !5277)
!5342 = !DILocation(line: 345, column: 10, scope: !5277)
!5343 = !DILocation(line: 346, column: 2, scope: !5277)
!5344 = !DILocation(line: 348, column: 6, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5277, file: !3, line: 348, column: 6)
!5346 = !DILocation(line: 348, column: 6, scope: !5277)
!5347 = !DILocation(line: 349, column: 7, scope: !5348)
!5348 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 349, column: 7)
!5349 = distinct !DILexicalBlock(scope: !5345, file: !3, line: 348, column: 15)
!5350 = !DILocation(line: 349, column: 18, scope: !5348)
!5351 = !DILocation(line: 349, column: 15, scope: !5348)
!5352 = !DILocation(line: 349, column: 7, scope: !5349)
!5353 = !DILocation(line: 350, column: 25, scope: !5348)
!5354 = !DILocation(line: 350, column: 4, scope: !5348)
!5355 = !DILocation(line: 351, column: 11, scope: !5349)
!5356 = !DILocation(line: 351, column: 3, scope: !5349)
!5357 = !DILocation(line: 352, column: 2, scope: !5349)
!5358 = !DILocation(line: 354, column: 9, scope: !5277)
!5359 = !DILocation(line: 354, column: 17, scope: !5277)
!5360 = !DILocation(line: 354, column: 2, scope: !5277)
!5361 = !DILocation(line: 355, column: 1, scope: !5277)
!5362 = distinct !DISubprogram(name: "hwrng_attr_available_show", scope: !3, file: !3, line: 374, type: !3651, scopeLine: 377, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5363 = !DILocalVariable(name: "dev", arg: 1, scope: !5362, file: !3, line: 374, type: !2987)
!5364 = !DILocation(line: 374, column: 57, scope: !5362)
!5365 = !DILocalVariable(name: "attr", arg: 2, scope: !5362, file: !3, line: 375, type: !3653)
!5366 = !DILocation(line: 375, column: 32, scope: !5362)
!5367 = !DILocalVariable(name: "buf", arg: 3, scope: !5362, file: !3, line: 376, type: !538)
!5368 = !DILocation(line: 376, column: 13, scope: !5362)
!5369 = !DILocalVariable(name: "err", scope: !5362, file: !3, line: 378, type: !114)
!5370 = !DILocation(line: 378, column: 6, scope: !5362)
!5371 = !DILocalVariable(name: "rng", scope: !5362, file: !3, line: 379, type: !102)
!5372 = !DILocation(line: 379, column: 16, scope: !5362)
!5373 = !DILocation(line: 381, column: 8, scope: !5362)
!5374 = !DILocation(line: 381, column: 6, scope: !5362)
!5375 = !DILocation(line: 382, column: 6, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 382, column: 6)
!5377 = !DILocation(line: 382, column: 6, scope: !5362)
!5378 = !DILocation(line: 383, column: 3, scope: !5376)
!5379 = !DILocation(line: 384, column: 2, scope: !5362)
!5380 = !DILocation(line: 384, column: 9, scope: !5362)
!5381 = !DILocalVariable(name: "__mptr", scope: !5382, file: !3, line: 385, type: !101)
!5382 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 385, column: 2)
!5383 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 385, column: 2)
!5384 = !DILocation(line: 385, column: 2, scope: !5382)
!5385 = !DILocation(line: 385, column: 2, scope: !5386)
!5386 = distinct !DILexicalBlock(scope: !5382, file: !3, line: 385, column: 2)
!5387 = !DILocation(line: 385, column: 2, scope: !5383)
!5388 = !DILocation(line: 385, column: 2, scope: !5389)
!5389 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 385, column: 2)
!5390 = !DILocation(line: 386, column: 11, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 385, column: 44)
!5392 = !DILocation(line: 386, column: 16, scope: !5391)
!5393 = !DILocation(line: 386, column: 21, scope: !5391)
!5394 = !DILocation(line: 386, column: 3, scope: !5391)
!5395 = !DILocation(line: 387, column: 11, scope: !5391)
!5396 = !DILocation(line: 387, column: 3, scope: !5391)
!5397 = !DILocation(line: 388, column: 2, scope: !5391)
!5398 = !DILocalVariable(name: "__mptr", scope: !5399, file: !3, line: 385, type: !101)
!5399 = distinct !DILexicalBlock(scope: !5389, file: !3, line: 385, column: 2)
!5400 = !DILocation(line: 385, column: 2, scope: !5399)
!5401 = !DILocation(line: 385, column: 2, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5399, file: !3, line: 385, column: 2)
!5403 = distinct !{!5403, !5387, !5404}
!5404 = !DILocation(line: 388, column: 2, scope: !5383)
!5405 = !DILocation(line: 389, column: 10, scope: !5362)
!5406 = !DILocation(line: 389, column: 2, scope: !5362)
!5407 = !DILocation(line: 390, column: 2, scope: !5362)
!5408 = !DILocation(line: 392, column: 16, scope: !5362)
!5409 = !DILocation(line: 392, column: 9, scope: !5362)
!5410 = !DILocation(line: 392, column: 2, scope: !5362)
!5411 = !DILocation(line: 393, column: 1, scope: !5362)
!5412 = distinct !DISubprogram(name: "hwrng_attr_selected_show", scope: !3, file: !3, line: 395, type: !3651, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5413 = !DILocalVariable(name: "dev", arg: 1, scope: !5412, file: !3, line: 395, type: !2987)
!5414 = !DILocation(line: 395, column: 56, scope: !5412)
!5415 = !DILocalVariable(name: "attr", arg: 2, scope: !5412, file: !3, line: 396, type: !3653)
!5416 = !DILocation(line: 396, column: 31, scope: !5412)
!5417 = !DILocalVariable(name: "buf", arg: 3, scope: !5412, file: !3, line: 397, type: !538)
!5418 = !DILocation(line: 397, column: 12, scope: !5412)
!5419 = !DILocation(line: 399, column: 18, scope: !5412)
!5420 = !DILocation(line: 399, column: 42, scope: !5412)
!5421 = !DILocation(line: 399, column: 9, scope: !5412)
!5422 = !DILocation(line: 399, column: 2, scope: !5412)
!5423 = distinct !DISubprogram(name: "__list_add", scope: !3819, file: !3819, line: 63, type: !5424, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5424 = !DISubroutineType(types: !5425)
!5425 = !{null, !151, !151, !151}
!5426 = !DILocalVariable(name: "new", arg: 1, scope: !5423, file: !3819, line: 63, type: !151)
!5427 = !DILocation(line: 63, column: 49, scope: !5423)
!5428 = !DILocalVariable(name: "prev", arg: 2, scope: !5423, file: !3819, line: 64, type: !151)
!5429 = !DILocation(line: 64, column: 28, scope: !5423)
!5430 = !DILocalVariable(name: "next", arg: 3, scope: !5423, file: !3819, line: 65, type: !151)
!5431 = !DILocation(line: 65, column: 28, scope: !5423)
!5432 = !DILocation(line: 67, column: 24, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5423, file: !3819, line: 67, column: 6)
!5434 = !DILocation(line: 67, column: 29, scope: !5433)
!5435 = !DILocation(line: 67, column: 35, scope: !5433)
!5436 = !DILocation(line: 67, column: 7, scope: !5433)
!5437 = !DILocation(line: 67, column: 6, scope: !5423)
!5438 = !DILocation(line: 68, column: 3, scope: !5433)
!5439 = !DILocation(line: 70, column: 15, scope: !5423)
!5440 = !DILocation(line: 70, column: 2, scope: !5423)
!5441 = !DILocation(line: 70, column: 8, scope: !5423)
!5442 = !DILocation(line: 70, column: 13, scope: !5423)
!5443 = !DILocation(line: 71, column: 14, scope: !5423)
!5444 = !DILocation(line: 71, column: 2, scope: !5423)
!5445 = !DILocation(line: 71, column: 7, scope: !5423)
!5446 = !DILocation(line: 71, column: 12, scope: !5423)
!5447 = !DILocation(line: 72, column: 14, scope: !5423)
!5448 = !DILocation(line: 72, column: 2, scope: !5423)
!5449 = !DILocation(line: 72, column: 7, scope: !5423)
!5450 = !DILocation(line: 72, column: 12, scope: !5423)
!5451 = !DILocation(line: 73, column: 2, scope: !5423)
!5452 = !DILocation(line: 73, column: 2, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5423, file: !3819, line: 73, column: 2)
!5454 = !DILocation(line: 73, column: 2, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5453, file: !3819, line: 73, column: 2)
!5456 = !DILocation(line: 73, column: 2, scope: !5457)
!5457 = distinct !DILexicalBlock(scope: !5453, file: !3819, line: 73, column: 2)
!5458 = !DILocation(line: 74, column: 1, scope: !5423)
!5459 = distinct !DISubprogram(name: "__list_add_valid", scope: !3819, file: !3819, line: 45, type: !5460, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5460 = !DISubroutineType(types: !5461)
!5461 = !{!142, !151, !151, !151}
!5462 = !DILocalVariable(name: "new", arg: 1, scope: !5459, file: !3819, line: 45, type: !151)
!5463 = !DILocation(line: 45, column: 55, scope: !5459)
!5464 = !DILocalVariable(name: "prev", arg: 2, scope: !5459, file: !3819, line: 46, type: !151)
!5465 = !DILocation(line: 46, column: 23, scope: !5459)
!5466 = !DILocalVariable(name: "next", arg: 3, scope: !5459, file: !3819, line: 47, type: !151)
!5467 = !DILocation(line: 47, column: 23, scope: !5459)
!5468 = !DILocation(line: 49, column: 2, scope: !5459)
!5469 = distinct !DISubprogram(name: "hwrng_init", scope: !3, file: !3, line: 147, type: !112, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5470 = !DILocalVariable(name: "rng", arg: 1, scope: !5469, file: !3, line: 147, type: !102)
!5471 = !DILocation(line: 147, column: 37, scope: !5469)
!5472 = !DILocation(line: 149, column: 28, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 149, column: 6)
!5474 = !DILocation(line: 149, column: 33, scope: !5473)
!5475 = !DILocation(line: 149, column: 6, scope: !5473)
!5476 = !DILocation(line: 149, column: 6, scope: !5469)
!5477 = !DILocation(line: 150, column: 3, scope: !5473)
!5478 = !DILocation(line: 152, column: 6, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 152, column: 6)
!5480 = !DILocation(line: 152, column: 11, scope: !5479)
!5481 = !DILocation(line: 152, column: 6, scope: !5469)
!5482 = !DILocalVariable(name: "ret", scope: !5483, file: !3, line: 153, type: !114)
!5483 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 152, column: 17)
!5484 = !DILocation(line: 153, column: 7, scope: !5483)
!5485 = !DILocation(line: 155, column: 10, scope: !5483)
!5486 = !DILocation(line: 155, column: 15, scope: !5483)
!5487 = !DILocation(line: 155, column: 20, scope: !5483)
!5488 = !DILocation(line: 155, column: 7, scope: !5483)
!5489 = !DILocation(line: 156, column: 7, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5483, file: !3, line: 156, column: 7)
!5491 = !DILocation(line: 156, column: 7, scope: !5483)
!5492 = !DILocation(line: 157, column: 11, scope: !5490)
!5493 = !DILocation(line: 157, column: 4, scope: !5490)
!5494 = !DILocation(line: 158, column: 2, scope: !5483)
!5495 = !DILocation(line: 160, column: 13, scope: !5469)
!5496 = !DILocation(line: 160, column: 18, scope: !5469)
!5497 = !DILocation(line: 160, column: 2, scope: !5469)
!5498 = !DILocation(line: 161, column: 21, scope: !5469)
!5499 = !DILocation(line: 161, column: 26, scope: !5469)
!5500 = !DILocation(line: 161, column: 2, scope: !5469)
!5501 = !DILabel(scope: !5469, name: "skip_init", file: !3, line: 163)
!5502 = !DILocation(line: 163, column: 1, scope: !5469)
!5503 = !DILocation(line: 164, column: 20, scope: !5469)
!5504 = !DILocation(line: 164, column: 25, scope: !5469)
!5505 = !DILocation(line: 164, column: 37, scope: !5469)
!5506 = !DILocation(line: 164, column: 18, scope: !5469)
!5507 = !DILocation(line: 165, column: 6, scope: !5508)
!5508 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 165, column: 6)
!5509 = !DILocation(line: 165, column: 22, scope: !5508)
!5510 = !DILocation(line: 165, column: 6, scope: !5469)
!5511 = !DILocation(line: 166, column: 19, scope: !5508)
!5512 = !DILocation(line: 166, column: 3, scope: !5508)
!5513 = !DILocation(line: 168, column: 6, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 168, column: 6)
!5515 = !DILocation(line: 168, column: 22, scope: !5514)
!5516 = !DILocation(line: 168, column: 27, scope: !5514)
!5517 = !DILocation(line: 168, column: 30, scope: !5514)
!5518 = !DILocation(line: 168, column: 6, scope: !5469)
!5519 = !DILocation(line: 169, column: 16, scope: !5514)
!5520 = !DILocation(line: 169, column: 3, scope: !5514)
!5521 = !DILocation(line: 170, column: 6, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 170, column: 6)
!5523 = !DILocation(line: 170, column: 22, scope: !5522)
!5524 = !DILocation(line: 170, column: 26, scope: !5522)
!5525 = !DILocation(line: 170, column: 30, scope: !5522)
!5526 = !DILocation(line: 170, column: 6, scope: !5469)
!5527 = !DILocation(line: 171, column: 3, scope: !5522)
!5528 = !DILocation(line: 173, column: 2, scope: !5469)
!5529 = !DILocation(line: 174, column: 1, scope: !5469)
!5530 = distinct !DISubprogram(name: "kref_get_unless_zero", scope: !155, file: !155, line: 109, type: !5531, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5531 = !DISubroutineType(types: !5532)
!5532 = !{!114, !3870}
!5533 = !DILocalVariable(name: "kref", arg: 1, scope: !5530, file: !155, line: 109, type: !3870)
!5534 = !DILocation(line: 109, column: 66, scope: !5530)
!5535 = !DILocation(line: 111, column: 32, scope: !5530)
!5536 = !DILocation(line: 111, column: 38, scope: !5530)
!5537 = !DILocation(line: 111, column: 9, scope: !5530)
!5538 = !DILocation(line: 111, column: 2, scope: !5530)
!5539 = distinct !DISubprogram(name: "kref_init", scope: !155, file: !155, line: 29, type: !3868, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5540 = !DILocalVariable(name: "kref", arg: 1, scope: !5539, file: !155, line: 29, type: !3870)
!5541 = !DILocation(line: 29, column: 43, scope: !5539)
!5542 = !DILocation(line: 31, column: 16, scope: !5539)
!5543 = !DILocation(line: 31, column: 22, scope: !5539)
!5544 = !DILocation(line: 31, column: 2, scope: !5539)
!5545 = !DILocation(line: 32, column: 1, scope: !5539)
!5546 = distinct !DISubprogram(name: "reinit_completion", scope: !168, file: !168, line: 98, type: !3669, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5547 = !DILocalVariable(name: "x", arg: 1, scope: !5546, file: !168, line: 98, type: !2268)
!5548 = !DILocation(line: 98, column: 57, scope: !5546)
!5549 = !DILocation(line: 100, column: 2, scope: !5546)
!5550 = !DILocation(line: 100, column: 5, scope: !5546)
!5551 = !DILocation(line: 100, column: 10, scope: !5546)
!5552 = !DILocation(line: 101, column: 1, scope: !5546)
!5553 = distinct !DISubprogram(name: "start_khwrngd", scope: !3, file: !3, line: 459, type: !2451, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5554 = !DILocalVariable(name: "__k", scope: !5555, file: !3, line: 461, type: !196)
!5555 = distinct !DILexicalBlock(scope: !5553, file: !3, line: 461, column: 15)
!5556 = !DILocation(line: 461, column: 15, scope: !5555)
!5557 = !DILocation(line: 461, column: 15, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5555, file: !3, line: 461, column: 15)
!5559 = !DILocation(line: 461, column: 13, scope: !5553)
!5560 = !DILocation(line: 462, column: 13, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5553, file: !3, line: 462, column: 6)
!5562 = !DILocation(line: 462, column: 6, scope: !5561)
!5563 = !DILocation(line: 462, column: 6, scope: !5553)
!5564 = !DILocation(line: 463, column: 3, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5561, file: !3, line: 462, column: 26)
!5566 = !DILocation(line: 464, column: 14, scope: !5565)
!5567 = !DILocation(line: 465, column: 2, scope: !5565)
!5568 = !DILocation(line: 466, column: 1, scope: !5553)
!5569 = distinct !DISubprogram(name: "refcount_inc_not_zero", scope: !86, file: !86, line: 243, type: !5570, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5570 = !DISubroutineType(types: !5571)
!5571 = !{!142, !5572}
!5572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!5573 = !DILocalVariable(name: "r", arg: 1, scope: !5569, file: !86, line: 243, type: !5572)
!5574 = !DILocation(line: 243, column: 67, scope: !5569)
!5575 = !DILocation(line: 245, column: 33, scope: !5569)
!5576 = !DILocation(line: 245, column: 9, scope: !5569)
!5577 = !DILocation(line: 245, column: 2, scope: !5569)
!5578 = distinct !DISubprogram(name: "__refcount_inc_not_zero", scope: !86, file: !86, line: 225, type: !5579, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5579 = !DISubroutineType(types: !5580)
!5580 = !{!142, !5572, !762}
!5581 = !DILocalVariable(name: "r", arg: 1, scope: !5578, file: !86, line: 225, type: !5572)
!5582 = !DILocation(line: 225, column: 69, scope: !5578)
!5583 = !DILocalVariable(name: "oldp", arg: 2, scope: !5578, file: !86, line: 225, type: !762)
!5584 = !DILocation(line: 225, column: 77, scope: !5578)
!5585 = !DILocation(line: 227, column: 36, scope: !5578)
!5586 = !DILocation(line: 227, column: 39, scope: !5578)
!5587 = !DILocation(line: 227, column: 9, scope: !5578)
!5588 = !DILocation(line: 227, column: 2, scope: !5578)
!5589 = distinct !DISubprogram(name: "__refcount_add_not_zero", scope: !86, file: !86, line: 150, type: !5590, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5590 = !DISubroutineType(types: !5591)
!5591 = !{!142, !114, !5572, !762}
!5592 = !DILocalVariable(name: "v", arg: 1, scope: !5593, file: !5594, line: 200, type: !5597)
!5593 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !5594, file: !5594, line: 200, type: !5595, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5594 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5595 = !DISubroutineType(types: !5596)
!5596 = !{!142, !5597, !762, !114}
!5597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!5598 = !DILocation(line: 200, column: 63, scope: !5593, inlinedAt: !5599)
!5599 = distinct !DILocation(line: 729, column: 9, scope: !5600, inlinedAt: !5602)
!5600 = distinct !DISubprogram(name: "atomic_try_cmpxchg_relaxed", scope: !5601, file: !5601, line: 725, type: !5595, scopeLine: 726, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5601 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5602 = distinct !DILocation(line: 157, column: 12, scope: !5589)
!5603 = !DILocalVariable(name: "old", arg: 2, scope: !5593, file: !5594, line: 200, type: !762)
!5604 = !DILocation(line: 200, column: 71, scope: !5593, inlinedAt: !5599)
!5605 = !DILocalVariable(name: "new", arg: 3, scope: !5593, file: !5594, line: 200, type: !114)
!5606 = !DILocation(line: 200, column: 80, scope: !5593, inlinedAt: !5599)
!5607 = !DILocalVariable(name: "success", scope: !5608, file: !5594, line: 202, type: !142)
!5608 = distinct !DILexicalBlock(scope: !5593, file: !5594, line: 202, column: 9)
!5609 = !DILocation(line: 202, column: 9, scope: !5608, inlinedAt: !5599)
!5610 = !DILocalVariable(name: "_old", scope: !5608, file: !5594, line: 202, type: !762)
!5611 = !DILocalVariable(name: "__old", scope: !5608, file: !5594, line: 202, type: !114)
!5612 = !DILocalVariable(name: "__new", scope: !5608, file: !5594, line: 202, type: !114)
!5613 = !DILocalVariable(name: "__ptr", scope: !5608, file: !5594, line: 202, type: !2860)
!5614 = !DILocalVariable(name: "v", arg: 1, scope: !5615, file: !5170, line: 99, type: !5173)
!5615 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5170, file: !5170, line: 99, type: !5171, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5616 = !DILocation(line: 99, column: 79, scope: !5615, inlinedAt: !5617)
!5617 = distinct !DILocation(line: 728, column: 2, scope: !5600, inlinedAt: !5602)
!5618 = !DILocalVariable(name: "size", arg: 2, scope: !5615, file: !5170, line: 99, type: !136)
!5619 = !DILocation(line: 99, column: 89, scope: !5615, inlinedAt: !5617)
!5620 = !DILocation(line: 99, column: 79, scope: !5615, inlinedAt: !5621)
!5621 = distinct !DILocation(line: 727, column: 2, scope: !5600, inlinedAt: !5602)
!5622 = !DILocation(line: 99, column: 89, scope: !5615, inlinedAt: !5621)
!5623 = !DILocalVariable(name: "v", arg: 1, scope: !5600, file: !5601, line: 725, type: !5597)
!5624 = !DILocation(line: 725, column: 38, scope: !5600, inlinedAt: !5602)
!5625 = !DILocalVariable(name: "old", arg: 2, scope: !5600, file: !5601, line: 725, type: !762)
!5626 = !DILocation(line: 725, column: 46, scope: !5600, inlinedAt: !5602)
!5627 = !DILocalVariable(name: "new", arg: 3, scope: !5600, file: !5601, line: 725, type: !114)
!5628 = !DILocation(line: 725, column: 55, scope: !5600, inlinedAt: !5602)
!5629 = !DILocalVariable(name: "i", arg: 1, scope: !5589, file: !86, line: 150, type: !114)
!5630 = !DILocation(line: 150, column: 61, scope: !5589)
!5631 = !DILocalVariable(name: "r", arg: 2, scope: !5589, file: !86, line: 150, type: !5572)
!5632 = !DILocation(line: 150, column: 76, scope: !5589)
!5633 = !DILocalVariable(name: "oldp", arg: 3, scope: !5589, file: !86, line: 150, type: !762)
!5634 = !DILocation(line: 150, column: 84, scope: !5589)
!5635 = !DILocalVariable(name: "old", scope: !5589, file: !86, line: 152, type: !114)
!5636 = !DILocation(line: 152, column: 6, scope: !5589)
!5637 = !DILocation(line: 152, column: 26, scope: !5589)
!5638 = !DILocation(line: 152, column: 12, scope: !5589)
!5639 = !DILocation(line: 154, column: 2, scope: !5589)
!5640 = !DILocation(line: 155, column: 8, scope: !5641)
!5641 = distinct !DILexicalBlock(scope: !5642, file: !86, line: 155, column: 7)
!5642 = distinct !DILexicalBlock(scope: !5589, file: !86, line: 154, column: 5)
!5643 = !DILocation(line: 155, column: 7, scope: !5642)
!5644 = !DILocation(line: 156, column: 4, scope: !5641)
!5645 = !DILocation(line: 157, column: 2, scope: !5642)
!5646 = !DILocation(line: 157, column: 40, scope: !5589)
!5647 = !DILocation(line: 157, column: 43, scope: !5589)
!5648 = !DILocation(line: 157, column: 55, scope: !5589)
!5649 = !DILocation(line: 157, column: 61, scope: !5589)
!5650 = !DILocation(line: 157, column: 59, scope: !5589)
!5651 = !DILocation(line: 727, column: 31, scope: !5600, inlinedAt: !5602)
!5652 = !DILocation(line: 101, column: 20, scope: !5615, inlinedAt: !5621)
!5653 = !DILocation(line: 101, column: 23, scope: !5615, inlinedAt: !5621)
!5654 = !DILocation(line: 101, column: 2, scope: !5615, inlinedAt: !5621)
!5655 = !DILocation(line: 102, column: 2, scope: !5615, inlinedAt: !5621)
!5656 = !DILocation(line: 728, column: 31, scope: !5600, inlinedAt: !5602)
!5657 = !DILocation(line: 101, column: 20, scope: !5615, inlinedAt: !5617)
!5658 = !DILocation(line: 101, column: 23, scope: !5615, inlinedAt: !5617)
!5659 = !DILocation(line: 101, column: 2, scope: !5615, inlinedAt: !5617)
!5660 = !DILocation(line: 102, column: 2, scope: !5615, inlinedAt: !5617)
!5661 = !DILocation(line: 729, column: 41, scope: !5600, inlinedAt: !5602)
!5662 = !DILocation(line: 729, column: 44, scope: !5600, inlinedAt: !5602)
!5663 = !DILocation(line: 729, column: 49, scope: !5600, inlinedAt: !5602)
!5664 = !{i32 -2146630350, i32 -2146630195}
!5665 = !DILocation(line: 202, column: 9, scope: !5666, inlinedAt: !5599)
!5666 = distinct !DILexicalBlock(scope: !5608, file: !5594, line: 202, column: 9)
!5667 = !DILocation(line: 202, column: 9, scope: !5593, inlinedAt: !5599)
!5668 = !DILocation(line: 157, column: 11, scope: !5589)
!5669 = distinct !{!5669, !5639, !5670}
!5670 = !DILocation(line: 157, column: 63, scope: !5589)
!5671 = !DILocation(line: 159, column: 6, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5589, file: !86, line: 159, column: 6)
!5673 = !DILocation(line: 159, column: 6, scope: !5589)
!5674 = !DILocation(line: 160, column: 11, scope: !5672)
!5675 = !DILocation(line: 160, column: 4, scope: !5672)
!5676 = !DILocation(line: 160, column: 9, scope: !5672)
!5677 = !DILocation(line: 160, column: 3, scope: !5672)
!5678 = !DILocation(line: 162, column: 6, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5589, file: !86, line: 162, column: 6)
!5680 = !DILocation(line: 162, column: 6, scope: !5589)
!5681 = !DILocation(line: 163, column: 26, scope: !5679)
!5682 = !DILocation(line: 163, column: 3, scope: !5679)
!5683 = !DILocation(line: 165, column: 9, scope: !5589)
!5684 = !DILocation(line: 165, column: 2, scope: !5589)
!5685 = distinct !DISubprogram(name: "refcount_read", scope: !86, file: !86, line: 145, type: !5686, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5686 = !DISubroutineType(types: !5687)
!5687 = !{!7, !5688}
!5688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5689, size: 64)
!5689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !158)
!5690 = !DILocalVariable(name: "v", arg: 1, scope: !5691, file: !5594, line: 23, type: !5694)
!5691 = distinct !DISubprogram(name: "arch_atomic_read", scope: !5594, file: !5594, line: 23, type: !5692, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5692 = !DISubroutineType(types: !5693)
!5693 = !{!114, !5694}
!5694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5695, size: 64)
!5695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!5696 = !DILocation(line: 23, column: 61, scope: !5691, inlinedAt: !5697)
!5697 = distinct !DILocation(line: 28, column: 9, scope: !5698, inlinedAt: !5699)
!5698 = distinct !DISubprogram(name: "atomic_read", scope: !5601, file: !5601, line: 25, type: !5692, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5699 = distinct !DILocation(line: 147, column: 9, scope: !5685)
!5700 = !DILocation(line: 69, column: 73, scope: !5169, inlinedAt: !5701)
!5701 = distinct !DILocation(line: 27, column: 2, scope: !5698, inlinedAt: !5699)
!5702 = !DILocation(line: 69, column: 83, scope: !5169, inlinedAt: !5701)
!5703 = !DILocalVariable(name: "v", arg: 1, scope: !5698, file: !5601, line: 25, type: !5694)
!5704 = !DILocation(line: 25, column: 29, scope: !5698, inlinedAt: !5699)
!5705 = !DILocalVariable(name: "r", arg: 1, scope: !5685, file: !86, line: 145, type: !5688)
!5706 = !DILocation(line: 145, column: 60, scope: !5685)
!5707 = !DILocation(line: 147, column: 22, scope: !5685)
!5708 = !DILocation(line: 147, column: 25, scope: !5685)
!5709 = !DILocation(line: 27, column: 25, scope: !5698, inlinedAt: !5699)
!5710 = !DILocation(line: 71, column: 19, scope: !5169, inlinedAt: !5701)
!5711 = !DILocation(line: 71, column: 22, scope: !5169, inlinedAt: !5701)
!5712 = !DILocation(line: 71, column: 2, scope: !5169, inlinedAt: !5701)
!5713 = !DILocation(line: 72, column: 2, scope: !5169, inlinedAt: !5701)
!5714 = !DILocation(line: 28, column: 26, scope: !5698, inlinedAt: !5699)
!5715 = !DILocation(line: 29, column: 9, scope: !5691, inlinedAt: !5697)
!5716 = !DILocation(line: 147, column: 2, scope: !5685)
!5717 = distinct !DISubprogram(name: "kasan_check_write", scope: !5207, file: !5207, line: 38, type: !5208, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5718 = !DILocalVariable(name: "p", arg: 1, scope: !5717, file: !5207, line: 38, type: !5173)
!5719 = !DILocation(line: 38, column: 59, scope: !5717)
!5720 = !DILocalVariable(name: "size", arg: 2, scope: !5717, file: !5207, line: 38, type: !7)
!5721 = !DILocation(line: 38, column: 75, scope: !5717)
!5722 = !DILocation(line: 40, column: 2, scope: !5717)
!5723 = distinct !DISubprogram(name: "refcount_set", scope: !86, file: !86, line: 134, type: !5724, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5724 = !DISubroutineType(types: !5725)
!5725 = !{null, !5572, !114}
!5726 = !DILocalVariable(name: "v", arg: 1, scope: !5727, file: !5594, line: 39, type: !5597)
!5727 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5594, file: !5594, line: 39, type: !5728, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5728 = !DISubroutineType(types: !5729)
!5729 = !{null, !5597, !114}
!5730 = !DILocation(line: 39, column: 55, scope: !5727, inlinedAt: !5731)
!5731 = distinct !DILocation(line: 46, column: 2, scope: !5732, inlinedAt: !5733)
!5732 = distinct !DISubprogram(name: "atomic_set", scope: !5601, file: !5601, line: 43, type: !5728, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5733 = distinct !DILocation(line: 136, column: 2, scope: !5723)
!5734 = !DILocalVariable(name: "i", arg: 2, scope: !5727, file: !5594, line: 39, type: !114)
!5735 = !DILocation(line: 39, column: 62, scope: !5727, inlinedAt: !5731)
!5736 = !DILocalVariable(name: "v", arg: 1, scope: !5737, file: !5170, line: 84, type: !5173)
!5737 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5170, file: !5170, line: 84, type: !5171, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5738 = !DILocation(line: 84, column: 74, scope: !5737, inlinedAt: !5739)
!5739 = distinct !DILocation(line: 45, column: 2, scope: !5732, inlinedAt: !5733)
!5740 = !DILocalVariable(name: "size", arg: 2, scope: !5737, file: !5170, line: 84, type: !136)
!5741 = !DILocation(line: 84, column: 84, scope: !5737, inlinedAt: !5739)
!5742 = !DILocalVariable(name: "v", arg: 1, scope: !5732, file: !5601, line: 43, type: !5597)
!5743 = !DILocation(line: 43, column: 22, scope: !5732, inlinedAt: !5733)
!5744 = !DILocalVariable(name: "i", arg: 2, scope: !5732, file: !5601, line: 43, type: !114)
!5745 = !DILocation(line: 43, column: 29, scope: !5732, inlinedAt: !5733)
!5746 = !DILocalVariable(name: "r", arg: 1, scope: !5723, file: !86, line: 134, type: !5572)
!5747 = !DILocation(line: 134, column: 45, scope: !5723)
!5748 = !DILocalVariable(name: "n", arg: 2, scope: !5723, file: !86, line: 134, type: !114)
!5749 = !DILocation(line: 134, column: 52, scope: !5723)
!5750 = !DILocation(line: 136, column: 14, scope: !5723)
!5751 = !DILocation(line: 136, column: 17, scope: !5723)
!5752 = !DILocation(line: 136, column: 23, scope: !5723)
!5753 = !DILocation(line: 45, column: 26, scope: !5732, inlinedAt: !5733)
!5754 = !DILocation(line: 86, column: 20, scope: !5737, inlinedAt: !5739)
!5755 = !DILocation(line: 86, column: 23, scope: !5737, inlinedAt: !5739)
!5756 = !DILocation(line: 86, column: 2, scope: !5737, inlinedAt: !5739)
!5757 = !DILocation(line: 87, column: 2, scope: !5737, inlinedAt: !5739)
!5758 = !DILocation(line: 46, column: 18, scope: !5732, inlinedAt: !5733)
!5759 = !DILocation(line: 46, column: 21, scope: !5732, inlinedAt: !5733)
!5760 = !DILocation(line: 41, column: 2, scope: !5761, inlinedAt: !5731)
!5761 = distinct !DILexicalBlock(scope: !5727, file: !5594, line: 41, column: 2)
!5762 = !DILocation(line: 137, column: 1, scope: !5723)
!5763 = distinct !DISubprogram(name: "hwrng_fillfn", scope: !3, file: !3, line: 431, type: !5764, scopeLine: 432, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5764 = !DISubroutineType(types: !5765)
!5765 = !{!114, !101}
!5766 = !DILocalVariable(name: "unused", arg: 1, scope: !5763, file: !3, line: 431, type: !101)
!5767 = !DILocation(line: 431, column: 31, scope: !5763)
!5768 = !DILocalVariable(name: "rc", scope: !5763, file: !3, line: 433, type: !187)
!5769 = !DILocation(line: 433, column: 7, scope: !5763)
!5770 = !DILocation(line: 435, column: 2, scope: !5763)
!5771 = !DILocation(line: 435, column: 10, scope: !5763)
!5772 = !DILocation(line: 435, column: 9, scope: !5763)
!5773 = !DILocalVariable(name: "rng", scope: !5774, file: !3, line: 436, type: !102)
!5774 = distinct !DILexicalBlock(scope: !5763, file: !3, line: 435, column: 33)
!5775 = !DILocation(line: 436, column: 17, scope: !5774)
!5776 = !DILocation(line: 438, column: 9, scope: !5774)
!5777 = !DILocation(line: 438, column: 7, scope: !5774)
!5778 = !DILocation(line: 439, column: 14, scope: !5779)
!5779 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 439, column: 7)
!5780 = !DILocation(line: 439, column: 7, scope: !5779)
!5781 = !DILocation(line: 439, column: 19, scope: !5779)
!5782 = !DILocation(line: 439, column: 23, scope: !5779)
!5783 = !DILocation(line: 439, column: 7, scope: !5774)
!5784 = !DILocation(line: 440, column: 4, scope: !5779)
!5785 = !DILocation(line: 441, column: 3, scope: !5774)
!5786 = !DILocation(line: 442, column: 21, scope: !5774)
!5787 = !DILocation(line: 442, column: 26, scope: !5774)
!5788 = !DILocation(line: 443, column: 7, scope: !5774)
!5789 = !DILocation(line: 442, column: 8, scope: !5774)
!5790 = !DILocation(line: 442, column: 6, scope: !5774)
!5791 = !DILocation(line: 444, column: 3, scope: !5774)
!5792 = !DILocation(line: 445, column: 11, scope: !5774)
!5793 = !DILocation(line: 445, column: 3, scope: !5774)
!5794 = !DILocation(line: 446, column: 7, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5774, file: !3, line: 446, column: 7)
!5796 = !DILocation(line: 446, column: 10, scope: !5795)
!5797 = !DILocation(line: 446, column: 7, scope: !5774)
!5798 = !DILocation(line: 447, column: 4, scope: !5799)
!5799 = distinct !DILexicalBlock(scope: !5795, file: !3, line: 446, column: 16)
!5800 = !DILocation(line: 448, column: 4, scope: !5799)
!5801 = !DILocation(line: 449, column: 4, scope: !5799)
!5802 = distinct !{!5802, !5770, !5803}
!5803 = !DILocation(line: 454, column: 2, scope: !5763)
!5804 = !DILocation(line: 452, column: 38, scope: !5774)
!5805 = !DILocation(line: 452, column: 51, scope: !5774)
!5806 = !DILocation(line: 453, column: 9, scope: !5774)
!5807 = !DILocation(line: 453, column: 14, scope: !5774)
!5808 = !DILocation(line: 453, column: 12, scope: !5774)
!5809 = !DILocation(line: 453, column: 30, scope: !5774)
!5810 = !DILocation(line: 453, column: 34, scope: !5774)
!5811 = !DILocation(line: 452, column: 3, scope: !5774)
!5812 = !DILocation(line: 455, column: 13, scope: !5763)
!5813 = !DILocation(line: 456, column: 2, scope: !5763)
!5814 = distinct !DISubprogram(name: "refcount_inc", scope: !86, file: !86, line: 265, type: !5815, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5815 = !DISubroutineType(types: !5816)
!5816 = !{null, !5572}
!5817 = !DILocalVariable(name: "r", arg: 1, scope: !5814, file: !86, line: 265, type: !5572)
!5818 = !DILocation(line: 265, column: 45, scope: !5814)
!5819 = !DILocation(line: 267, column: 17, scope: !5814)
!5820 = !DILocation(line: 267, column: 2, scope: !5814)
!5821 = !DILocation(line: 268, column: 1, scope: !5814)
!5822 = distinct !DISubprogram(name: "__refcount_inc", scope: !86, file: !86, line: 248, type: !5823, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5823 = !DISubroutineType(types: !5824)
!5824 = !{null, !5572, !762}
!5825 = !DILocalVariable(name: "r", arg: 1, scope: !5822, file: !86, line: 248, type: !5572)
!5826 = !DILocation(line: 248, column: 47, scope: !5822)
!5827 = !DILocalVariable(name: "oldp", arg: 2, scope: !5822, file: !86, line: 248, type: !762)
!5828 = !DILocation(line: 248, column: 55, scope: !5822)
!5829 = !DILocation(line: 250, column: 20, scope: !5822)
!5830 = !DILocation(line: 250, column: 23, scope: !5822)
!5831 = !DILocation(line: 250, column: 2, scope: !5822)
!5832 = !DILocation(line: 251, column: 1, scope: !5822)
!5833 = distinct !DISubprogram(name: "__refcount_add", scope: !86, file: !86, line: 191, type: !5834, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5834 = !DISubroutineType(types: !5835)
!5835 = !{null, !114, !5572, !762}
!5836 = !DILocalVariable(name: "i", arg: 1, scope: !5837, file: !5594, line: 182, type: !114)
!5837 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5594, file: !5594, line: 182, type: !5838, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5838 = !DISubroutineType(types: !5839)
!5839 = !{!114, !114, !5597}
!5840 = !DILocation(line: 182, column: 54, scope: !5837, inlinedAt: !5841)
!5841 = distinct !DILocation(line: 143, column: 9, scope: !5842, inlinedAt: !5843)
!5842 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5601, file: !5601, line: 140, type: !5838, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5843 = distinct !DILocation(line: 193, column: 12, scope: !5833)
!5844 = !DILocalVariable(name: "v", arg: 2, scope: !5837, file: !5594, line: 182, type: !5597)
!5845 = !DILocation(line: 182, column: 67, scope: !5837, inlinedAt: !5841)
!5846 = !DILocalVariable(name: "__ret", scope: !5847, file: !5594, line: 184, type: !114)
!5847 = distinct !DILexicalBlock(scope: !5837, file: !5594, line: 184, column: 9)
!5848 = !DILocation(line: 184, column: 9, scope: !5847, inlinedAt: !5841)
!5849 = !DILocation(line: 99, column: 79, scope: !5615, inlinedAt: !5850)
!5850 = distinct !DILocation(line: 142, column: 2, scope: !5842, inlinedAt: !5843)
!5851 = !DILocation(line: 99, column: 89, scope: !5615, inlinedAt: !5850)
!5852 = !DILocalVariable(name: "i", arg: 1, scope: !5842, file: !5601, line: 140, type: !114)
!5853 = !DILocation(line: 140, column: 30, scope: !5842, inlinedAt: !5843)
!5854 = !DILocalVariable(name: "v", arg: 2, scope: !5842, file: !5601, line: 140, type: !5597)
!5855 = !DILocation(line: 140, column: 43, scope: !5842, inlinedAt: !5843)
!5856 = !DILocalVariable(name: "i", arg: 1, scope: !5833, file: !86, line: 191, type: !114)
!5857 = !DILocation(line: 191, column: 39, scope: !5833)
!5858 = !DILocalVariable(name: "r", arg: 2, scope: !5833, file: !86, line: 191, type: !5572)
!5859 = !DILocation(line: 191, column: 54, scope: !5833)
!5860 = !DILocalVariable(name: "oldp", arg: 3, scope: !5833, file: !86, line: 191, type: !762)
!5861 = !DILocation(line: 191, column: 62, scope: !5833)
!5862 = !DILocalVariable(name: "old", scope: !5833, file: !86, line: 193, type: !114)
!5863 = !DILocation(line: 193, column: 6, scope: !5833)
!5864 = !DILocation(line: 193, column: 37, scope: !5833)
!5865 = !DILocation(line: 193, column: 41, scope: !5833)
!5866 = !DILocation(line: 193, column: 44, scope: !5833)
!5867 = !DILocation(line: 142, column: 31, scope: !5842, inlinedAt: !5843)
!5868 = !DILocation(line: 101, column: 20, scope: !5615, inlinedAt: !5850)
!5869 = !DILocation(line: 101, column: 23, scope: !5615, inlinedAt: !5850)
!5870 = !DILocation(line: 101, column: 2, scope: !5615, inlinedAt: !5850)
!5871 = !DILocation(line: 102, column: 2, scope: !5615, inlinedAt: !5850)
!5872 = !DILocation(line: 143, column: 39, scope: !5842, inlinedAt: !5843)
!5873 = !DILocation(line: 143, column: 42, scope: !5842, inlinedAt: !5843)
!5874 = !{i32 -2146636015}
!5875 = !DILocation(line: 195, column: 6, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5833, file: !86, line: 195, column: 6)
!5877 = !DILocation(line: 195, column: 6, scope: !5833)
!5878 = !DILocation(line: 196, column: 11, scope: !5876)
!5879 = !DILocation(line: 196, column: 4, scope: !5876)
!5880 = !DILocation(line: 196, column: 9, scope: !5876)
!5881 = !DILocation(line: 196, column: 3, scope: !5876)
!5882 = !DILocation(line: 198, column: 6, scope: !5883)
!5883 = distinct !DILexicalBlock(scope: !5833, file: !86, line: 198, column: 6)
!5884 = !DILocation(line: 198, column: 6, scope: !5833)
!5885 = !DILocation(line: 199, column: 26, scope: !5883)
!5886 = !DILocation(line: 199, column: 3, scope: !5883)
!5887 = !DILocation(line: 200, column: 11, scope: !5888)
!5888 = distinct !DILexicalBlock(scope: !5883, file: !86, line: 200, column: 11)
!5889 = !DILocation(line: 200, column: 11, scope: !5883)
!5890 = !DILocation(line: 201, column: 26, scope: !5888)
!5891 = !DILocation(line: 201, column: 3, scope: !5888)
!5892 = !DILocation(line: 202, column: 1, scope: !5833)
!5893 = distinct !DISubprogram(name: "kref_put", scope: !155, file: !155, line: 62, type: !5894, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5894 = !DISubroutineType(types: !5895)
!5895 = !{!114, !3870, !5896}
!5896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!5897 = !DILocalVariable(name: "kref", arg: 1, scope: !5893, file: !155, line: 62, type: !3870)
!5898 = !DILocation(line: 62, column: 41, scope: !5893)
!5899 = !DILocalVariable(name: "release", arg: 2, scope: !5893, file: !155, line: 62, type: !5896)
!5900 = !DILocation(line: 62, column: 54, scope: !5893)
!5901 = !DILocation(line: 64, column: 29, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5893, file: !155, line: 64, column: 6)
!5903 = !DILocation(line: 64, column: 35, scope: !5902)
!5904 = !DILocation(line: 64, column: 6, scope: !5902)
!5905 = !DILocation(line: 64, column: 6, scope: !5893)
!5906 = !DILocation(line: 65, column: 3, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5902, file: !155, line: 64, column: 46)
!5908 = !DILocation(line: 65, column: 11, scope: !5907)
!5909 = !DILocation(line: 66, column: 3, scope: !5907)
!5910 = !DILocation(line: 68, column: 2, scope: !5893)
!5911 = !DILocation(line: 69, column: 1, scope: !5893)
!5912 = distinct !DISubprogram(name: "cleanup_rng", scope: !3, file: !3, line: 76, type: !3868, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5913 = !DILocalVariable(name: "kref", arg: 1, scope: !5912, file: !3, line: 76, type: !3870)
!5914 = !DILocation(line: 76, column: 45, scope: !5912)
!5915 = !DILocalVariable(name: "rng", scope: !5912, file: !3, line: 78, type: !102)
!5916 = !DILocation(line: 78, column: 16, scope: !5912)
!5917 = !DILocalVariable(name: "__mptr", scope: !5918, file: !3, line: 78, type: !101)
!5918 = distinct !DILexicalBlock(scope: !5912, file: !3, line: 78, column: 22)
!5919 = !DILocation(line: 78, column: 22, scope: !5918)
!5920 = !DILocation(line: 78, column: 22, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5918, file: !3, line: 78, column: 22)
!5922 = !DILocation(line: 80, column: 6, scope: !5923)
!5923 = distinct !DILexicalBlock(scope: !5912, file: !3, line: 80, column: 6)
!5924 = !DILocation(line: 80, column: 11, scope: !5923)
!5925 = !DILocation(line: 80, column: 6, scope: !5912)
!5926 = !DILocation(line: 81, column: 3, scope: !5923)
!5927 = !DILocation(line: 81, column: 8, scope: !5923)
!5928 = !DILocation(line: 81, column: 16, scope: !5923)
!5929 = !DILocation(line: 83, column: 12, scope: !5912)
!5930 = !DILocation(line: 83, column: 17, scope: !5912)
!5931 = !DILocation(line: 83, column: 2, scope: !5912)
!5932 = !DILocation(line: 84, column: 1, scope: !5912)
!5933 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !86, file: !86, line: 331, type: !5570, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5934 = !DILocalVariable(name: "r", arg: 1, scope: !5933, file: !86, line: 331, type: !5572)
!5935 = !DILocation(line: 331, column: 67, scope: !5933)
!5936 = !DILocation(line: 333, column: 33, scope: !5933)
!5937 = !DILocation(line: 333, column: 9, scope: !5933)
!5938 = !DILocation(line: 333, column: 2, scope: !5933)
!5939 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !86, file: !86, line: 313, type: !5579, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5940 = !DILocalVariable(name: "r", arg: 1, scope: !5939, file: !86, line: 313, type: !5572)
!5941 = !DILocation(line: 313, column: 69, scope: !5939)
!5942 = !DILocalVariable(name: "oldp", arg: 2, scope: !5939, file: !86, line: 313, type: !762)
!5943 = !DILocation(line: 313, column: 77, scope: !5939)
!5944 = !DILocation(line: 315, column: 36, scope: !5939)
!5945 = !DILocation(line: 315, column: 39, scope: !5939)
!5946 = !DILocation(line: 315, column: 9, scope: !5939)
!5947 = !DILocation(line: 315, column: 2, scope: !5939)
!5948 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !86, file: !86, line: 270, type: !5590, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5949 = !DILocalVariable(name: "i", arg: 1, scope: !5950, file: !5594, line: 188, type: !114)
!5950 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5594, file: !5594, line: 188, type: !5838, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5951 = !DILocation(line: 188, column: 54, scope: !5950, inlinedAt: !5952)
!5952 = distinct !DILocation(line: 221, column: 9, scope: !5953, inlinedAt: !5954)
!5953 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5601, file: !5601, line: 218, type: !5838, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!5954 = distinct !DILocation(line: 272, column: 12, scope: !5948)
!5955 = !DILocalVariable(name: "v", arg: 2, scope: !5950, file: !5594, line: 188, type: !5597)
!5956 = !DILocation(line: 188, column: 67, scope: !5950, inlinedAt: !5952)
!5957 = !DILocalVariable(name: "__ret", scope: !5958, file: !5594, line: 190, type: !114)
!5958 = distinct !DILexicalBlock(scope: !5950, file: !5594, line: 190, column: 9)
!5959 = !DILocation(line: 190, column: 9, scope: !5958, inlinedAt: !5952)
!5960 = !DILocation(line: 99, column: 79, scope: !5615, inlinedAt: !5961)
!5961 = distinct !DILocation(line: 220, column: 2, scope: !5953, inlinedAt: !5954)
!5962 = !DILocation(line: 99, column: 89, scope: !5615, inlinedAt: !5961)
!5963 = !DILocalVariable(name: "i", arg: 1, scope: !5953, file: !5601, line: 218, type: !114)
!5964 = !DILocation(line: 218, column: 30, scope: !5953, inlinedAt: !5954)
!5965 = !DILocalVariable(name: "v", arg: 2, scope: !5953, file: !5601, line: 218, type: !5597)
!5966 = !DILocation(line: 218, column: 43, scope: !5953, inlinedAt: !5954)
!5967 = !DILocalVariable(name: "i", arg: 1, scope: !5948, file: !86, line: 270, type: !114)
!5968 = !DILocation(line: 270, column: 61, scope: !5948)
!5969 = !DILocalVariable(name: "r", arg: 2, scope: !5948, file: !86, line: 270, type: !5572)
!5970 = !DILocation(line: 270, column: 76, scope: !5948)
!5971 = !DILocalVariable(name: "oldp", arg: 3, scope: !5948, file: !86, line: 270, type: !762)
!5972 = !DILocation(line: 270, column: 84, scope: !5948)
!5973 = !DILocalVariable(name: "old", scope: !5948, file: !86, line: 272, type: !114)
!5974 = !DILocation(line: 272, column: 6, scope: !5948)
!5975 = !DILocation(line: 272, column: 37, scope: !5948)
!5976 = !DILocation(line: 272, column: 41, scope: !5948)
!5977 = !DILocation(line: 272, column: 44, scope: !5948)
!5978 = !DILocation(line: 220, column: 31, scope: !5953, inlinedAt: !5954)
!5979 = !DILocation(line: 101, column: 20, scope: !5615, inlinedAt: !5961)
!5980 = !DILocation(line: 101, column: 23, scope: !5615, inlinedAt: !5961)
!5981 = !DILocation(line: 101, column: 2, scope: !5615, inlinedAt: !5961)
!5982 = !DILocation(line: 102, column: 2, scope: !5615, inlinedAt: !5961)
!5983 = !DILocation(line: 221, column: 39, scope: !5953, inlinedAt: !5954)
!5984 = !DILocation(line: 221, column: 42, scope: !5953, inlinedAt: !5954)
!5985 = !{i32 -2146634663}
!5986 = !DILocation(line: 274, column: 6, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5948, file: !86, line: 274, column: 6)
!5988 = !DILocation(line: 274, column: 6, scope: !5948)
!5989 = !DILocation(line: 275, column: 11, scope: !5987)
!5990 = !DILocation(line: 275, column: 4, scope: !5987)
!5991 = !DILocation(line: 275, column: 9, scope: !5987)
!5992 = !DILocation(line: 275, column: 3, scope: !5987)
!5993 = !DILocation(line: 277, column: 6, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5948, file: !86, line: 277, column: 6)
!5995 = !DILocation(line: 277, column: 13, scope: !5994)
!5996 = !DILocation(line: 277, column: 10, scope: !5994)
!5997 = !DILocation(line: 277, column: 6, scope: !5948)
!5998 = !DILocation(line: 278, column: 3, scope: !5999)
!5999 = distinct !DILexicalBlock(scope: !5994, file: !86, line: 277, column: 16)
!6000 = !{i32 -2145260408}
!6001 = !DILocation(line: 279, column: 3, scope: !5999)
!6002 = !DILocation(line: 282, column: 6, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !5948, file: !86, line: 282, column: 6)
!6004 = !DILocation(line: 282, column: 6, scope: !5948)
!6005 = !DILocation(line: 283, column: 26, scope: !6003)
!6006 = !DILocation(line: 283, column: 3, scope: !6003)
!6007 = !DILocation(line: 285, column: 2, scope: !5948)
!6008 = !DILocation(line: 286, column: 1, scope: !5948)
!6009 = distinct !DISubprogram(name: "__list_del_entry", scope: !3819, file: !3819, line: 130, type: !3979, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6010 = !DILocalVariable(name: "entry", arg: 1, scope: !6009, file: !3819, line: 130, type: !151)
!6011 = !DILocation(line: 130, column: 55, scope: !6009)
!6012 = !DILocation(line: 132, column: 30, scope: !6013)
!6013 = distinct !DILexicalBlock(scope: !6009, file: !3819, line: 132, column: 6)
!6014 = !DILocation(line: 132, column: 7, scope: !6013)
!6015 = !DILocation(line: 132, column: 6, scope: !6009)
!6016 = !DILocation(line: 133, column: 3, scope: !6013)
!6017 = !DILocation(line: 135, column: 13, scope: !6009)
!6018 = !DILocation(line: 135, column: 20, scope: !6009)
!6019 = !DILocation(line: 135, column: 26, scope: !6009)
!6020 = !DILocation(line: 135, column: 33, scope: !6009)
!6021 = !DILocation(line: 135, column: 2, scope: !6009)
!6022 = !DILocation(line: 136, column: 1, scope: !6009)
!6023 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !3819, file: !3819, line: 51, type: !6024, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6024 = !DISubroutineType(types: !6025)
!6025 = !{!142, !151}
!6026 = !DILocalVariable(name: "entry", arg: 1, scope: !6023, file: !3819, line: 51, type: !151)
!6027 = !DILocation(line: 51, column: 61, scope: !6023)
!6028 = !DILocation(line: 53, column: 2, scope: !6023)
!6029 = distinct !DISubprogram(name: "__list_del", scope: !3819, file: !3819, line: 110, type: !3820, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6030 = !DILocalVariable(name: "prev", arg: 1, scope: !6029, file: !3819, line: 110, type: !151)
!6031 = !DILocation(line: 110, column: 50, scope: !6029)
!6032 = !DILocalVariable(name: "next", arg: 2, scope: !6029, file: !3819, line: 110, type: !151)
!6033 = !DILocation(line: 110, column: 75, scope: !6029)
!6034 = !DILocation(line: 112, column: 15, scope: !6029)
!6035 = !DILocation(line: 112, column: 2, scope: !6029)
!6036 = !DILocation(line: 112, column: 8, scope: !6029)
!6037 = !DILocation(line: 112, column: 13, scope: !6029)
!6038 = !DILocation(line: 113, column: 2, scope: !6029)
!6039 = !DILocation(line: 113, column: 2, scope: !6040)
!6040 = distinct !DILexicalBlock(scope: !6029, file: !3819, line: 113, column: 2)
!6041 = !DILocation(line: 113, column: 2, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !6040, file: !3819, line: 113, column: 2)
!6043 = !DILocation(line: 113, column: 2, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !6040, file: !3819, line: 113, column: 2)
!6045 = !DILocation(line: 114, column: 1, scope: !6029)
!6046 = distinct !DISubprogram(name: "register_miscdev", scope: !3, file: !3, line: 426, type: !3993, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6047 = !DILocation(line: 428, column: 9, scope: !6046)
!6048 = !DILocation(line: 428, column: 2, scope: !6046)
!6049 = distinct !DISubprogram(name: "get_order", scope: !6050, file: !6050, line: 29, type: !6051, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6050 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!6051 = !DISubroutineType(types: !6052)
!6052 = !{!114, !141}
!6053 = !DILocalVariable(name: "x", arg: 1, scope: !6054, file: !5155, line: 366, type: !236)
!6054 = distinct !DISubprogram(name: "fls64", scope: !5155, file: !5155, line: 366, type: !6055, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6055 = !DISubroutineType(types: !6056)
!6056 = !{!114, !236}
!6057 = !DILocation(line: 366, column: 40, scope: !6054, inlinedAt: !6058)
!6058 = distinct !DILocation(line: 46, column: 9, scope: !6049)
!6059 = !DILocalVariable(name: "bitpos", scope: !6054, file: !5155, line: 368, type: !114)
!6060 = !DILocation(line: 368, column: 6, scope: !6054, inlinedAt: !6058)
!6061 = !DILocalVariable(name: "size", arg: 1, scope: !6049, file: !6050, line: 29, type: !141)
!6062 = !DILocation(line: 29, column: 63, scope: !6049)
!6063 = !DILocation(line: 31, column: 27, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !6049, file: !6050, line: 31, column: 6)
!6065 = !DILocation(line: 31, column: 6, scope: !6064)
!6066 = !DILocation(line: 31, column: 6, scope: !6049)
!6067 = !DILocation(line: 32, column: 8, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6069, file: !6050, line: 32, column: 7)
!6069 = distinct !DILexicalBlock(scope: !6064, file: !6050, line: 31, column: 34)
!6070 = !DILocation(line: 32, column: 7, scope: !6069)
!6071 = !DILocation(line: 33, column: 4, scope: !6068)
!6072 = !DILocation(line: 35, column: 7, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !6069, file: !6050, line: 35, column: 7)
!6074 = !DILocation(line: 35, column: 12, scope: !6073)
!6075 = !DILocation(line: 35, column: 7, scope: !6069)
!6076 = !DILocation(line: 36, column: 4, scope: !6073)
!6077 = !DILocation(line: 38, column: 10, scope: !6069)
!6078 = !DILocation(line: 38, column: 28, scope: !6069)
!6079 = !DILocation(line: 38, column: 41, scope: !6069)
!6080 = !DILocation(line: 38, column: 3, scope: !6069)
!6081 = !DILocation(line: 41, column: 6, scope: !6049)
!6082 = !DILocation(line: 42, column: 7, scope: !6049)
!6083 = !DILocation(line: 46, column: 15, scope: !6049)
!6084 = !DILocation(line: 374, column: 2, scope: !6054, inlinedAt: !6058)
!6085 = !DILocation(line: 376, column: 14, scope: !6054, inlinedAt: !6058)
!6086 = !{i32 255040}
!6087 = !DILocation(line: 377, column: 9, scope: !6054, inlinedAt: !6058)
!6088 = !DILocation(line: 377, column: 16, scope: !6054, inlinedAt: !6058)
!6089 = !DILocation(line: 46, column: 2, scope: !6049)
!6090 = !DILocation(line: 48, column: 1, scope: !6049)
!6091 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6092, file: !6092, line: 30, type: !6093, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6092 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!6093 = !DISubroutineType(types: !6094)
!6094 = !{!114, !235}
!6095 = !DILocation(line: 366, column: 40, scope: !6054, inlinedAt: !6096)
!6096 = distinct !DILocation(line: 32, column: 9, scope: !6091)
!6097 = !DILocation(line: 368, column: 6, scope: !6054, inlinedAt: !6096)
!6098 = !DILocalVariable(name: "n", arg: 1, scope: !6091, file: !6092, line: 30, type: !235)
!6099 = !DILocation(line: 30, column: 21, scope: !6091)
!6100 = !DILocation(line: 32, column: 15, scope: !6091)
!6101 = !DILocation(line: 374, column: 2, scope: !6054, inlinedAt: !6096)
!6102 = !DILocation(line: 376, column: 14, scope: !6054, inlinedAt: !6096)
!6103 = !DILocation(line: 377, column: 9, scope: !6054, inlinedAt: !6096)
!6104 = !DILocation(line: 377, column: 16, scope: !6054, inlinedAt: !6096)
!6105 = !DILocation(line: 32, column: 18, scope: !6091)
!6106 = !DILocation(line: 32, column: 2, scope: !6091)
!6107 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !6108, file: !6108, line: 137, type: !6109, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !184)
!6108 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!6109 = !DISubroutineType(types: !6110)
!6110 = !{!101, !977, !3121, !136, !186}
!6111 = !DILocalVariable(name: "s", arg: 1, scope: !6107, file: !6108, line: 137, type: !977)
!6112 = !DILocation(line: 137, column: 54, scope: !6107)
!6113 = !DILocalVariable(name: "object", arg: 2, scope: !6107, file: !6108, line: 137, type: !3121)
!6114 = !DILocation(line: 137, column: 69, scope: !6107)
!6115 = !DILocalVariable(name: "size", arg: 3, scope: !6107, file: !6108, line: 138, type: !136)
!6116 = !DILocation(line: 138, column: 12, scope: !6107)
!6117 = !DILocalVariable(name: "flags", arg: 4, scope: !6107, file: !6108, line: 138, type: !186)
!6118 = !DILocation(line: 138, column: 24, scope: !6107)
!6119 = !DILocation(line: 140, column: 17, scope: !6107)
!6120 = !DILocation(line: 140, column: 2, scope: !6107)
