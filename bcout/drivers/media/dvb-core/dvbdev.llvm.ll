; ModuleID = '../bcout/drivers/media/dvb-core/dvbdev.llvm.bc'
source_filename = "drivers/media/dvb-core/dvbdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_init_dvbdev4:\09\09\09"
module asm ".long\09init_dvbdev - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.3 }
%union.anon.3 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.lock_class_key = type {}
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.dvb_device = type { %struct.list_head, %struct.file_operations*, %struct.dvb_adapter*, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, i32 (%struct.file*, i32, i8*)*, i8* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, {}*, i32 (%struct.file*, i8*)*, {}*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.file = type { %union.anon.6, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.6 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type opaque
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.59, %struct.list_head, %struct.list_head, %union.anon.60 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.0, i8* }
%union.anon.0 = type { i64 }
%struct.lockref = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.spinlock, i32 }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.page = type { i64, %union.anon.4, %union.anon.57, %struct.atomic_t, [8 x i8] }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.57 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.58, i32 }
%union.anon.58 = type { %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.mem_dqblk = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kprojid_t = type { i32 }
%struct.quotactl_ops = type { i32 (%struct.super_block*, i32, i32, %struct.path*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*, i32, %struct.qc_info*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.kqid*, %struct.qc_dqblk*)*, i32 (%struct.super_block*, i64, %struct.qc_dqblk*)*, i32 (%struct.super_block*, %struct.qc_state*)*, i32 (%struct.super_block*, i32)* }
%struct.qc_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qc_dqblk = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i32 }
%struct.qc_state = type { i32, [3 x %struct.qc_type_state] }
%struct.qc_type_state = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64 }
%struct.export_operations = type opaque
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
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, i32*, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { %struct.task_struct* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.37, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon.8, [0 x i64] }
%struct.anon.8 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.42, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.42 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type { void (%struct.vm_area_struct*)*, void (%struct.vm_area_struct*)*, i32 (%struct.vm_area_struct*, i64)*, i32 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*, i32)*, void (%struct.vm_fault*, i64, i64)*, i64 (%struct.vm_area_struct*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_fault*)*, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)*, i8* (%struct.vm_area_struct*)*, %struct.page* (%struct.vm_area_struct*, i64)* }
%struct.vm_fault = type { %struct.vm_area_struct*, i32, i32, i64, i64, %struct.pmd_t*, %struct.pud_t*, %struct.pte_t, %struct.page*, %struct.page*, %struct.pte_t*, %struct.spinlock*, %struct.page* }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.pte_t = type { i64 }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.9 }
%union.anon.9 = type { %struct.anon.10 }
%struct.anon.10 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.14, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.15, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.16, %union.anon.20, %struct.key_restriction* }
%union.anon.14 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.15 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.16 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.17, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.17 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.20 = type { %union.key_payload }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.23, %union.anon.24, i32 }
%struct.request_queue = type opaque
%union.anon.23 = type { %struct.list_head }
%union.anon.24 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.25 }
%struct.anon.25 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.29 }
%struct.anon.29 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.36, i32, [12 x i8] }
%union.anon.36 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.37 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.38, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.41 }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { i64, i64 }
%union.anon.41 = type { [12 x i32] }
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
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.61, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.62, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.63, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.64, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.61 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.62 = type { %struct.callback_head }
%union.anon.63 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.64 = type { %struct.pipe_inode_info* }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.22 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.22 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.7 }
%union.anon.7 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.43 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.43 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, i8*, [6 x i8], i8*, %struct.device*, %struct.module*, i32, %struct.dvb_device*, %struct.mutex }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.65, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.65 = type { %struct.kernfs_elem_attr }
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
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cdev = type { %struct.kobject, %struct.module*, %struct.file_operations*, %struct.list_head, i32, i32 }
%struct.kmem_cache = type opaque
%struct.i2c_client = type { i16, i16, [20 x i8], %struct.i2c_adapter*, %struct.device, i32, i32, %struct.list_head }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.i2c_lock_operations*, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info*, %struct.i2c_adapter_quirks*, %struct.irq_domain* }
%struct.i2c_algorithm = type { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.i2c_lock_operations = type { void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)* }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.i2c_bus_recovery_info = type { i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.pinctrl*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.gpio_desc = type opaque
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, i8*, i8*, %struct.device_node*, %struct.fwnode_handle*, %struct.property_entry*, %struct.resource*, i32, i32 }
%struct.property_entry = type { i8*, i64, i8, i32, %union.anon.66 }
%union.anon.66 = type { i8* }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }

@__param_str_dvbdev_debug = internal constant [22 x i8] c"dvb_core.dvbdev_debug\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@dvbdev_debug = internal global i32 0, align 4, !dbg !4018
@__param_dvbdev_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__param_str_dvbdev_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @dvbdev_debug to i8*) } }, section "__param", align 8, !dbg !3917
@__UNIQUE_ID_dvbdev_debugtype250 = internal constant [35 x i8] c"dvb_core.parmtype=dvbdev_debug:int\00", section ".modinfo", align 1, !dbg !3969
@__UNIQUE_ID_dvbdev_debug251 = internal constant [71 x i8] c"dvb_core.parm=dvbdev_debug:Turn on/off device debugging (default:off).\00", section ".modinfo", align 1, !dbg !3974
@dvbdev_register_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @dvbdev_register_lock to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @dvbdev_register_lock to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !4029
@.str = private unnamed_addr constant [44 x i8] c"\013dvbdev: %s: couldn't find free device id\0A\00", align 1
@__func__.dvb_register_device = private unnamed_addr constant [20 x i8] c"dvb_register_device\00", align 1
@dvb_register_device.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3979
@.str.1 = private unnamed_addr constant [20 x i8] c"&dvbdev->wait_queue\00", align 1
@minor_rwsem = internal global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.raw_spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @minor_rwsem to i8*), i64 16) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.rw_semaphore* @minor_rwsem to i8*), i64 16) to %struct.list_head*) } }, align 8, !dbg !4031
@dvb_minors = internal global [256 x %struct.dvb_device*] zeroinitializer, align 16, !dbg !4022
@.str.2 = private unnamed_addr constant [73 x i8] c"\013dvbdev: %s: dvb_register_media_device failed to create the mediagraph\0A\00", align 1
@dvb_class = internal global %struct.class* null, align 8, !dbg !4020
@.str.3 = private unnamed_addr constant [11 x i8] c"dvb%d.%s%d\00", align 1
@dnames = internal constant [9 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0)], align 16, !dbg !4033
@.str.4 = private unnamed_addr constant [56 x i8] c"\013dvbdev: %s: failed to create device dvb%d.%s%d (%ld)\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"\017dvbdev: %s: DVB: register adapter%d/%s%d @ minor: %i (0x%02x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"\016dvbdev: DVB: registering new adapter (%s)\0A\00", align 1
@dvb_register_adapter.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3987
@.str.7 = private unnamed_addr constant [16 x i8] c"&adap->mfe_lock\00", align 1
@dvb_adapter_list = internal global %struct.list_head { %struct.list_head* @dvb_adapter_list, %struct.list_head* @dvb_adapter_list }, align 8, !dbg !4037
@dvb_device_cdev = internal global %struct.cdev zeroinitializer, align 8, !dbg !4027
@__UNIQUE_ID___addressable_init_dvbdev256 = internal global i8* bitcast (i32 ()* @init_dvbdev to i8*), section ".discard.addressable", align 8, !dbg !3993
@__exitcall_exit_dvbdev = internal global void ()* @exit_dvbdev, section ".exitcall.exit", align 8, !dbg !3995
@__UNIQUE_ID_description257 = internal constant [37 x i8] c"dvb_core.description=DVB Core Driver\00", section ".modinfo", align 1, !dbg !4000
@__UNIQUE_ID_author258 = internal constant [64 x i8] c"dvb_core.author=Marcus Metzler, Ralph Metzler, Holger Waechtler\00", section ".modinfo", align 1, !dbg !4005
@__UNIQUE_ID_file259 = internal constant [46 x i8] c"dvb_core.file=drivers/media/dvb-core/dvb-core\00", section ".modinfo", align 1, !dbg !4008
@__UNIQUE_ID_license260 = internal constant [21 x i8] c"dvb_core.license=GPL\00", section ".modinfo", align 1, !dbg !4013
@.str.8 = private unnamed_addr constant [4 x i8] c"sec\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"frontend\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"demux\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"dvr\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"ca\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"net\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"osd\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.17 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"DVB\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"\013dvbdev: dvb-core: unable to get major %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"\013dvbdev: dvb-core: unable register character device\0A\00", align 1
@init_dvbdev.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4039
@.str.23 = private unnamed_addr constant [4 x i8] c"dvb\00", align 1
@dvb_device_fops = internal constant { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* } { %struct.module* null, i64 (%struct.file*, i64, i32)* @noop_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @dvb_device_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !4044
@dvbdev_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @dvbdev_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @dvbdev_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !4046
@.str.25 = private unnamed_addr constant [32 x i8] c"drivers/media/dvb-core/dvbdev.c\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"DVB_ADAPTER_NUM=%d\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"DVB_DEVICE_TYPE=%s\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"DVB_DEVICE_NUM=%d\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"dvb/adapter%d/%s%d\00", align 1
@llvm.used = appending global [10 x i8*] [i8* bitcast (%struct.kernel_param* @__param_dvbdev_debug to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__UNIQUE_ID_dvbdev_debugtype250, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__UNIQUE_ID_dvbdev_debug251, i32 0, i32 0), i8* bitcast (void ()* @exit_dvbdev to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_init_dvbdev256 to i8*), i8* bitcast (void ()** @__exitcall_exit_dvbdev to i8*), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__UNIQUE_ID_description257, i32 0, i32 0), i8* getelementptr inbounds ([64 x i8], [64 x i8]* @__UNIQUE_ID_author258, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_file259, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license260, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dvb_generic_open(%struct.inode* %inode, %struct.file* %file) #0 !dbg !4056 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %dvbdev = alloca %struct.dvb_device*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4057, metadata !DIExpression()), !dbg !4058
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4059, metadata !DIExpression()), !dbg !4060
  call void @llvm.dbg.declare(metadata %struct.dvb_device** %dvbdev, metadata !4061, metadata !DIExpression()), !dbg !4062
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4063
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !4064
  %1 = load i8*, i8** %private_data, align 8, !dbg !4064
  %2 = bitcast i8* %1 to %struct.dvb_device*, !dbg !4063
  store %struct.dvb_device* %2, %struct.dvb_device** %dvbdev, align 8, !dbg !4062
  %3 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4065
  %tobool = icmp ne %struct.dvb_device* %3, null, !dbg !4065
  br i1 %tobool, label %if.end, label %if.then, !dbg !4067

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4068
  br label %return, !dbg !4068

if.end:                                           ; preds = %entry
  %4 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4069
  %users = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %4, i32 0, i32 8, !dbg !4071
  %5 = load i32, i32* %users, align 4, !dbg !4071
  %tobool1 = icmp ne i32 %5, 0, !dbg !4069
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4072

if.then2:                                         ; preds = %if.end
  store i32 -16, i32* %retval, align 4, !dbg !4073
  br label %return, !dbg !4073

if.end3:                                          ; preds = %if.end
  %6 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4074
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 7, !dbg !4076
  %7 = load i32, i32* %f_flags, align 8, !dbg !4076
  %and = and i32 %7, 3, !dbg !4077
  %cmp = icmp eq i32 %and, 0, !dbg !4078
  br i1 %cmp, label %if.then4, label %if.else, !dbg !4079

if.then4:                                         ; preds = %if.end3
  %8 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4080
  %readers = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %8, i32 0, i32 6, !dbg !4083
  %9 = load i32, i32* %readers, align 4, !dbg !4083
  %tobool5 = icmp ne i32 %9, 0, !dbg !4080
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !4084

if.then6:                                         ; preds = %if.then4
  store i32 -16, i32* %retval, align 4, !dbg !4085
  br label %return, !dbg !4085

if.end7:                                          ; preds = %if.then4
  %10 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4086
  %readers8 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %10, i32 0, i32 6, !dbg !4087
  %11 = load i32, i32* %readers8, align 4, !dbg !4088
  %dec = add i32 %11, -1, !dbg !4088
  store i32 %dec, i32* %readers8, align 4, !dbg !4088
  br label %if.end14, !dbg !4089

if.else:                                          ; preds = %if.end3
  %12 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4090
  %writers = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %12, i32 0, i32 7, !dbg !4093
  %13 = load i32, i32* %writers, align 8, !dbg !4093
  %tobool9 = icmp ne i32 %13, 0, !dbg !4090
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !4094

if.then10:                                        ; preds = %if.else
  store i32 -16, i32* %retval, align 4, !dbg !4095
  br label %return, !dbg !4095

if.end11:                                         ; preds = %if.else
  %14 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4096
  %writers12 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %14, i32 0, i32 7, !dbg !4097
  %15 = load i32, i32* %writers12, align 8, !dbg !4098
  %dec13 = add i32 %15, -1, !dbg !4098
  store i32 %dec13, i32* %writers12, align 8, !dbg !4098
  br label %if.end14

if.end14:                                         ; preds = %if.end11, %if.end7
  %16 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4099
  %users15 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %16, i32 0, i32 8, !dbg !4100
  %17 = load i32, i32* %users15, align 4, !dbg !4101
  %dec16 = add i32 %17, -1, !dbg !4101
  store i32 %dec16, i32* %users15, align 4, !dbg !4101
  store i32 0, i32* %retval, align 4, !dbg !4102
  br label %return, !dbg !4102

return:                                           ; preds = %if.end14, %if.then10, %if.then6, %if.then2, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !4103
  ret i32 %18, !dbg !4103
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dvb_generic_release(%struct.inode* %inode, %struct.file* %file) #0 !dbg !4104 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %dvbdev = alloca %struct.dvb_device*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4105, metadata !DIExpression()), !dbg !4106
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4107, metadata !DIExpression()), !dbg !4108
  call void @llvm.dbg.declare(metadata %struct.dvb_device** %dvbdev, metadata !4109, metadata !DIExpression()), !dbg !4110
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4111
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !4112
  %1 = load i8*, i8** %private_data, align 8, !dbg !4112
  %2 = bitcast i8* %1 to %struct.dvb_device*, !dbg !4111
  store %struct.dvb_device* %2, %struct.dvb_device** %dvbdev, align 8, !dbg !4110
  %3 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4113
  %tobool = icmp ne %struct.dvb_device* %3, null, !dbg !4113
  br i1 %tobool, label %if.end, label %if.then, !dbg !4115

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4116
  br label %return, !dbg !4116

if.end:                                           ; preds = %entry
  %4 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4117
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %4, i32 0, i32 7, !dbg !4119
  %5 = load i32, i32* %f_flags, align 8, !dbg !4119
  %and = and i32 %5, 3, !dbg !4120
  %cmp = icmp eq i32 %and, 0, !dbg !4121
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4122

if.then1:                                         ; preds = %if.end
  %6 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4123
  %readers = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %6, i32 0, i32 6, !dbg !4125
  %7 = load i32, i32* %readers, align 4, !dbg !4126
  %inc = add i32 %7, 1, !dbg !4126
  store i32 %inc, i32* %readers, align 4, !dbg !4126
  br label %if.end3, !dbg !4127

if.else:                                          ; preds = %if.end
  %8 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4128
  %writers = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %8, i32 0, i32 7, !dbg !4130
  %9 = load i32, i32* %writers, align 8, !dbg !4131
  %inc2 = add i32 %9, 1, !dbg !4131
  store i32 %inc2, i32* %writers, align 8, !dbg !4131
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  %10 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4132
  %users = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %10, i32 0, i32 8, !dbg !4133
  %11 = load i32, i32* %users, align 4, !dbg !4134
  %inc4 = add i32 %11, 1, !dbg !4134
  store i32 %inc4, i32* %users, align 4, !dbg !4134
  store i32 0, i32* %retval, align 4, !dbg !4135
  br label %return, !dbg !4135

return:                                           ; preds = %if.end3, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !4136
  ret i32 %12, !dbg !4136
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @dvb_generic_ioctl(%struct.file* %file, i32 %cmd, i64 %arg) #0 !dbg !4137 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %dvbdev = alloca %struct.dvb_device*, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4138, metadata !DIExpression()), !dbg !4139
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !4140, metadata !DIExpression()), !dbg !4141
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !4142, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.declare(metadata %struct.dvb_device** %dvbdev, metadata !4144, metadata !DIExpression()), !dbg !4145
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4146
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !4147
  %1 = load i8*, i8** %private_data, align 8, !dbg !4147
  %2 = bitcast i8* %1 to %struct.dvb_device*, !dbg !4146
  store %struct.dvb_device* %2, %struct.dvb_device** %dvbdev, align 8, !dbg !4145
  %3 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4148
  %tobool = icmp ne %struct.dvb_device* %3, null, !dbg !4148
  br i1 %tobool, label %if.end, label %if.then, !dbg !4150

if.then:                                          ; preds = %entry
  store i64 -19, i64* %retval, align 8, !dbg !4151
  br label %return, !dbg !4151

if.end:                                           ; preds = %entry
  %4 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4152
  %kernel_ioctl = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %4, i32 0, i32 10, !dbg !4154
  %5 = load i32 (%struct.file*, i32, i8*)*, i32 (%struct.file*, i32, i8*)** %kernel_ioctl, align 8, !dbg !4154
  %tobool1 = icmp ne i32 (%struct.file*, i32, i8*)* %5, null, !dbg !4152
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4155

if.then2:                                         ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !4156
  br label %return, !dbg !4156

if.end3:                                          ; preds = %if.end
  %6 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4157
  %7 = load i32, i32* %cmd.addr, align 4, !dbg !4158
  %8 = load i64, i64* %arg.addr, align 8, !dbg !4159
  %9 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4160
  %kernel_ioctl4 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %9, i32 0, i32 10, !dbg !4161
  %10 = load i32 (%struct.file*, i32, i8*)*, i32 (%struct.file*, i32, i8*)** %kernel_ioctl4, align 8, !dbg !4161
  %call = call i32 @dvb_usercopy(%struct.file* %6, i32 %7, i64 %8, i32 (%struct.file*, i32, i8*)* %10) #9, !dbg !4162
  %conv = sext i32 %call to i64, !dbg !4162
  store i64 %conv, i64* %retval, align 8, !dbg !4163
  br label %return, !dbg !4163

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %11 = load i64, i64* %retval, align 8, !dbg !4164
  ret i64 %11, !dbg !4164
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dvb_usercopy(%struct.file* %file, i32 %cmd, i64 %arg, i32 (%struct.file*, i32, i8*)* %func) #0 !dbg !4165 {
entry:
  %retval.i.i48 = alloca i1, align 1
  %addr.addr.i.i49 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i49, metadata !4168, metadata !DIExpression()), !dbg !4173
  %bytes.addr.i.i50 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i50, metadata !4183, metadata !DIExpression()), !dbg !4184
  %is_source.addr.i.i51 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i51, metadata !4185, metadata !DIExpression()), !dbg !4186
  %sz.i.i52 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i52, metadata !4187, metadata !DIExpression()), !dbg !4188
  %__ret_warn_on.i.i53 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i53, metadata !4189, metadata !DIExpression()), !dbg !4192
  %tmp.i.i54 = alloca i64, align 8
  %to.addr.i55 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i55, metadata !4193, metadata !DIExpression()), !dbg !4194
  %from.addr.i56 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i56, metadata !4195, metadata !DIExpression()), !dbg !4196
  %n.addr.i57 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i57, metadata !4197, metadata !DIExpression()), !dbg !4198
  %retval.i.i38 = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4168, metadata !DIExpression()), !dbg !4199
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4183, metadata !DIExpression()), !dbg !4206
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4185, metadata !DIExpression()), !dbg !4207
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4187, metadata !DIExpression()), !dbg !4208
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4189, metadata !DIExpression()), !dbg !4209
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4210, metadata !DIExpression()), !dbg !4211
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4212, metadata !DIExpression()), !dbg !4213
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4214, metadata !DIExpression()), !dbg !4215
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4216, metadata !DIExpression()), !dbg !4220
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4230, metadata !DIExpression()), !dbg !4231
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4232, metadata !DIExpression()), !dbg !4233
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4234, metadata !DIExpression()), !dbg !4235
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4236, metadata !DIExpression()), !dbg !4240
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4242, metadata !DIExpression()), !dbg !4246
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4248, metadata !DIExpression()), !dbg !4252
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4257, metadata !DIExpression()), !dbg !4258
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4259, metadata !DIExpression()), !dbg !4260
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4261, metadata !DIExpression()), !dbg !4262
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4263, metadata !DIExpression()), !dbg !4264
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4265, metadata !DIExpression()), !dbg !4266
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4267, metadata !DIExpression()), !dbg !4268
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4269, metadata !DIExpression()), !dbg !4270
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4271, metadata !DIExpression()), !dbg !4272
  %retval = alloca i32, align 4
  %file.addr = alloca %struct.file*, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %func.addr = alloca i32 (%struct.file*, i32, i8*)*, align 8
  %sbuf = alloca [128 x i8], align 16
  %mbuf = alloca i8*, align 8
  %parg = alloca i8*, align 8
  %err = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4273, metadata !DIExpression()), !dbg !4274
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !4275, metadata !DIExpression()), !dbg !4276
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !4277, metadata !DIExpression()), !dbg !4278
  store i32 (%struct.file*, i32, i8*)* %func, i32 (%struct.file*, i32, i8*)** %func.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.file*, i32, i8*)** %func.addr, metadata !4279, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.declare(metadata [128 x i8]* %sbuf, metadata !4281, metadata !DIExpression()), !dbg !4282
  call void @llvm.dbg.declare(metadata i8** %mbuf, metadata !4283, metadata !DIExpression()), !dbg !4284
  store i8* null, i8** %mbuf, align 8, !dbg !4284
  call void @llvm.dbg.declare(metadata i8** %parg, metadata !4285, metadata !DIExpression()), !dbg !4286
  store i8* null, i8** %parg, align 8, !dbg !4286
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4287, metadata !DIExpression()), !dbg !4288
  store i32 -22, i32* %err, align 4, !dbg !4288
  %0 = load i32, i32* %cmd.addr, align 4, !dbg !4289
  %shr = lshr i32 %0, 30, !dbg !4289
  %and = and i32 %shr, 3, !dbg !4289
  switch i32 %and, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 1, label %sw.bb1
    i32 3, label %sw.bb1
  ], !dbg !4290

sw.bb:                                            ; preds = %entry
  %1 = load i64, i64* %arg.addr, align 8, !dbg !4291
  %2 = inttoptr i64 %1 to i8*, !dbg !4292
  store i8* %2, i8** %parg, align 8, !dbg !4293
  br label %sw.epilog, !dbg !4294

sw.bb1:                                           ; preds = %entry, %entry, %entry
  %3 = load i32, i32* %cmd.addr, align 4, !dbg !4295
  %shr2 = lshr i32 %3, 16, !dbg !4295
  %and3 = and i32 %shr2, 16383, !dbg !4295
  %conv = zext i32 %and3 to i64, !dbg !4295
  %cmp = icmp ule i64 %conv, 128, !dbg !4296
  br i1 %cmp, label %if.then, label %if.else, !dbg !4297

if.then:                                          ; preds = %sw.bb1
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %sbuf, i64 0, i64 0, !dbg !4298
  store i8* %arraydecay, i8** %parg, align 8, !dbg !4300
  br label %if.end11, !dbg !4301

if.else:                                          ; preds = %sw.bb1
  %4 = load i32, i32* %cmd.addr, align 4, !dbg !4302
  %shr5 = lshr i32 %4, 16, !dbg !4302
  %and6 = and i32 %shr5, 16383, !dbg !4302
  %conv7 = zext i32 %and6 to i64, !dbg !4302
  store i64 %conv7, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4303
  %6 = call i1 @llvm.is.constant.i64(i64 %5) #10, !dbg !4304
  br i1 %6, label %if.then.i, label %if.end9.i, !dbg !4305

if.then.i:                                        ; preds = %if.else
  %7 = load i64, i64* %size.addr.i, align 8, !dbg !4306
  %cmp.i = icmp ugt i64 %7, 8192, !dbg !4307
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4308

if.then1.i:                                       ; preds = %if.then.i
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !4309
  %9 = load i32, i32* %flags.addr.i, align 4, !dbg !4310
  store i64 %8, i64* %size.addr.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i, align 4
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !4311
  %call.i.i = call i32 @get_order(i64 %10) #11, !dbg !4312
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4266
  %11 = load i64, i64* %size.addr.i.i, align 8, !dbg !4313
  %12 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4314
  %13 = load i32, i32* %order.i.i, align 4, !dbg !4315
  store i64 %11, i64* %size.addr.i.i.i, align 8
  store i32 %12, i32* %flags.addr.i.i.i, align 4
  store i32 %13, i32* %order.addr.i.i.i, align 4
  %14 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4316
  %15 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4317
  %16 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4318
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %14, i32 %15, i32 %16) #12, !dbg !4319
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4319
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4319
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4319
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4319
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4320
  br label %kmalloc.exit, !dbg !4320

if.end.i:                                         ; preds = %if.then.i
  %17 = load i64, i64* %size.addr.i, align 8, !dbg !4321
  store i64 %17, i64* %size.addr.i11.i, align 8
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4322
  %tobool.i.i = icmp ne i64 %18, 0, !dbg !4322
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4324

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4325
  br label %kmalloc_index.exit.i, !dbg !4325

if.end.i.i:                                       ; preds = %if.end.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4326
  %cmp.i.i = icmp ule i64 %19, 8, !dbg !4328
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4329

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4330
  br label %kmalloc_index.exit.i, !dbg !4330

if.end2.i.i:                                      ; preds = %if.end.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4331
  %cmp3.i.i = icmp ugt i64 %20, 64, !dbg !4333
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4334

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4335
  %cmp4.i.i = icmp ule i64 %21, 96, !dbg !4336
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4337

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4338
  br label %kmalloc_index.exit.i, !dbg !4338

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4339
  %cmp7.i.i = icmp ugt i64 %22, 128, !dbg !4341
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4342

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4343
  %cmp9.i.i = icmp ule i64 %23, 192, !dbg !4344
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4345

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4346
  br label %kmalloc_index.exit.i, !dbg !4346

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4347
  %cmp12.i.i = icmp ule i64 %24, 8, !dbg !4349
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4350

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4351
  br label %kmalloc_index.exit.i, !dbg !4351

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4352
  %cmp15.i.i = icmp ule i64 %25, 16, !dbg !4354
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4355

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4356
  br label %kmalloc_index.exit.i, !dbg !4356

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4357
  %cmp18.i.i = icmp ule i64 %26, 32, !dbg !4359
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4360

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4361
  br label %kmalloc_index.exit.i, !dbg !4361

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4362
  %cmp21.i.i = icmp ule i64 %27, 64, !dbg !4364
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4365

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4366
  br label %kmalloc_index.exit.i, !dbg !4366

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4367
  %cmp24.i.i = icmp ule i64 %28, 128, !dbg !4369
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4370

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4371
  br label %kmalloc_index.exit.i, !dbg !4371

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4372
  %cmp27.i.i = icmp ule i64 %29, 256, !dbg !4374
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4375

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4376
  br label %kmalloc_index.exit.i, !dbg !4376

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4377
  %cmp30.i.i = icmp ule i64 %30, 512, !dbg !4379
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4380

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4381
  br label %kmalloc_index.exit.i, !dbg !4381

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4382
  %cmp33.i.i = icmp ule i64 %31, 1024, !dbg !4384
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4385

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4386
  br label %kmalloc_index.exit.i, !dbg !4386

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4387
  %cmp36.i.i = icmp ule i64 %32, 2048, !dbg !4389
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4390

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4391
  br label %kmalloc_index.exit.i, !dbg !4391

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4392
  %cmp39.i.i = icmp ule i64 %33, 4096, !dbg !4394
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4395

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4396
  br label %kmalloc_index.exit.i, !dbg !4396

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4397
  %cmp42.i.i = icmp ule i64 %34, 8192, !dbg !4399
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4400

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4401
  br label %kmalloc_index.exit.i, !dbg !4401

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4402
  %cmp45.i.i = icmp ule i64 %35, 16384, !dbg !4404
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4405

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4406
  br label %kmalloc_index.exit.i, !dbg !4406

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4407
  %cmp48.i.i = icmp ule i64 %36, 32768, !dbg !4409
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4410

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4411
  br label %kmalloc_index.exit.i, !dbg !4411

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4412
  %cmp51.i.i = icmp ule i64 %37, 65536, !dbg !4414
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4415

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4416
  br label %kmalloc_index.exit.i, !dbg !4416

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4417
  %cmp54.i.i = icmp ule i64 %38, 131072, !dbg !4419
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4420

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4421
  br label %kmalloc_index.exit.i, !dbg !4421

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4422
  %cmp57.i.i = icmp ule i64 %39, 262144, !dbg !4424
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4425

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4426
  br label %kmalloc_index.exit.i, !dbg !4426

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4427
  %cmp60.i.i = icmp ule i64 %40, 524288, !dbg !4429
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4430

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4431
  br label %kmalloc_index.exit.i, !dbg !4431

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4432
  %cmp63.i.i = icmp ule i64 %41, 1048576, !dbg !4434
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4435

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4436
  br label %kmalloc_index.exit.i, !dbg !4436

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4437
  %cmp66.i.i = icmp ule i64 %42, 2097152, !dbg !4439
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4440

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4441
  br label %kmalloc_index.exit.i, !dbg !4441

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4442
  %cmp69.i.i = icmp ule i64 %43, 4194304, !dbg !4444
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4445

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4446
  br label %kmalloc_index.exit.i, !dbg !4446

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4447
  %cmp72.i.i = icmp ule i64 %44, 8388608, !dbg !4449
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4450

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4451
  br label %kmalloc_index.exit.i, !dbg !4451

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4452
  %cmp75.i.i = icmp ule i64 %45, 16777216, !dbg !4454
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4455

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4456
  br label %kmalloc_index.exit.i, !dbg !4456

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4457
  %cmp78.i.i = icmp ule i64 %46, 33554432, !dbg !4459
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4460

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4461
  br label %kmalloc_index.exit.i, !dbg !4461

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4462
  %cmp81.i.i = icmp ule i64 %47, 67108864, !dbg !4464
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4465

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4466
  br label %kmalloc_index.exit.i, !dbg !4466

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4467, !srcloc !4470
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 106) #10, !dbg !4471, !srcloc !4474
  unreachable, !dbg !4475

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %48 = load i32, i32* %retval.i.i, align 4, !dbg !4476
  store i32 %48, i32* %index.i, align 4, !dbg !4477
  %49 = load i32, i32* %index.i, align 4, !dbg !4478
  %tobool.i = icmp ne i32 %49, 0, !dbg !4478
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4480

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4481
  br label %kmalloc.exit, !dbg !4481

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %50 = load i32, i32* %flags.addr.i, align 4, !dbg !4482
  store i32 %50, i32* %flags.addr.i13.i, align 4
  %51 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4483
  %and.i.i = and i32 %51, 17, !dbg !4483
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4483
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4483
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4483
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4483
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4485

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4486
  br label %kmalloc_type.exit.i, !dbg !4486

if.end.i16.i:                                     ; preds = %if.end4.i
  %52 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4487
  %and2.i.i = and i32 %52, 1, !dbg !4488
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4487
  %53 = zext i1 %tobool3.i.i to i64, !dbg !4487
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4487
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4489
  br label %kmalloc_type.exit.i, !dbg !4489

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %54 = load i32, i32* %retval.i12.i, align 4, !dbg !4490
  %idxprom.i = zext i32 %54 to i64, !dbg !4491
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4491
  %55 = load i32, i32* %index.i, align 4, !dbg !4492
  %idxprom6.i = zext i32 %55 to i64, !dbg !4491
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4491
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4491
  %57 = load i32, i32* %flags.addr.i, align 4, !dbg !4493
  %58 = load i64, i64* %size.addr.i, align 8, !dbg !4494
  store %struct.kmem_cache* %56, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %57, i32* %flags.addr.i17.i, align 4
  store i64 %58, i64* %size.addr.i18.i, align 8
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4495
  %60 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4496
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %59, i32 %60) #12, !dbg !4497
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4497
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4497
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4497
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4497
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4235
  %61 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4498
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4499
  %63 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4500
  %64 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4501
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %61, i8* %62, i64 %63, i32 %64) #12, !dbg !4502
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4503
  %65 = load i8*, i8** %ret.i.i, align 8, !dbg !4504
  store i8* %65, i8** %retval.i, align 8, !dbg !4505
  br label %kmalloc.exit, !dbg !4505

if.end9.i:                                        ; preds = %if.else
  %66 = load i64, i64* %size.addr.i, align 8, !dbg !4506
  %67 = load i32, i32* %flags.addr.i, align 4, !dbg !4507
  %call10.i = call noalias i8* @__kmalloc(i64 %66, i32 %67) #12, !dbg !4508
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4508
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4508
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4508
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4508
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4509
  br label %kmalloc.exit, !dbg !4509

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %68 = load i8*, i8** %retval.i, align 8, !dbg !4510
  store i8* %68, i8** %mbuf, align 8, !dbg !4511
  %69 = load i8*, i8** %mbuf, align 8, !dbg !4512
  %cmp8 = icmp eq i8* null, %69, !dbg !4514
  br i1 %cmp8, label %if.then10, label %if.end, !dbg !4515

if.then10:                                        ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !4516
  br label %return, !dbg !4516

if.end:                                           ; preds = %kmalloc.exit
  %70 = load i8*, i8** %mbuf, align 8, !dbg !4517
  store i8* %70, i8** %parg, align 8, !dbg !4518
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then
  store i32 -14, i32* %err, align 4, !dbg !4519
  %71 = load i8*, i8** %parg, align 8, !dbg !4520
  %72 = load i64, i64* %arg.addr, align 8, !dbg !4521
  %73 = inttoptr i64 %72 to i8*, !dbg !4522
  %74 = load i32, i32* %cmd.addr, align 4, !dbg !4523
  %shr12 = lshr i32 %74, 16, !dbg !4523
  %and13 = and i32 %shr12, 16383, !dbg !4523
  %conv14 = zext i32 %and13 to i64, !dbg !4523
  store i8* %71, i8** %to.addr.i, align 8
  store i8* %73, i8** %from.addr.i, align 8
  store i64 %conv14, i64* %n.addr.i, align 8
  %75 = load i8*, i8** %to.addr.i, align 8, !dbg !4524
  %76 = load i64, i64* %n.addr.i, align 8, !dbg !4524
  store i8* %75, i8** %addr.addr.i.i, align 8
  store i64 %76, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !4208
  %77 = load i32, i32* %sz.i.i, align 4, !dbg !4525
  %cmp.i.i39 = icmp sge i32 %77, 0, !dbg !4525
  br i1 %cmp.i.i39, label %land.rhs.i.i, label %land.end.i.i, !dbg !4525

land.rhs.i.i:                                     ; preds = %if.end11
  %78 = load i32, i32* %sz.i.i, align 4, !dbg !4525
  %conv.i.i40 = sext i32 %78 to i64, !dbg !4525
  %79 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4525
  %cmp1.i.i = icmp ult i64 %conv.i.i40, %79, !dbg !4525
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end11
  %80 = phi i1 [ false, %if.end11 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !4527
  %lnot.i.i41 = xor i1 %80, true, !dbg !4525
  %lnot.ext.i.i42 = zext i1 %80 to i32, !dbg !4525
  %conv4.i.i = sext i32 %lnot.ext.i.i42 to i64, !dbg !4525
  br i1 %80, label %if.then.i.i43, label %if.end10.i.i, !dbg !4528

if.then.i.i43:                                    ; preds = %land.end.i.i
  %81 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4529
  %82 = call i1 @llvm.is.constant.i64(i64 %81) #10, !dbg !4532
  br i1 %82, label %if.else.i.i, label %if.then5.i.i44, !dbg !4533

if.then5.i.i44:                                   ; preds = %if.then.i.i43
  %83 = load i32, i32* %sz.i.i, align 4, !dbg !4534
  %84 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4535
  call void @copy_overflow(i32 %83, i64 %84) #12, !dbg !4536
  br label %if.end9.i.i, !dbg !4536

if.else.i.i:                                      ; preds = %if.then.i.i43
  %85 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4537
  %tobool6.i.i = trunc i8 %85 to i1, !dbg !4537
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !4539

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #12, !dbg !4540
  br label %if.end.i.i45, !dbg !4540

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #12, !dbg !4541
  br label %if.end.i.i45

if.end.i.i45:                                     ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i45, %if.then5.i.i44
  store i1 false, i1* %retval.i.i38, align 1, !dbg !4542
  br label %check_copy_size.exit.i, !dbg !4542

if.end10.i.i:                                     ; preds = %land.end.i.i
  %86 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4209
  %cmp11.i.i = icmp ugt i64 %86, 2147483647, !dbg !4209
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !4209
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !4209
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !4209
  %87 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4543
  %tobool17.i.i = icmp ne i32 %87, 0, !dbg !4543
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !4543
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !4543
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !4543
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !4209

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !4545, !srcloc !4548
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #10, !dbg !4549, !srcloc !4551
  br label %if.end31.i.i, !dbg !4552

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %88 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4209
  %tobool32.i.i = icmp ne i32 %88, 0, !dbg !4209
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !4209
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !4209
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !4209
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !4543
  %89 = load i64, i64* %tmp.i.i, align 8, !dbg !4209
  %tobool38.i.i = icmp ne i64 %89, 0, !dbg !4553
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !4554

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i38, align 1, !dbg !4555
  br label %check_copy_size.exit.i, !dbg !4555

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %90 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !4556
  %91 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4557
  %92 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4558
  %tobool41.i.i = trunc i8 %92 to i1, !dbg !4558
  call void @check_object_size(i8* %90, i64 %91, i1 zeroext %tobool41.i.i) #12, !dbg !4559
  store i1 true, i1* %retval.i.i38, align 1, !dbg !4560
  br label %check_copy_size.exit.i, !dbg !4560

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %93 = load i1, i1* %retval.i.i38, align 1, !dbg !4561
  %lnot.i = xor i1 %93, true, !dbg !4524
  %lnot.ext.i = zext i1 %93 to i32, !dbg !4524
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !4524
  br i1 %93, label %if.then.i46, label %copy_from_user.exit, !dbg !4562

if.then.i46:                                      ; preds = %check_copy_size.exit.i
  %94 = load i8*, i8** %to.addr.i, align 8, !dbg !4563
  %95 = load i8*, i8** %from.addr.i, align 8, !dbg !4564
  %96 = load i64, i64* %n.addr.i, align 8, !dbg !4565
  %call2.i = call i64 @_copy_from_user(i8* %94, i8* %95, i64 %96) #12, !dbg !4566
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !4567
  br label %copy_from_user.exit, !dbg !4568

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i46
  %97 = load i64, i64* %n.addr.i, align 8, !dbg !4569
  %tobool = icmp ne i64 %97, 0, !dbg !4570
  br i1 %tobool, label %if.then16, label %if.end17, !dbg !4571

if.then16:                                        ; preds = %copy_from_user.exit
  br label %out, !dbg !4572

if.end17:                                         ; preds = %copy_from_user.exit
  br label %sw.epilog, !dbg !4573

sw.epilog:                                        ; preds = %entry, %if.end17, %sw.bb
  %98 = load i32 (%struct.file*, i32, i8*)*, i32 (%struct.file*, i32, i8*)** %func.addr, align 8, !dbg !4574
  %99 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4576
  %100 = load i32, i32* %cmd.addr, align 4, !dbg !4577
  %101 = load i8*, i8** %parg, align 8, !dbg !4578
  %call18 = call i32 %98(%struct.file* %99, i32 %100, i8* %101) #9, !dbg !4574
  store i32 %call18, i32* %err, align 4, !dbg !4579
  %cmp19 = icmp eq i32 %call18, -515, !dbg !4580
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !4581

if.then21:                                        ; preds = %sw.epilog
  store i32 -25, i32* %err, align 4, !dbg !4582
  br label %if.end22, !dbg !4583

if.end22:                                         ; preds = %if.then21, %sw.epilog
  %102 = load i32, i32* %err, align 4, !dbg !4584
  %cmp23 = icmp slt i32 %102, 0, !dbg !4586
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !4587

if.then25:                                        ; preds = %if.end22
  br label %out, !dbg !4588

if.end26:                                         ; preds = %if.end22
  %103 = load i32, i32* %cmd.addr, align 4, !dbg !4589
  %shr27 = lshr i32 %103, 30, !dbg !4589
  %and28 = and i32 %shr27, 3, !dbg !4589
  switch i32 %and28, label %sw.epilog37 [
    i32 2, label %sw.bb29
    i32 3, label %sw.bb29
  ], !dbg !4590

sw.bb29:                                          ; preds = %if.end26, %if.end26
  %104 = load i64, i64* %arg.addr, align 8, !dbg !4591
  %105 = inttoptr i64 %104 to i8*, !dbg !4592
  %106 = load i8*, i8** %parg, align 8, !dbg !4593
  %107 = load i32, i32* %cmd.addr, align 4, !dbg !4594
  %shr30 = lshr i32 %107, 16, !dbg !4594
  %and31 = and i32 %shr30, 16383, !dbg !4594
  %conv32 = zext i32 %and31 to i64, !dbg !4594
  store i8* %105, i8** %to.addr.i55, align 8
  store i8* %106, i8** %from.addr.i56, align 8
  store i64 %conv32, i64* %n.addr.i57, align 8
  %108 = load i8*, i8** %from.addr.i56, align 8, !dbg !4595
  %109 = load i64, i64* %n.addr.i57, align 8, !dbg !4595
  store i8* %108, i8** %addr.addr.i.i49, align 8
  store i64 %109, i64* %bytes.addr.i.i50, align 8
  store i8 1, i8* %is_source.addr.i.i51, align 1
  store i32 -1, i32* %sz.i.i52, align 4, !dbg !4188
  %110 = load i32, i32* %sz.i.i52, align 4, !dbg !4596
  %cmp.i.i58 = icmp sge i32 %110, 0, !dbg !4596
  br i1 %cmp.i.i58, label %land.rhs.i.i61, label %land.end.i.i65, !dbg !4596

land.rhs.i.i61:                                   ; preds = %sw.bb29
  %111 = load i32, i32* %sz.i.i52, align 4, !dbg !4596
  %conv.i.i59 = sext i32 %111 to i64, !dbg !4596
  %112 = load i64, i64* %bytes.addr.i.i50, align 8, !dbg !4596
  %cmp1.i.i60 = icmp ult i64 %conv.i.i59, %112, !dbg !4596
  br label %land.end.i.i65

land.end.i.i65:                                   ; preds = %land.rhs.i.i61, %sw.bb29
  %113 = phi i1 [ false, %sw.bb29 ], [ %cmp1.i.i60, %land.rhs.i.i61 ], !dbg !4597
  %lnot.i.i62 = xor i1 %113, true, !dbg !4596
  %lnot.ext.i.i63 = zext i1 %113 to i32, !dbg !4596
  %conv4.i.i64 = sext i32 %lnot.ext.i.i63 to i64, !dbg !4596
  br i1 %113, label %if.then.i.i66, label %if.end10.i.i81, !dbg !4598

if.then.i.i66:                                    ; preds = %land.end.i.i65
  %114 = load i64, i64* %bytes.addr.i.i50, align 8, !dbg !4599
  %115 = call i1 @llvm.is.constant.i64(i64 %114) #10, !dbg !4600
  br i1 %115, label %if.else.i.i69, label %if.then5.i.i67, !dbg !4601

if.then5.i.i67:                                   ; preds = %if.then.i.i66
  %116 = load i32, i32* %sz.i.i52, align 4, !dbg !4602
  %117 = load i64, i64* %bytes.addr.i.i50, align 8, !dbg !4603
  call void @copy_overflow(i32 %116, i64 %117) #12, !dbg !4604
  br label %if.end9.i.i73, !dbg !4604

if.else.i.i69:                                    ; preds = %if.then.i.i66
  %118 = load i8, i8* %is_source.addr.i.i51, align 1, !dbg !4605
  %tobool6.i.i68 = trunc i8 %118 to i1, !dbg !4605
  br i1 %tobool6.i.i68, label %if.then7.i.i70, label %if.else8.i.i71, !dbg !4606

if.then7.i.i70:                                   ; preds = %if.else.i.i69
  call void @__bad_copy_from() #12, !dbg !4607
  br label %if.end.i.i72, !dbg !4607

if.else8.i.i71:                                   ; preds = %if.else.i.i69
  call void @__bad_copy_to() #12, !dbg !4608
  br label %if.end.i.i72

if.end.i.i72:                                     ; preds = %if.else8.i.i71, %if.then7.i.i70
  br label %if.end9.i.i73

if.end9.i.i73:                                    ; preds = %if.end.i.i72, %if.then5.i.i67
  store i1 false, i1* %retval.i.i48, align 1, !dbg !4609
  br label %check_copy_size.exit.i95, !dbg !4609

if.end10.i.i81:                                   ; preds = %land.end.i.i65
  %119 = load i64, i64* %bytes.addr.i.i50, align 8, !dbg !4192
  %cmp11.i.i74 = icmp ugt i64 %119, 2147483647, !dbg !4192
  %lnot13.i.i75 = xor i1 %cmp11.i.i74, true, !dbg !4192
  %lnot.ext16.i.i76 = zext i1 %cmp11.i.i74 to i32, !dbg !4192
  store i32 %lnot.ext16.i.i76, i32* %__ret_warn_on.i.i53, align 4, !dbg !4192
  %120 = load i32, i32* %__ret_warn_on.i.i53, align 4, !dbg !4610
  %tobool17.i.i77 = icmp ne i32 %120, 0, !dbg !4610
  %lnot18.i.i78 = xor i1 %tobool17.i.i77, true, !dbg !4610
  %lnot.ext21.i.i79 = zext i1 %tobool17.i.i77 to i32, !dbg !4610
  %conv22.i.i80 = sext i32 %lnot.ext21.i.i79 to i64, !dbg !4610
  br i1 %tobool17.i.i77, label %if.then24.i.i82, label %if.end31.i.i88, !dbg !4192

if.then24.i.i82:                                  ; preds = %if.end10.i.i81
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !4611, !srcloc !4548
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #10, !dbg !4612, !srcloc !4551
  br label %if.end31.i.i88, !dbg !4613

if.end31.i.i88:                                   ; preds = %if.then24.i.i82, %if.end10.i.i81
  %121 = load i32, i32* %__ret_warn_on.i.i53, align 4, !dbg !4192
  %tobool32.i.i83 = icmp ne i32 %121, 0, !dbg !4192
  %lnot33.i.i84 = xor i1 %tobool32.i.i83, true, !dbg !4192
  %lnot.ext36.i.i85 = zext i1 %tobool32.i.i83 to i32, !dbg !4192
  %conv37.i.i86 = sext i32 %lnot.ext36.i.i85 to i64, !dbg !4192
  store i64 %conv37.i.i86, i64* %tmp.i.i54, align 8, !dbg !4610
  %122 = load i64, i64* %tmp.i.i54, align 8, !dbg !4192
  %tobool38.i.i87 = icmp ne i64 %122, 0, !dbg !4614
  br i1 %tobool38.i.i87, label %if.then39.i.i89, label %if.end40.i.i91, !dbg !4615

if.then39.i.i89:                                  ; preds = %if.end31.i.i88
  store i1 false, i1* %retval.i.i48, align 1, !dbg !4616
  br label %check_copy_size.exit.i95, !dbg !4616

if.end40.i.i91:                                   ; preds = %if.end31.i.i88
  %123 = load i8*, i8** %addr.addr.i.i49, align 8, !dbg !4617
  %124 = load i64, i64* %bytes.addr.i.i50, align 8, !dbg !4618
  %125 = load i8, i8* %is_source.addr.i.i51, align 1, !dbg !4619
  %tobool41.i.i90 = trunc i8 %125 to i1, !dbg !4619
  call void @check_object_size(i8* %123, i64 %124, i1 zeroext %tobool41.i.i90) #12, !dbg !4620
  store i1 true, i1* %retval.i.i48, align 1, !dbg !4621
  br label %check_copy_size.exit.i95, !dbg !4621

check_copy_size.exit.i95:                         ; preds = %if.end40.i.i91, %if.then39.i.i89, %if.end9.i.i73
  %126 = load i1, i1* %retval.i.i48, align 1, !dbg !4622
  %lnot.i92 = xor i1 %126, true, !dbg !4595
  %lnot.ext.i93 = zext i1 %126 to i32, !dbg !4595
  %conv.i94 = sext i32 %lnot.ext.i93 to i64, !dbg !4595
  br i1 %126, label %if.then.i97, label %copy_to_user.exit, !dbg !4623

if.then.i97:                                      ; preds = %check_copy_size.exit.i95
  %127 = load i8*, i8** %to.addr.i55, align 8, !dbg !4624
  %128 = load i8*, i8** %from.addr.i56, align 8, !dbg !4625
  %129 = load i64, i64* %n.addr.i57, align 8, !dbg !4626
  %call2.i96 = call i64 @_copy_to_user(i8* %127, i8* %128, i64 %129) #12, !dbg !4627
  store i64 %call2.i96, i64* %n.addr.i57, align 8, !dbg !4628
  br label %copy_to_user.exit, !dbg !4629

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i95, %if.then.i97
  %130 = load i64, i64* %n.addr.i57, align 8, !dbg !4630
  %tobool34 = icmp ne i64 %130, 0, !dbg !4631
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !4632

if.then35:                                        ; preds = %copy_to_user.exit
  store i32 -14, i32* %err, align 4, !dbg !4633
  br label %if.end36, !dbg !4634

if.end36:                                         ; preds = %if.then35, %copy_to_user.exit
  br label %sw.epilog37, !dbg !4635

sw.epilog37:                                      ; preds = %if.end26, %if.end36
  br label %out, !dbg !4636

out:                                              ; preds = %sw.epilog37, %if.then25, %if.then16
  call void @llvm.dbg.label(metadata !4637), !dbg !4638
  %131 = load i8*, i8** %mbuf, align 8, !dbg !4639
  call void @kfree(i8* %131) #9, !dbg !4640
  %132 = load i32, i32* %err, align 4, !dbg !4641
  store i32 %132, i32* %retval, align 4, !dbg !4642
  br label %return, !dbg !4642

return:                                           ; preds = %out, %if.then10
  %133 = load i32, i32* %retval, align 4, !dbg !4643
  ret i32 %133, !dbg !4643
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dvb_register_device(%struct.dvb_adapter* %adap, %struct.dvb_device** %pdvbdev, %struct.dvb_device* %template, i8* %priv, i32 %type, i32 %demux_sink_pads) #0 !dbg !3981 {
entry:
  %retval = alloca i32, align 4
  %adap.addr = alloca %struct.dvb_adapter*, align 8
  %pdvbdev.addr = alloca %struct.dvb_device**, align 8
  %template.addr = alloca %struct.dvb_device*, align 8
  %priv.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %demux_sink_pads.addr = alloca i32, align 4
  %dvbdev = alloca %struct.dvb_device*, align 8
  %dvbdevfops = alloca %struct.file_operations*, align 8
  %clsdev = alloca %struct.device*, align 8
  %minor = alloca i32, align 4
  %id = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.dvb_adapter* %adap, %struct.dvb_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_adapter** %adap.addr, metadata !4644, metadata !DIExpression()), !dbg !4645
  store %struct.dvb_device** %pdvbdev, %struct.dvb_device*** %pdvbdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_device*** %pdvbdev.addr, metadata !4646, metadata !DIExpression()), !dbg !4647
  store %struct.dvb_device* %template, %struct.dvb_device** %template.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_device** %template.addr, metadata !4648, metadata !DIExpression()), !dbg !4649
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !4650, metadata !DIExpression()), !dbg !4651
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4652, metadata !DIExpression()), !dbg !4653
  store i32 %demux_sink_pads, i32* %demux_sink_pads.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %demux_sink_pads.addr, metadata !4654, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.declare(metadata %struct.dvb_device** %dvbdev, metadata !4656, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.declare(metadata %struct.file_operations** %dvbdevfops, metadata !4658, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.declare(metadata %struct.device** %clsdev, metadata !4661, metadata !DIExpression()), !dbg !4662
  call void @llvm.dbg.declare(metadata i32* %minor, metadata !4663, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.declare(metadata i32* %id, metadata !4665, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4667, metadata !DIExpression()), !dbg !4668
  call void @mutex_lock(%struct.mutex* @dvbdev_register_lock) #9, !dbg !4669
  %0 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !4670
  %1 = load i32, i32* %type.addr, align 4, !dbg !4672
  %call = call i32 @dvbdev_get_free_id(%struct.dvb_adapter* %0, i32 %1) #9, !dbg !4673
  store i32 %call, i32* %id, align 4, !dbg !4674
  %cmp = icmp slt i32 %call, 0, !dbg !4675
  br i1 %cmp, label %if.then, label %if.end, !dbg !4676

if.then:                                          ; preds = %entry
  call void @mutex_unlock(%struct.mutex* @dvbdev_register_lock) #9, !dbg !4677
  %2 = load %struct.dvb_device**, %struct.dvb_device*** %pdvbdev.addr, align 8, !dbg !4679
  store %struct.dvb_device* null, %struct.dvb_device** %2, align 8, !dbg !4680
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.dvb_register_device, i64 0, i64 0)) #13, !dbg !4681
  store i32 -23, i32* %retval, align 4, !dbg !4682
  br label %return, !dbg !4682

if.end:                                           ; preds = %entry
  %call2 = call i8* @kzalloc(i64 88, i32 3264) #9, !dbg !4683
  %3 = bitcast i8* %call2 to %struct.dvb_device*, !dbg !4683
  store %struct.dvb_device* %3, %struct.dvb_device** %dvbdev, align 8, !dbg !4684
  %4 = load %struct.dvb_device**, %struct.dvb_device*** %pdvbdev.addr, align 8, !dbg !4685
  store %struct.dvb_device* %3, %struct.dvb_device** %4, align 8, !dbg !4686
  %5 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4687
  %tobool = icmp ne %struct.dvb_device* %5, null, !dbg !4687
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !4689

if.then3:                                         ; preds = %if.end
  call void @mutex_unlock(%struct.mutex* @dvbdev_register_lock) #9, !dbg !4690
  store i32 -12, i32* %retval, align 4, !dbg !4692
  br label %return, !dbg !4692

if.end4:                                          ; preds = %if.end
  %6 = load %struct.dvb_device*, %struct.dvb_device** %template.addr, align 8, !dbg !4693
  %fops = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %6, i32 0, i32 1, !dbg !4694
  %7 = load %struct.file_operations*, %struct.file_operations** %fops, align 8, !dbg !4694
  %8 = bitcast %struct.file_operations* %7 to i8*, !dbg !4693
  %call5 = call i8* @kmemdup(i8* %8, i64 256, i32 3264) #9, !dbg !4695
  %9 = bitcast i8* %call5 to %struct.file_operations*, !dbg !4695
  store %struct.file_operations* %9, %struct.file_operations** %dvbdevfops, align 8, !dbg !4696
  %10 = load %struct.file_operations*, %struct.file_operations** %dvbdevfops, align 8, !dbg !4697
  %tobool6 = icmp ne %struct.file_operations* %10, null, !dbg !4697
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4699

if.then7:                                         ; preds = %if.end4
  %11 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4700
  %12 = bitcast %struct.dvb_device* %11 to i8*, !dbg !4700
  call void @kfree(i8* %12) #9, !dbg !4702
  call void @mutex_unlock(%struct.mutex* @dvbdev_register_lock) #9, !dbg !4703
  store i32 -12, i32* %retval, align 4, !dbg !4704
  br label %return, !dbg !4704

if.end8:                                          ; preds = %if.end4
  %13 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4705
  %14 = bitcast %struct.dvb_device* %13 to i8*, !dbg !4706
  %15 = load %struct.dvb_device*, %struct.dvb_device** %template.addr, align 8, !dbg !4707
  %16 = bitcast %struct.dvb_device* %15 to i8*, !dbg !4706
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %16, i64 88, i1 false), !dbg !4706
  %17 = load i32, i32* %type.addr, align 4, !dbg !4708
  %18 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4709
  %type9 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %18, i32 0, i32 3, !dbg !4710
  store i32 %17, i32* %type9, align 8, !dbg !4711
  %19 = load i32, i32* %id, align 4, !dbg !4712
  %20 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4713
  %id10 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %20, i32 0, i32 5, !dbg !4714
  store i32 %19, i32* %id10, align 8, !dbg !4715
  %21 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !4716
  %22 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4717
  %adapter = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %22, i32 0, i32 2, !dbg !4718
  store %struct.dvb_adapter* %21, %struct.dvb_adapter** %adapter, align 8, !dbg !4719
  %23 = load i8*, i8** %priv.addr, align 8, !dbg !4720
  %24 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4721
  %priv11 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %24, i32 0, i32 11, !dbg !4722
  store i8* %23, i8** %priv11, align 8, !dbg !4723
  %25 = load %struct.file_operations*, %struct.file_operations** %dvbdevfops, align 8, !dbg !4724
  %26 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4725
  %fops12 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %26, i32 0, i32 1, !dbg !4726
  store %struct.file_operations* %25, %struct.file_operations** %fops12, align 8, !dbg !4727
  br label %do.body, !dbg !4728

do.body:                                          ; preds = %if.end8
  %27 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4729
  %wait_queue = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %27, i32 0, i32 9, !dbg !4729
  call void @__init_waitqueue_head(%struct.wait_queue_head* %wait_queue, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* @dvb_register_device.__key) #9, !dbg !4729
  br label %do.end, !dbg !4729

do.end:                                           ; preds = %do.body
  %28 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !4731
  %module = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %28, i32 0, i32 7, !dbg !4732
  %29 = load %struct.module*, %struct.module** %module, align 8, !dbg !4732
  %30 = load %struct.file_operations*, %struct.file_operations** %dvbdevfops, align 8, !dbg !4733
  %owner = getelementptr inbounds %struct.file_operations, %struct.file_operations* %30, i32 0, i32 0, !dbg !4734
  store %struct.module* %29, %struct.module** %owner, align 8, !dbg !4735
  %31 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4736
  %list_head = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %31, i32 0, i32 0, !dbg !4737
  %32 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !4738
  %device_list = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %32, i32 0, i32 2, !dbg !4739
  call void @list_add_tail(%struct.list_head* %list_head, %struct.list_head* %device_list) #9, !dbg !4740
  call void @down_write(%struct.rw_semaphore* @minor_rwsem) #9, !dbg !4741
  store i32 0, i32* %minor, align 4, !dbg !4742
  br label %for.cond, !dbg !4744

for.cond:                                         ; preds = %for.inc, %do.end
  %33 = load i32, i32* %minor, align 4, !dbg !4745
  %cmp13 = icmp slt i32 %33, 256, !dbg !4747
  br i1 %cmp13, label %for.body, label %for.end, !dbg !4748

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %minor, align 4, !dbg !4749
  %idxprom = sext i32 %34 to i64, !dbg !4751
  %arrayidx = getelementptr [256 x %struct.dvb_device*], [256 x %struct.dvb_device*]* @dvb_minors, i64 0, i64 %idxprom, !dbg !4751
  %35 = load %struct.dvb_device*, %struct.dvb_device** %arrayidx, align 8, !dbg !4751
  %cmp14 = icmp eq %struct.dvb_device* %35, null, !dbg !4752
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !4753

if.then15:                                        ; preds = %for.body
  br label %for.end, !dbg !4754

if.end16:                                         ; preds = %for.body
  br label %for.inc, !dbg !4755

for.inc:                                          ; preds = %if.end16
  %36 = load i32, i32* %minor, align 4, !dbg !4756
  %inc = add i32 %36, 1, !dbg !4756
  store i32 %inc, i32* %minor, align 4, !dbg !4756
  br label %for.cond, !dbg !4757, !llvm.loop !4758

for.end:                                          ; preds = %if.then15, %for.cond
  %37 = load i32, i32* %minor, align 4, !dbg !4760
  %cmp17 = icmp eq i32 %37, 256, !dbg !4762
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !4763

if.then18:                                        ; preds = %for.end
  %38 = load %struct.file_operations*, %struct.file_operations** %dvbdevfops, align 8, !dbg !4764
  %39 = bitcast %struct.file_operations* %38 to i8*, !dbg !4764
  call void @kfree(i8* %39) #9, !dbg !4766
  %40 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4767
  %41 = bitcast %struct.dvb_device* %40 to i8*, !dbg !4767
  call void @kfree(i8* %41) #9, !dbg !4768
  call void @up_write(%struct.rw_semaphore* @minor_rwsem) #9, !dbg !4769
  call void @mutex_unlock(%struct.mutex* @dvbdev_register_lock) #9, !dbg !4770
  store i32 -22, i32* %retval, align 4, !dbg !4771
  br label %return, !dbg !4771

if.end19:                                         ; preds = %for.end
  %42 = load i32, i32* %minor, align 4, !dbg !4772
  %43 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4773
  %minor20 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %43, i32 0, i32 4, !dbg !4774
  store i32 %42, i32* %minor20, align 4, !dbg !4775
  %44 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4776
  %45 = load i32, i32* %minor, align 4, !dbg !4777
  %idxprom21 = sext i32 %45 to i64, !dbg !4778
  %arrayidx22 = getelementptr [256 x %struct.dvb_device*], [256 x %struct.dvb_device*]* @dvb_minors, i64 0, i64 %idxprom21, !dbg !4778
  store %struct.dvb_device* %44, %struct.dvb_device** %arrayidx22, align 8, !dbg !4779
  call void @up_write(%struct.rw_semaphore* @minor_rwsem) #9, !dbg !4780
  %46 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4781
  %47 = load i32, i32* %type.addr, align 4, !dbg !4782
  %48 = load i32, i32* %minor, align 4, !dbg !4783
  %49 = load i32, i32* %demux_sink_pads.addr, align 4, !dbg !4784
  %call23 = call i32 @dvb_register_media_device(%struct.dvb_device* %46, i32 %47, i32 %48, i32 %49) #9, !dbg !4785
  store i32 %call23, i32* %ret, align 4, !dbg !4786
  %50 = load i32, i32* %ret, align 4, !dbg !4787
  %tobool24 = icmp ne i32 %50, 0, !dbg !4787
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !4789

if.then25:                                        ; preds = %if.end19
  %call26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.dvb_register_device, i64 0, i64 0)) #13, !dbg !4790
  %51 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4792
  call void @dvb_media_device_free(%struct.dvb_device* %51) #9, !dbg !4793
  %52 = load %struct.file_operations*, %struct.file_operations** %dvbdevfops, align 8, !dbg !4794
  %53 = bitcast %struct.file_operations* %52 to i8*, !dbg !4794
  call void @kfree(i8* %53) #9, !dbg !4795
  %54 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4796
  %55 = bitcast %struct.dvb_device* %54 to i8*, !dbg !4796
  call void @kfree(i8* %55) #9, !dbg !4797
  call void @mutex_unlock(%struct.mutex* @dvbdev_register_lock) #9, !dbg !4798
  %56 = load i32, i32* %ret, align 4, !dbg !4799
  store i32 %56, i32* %retval, align 4, !dbg !4800
  br label %return, !dbg !4800

if.end27:                                         ; preds = %if.end19
  call void @mutex_unlock(%struct.mutex* @dvbdev_register_lock) #9, !dbg !4801
  %57 = load %struct.class*, %struct.class** @dvb_class, align 8, !dbg !4802
  %58 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !4803
  %device = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %58, i32 0, i32 6, !dbg !4804
  %59 = load %struct.device*, %struct.device** %device, align 8, !dbg !4804
  %60 = load i32, i32* %minor, align 4, !dbg !4805
  %or = or i32 222298112, %60, !dbg !4805
  %61 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !4806
  %62 = bitcast %struct.dvb_device* %61 to i8*, !dbg !4806
  %63 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !4807
  %num = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %63, i32 0, i32 0, !dbg !4808
  %64 = load i32, i32* %num, align 8, !dbg !4808
  %65 = load i32, i32* %type.addr, align 4, !dbg !4809
  %idxprom28 = zext i32 %65 to i64, !dbg !4810
  %arrayidx29 = getelementptr [9 x i8*], [9 x i8*]* @dnames, i64 0, i64 %idxprom28, !dbg !4810
  %66 = load i8*, i8** %arrayidx29, align 8, !dbg !4810
  %67 = load i32, i32* %id, align 4, !dbg !4811
  %call30 = call %struct.device* (%struct.class*, %struct.device*, i32, i8*, i8*, ...) @device_create(%struct.class* %57, %struct.device* %59, i32 %or, i8* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %64, i8* %66, i32 %67) #9, !dbg !4812
  store %struct.device* %call30, %struct.device** %clsdev, align 8, !dbg !4813
  %68 = load %struct.device*, %struct.device** %clsdev, align 8, !dbg !4814
  %69 = bitcast %struct.device* %68 to i8*, !dbg !4814
  %call31 = call zeroext i1 @IS_ERR(i8* %69) #9, !dbg !4816
  br i1 %call31, label %if.then32, label %if.end39, !dbg !4817

if.then32:                                        ; preds = %if.end27
  %70 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !4818
  %num33 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %70, i32 0, i32 0, !dbg !4818
  %71 = load i32, i32* %num33, align 8, !dbg !4818
  %72 = load i32, i32* %type.addr, align 4, !dbg !4818
  %idxprom34 = zext i32 %72 to i64, !dbg !4818
  %arrayidx35 = getelementptr [9 x i8*], [9 x i8*]* @dnames, i64 0, i64 %idxprom34, !dbg !4818
  %73 = load i8*, i8** %arrayidx35, align 8, !dbg !4818
  %74 = load i32, i32* %id, align 4, !dbg !4818
  %75 = load %struct.device*, %struct.device** %clsdev, align 8, !dbg !4818
  %76 = bitcast %struct.device* %75 to i8*, !dbg !4818
  %call36 = call i64 @PTR_ERR(i8* %76) #9, !dbg !4818
  %call37 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.dvb_register_device, i64 0, i64 0), i32 %71, i8* %73, i32 %74, i64 %call36) #13, !dbg !4818
  %77 = load %struct.device*, %struct.device** %clsdev, align 8, !dbg !4820
  %78 = bitcast %struct.device* %77 to i8*, !dbg !4820
  %call38 = call i64 @PTR_ERR(i8* %78) #9, !dbg !4821
  %conv = trunc i64 %call38 to i32, !dbg !4821
  store i32 %conv, i32* %retval, align 4, !dbg !4822
  br label %return, !dbg !4822

if.end39:                                         ; preds = %if.end27
  br label %do.body40, !dbg !4823

do.body40:                                        ; preds = %if.end39
  %79 = load i32, i32* @dvbdev_debug, align 4, !dbg !4824
  %tobool41 = icmp ne i32 %79, 0, !dbg !4824
  br i1 %tobool41, label %if.then42, label %if.end47, !dbg !4827

if.then42:                                        ; preds = %do.body40
  %80 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !4824
  %num43 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %80, i32 0, i32 0, !dbg !4824
  %81 = load i32, i32* %num43, align 8, !dbg !4824
  %82 = load i32, i32* %type.addr, align 4, !dbg !4824
  %idxprom44 = zext i32 %82 to i64, !dbg !4824
  %arrayidx45 = getelementptr [9 x i8*], [9 x i8*]* @dnames, i64 0, i64 %idxprom44, !dbg !4824
  %83 = load i8*, i8** %arrayidx45, align 8, !dbg !4824
  %84 = load i32, i32* %id, align 4, !dbg !4824
  %85 = load i32, i32* %minor, align 4, !dbg !4824
  %86 = load i32, i32* %minor, align 4, !dbg !4824
  %call46 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.dvb_register_device, i64 0, i64 0), i32 %81, i8* %83, i32 %84, i32 %85, i32 %86) #13, !dbg !4824
  br label %if.end47, !dbg !4824

if.end47:                                         ; preds = %if.then42, %do.body40
  br label %do.end48, !dbg !4827

do.end48:                                         ; preds = %if.end47
  store i32 0, i32* %retval, align 4, !dbg !4828
  br label %return, !dbg !4828

return:                                           ; preds = %do.end48, %if.then32, %if.then25, %if.then18, %if.then7, %if.then3, %if.then
  %87 = load i32, i32* %retval, align 4, !dbg !4829
  ret i32 %87, !dbg !4829
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dvbdev_get_free_id(%struct.dvb_adapter* %adap, i32 %type) #0 !dbg !4830 {
entry:
  %retval = alloca i32, align 4
  %adap.addr = alloca %struct.dvb_adapter*, align 8
  %type.addr = alloca i32, align 4
  %id = alloca i32, align 4
  %dev = alloca %struct.dvb_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.dvb_device*, align 8
  %__mptr7 = alloca i8*, align 8
  %tmp12 = alloca %struct.dvb_device*, align 8
  store %struct.dvb_adapter* %adap, %struct.dvb_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_adapter** %adap.addr, metadata !4833, metadata !DIExpression()), !dbg !4834
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !4835, metadata !DIExpression()), !dbg !4836
  call void @llvm.dbg.declare(metadata i32* %id, metadata !4837, metadata !DIExpression()), !dbg !4838
  store i32 0, i32* %id, align 4, !dbg !4838
  br label %while.cond, !dbg !4839

while.cond:                                       ; preds = %skip, %entry
  %0 = load i32, i32* %id, align 4, !dbg !4840
  %cmp = icmp ult i32 %0, 256, !dbg !4841
  br i1 %cmp, label %while.body, label %while.end, !dbg !4839

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata %struct.dvb_device** %dev, metadata !4842, metadata !DIExpression()), !dbg !4844
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4845, metadata !DIExpression()), !dbg !4848
  %1 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !4848
  %device_list = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %1, i32 0, i32 2, !dbg !4848
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %device_list, i32 0, i32 0, !dbg !4848
  %2 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4848
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !4848
  store i8* %3, i8** %__mptr, align 8, !dbg !4848
  br label %do.body, !dbg !4848

do.body:                                          ; preds = %while.body
  br label %do.end, !dbg !4849

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4848
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !4848
  %5 = bitcast i8* %add.ptr to %struct.dvb_device*, !dbg !4848
  store %struct.dvb_device* %5, %struct.dvb_device** %tmp, align 8, !dbg !4849
  %6 = load %struct.dvb_device*, %struct.dvb_device** %tmp, align 8, !dbg !4848
  store %struct.dvb_device* %6, %struct.dvb_device** %dev, align 8, !dbg !4851
  br label %for.cond, !dbg !4851

for.cond:                                         ; preds = %do.end11, %do.end
  %7 = load %struct.dvb_device*, %struct.dvb_device** %dev, align 8, !dbg !4852
  %list_head = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %7, i32 0, i32 0, !dbg !4852
  %8 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !4852
  %device_list1 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %8, i32 0, i32 2, !dbg !4852
  %cmp2 = icmp eq %struct.list_head* %list_head, %device_list1, !dbg !4852
  %lnot = xor i1 %cmp2, true, !dbg !4852
  br i1 %lnot, label %for.body, label %for.end, !dbg !4851

for.body:                                         ; preds = %for.cond
  %9 = load %struct.dvb_device*, %struct.dvb_device** %dev, align 8, !dbg !4854
  %type3 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %9, i32 0, i32 3, !dbg !4856
  %10 = load i32, i32* %type3, align 8, !dbg !4856
  %11 = load i32, i32* %type.addr, align 4, !dbg !4857
  %cmp4 = icmp eq i32 %10, %11, !dbg !4858
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !4859

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct.dvb_device*, %struct.dvb_device** %dev, align 8, !dbg !4860
  %id5 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %12, i32 0, i32 5, !dbg !4861
  %13 = load i32, i32* %id5, align 8, !dbg !4861
  %14 = load i32, i32* %id, align 4, !dbg !4862
  %cmp6 = icmp eq i32 %13, %14, !dbg !4863
  br i1 %cmp6, label %if.then, label %if.end, !dbg !4864

if.then:                                          ; preds = %land.lhs.true
  br label %skip, !dbg !4865

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !4862

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr7, metadata !4866, metadata !DIExpression()), !dbg !4868
  %15 = load %struct.dvb_device*, %struct.dvb_device** %dev, align 8, !dbg !4868
  %list_head8 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %15, i32 0, i32 0, !dbg !4868
  %next9 = getelementptr inbounds %struct.list_head, %struct.list_head* %list_head8, i32 0, i32 0, !dbg !4868
  %16 = load %struct.list_head*, %struct.list_head** %next9, align 8, !dbg !4868
  %17 = bitcast %struct.list_head* %16 to i8*, !dbg !4868
  store i8* %17, i8** %__mptr7, align 8, !dbg !4868
  br label %do.body10, !dbg !4868

do.body10:                                        ; preds = %for.inc
  br label %do.end11, !dbg !4869

do.end11:                                         ; preds = %do.body10
  %18 = load i8*, i8** %__mptr7, align 8, !dbg !4868
  %add.ptr13 = getelementptr i8, i8* %18, i64 0, !dbg !4868
  %19 = bitcast i8* %add.ptr13 to %struct.dvb_device*, !dbg !4868
  store %struct.dvb_device* %19, %struct.dvb_device** %tmp12, align 8, !dbg !4869
  %20 = load %struct.dvb_device*, %struct.dvb_device** %tmp12, align 8, !dbg !4868
  store %struct.dvb_device* %20, %struct.dvb_device** %dev, align 8, !dbg !4852
  br label %for.cond, !dbg !4852, !llvm.loop !4871

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %id, align 4, !dbg !4873
  store i32 %21, i32* %retval, align 4, !dbg !4874
  br label %return, !dbg !4874

skip:                                             ; preds = %if.then
  call void @llvm.dbg.label(metadata !4875), !dbg !4876
  %22 = load i32, i32* %id, align 4, !dbg !4877
  %inc = add i32 %22, 1, !dbg !4877
  store i32 %inc, i32* %id, align 4, !dbg !4877
  br label %while.cond, !dbg !4839, !llvm.loop !4878

while.end:                                        ; preds = %while.cond
  store i32 -23, i32* %retval, align 4, !dbg !4880
  br label %return, !dbg !4880

return:                                           ; preds = %while.end, %for.end
  %23 = load i32, i32* %retval, align 4, !dbg !4881
  ret i32 %23, !dbg !4881
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !4882 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4216, metadata !DIExpression()), !dbg !4883
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4230, metadata !DIExpression()), !dbg !4886
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4232, metadata !DIExpression()), !dbg !4887
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4234, metadata !DIExpression()), !dbg !4888
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4236, metadata !DIExpression()), !dbg !4889
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4242, metadata !DIExpression()), !dbg !4891
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4248, metadata !DIExpression()), !dbg !4893
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4257, metadata !DIExpression()), !dbg !4896
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4259, metadata !DIExpression()), !dbg !4897
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4261, metadata !DIExpression()), !dbg !4898
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4263, metadata !DIExpression()), !dbg !4899
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4265, metadata !DIExpression()), !dbg !4900
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4267, metadata !DIExpression()), !dbg !4901
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4269, metadata !DIExpression()), !dbg !4902
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4271, metadata !DIExpression()), !dbg !4903
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4904, metadata !DIExpression()), !dbg !4905
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4906, metadata !DIExpression()), !dbg !4907
  %0 = load i64, i64* %size.addr, align 8, !dbg !4908
  %1 = load i32, i32* %flags.addr, align 4, !dbg !4909
  %or = or i32 %1, 256, !dbg !4910
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4911
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !4912
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !4913

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4914
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !4915
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4916

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4917
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !4918
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !4919
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !4920
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4900
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4921
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4922
  %10 = load i32, i32* %order.i.i, align 4, !dbg !4923
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4924
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4925
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4926
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !4927
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4927
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4927
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4927
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4927
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4928
  br label %kmalloc.exit, !dbg !4928

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !4929
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4930
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !4930
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4931

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4932
  br label %kmalloc_index.exit.i, !dbg !4932

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4933
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4934
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4935

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4936
  br label %kmalloc_index.exit.i, !dbg !4936

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4937
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4938
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4939

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4940
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4941
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4942

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4943
  br label %kmalloc_index.exit.i, !dbg !4943

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4944
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4945
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4946

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4947
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4948
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4949

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4950
  br label %kmalloc_index.exit.i, !dbg !4950

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4951
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4952
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4953

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4954
  br label %kmalloc_index.exit.i, !dbg !4954

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4955
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4956
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4957

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4958
  br label %kmalloc_index.exit.i, !dbg !4958

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4959
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4960
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4961

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4962
  br label %kmalloc_index.exit.i, !dbg !4962

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4963
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4964
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4965

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4966
  br label %kmalloc_index.exit.i, !dbg !4966

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4967
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4968
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4969

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4970
  br label %kmalloc_index.exit.i, !dbg !4970

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4971
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4972
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4973

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4974
  br label %kmalloc_index.exit.i, !dbg !4974

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4975
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4976
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4977

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4978
  br label %kmalloc_index.exit.i, !dbg !4978

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4979
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4980
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4981

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4982
  br label %kmalloc_index.exit.i, !dbg !4982

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4983
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4984
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4985

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4986
  br label %kmalloc_index.exit.i, !dbg !4986

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4987
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4988
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4989

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4990
  br label %kmalloc_index.exit.i, !dbg !4990

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4991
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4992
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4993

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4994
  br label %kmalloc_index.exit.i, !dbg !4994

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4995
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4996
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4997

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4998
  br label %kmalloc_index.exit.i, !dbg !4998

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4999
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5000
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5001

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5002
  br label %kmalloc_index.exit.i, !dbg !5002

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5003
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5004
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5005

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5006
  br label %kmalloc_index.exit.i, !dbg !5006

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5007
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5008
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5009

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5010
  br label %kmalloc_index.exit.i, !dbg !5010

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5011
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5012
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5013

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5014
  br label %kmalloc_index.exit.i, !dbg !5014

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5015
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5016
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5017

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5018
  br label %kmalloc_index.exit.i, !dbg !5018

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5019
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5020
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5021

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5022
  br label %kmalloc_index.exit.i, !dbg !5022

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5023
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5024
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5025

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5026
  br label %kmalloc_index.exit.i, !dbg !5026

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5027
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5028
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5029

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5030
  br label %kmalloc_index.exit.i, !dbg !5030

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5031
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5032
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5033

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5034
  br label %kmalloc_index.exit.i, !dbg !5034

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5035
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5036
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5037

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5038
  br label %kmalloc_index.exit.i, !dbg !5038

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5039
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5040
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5041

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5042
  br label %kmalloc_index.exit.i, !dbg !5042

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5043
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5044
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5045

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5046
  br label %kmalloc_index.exit.i, !dbg !5046

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !5047, !srcloc !4470
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 106) #10, !dbg !5048, !srcloc !4474
  unreachable, !dbg !5049

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5050
  store i32 %45, i32* %index.i, align 4, !dbg !5051
  %46 = load i32, i32* %index.i, align 4, !dbg !5052
  %tobool.i = icmp ne i32 %46, 0, !dbg !5052
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5053

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5054
  br label %kmalloc.exit, !dbg !5054

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5055
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5056
  %and.i.i = and i32 %48, 17, !dbg !5056
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5056
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5056
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5056
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5056
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5057

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5058
  br label %kmalloc_type.exit.i, !dbg !5058

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5059
  %and2.i.i = and i32 %49, 1, !dbg !5060
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5059
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5059
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5059
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5061
  br label %kmalloc_type.exit.i, !dbg !5061

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5062
  %idxprom.i = zext i32 %51 to i64, !dbg !5063
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5063
  %52 = load i32, i32* %index.i, align 4, !dbg !5064
  %idxprom6.i = zext i32 %52 to i64, !dbg !5063
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5063
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5063
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5065
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5066
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5067
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5068
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !5069
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5069
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5069
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5069
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !5069
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4888
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5070
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5071
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5072
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5073
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !5074
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5075
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5076
  store i8* %62, i8** %retval.i, align 8, !dbg !5077
  br label %kmalloc.exit, !dbg !5077

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5078
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5079
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !5080
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5080
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5080
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5080
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !5080
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5081
  br label %kmalloc.exit, !dbg !5081

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5082
  ret i8* %65, !dbg !5083
}

; Function Attrs: noredzone
declare dso_local i8* @kmemdup(i8*, i64, i32) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !5084 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5088, metadata !DIExpression()), !dbg !5089
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5090, metadata !DIExpression()), !dbg !5091
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5092
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5093
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5094
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5094
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5095
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #9, !dbg !5096
  ret void, !dbg !5097
}

; Function Attrs: noredzone
declare dso_local void @down_write(%struct.rw_semaphore*) #2

; Function Attrs: noredzone
declare dso_local void @up_write(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dvb_register_media_device(%struct.dvb_device* %dvbdev, i32 %type, i32 %minor, i32 %demux_sink_pads) #0 !dbg !5098 {
entry:
  %dvbdev.addr = alloca %struct.dvb_device*, align 8
  %type.addr = alloca i32, align 4
  %minor.addr = alloca i32, align 4
  %demux_sink_pads.addr = alloca i32, align 4
  store %struct.dvb_device* %dvbdev, %struct.dvb_device** %dvbdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_device** %dvbdev.addr, metadata !5101, metadata !DIExpression()), !dbg !5102
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5103, metadata !DIExpression()), !dbg !5104
  store i32 %minor, i32* %minor.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %minor.addr, metadata !5105, metadata !DIExpression()), !dbg !5106
  store i32 %demux_sink_pads, i32* %demux_sink_pads.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %demux_sink_pads.addr, metadata !5107, metadata !DIExpression()), !dbg !5108
  ret i32 0, !dbg !5109
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dvb_media_device_free(%struct.dvb_device* %dvbdev) #0 !dbg !5110 {
entry:
  %dvbdev.addr = alloca %struct.dvb_device*, align 8
  store %struct.dvb_device* %dvbdev, %struct.dvb_device** %dvbdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_device** %dvbdev.addr, metadata !5113, metadata !DIExpression()), !dbg !5114
  ret void, !dbg !5115
}

; Function Attrs: noredzone
declare dso_local %struct.device* @device_create(%struct.class*, %struct.device*, i32, i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !5116 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5120, metadata !DIExpression()), !dbg !5121
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5122
  %1 = ptrtoint i8* %0 to i64, !dbg !5122
  %2 = inttoptr i64 %1 to i8*, !dbg !5122
  %3 = ptrtoint i8* %2 to i64, !dbg !5122
  %cmp = icmp uge i64 %3, -4095, !dbg !5122
  %lnot = xor i1 %cmp, true, !dbg !5122
  %lnot1 = xor i1 %lnot, true, !dbg !5122
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5122
  %conv = sext i32 %lnot.ext to i64, !dbg !5122
  %tobool = icmp ne i64 %conv, 0, !dbg !5122
  ret i1 %tobool, !dbg !5123
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !5124 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5127, metadata !DIExpression()), !dbg !5128
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5129
  %1 = ptrtoint i8* %0 to i64, !dbg !5130
  ret i64 %1, !dbg !5131
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dvb_remove_device(%struct.dvb_device* %dvbdev) #0 !dbg !5132 {
entry:
  %dvbdev.addr = alloca %struct.dvb_device*, align 8
  store %struct.dvb_device* %dvbdev, %struct.dvb_device** %dvbdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_device** %dvbdev.addr, metadata !5133, metadata !DIExpression()), !dbg !5134
  %0 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev.addr, align 8, !dbg !5135
  %tobool = icmp ne %struct.dvb_device* %0, null, !dbg !5135
  br i1 %tobool, label %if.end, label %if.then, !dbg !5137

if.then:                                          ; preds = %entry
  br label %return, !dbg !5138

if.end:                                           ; preds = %entry
  call void @down_write(%struct.rw_semaphore* @minor_rwsem) #9, !dbg !5139
  %1 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev.addr, align 8, !dbg !5140
  %minor = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %1, i32 0, i32 4, !dbg !5141
  %2 = load i32, i32* %minor, align 4, !dbg !5141
  %idxprom = sext i32 %2 to i64, !dbg !5142
  %arrayidx = getelementptr [256 x %struct.dvb_device*], [256 x %struct.dvb_device*]* @dvb_minors, i64 0, i64 %idxprom, !dbg !5142
  store %struct.dvb_device* null, %struct.dvb_device** %arrayidx, align 8, !dbg !5143
  call void @up_write(%struct.rw_semaphore* @minor_rwsem) #9, !dbg !5144
  %3 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev.addr, align 8, !dbg !5145
  call void @dvb_media_device_free(%struct.dvb_device* %3) #9, !dbg !5146
  %4 = load %struct.class*, %struct.class** @dvb_class, align 8, !dbg !5147
  %5 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev.addr, align 8, !dbg !5148
  %minor1 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %5, i32 0, i32 4, !dbg !5148
  %6 = load i32, i32* %minor1, align 4, !dbg !5148
  %or = or i32 222298112, %6, !dbg !5148
  call void @device_destroy(%struct.class* %4, i32 %or) #9, !dbg !5149
  %7 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev.addr, align 8, !dbg !5150
  %list_head = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %7, i32 0, i32 0, !dbg !5151
  call void @list_del(%struct.list_head* %list_head) #9, !dbg !5152
  br label %return, !dbg !5153

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5153
}

; Function Attrs: noredzone
declare dso_local void @device_destroy(%struct.class*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !5154 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5157, metadata !DIExpression()), !dbg !5158
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5159
  call void @__list_del_entry(%struct.list_head* %0) #9, !dbg !5160
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5161
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5162
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !5163
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5164
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !5165
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !5166
  ret void, !dbg !5167
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dvb_free_device(%struct.dvb_device* %dvbdev) #0 !dbg !5168 {
entry:
  %dvbdev.addr = alloca %struct.dvb_device*, align 8
  store %struct.dvb_device* %dvbdev, %struct.dvb_device** %dvbdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_device** %dvbdev.addr, metadata !5169, metadata !DIExpression()), !dbg !5170
  %0 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev.addr, align 8, !dbg !5171
  %tobool = icmp ne %struct.dvb_device* %0, null, !dbg !5171
  br i1 %tobool, label %if.end, label %if.then, !dbg !5173

if.then:                                          ; preds = %entry
  br label %return, !dbg !5174

if.end:                                           ; preds = %entry
  %1 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev.addr, align 8, !dbg !5175
  %fops = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %1, i32 0, i32 1, !dbg !5176
  %2 = load %struct.file_operations*, %struct.file_operations** %fops, align 8, !dbg !5176
  %3 = bitcast %struct.file_operations* %2 to i8*, !dbg !5175
  call void @kfree(i8* %3) #9, !dbg !5177
  %4 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev.addr, align 8, !dbg !5178
  %5 = bitcast %struct.dvb_device* %4 to i8*, !dbg !5178
  call void @kfree(i8* %5) #9, !dbg !5179
  br label %return, !dbg !5180

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5180
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dvb_unregister_device(%struct.dvb_device* %dvbdev) #0 !dbg !5181 {
entry:
  %dvbdev.addr = alloca %struct.dvb_device*, align 8
  store %struct.dvb_device* %dvbdev, %struct.dvb_device** %dvbdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_device** %dvbdev.addr, metadata !5182, metadata !DIExpression()), !dbg !5183
  %0 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev.addr, align 8, !dbg !5184
  call void @dvb_remove_device(%struct.dvb_device* %0) #9, !dbg !5185
  %1 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev.addr, align 8, !dbg !5186
  call void @dvb_free_device(%struct.dvb_device* %1) #9, !dbg !5187
  ret void, !dbg !5188
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dvb_register_adapter(%struct.dvb_adapter* %adap, i8* %name, %struct.module* %module, %struct.device* %device, i16* %adapter_nums) #0 !dbg !3989 {
entry:
  %retval = alloca i32, align 4
  %adap.addr = alloca %struct.dvb_adapter*, align 8
  %name.addr = alloca i8*, align 8
  %module.addr = alloca %struct.module*, align 8
  %device.addr = alloca %struct.device*, align 8
  %adapter_nums.addr = alloca i16*, align 8
  %i = alloca i32, align 4
  %num = alloca i32, align 4
  store %struct.dvb_adapter* %adap, %struct.dvb_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_adapter** %adap.addr, metadata !5189, metadata !DIExpression()), !dbg !5190
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5191, metadata !DIExpression()), !dbg !5192
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !5193, metadata !DIExpression()), !dbg !5194
  store %struct.device* %device, %struct.device** %device.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %device.addr, metadata !5195, metadata !DIExpression()), !dbg !5196
  store i16* %adapter_nums, i16** %adapter_nums.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %adapter_nums.addr, metadata !5197, metadata !DIExpression()), !dbg !5198
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5199, metadata !DIExpression()), !dbg !5200
  call void @llvm.dbg.declare(metadata i32* %num, metadata !5201, metadata !DIExpression()), !dbg !5202
  call void @mutex_lock(%struct.mutex* @dvbdev_register_lock) #9, !dbg !5203
  store i32 0, i32* %i, align 4, !dbg !5204
  br label %for.cond, !dbg !5206

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !5207
  %cmp = icmp slt i32 %0, 16, !dbg !5209
  br i1 %cmp, label %for.body, label %for.end, !dbg !5210

for.body:                                         ; preds = %for.cond
  %1 = load i16*, i16** %adapter_nums.addr, align 8, !dbg !5211
  %2 = load i32, i32* %i, align 4, !dbg !5213
  %idxprom = sext i32 %2 to i64, !dbg !5211
  %arrayidx = getelementptr i16, i16* %1, i64 %idxprom, !dbg !5211
  %3 = load i16, i16* %arrayidx, align 2, !dbg !5211
  %conv = sext i16 %3 to i32, !dbg !5211
  store i32 %conv, i32* %num, align 4, !dbg !5214
  %4 = load i32, i32* %num, align 4, !dbg !5215
  %cmp1 = icmp sge i32 %4, 0, !dbg !5217
  br i1 %cmp1, label %land.lhs.true, label %if.else, !dbg !5218

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, i32* %num, align 4, !dbg !5219
  %cmp3 = icmp slt i32 %5, 16, !dbg !5220
  br i1 %cmp3, label %if.then, label %if.else, !dbg !5221

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, i32* %num, align 4, !dbg !5222
  %call = call i32 @dvbdev_check_free_adapter_num(i32 %6) #9, !dbg !5225
  %tobool = icmp ne i32 %call, 0, !dbg !5225
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5226

if.then5:                                         ; preds = %if.then
  br label %for.end, !dbg !5227

if.end:                                           ; preds = %if.then
  br label %if.end7, !dbg !5228

if.else:                                          ; preds = %land.lhs.true, %for.body
  %call6 = call i32 @dvbdev_get_free_adapter_num() #9, !dbg !5229
  store i32 %call6, i32* %num, align 4, !dbg !5231
  br label %for.end, !dbg !5232

if.end7:                                          ; preds = %if.end
  store i32 -1, i32* %num, align 4, !dbg !5233
  br label %for.inc, !dbg !5234

for.inc:                                          ; preds = %if.end7
  %7 = load i32, i32* %i, align 4, !dbg !5235
  %inc = add i32 %7, 1, !dbg !5235
  store i32 %inc, i32* %i, align 4, !dbg !5235
  br label %for.cond, !dbg !5236, !llvm.loop !5237

for.end:                                          ; preds = %if.else, %if.then5, %for.cond
  %8 = load i32, i32* %num, align 4, !dbg !5239
  %cmp8 = icmp slt i32 %8, 0, !dbg !5241
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !5242

if.then10:                                        ; preds = %for.end
  call void @mutex_unlock(%struct.mutex* @dvbdev_register_lock) #9, !dbg !5243
  store i32 -23, i32* %retval, align 4, !dbg !5245
  br label %return, !dbg !5245

if.end11:                                         ; preds = %for.end
  %9 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !5246
  %10 = bitcast %struct.dvb_adapter* %9 to i8*, !dbg !5247
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 120, i1 false), !dbg !5247
  %11 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !5248
  %device_list = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %11, i32 0, i32 2, !dbg !5249
  call void @INIT_LIST_HEAD(%struct.list_head* %device_list) #9, !dbg !5250
  %12 = load i8*, i8** %name.addr, align 8, !dbg !5251
  %call12 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i8* %12) #13, !dbg !5251
  %13 = load i32, i32* %num, align 4, !dbg !5252
  %14 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !5253
  %num13 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %14, i32 0, i32 0, !dbg !5254
  store i32 %13, i32* %num13, align 8, !dbg !5255
  %15 = load i8*, i8** %name.addr, align 8, !dbg !5256
  %16 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !5257
  %name14 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %16, i32 0, i32 3, !dbg !5258
  store i8* %15, i8** %name14, align 8, !dbg !5259
  %17 = load %struct.module*, %struct.module** %module.addr, align 8, !dbg !5260
  %18 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !5261
  %module15 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %18, i32 0, i32 7, !dbg !5262
  store %struct.module* %17, %struct.module** %module15, align 8, !dbg !5263
  %19 = load %struct.device*, %struct.device** %device.addr, align 8, !dbg !5264
  %20 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !5265
  %device16 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %20, i32 0, i32 6, !dbg !5266
  store %struct.device* %19, %struct.device** %device16, align 8, !dbg !5267
  %21 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !5268
  %mfe_shared = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %21, i32 0, i32 8, !dbg !5269
  store i32 0, i32* %mfe_shared, align 8, !dbg !5270
  %22 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !5271
  %mfe_dvbdev = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %22, i32 0, i32 9, !dbg !5272
  store %struct.dvb_device* null, %struct.dvb_device** %mfe_dvbdev, align 8, !dbg !5273
  br label %do.body, !dbg !5274

do.body:                                          ; preds = %if.end11
  %23 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !5275
  %mfe_lock = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %23, i32 0, i32 10, !dbg !5275
  call void @__mutex_init(%struct.mutex* %mfe_lock, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), %struct.lock_class_key* @dvb_register_adapter.__key) #9, !dbg !5275
  br label %do.end, !dbg !5275

do.end:                                           ; preds = %do.body
  %24 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !5277
  %list_head = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %24, i32 0, i32 1, !dbg !5278
  call void @list_add_tail(%struct.list_head* %list_head, %struct.list_head* @dvb_adapter_list) #9, !dbg !5279
  call void @mutex_unlock(%struct.mutex* @dvbdev_register_lock) #9, !dbg !5280
  %25 = load i32, i32* %num, align 4, !dbg !5281
  store i32 %25, i32* %retval, align 4, !dbg !5282
  br label %return, !dbg !5282

return:                                           ; preds = %do.end, %if.then10
  %26 = load i32, i32* %retval, align 4, !dbg !5283
  ret i32 %26, !dbg !5283
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dvbdev_check_free_adapter_num(i32 %num) #0 !dbg !5284 {
entry:
  %retval = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %entry1 = alloca %struct.list_head*, align 8
  %adap = alloca %struct.dvb_adapter*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.dvb_adapter*, align 8
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !5285, metadata !DIExpression()), !dbg !5286
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry1, metadata !5287, metadata !DIExpression()), !dbg !5288
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @dvb_adapter_list, i32 0, i32 0), align 8, !dbg !5289
  store %struct.list_head* %0, %struct.list_head** %entry1, align 8, !dbg !5289
  br label %for.cond, !dbg !5289

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry1, align 8, !dbg !5291
  %cmp = icmp ne %struct.list_head* %1, @dvb_adapter_list, !dbg !5291
  br i1 %cmp, label %for.body, label %for.end, !dbg !5289

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.dvb_adapter** %adap, metadata !5293, metadata !DIExpression()), !dbg !5295
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5296, metadata !DIExpression()), !dbg !5298
  %2 = load %struct.list_head*, %struct.list_head** %entry1, align 8, !dbg !5298
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !5298
  store i8* %3, i8** %__mptr, align 8, !dbg !5298
  br label %do.body, !dbg !5298

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !5299

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !5298
  %add.ptr = getelementptr i8, i8* %4, i64 -8, !dbg !5298
  %5 = bitcast i8* %add.ptr to %struct.dvb_adapter*, !dbg !5298
  store %struct.dvb_adapter* %5, %struct.dvb_adapter** %tmp, align 8, !dbg !5299
  %6 = load %struct.dvb_adapter*, %struct.dvb_adapter** %tmp, align 8, !dbg !5298
  store %struct.dvb_adapter* %6, %struct.dvb_adapter** %adap, align 8, !dbg !5301
  %7 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap, align 8, !dbg !5302
  %num2 = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %7, i32 0, i32 0, !dbg !5304
  %8 = load i32, i32* %num2, align 8, !dbg !5304
  %9 = load i32, i32* %num.addr, align 4, !dbg !5305
  %cmp3 = icmp eq i32 %8, %9, !dbg !5306
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5307

if.then:                                          ; preds = %do.end
  store i32 0, i32* %retval, align 4, !dbg !5308
  br label %return, !dbg !5308

if.end:                                           ; preds = %do.end
  br label %for.inc, !dbg !5309

for.inc:                                          ; preds = %if.end
  %10 = load %struct.list_head*, %struct.list_head** %entry1, align 8, !dbg !5291
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5291
  %11 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5291
  store %struct.list_head* %11, %struct.list_head** %entry1, align 8, !dbg !5291
  br label %for.cond, !dbg !5291, !llvm.loop !5310

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4, !dbg !5312
  br label %return, !dbg !5312

return:                                           ; preds = %for.end, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !5313
  ret i32 %12, !dbg !5313
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dvbdev_get_free_adapter_num() #0 !dbg !5314 {
entry:
  %retval = alloca i32, align 4
  %num = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %num, metadata !5315, metadata !DIExpression()), !dbg !5316
  store i32 0, i32* %num, align 4, !dbg !5316
  br label %while.cond, !dbg !5317

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %num, align 4, !dbg !5318
  %cmp = icmp slt i32 %0, 16, !dbg !5319
  br i1 %cmp, label %while.body, label %while.end, !dbg !5317

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %num, align 4, !dbg !5320
  %call = call i32 @dvbdev_check_free_adapter_num(i32 %1) #9, !dbg !5323
  %tobool = icmp ne i32 %call, 0, !dbg !5323
  br i1 %tobool, label %if.then, label %if.end, !dbg !5324

if.then:                                          ; preds = %while.body
  %2 = load i32, i32* %num, align 4, !dbg !5325
  store i32 %2, i32* %retval, align 4, !dbg !5326
  br label %return, !dbg !5326

if.end:                                           ; preds = %while.body
  %3 = load i32, i32* %num, align 4, !dbg !5327
  %inc = add i32 %3, 1, !dbg !5327
  store i32 %inc, i32* %num, align 4, !dbg !5327
  br label %while.cond, !dbg !5317, !llvm.loop !5328

while.end:                                        ; preds = %while.cond
  store i32 -23, i32* %retval, align 4, !dbg !5330
  br label %return, !dbg !5330

return:                                           ; preds = %while.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !5331
  ret i32 %4, !dbg !5331
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !5332 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5333, metadata !DIExpression()), !dbg !5334
  br label %do.body, !dbg !5335

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5336

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5338

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5336

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5340
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5340
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !5340
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !5340
  br label %do.end3, !dbg !5340

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5336

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5342
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5343
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !5344
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !5345
  ret void, !dbg !5346
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dvb_unregister_adapter(%struct.dvb_adapter* %adap) #0 !dbg !5347 {
entry:
  %adap.addr = alloca %struct.dvb_adapter*, align 8
  store %struct.dvb_adapter* %adap, %struct.dvb_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dvb_adapter** %adap.addr, metadata !5350, metadata !DIExpression()), !dbg !5351
  call void @mutex_lock(%struct.mutex* @dvbdev_register_lock) #9, !dbg !5352
  %0 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adap.addr, align 8, !dbg !5353
  %list_head = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %0, i32 0, i32 1, !dbg !5354
  call void @list_del(%struct.list_head* %list_head) #9, !dbg !5355
  call void @mutex_unlock(%struct.mutex* @dvbdev_register_lock) #9, !dbg !5356
  ret i32 0, !dbg !5357
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.i2c_client* @dvb_module_probe(i8* %module_name, i8* %name, %struct.i2c_adapter* %adap, i8 zeroext %addr, i8* %platform_data) #0 !dbg !5358 {
entry:
  %retval = alloca %struct.i2c_client*, align 8
  %module_name.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %addr.addr = alloca i8, align 1
  %platform_data.addr = alloca i8*, align 8
  %client = alloca %struct.i2c_client*, align 8
  %board_info = alloca %struct.i2c_board_info*, align 8
  store i8* %module_name, i8** %module_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %module_name.addr, metadata !5495, metadata !DIExpression()), !dbg !5496
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5497, metadata !DIExpression()), !dbg !5498
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !5499, metadata !DIExpression()), !dbg !5500
  store i8 %addr, i8* %addr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %addr.addr, metadata !5501, metadata !DIExpression()), !dbg !5502
  store i8* %platform_data, i8** %platform_data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %platform_data.addr, metadata !5503, metadata !DIExpression()), !dbg !5504
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client, metadata !5505, metadata !DIExpression()), !dbg !5506
  call void @llvm.dbg.declare(metadata %struct.i2c_board_info** %board_info, metadata !5507, metadata !DIExpression()), !dbg !5562
  %call = call i8* @kzalloc(i64 80, i32 3264) #9, !dbg !5563
  %0 = bitcast i8* %call to %struct.i2c_board_info*, !dbg !5563
  store %struct.i2c_board_info* %0, %struct.i2c_board_info** %board_info, align 8, !dbg !5564
  %1 = load %struct.i2c_board_info*, %struct.i2c_board_info** %board_info, align 8, !dbg !5565
  %tobool = icmp ne %struct.i2c_board_info* %1, null, !dbg !5565
  br i1 %tobool, label %if.end, label %if.then, !dbg !5567

if.then:                                          ; preds = %entry
  store %struct.i2c_client* null, %struct.i2c_client** %retval, align 8, !dbg !5568
  br label %return, !dbg !5568

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8, !dbg !5569
  %tobool1 = icmp ne i8* %2, null, !dbg !5569
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !5571

if.then2:                                         ; preds = %if.end
  %3 = load %struct.i2c_board_info*, %struct.i2c_board_info** %board_info, align 8, !dbg !5572
  %type = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %3, i32 0, i32 0, !dbg !5573
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %type, i64 0, i64 0, !dbg !5572
  %4 = load i8*, i8** %name.addr, align 8, !dbg !5574
  %call3 = call i64 @strscpy(i8* %arraydecay, i8* %4, i64 20) #9, !dbg !5575
  br label %if.end7, !dbg !5575

if.else:                                          ; preds = %if.end
  %5 = load %struct.i2c_board_info*, %struct.i2c_board_info** %board_info, align 8, !dbg !5576
  %type4 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %5, i32 0, i32 0, !dbg !5577
  %arraydecay5 = getelementptr inbounds [20 x i8], [20 x i8]* %type4, i64 0, i64 0, !dbg !5576
  %6 = load i8*, i8** %module_name.addr, align 8, !dbg !5578
  %call6 = call i64 @strscpy(i8* %arraydecay5, i8* %6, i64 20) #9, !dbg !5579
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then2
  %7 = load i8, i8* %addr.addr, align 1, !dbg !5580
  %conv = zext i8 %7 to i16, !dbg !5580
  %8 = load %struct.i2c_board_info*, %struct.i2c_board_info** %board_info, align 8, !dbg !5581
  %addr8 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %8, i32 0, i32 2, !dbg !5582
  store i16 %conv, i16* %addr8, align 2, !dbg !5583
  %9 = load i8*, i8** %platform_data.addr, align 8, !dbg !5584
  %10 = load %struct.i2c_board_info*, %struct.i2c_board_info** %board_info, align 8, !dbg !5585
  %platform_data9 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %10, i32 0, i32 4, !dbg !5586
  store i8* %9, i8** %platform_data9, align 8, !dbg !5587
  %11 = load i8*, i8** %module_name.addr, align 8, !dbg !5588
  %call10 = call i32 (i8*, ...) @request_module(i8* %11) #9, !dbg !5589
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !5590
  %13 = load %struct.i2c_board_info*, %struct.i2c_board_info** %board_info, align 8, !dbg !5591
  %call11 = call %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter* %12, %struct.i2c_board_info* %13) #9, !dbg !5592
  store %struct.i2c_client* %call11, %struct.i2c_client** %client, align 8, !dbg !5593
  %14 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5594
  %call12 = call zeroext i1 @i2c_client_has_driver(%struct.i2c_client* %14) #9, !dbg !5596
  br i1 %call12, label %if.end14, label %if.then13, !dbg !5597

if.then13:                                        ; preds = %if.end7
  %15 = load %struct.i2c_board_info*, %struct.i2c_board_info** %board_info, align 8, !dbg !5598
  %16 = bitcast %struct.i2c_board_info* %15 to i8*, !dbg !5598
  call void @kfree(i8* %16) #9, !dbg !5600
  store %struct.i2c_client* null, %struct.i2c_client** %retval, align 8, !dbg !5601
  br label %return, !dbg !5601

if.end14:                                         ; preds = %if.end7
  %17 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5602
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 4, !dbg !5604
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !5605
  %18 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5605
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %18, i32 0, i32 2, !dbg !5606
  %19 = load %struct.module*, %struct.module** %owner, align 8, !dbg !5606
  %call15 = call zeroext i1 @try_module_get(%struct.module* %19) #9, !dbg !5607
  br i1 %call15, label %if.end17, label %if.then16, !dbg !5608

if.then16:                                        ; preds = %if.end14
  %20 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5609
  call void @i2c_unregister_device(%struct.i2c_client* %20) #9, !dbg !5611
  store %struct.i2c_client* null, %struct.i2c_client** %client, align 8, !dbg !5612
  br label %if.end17, !dbg !5613

if.end17:                                         ; preds = %if.then16, %if.end14
  %21 = load %struct.i2c_board_info*, %struct.i2c_board_info** %board_info, align 8, !dbg !5614
  %22 = bitcast %struct.i2c_board_info* %21 to i8*, !dbg !5614
  call void @kfree(i8* %22) #9, !dbg !5615
  %23 = load %struct.i2c_client*, %struct.i2c_client** %client, align 8, !dbg !5616
  store %struct.i2c_client* %23, %struct.i2c_client** %retval, align 8, !dbg !5617
  br label %return, !dbg !5617

return:                                           ; preds = %if.end17, %if.then13, %if.then
  %24 = load %struct.i2c_client*, %struct.i2c_client** %retval, align 8, !dbg !5618
  ret %struct.i2c_client* %24, !dbg !5618
}

; Function Attrs: noredzone
declare dso_local i64 @strscpy(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_module(i8* %name, ...) #0 !dbg !5619 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5623, metadata !DIExpression()), !dbg !5624
  ret i32 -38, !dbg !5625
}

; Function Attrs: noredzone
declare dso_local %struct.i2c_client* @i2c_new_client_device(%struct.i2c_adapter*, %struct.i2c_board_info*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @i2c_client_has_driver(%struct.i2c_client* %client) #0 !dbg !5626 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5629, metadata !DIExpression()), !dbg !5630
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5631
  %1 = bitcast %struct.i2c_client* %0 to i8*, !dbg !5631
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #9, !dbg !5632
  br i1 %call, label %land.end, label %land.rhs, !dbg !5633

land.rhs:                                         ; preds = %entry
  %2 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5634
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %2, i32 0, i32 4, !dbg !5635
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !5636
  %3 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5636
  %tobool = icmp ne %struct.device_driver* %3, null, !dbg !5633
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ], !dbg !5637
  ret i1 %4, !dbg !5638
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !5639 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !5643, metadata !DIExpression()), !dbg !5644
  ret i1 true, !dbg !5645
}

; Function Attrs: noredzone
declare dso_local void @i2c_unregister_device(%struct.i2c_client*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dvb_module_release(%struct.i2c_client* %client) #0 !dbg !5646 {
entry:
  %client.addr = alloca %struct.i2c_client*, align 8
  store %struct.i2c_client* %client, %struct.i2c_client** %client.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_client** %client.addr, metadata !5649, metadata !DIExpression()), !dbg !5650
  %0 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5651
  %tobool = icmp ne %struct.i2c_client* %0, null, !dbg !5651
  br i1 %tobool, label %if.end, label %if.then, !dbg !5653

if.then:                                          ; preds = %entry
  br label %return, !dbg !5654

if.end:                                           ; preds = %entry
  %1 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5655
  %dev = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %1, i32 0, i32 4, !dbg !5656
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !5657
  %2 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5657
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %2, i32 0, i32 2, !dbg !5658
  %3 = load %struct.module*, %struct.module** %owner, align 8, !dbg !5658
  call void @module_put(%struct.module* %3) #9, !dbg !5659
  %4 = load %struct.i2c_client*, %struct.i2c_client** %client.addr, align 8, !dbg !5660
  call void @i2c_unregister_device(%struct.i2c_client* %4) #9, !dbg !5661
  br label %return, !dbg !5662

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5662
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !5663 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !5666, metadata !DIExpression()), !dbg !5667
  ret void, !dbg !5668
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @exit_dvbdev() #5 section ".exit.text" !dbg !5669 {
entry:
  %0 = load %struct.class*, %struct.class** @dvb_class, align 8, !dbg !5670
  call void @class_destroy(%struct.class* %0) #9, !dbg !5671
  call void @cdev_del(%struct.cdev* @dvb_device_cdev) #9, !dbg !5672
  call void @unregister_chrdev_region(i32 222298112, i32 256) #9, !dbg !5673
  ret void, !dbg !5674
}

; Function Attrs: noredzone
declare dso_local void @class_destroy(%struct.class*) #2

; Function Attrs: noredzone
declare dso_local void @cdev_del(%struct.cdev*) #2

; Function Attrs: noredzone
declare dso_local void @unregister_chrdev_region(i32, i32) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @init_dvbdev() #5 section ".init.text" !dbg !4041 {
entry:
  %retval = alloca i32, align 4
  %retval1 = alloca i32, align 4
  %dev = alloca i32, align 4
  %tmp = alloca %struct.class*, align 8
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !5675, metadata !DIExpression()), !dbg !5676
  call void @llvm.dbg.declare(metadata i32* %dev, metadata !5677, metadata !DIExpression()), !dbg !5678
  store i32 222298112, i32* %dev, align 4, !dbg !5678
  %0 = load i32, i32* %dev, align 4, !dbg !5679
  %call = call i32 @register_chrdev_region(i32 %0, i32 256, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0)) #9, !dbg !5681
  store i32 %call, i32* %retval1, align 4, !dbg !5682
  %cmp = icmp ne i32 %call, 0, !dbg !5683
  br i1 %cmp, label %if.then, label %if.end, !dbg !5684

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i64 0, i64 0), i32 212) #13, !dbg !5685
  %1 = load i32, i32* %retval1, align 4, !dbg !5687
  store i32 %1, i32* %retval, align 4, !dbg !5688
  br label %return, !dbg !5688

if.end:                                           ; preds = %entry
  call void @cdev_init(%struct.cdev* @dvb_device_cdev, %struct.file_operations* bitcast ({ %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }* @dvb_device_fops to %struct.file_operations*)) #9, !dbg !5689
  %2 = load i32, i32* %dev, align 4, !dbg !5690
  %call3 = call i32 @cdev_add(%struct.cdev* @dvb_device_cdev, i32 %2, i32 256) #9, !dbg !5692
  store i32 %call3, i32* %retval1, align 4, !dbg !5693
  %cmp4 = icmp ne i32 %call3, 0, !dbg !5694
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !5695

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.22, i64 0, i64 0)) #13, !dbg !5696
  br label %error, !dbg !5698

if.end7:                                          ; preds = %if.end
  %call8 = call %struct.class* @__class_create(%struct.module* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), %struct.lock_class_key* @init_dvbdev.__key) #9, !dbg !5699
  store %struct.class* %call8, %struct.class** %tmp, align 8, !dbg !5699
  %3 = load %struct.class*, %struct.class** %tmp, align 8, !dbg !5699
  store %struct.class* %3, %struct.class** @dvb_class, align 8, !dbg !5701
  %4 = load %struct.class*, %struct.class** @dvb_class, align 8, !dbg !5702
  %5 = bitcast %struct.class* %4 to i8*, !dbg !5702
  %call9 = call zeroext i1 @IS_ERR(i8* %5) #9, !dbg !5704
  br i1 %call9, label %if.then10, label %if.end12, !dbg !5705

if.then10:                                        ; preds = %if.end7
  %6 = load %struct.class*, %struct.class** @dvb_class, align 8, !dbg !5706
  %7 = bitcast %struct.class* %6 to i8*, !dbg !5706
  %call11 = call i64 @PTR_ERR(i8* %7) #9, !dbg !5708
  %conv = trunc i64 %call11 to i32, !dbg !5708
  store i32 %conv, i32* %retval1, align 4, !dbg !5709
  br label %error, !dbg !5710

if.end12:                                         ; preds = %if.end7
  %8 = load %struct.class*, %struct.class** @dvb_class, align 8, !dbg !5711
  %dev_uevent = getelementptr inbounds %struct.class, %struct.class* %8, i32 0, i32 5, !dbg !5712
  store i32 (%struct.device*, %struct.kobj_uevent_env*)* @dvb_uevent, i32 (%struct.device*, %struct.kobj_uevent_env*)** %dev_uevent, align 8, !dbg !5713
  %9 = load %struct.class*, %struct.class** @dvb_class, align 8, !dbg !5714
  %devnode = getelementptr inbounds %struct.class, %struct.class* %9, i32 0, i32 6, !dbg !5715
  store i8* (%struct.device*, i16*)* @dvb_devnode, i8* (%struct.device*, i16*)** %devnode, align 8, !dbg !5716
  store i32 0, i32* %retval, align 4, !dbg !5717
  br label %return, !dbg !5717

error:                                            ; preds = %if.then10, %if.then5
  call void @llvm.dbg.label(metadata !5718), !dbg !5719
  call void @cdev_del(%struct.cdev* @dvb_device_cdev) #9, !dbg !5720
  %10 = load i32, i32* %dev, align 4, !dbg !5721
  call void @unregister_chrdev_region(i32 %10, i32 256) #9, !dbg !5722
  %11 = load i32, i32* %retval1, align 4, !dbg !5723
  store i32 %11, i32* %retval, align 4, !dbg !5724
  br label %return, !dbg !5724

return:                                           ; preds = %error, %if.end12, %if.then
  %12 = load i32, i32* %retval, align 4, !dbg !5725
  ret i32 %12, !dbg !5725
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5726 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5729, metadata !DIExpression()), !dbg !5730
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5731, metadata !DIExpression()), !dbg !5732
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5733, metadata !DIExpression()), !dbg !5734
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5735
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5737
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5738
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #9, !dbg !5739
  br i1 %call, label %if.end, label %if.then, !dbg !5740

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5741

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5742
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5743
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5744
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5745
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5746
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5747
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5748
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5749
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5750
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5751
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5752
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5753
  br label %do.body, !dbg !5754

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5755

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5757

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5755

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5759
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5759
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5759
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5759
  br label %do.end7, !dbg !5759

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5755

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5761
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5762 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5765, metadata !DIExpression()), !dbg !5766
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5767, metadata !DIExpression()), !dbg !5768
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5769, metadata !DIExpression()), !dbg !5770
  ret i1 true, !dbg !5771
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5772 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5773, metadata !DIExpression()), !dbg !5774
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5775
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #9, !dbg !5777
  br i1 %call, label %if.end, label %if.then, !dbg !5778

if.then:                                          ; preds = %entry
  br label %return, !dbg !5779

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5780
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5781
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5781
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5782
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5783
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5783
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #9, !dbg !5784
  br label %return, !dbg !5785

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5785
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5786 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5789, metadata !DIExpression()), !dbg !5790
  ret i1 true, !dbg !5791
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5792 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5793, metadata !DIExpression()), !dbg !5794
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5795, metadata !DIExpression()), !dbg !5796
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5797
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5798
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5799
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5800
  br label %do.body, !dbg !5801

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5802

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5804

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5802

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5806
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5806
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5806
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5806
  br label %do.end5, !dbg !5806

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5802

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5808
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #8 !dbg !5809 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5813, metadata !DIExpression()), !dbg !5818
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5820, metadata !DIExpression()), !dbg !5821
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5822, metadata !DIExpression()), !dbg !5823
  %0 = load i64, i64* %size.addr, align 8, !dbg !5824
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5826
  br i1 %1, label %if.then, label %if.end447, !dbg !5827

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5828
  %tobool = icmp ne i64 %2, 0, !dbg !5828
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5831

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5832
  br label %return, !dbg !5832

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5833
  %cmp = icmp ult i64 %3, 4096, !dbg !5835
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5836

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5837
  br label %return, !dbg !5837

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub = sub i64 %4, 1, !dbg !5838
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5838
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5838

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub4 = sub i64 %6, 1, !dbg !5838
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5838
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5838

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub6 = sub i64 %8, 1, !dbg !5838
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5838
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5838

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5838

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub9 = sub i64 %9, 1, !dbg !5838
  %and = and i64 %sub9, -9223372036854775808, !dbg !5838
  %tobool10 = icmp ne i64 %and, 0, !dbg !5838
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5838

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5838

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub13 = sub i64 %10, 1, !dbg !5838
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5838
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5838
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5838

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5838

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub18 = sub i64 %11, 1, !dbg !5838
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5838
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5838
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5838

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5838

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub23 = sub i64 %12, 1, !dbg !5838
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5838
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5838
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5838

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5838

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub28 = sub i64 %13, 1, !dbg !5838
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5838
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5838
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5838

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5838

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub33 = sub i64 %14, 1, !dbg !5838
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5838
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5838
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5838

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5838

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub38 = sub i64 %15, 1, !dbg !5838
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5838
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5838
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5838

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5838

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub43 = sub i64 %16, 1, !dbg !5838
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5838
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5838
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5838

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5838

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub48 = sub i64 %17, 1, !dbg !5838
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5838
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5838
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5838

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5838

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub53 = sub i64 %18, 1, !dbg !5838
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5838
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5838
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5838

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5838

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub58 = sub i64 %19, 1, !dbg !5838
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5838
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5838
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5838

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5838

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub63 = sub i64 %20, 1, !dbg !5838
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5838
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5838
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5838

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5838

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub68 = sub i64 %21, 1, !dbg !5838
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5838
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5838
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5838

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5838

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub73 = sub i64 %22, 1, !dbg !5838
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5838
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5838
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5838

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5838

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub78 = sub i64 %23, 1, !dbg !5838
  %and79 = and i64 %sub78, 562949953421312, !dbg !5838
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5838
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5838

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5838

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub83 = sub i64 %24, 1, !dbg !5838
  %and84 = and i64 %sub83, 281474976710656, !dbg !5838
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5838
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5838

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5838

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub88 = sub i64 %25, 1, !dbg !5838
  %and89 = and i64 %sub88, 140737488355328, !dbg !5838
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5838
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5838

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5838

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub93 = sub i64 %26, 1, !dbg !5838
  %and94 = and i64 %sub93, 70368744177664, !dbg !5838
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5838
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5838

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5838

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub98 = sub i64 %27, 1, !dbg !5838
  %and99 = and i64 %sub98, 35184372088832, !dbg !5838
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5838
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5838

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5838

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub103 = sub i64 %28, 1, !dbg !5838
  %and104 = and i64 %sub103, 17592186044416, !dbg !5838
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5838
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5838

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5838

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub108 = sub i64 %29, 1, !dbg !5838
  %and109 = and i64 %sub108, 8796093022208, !dbg !5838
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5838
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5838

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5838

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub113 = sub i64 %30, 1, !dbg !5838
  %and114 = and i64 %sub113, 4398046511104, !dbg !5838
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5838
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5838

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5838

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub118 = sub i64 %31, 1, !dbg !5838
  %and119 = and i64 %sub118, 2199023255552, !dbg !5838
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5838
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5838

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5838

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub123 = sub i64 %32, 1, !dbg !5838
  %and124 = and i64 %sub123, 1099511627776, !dbg !5838
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5838
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5838

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5838

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub128 = sub i64 %33, 1, !dbg !5838
  %and129 = and i64 %sub128, 549755813888, !dbg !5838
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5838
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5838

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5838

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub133 = sub i64 %34, 1, !dbg !5838
  %and134 = and i64 %sub133, 274877906944, !dbg !5838
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5838
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5838

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5838

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub138 = sub i64 %35, 1, !dbg !5838
  %and139 = and i64 %sub138, 137438953472, !dbg !5838
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5838
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5838

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5838

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub143 = sub i64 %36, 1, !dbg !5838
  %and144 = and i64 %sub143, 68719476736, !dbg !5838
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5838
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5838

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5838

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub148 = sub i64 %37, 1, !dbg !5838
  %and149 = and i64 %sub148, 34359738368, !dbg !5838
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5838
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5838

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5838

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub153 = sub i64 %38, 1, !dbg !5838
  %and154 = and i64 %sub153, 17179869184, !dbg !5838
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5838
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5838

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5838

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub158 = sub i64 %39, 1, !dbg !5838
  %and159 = and i64 %sub158, 8589934592, !dbg !5838
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5838
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5838

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5838

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub163 = sub i64 %40, 1, !dbg !5838
  %and164 = and i64 %sub163, 4294967296, !dbg !5838
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5838
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5838

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5838

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub168 = sub i64 %41, 1, !dbg !5838
  %and169 = and i64 %sub168, 2147483648, !dbg !5838
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5838
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5838

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5838

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub173 = sub i64 %42, 1, !dbg !5838
  %and174 = and i64 %sub173, 1073741824, !dbg !5838
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5838
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5838

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5838

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub178 = sub i64 %43, 1, !dbg !5838
  %and179 = and i64 %sub178, 536870912, !dbg !5838
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5838
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5838

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5838

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub183 = sub i64 %44, 1, !dbg !5838
  %and184 = and i64 %sub183, 268435456, !dbg !5838
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5838
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5838

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5838

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub188 = sub i64 %45, 1, !dbg !5838
  %and189 = and i64 %sub188, 134217728, !dbg !5838
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5838
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5838

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5838

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub193 = sub i64 %46, 1, !dbg !5838
  %and194 = and i64 %sub193, 67108864, !dbg !5838
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5838
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5838

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5838

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub198 = sub i64 %47, 1, !dbg !5838
  %and199 = and i64 %sub198, 33554432, !dbg !5838
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5838
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5838

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5838

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub203 = sub i64 %48, 1, !dbg !5838
  %and204 = and i64 %sub203, 16777216, !dbg !5838
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5838
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5838

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5838

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub208 = sub i64 %49, 1, !dbg !5838
  %and209 = and i64 %sub208, 8388608, !dbg !5838
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5838
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5838

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5838

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub213 = sub i64 %50, 1, !dbg !5838
  %and214 = and i64 %sub213, 4194304, !dbg !5838
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5838
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5838

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5838

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub218 = sub i64 %51, 1, !dbg !5838
  %and219 = and i64 %sub218, 2097152, !dbg !5838
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5838
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5838

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5838

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub223 = sub i64 %52, 1, !dbg !5838
  %and224 = and i64 %sub223, 1048576, !dbg !5838
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5838
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5838

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5838

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub228 = sub i64 %53, 1, !dbg !5838
  %and229 = and i64 %sub228, 524288, !dbg !5838
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5838
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5838

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5838

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub233 = sub i64 %54, 1, !dbg !5838
  %and234 = and i64 %sub233, 262144, !dbg !5838
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5838
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5838

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5838

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub238 = sub i64 %55, 1, !dbg !5838
  %and239 = and i64 %sub238, 131072, !dbg !5838
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5838
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5838

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5838

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub243 = sub i64 %56, 1, !dbg !5838
  %and244 = and i64 %sub243, 65536, !dbg !5838
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5838
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5838

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5838

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub248 = sub i64 %57, 1, !dbg !5838
  %and249 = and i64 %sub248, 32768, !dbg !5838
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5838
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5838

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5838

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub253 = sub i64 %58, 1, !dbg !5838
  %and254 = and i64 %sub253, 16384, !dbg !5838
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5838
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5838

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5838

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub258 = sub i64 %59, 1, !dbg !5838
  %and259 = and i64 %sub258, 8192, !dbg !5838
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5838
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5838

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5838

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub263 = sub i64 %60, 1, !dbg !5838
  %and264 = and i64 %sub263, 4096, !dbg !5838
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5838
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5838

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5838

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub268 = sub i64 %61, 1, !dbg !5838
  %and269 = and i64 %sub268, 2048, !dbg !5838
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5838
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5838

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5838

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub273 = sub i64 %62, 1, !dbg !5838
  %and274 = and i64 %sub273, 1024, !dbg !5838
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5838
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5838

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5838

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub278 = sub i64 %63, 1, !dbg !5838
  %and279 = and i64 %sub278, 512, !dbg !5838
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5838
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5838

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5838

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub283 = sub i64 %64, 1, !dbg !5838
  %and284 = and i64 %sub283, 256, !dbg !5838
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5838
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5838

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5838

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub288 = sub i64 %65, 1, !dbg !5838
  %and289 = and i64 %sub288, 128, !dbg !5838
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5838
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5838

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5838

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub293 = sub i64 %66, 1, !dbg !5838
  %and294 = and i64 %sub293, 64, !dbg !5838
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5838
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5838

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5838

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub298 = sub i64 %67, 1, !dbg !5838
  %and299 = and i64 %sub298, 32, !dbg !5838
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5838
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5838

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5838

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub303 = sub i64 %68, 1, !dbg !5838
  %and304 = and i64 %sub303, 16, !dbg !5838
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5838
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5838

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5838

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub308 = sub i64 %69, 1, !dbg !5838
  %and309 = and i64 %sub308, 8, !dbg !5838
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5838
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5838

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5838

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub313 = sub i64 %70, 1, !dbg !5838
  %and314 = and i64 %sub313, 4, !dbg !5838
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5838
  %71 = zext i1 %tobool315 to i64, !dbg !5838
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5838
  br label %cond.end, !dbg !5838

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5838
  br label %cond.end317, !dbg !5838

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5838
  br label %cond.end319, !dbg !5838

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5838
  br label %cond.end321, !dbg !5838

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5838
  br label %cond.end323, !dbg !5838

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5838
  br label %cond.end325, !dbg !5838

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5838
  br label %cond.end327, !dbg !5838

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5838
  br label %cond.end329, !dbg !5838

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5838
  br label %cond.end331, !dbg !5838

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5838
  br label %cond.end333, !dbg !5838

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5838
  br label %cond.end335, !dbg !5838

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5838
  br label %cond.end337, !dbg !5838

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5838
  br label %cond.end339, !dbg !5838

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5838
  br label %cond.end341, !dbg !5838

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5838
  br label %cond.end343, !dbg !5838

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5838
  br label %cond.end345, !dbg !5838

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5838
  br label %cond.end347, !dbg !5838

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5838
  br label %cond.end349, !dbg !5838

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5838
  br label %cond.end351, !dbg !5838

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5838
  br label %cond.end353, !dbg !5838

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5838
  br label %cond.end355, !dbg !5838

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5838
  br label %cond.end357, !dbg !5838

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5838
  br label %cond.end359, !dbg !5838

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5838
  br label %cond.end361, !dbg !5838

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5838
  br label %cond.end363, !dbg !5838

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5838
  br label %cond.end365, !dbg !5838

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5838
  br label %cond.end367, !dbg !5838

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5838
  br label %cond.end369, !dbg !5838

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5838
  br label %cond.end371, !dbg !5838

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5838
  br label %cond.end373, !dbg !5838

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5838
  br label %cond.end375, !dbg !5838

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5838
  br label %cond.end377, !dbg !5838

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5838
  br label %cond.end379, !dbg !5838

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5838
  br label %cond.end381, !dbg !5838

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5838
  br label %cond.end383, !dbg !5838

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5838
  br label %cond.end385, !dbg !5838

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5838
  br label %cond.end387, !dbg !5838

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5838
  br label %cond.end389, !dbg !5838

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5838
  br label %cond.end391, !dbg !5838

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5838
  br label %cond.end393, !dbg !5838

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5838
  br label %cond.end395, !dbg !5838

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5838
  br label %cond.end397, !dbg !5838

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5838
  br label %cond.end399, !dbg !5838

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5838
  br label %cond.end401, !dbg !5838

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5838
  br label %cond.end403, !dbg !5838

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5838
  br label %cond.end405, !dbg !5838

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5838
  br label %cond.end407, !dbg !5838

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5838
  br label %cond.end409, !dbg !5838

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5838
  br label %cond.end411, !dbg !5838

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5838
  br label %cond.end413, !dbg !5838

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5838
  br label %cond.end415, !dbg !5838

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5838
  br label %cond.end417, !dbg !5838

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5838
  br label %cond.end419, !dbg !5838

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5838
  br label %cond.end421, !dbg !5838

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5838
  br label %cond.end423, !dbg !5838

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5838
  br label %cond.end425, !dbg !5838

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5838
  br label %cond.end427, !dbg !5838

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5838
  br label %cond.end429, !dbg !5838

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5838
  br label %cond.end431, !dbg !5838

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5838
  br label %cond.end433, !dbg !5838

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5838
  br label %cond.end435, !dbg !5838

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5838
  br label %cond.end437, !dbg !5838

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5838
  br label %cond.end440, !dbg !5838

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5838

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5838
  br label %cond.end444, !dbg !5838

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5838
  %sub443 = sub i64 %72, 1, !dbg !5838
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5838
  br label %cond.end444, !dbg !5838

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5838
  %sub446 = sub i32 %cond445, 12, !dbg !5839
  %add = add i32 %sub446, 1, !dbg !5840
  store i32 %add, i32* %retval, align 4, !dbg !5841
  br label %return, !dbg !5841

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5842
  %dec = add i64 %73, -1, !dbg !5842
  store i64 %dec, i64* %size.addr, align 8, !dbg !5842
  %74 = load i64, i64* %size.addr, align 8, !dbg !5843
  %shr = lshr i64 %74, 12, !dbg !5843
  store i64 %shr, i64* %size.addr, align 8, !dbg !5843
  %75 = load i64, i64* %size.addr, align 8, !dbg !5844
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5821
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5845
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5846
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5845, !srcloc !5847
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5845
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5848
  %add.i = add i32 %79, 1, !dbg !5849
  store i32 %add.i, i32* %retval, align 4, !dbg !5850
  br label %return, !dbg !5850

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5851
  ret i32 %80, !dbg !5851
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #8 !dbg !5852 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5813, metadata !DIExpression()), !dbg !5856
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5820, metadata !DIExpression()), !dbg !5858
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5859, metadata !DIExpression()), !dbg !5860
  %0 = load i64, i64* %n.addr, align 8, !dbg !5861
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5858
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5862
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5863
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5862, !srcloc !5847
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5862
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5864
  %add.i = add i32 %4, 1, !dbg !5865
  %sub = sub i32 %add.i, 1, !dbg !5866
  ret i32 %sub, !dbg !5867
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5868 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5872, metadata !DIExpression()), !dbg !5873
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5874, metadata !DIExpression()), !dbg !5875
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5876, metadata !DIExpression()), !dbg !5877
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5878, metadata !DIExpression()), !dbg !5879
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5880
  ret i8* %0, !dbg !5881
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_from_user(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #0 !dbg !5882 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5885, metadata !DIExpression()), !dbg !5886
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5887, metadata !DIExpression()), !dbg !5888
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5889, metadata !DIExpression()), !dbg !5891
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5891
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !5892
  %tobool = icmp ne i32 %0, 0, !dbg !5892
  %lnot = xor i1 %tobool, true, !dbg !5892
  %lnot1 = xor i1 %lnot, true, !dbg !5892
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5892
  %conv = sext i32 %lnot.ext to i64, !dbg !5892
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5892
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5891

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5892

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !5894

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !5896

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !5894
  %2 = load i64, i64* %count.addr, align 8, !dbg !5894
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.19, i64 0, i64 0), i32 %1, i64 %2) #9, !dbg !5894
  br label %do.body4, !dbg !5894

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !5898

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5900

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !5898

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 134, i32 2313, i64 12) #10, !dbg !5902, !srcloc !5904
  br label %do.end8, !dbg !5902

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #10, !dbg !5905, !srcloc !5907
  br label %do.body9, !dbg !5898

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5908

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !5898

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !5894

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5910

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5894

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !5894

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5891
  %tobool15 = icmp ne i32 %3, 0, !dbg !5891
  %lnot16 = xor i1 %tobool15, true, !dbg !5891
  %lnot18 = xor i1 %lnot16, true, !dbg !5891
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5891
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5891
  store i64 %conv20, i64* %tmp, align 8, !dbg !5892
  %4 = load i64, i64* %tmp, align 8, !dbg !5891
  ret void, !dbg !5912
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #2

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #0 !dbg !5913 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5916, metadata !DIExpression()), !dbg !5917
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5918, metadata !DIExpression()), !dbg !5919
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !5920, metadata !DIExpression()), !dbg !5921
  ret void, !dbg !5922
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !5923 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5924, metadata !DIExpression()), !dbg !5925
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !5926
  %tobool = icmp ne i8* %0, null, !dbg !5926
  %lnot = xor i1 %tobool, true, !dbg !5926
  %lnot1 = xor i1 %lnot, true, !dbg !5926
  %lnot2 = xor i1 %lnot1, true, !dbg !5926
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5926
  %conv = sext i32 %lnot.ext to i64, !dbg !5926
  %tobool3 = icmp ne i64 %conv, 0, !dbg !5926
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !5927

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !5928
  %2 = ptrtoint i8* %1 to i64, !dbg !5928
  %3 = inttoptr i64 %2 to i8*, !dbg !5928
  %4 = ptrtoint i8* %3 to i64, !dbg !5928
  %cmp = icmp uge i64 %4, -4095, !dbg !5928
  %lnot5 = xor i1 %cmp, true, !dbg !5928
  %lnot7 = xor i1 %lnot5, true, !dbg !5928
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5928
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !5928
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !5927
  br label %lor.end, !dbg !5927

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !5929
}

; Function Attrs: noredzone
declare dso_local i32 @register_chrdev_region(i32, i32, i8*) #2

; Function Attrs: noredzone
declare dso_local void @cdev_init(%struct.cdev*, %struct.file_operations*) #2

; Function Attrs: noredzone
declare dso_local i32 @cdev_add(%struct.cdev*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.class* @__class_create(%struct.module*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dvb_uevent(%struct.device* %dev, %struct.kobj_uevent_env* %env) #0 !dbg !5930 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  %dvbdev = alloca %struct.dvb_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5931, metadata !DIExpression()), !dbg !5932
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !5933, metadata !DIExpression()), !dbg !5934
  call void @llvm.dbg.declare(metadata %struct.dvb_device** %dvbdev, metadata !5935, metadata !DIExpression()), !dbg !5936
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5937
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #9, !dbg !5938
  %1 = bitcast i8* %call to %struct.dvb_device*, !dbg !5938
  store %struct.dvb_device* %1, %struct.dvb_device** %dvbdev, align 8, !dbg !5936
  %2 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !5939
  %3 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !5940
  %adapter = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %3, i32 0, i32 2, !dbg !5941
  %4 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adapter, align 8, !dbg !5941
  %num = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %4, i32 0, i32 0, !dbg !5942
  %5 = load i32, i32* %num, align 8, !dbg !5942
  %call1 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 %5) #9, !dbg !5943
  %6 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !5944
  %7 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !5945
  %type = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %7, i32 0, i32 3, !dbg !5946
  %8 = load i32, i32* %type, align 8, !dbg !5946
  %idxprom = zext i32 %8 to i64, !dbg !5947
  %arrayidx = getelementptr [9 x i8*], [9 x i8*]* @dnames, i64 0, i64 %idxprom, !dbg !5947
  %9 = load i8*, i8** %arrayidx, align 8, !dbg !5947
  %call2 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i8* %9) #9, !dbg !5948
  %10 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !5949
  %11 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !5950
  %id = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %11, i32 0, i32 5, !dbg !5951
  %12 = load i32, i32* %id, align 8, !dbg !5951
  %call3 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i32 %12) #9, !dbg !5952
  ret i32 0, !dbg !5953
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dvb_devnode(%struct.device* %dev, i16* %mode) #0 !dbg !5954 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %mode.addr = alloca i16*, align 8
  %dvbdev = alloca %struct.dvb_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !5955, metadata !DIExpression()), !dbg !5956
  store i16* %mode, i16** %mode.addr, align 8
  call void @llvm.dbg.declare(metadata i16** %mode.addr, metadata !5957, metadata !DIExpression()), !dbg !5958
  call void @llvm.dbg.declare(metadata %struct.dvb_device** %dvbdev, metadata !5959, metadata !DIExpression()), !dbg !5960
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !5961
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #9, !dbg !5962
  %1 = bitcast i8* %call to %struct.dvb_device*, !dbg !5962
  store %struct.dvb_device* %1, %struct.dvb_device** %dvbdev, align 8, !dbg !5960
  %2 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !5963
  %adapter = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %2, i32 0, i32 2, !dbg !5964
  %3 = load %struct.dvb_adapter*, %struct.dvb_adapter** %adapter, align 8, !dbg !5964
  %num = getelementptr inbounds %struct.dvb_adapter, %struct.dvb_adapter* %3, i32 0, i32 0, !dbg !5965
  %4 = load i32, i32* %num, align 8, !dbg !5965
  %5 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !5966
  %type = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %5, i32 0, i32 3, !dbg !5967
  %6 = load i32, i32* %type, align 8, !dbg !5967
  %idxprom = zext i32 %6 to i64, !dbg !5968
  %arrayidx = getelementptr [9 x i8*], [9 x i8*]* @dnames, i64 0, i64 %idxprom, !dbg !5968
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !5968
  %8 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !5969
  %id = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %8, i32 0, i32 5, !dbg !5970
  %9 = load i32, i32* %id, align 8, !dbg !5970
  %call1 = call noalias i8* (i32, i8*, ...) @kasprintf(i32 3264, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0), i32 %4, i8* %7, i32 %9) #9, !dbg !5971
  ret i8* %call1, !dbg !5972
}

; Function Attrs: noredzone
declare dso_local i64 @noop_llseek(%struct.file*, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dvb_device_open(%struct.inode* %inode, %struct.file* %file) #0 !dbg !5973 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %dvbdev = alloca %struct.dvb_device*, align 8
  %err = alloca i32, align 4
  %new_fops = alloca %struct.file_operations*, align 8
  %__file = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5974, metadata !DIExpression()), !dbg !5975
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5976, metadata !DIExpression()), !dbg !5977
  call void @llvm.dbg.declare(metadata %struct.dvb_device** %dvbdev, metadata !5978, metadata !DIExpression()), !dbg !5979
  call void @mutex_lock(%struct.mutex* @dvbdev_mutex) #9, !dbg !5980
  call void @down_read(%struct.rw_semaphore* @minor_rwsem) #9, !dbg !5981
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !5982
  %call = call i32 @iminor(%struct.inode* %0) #9, !dbg !5983
  %idxprom = zext i32 %call to i64, !dbg !5984
  %arrayidx = getelementptr [256 x %struct.dvb_device*], [256 x %struct.dvb_device*]* @dvb_minors, i64 0, i64 %idxprom, !dbg !5984
  %1 = load %struct.dvb_device*, %struct.dvb_device** %arrayidx, align 8, !dbg !5984
  store %struct.dvb_device* %1, %struct.dvb_device** %dvbdev, align 8, !dbg !5985
  %2 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !5986
  %tobool = icmp ne %struct.dvb_device* %2, null, !dbg !5986
  br i1 %tobool, label %land.lhs.true, label %if.end43, !dbg !5988

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !5989
  %fops = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %3, i32 0, i32 1, !dbg !5990
  %4 = load %struct.file_operations*, %struct.file_operations** %fops, align 8, !dbg !5990
  %tobool1 = icmp ne %struct.file_operations* %4, null, !dbg !5989
  br i1 %tobool1, label %if.then, label %if.end43, !dbg !5991

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5992, metadata !DIExpression()), !dbg !5994
  store i32 0, i32* %err, align 4, !dbg !5994
  call void @llvm.dbg.declare(metadata %struct.file_operations** %new_fops, metadata !5995, metadata !DIExpression()), !dbg !5996
  %5 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !5997
  %fops2 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %5, i32 0, i32 1, !dbg !5997
  %6 = load %struct.file_operations*, %struct.file_operations** %fops2, align 8, !dbg !5997
  %tobool3 = icmp ne %struct.file_operations* %6, null, !dbg !5997
  br i1 %tobool3, label %land.lhs.true4, label %cond.false, !dbg !5997

land.lhs.true4:                                   ; preds = %if.then
  %7 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !5997
  %fops5 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %7, i32 0, i32 1, !dbg !5997
  %8 = load %struct.file_operations*, %struct.file_operations** %fops5, align 8, !dbg !5997
  %owner = getelementptr inbounds %struct.file_operations, %struct.file_operations* %8, i32 0, i32 0, !dbg !5997
  %9 = load %struct.module*, %struct.module** %owner, align 8, !dbg !5997
  %call6 = call zeroext i1 @try_module_get(%struct.module* %9) #9, !dbg !5997
  br i1 %call6, label %cond.true, label %cond.false, !dbg !5997

cond.true:                                        ; preds = %land.lhs.true4
  %10 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !5997
  %fops7 = getelementptr inbounds %struct.dvb_device, %struct.dvb_device* %10, i32 0, i32 1, !dbg !5997
  %11 = load %struct.file_operations*, %struct.file_operations** %fops7, align 8, !dbg !5997
  br label %cond.end, !dbg !5997

cond.false:                                       ; preds = %land.lhs.true4, %if.then
  br label %cond.end, !dbg !5997

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.file_operations* [ %11, %cond.true ], [ null, %cond.false ], !dbg !5997
  store %struct.file_operations* %cond, %struct.file_operations** %new_fops, align 8, !dbg !5998
  %12 = load %struct.file_operations*, %struct.file_operations** %new_fops, align 8, !dbg !5999
  %tobool8 = icmp ne %struct.file_operations* %12, null, !dbg !5999
  br i1 %tobool8, label %if.end, label %if.then9, !dbg !6001

if.then9:                                         ; preds = %cond.end
  br label %fail, !dbg !6002

if.end:                                           ; preds = %cond.end
  %13 = load %struct.dvb_device*, %struct.dvb_device** %dvbdev, align 8, !dbg !6003
  %14 = bitcast %struct.dvb_device* %13 to i8*, !dbg !6003
  %15 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6004
  %private_data = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 15, !dbg !6005
  store i8* %14, i8** %private_data, align 8, !dbg !6006
  br label %do.body, !dbg !6007

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.file** %__file, metadata !6008, metadata !DIExpression()), !dbg !6010
  %16 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6010
  store %struct.file* %16, %struct.file** %__file, align 8, !dbg !6010
  br label %do.body10, !dbg !6010

do.body10:                                        ; preds = %do.body
  %17 = load %struct.file*, %struct.file** %__file, align 8, !dbg !6011
  %f_op = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 3, !dbg !6011
  %18 = load %struct.file_operations*, %struct.file_operations** %f_op, align 8, !dbg !6011
  %tobool11 = icmp ne %struct.file_operations* %18, null, !dbg !6011
  br i1 %tobool11, label %if.then12, label %if.end15, !dbg !6014

if.then12:                                        ; preds = %do.body10
  %19 = load %struct.file*, %struct.file** %__file, align 8, !dbg !6011
  %f_op13 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 3, !dbg !6011
  %20 = load %struct.file_operations*, %struct.file_operations** %f_op13, align 8, !dbg !6011
  %owner14 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %20, i32 0, i32 0, !dbg !6011
  %21 = load %struct.module*, %struct.module** %owner14, align 8, !dbg !6011
  call void @module_put(%struct.module* %21) #9, !dbg !6011
  br label %if.end15, !dbg !6011

if.end15:                                         ; preds = %if.then12, %do.body10
  br label %do.end, !dbg !6014

do.end:                                           ; preds = %if.end15
  br label %do.body16, !dbg !6010

do.body16:                                        ; preds = %do.end
  %22 = load %struct.file_operations*, %struct.file_operations** %new_fops, align 8, !dbg !6015
  %23 = load %struct.file*, %struct.file** %__file, align 8, !dbg !6015
  %f_op17 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 3, !dbg !6015
  store %struct.file_operations* %22, %struct.file_operations** %f_op17, align 8, !dbg !6015
  %tobool18 = icmp ne %struct.file_operations* %22, null, !dbg !6015
  %lnot = xor i1 %tobool18, true, !dbg !6015
  %lnot19 = xor i1 %lnot, true, !dbg !6015
  %lnot20 = xor i1 %lnot19, true, !dbg !6015
  %lnot.ext = zext i1 %lnot20 to i32, !dbg !6015
  %conv = sext i32 %lnot.ext to i64, !dbg !6015
  %tobool21 = icmp ne i64 %conv, 0, !dbg !6015
  br i1 %tobool21, label %if.then22, label %if.end31, !dbg !6018

if.then22:                                        ; preds = %do.body16
  br label %do.body23, !dbg !6015

do.body23:                                        ; preds = %if.then22
  br label %do.body24, !dbg !6019

do.body24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !6021

do.end25:                                         ; preds = %do.body24
  br label %do.body26, !dbg !6019

do.body26:                                        ; preds = %do.end25
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i32 111, i32 0, i64 12) #10, !dbg !6023, !srcloc !6025
  br label %do.end27, !dbg !6023

do.end27:                                         ; preds = %do.body26
  br label %do.body28, !dbg !6019

do.body28:                                        ; preds = %do.end27
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 252) #10, !dbg !6026, !srcloc !6029
  unreachable, !dbg !6030

do.end29:                                         ; No predecessors!
  br label %do.end30, !dbg !6019

do.end30:                                         ; preds = %do.end29
  br label %if.end31, !dbg !6019

if.end31:                                         ; preds = %do.end30, %do.body16
  br label %do.end32, !dbg !6018

do.end32:                                         ; preds = %if.end31
  br label %do.end33, !dbg !6010

do.end33:                                         ; preds = %do.end32
  %24 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6031
  %f_op34 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 3, !dbg !6033
  %25 = load %struct.file_operations*, %struct.file_operations** %f_op34, align 8, !dbg !6033
  %open = getelementptr inbounds %struct.file_operations, %struct.file_operations* %25, i32 0, i32 14, !dbg !6034
  %open35 = bitcast {}** %open to i32 (%struct.inode*, %struct.file*)**, !dbg !6034
  %26 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %open35, align 8, !dbg !6034
  %tobool36 = icmp ne i32 (%struct.inode*, %struct.file*)* %26, null, !dbg !6031
  br i1 %tobool36, label %if.then37, label %if.end42, !dbg !6035

if.then37:                                        ; preds = %do.end33
  %27 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6036
  %f_op38 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 3, !dbg !6037
  %28 = load %struct.file_operations*, %struct.file_operations** %f_op38, align 8, !dbg !6037
  %open39 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %28, i32 0, i32 14, !dbg !6038
  %open40 = bitcast {}** %open39 to i32 (%struct.inode*, %struct.file*)**, !dbg !6038
  %29 = load i32 (%struct.inode*, %struct.file*)*, i32 (%struct.inode*, %struct.file*)** %open40, align 8, !dbg !6038
  %30 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !6039
  %31 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !6040
  %call41 = call i32 %29(%struct.inode* %30, %struct.file* %31) #9, !dbg !6036
  store i32 %call41, i32* %err, align 4, !dbg !6041
  br label %if.end42, !dbg !6042

if.end42:                                         ; preds = %if.then37, %do.end33
  call void @up_read(%struct.rw_semaphore* @minor_rwsem) #9, !dbg !6043
  call void @mutex_unlock(%struct.mutex* @dvbdev_mutex) #9, !dbg !6044
  %32 = load i32, i32* %err, align 4, !dbg !6045
  store i32 %32, i32* %retval, align 4, !dbg !6046
  br label %return, !dbg !6046

if.end43:                                         ; preds = %land.lhs.true, %entry
  br label %fail, !dbg !5990

fail:                                             ; preds = %if.end43, %if.then9
  call void @llvm.dbg.label(metadata !6047), !dbg !6048
  call void @up_read(%struct.rw_semaphore* @minor_rwsem) #9, !dbg !6049
  call void @mutex_unlock(%struct.mutex* @dvbdev_mutex) #9, !dbg !6050
  store i32 -19, i32* %retval, align 4, !dbg !6051
  br label %return, !dbg !6051

return:                                           ; preds = %fail, %if.end42
  %33 = load i32, i32* %retval, align 4, !dbg !6052
  ret i32 %33, !dbg !6052
}

; Function Attrs: noredzone
declare dso_local void @down_read(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @iminor(%struct.inode* %inode) #0 !dbg !6053 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !6056, metadata !DIExpression()), !dbg !6057
  %0 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !6058
  %i_rdev = getelementptr inbounds %struct.inode, %struct.inode* %0, i32 0, i32 10, !dbg !6058
  %1 = load i32, i32* %i_rdev, align 4, !dbg !6058
  %and = and i32 %1, 1048575, !dbg !6058
  ret i32 %and, !dbg !6059
}

; Function Attrs: noredzone
declare dso_local void @up_read(%struct.rw_semaphore*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !6060 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !6063, metadata !DIExpression()), !dbg !6064
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !6065
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !6066
  %1 = load i8*, i8** %driver_data, align 8, !dbg !6066
  ret i8* %1, !dbg !6067
}

; Function Attrs: noredzone
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kasprintf(i32, i8*, ...) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind willreturn }
attributes #8 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4051, !4052, !4053, !4054}
!llvm.ident = !{!4055}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_dvbdev_debug", scope: !2, file: !3, line: 42, type: !4048, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !140, globals: !3916, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-core/dvbdev.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !32, !40, !47, !54, !60, !66, !72, !79, !87, !93, !107, !119, !128, !133}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !12, line: 16, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!16 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !18, line: 546, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!21 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!22 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !24, line: 296, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !27, !28, !29, !30, !31}
!26 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!27 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!28 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!29 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!30 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!31 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !33, line: 9, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!34 = !{!35, !36, !37, !38, !39}
!35 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!36 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!37 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!38 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!39 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !41, line: 15, baseType: !7, size: 32, elements: !42)
!41 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!42 = !{!43, !44, !45, !46}
!43 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!44 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!45 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!46 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !48, line: 59, baseType: !7, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!49 = !{!50, !51, !52, !53}
!50 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!51 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!52 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!53 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !55, line: 54, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!56 = !{!57, !58, !59}
!57 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!59 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dvb_device_type", file: !108, line: 57, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/media/dvbdev.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118}
!110 = !DIEnumerator(name: "DVB_DEVICE_SEC", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "DVB_DEVICE_FRONTEND", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "DVB_DEVICE_DEMUX", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "DVB_DEVICE_DVR", value: 3, isUnsigned: true)
!114 = !DIEnumerator(name: "DVB_DEVICE_CA", value: 4, isUnsigned: true)
!115 = !DIEnumerator(name: "DVB_DEVICE_NET", value: 5, isUnsigned: true)
!116 = !DIEnumerator(name: "DVB_DEVICE_VIDEO", value: 6, isUnsigned: true)
!117 = !DIEnumerator(name: "DVB_DEVICE_AUDIO", value: 7, isUnsigned: true)
!118 = !DIEnumerator(name: "DVB_DEVICE_OSD", value: 8, isUnsigned: true)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !120, line: 19, baseType: !7, size: 32, elements: !121)
!120 = !DIFile(filename: "./include/linux/property.h", directory: "/home/lizy2001/genbc/linux")
!121 = !{!122, !123, !124, !125, !126, !127}
!122 = !DIEnumerator(name: "DEV_PROP_U8", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "DEV_PROP_U16", value: 1, isUnsigned: true)
!124 = !DIEnumerator(name: "DEV_PROP_U32", value: 2, isUnsigned: true)
!125 = !DIEnumerator(name: "DEV_PROP_U64", value: 3, isUnsigned: true)
!126 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4, isUnsigned: true)
!127 = !DIEnumerator(name: "DEV_PROP_REF", value: 5, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !129, line: 10, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132}
!131 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !134, line: 305, baseType: !7, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!135 = !{!136, !137, !138, !139}
!136 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!137 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!138 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!139 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!140 = !{!141, !143, !144, !3914, !407, !364, !3337, !299, !159, !7}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !142, line: 148, baseType: !7)
!142 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_device", file: !108, line: 157, size: 704, elements: !146)
!146 = !{!147, !153, !3336, !3902, !3903, !3904, !3905, !3906, !3907, !3908, !3909, !3913}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !145, file: !108, line: 158, baseType: !148, size: 128)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !142, line: 178, size: 128, elements: !149)
!149 = !{!150, !152}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !148, file: !142, line: 179, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !148, file: !142, line: 179, baseType: !151, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !145, file: !108, line: 159, baseType: !154, size: 64, offset: 128)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !24, line: 1822, size: 2048, elements: !157)
!157 = !{!158, !162, !3135, !3139, !3143, !3144, !3145, !3149, !3162, !3163, !3167, !3171, !3172, !3176, !3177, !3181, !3186, !3187, !3191, !3195, !3296, !3300, !3301, !3305, !3306, !3310, !3314, !3319, !3323, !3327, !3331, !3335}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !156, file: !24, line: 1823, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !161, line: 189, flags: DIFlagFwdDecl)
!161 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/lizy2001/genbc/linux")
!162 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !156, file: !24, line: 1824, baseType: !163, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!166, !170, !166, !299}
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !142, line: 46, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !168, line: 88, baseType: !169)
!168 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!169 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !24, line: 916, size: 1856, align: 32, elements: !172)
!172 = !{!173, !191, !3093, !3094, !3095, !3096, !3097, !3098, !3099, !3100, !3101, !3102, !3118, !3119, !3128, !3129, !3130, !3131, !3132, !3133, !3134}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !171, file: !24, line: 920, baseType: !174, size: 128)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !24, line: 917, size: 128, elements: !175)
!175 = !{!176, !182}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !174, file: !24, line: 918, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !178, line: 58, size: 64, elements: !179)
!178 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !177, file: !178, line: 59, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !174, file: !24, line: 919, baseType: !183, size: 128, align: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !142, line: 216, size: 128, align: 64, elements: !184)
!184 = !{!185, !187}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !142, line: 217, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !183, file: !142, line: 218, baseType: !188, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !186}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !171, file: !24, line: 921, baseType: !192, size: 128, offset: 128)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !193, line: 8, size: 128, elements: !194)
!193 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!194 = !{!195, !199}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !192, file: !193, line: 9, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !198, line: 18, flags: DIFlagFwdDecl)
!198 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!199 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !192, file: !193, line: 10, baseType: !200, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !198, line: 89, size: 1536, elements: !202)
!202 = !{!203, !204, !214, !222, !223, !246, !3062, !3064, !3076, !3077, !3078, !3079, !3080, !3085, !3086, !3087}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !201, file: !198, line: 91, baseType: !7, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !201, file: !198, line: 92, baseType: !205, size: 32, offset: 32)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !206, line: 277, baseType: !207)
!206 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !206, line: 277, size: 32, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !207, file: !206, line: 277, baseType: !210, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !206, line: 70, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !206, line: 65, size: 32, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !211, file: !206, line: 66, baseType: !7, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !201, file: !198, line: 93, baseType: !215, size: 128, offset: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !216, line: 38, size: 128, elements: !217)
!216 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!217 = !{!218, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !216, line: 39, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !215, file: !216, line: 39, baseType: !221, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !201, file: !198, line: 94, baseType: !200, size: 64, offset: 192)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !201, file: !198, line: 95, baseType: !224, size: 128, offset: 256)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !198, line: 47, size: 128, elements: !225)
!225 = !{!226, !242}
!226 = !DIDerivedType(tag: DW_TAG_member, scope: !224, file: !198, line: 48, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !224, file: !198, line: 48, size: 64, elements: !228)
!228 = !{!229, !238}
!229 = !DIDerivedType(tag: DW_TAG_member, scope: !227, file: !198, line: 49, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !227, file: !198, line: 49, size: 64, elements: !231)
!231 = !{!232, !237}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !230, file: !198, line: 50, baseType: !233, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !234, line: 21, baseType: !235)
!234 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !236, line: 27, baseType: !7)
!236 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!237 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !230, file: !198, line: 50, baseType: !233, size: 32, offset: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !227, file: !198, line: 52, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !234, line: 23, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !236, line: 31, baseType: !241)
!241 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !224, file: !198, line: 54, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !201, file: !198, line: 96, baseType: !247, size: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !24, line: 610, size: 4224, elements: !249)
!249 = !{!250, !253, !254, !262, !269, !270, !428, !2677, !2678, !2679, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2720, !2728, !2729, !2730, !3058, !3059, !3060, !3061}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !248, file: !24, line: 611, baseType: !251, size: 16)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !142, line: 19, baseType: !252)
!252 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !248, file: !24, line: 612, baseType: !252, size: 16, offset: 16)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !248, file: !24, line: 613, baseType: !255, size: 32, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !256, line: 23, baseType: !257)
!256 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !256, line: 21, size: 32, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !257, file: !256, line: 22, baseType: !260, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !142, line: 32, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !168, line: 49, baseType: !7)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !248, file: !24, line: 614, baseType: !263, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !256, line: 28, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !256, line: 26, size: 32, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !264, file: !256, line: 27, baseType: !267, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !142, line: 33, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !168, line: 50, baseType: !7)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !248, file: !24, line: 615, baseType: !7, size: 32, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !248, file: !24, line: 622, baseType: !271, size: 64, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !24, line: 1864, size: 1536, align: 512, elements: !274)
!274 = !{!275, !279, !295, !300, !306, !311, !317, !321, !325, !329, !333, !334, !340, !344, !368, !397, !408, !414, !419, !423, !424}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !273, file: !24, line: 1865, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!200, !247, !200, !7}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !273, file: !24, line: 1866, baseType: !280, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !200, !247, !286}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !288, line: 10, size: 128, elements: !289)
!288 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!289 = !{!290, !294}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !287, file: !288, line: 11, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{null, !143}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !287, file: !288, line: 12, baseType: !143, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !273, file: !24, line: 1867, baseType: !296, size: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!299, !247, !299}
!299 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !273, file: !24, line: 1868, baseType: !301, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!304, !247, !299}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !24, line: 581, flags: DIFlagFwdDecl)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !273, file: !24, line: 1870, baseType: !307, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!299, !200, !310, !299}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !273, file: !24, line: 1872, baseType: !312, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!299, !247, !200, !251, !315}
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !142, line: 30, baseType: !316)
!316 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !273, file: !24, line: 1873, baseType: !318, size: 64, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!299, !200, !247, !200}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !273, file: !24, line: 1874, baseType: !322, size: 64, offset: 448)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!299, !247, !200}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !273, file: !24, line: 1875, baseType: !326, size: 64, offset: 512)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!299, !247, !200, !283}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !273, file: !24, line: 1876, baseType: !330, size: 64, offset: 576)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!299, !247, !200, !251}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !273, file: !24, line: 1877, baseType: !322, size: 64, offset: 640)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !273, file: !24, line: 1878, baseType: !335, size: 64, offset: 704)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!299, !247, !200, !251, !338}
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !142, line: 16, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !142, line: 13, baseType: !233)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !273, file: !24, line: 1879, baseType: !341, size: 64, offset: 768)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!299, !247, !200, !247, !200, !7}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !273, file: !24, line: 1881, baseType: !345, size: 64, offset: 832)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!299, !200, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !24, line: 219, size: 640, elements: !350)
!350 = !{!351, !352, !353, !354, !355, !356, !365, !366, !367}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !349, file: !24, line: 220, baseType: !7, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !349, file: !24, line: 221, baseType: !251, size: 16, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !349, file: !24, line: 222, baseType: !255, size: 32, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !349, file: !24, line: 223, baseType: !263, size: 32, offset: 96)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !349, file: !24, line: 224, baseType: !166, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !349, file: !24, line: 225, baseType: !357, size: 128, offset: 192)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !358, line: 13, size: 128, elements: !359)
!358 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!359 = !{!360, !363}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !357, file: !358, line: 14, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !358, line: 8, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !236, line: 30, baseType: !169)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !357, file: !358, line: 15, baseType: !364, size: 64, offset: 64)
!364 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !349, file: !24, line: 226, baseType: !357, size: 128, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !349, file: !24, line: 227, baseType: !357, size: 128, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !349, file: !24, line: 234, baseType: !170, size: 64, offset: 576)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !273, file: !24, line: 1882, baseType: !369, size: 64, offset: 896)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!299, !372, !374, !233, !7}
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !376, line: 22, size: 1152, elements: !377)
!376 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!377 = !{!378, !379, !380, !381, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !375, file: !376, line: 23, baseType: !233, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !375, file: !376, line: 24, baseType: !251, size: 16, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !375, file: !376, line: 25, baseType: !7, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !375, file: !376, line: 26, baseType: !382, size: 32, offset: 96)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !142, line: 104, baseType: !233)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !375, file: !376, line: 27, baseType: !239, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !375, file: !376, line: 28, baseType: !239, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !375, file: !376, line: 37, baseType: !239, size: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !375, file: !376, line: 38, baseType: !338, size: 32, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !375, file: !376, line: 39, baseType: !338, size: 32, offset: 352)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !375, file: !376, line: 40, baseType: !255, size: 32, offset: 384)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !375, file: !376, line: 41, baseType: !263, size: 32, offset: 416)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !375, file: !376, line: 42, baseType: !166, size: 64, offset: 448)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !375, file: !376, line: 43, baseType: !357, size: 128, offset: 512)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !375, file: !376, line: 44, baseType: !357, size: 128, offset: 640)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !375, file: !376, line: 45, baseType: !357, size: 128, offset: 768)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !375, file: !376, line: 46, baseType: !357, size: 128, offset: 896)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !375, file: !376, line: 47, baseType: !239, size: 64, offset: 1024)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !375, file: !376, line: 48, baseType: !239, size: 64, offset: 1088)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !273, file: !24, line: 1883, baseType: !398, size: 64, offset: 960)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!401, !200, !310, !404}
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !142, line: 60, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !168, line: 73, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !168, line: 15, baseType: !364)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !142, line: 55, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !168, line: 72, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !168, line: 16, baseType: !407)
!407 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !273, file: !24, line: 1884, baseType: !409, size: 64, offset: 1024)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!299, !247, !412, !239, !239}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !24, line: 50, flags: DIFlagFwdDecl)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !273, file: !24, line: 1886, baseType: !415, size: 64, offset: 1088)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!299, !247, !418, !299}
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !273, file: !24, line: 1887, baseType: !420, size: 64, offset: 1152)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!299, !247, !200, !170, !7, !251}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !273, file: !24, line: 1890, baseType: !330, size: 64, offset: 1216)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !273, file: !24, line: 1891, baseType: !425, size: 64, offset: 1280)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!299, !247, !304, !299}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !248, file: !24, line: 623, baseType: !429, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !24, line: 1416, size: 9472, elements: !431)
!431 = !{!432, !433, !434, !435, !436, !437, !487, !2284, !2366, !2449, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2465, !2469, !2470, !2473, !2474, !2477, !2478, !2479, !2520, !2547, !2548, !2549, !2550, !2551, !2552, !2555, !2557, !2564, !2565, !2567, !2568, !2569, !2628, !2629, !2644, !2645, !2646, !2647, !2648, !2651, !2652, !2653, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !430, file: !24, line: 1417, baseType: !148, size: 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !430, file: !24, line: 1418, baseType: !338, size: 32, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !430, file: !24, line: 1419, baseType: !245, size: 8, offset: 160)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !430, file: !24, line: 1420, baseType: !407, size: 64, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !430, file: !24, line: 1421, baseType: !166, size: 64, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !430, file: !24, line: 1422, baseType: !438, size: 64, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !24, line: 2228, size: 576, elements: !440)
!440 = !{!441, !442, !443, !450, !454, !458, !462, !463, !464, !474, !478, !479, !480, !484, !485, !486}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !439, file: !24, line: 2229, baseType: !283, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !439, file: !24, line: 2230, baseType: !299, size: 32, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !439, file: !24, line: 2238, baseType: !444, size: 64, offset: 128)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!299, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !449, line: 28, flags: DIFlagFwdDecl)
!449 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!450 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !439, file: !24, line: 2239, baseType: !451, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !24, line: 70, flags: DIFlagFwdDecl)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !439, file: !24, line: 2240, baseType: !455, size: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{!200, !438, !299, !283, !143}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !439, file: !24, line: 2242, baseType: !459, size: 64, offset: 320)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{null, !429}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !439, file: !24, line: 2243, baseType: !159, size: 64, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !439, file: !24, line: 2244, baseType: !438, size: 64, offset: 448)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !439, file: !24, line: 2245, baseType: !465, size: 64, offset: 512)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !142, line: 182, size: 64, elements: !466)
!466 = !{!467}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !465, file: !142, line: 183, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !142, line: 186, size: 128, elements: !470)
!470 = !{!471, !472}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !469, file: !142, line: 187, baseType: !468, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !469, file: !142, line: 187, baseType: !473, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !439, file: !24, line: 2247, baseType: !475, offset: 576)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !476, line: 187, elements: !477)
!476 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!477 = !{}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !439, file: !24, line: 2248, baseType: !475, offset: 576)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !439, file: !24, line: 2249, baseType: !475, offset: 576)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !439, file: !24, line: 2250, baseType: !481, offset: 576)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 3)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !439, file: !24, line: 2252, baseType: !475, offset: 576)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !439, file: !24, line: 2253, baseType: !475, offset: 576)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !439, file: !24, line: 2254, baseType: !475, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !430, file: !24, line: 1423, baseType: !488, size: 64, offset: 384)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !24, line: 1935, size: 1472, elements: !491)
!491 = !{!492, !496, !500, !501, !505, !511, !515, !516, !517, !521, !525, !526, !527, !528, !534, !539, !540, !547, !548, !549, !550, !2268, !2283}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !490, file: !24, line: 1936, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!247, !429}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !490, file: !24, line: 1937, baseType: !497, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DISubroutineType(types: !499)
!499 = !{null, !247}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !490, file: !24, line: 1938, baseType: !497, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !490, file: !24, line: 1940, baseType: !502, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{null, !247, !299}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !490, file: !24, line: 1941, baseType: !506, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!299, !247, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !24, line: 289, flags: DIFlagFwdDecl)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !490, file: !24, line: 1942, baseType: !512, size: 64, offset: 320)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!299, !247}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !490, file: !24, line: 1943, baseType: !497, size: 64, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !490, file: !24, line: 1944, baseType: !459, size: 64, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !490, file: !24, line: 1945, baseType: !518, size: 64, offset: 512)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!299, !429, !299}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !490, file: !24, line: 1946, baseType: !522, size: 64, offset: 576)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!299, !429}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !490, file: !24, line: 1947, baseType: !522, size: 64, offset: 640)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !490, file: !24, line: 1948, baseType: !522, size: 64, offset: 704)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !490, file: !24, line: 1949, baseType: !522, size: 64, offset: 768)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !490, file: !24, line: 1950, baseType: !529, size: 64, offset: 832)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!299, !200, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !24, line: 57, flags: DIFlagFwdDecl)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !490, file: !24, line: 1951, baseType: !535, size: 64, offset: 896)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!299, !429, !538, !310}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !490, file: !24, line: 1952, baseType: !459, size: 64, offset: 960)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !490, file: !24, line: 1954, baseType: !541, size: 64, offset: 1024)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!299, !544, !200}
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !546, line: 539, flags: DIFlagFwdDecl)
!546 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!547 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !490, file: !24, line: 1955, baseType: !541, size: 64, offset: 1088)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !490, file: !24, line: 1956, baseType: !541, size: 64, offset: 1152)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !490, file: !24, line: 1957, baseType: !541, size: 64, offset: 1216)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !490, file: !24, line: 1963, baseType: !551, size: 64, offset: 1280)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!299, !429, !554, !141}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !556, line: 68, size: 512, align: 128, elements: !557)
!556 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!557 = !{!558, !559, !2260, !2267}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !555, file: !556, line: 69, baseType: !407, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, scope: !555, file: !556, line: 77, baseType: !560, size: 320, offset: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !555, file: !556, line: 77, size: 320, elements: !561)
!561 = !{!562, !763, !768, !796, !804, !810, !2191, !2259}
!562 = !DIDerivedType(tag: DW_TAG_member, scope: !560, file: !556, line: 78, baseType: !563, size: 320)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !560, file: !556, line: 78, size: 320, elements: !564)
!564 = !{!565, !566, !761, !762}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !563, file: !556, line: 84, baseType: !148, size: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !563, file: !556, line: 86, baseType: !567, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !24, line: 451, size: 1216, align: 64, elements: !569)
!569 = !{!570, !571, !592, !593, !598, !613, !629, !630, !631, !632, !754, !755, !758, !759, !760}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !568, file: !24, line: 452, baseType: !247, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !568, file: !24, line: 453, baseType: !572, size: 128, offset: 64)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !573, line: 292, size: 128, elements: !574)
!573 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!574 = !{!575, !590, !591}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !572, file: !573, line: 293, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !577, line: 83, baseType: !578)
!577 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !577, line: 71, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, scope: !578, file: !577, line: 72, baseType: !581)
!581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !578, file: !577, line: 72, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !581, file: !577, line: 73, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !577, line: 20, elements: !585)
!585 = !{!586}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !584, file: !577, line: 21, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !588, line: 25, baseType: !589)
!588 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !588, line: 25, elements: !477)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !572, file: !573, line: 295, baseType: !141, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !572, file: !573, line: 296, baseType: !143, size: 64, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !568, file: !24, line: 454, baseType: !141, size: 32, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !568, file: !24, line: 455, baseType: !594, size: 32, offset: 224)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !142, line: 168, baseType: !595)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 166, size: 32, elements: !596)
!596 = !{!597}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !595, file: !142, line: 167, baseType: !299, size: 32)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !568, file: !24, line: 460, baseType: !599, size: 128, offset: 256)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !600, line: 125, size: 128, elements: !601)
!600 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!601 = !{!602, !612}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !599, file: !600, line: 126, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !600, line: 31, size: 64, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !603, file: !600, line: 32, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !600, line: 24, size: 192, align: 64, elements: !608)
!608 = !{!609, !610, !611}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !607, file: !600, line: 25, baseType: !407, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !607, file: !600, line: 26, baseType: !606, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !607, file: !600, line: 27, baseType: !606, size: 64, offset: 128)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !599, file: !600, line: 127, baseType: !606, size: 64, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !568, file: !24, line: 461, baseType: !614, size: 256, offset: 384)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !615, line: 35, size: 256, elements: !616)
!615 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!616 = !{!617, !625, !626, !628}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !614, file: !615, line: 36, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !619, line: 13, baseType: !620)
!619 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !142, line: 175, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 173, size: 64, elements: !622)
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !621, file: !142, line: 174, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !234, line: 22, baseType: !362)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !614, file: !615, line: 42, baseType: !618, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !614, file: !615, line: 46, baseType: !627, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !577, line: 29, baseType: !584)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !614, file: !615, line: 47, baseType: !148, size: 128, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !568, file: !24, line: 462, baseType: !407, size: 64, offset: 640)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !568, file: !24, line: 463, baseType: !407, size: 64, offset: 704)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !568, file: !24, line: 464, baseType: !407, size: 64, offset: 768)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !568, file: !24, line: 465, baseType: !633, size: 64, offset: 832)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !635)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !24, line: 367, size: 1408, elements: !636)
!636 = !{!637, !641, !645, !649, !653, !657, !663, !669, !673, !678, !682, !686, !690, !718, !722, !728, !729, !730, !734, !739, !743, !750}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !635, file: !24, line: 368, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!299, !554, !509}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !635, file: !24, line: 369, baseType: !642, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!299, !170, !554}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !635, file: !24, line: 372, baseType: !646, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!299, !567, !509}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !635, file: !24, line: 375, baseType: !650, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!299, !554}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !635, file: !24, line: 381, baseType: !654, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!299, !170, !567, !151, !7}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !635, file: !24, line: 383, baseType: !658, size: 64, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{null, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !24, line: 290, flags: DIFlagFwdDecl)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !635, file: !24, line: 385, baseType: !664, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!299, !170, !567, !166, !7, !7, !667, !668}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !635, file: !24, line: 388, baseType: !670, size: 64, offset: 448)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!299, !170, !567, !166, !7, !7, !554, !143}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !635, file: !24, line: 393, baseType: !674, size: 64, offset: 512)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!677, !567, !677}
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !142, line: 125, baseType: !239)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !635, file: !24, line: 394, baseType: !679, size: 64, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !554, !7, !7}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !635, file: !24, line: 395, baseType: !683, size: 64, offset: 640)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!299, !554, !141}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !635, file: !24, line: 396, baseType: !687, size: 64, offset: 704)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{null, !554}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !635, file: !24, line: 397, baseType: !691, size: 64, offset: 768)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!401, !694, !716}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !24, line: 320, size: 384, elements: !696)
!696 = !{!697, !698, !699, !703, !704, !705, !708, !709}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !695, file: !24, line: 321, baseType: !170, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !695, file: !24, line: 326, baseType: !166, size: 64, offset: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !695, file: !24, line: 327, baseType: !700, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{null, !694, !364, !364}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !695, file: !24, line: 328, baseType: !143, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !695, file: !24, line: 329, baseType: !299, size: 32, offset: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !695, file: !24, line: 330, baseType: !706, size: 16, offset: 288)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !234, line: 19, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !236, line: 24, baseType: !252)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !695, file: !24, line: 331, baseType: !706, size: 16, offset: 304)
!709 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !24, line: 332, baseType: !710, size: 64, offset: 320)
!710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !695, file: !24, line: 332, size: 64, elements: !711)
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !710, file: !24, line: 333, baseType: !7, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !710, file: !24, line: 334, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !24, line: 334, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !24, line: 64, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !635, file: !24, line: 402, baseType: !719, size: 64, offset: 832)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!299, !567, !554, !554, !40}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !635, file: !24, line: 404, baseType: !723, size: 64, offset: 896)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!315, !554, !726}
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !727, line: 305, baseType: !7)
!727 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!728 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !635, file: !24, line: 405, baseType: !687, size: 64, offset: 960)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !635, file: !24, line: 406, baseType: !650, size: 64, offset: 1024)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !635, file: !24, line: 407, baseType: !731, size: 64, offset: 1088)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!299, !554, !407, !407}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !635, file: !24, line: 409, baseType: !735, size: 64, offset: 1152)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{null, !554, !738, !738}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !635, file: !24, line: 410, baseType: !740, size: 64, offset: 1216)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!299, !567, !554}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !635, file: !24, line: 413, baseType: !744, size: 64, offset: 1280)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!299, !747, !170, !749}
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !24, line: 61, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !635, file: !24, line: 415, baseType: !751, size: 64, offset: 1344)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{null, !170}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !568, file: !24, line: 466, baseType: !407, size: 64, offset: 896)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !568, file: !24, line: 467, baseType: !756, size: 32, offset: 960)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !757, line: 8, baseType: !233)
!757 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!758 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !568, file: !24, line: 468, baseType: !576, offset: 992)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !568, file: !24, line: 469, baseType: !148, size: 128, offset: 1024)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !568, file: !24, line: 470, baseType: !143, size: 64, offset: 1152)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !563, file: !556, line: 87, baseType: !407, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !563, file: !556, line: 94, baseType: !407, size: 64, offset: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, scope: !560, file: !556, line: 96, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !560, file: !556, line: 96, size: 64, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !764, file: !556, line: 101, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !142, line: 143, baseType: !239)
!768 = !DIDerivedType(tag: DW_TAG_member, scope: !560, file: !556, line: 103, baseType: !769, size: 320)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !560, file: !556, line: 103, size: 320, elements: !770)
!770 = !{!771, !781, !784, !785}
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !556, line: 104, baseType: !772, size: 128)
!772 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !769, file: !556, line: 104, size: 128, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !772, file: !556, line: 105, baseType: !148, size: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !556, line: 106, baseType: !776, size: 128)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !772, file: !556, line: 106, size: 128, elements: !777)
!777 = !{!778, !779, !780}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !776, file: !556, line: 107, baseType: !554, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !776, file: !556, line: 109, baseType: !299, size: 32, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !776, file: !556, line: 110, baseType: !299, size: 32, offset: 96)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !769, file: !556, line: 117, baseType: !782, size: 64, offset: 128)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !556, line: 117, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !769, file: !556, line: 119, baseType: !143, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !556, line: 120, baseType: !786, size: 64, offset: 256)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !769, file: !556, line: 120, size: 64, elements: !787)
!787 = !{!788, !789, !790}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !786, file: !556, line: 121, baseType: !143, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !786, file: !556, line: 122, baseType: !407, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, scope: !786, file: !556, line: 123, baseType: !791, size: 32)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !786, file: !556, line: 123, size: 32, elements: !792)
!792 = !{!793, !794, !795}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !791, file: !556, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !791, file: !556, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !791, file: !556, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!796 = !DIDerivedType(tag: DW_TAG_member, scope: !560, file: !556, line: 130, baseType: !797, size: 192)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !560, file: !556, line: 130, size: 192, elements: !798)
!798 = !{!799, !800, !801, !802, !803}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !797, file: !556, line: 131, baseType: !407, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !797, file: !556, line: 134, baseType: !245, size: 8, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !797, file: !556, line: 135, baseType: !245, size: 8, offset: 72)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !797, file: !556, line: 136, baseType: !594, size: 32, offset: 96)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !797, file: !556, line: 137, baseType: !7, size: 32, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_member, scope: !560, file: !556, line: 139, baseType: !805, size: 256)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !560, file: !556, line: 139, size: 256, elements: !806)
!806 = !{!807, !808, !809}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !805, file: !556, line: 140, baseType: !407, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !805, file: !556, line: 141, baseType: !594, size: 32, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !805, file: !556, line: 143, baseType: !148, size: 128, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, scope: !560, file: !556, line: 145, baseType: !811, size: 256)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !560, file: !556, line: 145, size: 256, elements: !812)
!812 = !{!813, !814, !816, !817, !2190}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !811, file: !556, line: 146, baseType: !407, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !811, file: !556, line: 147, baseType: !815, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !546, line: 509, baseType: !554)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !811, file: !556, line: 148, baseType: !407, size: 64, offset: 128)
!817 = !DIDerivedType(tag: DW_TAG_member, scope: !811, file: !556, line: 149, baseType: !818, size: 64, offset: 192)
!818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !811, file: !556, line: 149, size: 64, elements: !819)
!819 = !{!820, !2189}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !818, file: !556, line: 150, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !556, line: 388, size: 7296, elements: !823)
!823 = !{!824, !2185}
!824 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !556, line: 389, baseType: !825, size: 7296)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !822, file: !556, line: 389, size: 7296, elements: !826)
!826 = !{!827, !945, !946, !947, !951, !952, !953, !954, !955, !962, !963, !964, !965, !966, !967, !968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !996, !1004, !1007, !1053, !1054, !2169, !2170, !2173, !2174, !2175, !2178, !2179, !2180, !2183, !2184}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !825, file: !556, line: 390, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !556, line: 305, size: 1472, elements: !830)
!830 = !{!831, !832, !833, !834, !835, !836, !837, !838, !845, !846, !851, !852, !855, !939, !940, !941, !942, !943}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !829, file: !556, line: 308, baseType: !407, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !829, file: !556, line: 309, baseType: !407, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !829, file: !556, line: 313, baseType: !828, size: 64, offset: 128)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !829, file: !556, line: 313, baseType: !828, size: 64, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !829, file: !556, line: 315, baseType: !607, size: 192, align: 64, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !829, file: !556, line: 323, baseType: !407, size: 64, offset: 448)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !829, file: !556, line: 327, baseType: !821, size: 64, offset: 512)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !829, file: !556, line: 333, baseType: !839, size: 64, offset: 576)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !546, line: 284, baseType: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !546, line: 284, size: 64, elements: !841)
!841 = !{!842}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !840, file: !546, line: 284, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !844, line: 19, baseType: !407)
!844 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!845 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !829, file: !556, line: 334, baseType: !407, size: 64, offset: 640)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !829, file: !556, line: 343, baseType: !847, size: 256, offset: 704)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !829, file: !556, line: 340, size: 256, elements: !848)
!848 = !{!849, !850}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !847, file: !556, line: 341, baseType: !607, size: 192, align: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !847, file: !556, line: 342, baseType: !407, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !829, file: !556, line: 351, baseType: !148, size: 128, offset: 960)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !829, file: !556, line: 353, baseType: !853, size: 64, offset: 1088)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !556, line: 353, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !829, file: !556, line: 356, baseType: !856, size: 64, offset: 1152)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !858)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !18, line: 557, size: 832, elements: !859)
!859 = !{!860, !864, !865, !869, !873, !913, !917, !921, !925, !926, !927, !931, !935}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !858, file: !18, line: 558, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DISubroutineType(types: !863)
!863 = !{null, !828}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !858, file: !18, line: 559, baseType: !861, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !858, file: !18, line: 560, baseType: !866, size: 64, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!299, !828, !407}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !858, file: !18, line: 561, baseType: !870, size: 64, offset: 192)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!299, !828}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !858, file: !18, line: 562, baseType: !874, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!877, !878}
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !556, line: 682, baseType: !7)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !18, line: 508, size: 768, elements: !880)
!880 = !{!881, !882, !883, !884, !885, !886, !893, !900, !906, !907, !908, !910, !912}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !879, file: !18, line: 509, baseType: !828, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !879, file: !18, line: 510, baseType: !7, size: 32, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !879, file: !18, line: 511, baseType: !141, size: 32, offset: 96)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !879, file: !18, line: 512, baseType: !407, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !879, file: !18, line: 513, baseType: !407, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !879, file: !18, line: 514, baseType: !887, size: 64, offset: 256)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !546, line: 385, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !546, line: 385, size: 64, elements: !890)
!890 = !{!891}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !889, file: !546, line: 385, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !844, line: 15, baseType: !407)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !879, file: !18, line: 516, baseType: !894, size: 64, offset: 320)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !546, line: 359, baseType: !896)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !546, line: 359, size: 64, elements: !897)
!897 = !{!898}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !896, file: !546, line: 359, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !844, line: 16, baseType: !407)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !879, file: !18, line: 519, baseType: !901, size: 64, offset: 384)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !844, line: 21, baseType: !902)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !844, line: 21, size: 64, elements: !903)
!903 = !{!904}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !902, file: !844, line: 21, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !844, line: 14, baseType: !407)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !879, file: !18, line: 521, baseType: !554, size: 64, offset: 448)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !879, file: !18, line: 522, baseType: !554, size: 64, offset: 512)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !879, file: !18, line: 528, baseType: !909, size: 64, offset: 576)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !879, file: !18, line: 532, baseType: !911, size: 64, offset: 640)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !879, file: !18, line: 536, baseType: !815, size: 64, offset: 704)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !858, file: !18, line: 563, baseType: !914, size: 64, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{!877, !878, !17}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !858, file: !18, line: 565, baseType: !918, size: 64, offset: 384)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DISubroutineType(types: !920)
!920 = !{null, !878, !407, !407}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !858, file: !18, line: 567, baseType: !922, size: 64, offset: 448)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DISubroutineType(types: !924)
!924 = !{!407, !828}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !858, file: !18, line: 571, baseType: !874, size: 64, offset: 512)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !858, file: !18, line: 574, baseType: !874, size: 64, offset: 576)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !858, file: !18, line: 579, baseType: !928, size: 64, offset: 640)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!299, !828, !407, !143, !299, !299}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !858, file: !18, line: 585, baseType: !932, size: 64, offset: 704)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!283, !828}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !858, file: !18, line: 615, baseType: !936, size: 64, offset: 768)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!554, !828, !407}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !829, file: !556, line: 359, baseType: !407, size: 64, offset: 1216)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !829, file: !556, line: 361, baseType: !170, size: 64, offset: 1280)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !829, file: !556, line: 362, baseType: !143, size: 64, offset: 1344)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !829, file: !556, line: 365, baseType: !618, size: 64, offset: 1408)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !829, file: !556, line: 373, baseType: !944, offset: 1472)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !556, line: 296, elements: !477)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !825, file: !556, line: 391, baseType: !603, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !825, file: !556, line: 392, baseType: !239, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !825, file: !556, line: 394, baseType: !948, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!407, !170, !407, !407, !407, !407}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !825, file: !556, line: 398, baseType: !407, size: 64, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !825, file: !556, line: 399, baseType: !407, size: 64, offset: 320)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !825, file: !556, line: 405, baseType: !407, size: 64, offset: 384)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !825, file: !556, line: 406, baseType: !407, size: 64, offset: 448)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !825, file: !556, line: 407, baseType: !956, size: 64, offset: 512)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !546, line: 286, baseType: !958)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !546, line: 286, size: 64, elements: !959)
!959 = !{!960}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !958, file: !546, line: 286, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !844, line: 18, baseType: !407)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !825, file: !556, line: 416, baseType: !594, size: 32, offset: 576)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !825, file: !556, line: 428, baseType: !594, size: 32, offset: 608)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !825, file: !556, line: 437, baseType: !594, size: 32, offset: 640)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !825, file: !556, line: 447, baseType: !594, size: 32, offset: 672)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !825, file: !556, line: 450, baseType: !618, size: 64, offset: 704)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !825, file: !556, line: 452, baseType: !299, size: 32, offset: 768)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !825, file: !556, line: 454, baseType: !576, offset: 800)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !825, file: !556, line: 457, baseType: !614, size: 256, offset: 832)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !825, file: !556, line: 459, baseType: !148, size: 128, offset: 1088)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !825, file: !556, line: 466, baseType: !407, size: 64, offset: 1216)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !825, file: !556, line: 467, baseType: !407, size: 64, offset: 1280)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !825, file: !556, line: 469, baseType: !407, size: 64, offset: 1344)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !825, file: !556, line: 470, baseType: !407, size: 64, offset: 1408)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !825, file: !556, line: 471, baseType: !620, size: 64, offset: 1472)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !825, file: !556, line: 472, baseType: !407, size: 64, offset: 1536)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !825, file: !556, line: 473, baseType: !407, size: 64, offset: 1600)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !825, file: !556, line: 474, baseType: !407, size: 64, offset: 1664)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !825, file: !556, line: 475, baseType: !407, size: 64, offset: 1728)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !825, file: !556, line: 477, baseType: !576, offset: 1792)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !825, file: !556, line: 478, baseType: !407, size: 64, offset: 1792)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !825, file: !556, line: 478, baseType: !407, size: 64, offset: 1856)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !825, file: !556, line: 478, baseType: !407, size: 64, offset: 1920)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !825, file: !556, line: 478, baseType: !407, size: 64, offset: 1984)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !825, file: !556, line: 479, baseType: !407, size: 64, offset: 2048)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !825, file: !556, line: 479, baseType: !407, size: 64, offset: 2112)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !825, file: !556, line: 479, baseType: !407, size: 64, offset: 2176)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !825, file: !556, line: 480, baseType: !407, size: 64, offset: 2240)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !825, file: !556, line: 480, baseType: !407, size: 64, offset: 2304)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !825, file: !556, line: 480, baseType: !407, size: 64, offset: 2368)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !825, file: !556, line: 480, baseType: !407, size: 64, offset: 2432)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !825, file: !556, line: 482, baseType: !993, size: 2816, offset: 2496)
!993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 2816, elements: !994)
!994 = !{!995}
!995 = !DISubrange(count: 44)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !825, file: !556, line: 488, baseType: !997, size: 256, offset: 5312)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !998, line: 60, size: 256, elements: !999)
!998 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!999 = !{!1000}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !997, file: !998, line: 61, baseType: !1001, size: 256)
!1001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 256, elements: !1002)
!1002 = !{!1003}
!1003 = !DISubrange(count: 4)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !825, file: !556, line: 490, baseType: !1005, size: 64, offset: 5568)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !556, line: 490, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !825, file: !556, line: 493, baseType: !1008, size: 896, offset: 5632)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1009, line: 53, baseType: !1010)
!1009 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1009, line: 13, size: 896, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1015, !1018, !1019, !1026, !1027, !1047, !1048, !1049}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1010, file: !1009, line: 18, baseType: !239, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1010, file: !1009, line: 28, baseType: !620, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1010, file: !1009, line: 31, baseType: !614, size: 256, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1010, file: !1009, line: 32, baseType: !1016, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1009, line: 32, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1010, file: !1009, line: 37, baseType: !252, size: 16, offset: 448)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1010, file: !1009, line: 40, baseType: !1020, size: 192, offset: 512)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1021, line: 53, size: 192, elements: !1022)
!1021 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1022 = !{!1023, !1024, !1025}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1020, file: !1021, line: 54, baseType: !618, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1020, file: !1021, line: 55, baseType: !576, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1020, file: !1021, line: 59, baseType: !148, size: 128, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1010, file: !1009, line: 41, baseType: !143, size: 64, offset: 704)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1010, file: !1009, line: 42, baseType: !1028, size: 64, offset: 768)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1031, line: 13, size: 896, elements: !1032)
!1031 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1032 = !{!1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1030, file: !1031, line: 14, baseType: !143, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1030, file: !1031, line: 15, baseType: !407, size: 64, offset: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1030, file: !1031, line: 17, baseType: !407, size: 64, offset: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1030, file: !1031, line: 17, baseType: !407, size: 64, offset: 192)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1030, file: !1031, line: 19, baseType: !364, size: 64, offset: 256)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1030, file: !1031, line: 21, baseType: !364, size: 64, offset: 320)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1030, file: !1031, line: 22, baseType: !364, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1030, file: !1031, line: 23, baseType: !364, size: 64, offset: 448)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1030, file: !1031, line: 24, baseType: !364, size: 64, offset: 512)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1030, file: !1031, line: 25, baseType: !364, size: 64, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1030, file: !1031, line: 26, baseType: !364, size: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1030, file: !1031, line: 27, baseType: !364, size: 64, offset: 704)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1030, file: !1031, line: 28, baseType: !364, size: 64, offset: 768)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1030, file: !1031, line: 29, baseType: !364, size: 64, offset: 832)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1010, file: !1009, line: 44, baseType: !594, size: 32, offset: 832)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1010, file: !1009, line: 50, baseType: !706, size: 16, offset: 864)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1010, file: !1009, line: 51, baseType: !1050, size: 16, offset: 880)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !234, line: 18, baseType: !1051)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !236, line: 23, baseType: !1052)
!1052 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !825, file: !556, line: 495, baseType: !407, size: 64, offset: 6528)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !825, file: !556, line: 497, baseType: !1055, size: 64, offset: 6592)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !556, line: 381, size: 384, elements: !1057)
!1057 = !{!1058, !1059, !2168}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1056, file: !556, line: 382, baseType: !594, size: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1056, file: !556, line: 383, baseType: !1060, size: 128, offset: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !556, line: 376, size: 128, elements: !1061)
!1061 = !{!1062, !2166}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1060, file: !556, line: 377, baseType: !1063, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1065, line: 640, size: 48640, elements: !1066)
!1065 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1066 = !{!1067, !1073, !1075, !1076, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1093, !1111, !1122, !1207, !1208, !1209, !1220, !1221, !1223, !1224, !1225, !1226, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1310, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1348, !1350, !1351, !1352, !1364, !1365, !1366, !1367, !1368, !1369, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1393, !1398, !1582, !1583, !1584, !1585, !1589, !1592, !1595, !1598, !1601, !1605, !1706, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1754, !1755, !1756, !1757, !1758, !1763, !1764, !1765, !1768, !1769, !1772, !1775, !1778, !1781, !1824, !1827, !1828, !1907, !1908, !1911, !1912, !1915, !1916, !1917, !1921, !1922, !1923, !1936, !1937, !1938, !1948, !1953, !1956, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1064, file: !1065, line: 646, baseType: !1068, size: 128)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1069, line: 56, size: 128, elements: !1070)
!1069 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1070 = !{!1071, !1072}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1068, file: !1069, line: 57, baseType: !407, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1068, file: !1069, line: 58, baseType: !233, size: 32, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1064, file: !1065, line: 649, baseType: !1074, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !364)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1064, file: !1065, line: 657, baseType: !143, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1064, file: !1065, line: 658, baseType: !1077, size: 32, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1078, line: 113, baseType: !1079)
!1078 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1078, line: 111, size: 32, elements: !1080)
!1080 = !{!1081}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1079, file: !1078, line: 112, baseType: !594, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1064, file: !1065, line: 660, baseType: !7, size: 32, offset: 288)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1064, file: !1065, line: 661, baseType: !7, size: 32, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1064, file: !1065, line: 684, baseType: !299, size: 32, offset: 352)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1064, file: !1065, line: 686, baseType: !299, size: 32, offset: 384)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1064, file: !1065, line: 687, baseType: !299, size: 32, offset: 416)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1064, file: !1065, line: 688, baseType: !299, size: 32, offset: 448)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1064, file: !1065, line: 689, baseType: !7, size: 32, offset: 480)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1064, file: !1065, line: 691, baseType: !1090, size: 64, offset: 512)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1092)
!1092 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1065, line: 691, flags: DIFlagFwdDecl)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1064, file: !1065, line: 692, baseType: !1094, size: 832, offset: 576)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1065, line: 451, size: 832, elements: !1095)
!1095 = !{!1096, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1094, file: !1065, line: 453, baseType: !1097, size: 128)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1065, line: 325, size: 128, elements: !1098)
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1097, file: !1065, line: 326, baseType: !407, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1097, file: !1065, line: 327, baseType: !233, size: 32, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1094, file: !1065, line: 454, baseType: !607, size: 192, align: 64, offset: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1094, file: !1065, line: 455, baseType: !148, size: 128, offset: 320)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1094, file: !1065, line: 456, baseType: !7, size: 32, offset: 448)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1094, file: !1065, line: 458, baseType: !239, size: 64, offset: 512)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1094, file: !1065, line: 459, baseType: !239, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1094, file: !1065, line: 460, baseType: !239, size: 64, offset: 640)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1094, file: !1065, line: 461, baseType: !239, size: 64, offset: 704)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1094, file: !1065, line: 463, baseType: !239, size: 64, offset: 768)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1094, file: !1065, line: 465, baseType: !1110, offset: 832)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1065, line: 415, elements: !477)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1064, file: !1065, line: 693, baseType: !1112, size: 384, offset: 1408)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1065, line: 489, size: 384, elements: !1113)
!1113 = !{!1114, !1115, !1116, !1117, !1118, !1119, !1120}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1112, file: !1065, line: 490, baseType: !148, size: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1112, file: !1065, line: 491, baseType: !407, size: 64, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1112, file: !1065, line: 492, baseType: !407, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1112, file: !1065, line: 493, baseType: !7, size: 32, offset: 256)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1112, file: !1065, line: 494, baseType: !252, size: 16, offset: 288)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1112, file: !1065, line: 495, baseType: !252, size: 16, offset: 304)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1112, file: !1065, line: 497, baseType: !1121, size: 64, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1064, file: !1065, line: 697, baseType: !1123, size: 1792, offset: 1792)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1065, line: 507, size: 1792, elements: !1124)
!1124 = !{!1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1204, !1205}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1123, file: !1065, line: 508, baseType: !607, size: 192, align: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1123, file: !1065, line: 515, baseType: !239, size: 64, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1123, file: !1065, line: 516, baseType: !239, size: 64, offset: 256)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1123, file: !1065, line: 517, baseType: !239, size: 64, offset: 320)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1123, file: !1065, line: 518, baseType: !239, size: 64, offset: 384)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1123, file: !1065, line: 519, baseType: !239, size: 64, offset: 448)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1123, file: !1065, line: 526, baseType: !624, size: 64, offset: 512)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1123, file: !1065, line: 527, baseType: !239, size: 64, offset: 576)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1123, file: !1065, line: 528, baseType: !7, size: 32, offset: 640)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1123, file: !1065, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1123, file: !1065, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1123, file: !1065, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1123, file: !1065, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1123, file: !1065, line: 563, baseType: !1139, size: 512, offset: 704)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !1140)
!1140 = !{!1141, !1149, !1150, !1155, !1198, !1201, !1202, !1203}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1139, file: !6, line: 119, baseType: !1142, size: 256)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1143, line: 9, size: 256, elements: !1144)
!1143 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1142, file: !1143, line: 10, baseType: !607, size: 192, align: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1142, file: !1143, line: 11, baseType: !1147, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1148, line: 29, baseType: !624)
!1148 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1139, file: !6, line: 120, baseType: !1147, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1139, file: !6, line: 121, baseType: !1151, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!5, !1154}
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1139, file: !6, line: 122, baseType: !1156, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !1158)
!1158 = !{!1159, !1179, !1180, !1183, !1188, !1189, !1193, !1197}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1157, file: !6, line: 160, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !1162)
!1162 = !{!1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1161, file: !6, line: 215, baseType: !627)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1161, file: !6, line: 216, baseType: !7, size: 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1161, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1161, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1161, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1161, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1161, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1161, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1161, file: !6, line: 233, baseType: !1147, size: 64, offset: 128)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1161, file: !6, line: 234, baseType: !1154, size: 64, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1161, file: !6, line: 235, baseType: !1147, size: 64, offset: 256)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1161, file: !6, line: 236, baseType: !1154, size: 64, offset: 320)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1161, file: !6, line: 237, baseType: !1176, size: 4096, offset: 512)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1157, size: 4096, elements: !1177)
!1177 = !{!1178}
!1178 = !DISubrange(count: 8)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1157, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1157, file: !6, line: 162, baseType: !1181, size: 32, offset: 96)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !142, line: 27, baseType: !1182)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !168, line: 96, baseType: !299)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1157, file: !6, line: 163, baseType: !1184, size: 32, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !206, line: 276, baseType: !1185)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !206, line: 276, size: 32, elements: !1186)
!1186 = !{!1187}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1185, file: !206, line: 276, baseType: !210, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1157, file: !6, line: 164, baseType: !1154, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1157, file: !6, line: 165, baseType: !1190, size: 128, offset: 256)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1143, line: 14, size: 128, elements: !1191)
!1191 = !{!1192}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1190, file: !1143, line: 15, baseType: !599, size: 128)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1157, file: !6, line: 166, baseType: !1194, size: 64, offset: 384)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!1147}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1157, file: !6, line: 167, baseType: !1147, size: 64, offset: 448)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1139, file: !6, line: 123, baseType: !1199, size: 8, offset: 448)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !234, line: 17, baseType: !1200)
!1200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !236, line: 21, baseType: !245)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1139, file: !6, line: 124, baseType: !1199, size: 8, offset: 456)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1139, file: !6, line: 125, baseType: !1199, size: 8, offset: 464)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1139, file: !6, line: 126, baseType: !1199, size: 8, offset: 472)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1123, file: !1065, line: 572, baseType: !1139, size: 512, offset: 1216)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1123, file: !1065, line: 580, baseType: !1206, size: 64, offset: 1728)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1064, file: !1065, line: 721, baseType: !7, size: 32, offset: 3584)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1064, file: !1065, line: 722, baseType: !299, size: 32, offset: 3616)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1064, file: !1065, line: 723, baseType: !1210, size: 64, offset: 3648)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1212)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1213, line: 17, baseType: !1214)
!1213 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1213, line: 17, size: 64, elements: !1215)
!1215 = !{!1216}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1214, file: !1213, line: 17, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 64, elements: !1218)
!1218 = !{!1219}
!1219 = !DISubrange(count: 1)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1064, file: !1065, line: 724, baseType: !1212, size: 64, offset: 3712)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1064, file: !1065, line: 749, baseType: !1222, offset: 3776)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1065, line: 290, elements: !477)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1064, file: !1065, line: 751, baseType: !148, size: 128, offset: 3776)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1064, file: !1065, line: 757, baseType: !821, size: 64, offset: 3904)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1064, file: !1065, line: 758, baseType: !821, size: 64, offset: 3968)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1064, file: !1065, line: 761, baseType: !1227, size: 320, offset: 4032)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !998, line: 34, size: 320, elements: !1228)
!1228 = !{!1229, !1230}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1227, file: !998, line: 35, baseType: !239, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1227, file: !998, line: 36, baseType: !1231, size: 256, offset: 64)
!1231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !828, size: 256, elements: !1002)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1064, file: !1065, line: 766, baseType: !299, size: 32, offset: 4352)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1064, file: !1065, line: 767, baseType: !299, size: 32, offset: 4384)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1064, file: !1065, line: 768, baseType: !299, size: 32, offset: 4416)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1064, file: !1065, line: 770, baseType: !299, size: 32, offset: 4448)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1064, file: !1065, line: 772, baseType: !407, size: 64, offset: 4480)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1064, file: !1065, line: 775, baseType: !7, size: 32, offset: 4544)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1064, file: !1065, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1064, file: !1065, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1064, file: !1065, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1064, file: !1065, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1064, file: !1065, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1064, file: !1065, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1064, file: !1065, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1064, file: !1065, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1064, file: !1065, line: 831, baseType: !407, size: 64, offset: 4672)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1064, file: !1065, line: 833, baseType: !1248, size: 384, offset: 4736)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !1249)
!1249 = !{!1250, !1255}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1248, file: !12, line: 26, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!364, !1254}
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, scope: !1248, file: !12, line: 27, baseType: !1256, size: 320, offset: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1248, file: !12, line: 27, size: 320, elements: !1257)
!1257 = !{!1258, !1268, !1295}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1256, file: !12, line: 36, baseType: !1259, size: 320)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1256, file: !12, line: 29, size: 320, elements: !1260)
!1260 = !{!1261, !1263, !1264, !1265, !1266, !1267}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1259, file: !12, line: 30, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1259, file: !12, line: 31, baseType: !233, size: 32, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1259, file: !12, line: 32, baseType: !233, size: 32, offset: 96)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1259, file: !12, line: 33, baseType: !233, size: 32, offset: 128)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1259, file: !12, line: 34, baseType: !239, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1259, file: !12, line: 35, baseType: !1262, size: 64, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1256, file: !12, line: 46, baseType: !1269, size: 192)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1256, file: !12, line: 38, size: 192, elements: !1270)
!1270 = !{!1271, !1272, !1273, !1294}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1269, file: !12, line: 39, baseType: !1181, size: 32)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1269, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, scope: !1269, file: !12, line: 41, baseType: !1274, size: 64, offset: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1269, file: !12, line: 41, size: 64, elements: !1275)
!1275 = !{!1276, !1284}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1274, file: !12, line: 42, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1279, line: 7, size: 128, elements: !1280)
!1279 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1280 = !{!1281, !1283}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1278, file: !1279, line: 8, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !168, line: 93, baseType: !169)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1278, file: !1279, line: 9, baseType: !169, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1274, file: !12, line: 43, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1287, line: 7, size: 64, elements: !1288)
!1287 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1288 = !{!1289, !1293}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1286, file: !1287, line: 8, baseType: !1290, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1287, line: 5, baseType: !1291)
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !234, line: 20, baseType: !1292)
!1292 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !236, line: 26, baseType: !299)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1286, file: !1287, line: 9, baseType: !1291, size: 32, offset: 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1269, file: !12, line: 45, baseType: !239, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1256, file: !12, line: 54, baseType: !1296, size: 256)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1256, file: !12, line: 48, size: 256, elements: !1297)
!1297 = !{!1298, !1306, !1307, !1308, !1309}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1296, file: !12, line: 49, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1301, line: 36, size: 64, elements: !1302)
!1301 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1302 = !{!1303, !1304, !1305}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1300, file: !1301, line: 37, baseType: !299, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1300, file: !1301, line: 38, baseType: !1052, size: 16, offset: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1300, file: !1301, line: 39, baseType: !1052, size: 16, offset: 48)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1296, file: !12, line: 50, baseType: !299, size: 32, offset: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1296, file: !12, line: 51, baseType: !299, size: 32, offset: 96)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1296, file: !12, line: 52, baseType: !407, size: 64, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1296, file: !12, line: 53, baseType: !407, size: 64, offset: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1064, file: !1065, line: 835, baseType: !1311, size: 32, offset: 5120)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !142, line: 22, baseType: !1312)
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !168, line: 28, baseType: !299)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1064, file: !1065, line: 836, baseType: !1311, size: 32, offset: 5152)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1064, file: !1065, line: 840, baseType: !407, size: 64, offset: 5184)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1064, file: !1065, line: 849, baseType: !1063, size: 64, offset: 5248)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1064, file: !1065, line: 852, baseType: !1063, size: 64, offset: 5312)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1064, file: !1065, line: 857, baseType: !148, size: 128, offset: 5376)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1064, file: !1065, line: 858, baseType: !148, size: 128, offset: 5504)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1064, file: !1065, line: 859, baseType: !1063, size: 64, offset: 5632)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1064, file: !1065, line: 867, baseType: !148, size: 128, offset: 5696)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1064, file: !1065, line: 868, baseType: !148, size: 128, offset: 5824)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1064, file: !1065, line: 871, baseType: !1323, size: 64, offset: 5952)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !33, line: 59, size: 768, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1331, !1332, !1339, !1340}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1324, file: !33, line: 61, baseType: !1077, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1324, file: !33, line: 62, baseType: !7, size: 32, offset: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1324, file: !33, line: 63, baseType: !576, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1324, file: !33, line: 65, baseType: !1330, size: 256, offset: 64)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 256, elements: !1002)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1324, file: !33, line: 66, baseType: !465, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1324, file: !33, line: 68, baseType: !1333, size: 128, offset: 384)
!1333 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1334, line: 40, baseType: !1335)
!1334 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1334, line: 36, size: 128, elements: !1336)
!1336 = !{!1337, !1338}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1335, file: !1334, line: 37, baseType: !576)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1335, file: !1334, line: 38, baseType: !148, size: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1324, file: !33, line: 69, baseType: !183, size: 128, align: 64, offset: 512)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1324, file: !33, line: 70, baseType: !1341, size: 128, offset: 640)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1342, size: 128, elements: !1218)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !33, line: 54, size: 128, elements: !1343)
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1342, file: !33, line: 55, baseType: !299, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1342, file: !33, line: 56, baseType: !1346, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !33, line: 56, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1064, file: !1065, line: 872, baseType: !1349, size: 512, offset: 6016)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 512, elements: !1002)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1064, file: !1065, line: 873, baseType: !148, size: 128, offset: 6528)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1064, file: !1065, line: 874, baseType: !148, size: 128, offset: 6656)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1064, file: !1065, line: 876, baseType: !1353, size: 64, offset: 6784)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1355, line: 26, size: 192, elements: !1356)
!1355 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1356 = !{!1357, !1358}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1354, file: !1355, line: 27, baseType: !7, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1354, file: !1355, line: 28, baseType: !1359, size: 128, offset: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1360, line: 43, size: 128, elements: !1361)
!1360 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1361 = !{!1362, !1363}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1359, file: !1360, line: 44, baseType: !627)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1359, file: !1360, line: 45, baseType: !148, size: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1064, file: !1065, line: 879, baseType: !538, size: 64, offset: 6848)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1064, file: !1065, line: 882, baseType: !538, size: 64, offset: 6912)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1064, file: !1065, line: 884, baseType: !239, size: 64, offset: 6976)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1064, file: !1065, line: 885, baseType: !239, size: 64, offset: 7040)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1064, file: !1065, line: 890, baseType: !239, size: 64, offset: 7104)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1064, file: !1065, line: 891, baseType: !1370, size: 128, offset: 7168)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1065, line: 242, size: 128, elements: !1371)
!1371 = !{!1372, !1373, !1374}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1370, file: !1065, line: 244, baseType: !239, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1370, file: !1065, line: 245, baseType: !239, size: 64, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1370, file: !1065, line: 246, baseType: !627, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1064, file: !1065, line: 900, baseType: !407, size: 64, offset: 7296)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1064, file: !1065, line: 901, baseType: !407, size: 64, offset: 7360)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1064, file: !1065, line: 904, baseType: !239, size: 64, offset: 7424)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1064, file: !1065, line: 907, baseType: !239, size: 64, offset: 7488)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1064, file: !1065, line: 910, baseType: !407, size: 64, offset: 7552)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1064, file: !1065, line: 911, baseType: !407, size: 64, offset: 7616)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1064, file: !1065, line: 914, baseType: !1382, size: 640, offset: 7680)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1383, line: 123, size: 640, elements: !1384)
!1383 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1384 = !{!1385, !1391, !1392}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1382, file: !1383, line: 124, baseType: !1386, size: 576)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1387, size: 576, elements: !482)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1383, line: 108, size: 192, elements: !1388)
!1388 = !{!1389, !1390}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1387, file: !1383, line: 109, baseType: !239, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1387, file: !1383, line: 110, baseType: !1190, size: 128, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1382, file: !1383, line: 125, baseType: !7, size: 32, offset: 576)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1382, file: !1383, line: 126, baseType: !7, size: 32, offset: 608)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1064, file: !1065, line: 917, baseType: !1394, size: 192, offset: 8320)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1383, line: 134, size: 192, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1394, file: !1383, line: 135, baseType: !183, size: 128, align: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1394, file: !1383, line: 136, baseType: !7, size: 32, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1064, file: !1065, line: 923, baseType: !1399, size: 64, offset: 8512)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1401)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1402, line: 111, size: 1280, elements: !1403)
!1402 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1423, !1424, !1425, !1426, !1427, !1428, !1535, !1536, !1537, !1538, !1564, !1567, !1577}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1401, file: !1402, line: 112, baseType: !594, size: 32)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1401, file: !1402, line: 120, baseType: !255, size: 32, offset: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1401, file: !1402, line: 121, baseType: !263, size: 32, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1401, file: !1402, line: 122, baseType: !255, size: 32, offset: 96)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1401, file: !1402, line: 123, baseType: !263, size: 32, offset: 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1401, file: !1402, line: 124, baseType: !255, size: 32, offset: 160)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1401, file: !1402, line: 125, baseType: !263, size: 32, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1401, file: !1402, line: 126, baseType: !255, size: 32, offset: 224)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1401, file: !1402, line: 127, baseType: !263, size: 32, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1401, file: !1402, line: 128, baseType: !7, size: 32, offset: 288)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1401, file: !1402, line: 129, baseType: !1415, size: 64, offset: 320)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1416, line: 26, baseType: !1417)
!1416 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1416, line: 24, size: 64, elements: !1418)
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1417, file: !1416, line: 25, baseType: !1420, size: 64)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 64, elements: !1421)
!1421 = !{!1422}
!1422 = !DISubrange(count: 2)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1401, file: !1402, line: 130, baseType: !1415, size: 64, offset: 384)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1401, file: !1402, line: 131, baseType: !1415, size: 64, offset: 448)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1401, file: !1402, line: 132, baseType: !1415, size: 64, offset: 512)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1401, file: !1402, line: 133, baseType: !1415, size: 64, offset: 576)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1401, file: !1402, line: 135, baseType: !245, size: 8, offset: 640)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1401, file: !1402, line: 137, baseType: !1429, size: 64, offset: 704)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1431, line: 189, size: 1664, elements: !1432)
!1431 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1432 = !{!1433, !1434, !1437, !1442, !1443, !1446, !1447, !1452, !1453, !1454, !1455, !1457, !1458, !1459, !1460, !1461, !1499, !1520}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1430, file: !1431, line: 190, baseType: !1077, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1430, file: !1431, line: 191, baseType: !1435, size: 32, offset: 32)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1431, line: 28, baseType: !1436)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !142, line: 98, baseType: !1291)
!1437 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !1431, line: 192, baseType: !1438, size: 192, offset: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !1431, line: 192, size: 192, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1438, file: !1431, line: 193, baseType: !148, size: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1438, file: !1431, line: 194, baseType: !607, size: 192, align: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1430, file: !1431, line: 199, baseType: !614, size: 256, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1430, file: !1431, line: 200, baseType: !1444, size: 64, offset: 512)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1431, line: 200, flags: DIFlagFwdDecl)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1430, file: !1431, line: 201, baseType: !143, size: 64, offset: 576)
!1447 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !1431, line: 202, baseType: !1448, size: 64, offset: 640)
!1448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !1431, line: 202, size: 64, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1448, file: !1431, line: 203, baseType: !361, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1448, file: !1431, line: 204, baseType: !361, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1430, file: !1431, line: 206, baseType: !361, size: 64, offset: 704)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1430, file: !1431, line: 207, baseType: !255, size: 32, offset: 768)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1430, file: !1431, line: 208, baseType: !263, size: 32, offset: 800)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1430, file: !1431, line: 209, baseType: !1456, size: 32, offset: 832)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1431, line: 31, baseType: !382)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1430, file: !1431, line: 210, baseType: !252, size: 16, offset: 864)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1430, file: !1431, line: 211, baseType: !252, size: 16, offset: 880)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1430, file: !1431, line: 215, baseType: !1052, size: 16, offset: 896)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1430, file: !1431, line: 222, baseType: !407, size: 64, offset: 960)
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !1431, line: 239, baseType: !1462, size: 320, offset: 1024)
!1462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !1431, line: 239, size: 320, elements: !1463)
!1463 = !{!1464, !1491}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1462, file: !1431, line: 240, baseType: !1465, size: 320)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1431, line: 108, size: 320, elements: !1466)
!1466 = !{!1467, !1468, !1480, !1483, !1490}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1465, file: !1431, line: 110, baseType: !407, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !1431, line: 111, baseType: !1469, size: 64, offset: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1465, file: !1431, line: 111, size: 64, elements: !1470)
!1470 = !{!1471, !1479}
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !1431, line: 112, baseType: !1472, size: 64)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1469, file: !1431, line: 112, size: 64, elements: !1473)
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1472, file: !1431, line: 114, baseType: !706, size: 16)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1472, file: !1431, line: 115, baseType: !1476, size: 48, offset: 16)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 48, elements: !1477)
!1477 = !{!1478}
!1478 = !DISubrange(count: 6)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1469, file: !1431, line: 121, baseType: !407, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1465, file: !1431, line: 123, baseType: !1481, size: 64, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1431, line: 96, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1465, file: !1431, line: 124, baseType: !1484, size: 64, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1431, line: 102, size: 192, elements: !1486)
!1486 = !{!1487, !1488, !1489}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1485, file: !1431, line: 103, baseType: !183, size: 128, align: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1485, file: !1431, line: 104, baseType: !1077, size: 32, offset: 128)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1485, file: !1431, line: 105, baseType: !315, size: 8, offset: 160)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1465, file: !1431, line: 125, baseType: !283, size: 64, offset: 256)
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !1431, line: 241, baseType: !1492, size: 320)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1462, file: !1431, line: 241, size: 320, elements: !1493)
!1493 = !{!1494, !1495, !1496, !1497, !1498}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1492, file: !1431, line: 242, baseType: !407, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1492, file: !1431, line: 243, baseType: !407, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1492, file: !1431, line: 244, baseType: !1481, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1492, file: !1431, line: 245, baseType: !1484, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1492, file: !1431, line: 246, baseType: !310, size: 64, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, scope: !1430, file: !1431, line: 254, baseType: !1500, size: 256, offset: 1344)
!1500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1430, file: !1431, line: 254, size: 256, elements: !1501)
!1501 = !{!1502, !1508}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1500, file: !1431, line: 255, baseType: !1503, size: 256)
!1503 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1431, line: 128, size: 256, elements: !1504)
!1504 = !{!1505, !1506}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1503, file: !1431, line: 129, baseType: !143, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1503, file: !1431, line: 130, baseType: !1507, size: 256)
!1507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 256, elements: !1002)
!1508 = !DIDerivedType(tag: DW_TAG_member, scope: !1500, file: !1431, line: 256, baseType: !1509, size: 256)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1500, file: !1431, line: 256, size: 256, elements: !1510)
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1509, file: !1431, line: 258, baseType: !148, size: 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1509, file: !1431, line: 259, baseType: !1513, size: 128, offset: 128)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1514, line: 22, size: 128, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1515 = !{!1516, !1519}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1513, file: !1514, line: 23, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1514, line: 23, flags: DIFlagFwdDecl)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1513, file: !1514, line: 24, baseType: !407, size: 64, offset: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1430, file: !1431, line: 274, baseType: !1521, size: 64, offset: 1600)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1431, line: 170, size: 192, elements: !1523)
!1523 = !{!1524, !1533, !1534}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1522, file: !1431, line: 171, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1431, line: 165, baseType: !1526)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!299, !1429, !1529, !1531, !1429}
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1482)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1503)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1522, file: !1431, line: 172, baseType: !1429, size: 64, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1522, file: !1431, line: 173, baseType: !1481, size: 64, offset: 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1401, file: !1402, line: 138, baseType: !1429, size: 64, offset: 768)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1401, file: !1402, line: 139, baseType: !1429, size: 64, offset: 832)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1401, file: !1402, line: 140, baseType: !1429, size: 64, offset: 896)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1401, file: !1402, line: 145, baseType: !1539, size: 64, offset: 960)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1541, line: 13, size: 896, elements: !1542)
!1541 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1542 = !{!1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1540, file: !1541, line: 14, baseType: !1077, size: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1540, file: !1541, line: 15, baseType: !594, size: 32, offset: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1540, file: !1541, line: 16, baseType: !594, size: 32, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1540, file: !1541, line: 21, baseType: !618, size: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1540, file: !1541, line: 27, baseType: !407, size: 64, offset: 192)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1540, file: !1541, line: 28, baseType: !407, size: 64, offset: 256)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1540, file: !1541, line: 29, baseType: !618, size: 64, offset: 320)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1540, file: !1541, line: 32, baseType: !469, size: 128, offset: 384)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1540, file: !1541, line: 33, baseType: !255, size: 32, offset: 512)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1540, file: !1541, line: 37, baseType: !618, size: 64, offset: 576)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1540, file: !1541, line: 44, baseType: !1554, size: 256, offset: 640)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1555, line: 15, size: 256, elements: !1556)
!1555 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1556 = !{!1557, !1558, !1559, !1560, !1561, !1562, !1563}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1554, file: !1555, line: 16, baseType: !627)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1554, file: !1555, line: 18, baseType: !299, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1554, file: !1555, line: 19, baseType: !299, size: 32, offset: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1554, file: !1555, line: 20, baseType: !299, size: 32, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1554, file: !1555, line: 21, baseType: !299, size: 32, offset: 96)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1554, file: !1555, line: 22, baseType: !407, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1554, file: !1555, line: 23, baseType: !407, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1401, file: !1402, line: 146, baseType: !1565, size: 64, offset: 1024)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !256, line: 18, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1401, file: !1402, line: 147, baseType: !1568, size: 64, offset: 1088)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1402, line: 25, size: 64, elements: !1570)
!1570 = !{!1571, !1572, !1573}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1569, file: !1402, line: 26, baseType: !594, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1569, file: !1402, line: 27, baseType: !299, size: 32, offset: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1569, file: !1402, line: 28, baseType: !1574, offset: 64)
!1574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, elements: !1575)
!1575 = !{!1576}
!1576 = !DISubrange(count: 0)
!1577 = !DIDerivedType(tag: DW_TAG_member, scope: !1401, file: !1402, line: 149, baseType: !1578, size: 128, offset: 1152)
!1578 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1401, file: !1402, line: 149, size: 128, elements: !1579)
!1579 = !{!1580, !1581}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1578, file: !1402, line: 150, baseType: !299, size: 32)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1578, file: !1402, line: 151, baseType: !183, size: 128, align: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1064, file: !1065, line: 926, baseType: !1399, size: 64, offset: 8576)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1064, file: !1065, line: 929, baseType: !1399, size: 64, offset: 8640)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1064, file: !1065, line: 933, baseType: !1429, size: 64, offset: 8704)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1064, file: !1065, line: 943, baseType: !1586, size: 128, offset: 8768)
!1586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 128, elements: !1587)
!1587 = !{!1588}
!1588 = !DISubrange(count: 16)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1064, file: !1065, line: 945, baseType: !1590, size: 64, offset: 8896)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1065, line: 49, flags: DIFlagFwdDecl)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1064, file: !1065, line: 956, baseType: !1593, size: 64, offset: 8960)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1065, line: 45, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1064, file: !1065, line: 959, baseType: !1596, size: 64, offset: 9024)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1065, line: 959, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1064, file: !1065, line: 962, baseType: !1599, size: 64, offset: 9088)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1065, line: 66, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1064, file: !1065, line: 966, baseType: !1602, size: 64, offset: 9152)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1604, line: 35, flags: DIFlagFwdDecl)
!1604 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1064, file: !1065, line: 969, baseType: !1606, size: 64, offset: 9216)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1608, line: 82, size: 7296, elements: !1609)
!1608 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615, !1616, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1645, !1654, !1655, !1657, !1658, !1659, !1662, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1692, !1693, !1700, !1701, !1702, !1703, !1704, !1705}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1607, file: !1608, line: 83, baseType: !1077, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1607, file: !1608, line: 84, baseType: !594, size: 32, offset: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1607, file: !1608, line: 85, baseType: !299, size: 32, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1607, file: !1608, line: 86, baseType: !148, size: 128, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1607, file: !1608, line: 88, baseType: !1333, size: 128, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1607, file: !1608, line: 91, baseType: !1063, size: 64, offset: 384)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1607, file: !1608, line: 94, baseType: !1617, size: 192, offset: 448)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1618, line: 30, size: 192, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1619 = !{!1620, !1621}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1617, file: !1618, line: 31, baseType: !148, size: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1617, file: !1618, line: 32, baseType: !1622, size: 64, offset: 128)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1623, line: 25, baseType: !1624)
!1623 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1623, line: 23, size: 64, elements: !1625)
!1625 = !{!1626}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1624, file: !1623, line: 24, baseType: !1217, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1607, file: !1608, line: 97, baseType: !465, size: 64, offset: 640)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1607, file: !1608, line: 100, baseType: !299, size: 32, offset: 704)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1607, file: !1608, line: 106, baseType: !299, size: 32, offset: 736)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1607, file: !1608, line: 107, baseType: !1063, size: 64, offset: 768)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1607, file: !1608, line: 110, baseType: !299, size: 32, offset: 832)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1607, file: !1608, line: 111, baseType: !7, size: 32, offset: 864)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1607, file: !1608, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1607, file: !1608, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1607, file: !1608, line: 128, baseType: !299, size: 32, offset: 928)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1607, file: !1608, line: 129, baseType: !148, size: 128, offset: 960)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1607, file: !1608, line: 132, baseType: !1139, size: 512, offset: 1088)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1607, file: !1608, line: 133, baseType: !1147, size: 64, offset: 1600)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1607, file: !1608, line: 140, baseType: !1640, size: 256, offset: 1664)
!1640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1641, size: 256, elements: !1421)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1608, line: 38, size: 128, elements: !1642)
!1642 = !{!1643, !1644}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1641, file: !1608, line: 39, baseType: !239, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1641, file: !1608, line: 40, baseType: !239, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1607, file: !1608, line: 146, baseType: !1646, size: 192, offset: 1920)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1608, line: 66, size: 192, elements: !1647)
!1647 = !{!1648}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1646, file: !1608, line: 67, baseType: !1649, size: 192)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1608, line: 47, size: 192, elements: !1650)
!1650 = !{!1651, !1652, !1653}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1649, file: !1608, line: 48, baseType: !620, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1649, file: !1608, line: 49, baseType: !620, size: 64, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1649, file: !1608, line: 50, baseType: !620, size: 64, offset: 128)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1607, file: !1608, line: 150, baseType: !1382, size: 640, offset: 2112)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1607, file: !1608, line: 153, baseType: !1656, size: 256, offset: 2752)
!1656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1323, size: 256, elements: !1002)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1607, file: !1608, line: 159, baseType: !1323, size: 64, offset: 3008)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1607, file: !1608, line: 162, baseType: !299, size: 32, offset: 3072)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1607, file: !1608, line: 164, baseType: !1660, size: 64, offset: 3136)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1608, line: 164, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1607, file: !1608, line: 175, baseType: !1663, size: 32, offset: 3200)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !206, line: 805, baseType: !1664)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !206, line: 798, size: 32, elements: !1665)
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1664, file: !206, line: 803, baseType: !205, size: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1664, file: !206, line: 804, baseType: !576, offset: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1607, file: !1608, line: 176, baseType: !239, size: 64, offset: 3264)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1607, file: !1608, line: 176, baseType: !239, size: 64, offset: 3328)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1607, file: !1608, line: 176, baseType: !239, size: 64, offset: 3392)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1607, file: !1608, line: 176, baseType: !239, size: 64, offset: 3456)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1607, file: !1608, line: 177, baseType: !239, size: 64, offset: 3520)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1607, file: !1608, line: 178, baseType: !239, size: 64, offset: 3584)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1607, file: !1608, line: 179, baseType: !1370, size: 128, offset: 3648)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1607, file: !1608, line: 180, baseType: !407, size: 64, offset: 3776)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1607, file: !1608, line: 180, baseType: !407, size: 64, offset: 3840)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1607, file: !1608, line: 180, baseType: !407, size: 64, offset: 3904)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1607, file: !1608, line: 180, baseType: !407, size: 64, offset: 3968)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1607, file: !1608, line: 181, baseType: !407, size: 64, offset: 4032)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1607, file: !1608, line: 181, baseType: !407, size: 64, offset: 4096)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1607, file: !1608, line: 181, baseType: !407, size: 64, offset: 4160)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1607, file: !1608, line: 181, baseType: !407, size: 64, offset: 4224)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1607, file: !1608, line: 182, baseType: !407, size: 64, offset: 4288)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1607, file: !1608, line: 182, baseType: !407, size: 64, offset: 4352)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1607, file: !1608, line: 182, baseType: !407, size: 64, offset: 4416)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1607, file: !1608, line: 182, baseType: !407, size: 64, offset: 4480)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1607, file: !1608, line: 183, baseType: !407, size: 64, offset: 4544)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1607, file: !1608, line: 183, baseType: !407, size: 64, offset: 4608)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1607, file: !1608, line: 184, baseType: !1690, offset: 4672)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1691, line: 12, elements: !477)
!1691 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1607, file: !1608, line: 192, baseType: !241, size: 64, offset: 4672)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1607, file: !1608, line: 203, baseType: !1694, size: 2048, offset: 4736)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1695, size: 2048, elements: !1587)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1696, line: 43, size: 128, elements: !1697)
!1696 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1697 = !{!1698, !1699}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1695, file: !1696, line: 44, baseType: !406, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1695, file: !1696, line: 45, baseType: !406, size: 64, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1607, file: !1608, line: 220, baseType: !315, size: 8, offset: 6784)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1607, file: !1608, line: 221, baseType: !1052, size: 16, offset: 6800)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1607, file: !1608, line: 222, baseType: !1052, size: 16, offset: 6816)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1607, file: !1608, line: 224, baseType: !821, size: 64, offset: 6848)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1607, file: !1608, line: 227, baseType: !1020, size: 192, offset: 6912)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1607, file: !1608, line: 233, baseType: !1020, size: 192, offset: 7104)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1064, file: !1065, line: 970, baseType: !1707, size: 64, offset: 9280)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1608, line: 20, size: 16576, elements: !1709)
!1709 = !{!1710, !1711, !1712, !1713}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1708, file: !1608, line: 21, baseType: !576)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1708, file: !1608, line: 22, baseType: !1077, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1708, file: !1608, line: 23, baseType: !1333, size: 128, offset: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1708, file: !1608, line: 24, baseType: !1714, size: 16384, offset: 192)
!1714 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1715, size: 16384, elements: !1735)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1618, line: 49, size: 256, elements: !1716)
!1716 = !{!1717}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1715, file: !1618, line: 50, baseType: !1718, size: 256)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1618, line: 35, size: 256, elements: !1719)
!1719 = !{!1720, !1727, !1728, !1734}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1718, file: !1618, line: 37, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1722, line: 19, baseType: !1723)
!1722 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1722, line: 18, baseType: !1725)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{null, !299}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1718, file: !1618, line: 38, baseType: !407, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1718, file: !1618, line: 44, baseType: !1729, size: 64, offset: 128)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1722, line: 22, baseType: !1730)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1722, line: 21, baseType: !1732)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1718, file: !1618, line: 46, baseType: !1622, size: 64, offset: 192)
!1735 = !{!1736}
!1736 = !DISubrange(count: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1064, file: !1065, line: 971, baseType: !1622, size: 64, offset: 9344)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1064, file: !1065, line: 972, baseType: !1622, size: 64, offset: 9408)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1064, file: !1065, line: 974, baseType: !1622, size: 64, offset: 9472)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1064, file: !1065, line: 975, baseType: !1617, size: 192, offset: 9536)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1064, file: !1065, line: 976, baseType: !407, size: 64, offset: 9728)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1064, file: !1065, line: 977, baseType: !404, size: 64, offset: 9792)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1064, file: !1065, line: 978, baseType: !7, size: 32, offset: 9856)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1064, file: !1065, line: 980, baseType: !186, size: 64, offset: 9920)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1064, file: !1065, line: 989, baseType: !1746, size: 128, offset: 9984)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1747, line: 35, size: 128, elements: !1748)
!1747 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1748 = !{!1749, !1750, !1751}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1746, file: !1747, line: 36, baseType: !299, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1746, file: !1747, line: 37, baseType: !594, size: 32, offset: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1746, file: !1747, line: 38, baseType: !1752, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1747, line: 23, flags: DIFlagFwdDecl)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1064, file: !1065, line: 992, baseType: !239, size: 64, offset: 10112)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1064, file: !1065, line: 993, baseType: !239, size: 64, offset: 10176)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1064, file: !1065, line: 996, baseType: !576, offset: 10240)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1064, file: !1065, line: 999, baseType: !627, offset: 10240)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1064, file: !1065, line: 1001, baseType: !1759, size: 64, offset: 10240)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1065, line: 636, size: 64, elements: !1760)
!1760 = !{!1761}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1759, file: !1065, line: 637, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1064, file: !1065, line: 1005, baseType: !599, size: 128, offset: 10304)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1064, file: !1065, line: 1007, baseType: !1063, size: 64, offset: 10432)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1064, file: !1065, line: 1009, baseType: !1766, size: 64, offset: 10496)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1065, line: 1009, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1064, file: !1065, line: 1043, baseType: !143, size: 64, offset: 10560)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1064, file: !1065, line: 1046, baseType: !1770, size: 64, offset: 10624)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1065, line: 41, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1064, file: !1065, line: 1050, baseType: !1773, size: 64, offset: 10688)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1065, line: 42, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1064, file: !1065, line: 1054, baseType: !1776, size: 64, offset: 10752)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1065, line: 55, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1064, file: !1065, line: 1056, baseType: !1779, size: 64, offset: 10816)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1065, line: 40, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1064, file: !1065, line: 1058, baseType: !1782, size: 64, offset: 10880)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1784, line: 99, size: 704, elements: !1785)
!1784 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1785 = !{!1786, !1787, !1788, !1789, !1790, !1791, !1792, !1811, !1812}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1783, file: !1784, line: 100, baseType: !618, size: 64)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1783, file: !1784, line: 101, baseType: !594, size: 32, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1783, file: !1784, line: 102, baseType: !594, size: 32, offset: 96)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1783, file: !1784, line: 105, baseType: !576, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1783, file: !1784, line: 107, baseType: !252, size: 16, offset: 128)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1783, file: !1784, line: 109, baseType: !572, size: 128, offset: 192)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1783, file: !1784, line: 110, baseType: !1793, size: 64, offset: 320)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1784, line: 73, size: 448, elements: !1795)
!1795 = !{!1796, !1799, !1800, !1805, !1810}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1794, file: !1784, line: 74, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1784, line: 74, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1794, file: !1784, line: 75, baseType: !1782, size: 64, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, scope: !1794, file: !1784, line: 83, baseType: !1801, size: 128, offset: 128)
!1801 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1794, file: !1784, line: 83, size: 128, elements: !1802)
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1801, file: !1784, line: 84, baseType: !148, size: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1801, file: !1784, line: 85, baseType: !782, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, scope: !1794, file: !1784, line: 87, baseType: !1806, size: 128, offset: 256)
!1806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1794, file: !1784, line: 87, size: 128, elements: !1807)
!1807 = !{!1808, !1809}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1806, file: !1784, line: 88, baseType: !469, size: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1806, file: !1784, line: 89, baseType: !183, size: 128, align: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1794, file: !1784, line: 92, baseType: !7, size: 32, offset: 384)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1783, file: !1784, line: 111, baseType: !465, size: 64, offset: 384)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1783, file: !1784, line: 113, baseType: !1813, size: 256, offset: 448)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1814, line: 102, size: 256, elements: !1815)
!1814 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1815 = !{!1816, !1817, !1818}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1813, file: !1814, line: 103, baseType: !618, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1813, file: !1814, line: 104, baseType: !148, size: 128, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1813, file: !1814, line: 105, baseType: !1819, size: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1814, line: 21, baseType: !1820)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{null, !1823}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1064, file: !1065, line: 1061, baseType: !1825, size: 64, offset: 10944)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1065, line: 43, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1064, file: !1065, line: 1064, baseType: !407, size: 64, offset: 11008)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1064, file: !1065, line: 1065, baseType: !1829, size: 64, offset: 11072)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1618, line: 14, baseType: !1831)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1618, line: 12, size: 384, elements: !1832)
!1832 = !{!1833}
!1833 = !DIDerivedType(tag: DW_TAG_member, scope: !1831, file: !1618, line: 13, baseType: !1834, size: 384)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1831, file: !1618, line: 13, size: 384, elements: !1835)
!1835 = !{!1836, !1837, !1838, !1839}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1834, file: !1618, line: 13, baseType: !299, size: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1834, file: !1618, line: 13, baseType: !299, size: 32, offset: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1834, file: !1618, line: 13, baseType: !299, size: 32, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1834, file: !1618, line: 13, baseType: !1840, size: 256, offset: 128)
!1840 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1841, line: 32, size: 256, elements: !1842)
!1841 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1842 = !{!1843, !1848, !1861, !1867, !1876, !1896, !1901}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1840, file: !1841, line: 37, baseType: !1844, size: 64)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1840, file: !1841, line: 34, size: 64, elements: !1845)
!1845 = !{!1846, !1847}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1844, file: !1841, line: 35, baseType: !1312, size: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1844, file: !1841, line: 36, baseType: !261, size: 32, offset: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1840, file: !1841, line: 45, baseType: !1849, size: 192)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1840, file: !1841, line: 40, size: 192, elements: !1850)
!1850 = !{!1851, !1853, !1854, !1860}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1849, file: !1841, line: 41, baseType: !1852, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !168, line: 95, baseType: !299)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1849, file: !1841, line: 42, baseType: !299, size: 32, offset: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1849, file: !1841, line: 43, baseType: !1855, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1841, line: 11, baseType: !1856)
!1856 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1841, line: 8, size: 64, elements: !1857)
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1856, file: !1841, line: 9, baseType: !299, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1856, file: !1841, line: 10, baseType: !143, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1849, file: !1841, line: 44, baseType: !299, size: 32, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1840, file: !1841, line: 52, baseType: !1862, size: 128)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1840, file: !1841, line: 48, size: 128, elements: !1863)
!1863 = !{!1864, !1865, !1866}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1862, file: !1841, line: 49, baseType: !1312, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1862, file: !1841, line: 50, baseType: !261, size: 32, offset: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1862, file: !1841, line: 51, baseType: !1855, size: 64, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1840, file: !1841, line: 61, baseType: !1868, size: 256)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1840, file: !1841, line: 55, size: 256, elements: !1869)
!1869 = !{!1870, !1871, !1872, !1873, !1875}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1868, file: !1841, line: 56, baseType: !1312, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1868, file: !1841, line: 57, baseType: !261, size: 32, offset: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1868, file: !1841, line: 58, baseType: !299, size: 32, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1868, file: !1841, line: 59, baseType: !1874, size: 64, offset: 128)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !168, line: 94, baseType: !403)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1868, file: !1841, line: 60, baseType: !1874, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1840, file: !1841, line: 95, baseType: !1877, size: 256)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1840, file: !1841, line: 64, size: 256, elements: !1878)
!1878 = !{!1879, !1880}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1877, file: !1841, line: 65, baseType: !143, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, scope: !1877, file: !1841, line: 77, baseType: !1881, size: 192, offset: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1877, file: !1841, line: 77, size: 192, elements: !1882)
!1882 = !{!1883, !1884, !1891}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1881, file: !1841, line: 82, baseType: !1052, size: 16)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1881, file: !1841, line: 88, baseType: !1885, size: 192)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1881, file: !1841, line: 84, size: 192, elements: !1886)
!1886 = !{!1887, !1889, !1890}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1885, file: !1841, line: 85, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 64, elements: !1177)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1885, file: !1841, line: 86, baseType: !143, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1885, file: !1841, line: 87, baseType: !143, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1881, file: !1841, line: 93, baseType: !1892, size: 96)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1881, file: !1841, line: 90, size: 96, elements: !1893)
!1893 = !{!1894, !1895}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1892, file: !1841, line: 91, baseType: !1888, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1892, file: !1841, line: 92, baseType: !235, size: 32, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1840, file: !1841, line: 101, baseType: !1897, size: 128)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1840, file: !1841, line: 98, size: 128, elements: !1898)
!1898 = !{!1899, !1900}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1897, file: !1841, line: 99, baseType: !364, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1897, file: !1841, line: 100, baseType: !299, size: 32, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1840, file: !1841, line: 108, baseType: !1902, size: 128)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1840, file: !1841, line: 104, size: 128, elements: !1903)
!1903 = !{!1904, !1905, !1906}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1902, file: !1841, line: 105, baseType: !143, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1902, file: !1841, line: 106, baseType: !299, size: 32, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1902, file: !1841, line: 107, baseType: !7, size: 32, offset: 96)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1064, file: !1065, line: 1067, baseType: !1690, offset: 11136)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1064, file: !1065, line: 1099, baseType: !1909, size: 64, offset: 11136)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1065, line: 56, flags: DIFlagFwdDecl)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1064, file: !1065, line: 1103, baseType: !148, size: 128, offset: 11200)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1064, file: !1065, line: 1104, baseType: !1913, size: 64, offset: 11328)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1065, line: 46, flags: DIFlagFwdDecl)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1064, file: !1065, line: 1105, baseType: !1020, size: 192, offset: 11392)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1064, file: !1065, line: 1106, baseType: !7, size: 32, offset: 11584)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1064, file: !1065, line: 1109, baseType: !1918, size: 128, offset: 11648)
!1918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1919, size: 128, elements: !1421)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1065, line: 51, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1064, file: !1065, line: 1110, baseType: !1020, size: 192, offset: 11776)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1064, file: !1065, line: 1111, baseType: !148, size: 128, offset: 11968)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1064, file: !1065, line: 1173, baseType: !1924, size: 64, offset: 12096)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1926, line: 62, size: 256, align: 256, elements: !1927)
!1926 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1927 = !{!1928, !1929, !1930, !1935}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1925, file: !1926, line: 75, baseType: !235, size: 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1925, file: !1926, line: 90, baseType: !235, size: 32, offset: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1925, file: !1926, line: 124, baseType: !1931, size: 64, offset: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1925, file: !1926, line: 109, size: 64, elements: !1932)
!1932 = !{!1933, !1934}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1931, file: !1926, line: 110, baseType: !240, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1931, file: !1926, line: 112, baseType: !240, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1925, file: !1926, line: 144, baseType: !235, size: 32, offset: 128)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1064, file: !1065, line: 1174, baseType: !233, size: 32, offset: 12160)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1064, file: !1065, line: 1179, baseType: !407, size: 64, offset: 12224)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1064, file: !1065, line: 1182, baseType: !1939, size: 128, offset: 12288)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !998, line: 76, size: 128, elements: !1940)
!1940 = !{!1941, !1946, !1947}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1939, file: !998, line: 85, baseType: !1942, size: 64)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1943, line: 7, size: 64, elements: !1944)
!1943 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1944 = !{!1945}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1942, file: !1943, line: 12, baseType: !1214, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1939, file: !998, line: 88, baseType: !315, size: 8, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1939, file: !998, line: 95, baseType: !315, size: 8, offset: 72)
!1948 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !1065, line: 1184, baseType: !1949, size: 128, offset: 12416)
!1949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1064, file: !1065, line: 1184, size: 128, elements: !1950)
!1950 = !{!1951, !1952}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1949, file: !1065, line: 1185, baseType: !1077, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1949, file: !1065, line: 1186, baseType: !183, size: 128, align: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1064, file: !1065, line: 1190, baseType: !1954, size: 64, offset: 12544)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1065, line: 53, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1064, file: !1065, line: 1192, baseType: !1957, size: 128, offset: 12608)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !998, line: 64, size: 128, elements: !1958)
!1958 = !{!1959, !1960, !1961}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1957, file: !998, line: 65, baseType: !554, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1957, file: !998, line: 67, baseType: !235, size: 32, offset: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1957, file: !998, line: 68, baseType: !235, size: 32, offset: 96)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1064, file: !1065, line: 1206, baseType: !299, size: 32, offset: 12736)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1064, file: !1065, line: 1207, baseType: !299, size: 32, offset: 12768)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1064, file: !1065, line: 1209, baseType: !407, size: 64, offset: 12800)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1064, file: !1065, line: 1219, baseType: !239, size: 64, offset: 12864)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1064, file: !1065, line: 1220, baseType: !239, size: 64, offset: 12928)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1064, file: !1065, line: 1317, baseType: !299, size: 32, offset: 12992)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1064, file: !1065, line: 1319, baseType: !1063, size: 64, offset: 13056)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1064, file: !1065, line: 1322, baseType: !1970, size: 64, offset: 13120)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1972, line: 56, size: 512, elements: !1973)
!1972 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1973 = !{!1974, !1975, !1976, !1977, !1978, !1979, !1980, !1982}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1971, file: !1972, line: 57, baseType: !1970, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1971, file: !1972, line: 58, baseType: !143, size: 64, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1971, file: !1972, line: 59, baseType: !407, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1971, file: !1972, line: 60, baseType: !407, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1971, file: !1972, line: 61, baseType: !667, size: 64, offset: 256)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1971, file: !1972, line: 62, baseType: !7, size: 32, offset: 320)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1971, file: !1972, line: 63, baseType: !1981, size: 64, offset: 384)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !142, line: 153, baseType: !239)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1971, file: !1972, line: 64, baseType: !1983, size: 64, offset: 448)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1064, file: !1065, line: 1326, baseType: !1077, size: 32, offset: 13184)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1064, file: !1065, line: 1342, baseType: !143, size: 64, offset: 13248)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1064, file: !1065, line: 1343, baseType: !240, size: 64, offset: 13312)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1064, file: !1065, line: 1344, baseType: !239, size: 64, offset: 13376)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1064, file: !1065, line: 1345, baseType: !240, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1064, file: !1065, line: 1346, baseType: !240, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1064, file: !1065, line: 1347, baseType: !240, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1064, file: !1065, line: 1348, baseType: !183, size: 128, align: 64, offset: 13504)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1064, file: !1065, line: 1358, baseType: !1994, size: 34816, offset: 13824)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1995, line: 485, size: 34816, elements: !1996)
!1995 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1996 = !{!1997, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2026, !2027, !2028, !2029, !2030, !2031, !2034, !2035, !2036}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1994, file: !1995, line: 487, baseType: !1998, size: 192)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1999, size: 192, elements: !482)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2000, line: 16, size: 64, elements: !2001)
!2000 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2001 = !{!2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1999, file: !2000, line: 17, baseType: !706, size: 16)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1999, file: !2000, line: 18, baseType: !706, size: 16, offset: 16)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1999, file: !2000, line: 19, baseType: !706, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1999, file: !2000, line: 19, baseType: !706, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1999, file: !2000, line: 19, baseType: !706, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1999, file: !2000, line: 19, baseType: !706, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1999, file: !2000, line: 19, baseType: !706, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1999, file: !2000, line: 20, baseType: !706, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1999, file: !2000, line: 20, baseType: !706, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1999, file: !2000, line: 20, baseType: !706, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1999, file: !2000, line: 20, baseType: !706, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1999, file: !2000, line: 20, baseType: !706, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1999, file: !2000, line: 20, baseType: !706, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1994, file: !1995, line: 491, baseType: !407, size: 64, offset: 192)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1994, file: !1995, line: 495, baseType: !252, size: 16, offset: 256)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1994, file: !1995, line: 496, baseType: !252, size: 16, offset: 272)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1994, file: !1995, line: 497, baseType: !252, size: 16, offset: 288)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1994, file: !1995, line: 498, baseType: !252, size: 16, offset: 304)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1994, file: !1995, line: 502, baseType: !407, size: 64, offset: 320)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1994, file: !1995, line: 503, baseType: !407, size: 64, offset: 384)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1994, file: !1995, line: 514, baseType: !2023, size: 256, offset: 448)
!2023 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2024, size: 256, elements: !1002)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1995, line: 483, flags: DIFlagFwdDecl)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1994, file: !1995, line: 516, baseType: !407, size: 64, offset: 704)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1994, file: !1995, line: 518, baseType: !407, size: 64, offset: 768)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1994, file: !1995, line: 520, baseType: !407, size: 64, offset: 832)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1994, file: !1995, line: 521, baseType: !407, size: 64, offset: 896)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1994, file: !1995, line: 522, baseType: !407, size: 64, offset: 960)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1994, file: !1995, line: 528, baseType: !2032, size: 64, offset: 1024)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1995, line: 10, flags: DIFlagFwdDecl)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1994, file: !1995, line: 535, baseType: !407, size: 64, offset: 1088)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1994, file: !1995, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1994, file: !1995, line: 540, baseType: !2037, size: 33280, offset: 1536)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2038, line: 317, size: 33280, elements: !2039)
!2038 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2039 = !{!2040, !2041, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2037, file: !2038, line: 330, baseType: !7, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2037, file: !2038, line: 337, baseType: !407, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2037, file: !2038, line: 348, baseType: !2043, size: 32768, offset: 512)
!2043 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2038, line: 304, size: 32768, elements: !2044)
!2044 = !{!2045, !2060, !2099, !2149, !2162}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2043, file: !2038, line: 305, baseType: !2046, size: 896)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2038, line: 12, size: 896, elements: !2047)
!2047 = !{!2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2059}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2046, file: !2038, line: 13, baseType: !233, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2046, file: !2038, line: 14, baseType: !233, size: 32, offset: 32)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2046, file: !2038, line: 15, baseType: !233, size: 32, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2046, file: !2038, line: 16, baseType: !233, size: 32, offset: 96)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2046, file: !2038, line: 17, baseType: !233, size: 32, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2046, file: !2038, line: 18, baseType: !233, size: 32, offset: 160)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2046, file: !2038, line: 19, baseType: !233, size: 32, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2046, file: !2038, line: 22, baseType: !2056, size: 640, offset: 224)
!2056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 640, elements: !2057)
!2057 = !{!2058}
!2058 = !DISubrange(count: 20)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2046, file: !2038, line: 25, baseType: !233, size: 32, offset: 864)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2043, file: !2038, line: 306, baseType: !2061, size: 4096, align: 128)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2038, line: 34, size: 4096, align: 128, elements: !2062)
!2062 = !{!2063, !2064, !2065, !2066, !2067, !2082, !2083, !2084, !2088, !2090, !2094}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2061, file: !2038, line: 35, baseType: !706, size: 16)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2061, file: !2038, line: 36, baseType: !706, size: 16, offset: 16)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2061, file: !2038, line: 37, baseType: !706, size: 16, offset: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2061, file: !2038, line: 38, baseType: !706, size: 16, offset: 48)
!2067 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !2038, line: 39, baseType: !2068, size: 128, offset: 64)
!2068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2061, file: !2038, line: 39, size: 128, elements: !2069)
!2069 = !{!2070, !2075}
!2070 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !2038, line: 40, baseType: !2071, size: 128)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2068, file: !2038, line: 40, size: 128, elements: !2072)
!2072 = !{!2073, !2074}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2071, file: !2038, line: 41, baseType: !239, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2071, file: !2038, line: 42, baseType: !239, size: 64, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, scope: !2068, file: !2038, line: 44, baseType: !2076, size: 128)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2068, file: !2038, line: 44, size: 128, elements: !2077)
!2077 = !{!2078, !2079, !2080, !2081}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2076, file: !2038, line: 45, baseType: !233, size: 32)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2076, file: !2038, line: 46, baseType: !233, size: 32, offset: 32)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2076, file: !2038, line: 47, baseType: !233, size: 32, offset: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2076, file: !2038, line: 48, baseType: !233, size: 32, offset: 96)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2061, file: !2038, line: 51, baseType: !233, size: 32, offset: 192)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2061, file: !2038, line: 52, baseType: !233, size: 32, offset: 224)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2061, file: !2038, line: 55, baseType: !2085, size: 1024, offset: 256)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 1024, elements: !2086)
!2086 = !{!2087}
!2087 = !DISubrange(count: 32)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2061, file: !2038, line: 58, baseType: !2089, size: 2048, offset: 1280)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 2048, elements: !1735)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2061, file: !2038, line: 60, baseType: !2091, size: 384, offset: 3328)
!2091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 384, elements: !2092)
!2092 = !{!2093}
!2093 = !DISubrange(count: 12)
!2094 = !DIDerivedType(tag: DW_TAG_member, scope: !2061, file: !2038, line: 62, baseType: !2095, size: 384, offset: 3712)
!2095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2061, file: !2038, line: 62, size: 384, elements: !2096)
!2096 = !{!2097, !2098}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2095, file: !2038, line: 63, baseType: !2091, size: 384)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2095, file: !2038, line: 64, baseType: !2091, size: 384)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2043, file: !2038, line: 307, baseType: !2100, size: 1088)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2038, line: 79, size: 1088, elements: !2101)
!2101 = !{!2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2148}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2100, file: !2038, line: 80, baseType: !233, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2100, file: !2038, line: 81, baseType: !233, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2100, file: !2038, line: 82, baseType: !233, size: 32, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2100, file: !2038, line: 83, baseType: !233, size: 32, offset: 96)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2100, file: !2038, line: 84, baseType: !233, size: 32, offset: 128)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2100, file: !2038, line: 85, baseType: !233, size: 32, offset: 160)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2100, file: !2038, line: 86, baseType: !233, size: 32, offset: 192)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2100, file: !2038, line: 88, baseType: !2056, size: 640, offset: 224)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2100, file: !2038, line: 89, baseType: !1199, size: 8, offset: 864)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2100, file: !2038, line: 90, baseType: !1199, size: 8, offset: 872)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2100, file: !2038, line: 91, baseType: !1199, size: 8, offset: 880)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2100, file: !2038, line: 92, baseType: !1199, size: 8, offset: 888)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2100, file: !2038, line: 93, baseType: !1199, size: 8, offset: 896)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2100, file: !2038, line: 94, baseType: !1199, size: 8, offset: 904)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2100, file: !2038, line: 95, baseType: !2117, size: 64, offset: 960)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2119, line: 11, size: 128, elements: !2120)
!2119 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2120 = !{!2121, !2122}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2118, file: !2119, line: 12, baseType: !364, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2118, file: !2119, line: 13, baseType: !2123, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2125, line: 56, size: 1344, elements: !2126)
!2125 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2126 = !{!2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144, !2145, !2146, !2147}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2124, file: !2125, line: 61, baseType: !407, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2124, file: !2125, line: 62, baseType: !407, size: 64, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2124, file: !2125, line: 63, baseType: !407, size: 64, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2124, file: !2125, line: 64, baseType: !407, size: 64, offset: 192)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2124, file: !2125, line: 65, baseType: !407, size: 64, offset: 256)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2124, file: !2125, line: 66, baseType: !407, size: 64, offset: 320)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2124, file: !2125, line: 68, baseType: !407, size: 64, offset: 384)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2124, file: !2125, line: 69, baseType: !407, size: 64, offset: 448)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2124, file: !2125, line: 70, baseType: !407, size: 64, offset: 512)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2124, file: !2125, line: 71, baseType: !407, size: 64, offset: 576)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2124, file: !2125, line: 72, baseType: !407, size: 64, offset: 640)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2124, file: !2125, line: 73, baseType: !407, size: 64, offset: 704)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2124, file: !2125, line: 74, baseType: !407, size: 64, offset: 768)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2124, file: !2125, line: 75, baseType: !407, size: 64, offset: 832)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2124, file: !2125, line: 76, baseType: !407, size: 64, offset: 896)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2124, file: !2125, line: 81, baseType: !407, size: 64, offset: 960)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2124, file: !2125, line: 83, baseType: !407, size: 64, offset: 1024)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2124, file: !2125, line: 84, baseType: !407, size: 64, offset: 1088)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2124, file: !2125, line: 85, baseType: !407, size: 64, offset: 1152)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2124, file: !2125, line: 86, baseType: !407, size: 64, offset: 1216)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2124, file: !2125, line: 87, baseType: !407, size: 64, offset: 1280)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2100, file: !2038, line: 96, baseType: !233, size: 32, offset: 1024)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2043, file: !2038, line: 308, baseType: !2150, size: 4608, align: 512)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2038, line: 289, size: 4608, align: 512, elements: !2151)
!2151 = !{!2152, !2153, !2160}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2150, file: !2038, line: 290, baseType: !2061, size: 4096, align: 128)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2150, file: !2038, line: 291, baseType: !2154, size: 512, offset: 4096)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2038, line: 268, size: 512, elements: !2155)
!2155 = !{!2156, !2157, !2158}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2154, file: !2038, line: 269, baseType: !239, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2154, file: !2038, line: 270, baseType: !239, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2154, file: !2038, line: 271, baseType: !2159, size: 384, offset: 128)
!2159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 384, elements: !1477)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2150, file: !2038, line: 292, baseType: !2161, offset: 4608)
!2161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1199, elements: !1575)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2043, file: !2038, line: 309, baseType: !2163, size: 32768)
!2163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1199, size: 32768, elements: !2164)
!2164 = !{!2165}
!2165 = !DISubrange(count: 4096)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1060, file: !556, line: 378, baseType: !2167, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1056, file: !556, line: 384, baseType: !1354, size: 192, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !825, file: !556, line: 500, baseType: !576, offset: 6656)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !825, file: !556, line: 501, baseType: !2171, size: 64, offset: 6656)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !556, line: 387, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !825, file: !556, line: 516, baseType: !1565, size: 64, offset: 6720)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !825, file: !556, line: 519, baseType: !170, size: 64, offset: 6784)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !825, file: !556, line: 521, baseType: !2176, size: 64, offset: 6848)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !556, line: 521, flags: DIFlagFwdDecl)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !825, file: !556, line: 545, baseType: !594, size: 32, offset: 6912)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !825, file: !556, line: 548, baseType: !315, size: 8, offset: 6944)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !825, file: !556, line: 550, baseType: !2181, offset: 6952)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2182, line: 142, elements: !477)
!2182 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !825, file: !556, line: 554, baseType: !1813, size: 256, offset: 6976)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !825, file: !556, line: 557, baseType: !233, size: 32, offset: 7232)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !822, file: !556, line: 565, baseType: !2186, offset: 7296)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, elements: !2187)
!2187 = !{!2188}
!2188 = !DISubrange(count: -1)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !818, file: !556, line: 151, baseType: !594, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !811, file: !556, line: 156, baseType: !576, offset: 256)
!2191 = !DIDerivedType(tag: DW_TAG_member, scope: !560, file: !556, line: 159, baseType: !2192, size: 128)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !560, file: !556, line: 159, size: 128, elements: !2193)
!2193 = !{!2194, !2258}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2192, file: !556, line: 161, baseType: !2195, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !48, line: 110, size: 1152, elements: !2197)
!2197 = !{!2198, !2208, !2229, !2230, !2231, !2232, !2233, !2245, !2246, !2247}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2196, file: !48, line: 111, baseType: !2199, size: 384)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !48, line: 19, size: 384, elements: !2200)
!2200 = !{!2201, !2203, !2204, !2205, !2206, !2207}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2199, file: !48, line: 20, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2199, file: !48, line: 21, baseType: !2202, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2199, file: !48, line: 22, baseType: !2202, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2199, file: !48, line: 23, baseType: !407, size: 64, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2199, file: !48, line: 24, baseType: !407, size: 64, offset: 256)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2199, file: !48, line: 25, baseType: !407, size: 64, offset: 320)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2196, file: !48, line: 112, baseType: !2209, size: 64, offset: 384)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2211, line: 105, size: 128, elements: !2212)
!2211 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2212 = !{!2213, !2214}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2210, file: !2211, line: 110, baseType: !407, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2210, file: !2211, line: 118, baseType: !2215, size: 64, offset: 64)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2211, line: 95, size: 448, elements: !2217)
!2217 = !{!2218, !2219, !2224, !2225, !2226, !2227, !2228}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2216, file: !2211, line: 96, baseType: !618, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2216, file: !2211, line: 97, baseType: !2220, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2211, line: 60, baseType: !2222)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{null, !2209}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2216, file: !2211, line: 98, baseType: !2220, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2216, file: !2211, line: 99, baseType: !315, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2216, file: !2211, line: 100, baseType: !315, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2216, file: !2211, line: 101, baseType: !183, size: 128, align: 64, offset: 256)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2216, file: !2211, line: 102, baseType: !2209, size: 64, offset: 384)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2196, file: !48, line: 113, baseType: !2210, size: 128, offset: 448)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2196, file: !48, line: 114, baseType: !1354, size: 192, offset: 576)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2196, file: !48, line: 115, baseType: !47, size: 32, offset: 768)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2196, file: !48, line: 116, baseType: !7, size: 32, offset: 800)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2196, file: !48, line: 117, baseType: !2234, size: 64, offset: 832)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2236)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !48, line: 67, size: 256, elements: !2237)
!2237 = !{!2238, !2239, !2243, !2244}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2236, file: !48, line: 73, baseType: !687, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2236, file: !48, line: 78, baseType: !2240, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{null, !2195}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2236, file: !48, line: 83, baseType: !2240, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2236, file: !48, line: 89, baseType: !874, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2196, file: !48, line: 118, baseType: !143, size: 64, offset: 896)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2196, file: !48, line: 119, baseType: !299, size: 32, offset: 960)
!2247 = !DIDerivedType(tag: DW_TAG_member, scope: !2196, file: !48, line: 120, baseType: !2248, size: 128, offset: 1024)
!2248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2196, file: !48, line: 120, size: 128, elements: !2249)
!2249 = !{!2250, !2256}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2248, file: !48, line: 121, baseType: !2251, size: 128)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2252, line: 6, size: 128, elements: !2253)
!2252 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2253 = !{!2254, !2255}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2251, file: !2252, line: 7, baseType: !239, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2251, file: !2252, line: 8, baseType: !239, size: 64, offset: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2248, file: !48, line: 122, baseType: !2257)
!2257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2251, elements: !1575)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2192, file: !556, line: 162, baseType: !143, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !560, file: !556, line: 176, baseType: !183, size: 128, align: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, scope: !555, file: !556, line: 179, baseType: !2261, size: 32, offset: 384)
!2261 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !555, file: !556, line: 179, size: 32, elements: !2262)
!2262 = !{!2263, !2264, !2265, !2266}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2261, file: !556, line: 184, baseType: !594, size: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2261, file: !556, line: 192, baseType: !7, size: 32)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2261, file: !556, line: 194, baseType: !7, size: 32)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2261, file: !556, line: 195, baseType: !299, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !555, file: !556, line: 199, baseType: !594, size: 32, offset: 416)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !490, file: !24, line: 1964, baseType: !2269, size: 64, offset: 1344)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!364, !429, !2272}
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2274, line: 12, size: 256, elements: !2275)
!2274 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2275 = !{!2276, !2277, !2278, !2279, !2280}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2273, file: !2274, line: 13, baseType: !141, size: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2273, file: !2274, line: 16, baseType: !299, size: 32, offset: 32)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2273, file: !2274, line: 23, baseType: !407, size: 64, offset: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2273, file: !2274, line: 30, baseType: !407, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2273, file: !2274, line: 33, baseType: !2281, size: 64, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !556, line: 27, flags: DIFlagFwdDecl)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !490, file: !24, line: 1966, baseType: !2269, size: 64, offset: 1408)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !430, file: !24, line: 1424, baseType: !2285, size: 64, offset: 448)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2287)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !55, line: 322, size: 704, elements: !2288)
!2288 = !{!2289, !2335, !2339, !2343, !2344, !2345, !2346, !2347, !2352, !2357, !2361}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2287, file: !55, line: 323, baseType: !2290, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!299, !2293}
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !55, line: 294, size: 1600, elements: !2295)
!2295 = !{!2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2320, !2321, !2322}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2294, file: !55, line: 295, baseType: !469, size: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2294, file: !55, line: 296, baseType: !148, size: 128, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2294, file: !55, line: 297, baseType: !148, size: 128, offset: 256)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2294, file: !55, line: 298, baseType: !148, size: 128, offset: 384)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2294, file: !55, line: 299, baseType: !1020, size: 192, offset: 512)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2294, file: !55, line: 300, baseType: !576, offset: 704)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2294, file: !55, line: 301, baseType: !594, size: 32, offset: 704)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2294, file: !55, line: 302, baseType: !429, size: 64, offset: 768)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2294, file: !55, line: 303, baseType: !2305, size: 64, offset: 832)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !55, line: 68, size: 64, elements: !2306)
!2306 = !{!2307, !2319}
!2307 = !DIDerivedType(tag: DW_TAG_member, scope: !2305, file: !55, line: 69, baseType: !2308, size: 32)
!2308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2305, file: !55, line: 69, size: 32, elements: !2309)
!2309 = !{!2310, !2311, !2312}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2308, file: !55, line: 70, baseType: !255, size: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2308, file: !55, line: 71, baseType: !263, size: 32)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2308, file: !55, line: 72, baseType: !2313, size: 32)
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2314, line: 24, baseType: !2315)
!2314 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2314, line: 22, size: 32, elements: !2316)
!2316 = !{!2317}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2315, file: !2314, line: 23, baseType: !2318, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2314, line: 20, baseType: !261)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2305, file: !55, line: 74, baseType: !54, size: 32, offset: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2294, file: !55, line: 304, baseType: !166, size: 64, offset: 896)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2294, file: !55, line: 305, baseType: !407, size: 64, offset: 960)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2294, file: !55, line: 306, baseType: !2323, size: 576, offset: 1024)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !55, line: 205, size: 576, elements: !2324)
!2324 = !{!2325, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2323, file: !55, line: 206, baseType: !2326, size: 64)
!2326 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !55, line: 66, baseType: !169)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2323, file: !55, line: 207, baseType: !2326, size: 64, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2323, file: !55, line: 208, baseType: !2326, size: 64, offset: 128)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2323, file: !55, line: 209, baseType: !2326, size: 64, offset: 192)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2323, file: !55, line: 210, baseType: !2326, size: 64, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2323, file: !55, line: 211, baseType: !2326, size: 64, offset: 320)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2323, file: !55, line: 212, baseType: !2326, size: 64, offset: 384)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2323, file: !55, line: 213, baseType: !361, size: 64, offset: 448)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2323, file: !55, line: 214, baseType: !361, size: 64, offset: 512)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2287, file: !55, line: 324, baseType: !2336, size: 64, offset: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!2293, !429, !299}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2287, file: !55, line: 325, baseType: !2340, size: 64, offset: 128)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{null, !2293}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2287, file: !55, line: 326, baseType: !2290, size: 64, offset: 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2287, file: !55, line: 327, baseType: !2290, size: 64, offset: 256)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2287, file: !55, line: 328, baseType: !2290, size: 64, offset: 320)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2287, file: !55, line: 329, baseType: !518, size: 64, offset: 384)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2287, file: !55, line: 332, baseType: !2348, size: 64, offset: 448)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!2351, !247}
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2287, file: !55, line: 333, baseType: !2353, size: 64, offset: 512)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!299, !247, !2356}
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2287, file: !55, line: 335, baseType: !2358, size: 64, offset: 576)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!299, !247, !2351}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2287, file: !55, line: 337, baseType: !2362, size: 64, offset: 640)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!299, !429, !2365}
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !430, file: !24, line: 1425, baseType: !2367, size: 64, offset: 512)
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2369)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !55, line: 428, size: 704, elements: !2370)
!2370 = !{!2371, !2375, !2376, !2380, !2381, !2382, !2397, !2420, !2424, !2425, !2448}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2369, file: !55, line: 429, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!299, !429, !299, !299, !372}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2369, file: !55, line: 430, baseType: !518, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2369, file: !55, line: 431, baseType: !2377, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!299, !429, !7}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2369, file: !55, line: 432, baseType: !2377, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2369, file: !55, line: 433, baseType: !518, size: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2369, file: !55, line: 434, baseType: !2383, size: 64, offset: 320)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!299, !429, !299, !2386}
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !55, line: 415, size: 256, elements: !2388)
!2388 = !{!2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2387, file: !55, line: 416, baseType: !299, size: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2387, file: !55, line: 417, baseType: !7, size: 32, offset: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2387, file: !55, line: 418, baseType: !7, size: 32, offset: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2387, file: !55, line: 420, baseType: !7, size: 32, offset: 96)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2387, file: !55, line: 421, baseType: !7, size: 32, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2387, file: !55, line: 422, baseType: !7, size: 32, offset: 160)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2387, file: !55, line: 423, baseType: !7, size: 32, offset: 192)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2387, file: !55, line: 424, baseType: !7, size: 32, offset: 224)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2369, file: !55, line: 435, baseType: !2398, size: 64, offset: 384)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!299, !429, !2305, !2401}
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !55, line: 343, size: 960, elements: !2403)
!2403 = !{!2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2402, file: !55, line: 344, baseType: !299, size: 32)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2402, file: !55, line: 345, baseType: !239, size: 64, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2402, file: !55, line: 346, baseType: !239, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2402, file: !55, line: 347, baseType: !239, size: 64, offset: 192)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2402, file: !55, line: 348, baseType: !239, size: 64, offset: 256)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2402, file: !55, line: 349, baseType: !239, size: 64, offset: 320)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2402, file: !55, line: 350, baseType: !239, size: 64, offset: 384)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2402, file: !55, line: 351, baseType: !624, size: 64, offset: 448)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2402, file: !55, line: 353, baseType: !624, size: 64, offset: 512)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2402, file: !55, line: 354, baseType: !299, size: 32, offset: 576)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2402, file: !55, line: 355, baseType: !299, size: 32, offset: 608)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2402, file: !55, line: 356, baseType: !239, size: 64, offset: 640)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2402, file: !55, line: 357, baseType: !239, size: 64, offset: 704)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2402, file: !55, line: 358, baseType: !239, size: 64, offset: 768)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2402, file: !55, line: 359, baseType: !624, size: 64, offset: 832)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2402, file: !55, line: 360, baseType: !299, size: 32, offset: 896)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2369, file: !55, line: 436, baseType: !2421, size: 64, offset: 448)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!299, !429, !2365, !2401}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2369, file: !55, line: 438, baseType: !2398, size: 64, offset: 512)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2369, file: !55, line: 439, baseType: !2426, size: 64, offset: 576)
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!299, !429, !2429}
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !55, line: 409, size: 1408, elements: !2431)
!2431 = !{!2432, !2433}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2430, file: !55, line: 410, baseType: !7, size: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2430, file: !55, line: 411, baseType: !2434, size: 1344, offset: 64)
!2434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2435, size: 1344, elements: !482)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !55, line: 395, size: 448, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2447}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2435, file: !55, line: 396, baseType: !7, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2435, file: !55, line: 397, baseType: !7, size: 32, offset: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2435, file: !55, line: 399, baseType: !7, size: 32, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2435, file: !55, line: 400, baseType: !7, size: 32, offset: 96)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2435, file: !55, line: 401, baseType: !7, size: 32, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2435, file: !55, line: 402, baseType: !7, size: 32, offset: 160)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2435, file: !55, line: 403, baseType: !7, size: 32, offset: 192)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2435, file: !55, line: 404, baseType: !241, size: 64, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2435, file: !55, line: 405, baseType: !2446, size: 64, offset: 320)
!2446 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !142, line: 126, baseType: !239)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2435, file: !55, line: 406, baseType: !2446, size: 64, offset: 384)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2369, file: !55, line: 440, baseType: !2377, size: 64, offset: 640)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !430, file: !24, line: 1426, baseType: !2450, size: 64, offset: 576)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2452)
!2452 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !24, line: 49, flags: DIFlagFwdDecl)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !430, file: !24, line: 1427, baseType: !407, size: 64, offset: 640)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !430, file: !24, line: 1428, baseType: !407, size: 64, offset: 704)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !430, file: !24, line: 1429, baseType: !407, size: 64, offset: 768)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !430, file: !24, line: 1430, baseType: !200, size: 64, offset: 832)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !430, file: !24, line: 1431, baseType: !614, size: 256, offset: 896)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !430, file: !24, line: 1432, baseType: !299, size: 32, offset: 1152)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !430, file: !24, line: 1433, baseType: !594, size: 32, offset: 1184)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !430, file: !24, line: 1437, baseType: !2461, size: 64, offset: 1216)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2464)
!2464 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !24, line: 1437, flags: DIFlagFwdDecl)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !430, file: !24, line: 1449, baseType: !2466, size: 64, offset: 1280)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !216, line: 34, size: 64, elements: !2467)
!2467 = !{!2468}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2466, file: !216, line: 35, baseType: !219, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !430, file: !24, line: 1450, baseType: !148, size: 128, offset: 1344)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !430, file: !24, line: 1451, baseType: !2471, size: 64, offset: 1472)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !24, line: 699, flags: DIFlagFwdDecl)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !430, file: !24, line: 1452, baseType: !1779, size: 64, offset: 1536)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !430, file: !24, line: 1453, baseType: !2475, size: 64, offset: 1600)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !24, line: 1453, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !430, file: !24, line: 1454, baseType: !469, size: 128, offset: 1664)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !430, file: !24, line: 1455, baseType: !7, size: 32, offset: 1792)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !430, file: !24, line: 1456, baseType: !2480, size: 2432, offset: 1856)
!2480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !55, line: 518, size: 2432, elements: !2481)
!2481 = !{!2482, !2483, !2484, !2486, !2518}
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2480, file: !55, line: 519, baseType: !7, size: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2480, file: !55, line: 520, baseType: !614, size: 256, offset: 64)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2480, file: !55, line: 521, baseType: !2485, size: 192, offset: 320)
!2485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 192, elements: !482)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2480, file: !55, line: 522, baseType: !2487, size: 1728, offset: 512)
!2487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2488, size: 1728, elements: !482)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !55, line: 222, size: 576, elements: !2489)
!2489 = !{!2490, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2488, file: !55, line: 223, baseType: !2491, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !55, line: 443, size: 256, elements: !2493)
!2493 = !{!2494, !2495, !2508, !2509}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2492, file: !55, line: 444, baseType: !299, size: 32)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2492, file: !55, line: 445, baseType: !2496, size: 64, offset: 64)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2498)
!2498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !55, line: 310, size: 512, elements: !2499)
!2499 = !{!2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507}
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2498, file: !55, line: 311, baseType: !518, size: 64)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2498, file: !55, line: 312, baseType: !518, size: 64, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2498, file: !55, line: 313, baseType: !518, size: 64, offset: 128)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2498, file: !55, line: 314, baseType: !518, size: 64, offset: 192)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2498, file: !55, line: 315, baseType: !2290, size: 64, offset: 256)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2498, file: !55, line: 316, baseType: !2290, size: 64, offset: 320)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2498, file: !55, line: 317, baseType: !2290, size: 64, offset: 384)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2498, file: !55, line: 318, baseType: !2362, size: 64, offset: 448)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2492, file: !55, line: 446, baseType: !159, size: 64, offset: 128)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2492, file: !55, line: 447, baseType: !2491, size: 64, offset: 192)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2488, file: !55, line: 224, baseType: !299, size: 32, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2488, file: !55, line: 226, baseType: !148, size: 128, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2488, file: !55, line: 227, baseType: !407, size: 64, offset: 256)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2488, file: !55, line: 228, baseType: !7, size: 32, offset: 320)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2488, file: !55, line: 229, baseType: !7, size: 32, offset: 352)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2488, file: !55, line: 230, baseType: !2326, size: 64, offset: 384)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2488, file: !55, line: 231, baseType: !2326, size: 64, offset: 448)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2488, file: !55, line: 232, baseType: !143, size: 64, offset: 512)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2480, file: !55, line: 523, baseType: !2519, size: 192, offset: 2240)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2496, size: 192, elements: !482)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !430, file: !24, line: 1458, baseType: !2521, size: 2112, offset: 4288)
!2521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !24, line: 1410, size: 2112, elements: !2522)
!2522 = !{!2523, !2524, !2525}
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2521, file: !24, line: 1411, baseType: !299, size: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2521, file: !24, line: 1412, baseType: !1333, size: 128, offset: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2521, file: !24, line: 1413, baseType: !2526, size: 1920, offset: 192)
!2526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2527, size: 1920, elements: !482)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2528, line: 12, size: 640, elements: !2529)
!2528 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2529 = !{!2530, !2538, !2540, !2545, !2546}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2527, file: !2528, line: 13, baseType: !2531, size: 320)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2532, line: 17, size: 320, elements: !2533)
!2532 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2533 = !{!2534, !2535, !2536, !2537}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2531, file: !2532, line: 18, baseType: !299, size: 32)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2531, file: !2532, line: 19, baseType: !299, size: 32, offset: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2531, file: !2532, line: 20, baseType: !1333, size: 128, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2531, file: !2532, line: 22, baseType: !183, size: 128, align: 64, offset: 192)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2527, file: !2528, line: 14, baseType: !2539, size: 64, offset: 320)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2527, file: !2528, line: 15, baseType: !2541, size: 64, offset: 384)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2542, line: 16, size: 64, elements: !2543)
!2542 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2543 = !{!2544}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2541, file: !2542, line: 17, baseType: !1063, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2527, file: !2528, line: 16, baseType: !1333, size: 128, offset: 448)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2527, file: !2528, line: 17, baseType: !594, size: 32, offset: 576)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !430, file: !24, line: 1465, baseType: !143, size: 64, offset: 6400)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !430, file: !24, line: 1468, baseType: !233, size: 32, offset: 6464)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !430, file: !24, line: 1470, baseType: !361, size: 64, offset: 6528)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !430, file: !24, line: 1471, baseType: !361, size: 64, offset: 6592)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !430, file: !24, line: 1473, baseType: !235, size: 32, offset: 6656)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !430, file: !24, line: 1474, baseType: !2553, size: 64, offset: 6720)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !24, line: 603, flags: DIFlagFwdDecl)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !430, file: !24, line: 1477, baseType: !2556, size: 256, offset: 6784)
!2556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 256, elements: !2086)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !430, file: !24, line: 1478, baseType: !2558, size: 128, offset: 7040)
!2558 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2559, line: 18, baseType: !2560)
!2559 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2559, line: 16, size: 128, elements: !2561)
!2561 = !{!2562}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2560, file: !2559, line: 17, baseType: !2563, size: 128)
!2563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1200, size: 128, elements: !1587)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !430, file: !24, line: 1480, baseType: !7, size: 32, offset: 7168)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !430, file: !24, line: 1481, baseType: !2566, size: 32, offset: 7200)
!2566 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !142, line: 150, baseType: !7)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !430, file: !24, line: 1487, baseType: !1020, size: 192, offset: 7232)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !430, file: !24, line: 1493, baseType: !283, size: 64, offset: 7424)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !430, file: !24, line: 1495, baseType: !2570, size: 64, offset: 7488)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2572)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !198, line: 135, size: 1024, align: 512, elements: !2573)
!2573 = !{!2574, !2578, !2579, !2586, !2592, !2596, !2600, !2604, !2605, !2609, !2613, !2618, !2622}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2572, file: !198, line: 136, baseType: !2575, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DISubroutineType(types: !2577)
!2577 = !{!299, !200, !7}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2572, file: !198, line: 137, baseType: !2575, size: 64, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2572, file: !198, line: 138, baseType: !2580, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!299, !2583, !2585}
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2572, file: !198, line: 139, baseType: !2587, size: 64, offset: 192)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = !DISubroutineType(types: !2589)
!2589 = !{!299, !2583, !7, !283, !2590}
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2572, file: !198, line: 141, baseType: !2593, size: 64, offset: 256)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!299, !2583}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2572, file: !198, line: 142, baseType: !2597, size: 64, offset: 320)
!2597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!299, !200}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2572, file: !198, line: 143, baseType: !2601, size: 64, offset: 384)
!2601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{null, !200}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2572, file: !198, line: 144, baseType: !2601, size: 64, offset: 448)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2572, file: !198, line: 145, baseType: !2606, size: 64, offset: 512)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{null, !200, !247}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2572, file: !198, line: 146, baseType: !2610, size: 64, offset: 576)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!310, !200, !310, !299}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2572, file: !198, line: 147, baseType: !2614, size: 64, offset: 640)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!196, !2617}
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2572, file: !198, line: 148, baseType: !2619, size: 64, offset: 704)
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2620, size: 64)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{!299, !372, !315}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2572, file: !198, line: 149, baseType: !2623, size: 64, offset: 768)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!200, !200, !2626}
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !430, file: !24, line: 1500, baseType: !299, size: 32, offset: 7552)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !430, file: !24, line: 1502, baseType: !2630, size: 448, offset: 7616)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2274, line: 60, size: 448, elements: !2631)
!2631 = !{!2632, !2637, !2638, !2639, !2640, !2641, !2642}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2630, file: !2274, line: 61, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{!407, !2636, !2272}
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2630, file: !2274, line: 63, baseType: !2633, size: 64, offset: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2630, file: !2274, line: 66, baseType: !364, size: 64, offset: 128)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2630, file: !2274, line: 67, baseType: !299, size: 32, offset: 192)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2630, file: !2274, line: 68, baseType: !7, size: 32, offset: 224)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2630, file: !2274, line: 71, baseType: !148, size: 128, offset: 256)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2630, file: !2274, line: 77, baseType: !2643, size: 64, offset: 384)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !430, file: !24, line: 1505, baseType: !618, size: 64, offset: 8064)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !430, file: !24, line: 1508, baseType: !618, size: 64, offset: 8128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !430, file: !24, line: 1511, baseType: !299, size: 32, offset: 8192)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !430, file: !24, line: 1514, baseType: !756, size: 32, offset: 8224)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !430, file: !24, line: 1517, baseType: !2649, size: 64, offset: 8256)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1814, line: 18, flags: DIFlagFwdDecl)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !430, file: !24, line: 1518, baseType: !465, size: 64, offset: 8320)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !430, file: !24, line: 1525, baseType: !1565, size: 64, offset: 8384)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !430, file: !24, line: 1532, baseType: !2654, size: 64, offset: 8448)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2655, line: 52, size: 64, elements: !2656)
!2655 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2656 = !{!2657}
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2654, file: !2655, line: 53, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2655, line: 40, size: 256, elements: !2660)
!2660 = !{!2661, !2662, !2667}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2659, file: !2655, line: 42, baseType: !576)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2659, file: !2655, line: 44, baseType: !2663, size: 192)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2655, line: 28, size: 192, elements: !2664)
!2664 = !{!2665, !2666}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2663, file: !2655, line: 29, baseType: !148, size: 128)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2663, file: !2655, line: 31, baseType: !364, size: 64, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2659, file: !2655, line: 49, baseType: !364, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !430, file: !24, line: 1533, baseType: !2654, size: 64, offset: 8512)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !430, file: !24, line: 1534, baseType: !183, size: 128, align: 64, offset: 8576)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !430, file: !24, line: 1535, baseType: !1813, size: 256, offset: 8704)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !430, file: !24, line: 1537, baseType: !1020, size: 192, offset: 8960)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !430, file: !24, line: 1542, baseType: !299, size: 32, offset: 9152)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !430, file: !24, line: 1545, baseType: !576, offset: 9184)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !430, file: !24, line: 1546, baseType: !148, size: 128, offset: 9216)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !430, file: !24, line: 1548, baseType: !576, offset: 9344)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !430, file: !24, line: 1549, baseType: !148, size: 128, offset: 9344)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !248, file: !24, line: 624, baseType: !567, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !248, file: !24, line: 631, baseType: !407, size: 64, offset: 320)
!2679 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !24, line: 639, baseType: !2680, size: 32, offset: 384)
!2680 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !24, line: 639, size: 32, elements: !2681)
!2681 = !{!2682, !2684}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2680, file: !24, line: 640, baseType: !2683, size: 32)
!2683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2680, file: !24, line: 641, baseType: !7, size: 32)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !248, file: !24, line: 643, baseType: !338, size: 32, offset: 416)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !248, file: !24, line: 644, baseType: !166, size: 64, offset: 448)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !248, file: !24, line: 645, baseType: !357, size: 128, offset: 512)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !248, file: !24, line: 646, baseType: !357, size: 128, offset: 640)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !248, file: !24, line: 647, baseType: !357, size: 128, offset: 768)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !248, file: !24, line: 648, baseType: !576, offset: 896)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !248, file: !24, line: 649, baseType: !252, size: 16, offset: 896)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !248, file: !24, line: 650, baseType: !1199, size: 8, offset: 912)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !248, file: !24, line: 651, baseType: !1199, size: 8, offset: 920)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !248, file: !24, line: 652, baseType: !2446, size: 64, offset: 960)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !248, file: !24, line: 659, baseType: !407, size: 64, offset: 1024)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !248, file: !24, line: 660, baseType: !614, size: 256, offset: 1088)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !248, file: !24, line: 662, baseType: !407, size: 64, offset: 1344)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !248, file: !24, line: 663, baseType: !407, size: 64, offset: 1408)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !248, file: !24, line: 665, baseType: !469, size: 128, offset: 1472)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !248, file: !24, line: 666, baseType: !148, size: 128, offset: 1600)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !248, file: !24, line: 675, baseType: !148, size: 128, offset: 1728)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !248, file: !24, line: 676, baseType: !148, size: 128, offset: 1856)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !248, file: !24, line: 677, baseType: !148, size: 128, offset: 1984)
!2704 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !24, line: 678, baseType: !2705, size: 128, offset: 2112)
!2705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !24, line: 678, size: 128, elements: !2706)
!2706 = !{!2707, !2708}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2705, file: !24, line: 679, baseType: !465, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2705, file: !24, line: 680, baseType: !183, size: 128, align: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !248, file: !24, line: 682, baseType: !620, size: 64, offset: 2240)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !248, file: !24, line: 683, baseType: !620, size: 64, offset: 2304)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !248, file: !24, line: 684, baseType: !594, size: 32, offset: 2368)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !248, file: !24, line: 685, baseType: !594, size: 32, offset: 2400)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !248, file: !24, line: 686, baseType: !594, size: 32, offset: 2432)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !248, file: !24, line: 688, baseType: !594, size: 32, offset: 2464)
!2715 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !24, line: 690, baseType: !2716, size: 64, offset: 2496)
!2716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !24, line: 690, size: 64, elements: !2717)
!2717 = !{!2718, !2719}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2716, file: !24, line: 691, baseType: !154, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2716, file: !24, line: 692, baseType: !497, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !248, file: !24, line: 694, baseType: !2721, size: 64, offset: 2560)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !24, line: 1100, size: 384, elements: !2723)
!2723 = !{!2724, !2725, !2726, !2727}
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2722, file: !24, line: 1101, baseType: !576)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2722, file: !24, line: 1102, baseType: !148, size: 128)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2722, file: !24, line: 1103, baseType: !148, size: 128, offset: 128)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2722, file: !24, line: 1104, baseType: !148, size: 128, offset: 256)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !248, file: !24, line: 695, baseType: !568, size: 1216, align: 64, offset: 2624)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !248, file: !24, line: 696, baseType: !148, size: 128, offset: 3840)
!2730 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !24, line: 697, baseType: !2731, size: 64, offset: 3968)
!2731 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !24, line: 697, size: 64, elements: !2732)
!2732 = !{!2733, !2734, !2735, !3056, !3057}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2731, file: !24, line: 698, baseType: !1954, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2731, file: !24, line: 699, baseType: !2471, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2731, file: !24, line: 700, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2738, line: 14, size: 832, elements: !2739)
!2738 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/lizy2001/genbc/linux")
!2739 = !{!2740, !3051, !3052, !3053, !3054, !3055}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2737, file: !2738, line: 15, baseType: !2741, size: 512)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2742, line: 64, size: 512, elements: !2743)
!2742 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2743 = !{!2744, !2745, !2746, !2748, !2788, !2888, !3041, !3046, !3047, !3048, !3049, !3050}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2741, file: !2742, line: 65, baseType: !283, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2741, file: !2742, line: 66, baseType: !148, size: 128, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2741, file: !2742, line: 67, baseType: !2747, size: 64, offset: 192)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2741, file: !2742, line: 68, baseType: !2749, size: 64, offset: 256)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2742, line: 192, size: 704, elements: !2751)
!2751 = !{!2752, !2753, !2754, !2755}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2750, file: !2742, line: 193, baseType: !148, size: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2750, file: !2742, line: 194, baseType: !576, offset: 128)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2750, file: !2742, line: 195, baseType: !2741, size: 512, offset: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2750, file: !2742, line: 196, baseType: !2756, size: 64, offset: 640)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2758)
!2758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2742, line: 156, size: 192, elements: !2759)
!2759 = !{!2760, !2765, !2770}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2758, file: !2742, line: 157, baseType: !2761, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2762)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2763, size: 64)
!2763 = !DISubroutineType(types: !2764)
!2764 = !{!299, !2749, !2747}
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2758, file: !2742, line: 158, baseType: !2766, size: 64, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2767)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!283, !2749, !2747}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2758, file: !2742, line: 159, baseType: !2771, size: 64, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2772)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = !DISubroutineType(types: !2774)
!2774 = !{!299, !2749, !2747, !2775}
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2742, line: 148, size: 20736, elements: !2777)
!2777 = !{!2778, !2780, !2782, !2783, !2787}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2776, file: !2742, line: 149, baseType: !2779, size: 192)
!2779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 192, elements: !482)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2776, file: !2742, line: 150, baseType: !2781, size: 4096, offset: 192)
!2781 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 4096, elements: !1735)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2776, file: !2742, line: 151, baseType: !299, size: 32, offset: 4288)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2776, file: !2742, line: 152, baseType: !2784, size: 16384, offset: 4320)
!2784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 16384, elements: !2785)
!2785 = !{!2786}
!2786 = !DISubrange(count: 2048)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2776, file: !2742, line: 153, baseType: !299, size: 32, offset: 20704)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2741, file: !2742, line: 69, baseType: !2789, size: 64, offset: 320)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2742, line: 138, size: 448, elements: !2791)
!2791 = !{!2792, !2796, !2815, !2817, !2850, !2878, !2882}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2790, file: !2742, line: 139, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{null, !2747}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2790, file: !2742, line: 140, baseType: !2797, size: 64, offset: 64)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2799)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2800, line: 230, size: 128, elements: !2801)
!2800 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2801 = !{!2802, !2811}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2799, file: !2800, line: 231, baseType: !2803, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2804, size: 64)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!401, !2747, !2806, !310}
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2800, line: 30, size: 128, elements: !2808)
!2808 = !{!2809, !2810}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2807, file: !2800, line: 31, baseType: !283, size: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2807, file: !2800, line: 32, baseType: !251, size: 16, offset: 64)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2799, file: !2800, line: 232, baseType: !2812, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2813, size: 64)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!401, !2747, !2806, !283, !404}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2790, file: !2742, line: 141, baseType: !2816, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2790, file: !2742, line: 142, baseType: !2818, size: 64, offset: 192)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2821)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2800, line: 84, size: 320, elements: !2822)
!2822 = !{!2823, !2824, !2828, !2847, !2848}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2821, file: !2800, line: 85, baseType: !283, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2821, file: !2800, line: 86, baseType: !2825, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{!251, !2747, !2806, !299}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2821, file: !2800, line: 88, baseType: !2829, size: 64, offset: 128)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!251, !2747, !2832, !299}
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2800, line: 168, size: 448, elements: !2834)
!2834 = !{!2835, !2836, !2837, !2838, !2842, !2843}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2833, file: !2800, line: 169, baseType: !2807, size: 128)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2833, file: !2800, line: 170, baseType: !404, size: 64, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2833, file: !2800, line: 171, baseType: !143, size: 64, offset: 192)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2833, file: !2800, line: 172, baseType: !2839, size: 64, offset: 256)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!401, !170, !2747, !2832, !310, !166, !404}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2833, file: !2800, line: 174, baseType: !2839, size: 64, offset: 320)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2833, file: !2800, line: 176, baseType: !2844, size: 64, offset: 384)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!299, !170, !2747, !2832, !828}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2821, file: !2800, line: 90, baseType: !2816, size: 64, offset: 192)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2821, file: !2800, line: 91, baseType: !2849, size: 64, offset: 256)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2790, file: !2742, line: 143, baseType: !2851, size: 64, offset: 256)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!2854, !2747}
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2856)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !2857)
!2857 = !{!2858, !2859, !2863, !2867, !2873, !2877}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2856, file: !61, line: 40, baseType: !60, size: 32)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2856, file: !61, line: 41, baseType: !2860, size: 64, offset: 64)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!315}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2856, file: !61, line: 42, baseType: !2864, size: 64, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!143}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2856, file: !61, line: 43, baseType: !2868, size: 64, offset: 192)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!1983, !2871}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2856, file: !61, line: 44, baseType: !2874, size: 64, offset: 256)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!1983}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2856, file: !61, line: 45, baseType: !291, size: 64, offset: 320)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2790, file: !2742, line: 144, baseType: !2879, size: 64, offset: 320)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!1983, !2747}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2790, file: !2742, line: 145, baseType: !2883, size: 64, offset: 384)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{null, !2747, !2886, !2887}
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2741, file: !2742, line: 70, baseType: !2889, size: 64, offset: 384)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !449, line: 123, size: 1024, elements: !2891)
!2891 = !{!2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !3034, !3035, !3036, !3037, !3038}
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2890, file: !449, line: 124, baseType: !594, size: 32)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2890, file: !449, line: 125, baseType: !594, size: 32, offset: 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2890, file: !449, line: 135, baseType: !2889, size: 64, offset: 64)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2890, file: !449, line: 136, baseType: !283, size: 64, offset: 128)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2890, file: !449, line: 138, baseType: !607, size: 192, align: 64, offset: 192)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2890, file: !449, line: 140, baseType: !1983, size: 64, offset: 384)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2890, file: !449, line: 141, baseType: !7, size: 32, offset: 448)
!2899 = !DIDerivedType(tag: DW_TAG_member, scope: !2890, file: !449, line: 142, baseType: !2900, size: 256, offset: 512)
!2900 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2890, file: !449, line: 142, size: 256, elements: !2901)
!2901 = !{!2902, !2948, !2952}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2900, file: !449, line: 143, baseType: !2903, size: 192)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !449, line: 91, size: 192, elements: !2904)
!2904 = !{!2905, !2906, !2907}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2903, file: !449, line: 92, baseType: !407, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2903, file: !449, line: 94, baseType: !603, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2903, file: !449, line: 100, baseType: !2908, size: 64, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !449, line: 180, size: 704, elements: !2910)
!2910 = !{!2911, !2912, !2913, !2920, !2921, !2922, !2946, !2947}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2909, file: !449, line: 182, baseType: !2889, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2909, file: !449, line: 183, baseType: !7, size: 32, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !2909, file: !449, line: 186, baseType: !2914, size: 192, offset: 128)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !2915, line: 19, size: 192, elements: !2916)
!2915 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!2916 = !{!2917, !2918, !2919}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !2914, file: !2915, line: 20, baseType: !572, size: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !2914, file: !2915, line: 21, baseType: !7, size: 32, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !2914, file: !2915, line: 22, baseType: !7, size: 32, offset: 160)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !2909, file: !449, line: 187, baseType: !233, size: 32, offset: 320)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !2909, file: !449, line: 188, baseType: !233, size: 32, offset: 352)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !2909, file: !449, line: 189, baseType: !2923, size: 64, offset: 384)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !449, line: 168, size: 320, elements: !2925)
!2925 = !{!2926, !2930, !2934, !2938, !2942}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2924, file: !449, line: 169, baseType: !2927, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!299, !544, !2908}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !2924, file: !449, line: 171, baseType: !2931, size: 64, offset: 64)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{!299, !2889, !283, !251}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !2924, file: !449, line: 173, baseType: !2935, size: 64, offset: 128)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DISubroutineType(types: !2937)
!2937 = !{!299, !2889}
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !2924, file: !449, line: 174, baseType: !2939, size: 64, offset: 192)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!299, !2889, !2889, !283}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2924, file: !449, line: 176, baseType: !2943, size: 64, offset: 256)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!299, !544, !2889, !2908}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !2909, file: !449, line: 192, baseType: !148, size: 128, offset: 448)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !2909, file: !449, line: 194, baseType: !1333, size: 128, offset: 576)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2900, file: !449, line: 144, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !449, line: 103, size: 64, elements: !2950)
!2950 = !{!2951}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2949, file: !449, line: 104, baseType: !2889, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2900, file: !449, line: 145, baseType: !2953, size: 256)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !449, line: 107, size: 256, elements: !2954)
!2954 = !{!2955, !3029, !3032, !3033}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2953, file: !449, line: 108, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2958)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !449, line: 217, size: 768, elements: !2959)
!2959 = !{!2960, !2980, !2984, !2988, !2993, !2997, !3001, !3005, !3006, !3007, !3008, !3025}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2958, file: !449, line: 222, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!299, !2964}
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !449, line: 197, size: 1088, elements: !2966)
!2966 = !{!2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2965, file: !449, line: 199, baseType: !2889, size: 64)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2965, file: !449, line: 200, baseType: !170, size: 64, offset: 64)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2965, file: !449, line: 201, baseType: !544, size: 64, offset: 128)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2965, file: !449, line: 202, baseType: !143, size: 64, offset: 192)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2965, file: !449, line: 205, baseType: !1020, size: 192, offset: 256)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2965, file: !449, line: 206, baseType: !1020, size: 192, offset: 448)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2965, file: !449, line: 207, baseType: !299, size: 32, offset: 640)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2965, file: !449, line: 208, baseType: !148, size: 128, offset: 704)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2965, file: !449, line: 209, baseType: !310, size: 64, offset: 832)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2965, file: !449, line: 211, baseType: !404, size: 64, offset: 896)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2965, file: !449, line: 212, baseType: !315, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2965, file: !449, line: 213, baseType: !315, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2965, file: !449, line: 214, baseType: !856, size: 64, offset: 1024)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2958, file: !449, line: 223, baseType: !2981, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{null, !2964}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2958, file: !449, line: 236, baseType: !2985, size: 64, offset: 128)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!299, !544, !143}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2958, file: !449, line: 238, baseType: !2989, size: 64, offset: 192)
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2990, size: 64)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!143, !544, !2992}
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2958, file: !449, line: 239, baseType: !2994, size: 64, offset: 256)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!143, !544, !143, !2992}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2958, file: !449, line: 240, baseType: !2998, size: 64, offset: 320)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{null, !544, !143}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2958, file: !449, line: 242, baseType: !3002, size: 64, offset: 384)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!401, !2964, !310, !404, !166}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2958, file: !449, line: 252, baseType: !404, size: 64, offset: 448)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2958, file: !449, line: 259, baseType: !315, size: 8, offset: 512)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2958, file: !449, line: 260, baseType: !3002, size: 64, offset: 576)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2958, file: !449, line: 263, baseType: !3009, size: 64, offset: 640)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!3012, !2964, !3014}
!3012 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3013, line: 52, baseType: !7)
!3013 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !3016, line: 43, size: 128, elements: !3017)
!3016 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!3017 = !{!3018, !3024}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !3015, file: !3016, line: 44, baseType: !3019, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !3016, line: 37, baseType: !3020)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !170, !3023, !3014}
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !3015, file: !3016, line: 45, baseType: !3012, size: 32, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2958, file: !449, line: 266, baseType: !3026, size: 64, offset: 704)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!299, !2964, !828}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2953, file: !449, line: 109, baseType: !3030, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !449, line: 31, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2953, file: !449, line: 110, baseType: !166, size: 64, offset: 128)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2953, file: !449, line: 111, baseType: !2889, size: 64, offset: 192)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2890, file: !449, line: 148, baseType: !143, size: 64, offset: 768)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2890, file: !449, line: 154, baseType: !239, size: 64, offset: 832)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2890, file: !449, line: 156, baseType: !252, size: 16, offset: 896)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2890, file: !449, line: 157, baseType: !251, size: 16, offset: 912)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2890, file: !449, line: 158, baseType: !3039, size: 64, offset: 960)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !449, line: 32, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2741, file: !2742, line: 71, baseType: !3042, size: 32, offset: 448)
!3042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3043, line: 19, size: 32, elements: !3044)
!3043 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3044 = !{!3045}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3042, file: !3043, line: 20, baseType: !1077, size: 32)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2741, file: !2742, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2741, file: !2742, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2741, file: !2742, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2741, file: !2742, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2741, file: !2742, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2737, file: !2738, line: 16, baseType: !159, size: 64, offset: 512)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2737, file: !2738, line: 17, baseType: !154, size: 64, offset: 576)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2737, file: !2738, line: 18, baseType: !148, size: 128, offset: 640)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2737, file: !2738, line: 19, baseType: !338, size: 32, offset: 768)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2737, file: !2738, line: 20, baseType: !7, size: 32, offset: 800)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2731, file: !24, line: 701, baseType: !310, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2731, file: !24, line: 702, baseType: !7, size: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !248, file: !24, line: 705, baseType: !235, size: 32, offset: 4032)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !248, file: !24, line: 708, baseType: !235, size: 32, offset: 4064)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !248, file: !24, line: 709, baseType: !2553, size: 64, offset: 4096)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !248, file: !24, line: 720, baseType: !143, size: 64, offset: 4160)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !201, file: !198, line: 98, baseType: !3063, size: 256, offset: 448)
!3063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 256, elements: !2086)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !201, file: !198, line: 101, baseType: !3065, size: 32, offset: 704)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3066, line: 25, size: 32, elements: !3067)
!3066 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3067 = !{!3068}
!3068 = !DIDerivedType(tag: DW_TAG_member, scope: !3065, file: !3066, line: 26, baseType: !3069, size: 32)
!3069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3065, file: !3066, line: 26, size: 32, elements: !3070)
!3070 = !{!3071}
!3071 = !DIDerivedType(tag: DW_TAG_member, scope: !3069, file: !3066, line: 30, baseType: !3072, size: 32)
!3072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3069, file: !3066, line: 30, size: 32, elements: !3073)
!3073 = !{!3074, !3075}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3072, file: !3066, line: 31, baseType: !576)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3072, file: !3066, line: 32, baseType: !299, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !201, file: !198, line: 102, baseType: !2570, size: 64, offset: 768)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !201, file: !198, line: 103, baseType: !429, size: 64, offset: 832)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !201, file: !198, line: 104, baseType: !407, size: 64, offset: 896)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !201, file: !198, line: 105, baseType: !143, size: 64, offset: 960)
!3080 = !DIDerivedType(tag: DW_TAG_member, scope: !201, file: !198, line: 107, baseType: !3081, size: 128, offset: 1024)
!3081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !201, file: !198, line: 107, size: 128, elements: !3082)
!3082 = !{!3083, !3084}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3081, file: !198, line: 108, baseType: !148, size: 128)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3081, file: !198, line: 109, baseType: !3023, size: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !201, file: !198, line: 111, baseType: !148, size: 128, offset: 1152)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !201, file: !198, line: 112, baseType: !148, size: 128, offset: 1280)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !201, file: !198, line: 120, baseType: !3088, size: 128, offset: 1408)
!3088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !201, file: !198, line: 116, size: 128, elements: !3089)
!3089 = !{!3090, !3091, !3092}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3088, file: !198, line: 117, baseType: !469, size: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3088, file: !198, line: 118, baseType: !215, size: 128)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3088, file: !198, line: 119, baseType: !183, size: 128, align: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !171, file: !24, line: 922, baseType: !247, size: 64, offset: 256)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !171, file: !24, line: 923, baseType: !154, size: 64, offset: 320)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !171, file: !24, line: 929, baseType: !576, offset: 384)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !171, file: !24, line: 930, baseType: !23, size: 32, offset: 384)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !171, file: !24, line: 931, baseType: !618, size: 64, offset: 448)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !171, file: !24, line: 932, baseType: !7, size: 32, offset: 512)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !171, file: !24, line: 933, baseType: !2566, size: 32, offset: 544)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !171, file: !24, line: 934, baseType: !1020, size: 192, offset: 576)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !171, file: !24, line: 935, baseType: !166, size: 64, offset: 768)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !171, file: !24, line: 936, baseType: !3103, size: 192, offset: 832)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !24, line: 885, size: 192, elements: !3104)
!3104 = !{!3105, !3113, !3114, !3115, !3116, !3117}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3103, file: !24, line: 886, baseType: !3106)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !3107, line: 20, baseType: !3108)
!3107 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3107, line: 11, elements: !3109)
!3109 = !{!3110}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !3108, file: !3107, line: 12, baseType: !3111)
!3111 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !588, line: 33, baseType: !3112)
!3112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !588, line: 31, elements: !477)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3103, file: !24, line: 887, baseType: !1323, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3103, file: !24, line: 888, baseType: !32, size: 32, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3103, file: !24, line: 889, baseType: !255, size: 32, offset: 96)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3103, file: !24, line: 889, baseType: !255, size: 32, offset: 128)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3103, file: !24, line: 890, baseType: !299, size: 32, offset: 160)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !171, file: !24, line: 937, baseType: !1399, size: 64, offset: 1024)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !171, file: !24, line: 938, baseType: !3120, size: 256, offset: 1088)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !24, line: 896, size: 256, elements: !3121)
!3121 = !{!3122, !3123, !3124, !3125, !3126, !3127}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3120, file: !24, line: 897, baseType: !407, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3120, file: !24, line: 898, baseType: !7, size: 32, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3120, file: !24, line: 899, baseType: !7, size: 32, offset: 96)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3120, file: !24, line: 902, baseType: !7, size: 32, offset: 128)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3120, file: !24, line: 903, baseType: !7, size: 32, offset: 160)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3120, file: !24, line: 904, baseType: !166, size: 64, offset: 192)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !171, file: !24, line: 940, baseType: !239, size: 64, offset: 1344)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !171, file: !24, line: 945, baseType: !143, size: 64, offset: 1408)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !171, file: !24, line: 949, baseType: !148, size: 128, offset: 1472)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !171, file: !24, line: 950, baseType: !148, size: 128, offset: 1600)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !171, file: !24, line: 952, baseType: !567, size: 64, offset: 1728)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !171, file: !24, line: 953, baseType: !756, size: 32, offset: 1792)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !171, file: !24, line: 954, baseType: !756, size: 32, offset: 1824)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !156, file: !24, line: 1825, baseType: !3136, size: 64, offset: 128)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!401, !170, !310, !404, !2992}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !156, file: !24, line: 1826, baseType: !3140, size: 64, offset: 192)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!401, !170, !283, !404, !2992}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !156, file: !24, line: 1827, baseType: !691, size: 64, offset: 256)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !156, file: !24, line: 1828, baseType: !691, size: 64, offset: 320)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !156, file: !24, line: 1829, baseType: !3146, size: 64, offset: 384)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!299, !694, !315}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !156, file: !24, line: 1830, baseType: !3150, size: 64, offset: 448)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!299, !170, !3153}
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !24, line: 1776, size: 128, elements: !3155)
!3155 = !{!3156, !3161}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3154, file: !24, line: 1777, baseType: !3157, size: 64)
!3157 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !24, line: 1773, baseType: !3158)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!299, !3153, !283, !299, !166, !239, !7}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3154, file: !24, line: 1778, baseType: !166, size: 64, offset: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !156, file: !24, line: 1831, baseType: !3150, size: 64, offset: 512)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !156, file: !24, line: 1832, baseType: !3164, size: 64, offset: 576)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!3012, !170, !3014}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !156, file: !24, line: 1833, baseType: !3168, size: 64, offset: 640)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!364, !170, !7, !407}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !156, file: !24, line: 1834, baseType: !3168, size: 64, offset: 704)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !156, file: !24, line: 1835, baseType: !3173, size: 64, offset: 768)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!299, !170, !828}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !156, file: !24, line: 1836, baseType: !407, size: 64, offset: 832)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !156, file: !24, line: 1837, baseType: !3178, size: 64, offset: 896)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!299, !247, !170}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !156, file: !24, line: 1838, baseType: !3182, size: 64, offset: 960)
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DISubroutineType(types: !3184)
!3184 = !{!299, !170, !3185}
!3185 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !24, line: 1007, baseType: !143)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !156, file: !24, line: 1839, baseType: !3178, size: 64, offset: 1024)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !156, file: !24, line: 1840, baseType: !3188, size: 64, offset: 1088)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{!299, !170, !166, !166, !299}
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !156, file: !24, line: 1841, baseType: !3192, size: 64, offset: 1152)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!299, !299, !170, !299}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !156, file: !24, line: 1842, baseType: !3196, size: 64, offset: 1216)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{!299, !170, !299, !3199}
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !24, line: 1062, size: 1664, elements: !3201)
!3201 = !{!3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3226, !3227, !3228, !3241, !3272}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !3200, file: !24, line: 1063, baseType: !3199, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !3200, file: !24, line: 1064, baseType: !148, size: 128, offset: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !3200, file: !24, line: 1065, baseType: !469, size: 128, offset: 192)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !3200, file: !24, line: 1066, baseType: !148, size: 128, offset: 320)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !3200, file: !24, line: 1069, baseType: !148, size: 128, offset: 448)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !3200, file: !24, line: 1072, baseType: !3185, size: 64, offset: 576)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !3200, file: !24, line: 1073, baseType: !7, size: 32, offset: 640)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !3200, file: !24, line: 1074, baseType: !245, size: 8, offset: 672)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !3200, file: !24, line: 1075, baseType: !7, size: 32, offset: 704)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !3200, file: !24, line: 1076, baseType: !299, size: 32, offset: 736)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !3200, file: !24, line: 1077, baseType: !1333, size: 128, offset: 768)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !3200, file: !24, line: 1078, baseType: !170, size: 64, offset: 896)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !3200, file: !24, line: 1079, baseType: !166, size: 64, offset: 960)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !3200, file: !24, line: 1080, baseType: !166, size: 64, offset: 1024)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !3200, file: !24, line: 1082, baseType: !3217, size: 64, offset: 1088)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !24, line: 1314, size: 320, elements: !3219)
!3219 = !{!3220, !3221, !3222, !3223, !3224, !3225}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3218, file: !24, line: 1315, baseType: !3106)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3218, file: !24, line: 1316, baseType: !299, size: 32)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3218, file: !24, line: 1317, baseType: !299, size: 32, offset: 32)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3218, file: !24, line: 1318, baseType: !3217, size: 64, offset: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3218, file: !24, line: 1319, baseType: !170, size: 64, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3218, file: !24, line: 1320, baseType: !183, size: 128, align: 64, offset: 192)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !3200, file: !24, line: 1084, baseType: !407, size: 64, offset: 1152)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !3200, file: !24, line: 1085, baseType: !407, size: 64, offset: 1216)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !3200, file: !24, line: 1087, baseType: !3229, size: 64, offset: 1280)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3231)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !24, line: 1011, size: 128, elements: !3232)
!3232 = !{!3233, !3237}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !3231, file: !24, line: 1012, baseType: !3234, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DISubroutineType(types: !3236)
!3236 = !{null, !3199, !3199}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !3231, file: !24, line: 1013, baseType: !3238, size: 64, offset: 64)
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{null, !3199}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !3200, file: !24, line: 1088, baseType: !3242, size: 64, offset: 1344)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3244)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !24, line: 1016, size: 512, elements: !3245)
!3245 = !{!3246, !3250, !3254, !3255, !3259, !3263, !3267, !3271}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !3244, file: !24, line: 1017, baseType: !3247, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3248, size: 64)
!3248 = !DISubroutineType(types: !3249)
!3249 = !{!3185, !3185}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !3244, file: !24, line: 1018, baseType: !3251, size: 64, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = !DISubroutineType(types: !3253)
!3253 = !{null, !3185}
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !3244, file: !24, line: 1019, baseType: !3238, size: 64, offset: 128)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !3244, file: !24, line: 1020, baseType: !3256, size: 64, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{!299, !3199, !299}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !3244, file: !24, line: 1021, baseType: !3260, size: 64, offset: 256)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!315, !3199}
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !3244, file: !24, line: 1022, baseType: !3264, size: 64, offset: 320)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DISubroutineType(types: !3266)
!3266 = !{!299, !3199, !299, !151}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !3244, file: !24, line: 1023, baseType: !3268, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DISubroutineType(types: !3270)
!3270 = !{null, !3199, !668}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !3244, file: !24, line: 1024, baseType: !3260, size: 64, offset: 448)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !3200, file: !24, line: 1097, baseType: !3273, size: 256, offset: 1408)
!3273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3200, file: !24, line: 1089, size: 256, elements: !3274)
!3274 = !{!3275, !3284, !3290}
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !3273, file: !24, line: 1090, baseType: !3276, size: 256)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !3277, line: 10, size: 256, elements: !3278)
!3277 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!3278 = !{!3279, !3280, !3283}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3276, file: !3277, line: 11, baseType: !233, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3276, file: !3277, line: 12, baseType: !3281, size: 64, offset: 64)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !3277, line: 5, flags: DIFlagFwdDecl)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3276, file: !3277, line: 13, baseType: !148, size: 128, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !3273, file: !24, line: 1091, baseType: !3285, size: 64)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !3277, line: 17, size: 64, elements: !3286)
!3286 = !{!3287}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3285, file: !3277, line: 18, baseType: !3288, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !3277, line: 16, flags: DIFlagFwdDecl)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !3273, file: !24, line: 1096, baseType: !3291, size: 192)
!3291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3273, file: !24, line: 1092, size: 192, elements: !3292)
!3292 = !{!3293, !3294, !3295}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3291, file: !24, line: 1093, baseType: !148, size: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3291, file: !24, line: 1094, baseType: !299, size: 32, offset: 128)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3291, file: !24, line: 1095, baseType: !7, size: 32, offset: 160)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !156, file: !24, line: 1843, baseType: !3297, size: 64, offset: 1280)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!401, !170, !554, !299, !404, !2992, !299}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !156, file: !24, line: 1844, baseType: !948, size: 64, offset: 1344)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !156, file: !24, line: 1845, baseType: !3302, size: 64, offset: 1408)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!299, !299}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !156, file: !24, line: 1846, baseType: !3196, size: 64, offset: 1472)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !156, file: !24, line: 1847, baseType: !3307, size: 64, offset: 1536)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!401, !1954, !170, !2992, !404, !7}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !156, file: !24, line: 1848, baseType: !3311, size: 64, offset: 1600)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!401, !170, !2992, !1954, !404, !7}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !156, file: !24, line: 1849, baseType: !3315, size: 64, offset: 1664)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!299, !170, !364, !3318, !668}
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !156, file: !24, line: 1850, baseType: !3320, size: 64, offset: 1728)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{!364, !170, !299, !166, !166}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !156, file: !24, line: 1852, baseType: !3324, size: 64, offset: 1792)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{null, !544, !170}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !156, file: !24, line: 1856, baseType: !3328, size: 64, offset: 1856)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DISubroutineType(types: !3330)
!3330 = !{!401, !170, !166, !170, !166, !404, !7}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !156, file: !24, line: 1858, baseType: !3332, size: 64, offset: 1920)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!166, !170, !166, !170, !166, !166, !7}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !156, file: !24, line: 1861, baseType: !3188, size: 64, offset: 1984)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !145, file: !108, line: 160, baseType: !3337, size: 64, offset: 192)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dvb_adapter", file: !108, line: 101, size: 960, elements: !3339)
!3339 = !{!3340, !3341, !3342, !3343, !3344, !3346, !3347, !3898, !3899, !3900, !3901}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3338, file: !108, line: 102, baseType: !299, size: 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "list_head", scope: !3338, file: !108, line: 103, baseType: !148, size: 128, offset: 64)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !3338, file: !108, line: 104, baseType: !148, size: 128, offset: 192)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3338, file: !108, line: 105, baseType: !283, size: 64, offset: 320)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "proposed_mac", scope: !3338, file: !108, line: 106, baseType: !3345, size: 48, offset: 384)
!3345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1199, size: 48, elements: !1477)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3338, file: !108, line: 107, baseType: !143, size: 64, offset: 448)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3338, file: !108, line: 109, baseType: !3348, size: 64, offset: 512)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !3350)
!3350 = !{!3351, !3352, !3353, !3356, !3357, !3408, !3499, !3500, !3501, !3502, !3503, !3512, !3617, !3630, !3825, !3826, !3830, !3832, !3833, !3834, !3838, !3844, !3845, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3886, !3887, !3888, !3891, !3894, !3895, !3896, !3897}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3349, file: !73, line: 462, baseType: !2741, size: 512)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3349, file: !73, line: 463, baseType: !3348, size: 64, offset: 512)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3349, file: !73, line: 465, baseType: !3354, size: 64, offset: 576)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3349, file: !73, line: 467, baseType: !283, size: 64, offset: 640)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3349, file: !73, line: 468, baseType: !3358, size: 64, offset: 704)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3360)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3361)
!3361 = !{!3362, !3363, !3364, !3368, !3373, !3377}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3360, file: !73, line: 88, baseType: !283, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3360, file: !73, line: 89, baseType: !2818, size: 64, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3360, file: !73, line: 90, baseType: !3365, size: 64, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{!299, !3348, !2775}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3360, file: !73, line: 91, baseType: !3369, size: 64, offset: 192)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!310, !3348, !3372, !2886, !2887}
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3360, file: !73, line: 93, baseType: !3374, size: 64, offset: 256)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{null, !3348}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3360, file: !73, line: 95, baseType: !3378, size: 64, offset: 320)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3380)
!3380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3381)
!3381 = !{!3382, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3380, file: !80, line: 279, baseType: !3383, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3384, size: 64)
!3384 = !DISubroutineType(types: !3385)
!3385 = !{!299, !3348}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3380, file: !80, line: 280, baseType: !3374, size: 64, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3380, file: !80, line: 281, baseType: !3383, size: 64, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3380, file: !80, line: 282, baseType: !3383, size: 64, offset: 192)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3380, file: !80, line: 283, baseType: !3383, size: 64, offset: 256)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3380, file: !80, line: 284, baseType: !3383, size: 64, offset: 320)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3380, file: !80, line: 285, baseType: !3383, size: 64, offset: 384)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3380, file: !80, line: 286, baseType: !3383, size: 64, offset: 448)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3380, file: !80, line: 287, baseType: !3383, size: 64, offset: 512)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3380, file: !80, line: 288, baseType: !3383, size: 64, offset: 576)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3380, file: !80, line: 289, baseType: !3383, size: 64, offset: 640)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3380, file: !80, line: 290, baseType: !3383, size: 64, offset: 704)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3380, file: !80, line: 291, baseType: !3383, size: 64, offset: 768)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3380, file: !80, line: 292, baseType: !3383, size: 64, offset: 832)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3380, file: !80, line: 293, baseType: !3383, size: 64, offset: 896)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3380, file: !80, line: 294, baseType: !3383, size: 64, offset: 960)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3380, file: !80, line: 295, baseType: !3383, size: 64, offset: 1024)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3380, file: !80, line: 296, baseType: !3383, size: 64, offset: 1088)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3380, file: !80, line: 297, baseType: !3383, size: 64, offset: 1152)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3380, file: !80, line: 298, baseType: !3383, size: 64, offset: 1216)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3380, file: !80, line: 299, baseType: !3383, size: 64, offset: 1280)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3380, file: !80, line: 300, baseType: !3383, size: 64, offset: 1344)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3380, file: !80, line: 301, baseType: !3383, size: 64, offset: 1408)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3349, file: !73, line: 470, baseType: !3409, size: 64, offset: 768)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3411, line: 82, size: 1408, elements: !3412)
!3411 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3412 = !{!3413, !3414, !3415, !3416, !3417, !3418, !3419, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3494, !3497, !3498}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3410, file: !3411, line: 83, baseType: !283, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3410, file: !3411, line: 84, baseType: !283, size: 64, offset: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3410, file: !3411, line: 85, baseType: !3348, size: 64, offset: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3410, file: !3411, line: 86, baseType: !2818, size: 64, offset: 192)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3410, file: !3411, line: 87, baseType: !2818, size: 64, offset: 256)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3410, file: !3411, line: 88, baseType: !2818, size: 64, offset: 320)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3410, file: !3411, line: 90, baseType: !3420, size: 64, offset: 384)
!3420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3421, size: 64)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!299, !3348, !3423}
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3425)
!3425 = !{!3426, !3427, !3428, !3429, !3430, !3431, !3432, !3445, !3458, !3459, !3460, !3461, !3462, !3470, !3471, !3472, !3473, !3474, !3475}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3424, file: !67, line: 96, baseType: !283, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3424, file: !67, line: 97, baseType: !3409, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3424, file: !67, line: 99, baseType: !159, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3424, file: !67, line: 100, baseType: !283, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3424, file: !67, line: 102, baseType: !315, size: 8, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3424, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3424, file: !67, line: 105, baseType: !3433, size: 64, offset: 320)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3435)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3436, line: 262, size: 1600, elements: !3437)
!3436 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3437 = !{!3438, !3439, !3440, !3444}
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3435, file: !3436, line: 263, baseType: !2556, size: 256)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3435, file: !3436, line: 264, baseType: !2556, size: 256, offset: 256)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3435, file: !3436, line: 265, baseType: !3441, size: 1024, offset: 512)
!3441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 1024, elements: !3442)
!3442 = !{!3443}
!3443 = !DISubrange(count: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3435, file: !3436, line: 266, baseType: !1983, size: 64, offset: 1536)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3424, file: !67, line: 106, baseType: !3446, size: 64, offset: 384)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3448)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3436, line: 210, size: 256, elements: !3449)
!3449 = !{!3450, !3454, !3456, !3457}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3448, file: !3436, line: 211, baseType: !3451, size: 72)
!3451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1200, size: 72, elements: !3452)
!3452 = !{!3453}
!3453 = !DISubrange(count: 9)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3448, file: !3436, line: 212, baseType: !3455, size: 64, offset: 128)
!3455 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3436, line: 14, baseType: !407)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3448, file: !3436, line: 213, baseType: !235, size: 32, offset: 192)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3448, file: !3436, line: 214, baseType: !235, size: 32, offset: 224)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3424, file: !67, line: 108, baseType: !3383, size: 64, offset: 448)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3424, file: !67, line: 109, baseType: !3374, size: 64, offset: 512)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3424, file: !67, line: 110, baseType: !3383, size: 64, offset: 576)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3424, file: !67, line: 111, baseType: !3374, size: 64, offset: 640)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3424, file: !67, line: 112, baseType: !3463, size: 64, offset: 704)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!299, !3348, !3466}
!3466 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3467)
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3468)
!3468 = !{!3469}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3467, file: !80, line: 51, baseType: !299, size: 32)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3424, file: !67, line: 113, baseType: !3383, size: 64, offset: 768)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3424, file: !67, line: 114, baseType: !2818, size: 64, offset: 832)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3424, file: !67, line: 115, baseType: !2818, size: 64, offset: 896)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3424, file: !67, line: 117, baseType: !3378, size: 64, offset: 960)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3424, file: !67, line: 118, baseType: !3374, size: 64, offset: 1024)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3424, file: !67, line: 120, baseType: !3476, size: 64, offset: 1088)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3477, size: 64)
!3477 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3410, file: !3411, line: 91, baseType: !3365, size: 64, offset: 448)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3410, file: !3411, line: 92, baseType: !3383, size: 64, offset: 512)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3410, file: !3411, line: 93, baseType: !3374, size: 64, offset: 576)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3410, file: !3411, line: 94, baseType: !3383, size: 64, offset: 640)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3410, file: !3411, line: 95, baseType: !3374, size: 64, offset: 704)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3410, file: !3411, line: 97, baseType: !3383, size: 64, offset: 768)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3410, file: !3411, line: 98, baseType: !3383, size: 64, offset: 832)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3410, file: !3411, line: 100, baseType: !3463, size: 64, offset: 896)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3410, file: !3411, line: 101, baseType: !3383, size: 64, offset: 960)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3410, file: !3411, line: 103, baseType: !3383, size: 64, offset: 1024)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3410, file: !3411, line: 105, baseType: !3383, size: 64, offset: 1088)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3410, file: !3411, line: 107, baseType: !3378, size: 64, offset: 1152)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3410, file: !3411, line: 109, baseType: !3491, size: 64, offset: 1216)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3493)
!3493 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3411, line: 109, flags: DIFlagFwdDecl)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3410, file: !3411, line: 111, baseType: !3495, size: 64, offset: 1280)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3411, line: 111, flags: DIFlagFwdDecl)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3410, file: !3411, line: 112, baseType: !475, offset: 1344)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3410, file: !3411, line: 114, baseType: !315, size: 8, offset: 1344)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3349, file: !73, line: 471, baseType: !3423, size: 64, offset: 832)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3349, file: !73, line: 473, baseType: !143, size: 64, offset: 896)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3349, file: !73, line: 475, baseType: !143, size: 64, offset: 960)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3349, file: !73, line: 480, baseType: !1020, size: 192, offset: 1024)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3349, file: !73, line: 484, baseType: !3504, size: 576, offset: 1216)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3505)
!3505 = !{!3506, !3507, !3508, !3509, !3510, !3511}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3504, file: !73, line: 362, baseType: !148, size: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3504, file: !73, line: 363, baseType: !148, size: 128, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3504, file: !73, line: 364, baseType: !148, size: 128, offset: 256)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3504, file: !73, line: 365, baseType: !148, size: 128, offset: 384)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3504, file: !73, line: 366, baseType: !315, size: 8, offset: 512)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3504, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3349, file: !73, line: 485, baseType: !3513, size: 2304, offset: 1792)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3514)
!3514 = !{!3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3610, !3614}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3513, file: !80, line: 566, baseType: !3466, size: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3513, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3513, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3513, file: !80, line: 569, baseType: !315, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3513, file: !80, line: 570, baseType: !315, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3513, file: !80, line: 571, baseType: !315, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3513, file: !80, line: 572, baseType: !315, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3513, file: !80, line: 573, baseType: !315, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3513, file: !80, line: 574, baseType: !315, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3513, file: !80, line: 575, baseType: !315, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3513, file: !80, line: 576, baseType: !315, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3513, file: !80, line: 577, baseType: !233, size: 32, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3513, file: !80, line: 578, baseType: !576, offset: 96)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3513, file: !80, line: 580, baseType: !148, size: 128, offset: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3513, file: !80, line: 581, baseType: !1354, size: 192, offset: 256)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3513, file: !80, line: 582, baseType: !3531, size: 64, offset: 448)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3533, line: 43, size: 1472, elements: !3534)
!3533 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3534 = !{!3535, !3536, !3537, !3538, !3539, !3542, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3532, file: !3533, line: 44, baseType: !283, size: 64)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3532, file: !3533, line: 45, baseType: !299, size: 32, offset: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3532, file: !3533, line: 46, baseType: !148, size: 128, offset: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3532, file: !3533, line: 47, baseType: !576, offset: 256)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3532, file: !3533, line: 48, baseType: !3540, size: 64, offset: 256)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3532, file: !3533, line: 49, baseType: !3543, size: 320, offset: 320)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3544, line: 11, size: 320, elements: !3545)
!3544 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3545 = !{!3546, !3547, !3548, !3553}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3543, file: !3544, line: 16, baseType: !469, size: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3543, file: !3544, line: 17, baseType: !407, size: 64, offset: 128)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3543, file: !3544, line: 18, baseType: !3549, size: 64, offset: 192)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{null, !3552}
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3543, file: !3544, line: 19, baseType: !233, size: 32, offset: 256)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3532, file: !3533, line: 50, baseType: !407, size: 64, offset: 640)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3532, file: !3533, line: 51, baseType: !1147, size: 64, offset: 704)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3532, file: !3533, line: 52, baseType: !1147, size: 64, offset: 768)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3532, file: !3533, line: 53, baseType: !1147, size: 64, offset: 832)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3532, file: !3533, line: 54, baseType: !1147, size: 64, offset: 896)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3532, file: !3533, line: 55, baseType: !1147, size: 64, offset: 960)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3532, file: !3533, line: 56, baseType: !407, size: 64, offset: 1024)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3532, file: !3533, line: 57, baseType: !407, size: 64, offset: 1088)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3532, file: !3533, line: 58, baseType: !407, size: 64, offset: 1152)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3532, file: !3533, line: 59, baseType: !407, size: 64, offset: 1216)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3532, file: !3533, line: 60, baseType: !407, size: 64, offset: 1280)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3532, file: !3533, line: 61, baseType: !3348, size: 64, offset: 1344)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3532, file: !3533, line: 62, baseType: !315, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3532, file: !3533, line: 63, baseType: !315, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3513, file: !80, line: 583, baseType: !315, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3513, file: !80, line: 584, baseType: !315, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3513, file: !80, line: 585, baseType: !315, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3513, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3513, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3513, file: !80, line: 592, baseType: !1139, size: 512, offset: 576)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3513, file: !80, line: 593, baseType: !239, size: 64, offset: 1088)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3513, file: !80, line: 594, baseType: !1813, size: 256, offset: 1152)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3513, file: !80, line: 595, baseType: !1333, size: 128, offset: 1408)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3513, file: !80, line: 596, baseType: !3540, size: 64, offset: 1536)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3513, file: !80, line: 597, baseType: !594, size: 32, offset: 1600)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3513, file: !80, line: 598, baseType: !594, size: 32, offset: 1632)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3513, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3513, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3513, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3513, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3513, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3513, file: !80, line: 604, baseType: !315, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3513, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3513, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3513, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3513, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3513, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3513, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3513, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3513, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3513, file: !80, line: 613, baseType: !299, size: 32, offset: 1792)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3513, file: !80, line: 614, baseType: !299, size: 32, offset: 1824)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3513, file: !80, line: 615, baseType: !239, size: 64, offset: 1856)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3513, file: !80, line: 616, baseType: !239, size: 64, offset: 1920)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3513, file: !80, line: 617, baseType: !239, size: 64, offset: 1984)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3513, file: !80, line: 618, baseType: !239, size: 64, offset: 2048)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3513, file: !80, line: 620, baseType: !3601, size: 64, offset: 2112)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3603)
!3603 = !{!3604, !3605, !3606, !3607}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3602, file: !80, line: 537, baseType: !576)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3602, file: !80, line: 538, baseType: !7, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3602, file: !80, line: 540, baseType: !148, size: 128, offset: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3602, file: !80, line: 543, baseType: !3608, size: 64, offset: 192)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3513, file: !80, line: 621, baseType: !3611, size: 64, offset: 2176)
!3611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3612, size: 64)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{null, !3348, !1291}
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3513, file: !80, line: 622, baseType: !3615, size: 64, offset: 2240)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3349, file: !73, line: 486, baseType: !3618, size: 64, offset: 4096)
!3618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3619, size: 64)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3620)
!3620 = !{!3621, !3622, !3623, !3627, !3628, !3629}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3619, file: !80, line: 643, baseType: !3380, size: 1472)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3619, file: !80, line: 644, baseType: !3383, size: 64, offset: 1472)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3619, file: !80, line: 645, baseType: !3624, size: 64, offset: 1536)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{null, !3348, !315}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3619, file: !80, line: 646, baseType: !3383, size: 64, offset: 1600)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3619, file: !80, line: 647, baseType: !3374, size: 64, offset: 1664)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3619, file: !80, line: 648, baseType: !3374, size: 64, offset: 1728)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3349, file: !73, line: 493, baseType: !3631, size: 64, offset: 4160)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3633)
!3633 = !{!3634, !3635, !3636, !3809, !3810, !3811, !3812, !3813, !3814, !3817, !3818, !3819, !3820, !3821, !3822, !3823}
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3632, file: !94, line: 163, baseType: !148, size: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3632, file: !94, line: 164, baseType: !283, size: 64, offset: 128)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3632, file: !94, line: 165, baseType: !3637, size: 64, offset: 192)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3639)
!3639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3640)
!3640 = !{!3641, !3759, !3770, !3775, !3779, !3786, !3790, !3794, !3801, !3805}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3639, file: !94, line: 106, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!299, !3631, !3645, !93}
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3647, line: 51, size: 1344, elements: !3648)
!3647 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3648 = !{!3649, !3650, !3652, !3653, !3743, !3752, !3753, !3754, !3755, !3756, !3757, !3758}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3646, file: !3647, line: 52, baseType: !283, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3646, file: !3647, line: 53, baseType: !3651, size: 32, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3647, line: 28, baseType: !233)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3646, file: !3647, line: 54, baseType: !283, size: 64, offset: 128)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3646, file: !3647, line: 55, baseType: !3654, size: 192, offset: 192)
!3654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3655, line: 17, size: 192, elements: !3656)
!3655 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3656 = !{!3657, !3659, !3742}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3654, file: !3655, line: 18, baseType: !3658, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3654, file: !3655, line: 19, baseType: !3660, size: 64, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3662)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3655, line: 110, size: 1152, elements: !3663)
!3663 = !{!3664, !3668, !3672, !3678, !3684, !3688, !3692, !3697, !3701, !3702, !3706, !3710, !3714, !3725, !3726, !3727, !3728, !3738}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3662, file: !3655, line: 111, baseType: !3665, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!3658, !3658}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3662, file: !3655, line: 112, baseType: !3669, size: 64, offset: 64)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{null, !3658}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3662, file: !3655, line: 113, baseType: !3673, size: 64, offset: 128)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!315, !3676}
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3654)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3662, file: !3655, line: 114, baseType: !3679, size: 64, offset: 192)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!1983, !3676, !3682}
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3349)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3662, file: !3655, line: 116, baseType: !3685, size: 64, offset: 256)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!315, !3676, !283}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3662, file: !3655, line: 118, baseType: !3689, size: 64, offset: 320)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!299, !3676, !283, !7, !143, !404}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3662, file: !3655, line: 123, baseType: !3693, size: 64, offset: 384)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!299, !3676, !283, !3696, !404}
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3662, file: !3655, line: 126, baseType: !3698, size: 64, offset: 448)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!283, !3676}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3662, file: !3655, line: 127, baseType: !3698, size: 64, offset: 512)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3662, file: !3655, line: 128, baseType: !3703, size: 64, offset: 576)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!3658, !3676}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3662, file: !3655, line: 130, baseType: !3707, size: 64, offset: 640)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!3658, !3676, !3658}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3662, file: !3655, line: 133, baseType: !3711, size: 64, offset: 704)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!3658, !3676, !283}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3662, file: !3655, line: 135, baseType: !3715, size: 64, offset: 768)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!299, !3676, !283, !283, !7, !7, !3718}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3655, line: 43, size: 640, elements: !3720)
!3720 = !{!3721, !3722, !3723}
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3719, file: !3655, line: 44, baseType: !3658, size: 64)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3719, file: !3655, line: 45, baseType: !7, size: 32, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3719, file: !3655, line: 46, baseType: !3724, size: 512, offset: 128)
!3724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 512, elements: !1177)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3662, file: !3655, line: 140, baseType: !3707, size: 64, offset: 832)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3662, file: !3655, line: 143, baseType: !3703, size: 64, offset: 896)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3662, file: !3655, line: 145, baseType: !3665, size: 64, offset: 960)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3662, file: !3655, line: 146, baseType: !3729, size: 64, offset: 1024)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!299, !3676, !3732}
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3655, line: 29, size: 128, elements: !3734)
!3734 = !{!3735, !3736, !3737}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3733, file: !3655, line: 30, baseType: !7, size: 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3733, file: !3655, line: 31, baseType: !7, size: 32, offset: 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3733, file: !3655, line: 32, baseType: !3676, size: 64, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3662, file: !3655, line: 148, baseType: !3739, size: 64, offset: 1088)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!299, !3676, !3348}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3654, file: !3655, line: 20, baseType: !3348, size: 64, offset: 128)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3646, file: !3647, line: 57, baseType: !3744, size: 64, offset: 384)
!3744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3647, line: 31, size: 704, elements: !3746)
!3746 = !{!3747, !3748, !3749, !3750, !3751}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3745, file: !3647, line: 32, baseType: !310, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3745, file: !3647, line: 33, baseType: !299, size: 32, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3745, file: !3647, line: 34, baseType: !143, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3745, file: !3647, line: 35, baseType: !3744, size: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3745, file: !3647, line: 43, baseType: !2833, size: 448, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3646, file: !3647, line: 58, baseType: !3744, size: 64, offset: 448)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3646, file: !3647, line: 59, baseType: !3645, size: 64, offset: 512)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3646, file: !3647, line: 60, baseType: !3645, size: 64, offset: 576)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3646, file: !3647, line: 61, baseType: !3645, size: 64, offset: 640)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3646, file: !3647, line: 63, baseType: !2741, size: 512, offset: 704)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3646, file: !3647, line: 65, baseType: !407, size: 64, offset: 1216)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3646, file: !3647, line: 66, baseType: !143, size: 64, offset: 1280)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3639, file: !94, line: 108, baseType: !3760, size: 64, offset: 64)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!299, !3631, !3763, !93}
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3765)
!3765 = !{!3766, !3767, !3768}
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3764, file: !94, line: 64, baseType: !3658, size: 64)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3764, file: !94, line: 65, baseType: !299, size: 32, offset: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3764, file: !94, line: 66, baseType: !3769, size: 512, offset: 96)
!3769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 512, elements: !1587)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3639, file: !94, line: 110, baseType: !3771, size: 64, offset: 128)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!299, !3631, !7, !3774}
!3774 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !142, line: 164, baseType: !407)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3639, file: !94, line: 111, baseType: !3776, size: 64, offset: 192)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{null, !3631, !7}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3639, file: !94, line: 112, baseType: !3780, size: 64, offset: 256)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!299, !3631, !3645, !3783, !7, !3785, !2539}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3639, file: !94, line: 117, baseType: !3787, size: 64, offset: 320)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!299, !3631, !7, !7, !143}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3639, file: !94, line: 119, baseType: !3791, size: 64, offset: 384)
!3791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3792, size: 64)
!3792 = !DISubroutineType(types: !3793)
!3793 = !{null, !3631, !7, !7}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3639, file: !94, line: 121, baseType: !3795, size: 64, offset: 448)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!299, !3631, !3798, !315}
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3800, line: 11, flags: DIFlagFwdDecl)
!3800 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3639, file: !94, line: 122, baseType: !3802, size: 64, offset: 512)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{null, !3631, !3798}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3639, file: !94, line: 123, baseType: !3806, size: 64, offset: 576)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!299, !3631, !3763, !3785, !2539}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3632, file: !94, line: 166, baseType: !143, size: 64, offset: 256)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3632, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3632, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3632, file: !94, line: 171, baseType: !3658, size: 64, offset: 384)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3632, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3632, file: !94, line: 173, baseType: !3815, size: 64, offset: 512)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3632, file: !94, line: 175, baseType: !3631, size: 64, offset: 576)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3632, file: !94, line: 182, baseType: !3774, size: 64, offset: 640)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3632, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3632, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3632, file: !94, line: 185, baseType: !572, size: 128, offset: 768)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3632, file: !94, line: 186, baseType: !1020, size: 192, offset: 896)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3632, file: !94, line: 187, baseType: !3824, offset: 1088)
!3824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2187)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3349, file: !73, line: 499, baseType: !148, size: 128, offset: 4224)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3349, file: !73, line: 502, baseType: !3827, size: 64, offset: 4352)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3829)
!3829 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3349, file: !73, line: 504, baseType: !3831, size: 64, offset: 4416)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3349, file: !73, line: 505, baseType: !239, size: 64, offset: 4480)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3349, file: !73, line: 510, baseType: !239, size: 64, offset: 4544)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3349, file: !73, line: 511, baseType: !3835, size: 64, offset: 4608)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3837)
!3837 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3349, file: !73, line: 513, baseType: !3839, size: 64, offset: 4672)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3841)
!3841 = !{!3842, !3843}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3840, file: !73, line: 293, baseType: !7, size: 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3840, file: !73, line: 294, baseType: !407, size: 64, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3349, file: !73, line: 515, baseType: !148, size: 128, offset: 4736)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3349, file: !73, line: 526, baseType: !3846, offset: 4864)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3847, line: 5, elements: !477)
!3847 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3349, file: !73, line: 528, baseType: !3645, size: 64, offset: 4864)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3349, file: !73, line: 529, baseType: !3658, size: 64, offset: 4928)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3349, file: !73, line: 534, baseType: !338, size: 32, offset: 4992)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3349, file: !73, line: 535, baseType: !233, size: 32, offset: 5024)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3349, file: !73, line: 537, baseType: !576, offset: 5056)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3349, file: !73, line: 538, baseType: !148, size: 128, offset: 5056)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3349, file: !73, line: 540, baseType: !3855, size: 64, offset: 5184)
!3855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3856, size: 64)
!3856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3857, line: 54, size: 960, elements: !3858)
!3857 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3858 = !{!3859, !3860, !3861, !3862, !3863, !3864, !3865, !3869, !3873, !3874, !3875, !3876, !3880, !3884, !3885}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3856, file: !3857, line: 55, baseType: !283, size: 64)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3856, file: !3857, line: 56, baseType: !159, size: 64, offset: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3856, file: !3857, line: 58, baseType: !2818, size: 64, offset: 128)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3856, file: !3857, line: 59, baseType: !2818, size: 64, offset: 192)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3856, file: !3857, line: 60, baseType: !2747, size: 64, offset: 256)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3856, file: !3857, line: 62, baseType: !3365, size: 64, offset: 320)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3856, file: !3857, line: 63, baseType: !3866, size: 64, offset: 384)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!310, !3348, !3372}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3856, file: !3857, line: 65, baseType: !3870, size: 64, offset: 448)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{null, !3855}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3856, file: !3857, line: 66, baseType: !3374, size: 64, offset: 512)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3856, file: !3857, line: 68, baseType: !3383, size: 64, offset: 576)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3856, file: !3857, line: 70, baseType: !2854, size: 64, offset: 640)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3856, file: !3857, line: 71, baseType: !3877, size: 64, offset: 704)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!1983, !3348}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3856, file: !3857, line: 73, baseType: !3881, size: 64, offset: 768)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{null, !3348, !2886, !2887}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3856, file: !3857, line: 75, baseType: !3378, size: 64, offset: 832)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3856, file: !3857, line: 77, baseType: !3495, size: 64, offset: 896)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3349, file: !73, line: 541, baseType: !2818, size: 64, offset: 5248)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3349, file: !73, line: 543, baseType: !3374, size: 64, offset: 5312)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3349, file: !73, line: 544, baseType: !3889, size: 64, offset: 5376)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3349, file: !73, line: 545, baseType: !3892, size: 64, offset: 5440)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3349, file: !73, line: 547, baseType: !315, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3349, file: !73, line: 548, baseType: !315, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3349, file: !73, line: 549, baseType: !315, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3349, file: !73, line: 550, baseType: !315, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !3338, file: !108, line: 111, baseType: !159, size: 64, offset: 576)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_shared", scope: !3338, file: !108, line: 113, baseType: !299, size: 32, offset: 640)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_dvbdev", scope: !3338, file: !108, line: 114, baseType: !144, size: 64, offset: 704)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "mfe_lock", scope: !3338, file: !108, line: 115, baseType: !1020, size: 192, offset: 768)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !145, file: !108, line: 161, baseType: !107, size: 32, offset: 256)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !145, file: !108, line: 162, baseType: !299, size: 32, offset: 288)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !145, file: !108, line: 163, baseType: !233, size: 32, offset: 320)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "readers", scope: !145, file: !108, line: 167, baseType: !299, size: 32, offset: 352)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "writers", scope: !145, file: !108, line: 168, baseType: !299, size: 32, offset: 384)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !145, file: !108, line: 169, baseType: !299, size: 32, offset: 416)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !145, file: !108, line: 171, baseType: !1333, size: 128, offset: 448)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_ioctl", scope: !145, file: !108, line: 173, baseType: !3910, size: 64, offset: 576)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!299, !170, !7, !143}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !145, file: !108, line: 187, baseType: !143, size: 64, offset: 640)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !151)
!3916 = !{!3917, !3969, !3974, !3979, !3987, !3993, !3995, !4000, !4005, !4008, !4013, !4018, !4020, !4022, !4027, !0, !4029, !4031, !4033, !4037, !4039, !4044, !4046}
!3917 = !DIGlobalVariableExpression(var: !3918, expr: !DIExpression())
!3918 = distinct !DIGlobalVariable(name: "__param_dvbdev_debug", scope: !2, file: !3, line: 42, type: !3919, isLocal: true, isDefinition: true, align: 64)
!3919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3920)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3921, line: 69, size: 320, elements: !3922)
!3921 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!3922 = !{!3923, !3924, !3925, !3941, !3943, !3947, !3948}
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3920, file: !3921, line: 70, baseType: !283, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3920, file: !3921, line: 71, baseType: !159, size: 64, offset: 64)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3920, file: !3921, line: 72, baseType: !3926, size: 64, offset: 128)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3928)
!3928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3921, line: 47, size: 256, elements: !3929)
!3929 = !{!3930, !3931, !3936, !3940}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3928, file: !3921, line: 49, baseType: !7, size: 32)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3928, file: !3921, line: 51, baseType: !3932, size: 64, offset: 64)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{!299, !283, !3935}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3928, file: !3921, line: 53, baseType: !3937, size: 64, offset: 128)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!299, !310, !3935}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3928, file: !3921, line: 55, baseType: !291, size: 64, offset: 192)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3920, file: !3921, line: 73, baseType: !3942, size: 16, offset: 192)
!3942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !706)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3920, file: !3921, line: 74, baseType: !3944, size: 8, offset: 208)
!3944 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !234, line: 16, baseType: !3945)
!3945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !236, line: 20, baseType: !3946)
!3946 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3920, file: !3921, line: 75, baseType: !1199, size: 8, offset: 216)
!3948 = !DIDerivedType(tag: DW_TAG_member, scope: !3920, file: !3921, line: 76, baseType: !3949, size: 64, offset: 256)
!3949 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3920, file: !3921, line: 76, size: 64, elements: !3950)
!3950 = !{!3951, !3952, !3959}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3949, file: !3921, line: 77, baseType: !143, size: 64)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3949, file: !3921, line: 78, baseType: !3953, size: 64)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3955)
!3955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3921, line: 86, size: 128, elements: !3956)
!3956 = !{!3957, !3958}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3955, file: !3921, line: 87, baseType: !7, size: 32)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3955, file: !3921, line: 88, baseType: !310, size: 64, offset: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3949, file: !3921, line: 79, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3962)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3921, line: 92, size: 256, elements: !3963)
!3963 = !{!3964, !3965, !3966, !3967, !3968}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3962, file: !3921, line: 94, baseType: !7, size: 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3962, file: !3921, line: 95, baseType: !7, size: 32, offset: 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3962, file: !3921, line: 96, baseType: !2539, size: 64, offset: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3962, file: !3921, line: 97, baseType: !3926, size: 64, offset: 128)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3962, file: !3921, line: 98, baseType: !143, size: 64, offset: 192)
!3969 = !DIGlobalVariableExpression(var: !3970, expr: !DIExpression())
!3970 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_dvbdev_debugtype250", scope: !2, file: !3, line: 42, type: !3971, isLocal: true, isDefinition: true, align: 8)
!3971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 280, elements: !3972)
!3972 = !{!3973}
!3973 = !DISubrange(count: 35)
!3974 = !DIGlobalVariableExpression(var: !3975, expr: !DIExpression())
!3975 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_dvbdev_debug251", scope: !2, file: !3, line: 43, type: !3976, isLocal: true, isDefinition: true, align: 8)
!3976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 568, elements: !3977)
!3977 = !{!3978}
!3978 = !DISubrange(count: 71)
!3979 = !DIGlobalVariableExpression(var: !3980, expr: !DIExpression())
!3980 = distinct !DIGlobalVariable(name: "__key", scope: !3981, file: !3, line: 495, type: !475, isLocal: true, isDefinition: true)
!3981 = distinct !DISubprogram(name: "dvb_register_device", scope: !3, file: !3, line: 455, type: !3982, scopeLine: 458, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !477)
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!299, !3337, !3984, !3985, !143, !107, !299}
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !145)
!3987 = !DIGlobalVariableExpression(var: !3988, expr: !DIExpression())
!3988 = distinct !DIGlobalVariable(name: "__key", scope: !3989, file: !3, line: 876, type: !475, isLocal: true, isDefinition: true)
!3989 = distinct !DISubprogram(name: "dvb_register_adapter", scope: !3, file: !3, line: 839, type: !3990, scopeLine: 842, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !477)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!299, !3337, !283, !159, !3348, !3992}
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!3993 = !DIGlobalVariableExpression(var: !3994, expr: !DIExpression())
!3994 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_init_dvbdev256", scope: !2, file: !3, line: 1072, type: !143, isLocal: true, isDefinition: true)
!3995 = !DIGlobalVariableExpression(var: !3996, expr: !DIExpression())
!3996 = distinct !DIGlobalVariable(name: "__exitcall_exit_dvbdev", scope: !2, file: !3, line: 1073, type: !3997, isLocal: true, isDefinition: true)
!3997 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3998, line: 117, baseType: !3999)
!3998 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!4000 = !DIGlobalVariableExpression(var: !4001, expr: !DIExpression())
!4001 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description257", scope: !2, file: !3, line: 1075, type: !4002, isLocal: true, isDefinition: true, align: 8)
!4002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 296, elements: !4003)
!4003 = !{!4004}
!4004 = !DISubrange(count: 37)
!4005 = !DIGlobalVariableExpression(var: !4006, expr: !DIExpression())
!4006 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author258", scope: !2, file: !3, line: 1076, type: !4007, isLocal: true, isDefinition: true, align: 8)
!4007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 512, elements: !1735)
!4008 = !DIGlobalVariableExpression(var: !4009, expr: !DIExpression())
!4009 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file259", scope: !2, file: !3, line: 1077, type: !4010, isLocal: true, isDefinition: true, align: 8)
!4010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 368, elements: !4011)
!4011 = !{!4012}
!4012 = !DISubrange(count: 46)
!4013 = !DIGlobalVariableExpression(var: !4014, expr: !DIExpression())
!4014 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license260", scope: !2, file: !3, line: 1077, type: !4015, isLocal: true, isDefinition: true, align: 8)
!4015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 168, elements: !4016)
!4016 = !{!4017}
!4017 = !DISubrange(count: 21)
!4018 = !DIGlobalVariableExpression(var: !4019, expr: !DIExpression())
!4019 = distinct !DIGlobalVariable(name: "dvbdev_debug", scope: !2, file: !3, line: 40, type: !299, isLocal: true, isDefinition: true)
!4020 = !DIGlobalVariableExpression(var: !4021, expr: !DIExpression())
!4021 = distinct !DIGlobalVariable(name: "dvb_class", scope: !2, file: !3, line: 90, type: !3855, isLocal: true, isDefinition: true)
!4022 = !DIGlobalVariableExpression(var: !4023, expr: !DIExpression())
!4023 = distinct !DIGlobalVariable(name: "dvb_minors", scope: !2, file: !3, line: 92, type: !4024, isLocal: true, isDefinition: true)
!4024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 16384, elements: !4025)
!4025 = !{!4026}
!4026 = !DISubrange(count: 256)
!4027 = !DIGlobalVariableExpression(var: !4028, expr: !DIExpression())
!4028 = distinct !DIGlobalVariable(name: "dvb_device_cdev", scope: !2, file: !3, line: 132, type: !2737, isLocal: true, isDefinition: true)
!4029 = !DIGlobalVariableExpression(var: !4030, expr: !DIExpression())
!4030 = distinct !DIGlobalVariable(name: "dvbdev_register_lock", scope: !2, file: !3, line: 52, type: !1020, isLocal: true, isDefinition: true)
!4031 = !DIGlobalVariableExpression(var: !4032, expr: !DIExpression())
!4032 = distinct !DIGlobalVariable(name: "minor_rwsem", scope: !2, file: !3, line: 93, type: !614, isLocal: true, isDefinition: true)
!4033 = !DIGlobalVariableExpression(var: !4034, expr: !DIExpression())
!4034 = distinct !DIGlobalVariable(name: "dnames", scope: !2, file: !3, line: 54, type: !4035, isLocal: true, isDefinition: true)
!4035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4036, size: 576, elements: !3452)
!4036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!4037 = !DIGlobalVariableExpression(var: !4038, expr: !DIExpression())
!4038 = distinct !DIGlobalVariable(name: "dvb_adapter_list", scope: !2, file: !3, line: 51, type: !148, isLocal: true, isDefinition: true)
!4039 = !DIGlobalVariableExpression(var: !4040, expr: !DIExpression())
!4040 = distinct !DIGlobalVariable(name: "__key", scope: !4041, file: !3, line: 1049, type: !475, isLocal: true, isDefinition: true)
!4041 = distinct !DISubprogram(name: "init_dvbdev", scope: !3, file: !3, line: 1033, type: !4042, scopeLine: 1034, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!299}
!4044 = !DIGlobalVariableExpression(var: !4045, expr: !DIExpression())
!4045 = distinct !DIGlobalVariable(name: "dvb_device_fops", scope: !2, file: !3, line: 125, type: !155, isLocal: true, isDefinition: true)
!4046 = !DIGlobalVariableExpression(var: !4047, expr: !DIExpression())
!4047 = distinct !DIGlobalVariable(name: "dvbdev_mutex", scope: !2, file: !3, line: 39, type: !1020, isLocal: true, isDefinition: true)
!4048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 176, elements: !4049)
!4049 = !{!4050}
!4050 = !DISubrange(count: 22)
!4051 = !{i32 7, !"Dwarf Version", i32 4}
!4052 = !{i32 2, !"Debug Info Version", i32 3}
!4053 = !{i32 1, !"wchar_size", i32 2}
!4054 = !{i32 1, !"Code Model", i32 2}
!4055 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4056 = distinct !DISubprogram(name: "dvb_generic_open", scope: !3, file: !3, line: 134, type: !3179, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !477)
!4057 = !DILocalVariable(name: "inode", arg: 1, scope: !4056, file: !3, line: 134, type: !247)
!4058 = !DILocation(line: 134, column: 36, scope: !4056)
!4059 = !DILocalVariable(name: "file", arg: 2, scope: !4056, file: !3, line: 134, type: !170)
!4060 = !DILocation(line: 134, column: 56, scope: !4056)
!4061 = !DILocalVariable(name: "dvbdev", scope: !4056, file: !3, line: 136, type: !144)
!4062 = !DILocation(line: 136, column: 21, scope: !4056)
!4063 = !DILocation(line: 136, column: 30, scope: !4056)
!4064 = !DILocation(line: 136, column: 36, scope: !4056)
!4065 = !DILocation(line: 138, column: 7, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4056, file: !3, line: 138, column: 6)
!4067 = !DILocation(line: 138, column: 6, scope: !4056)
!4068 = !DILocation(line: 139, column: 3, scope: !4066)
!4069 = !DILocation(line: 141, column: 7, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4056, file: !3, line: 141, column: 6)
!4071 = !DILocation(line: 141, column: 15, scope: !4070)
!4072 = !DILocation(line: 141, column: 6, scope: !4056)
!4073 = !DILocation(line: 142, column: 3, scope: !4070)
!4074 = !DILocation(line: 144, column: 7, scope: !4075)
!4075 = distinct !DILexicalBlock(scope: !4056, file: !3, line: 144, column: 6)
!4076 = !DILocation(line: 144, column: 13, scope: !4075)
!4077 = !DILocation(line: 144, column: 21, scope: !4075)
!4078 = !DILocation(line: 144, column: 34, scope: !4075)
!4079 = !DILocation(line: 144, column: 6, scope: !4056)
!4080 = !DILocation(line: 145, column: 8, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4082, file: !3, line: 145, column: 7)
!4082 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 144, column: 47)
!4083 = !DILocation(line: 145, column: 16, scope: !4081)
!4084 = !DILocation(line: 145, column: 7, scope: !4082)
!4085 = !DILocation(line: 146, column: 4, scope: !4081)
!4086 = !DILocation(line: 147, column: 3, scope: !4082)
!4087 = !DILocation(line: 147, column: 11, scope: !4082)
!4088 = !DILocation(line: 147, column: 18, scope: !4082)
!4089 = !DILocation(line: 148, column: 2, scope: !4082)
!4090 = !DILocation(line: 149, column: 8, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 149, column: 7)
!4092 = distinct !DILexicalBlock(scope: !4075, file: !3, line: 148, column: 9)
!4093 = !DILocation(line: 149, column: 16, scope: !4091)
!4094 = !DILocation(line: 149, column: 7, scope: !4092)
!4095 = !DILocation(line: 150, column: 4, scope: !4091)
!4096 = !DILocation(line: 151, column: 3, scope: !4092)
!4097 = !DILocation(line: 151, column: 11, scope: !4092)
!4098 = !DILocation(line: 151, column: 18, scope: !4092)
!4099 = !DILocation(line: 154, column: 2, scope: !4056)
!4100 = !DILocation(line: 154, column: 10, scope: !4056)
!4101 = !DILocation(line: 154, column: 15, scope: !4056)
!4102 = !DILocation(line: 155, column: 2, scope: !4056)
!4103 = !DILocation(line: 156, column: 1, scope: !4056)
!4104 = distinct !DISubprogram(name: "dvb_generic_release", scope: !3, file: !3, line: 160, type: !3179, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !477)
!4105 = !DILocalVariable(name: "inode", arg: 1, scope: !4104, file: !3, line: 160, type: !247)
!4106 = !DILocation(line: 160, column: 39, scope: !4104)
!4107 = !DILocalVariable(name: "file", arg: 2, scope: !4104, file: !3, line: 160, type: !170)
!4108 = !DILocation(line: 160, column: 59, scope: !4104)
!4109 = !DILocalVariable(name: "dvbdev", scope: !4104, file: !3, line: 162, type: !144)
!4110 = !DILocation(line: 162, column: 21, scope: !4104)
!4111 = !DILocation(line: 162, column: 30, scope: !4104)
!4112 = !DILocation(line: 162, column: 36, scope: !4104)
!4113 = !DILocation(line: 164, column: 7, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 164, column: 6)
!4115 = !DILocation(line: 164, column: 6, scope: !4104)
!4116 = !DILocation(line: 165, column: 3, scope: !4114)
!4117 = !DILocation(line: 167, column: 7, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4104, file: !3, line: 167, column: 6)
!4119 = !DILocation(line: 167, column: 13, scope: !4118)
!4120 = !DILocation(line: 167, column: 21, scope: !4118)
!4121 = !DILocation(line: 167, column: 34, scope: !4118)
!4122 = !DILocation(line: 167, column: 6, scope: !4104)
!4123 = !DILocation(line: 168, column: 3, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 167, column: 47)
!4125 = !DILocation(line: 168, column: 11, scope: !4124)
!4126 = !DILocation(line: 168, column: 18, scope: !4124)
!4127 = !DILocation(line: 169, column: 2, scope: !4124)
!4128 = !DILocation(line: 170, column: 3, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 169, column: 9)
!4130 = !DILocation(line: 170, column: 11, scope: !4129)
!4131 = !DILocation(line: 170, column: 18, scope: !4129)
!4132 = !DILocation(line: 173, column: 2, scope: !4104)
!4133 = !DILocation(line: 173, column: 10, scope: !4104)
!4134 = !DILocation(line: 173, column: 15, scope: !4104)
!4135 = !DILocation(line: 174, column: 2, scope: !4104)
!4136 = !DILocation(line: 175, column: 1, scope: !4104)
!4137 = distinct !DISubprogram(name: "dvb_generic_ioctl", scope: !3, file: !3, line: 179, type: !3169, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !477)
!4138 = !DILocalVariable(name: "file", arg: 1, scope: !4137, file: !3, line: 179, type: !170)
!4139 = !DILocation(line: 179, column: 37, scope: !4137)
!4140 = !DILocalVariable(name: "cmd", arg: 2, scope: !4137, file: !3, line: 180, type: !7)
!4141 = !DILocation(line: 180, column: 23, scope: !4137)
!4142 = !DILocalVariable(name: "arg", arg: 3, scope: !4137, file: !3, line: 180, type: !407)
!4143 = !DILocation(line: 180, column: 42, scope: !4137)
!4144 = !DILocalVariable(name: "dvbdev", scope: !4137, file: !3, line: 182, type: !144)
!4145 = !DILocation(line: 182, column: 21, scope: !4137)
!4146 = !DILocation(line: 182, column: 30, scope: !4137)
!4147 = !DILocation(line: 182, column: 36, scope: !4137)
!4148 = !DILocation(line: 184, column: 7, scope: !4149)
!4149 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 184, column: 6)
!4150 = !DILocation(line: 184, column: 6, scope: !4137)
!4151 = !DILocation(line: 185, column: 3, scope: !4149)
!4152 = !DILocation(line: 187, column: 7, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4137, file: !3, line: 187, column: 6)
!4154 = !DILocation(line: 187, column: 15, scope: !4153)
!4155 = !DILocation(line: 187, column: 6, scope: !4137)
!4156 = !DILocation(line: 188, column: 3, scope: !4153)
!4157 = !DILocation(line: 190, column: 22, scope: !4137)
!4158 = !DILocation(line: 190, column: 28, scope: !4137)
!4159 = !DILocation(line: 190, column: 33, scope: !4137)
!4160 = !DILocation(line: 190, column: 38, scope: !4137)
!4161 = !DILocation(line: 190, column: 46, scope: !4137)
!4162 = !DILocation(line: 190, column: 9, scope: !4137)
!4163 = !DILocation(line: 190, column: 2, scope: !4137)
!4164 = !DILocation(line: 191, column: 1, scope: !4137)
!4165 = distinct !DISubprogram(name: "dvb_usercopy", scope: !3, file: !3, line: 905, type: !4166, scopeLine: 909, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !477)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!299, !170, !7, !407, !3910}
!4168 = !DILocalVariable(name: "addr", arg: 1, scope: !4169, file: !4170, line: 138, type: !1983)
!4169 = distinct !DISubprogram(name: "check_copy_size", scope: !4170, file: !4170, line: 138, type: !4171, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!4170 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!4171 = !DISubroutineType(types: !4172)
!4172 = !{!315, !1983, !404, !315}
!4173 = !DILocation(line: 138, column: 29, scope: !4169, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 199, column: 6, scope: !4175, inlinedAt: !4180)
!4175 = distinct !DILexicalBlock(scope: !4177, file: !4176, line: 199, column: 6)
!4176 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!4177 = distinct !DISubprogram(name: "copy_to_user", scope: !4176, file: !4176, line: 197, type: !4178, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!407, !143, !1983, !407}
!4180 = distinct !DILocation(line: 955, column: 7, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 955, column: 7)
!4182 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 952, column: 2)
!4183 = !DILocalVariable(name: "bytes", arg: 2, scope: !4169, file: !4170, line: 138, type: !404)
!4184 = !DILocation(line: 138, column: 42, scope: !4169, inlinedAt: !4174)
!4185 = !DILocalVariable(name: "is_source", arg: 3, scope: !4169, file: !4170, line: 138, type: !315)
!4186 = !DILocation(line: 138, column: 54, scope: !4169, inlinedAt: !4174)
!4187 = !DILocalVariable(name: "sz", scope: !4169, file: !4170, line: 140, type: !299)
!4188 = !DILocation(line: 140, column: 6, scope: !4169, inlinedAt: !4174)
!4189 = !DILocalVariable(name: "__ret_warn_on", scope: !4190, file: !4170, line: 150, type: !299)
!4190 = distinct !DILexicalBlock(scope: !4191, file: !4170, line: 150, column: 6)
!4191 = distinct !DILexicalBlock(scope: !4169, file: !4170, line: 150, column: 6)
!4192 = !DILocation(line: 150, column: 6, scope: !4190, inlinedAt: !4174)
!4193 = !DILocalVariable(name: "to", arg: 1, scope: !4177, file: !4176, line: 197, type: !143)
!4194 = !DILocation(line: 197, column: 27, scope: !4177, inlinedAt: !4180)
!4195 = !DILocalVariable(name: "from", arg: 2, scope: !4177, file: !4176, line: 197, type: !1983)
!4196 = !DILocation(line: 197, column: 43, scope: !4177, inlinedAt: !4180)
!4197 = !DILocalVariable(name: "n", arg: 3, scope: !4177, file: !4176, line: 197, type: !407)
!4198 = !DILocation(line: 197, column: 63, scope: !4177, inlinedAt: !4180)
!4199 = !DILocation(line: 138, column: 29, scope: !4169, inlinedAt: !4200)
!4200 = distinct !DILocation(line: 191, column: 6, scope: !4201, inlinedAt: !4203)
!4201 = distinct !DILexicalBlock(scope: !4202, file: !4176, line: 191, column: 6)
!4202 = distinct !DISubprogram(name: "copy_from_user", scope: !4176, file: !4176, line: 189, type: !4178, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!4203 = distinct !DILocation(line: 938, column: 7, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !3, line: 938, column: 7)
!4205 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 916, column: 25)
!4206 = !DILocation(line: 138, column: 42, scope: !4169, inlinedAt: !4200)
!4207 = !DILocation(line: 138, column: 54, scope: !4169, inlinedAt: !4200)
!4208 = !DILocation(line: 140, column: 6, scope: !4169, inlinedAt: !4200)
!4209 = !DILocation(line: 150, column: 6, scope: !4190, inlinedAt: !4200)
!4210 = !DILocalVariable(name: "to", arg: 1, scope: !4202, file: !4176, line: 189, type: !143)
!4211 = !DILocation(line: 189, column: 22, scope: !4202, inlinedAt: !4203)
!4212 = !DILocalVariable(name: "from", arg: 2, scope: !4202, file: !4176, line: 189, type: !1983)
!4213 = !DILocation(line: 189, column: 45, scope: !4202, inlinedAt: !4203)
!4214 = !DILocalVariable(name: "n", arg: 3, scope: !4202, file: !4176, line: 189, type: !407)
!4215 = !DILocation(line: 189, column: 65, scope: !4202, inlinedAt: !4203)
!4216 = !DILocalVariable(name: "s", arg: 1, scope: !4217, file: !134, line: 445, type: !782)
!4217 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !134, file: !134, line: 445, type: !4218, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!143, !782, !141, !404}
!4220 = !DILocation(line: 445, column: 72, scope: !4217, inlinedAt: !4221)
!4221 = distinct !DILocation(line: 552, column: 10, scope: !4222, inlinedAt: !4227)
!4222 = distinct !DILexicalBlock(scope: !4223, file: !134, line: 540, column: 34)
!4223 = distinct !DILexicalBlock(scope: !4224, file: !134, line: 540, column: 6)
!4224 = distinct !DISubprogram(name: "kmalloc", scope: !134, file: !134, line: 538, type: !4225, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!4225 = !DISubroutineType(types: !4226)
!4226 = !{!143, !404, !141}
!4227 = distinct !DILocation(line: 931, column: 11, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4229, file: !3, line: 929, column: 10)
!4229 = distinct !DILexicalBlock(scope: !4205, file: !3, line: 927, column: 7)
!4230 = !DILocalVariable(name: "flags", arg: 2, scope: !4217, file: !134, line: 446, type: !141)
!4231 = !DILocation(line: 446, column: 9, scope: !4217, inlinedAt: !4221)
!4232 = !DILocalVariable(name: "size", arg: 3, scope: !4217, file: !134, line: 446, type: !404)
!4233 = !DILocation(line: 446, column: 23, scope: !4217, inlinedAt: !4221)
!4234 = !DILocalVariable(name: "ret", scope: !4217, file: !134, line: 448, type: !143)
!4235 = !DILocation(line: 448, column: 8, scope: !4217, inlinedAt: !4221)
!4236 = !DILocalVariable(name: "flags", arg: 1, scope: !4237, file: !134, line: 318, type: !141)
!4237 = distinct !DISubprogram(name: "kmalloc_type", scope: !134, file: !134, line: 318, type: !4238, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!133, !141}
!4240 = !DILocation(line: 318, column: 67, scope: !4237, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 553, column: 20, scope: !4222, inlinedAt: !4227)
!4242 = !DILocalVariable(name: "size", arg: 1, scope: !4243, file: !134, line: 346, type: !404)
!4243 = distinct !DISubprogram(name: "kmalloc_index", scope: !134, file: !134, line: 346, type: !4244, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!7, !404}
!4246 = !DILocation(line: 346, column: 58, scope: !4243, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 547, column: 11, scope: !4222, inlinedAt: !4227)
!4248 = !DILocalVariable(name: "size", arg: 1, scope: !4249, file: !134, line: 472, type: !404)
!4249 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !134, file: !134, line: 472, type: !4250, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!143, !404, !141, !7}
!4252 = !DILocation(line: 472, column: 28, scope: !4249, inlinedAt: !4253)
!4253 = distinct !DILocation(line: 481, column: 9, scope: !4254, inlinedAt: !4255)
!4254 = distinct !DISubprogram(name: "kmalloc_large", scope: !134, file: !134, line: 478, type: !4225, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!4255 = distinct !DILocation(line: 545, column: 11, scope: !4256, inlinedAt: !4227)
!4256 = distinct !DILexicalBlock(scope: !4222, file: !134, line: 544, column: 7)
!4257 = !DILocalVariable(name: "flags", arg: 2, scope: !4249, file: !134, line: 472, type: !141)
!4258 = !DILocation(line: 472, column: 40, scope: !4249, inlinedAt: !4253)
!4259 = !DILocalVariable(name: "order", arg: 3, scope: !4249, file: !134, line: 472, type: !7)
!4260 = !DILocation(line: 472, column: 60, scope: !4249, inlinedAt: !4253)
!4261 = !DILocalVariable(name: "size", arg: 1, scope: !4254, file: !134, line: 478, type: !404)
!4262 = !DILocation(line: 478, column: 51, scope: !4254, inlinedAt: !4255)
!4263 = !DILocalVariable(name: "flags", arg: 2, scope: !4254, file: !134, line: 478, type: !141)
!4264 = !DILocation(line: 478, column: 63, scope: !4254, inlinedAt: !4255)
!4265 = !DILocalVariable(name: "order", scope: !4254, file: !134, line: 480, type: !7)
!4266 = !DILocation(line: 480, column: 15, scope: !4254, inlinedAt: !4255)
!4267 = !DILocalVariable(name: "size", arg: 1, scope: !4224, file: !134, line: 538, type: !404)
!4268 = !DILocation(line: 538, column: 45, scope: !4224, inlinedAt: !4227)
!4269 = !DILocalVariable(name: "flags", arg: 2, scope: !4224, file: !134, line: 538, type: !141)
!4270 = !DILocation(line: 538, column: 57, scope: !4224, inlinedAt: !4227)
!4271 = !DILocalVariable(name: "index", scope: !4222, file: !134, line: 542, type: !7)
!4272 = !DILocation(line: 542, column: 16, scope: !4222, inlinedAt: !4227)
!4273 = !DILocalVariable(name: "file", arg: 1, scope: !4165, file: !3, line: 905, type: !170)
!4274 = !DILocation(line: 905, column: 31, scope: !4165)
!4275 = !DILocalVariable(name: "cmd", arg: 2, scope: !4165, file: !3, line: 906, type: !7)
!4276 = !DILocation(line: 906, column: 21, scope: !4165)
!4277 = !DILocalVariable(name: "arg", arg: 3, scope: !4165, file: !3, line: 906, type: !407)
!4278 = !DILocation(line: 906, column: 40, scope: !4165)
!4279 = !DILocalVariable(name: "func", arg: 4, scope: !4165, file: !3, line: 907, type: !3910)
!4280 = !DILocation(line: 907, column: 14, scope: !4165)
!4281 = !DILocalVariable(name: "sbuf", scope: !4165, file: !3, line: 910, type: !3441)
!4282 = !DILocation(line: 910, column: 10, scope: !4165)
!4283 = !DILocalVariable(name: "mbuf", scope: !4165, file: !3, line: 911, type: !143)
!4284 = !DILocation(line: 911, column: 11, scope: !4165)
!4285 = !DILocalVariable(name: "parg", scope: !4165, file: !3, line: 912, type: !143)
!4286 = !DILocation(line: 912, column: 11, scope: !4165)
!4287 = !DILocalVariable(name: "err", scope: !4165, file: !3, line: 913, type: !299)
!4288 = !DILocation(line: 913, column: 10, scope: !4165)
!4289 = !DILocation(line: 916, column: 10, scope: !4165)
!4290 = !DILocation(line: 916, column: 2, scope: !4165)
!4291 = !DILocation(line: 922, column: 19, scope: !4205)
!4292 = !DILocation(line: 922, column: 10, scope: !4205)
!4293 = !DILocation(line: 922, column: 8, scope: !4205)
!4294 = !DILocation(line: 923, column: 3, scope: !4205)
!4295 = !DILocation(line: 927, column: 7, scope: !4229)
!4296 = !DILocation(line: 927, column: 22, scope: !4229)
!4297 = !DILocation(line: 927, column: 7, scope: !4205)
!4298 = !DILocation(line: 928, column: 11, scope: !4299)
!4299 = distinct !DILexicalBlock(scope: !4229, file: !3, line: 927, column: 39)
!4300 = !DILocation(line: 928, column: 9, scope: !4299)
!4301 = !DILocation(line: 929, column: 3, scope: !4299)
!4302 = !DILocation(line: 931, column: 19, scope: !4228)
!4303 = !DILocation(line: 540, column: 27, scope: !4223, inlinedAt: !4227)
!4304 = !DILocation(line: 540, column: 6, scope: !4223, inlinedAt: !4227)
!4305 = !DILocation(line: 540, column: 6, scope: !4224, inlinedAt: !4227)
!4306 = !DILocation(line: 544, column: 7, scope: !4256, inlinedAt: !4227)
!4307 = !DILocation(line: 544, column: 12, scope: !4256, inlinedAt: !4227)
!4308 = !DILocation(line: 544, column: 7, scope: !4222, inlinedAt: !4227)
!4309 = !DILocation(line: 545, column: 25, scope: !4256, inlinedAt: !4227)
!4310 = !DILocation(line: 545, column: 31, scope: !4256, inlinedAt: !4227)
!4311 = !DILocation(line: 480, column: 33, scope: !4254, inlinedAt: !4255)
!4312 = !DILocation(line: 480, column: 23, scope: !4254, inlinedAt: !4255)
!4313 = !DILocation(line: 481, column: 29, scope: !4254, inlinedAt: !4255)
!4314 = !DILocation(line: 481, column: 35, scope: !4254, inlinedAt: !4255)
!4315 = !DILocation(line: 481, column: 42, scope: !4254, inlinedAt: !4255)
!4316 = !DILocation(line: 474, column: 23, scope: !4249, inlinedAt: !4253)
!4317 = !DILocation(line: 474, column: 29, scope: !4249, inlinedAt: !4253)
!4318 = !DILocation(line: 474, column: 36, scope: !4249, inlinedAt: !4253)
!4319 = !DILocation(line: 474, column: 9, scope: !4249, inlinedAt: !4253)
!4320 = !DILocation(line: 545, column: 4, scope: !4256, inlinedAt: !4227)
!4321 = !DILocation(line: 547, column: 25, scope: !4222, inlinedAt: !4227)
!4322 = !DILocation(line: 348, column: 7, scope: !4323, inlinedAt: !4247)
!4323 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 348, column: 6)
!4324 = !DILocation(line: 348, column: 6, scope: !4243, inlinedAt: !4247)
!4325 = !DILocation(line: 349, column: 3, scope: !4323, inlinedAt: !4247)
!4326 = !DILocation(line: 351, column: 6, scope: !4327, inlinedAt: !4247)
!4327 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 351, column: 6)
!4328 = !DILocation(line: 351, column: 11, scope: !4327, inlinedAt: !4247)
!4329 = !DILocation(line: 351, column: 6, scope: !4243, inlinedAt: !4247)
!4330 = !DILocation(line: 352, column: 3, scope: !4327, inlinedAt: !4247)
!4331 = !DILocation(line: 354, column: 32, scope: !4332, inlinedAt: !4247)
!4332 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 354, column: 6)
!4333 = !DILocation(line: 354, column: 37, scope: !4332, inlinedAt: !4247)
!4334 = !DILocation(line: 354, column: 42, scope: !4332, inlinedAt: !4247)
!4335 = !DILocation(line: 354, column: 45, scope: !4332, inlinedAt: !4247)
!4336 = !DILocation(line: 354, column: 50, scope: !4332, inlinedAt: !4247)
!4337 = !DILocation(line: 354, column: 6, scope: !4243, inlinedAt: !4247)
!4338 = !DILocation(line: 355, column: 3, scope: !4332, inlinedAt: !4247)
!4339 = !DILocation(line: 356, column: 32, scope: !4340, inlinedAt: !4247)
!4340 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 356, column: 6)
!4341 = !DILocation(line: 356, column: 37, scope: !4340, inlinedAt: !4247)
!4342 = !DILocation(line: 356, column: 43, scope: !4340, inlinedAt: !4247)
!4343 = !DILocation(line: 356, column: 46, scope: !4340, inlinedAt: !4247)
!4344 = !DILocation(line: 356, column: 51, scope: !4340, inlinedAt: !4247)
!4345 = !DILocation(line: 356, column: 6, scope: !4243, inlinedAt: !4247)
!4346 = !DILocation(line: 357, column: 3, scope: !4340, inlinedAt: !4247)
!4347 = !DILocation(line: 358, column: 6, scope: !4348, inlinedAt: !4247)
!4348 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 358, column: 6)
!4349 = !DILocation(line: 358, column: 11, scope: !4348, inlinedAt: !4247)
!4350 = !DILocation(line: 358, column: 6, scope: !4243, inlinedAt: !4247)
!4351 = !DILocation(line: 358, column: 26, scope: !4348, inlinedAt: !4247)
!4352 = !DILocation(line: 359, column: 6, scope: !4353, inlinedAt: !4247)
!4353 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 359, column: 6)
!4354 = !DILocation(line: 359, column: 11, scope: !4353, inlinedAt: !4247)
!4355 = !DILocation(line: 359, column: 6, scope: !4243, inlinedAt: !4247)
!4356 = !DILocation(line: 359, column: 26, scope: !4353, inlinedAt: !4247)
!4357 = !DILocation(line: 360, column: 6, scope: !4358, inlinedAt: !4247)
!4358 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 360, column: 6)
!4359 = !DILocation(line: 360, column: 11, scope: !4358, inlinedAt: !4247)
!4360 = !DILocation(line: 360, column: 6, scope: !4243, inlinedAt: !4247)
!4361 = !DILocation(line: 360, column: 26, scope: !4358, inlinedAt: !4247)
!4362 = !DILocation(line: 361, column: 6, scope: !4363, inlinedAt: !4247)
!4363 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 361, column: 6)
!4364 = !DILocation(line: 361, column: 11, scope: !4363, inlinedAt: !4247)
!4365 = !DILocation(line: 361, column: 6, scope: !4243, inlinedAt: !4247)
!4366 = !DILocation(line: 361, column: 26, scope: !4363, inlinedAt: !4247)
!4367 = !DILocation(line: 362, column: 6, scope: !4368, inlinedAt: !4247)
!4368 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 362, column: 6)
!4369 = !DILocation(line: 362, column: 11, scope: !4368, inlinedAt: !4247)
!4370 = !DILocation(line: 362, column: 6, scope: !4243, inlinedAt: !4247)
!4371 = !DILocation(line: 362, column: 26, scope: !4368, inlinedAt: !4247)
!4372 = !DILocation(line: 363, column: 6, scope: !4373, inlinedAt: !4247)
!4373 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 363, column: 6)
!4374 = !DILocation(line: 363, column: 11, scope: !4373, inlinedAt: !4247)
!4375 = !DILocation(line: 363, column: 6, scope: !4243, inlinedAt: !4247)
!4376 = !DILocation(line: 363, column: 26, scope: !4373, inlinedAt: !4247)
!4377 = !DILocation(line: 364, column: 6, scope: !4378, inlinedAt: !4247)
!4378 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 364, column: 6)
!4379 = !DILocation(line: 364, column: 11, scope: !4378, inlinedAt: !4247)
!4380 = !DILocation(line: 364, column: 6, scope: !4243, inlinedAt: !4247)
!4381 = !DILocation(line: 364, column: 26, scope: !4378, inlinedAt: !4247)
!4382 = !DILocation(line: 365, column: 6, scope: !4383, inlinedAt: !4247)
!4383 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 365, column: 6)
!4384 = !DILocation(line: 365, column: 11, scope: !4383, inlinedAt: !4247)
!4385 = !DILocation(line: 365, column: 6, scope: !4243, inlinedAt: !4247)
!4386 = !DILocation(line: 365, column: 26, scope: !4383, inlinedAt: !4247)
!4387 = !DILocation(line: 366, column: 6, scope: !4388, inlinedAt: !4247)
!4388 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 366, column: 6)
!4389 = !DILocation(line: 366, column: 11, scope: !4388, inlinedAt: !4247)
!4390 = !DILocation(line: 366, column: 6, scope: !4243, inlinedAt: !4247)
!4391 = !DILocation(line: 366, column: 26, scope: !4388, inlinedAt: !4247)
!4392 = !DILocation(line: 367, column: 6, scope: !4393, inlinedAt: !4247)
!4393 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 367, column: 6)
!4394 = !DILocation(line: 367, column: 11, scope: !4393, inlinedAt: !4247)
!4395 = !DILocation(line: 367, column: 6, scope: !4243, inlinedAt: !4247)
!4396 = !DILocation(line: 367, column: 26, scope: !4393, inlinedAt: !4247)
!4397 = !DILocation(line: 368, column: 6, scope: !4398, inlinedAt: !4247)
!4398 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 368, column: 6)
!4399 = !DILocation(line: 368, column: 11, scope: !4398, inlinedAt: !4247)
!4400 = !DILocation(line: 368, column: 6, scope: !4243, inlinedAt: !4247)
!4401 = !DILocation(line: 368, column: 26, scope: !4398, inlinedAt: !4247)
!4402 = !DILocation(line: 369, column: 6, scope: !4403, inlinedAt: !4247)
!4403 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 369, column: 6)
!4404 = !DILocation(line: 369, column: 11, scope: !4403, inlinedAt: !4247)
!4405 = !DILocation(line: 369, column: 6, scope: !4243, inlinedAt: !4247)
!4406 = !DILocation(line: 369, column: 26, scope: !4403, inlinedAt: !4247)
!4407 = !DILocation(line: 370, column: 6, scope: !4408, inlinedAt: !4247)
!4408 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 370, column: 6)
!4409 = !DILocation(line: 370, column: 11, scope: !4408, inlinedAt: !4247)
!4410 = !DILocation(line: 370, column: 6, scope: !4243, inlinedAt: !4247)
!4411 = !DILocation(line: 370, column: 26, scope: !4408, inlinedAt: !4247)
!4412 = !DILocation(line: 371, column: 6, scope: !4413, inlinedAt: !4247)
!4413 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 371, column: 6)
!4414 = !DILocation(line: 371, column: 11, scope: !4413, inlinedAt: !4247)
!4415 = !DILocation(line: 371, column: 6, scope: !4243, inlinedAt: !4247)
!4416 = !DILocation(line: 371, column: 26, scope: !4413, inlinedAt: !4247)
!4417 = !DILocation(line: 372, column: 6, scope: !4418, inlinedAt: !4247)
!4418 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 372, column: 6)
!4419 = !DILocation(line: 372, column: 11, scope: !4418, inlinedAt: !4247)
!4420 = !DILocation(line: 372, column: 6, scope: !4243, inlinedAt: !4247)
!4421 = !DILocation(line: 372, column: 26, scope: !4418, inlinedAt: !4247)
!4422 = !DILocation(line: 373, column: 6, scope: !4423, inlinedAt: !4247)
!4423 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 373, column: 6)
!4424 = !DILocation(line: 373, column: 11, scope: !4423, inlinedAt: !4247)
!4425 = !DILocation(line: 373, column: 6, scope: !4243, inlinedAt: !4247)
!4426 = !DILocation(line: 373, column: 26, scope: !4423, inlinedAt: !4247)
!4427 = !DILocation(line: 374, column: 6, scope: !4428, inlinedAt: !4247)
!4428 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 374, column: 6)
!4429 = !DILocation(line: 374, column: 11, scope: !4428, inlinedAt: !4247)
!4430 = !DILocation(line: 374, column: 6, scope: !4243, inlinedAt: !4247)
!4431 = !DILocation(line: 374, column: 26, scope: !4428, inlinedAt: !4247)
!4432 = !DILocation(line: 375, column: 6, scope: !4433, inlinedAt: !4247)
!4433 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 375, column: 6)
!4434 = !DILocation(line: 375, column: 11, scope: !4433, inlinedAt: !4247)
!4435 = !DILocation(line: 375, column: 6, scope: !4243, inlinedAt: !4247)
!4436 = !DILocation(line: 375, column: 27, scope: !4433, inlinedAt: !4247)
!4437 = !DILocation(line: 376, column: 6, scope: !4438, inlinedAt: !4247)
!4438 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 376, column: 6)
!4439 = !DILocation(line: 376, column: 11, scope: !4438, inlinedAt: !4247)
!4440 = !DILocation(line: 376, column: 6, scope: !4243, inlinedAt: !4247)
!4441 = !DILocation(line: 376, column: 32, scope: !4438, inlinedAt: !4247)
!4442 = !DILocation(line: 377, column: 6, scope: !4443, inlinedAt: !4247)
!4443 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 377, column: 6)
!4444 = !DILocation(line: 377, column: 11, scope: !4443, inlinedAt: !4247)
!4445 = !DILocation(line: 377, column: 6, scope: !4243, inlinedAt: !4247)
!4446 = !DILocation(line: 377, column: 32, scope: !4443, inlinedAt: !4247)
!4447 = !DILocation(line: 378, column: 6, scope: !4448, inlinedAt: !4247)
!4448 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 378, column: 6)
!4449 = !DILocation(line: 378, column: 11, scope: !4448, inlinedAt: !4247)
!4450 = !DILocation(line: 378, column: 6, scope: !4243, inlinedAt: !4247)
!4451 = !DILocation(line: 378, column: 32, scope: !4448, inlinedAt: !4247)
!4452 = !DILocation(line: 379, column: 6, scope: !4453, inlinedAt: !4247)
!4453 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 379, column: 6)
!4454 = !DILocation(line: 379, column: 11, scope: !4453, inlinedAt: !4247)
!4455 = !DILocation(line: 379, column: 6, scope: !4243, inlinedAt: !4247)
!4456 = !DILocation(line: 379, column: 33, scope: !4453, inlinedAt: !4247)
!4457 = !DILocation(line: 380, column: 6, scope: !4458, inlinedAt: !4247)
!4458 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 380, column: 6)
!4459 = !DILocation(line: 380, column: 11, scope: !4458, inlinedAt: !4247)
!4460 = !DILocation(line: 380, column: 6, scope: !4243, inlinedAt: !4247)
!4461 = !DILocation(line: 380, column: 33, scope: !4458, inlinedAt: !4247)
!4462 = !DILocation(line: 381, column: 6, scope: !4463, inlinedAt: !4247)
!4463 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 381, column: 6)
!4464 = !DILocation(line: 381, column: 11, scope: !4463, inlinedAt: !4247)
!4465 = !DILocation(line: 381, column: 6, scope: !4243, inlinedAt: !4247)
!4466 = !DILocation(line: 381, column: 33, scope: !4463, inlinedAt: !4247)
!4467 = !DILocation(line: 382, column: 2, scope: !4468, inlinedAt: !4247)
!4468 = distinct !DILexicalBlock(scope: !4469, file: !134, line: 382, column: 2)
!4469 = distinct !DILexicalBlock(scope: !4243, file: !134, line: 382, column: 2)
!4470 = !{i32 -2143992809, i32 -2143992780, i32 -2143992734, i32 -2143992676, i32 -2143992622, i32 -2143992568, i32 -2143992513, i32 -2143992482}
!4471 = !DILocation(line: 382, column: 2, scope: !4472, inlinedAt: !4247)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !134, line: 382, column: 2)
!4473 = distinct !DILexicalBlock(scope: !4469, file: !134, line: 382, column: 2)
!4474 = !{i32 -2143992039, i32 -2143992032, i32 -2143991978, i32 -2143991947, i32 -2143991917}
!4475 = !DILocation(line: 382, column: 2, scope: !4473, inlinedAt: !4247)
!4476 = !DILocation(line: 386, column: 1, scope: !4243, inlinedAt: !4247)
!4477 = !DILocation(line: 547, column: 9, scope: !4222, inlinedAt: !4227)
!4478 = !DILocation(line: 549, column: 8, scope: !4479, inlinedAt: !4227)
!4479 = distinct !DILexicalBlock(scope: !4222, file: !134, line: 549, column: 7)
!4480 = !DILocation(line: 549, column: 7, scope: !4222, inlinedAt: !4227)
!4481 = !DILocation(line: 550, column: 4, scope: !4479, inlinedAt: !4227)
!4482 = !DILocation(line: 553, column: 33, scope: !4222, inlinedAt: !4227)
!4483 = !DILocation(line: 325, column: 6, scope: !4484, inlinedAt: !4241)
!4484 = distinct !DILexicalBlock(scope: !4237, file: !134, line: 325, column: 6)
!4485 = !DILocation(line: 325, column: 6, scope: !4237, inlinedAt: !4241)
!4486 = !DILocation(line: 326, column: 3, scope: !4484, inlinedAt: !4241)
!4487 = !DILocation(line: 332, column: 9, scope: !4237, inlinedAt: !4241)
!4488 = !DILocation(line: 332, column: 15, scope: !4237, inlinedAt: !4241)
!4489 = !DILocation(line: 332, column: 2, scope: !4237, inlinedAt: !4241)
!4490 = !DILocation(line: 336, column: 1, scope: !4237, inlinedAt: !4241)
!4491 = !DILocation(line: 553, column: 5, scope: !4222, inlinedAt: !4227)
!4492 = !DILocation(line: 553, column: 41, scope: !4222, inlinedAt: !4227)
!4493 = !DILocation(line: 554, column: 5, scope: !4222, inlinedAt: !4227)
!4494 = !DILocation(line: 554, column: 12, scope: !4222, inlinedAt: !4227)
!4495 = !DILocation(line: 448, column: 31, scope: !4217, inlinedAt: !4221)
!4496 = !DILocation(line: 448, column: 34, scope: !4217, inlinedAt: !4221)
!4497 = !DILocation(line: 448, column: 14, scope: !4217, inlinedAt: !4221)
!4498 = !DILocation(line: 450, column: 22, scope: !4217, inlinedAt: !4221)
!4499 = !DILocation(line: 450, column: 25, scope: !4217, inlinedAt: !4221)
!4500 = !DILocation(line: 450, column: 30, scope: !4217, inlinedAt: !4221)
!4501 = !DILocation(line: 450, column: 36, scope: !4217, inlinedAt: !4221)
!4502 = !DILocation(line: 450, column: 8, scope: !4217, inlinedAt: !4221)
!4503 = !DILocation(line: 450, column: 6, scope: !4217, inlinedAt: !4221)
!4504 = !DILocation(line: 451, column: 9, scope: !4217, inlinedAt: !4221)
!4505 = !DILocation(line: 552, column: 3, scope: !4222, inlinedAt: !4227)
!4506 = !DILocation(line: 557, column: 19, scope: !4224, inlinedAt: !4227)
!4507 = !DILocation(line: 557, column: 25, scope: !4224, inlinedAt: !4227)
!4508 = !DILocation(line: 557, column: 9, scope: !4224, inlinedAt: !4227)
!4509 = !DILocation(line: 557, column: 2, scope: !4224, inlinedAt: !4227)
!4510 = !DILocation(line: 558, column: 1, scope: !4224, inlinedAt: !4227)
!4511 = !DILocation(line: 931, column: 9, scope: !4228)
!4512 = !DILocation(line: 932, column: 16, scope: !4513)
!4513 = distinct !DILexicalBlock(scope: !4228, file: !3, line: 932, column: 8)
!4514 = !DILocation(line: 932, column: 13, scope: !4513)
!4515 = !DILocation(line: 932, column: 8, scope: !4228)
!4516 = !DILocation(line: 933, column: 5, scope: !4513)
!4517 = !DILocation(line: 934, column: 11, scope: !4228)
!4518 = !DILocation(line: 934, column: 9, scope: !4228)
!4519 = !DILocation(line: 937, column: 7, scope: !4205)
!4520 = !DILocation(line: 938, column: 22, scope: !4204)
!4521 = !DILocation(line: 938, column: 43, scope: !4204)
!4522 = !DILocation(line: 938, column: 28, scope: !4204)
!4523 = !DILocation(line: 938, column: 48, scope: !4204)
!4524 = !DILocation(line: 191, column: 6, scope: !4201, inlinedAt: !4203)
!4525 = !DILocation(line: 141, column: 6, scope: !4526, inlinedAt: !4200)
!4526 = distinct !DILexicalBlock(scope: !4169, file: !4170, line: 141, column: 6)
!4527 = !DILocation(line: 0, scope: !4526, inlinedAt: !4200)
!4528 = !DILocation(line: 141, column: 6, scope: !4169, inlinedAt: !4200)
!4529 = !DILocation(line: 142, column: 29, scope: !4530, inlinedAt: !4200)
!4530 = distinct !DILexicalBlock(scope: !4531, file: !4170, line: 142, column: 7)
!4531 = distinct !DILexicalBlock(scope: !4526, file: !4170, line: 141, column: 39)
!4532 = !DILocation(line: 142, column: 8, scope: !4530, inlinedAt: !4200)
!4533 = !DILocation(line: 142, column: 7, scope: !4531, inlinedAt: !4200)
!4534 = !DILocation(line: 143, column: 18, scope: !4530, inlinedAt: !4200)
!4535 = !DILocation(line: 143, column: 22, scope: !4530, inlinedAt: !4200)
!4536 = !DILocation(line: 143, column: 4, scope: !4530, inlinedAt: !4200)
!4537 = !DILocation(line: 144, column: 12, scope: !4538, inlinedAt: !4200)
!4538 = distinct !DILexicalBlock(scope: !4530, file: !4170, line: 144, column: 12)
!4539 = !DILocation(line: 144, column: 12, scope: !4530, inlinedAt: !4200)
!4540 = !DILocation(line: 145, column: 4, scope: !4538, inlinedAt: !4200)
!4541 = !DILocation(line: 147, column: 4, scope: !4538, inlinedAt: !4200)
!4542 = !DILocation(line: 148, column: 3, scope: !4531, inlinedAt: !4200)
!4543 = !DILocation(line: 150, column: 6, scope: !4544, inlinedAt: !4200)
!4544 = distinct !DILexicalBlock(scope: !4190, file: !4170, line: 150, column: 6)
!4545 = !DILocation(line: 150, column: 6, scope: !4546, inlinedAt: !4200)
!4546 = distinct !DILexicalBlock(scope: !4547, file: !4170, line: 150, column: 6)
!4547 = distinct !DILexicalBlock(scope: !4544, file: !4170, line: 150, column: 6)
!4548 = !{i32 -2145532181, i32 -2145532152, i32 -2145532106, i32 -2145532048, i32 -2145531994, i32 -2145531940, i32 -2145531885, i32 -2145531854}
!4549 = !DILocation(line: 150, column: 6, scope: !4550, inlinedAt: !4200)
!4550 = distinct !DILexicalBlock(scope: !4547, file: !4170, line: 150, column: 6)
!4551 = !{i32 -2145531434, i32 -2145531427, i32 -2145531375, i32 -2145531344, i32 -2145531314}
!4552 = !DILocation(line: 150, column: 6, scope: !4547, inlinedAt: !4200)
!4553 = !DILocation(line: 150, column: 6, scope: !4191, inlinedAt: !4200)
!4554 = !DILocation(line: 150, column: 6, scope: !4169, inlinedAt: !4200)
!4555 = !DILocation(line: 151, column: 3, scope: !4191, inlinedAt: !4200)
!4556 = !DILocation(line: 152, column: 20, scope: !4169, inlinedAt: !4200)
!4557 = !DILocation(line: 152, column: 26, scope: !4169, inlinedAt: !4200)
!4558 = !DILocation(line: 152, column: 33, scope: !4169, inlinedAt: !4200)
!4559 = !DILocation(line: 152, column: 2, scope: !4169, inlinedAt: !4200)
!4560 = !DILocation(line: 153, column: 2, scope: !4169, inlinedAt: !4200)
!4561 = !DILocation(line: 154, column: 1, scope: !4169, inlinedAt: !4200)
!4562 = !DILocation(line: 191, column: 6, scope: !4202, inlinedAt: !4203)
!4563 = !DILocation(line: 192, column: 23, scope: !4201, inlinedAt: !4203)
!4564 = !DILocation(line: 192, column: 27, scope: !4201, inlinedAt: !4203)
!4565 = !DILocation(line: 192, column: 33, scope: !4201, inlinedAt: !4203)
!4566 = !DILocation(line: 192, column: 7, scope: !4201, inlinedAt: !4203)
!4567 = !DILocation(line: 192, column: 5, scope: !4201, inlinedAt: !4203)
!4568 = !DILocation(line: 192, column: 3, scope: !4201, inlinedAt: !4203)
!4569 = !DILocation(line: 193, column: 9, scope: !4202, inlinedAt: !4203)
!4570 = !DILocation(line: 938, column: 7, scope: !4204)
!4571 = !DILocation(line: 938, column: 7, scope: !4205)
!4572 = !DILocation(line: 939, column: 4, scope: !4204)
!4573 = !DILocation(line: 940, column: 3, scope: !4205)
!4574 = !DILocation(line: 944, column: 13, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 944, column: 6)
!4576 = !DILocation(line: 944, column: 18, scope: !4575)
!4577 = !DILocation(line: 944, column: 24, scope: !4575)
!4578 = !DILocation(line: 944, column: 29, scope: !4575)
!4579 = !DILocation(line: 944, column: 11, scope: !4575)
!4580 = !DILocation(line: 944, column: 36, scope: !4575)
!4581 = !DILocation(line: 944, column: 6, scope: !4165)
!4582 = !DILocation(line: 945, column: 7, scope: !4575)
!4583 = !DILocation(line: 945, column: 3, scope: !4575)
!4584 = !DILocation(line: 947, column: 6, scope: !4585)
!4585 = distinct !DILexicalBlock(scope: !4165, file: !3, line: 947, column: 6)
!4586 = !DILocation(line: 947, column: 10, scope: !4585)
!4587 = !DILocation(line: 947, column: 6, scope: !4165)
!4588 = !DILocation(line: 948, column: 3, scope: !4585)
!4589 = !DILocation(line: 951, column: 10, scope: !4165)
!4590 = !DILocation(line: 951, column: 2, scope: !4165)
!4591 = !DILocation(line: 955, column: 35, scope: !4181)
!4592 = !DILocation(line: 955, column: 20, scope: !4181)
!4593 = !DILocation(line: 955, column: 40, scope: !4181)
!4594 = !DILocation(line: 955, column: 46, scope: !4181)
!4595 = !DILocation(line: 199, column: 6, scope: !4175, inlinedAt: !4180)
!4596 = !DILocation(line: 141, column: 6, scope: !4526, inlinedAt: !4174)
!4597 = !DILocation(line: 0, scope: !4526, inlinedAt: !4174)
!4598 = !DILocation(line: 141, column: 6, scope: !4169, inlinedAt: !4174)
!4599 = !DILocation(line: 142, column: 29, scope: !4530, inlinedAt: !4174)
!4600 = !DILocation(line: 142, column: 8, scope: !4530, inlinedAt: !4174)
!4601 = !DILocation(line: 142, column: 7, scope: !4531, inlinedAt: !4174)
!4602 = !DILocation(line: 143, column: 18, scope: !4530, inlinedAt: !4174)
!4603 = !DILocation(line: 143, column: 22, scope: !4530, inlinedAt: !4174)
!4604 = !DILocation(line: 143, column: 4, scope: !4530, inlinedAt: !4174)
!4605 = !DILocation(line: 144, column: 12, scope: !4538, inlinedAt: !4174)
!4606 = !DILocation(line: 144, column: 12, scope: !4530, inlinedAt: !4174)
!4607 = !DILocation(line: 145, column: 4, scope: !4538, inlinedAt: !4174)
!4608 = !DILocation(line: 147, column: 4, scope: !4538, inlinedAt: !4174)
!4609 = !DILocation(line: 148, column: 3, scope: !4531, inlinedAt: !4174)
!4610 = !DILocation(line: 150, column: 6, scope: !4544, inlinedAt: !4174)
!4611 = !DILocation(line: 150, column: 6, scope: !4546, inlinedAt: !4174)
!4612 = !DILocation(line: 150, column: 6, scope: !4550, inlinedAt: !4174)
!4613 = !DILocation(line: 150, column: 6, scope: !4547, inlinedAt: !4174)
!4614 = !DILocation(line: 150, column: 6, scope: !4191, inlinedAt: !4174)
!4615 = !DILocation(line: 150, column: 6, scope: !4169, inlinedAt: !4174)
!4616 = !DILocation(line: 151, column: 3, scope: !4191, inlinedAt: !4174)
!4617 = !DILocation(line: 152, column: 20, scope: !4169, inlinedAt: !4174)
!4618 = !DILocation(line: 152, column: 26, scope: !4169, inlinedAt: !4174)
!4619 = !DILocation(line: 152, column: 33, scope: !4169, inlinedAt: !4174)
!4620 = !DILocation(line: 152, column: 2, scope: !4169, inlinedAt: !4174)
!4621 = !DILocation(line: 153, column: 2, scope: !4169, inlinedAt: !4174)
!4622 = !DILocation(line: 154, column: 1, scope: !4169, inlinedAt: !4174)
!4623 = !DILocation(line: 199, column: 6, scope: !4177, inlinedAt: !4180)
!4624 = !DILocation(line: 200, column: 21, scope: !4175, inlinedAt: !4180)
!4625 = !DILocation(line: 200, column: 25, scope: !4175, inlinedAt: !4180)
!4626 = !DILocation(line: 200, column: 31, scope: !4175, inlinedAt: !4180)
!4627 = !DILocation(line: 200, column: 7, scope: !4175, inlinedAt: !4180)
!4628 = !DILocation(line: 200, column: 5, scope: !4175, inlinedAt: !4180)
!4629 = !DILocation(line: 200, column: 3, scope: !4175, inlinedAt: !4180)
!4630 = !DILocation(line: 201, column: 9, scope: !4177, inlinedAt: !4180)
!4631 = !DILocation(line: 955, column: 7, scope: !4181)
!4632 = !DILocation(line: 955, column: 7, scope: !4182)
!4633 = !DILocation(line: 956, column: 8, scope: !4181)
!4634 = !DILocation(line: 956, column: 4, scope: !4181)
!4635 = !DILocation(line: 957, column: 3, scope: !4182)
!4636 = !DILocation(line: 958, column: 2, scope: !4182)
!4637 = !DILabel(scope: !4165, name: "out", file: !3, line: 960)
!4638 = !DILocation(line: 960, column: 1, scope: !4165)
!4639 = !DILocation(line: 961, column: 8, scope: !4165)
!4640 = !DILocation(line: 961, column: 2, scope: !4165)
!4641 = !DILocation(line: 962, column: 9, scope: !4165)
!4642 = !DILocation(line: 962, column: 2, scope: !4165)
!4643 = !DILocation(line: 963, column: 1, scope: !4165)
!4644 = !DILocalVariable(name: "adap", arg: 1, scope: !3981, file: !3, line: 455, type: !3337)
!4645 = !DILocation(line: 455, column: 45, scope: !3981)
!4646 = !DILocalVariable(name: "pdvbdev", arg: 2, scope: !3981, file: !3, line: 455, type: !3984)
!4647 = !DILocation(line: 455, column: 71, scope: !3981)
!4648 = !DILocalVariable(name: "template", arg: 3, scope: !3981, file: !3, line: 456, type: !3985)
!4649 = !DILocation(line: 456, column: 29, scope: !3981)
!4650 = !DILocalVariable(name: "priv", arg: 4, scope: !3981, file: !3, line: 456, type: !143)
!4651 = !DILocation(line: 456, column: 45, scope: !3981)
!4652 = !DILocalVariable(name: "type", arg: 5, scope: !3981, file: !3, line: 457, type: !107)
!4653 = !DILocation(line: 457, column: 25, scope: !3981)
!4654 = !DILocalVariable(name: "demux_sink_pads", arg: 6, scope: !3981, file: !3, line: 457, type: !299)
!4655 = !DILocation(line: 457, column: 35, scope: !3981)
!4656 = !DILocalVariable(name: "dvbdev", scope: !3981, file: !3, line: 459, type: !144)
!4657 = !DILocation(line: 459, column: 21, scope: !3981)
!4658 = !DILocalVariable(name: "dvbdevfops", scope: !3981, file: !3, line: 460, type: !4659)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!4660 = !DILocation(line: 460, column: 26, scope: !3981)
!4661 = !DILocalVariable(name: "clsdev", scope: !3981, file: !3, line: 461, type: !3348)
!4662 = !DILocation(line: 461, column: 17, scope: !3981)
!4663 = !DILocalVariable(name: "minor", scope: !3981, file: !3, line: 462, type: !299)
!4664 = !DILocation(line: 462, column: 6, scope: !3981)
!4665 = !DILocalVariable(name: "id", scope: !3981, file: !3, line: 463, type: !299)
!4666 = !DILocation(line: 463, column: 6, scope: !3981)
!4667 = !DILocalVariable(name: "ret", scope: !3981, file: !3, line: 463, type: !299)
!4668 = !DILocation(line: 463, column: 10, scope: !3981)
!4669 = !DILocation(line: 465, column: 2, scope: !3981)
!4670 = !DILocation(line: 467, column: 32, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 467, column: 6)
!4672 = !DILocation(line: 467, column: 38, scope: !4671)
!4673 = !DILocation(line: 467, column: 12, scope: !4671)
!4674 = !DILocation(line: 467, column: 10, scope: !4671)
!4675 = !DILocation(line: 467, column: 45, scope: !4671)
!4676 = !DILocation(line: 467, column: 6, scope: !3981)
!4677 = !DILocation(line: 468, column: 3, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 467, column: 49)
!4679 = !DILocation(line: 469, column: 4, scope: !4678)
!4680 = !DILocation(line: 469, column: 12, scope: !4678)
!4681 = !DILocation(line: 470, column: 3, scope: !4678)
!4682 = !DILocation(line: 471, column: 3, scope: !4678)
!4683 = !DILocation(line: 474, column: 22, scope: !3981)
!4684 = !DILocation(line: 474, column: 20, scope: !3981)
!4685 = !DILocation(line: 474, column: 3, scope: !3981)
!4686 = !DILocation(line: 474, column: 11, scope: !3981)
!4687 = !DILocation(line: 476, column: 7, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 476, column: 6)
!4689 = !DILocation(line: 476, column: 6, scope: !3981)
!4690 = !DILocation(line: 477, column: 3, scope: !4691)
!4691 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 476, column: 14)
!4692 = !DILocation(line: 478, column: 3, scope: !4691)
!4693 = !DILocation(line: 481, column: 23, scope: !3981)
!4694 = !DILocation(line: 481, column: 33, scope: !3981)
!4695 = !DILocation(line: 481, column: 15, scope: !3981)
!4696 = !DILocation(line: 481, column: 13, scope: !3981)
!4697 = !DILocation(line: 483, column: 7, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 483, column: 6)
!4699 = !DILocation(line: 483, column: 6, scope: !3981)
!4700 = !DILocation(line: 484, column: 10, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4698, file: !3, line: 483, column: 18)
!4702 = !DILocation(line: 484, column: 3, scope: !4701)
!4703 = !DILocation(line: 485, column: 3, scope: !4701)
!4704 = !DILocation(line: 486, column: 3, scope: !4701)
!4705 = !DILocation(line: 489, column: 9, scope: !3981)
!4706 = !DILocation(line: 489, column: 2, scope: !3981)
!4707 = !DILocation(line: 489, column: 17, scope: !3981)
!4708 = !DILocation(line: 490, column: 17, scope: !3981)
!4709 = !DILocation(line: 490, column: 2, scope: !3981)
!4710 = !DILocation(line: 490, column: 10, scope: !3981)
!4711 = !DILocation(line: 490, column: 15, scope: !3981)
!4712 = !DILocation(line: 491, column: 15, scope: !3981)
!4713 = !DILocation(line: 491, column: 2, scope: !3981)
!4714 = !DILocation(line: 491, column: 10, scope: !3981)
!4715 = !DILocation(line: 491, column: 13, scope: !3981)
!4716 = !DILocation(line: 492, column: 20, scope: !3981)
!4717 = !DILocation(line: 492, column: 2, scope: !3981)
!4718 = !DILocation(line: 492, column: 10, scope: !3981)
!4719 = !DILocation(line: 492, column: 18, scope: !3981)
!4720 = !DILocation(line: 493, column: 17, scope: !3981)
!4721 = !DILocation(line: 493, column: 2, scope: !3981)
!4722 = !DILocation(line: 493, column: 10, scope: !3981)
!4723 = !DILocation(line: 493, column: 15, scope: !3981)
!4724 = !DILocation(line: 494, column: 17, scope: !3981)
!4725 = !DILocation(line: 494, column: 2, scope: !3981)
!4726 = !DILocation(line: 494, column: 10, scope: !3981)
!4727 = !DILocation(line: 494, column: 15, scope: !3981)
!4728 = !DILocation(line: 495, column: 2, scope: !3981)
!4729 = !DILocation(line: 495, column: 2, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 495, column: 2)
!4731 = !DILocation(line: 497, column: 22, scope: !3981)
!4732 = !DILocation(line: 497, column: 28, scope: !3981)
!4733 = !DILocation(line: 497, column: 2, scope: !3981)
!4734 = !DILocation(line: 497, column: 14, scope: !3981)
!4735 = !DILocation(line: 497, column: 20, scope: !3981)
!4736 = !DILocation(line: 499, column: 18, scope: !3981)
!4737 = !DILocation(line: 499, column: 26, scope: !3981)
!4738 = !DILocation(line: 499, column: 38, scope: !3981)
!4739 = !DILocation(line: 499, column: 44, scope: !3981)
!4740 = !DILocation(line: 499, column: 2, scope: !3981)
!4741 = !DILocation(line: 501, column: 2, scope: !3981)
!4742 = !DILocation(line: 503, column: 13, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 503, column: 2)
!4744 = !DILocation(line: 503, column: 7, scope: !4743)
!4745 = !DILocation(line: 503, column: 18, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 503, column: 2)
!4747 = !DILocation(line: 503, column: 24, scope: !4746)
!4748 = !DILocation(line: 503, column: 2, scope: !4743)
!4749 = !DILocation(line: 504, column: 18, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4746, file: !3, line: 504, column: 7)
!4751 = !DILocation(line: 504, column: 7, scope: !4750)
!4752 = !DILocation(line: 504, column: 25, scope: !4750)
!4753 = !DILocation(line: 504, column: 7, scope: !4746)
!4754 = !DILocation(line: 505, column: 4, scope: !4750)
!4755 = !DILocation(line: 504, column: 28, scope: !4750)
!4756 = !DILocation(line: 503, column: 47, scope: !4746)
!4757 = !DILocation(line: 503, column: 2, scope: !4746)
!4758 = distinct !{!4758, !4748, !4759}
!4759 = !DILocation(line: 505, column: 4, scope: !4743)
!4760 = !DILocation(line: 507, column: 6, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 507, column: 6)
!4762 = !DILocation(line: 507, column: 12, scope: !4761)
!4763 = !DILocation(line: 507, column: 6, scope: !3981)
!4764 = !DILocation(line: 508, column: 9, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 507, column: 31)
!4766 = !DILocation(line: 508, column: 3, scope: !4765)
!4767 = !DILocation(line: 509, column: 9, scope: !4765)
!4768 = !DILocation(line: 509, column: 3, scope: !4765)
!4769 = !DILocation(line: 510, column: 3, scope: !4765)
!4770 = !DILocation(line: 511, column: 3, scope: !4765)
!4771 = !DILocation(line: 512, column: 3, scope: !4765)
!4772 = !DILocation(line: 518, column: 18, scope: !3981)
!4773 = !DILocation(line: 518, column: 2, scope: !3981)
!4774 = !DILocation(line: 518, column: 10, scope: !3981)
!4775 = !DILocation(line: 518, column: 16, scope: !3981)
!4776 = !DILocation(line: 519, column: 22, scope: !3981)
!4777 = !DILocation(line: 519, column: 13, scope: !3981)
!4778 = !DILocation(line: 519, column: 2, scope: !3981)
!4779 = !DILocation(line: 519, column: 20, scope: !3981)
!4780 = !DILocation(line: 520, column: 2, scope: !3981)
!4781 = !DILocation(line: 522, column: 34, scope: !3981)
!4782 = !DILocation(line: 522, column: 42, scope: !3981)
!4783 = !DILocation(line: 522, column: 48, scope: !3981)
!4784 = !DILocation(line: 522, column: 55, scope: !3981)
!4785 = !DILocation(line: 522, column: 8, scope: !3981)
!4786 = !DILocation(line: 522, column: 6, scope: !3981)
!4787 = !DILocation(line: 523, column: 6, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 523, column: 6)
!4789 = !DILocation(line: 523, column: 6, scope: !3981)
!4790 = !DILocation(line: 524, column: 3, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4788, file: !3, line: 523, column: 11)
!4792 = !DILocation(line: 527, column: 25, scope: !4791)
!4793 = !DILocation(line: 527, column: 3, scope: !4791)
!4794 = !DILocation(line: 528, column: 9, scope: !4791)
!4795 = !DILocation(line: 528, column: 3, scope: !4791)
!4796 = !DILocation(line: 529, column: 9, scope: !4791)
!4797 = !DILocation(line: 529, column: 3, scope: !4791)
!4798 = !DILocation(line: 530, column: 3, scope: !4791)
!4799 = !DILocation(line: 531, column: 10, scope: !4791)
!4800 = !DILocation(line: 531, column: 3, scope: !4791)
!4801 = !DILocation(line: 534, column: 2, scope: !3981)
!4802 = !DILocation(line: 536, column: 25, scope: !3981)
!4803 = !DILocation(line: 536, column: 36, scope: !3981)
!4804 = !DILocation(line: 536, column: 42, scope: !3981)
!4805 = !DILocation(line: 537, column: 11, scope: !3981)
!4806 = !DILocation(line: 538, column: 11, scope: !3981)
!4807 = !DILocation(line: 538, column: 33, scope: !3981)
!4808 = !DILocation(line: 538, column: 39, scope: !3981)
!4809 = !DILocation(line: 538, column: 51, scope: !3981)
!4810 = !DILocation(line: 538, column: 44, scope: !3981)
!4811 = !DILocation(line: 538, column: 58, scope: !3981)
!4812 = !DILocation(line: 536, column: 11, scope: !3981)
!4813 = !DILocation(line: 536, column: 9, scope: !3981)
!4814 = !DILocation(line: 539, column: 13, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 539, column: 6)
!4816 = !DILocation(line: 539, column: 6, scope: !4815)
!4817 = !DILocation(line: 539, column: 6, scope: !3981)
!4818 = !DILocation(line: 540, column: 3, scope: !4819)
!4819 = distinct !DILexicalBlock(scope: !4815, file: !3, line: 539, column: 22)
!4820 = !DILocation(line: 542, column: 18, scope: !4819)
!4821 = !DILocation(line: 542, column: 10, scope: !4819)
!4822 = !DILocation(line: 542, column: 3, scope: !4819)
!4823 = !DILocation(line: 544, column: 2, scope: !3981)
!4824 = !DILocation(line: 544, column: 2, scope: !4825)
!4825 = distinct !DILexicalBlock(scope: !4826, file: !3, line: 544, column: 2)
!4826 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 544, column: 2)
!4827 = !DILocation(line: 544, column: 2, scope: !4826)
!4828 = !DILocation(line: 547, column: 2, scope: !3981)
!4829 = !DILocation(line: 548, column: 1, scope: !3981)
!4830 = distinct !DISubprogram(name: "dvbdev_get_free_id", scope: !3, file: !3, line: 195, type: !4831, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!4831 = !DISubroutineType(types: !4832)
!4832 = !{!299, !3337, !299}
!4833 = !DILocalVariable(name: "adap", arg: 1, scope: !4830, file: !3, line: 195, type: !3337)
!4834 = !DILocation(line: 195, column: 52, scope: !4830)
!4835 = !DILocalVariable(name: "type", arg: 2, scope: !4830, file: !3, line: 195, type: !299)
!4836 = !DILocation(line: 195, column: 62, scope: !4830)
!4837 = !DILocalVariable(name: "id", scope: !4830, file: !3, line: 197, type: !233)
!4838 = !DILocation(line: 197, column: 6, scope: !4830)
!4839 = !DILocation(line: 199, column: 2, scope: !4830)
!4840 = !DILocation(line: 199, column: 9, scope: !4830)
!4841 = !DILocation(line: 199, column: 12, scope: !4830)
!4842 = !DILocalVariable(name: "dev", scope: !4843, file: !3, line: 200, type: !144)
!4843 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 199, column: 27)
!4844 = !DILocation(line: 200, column: 22, scope: !4843)
!4845 = !DILocalVariable(name: "__mptr", scope: !4846, file: !3, line: 201, type: !143)
!4846 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 201, column: 3)
!4847 = distinct !DILexicalBlock(scope: !4843, file: !3, line: 201, column: 3)
!4848 = !DILocation(line: 201, column: 3, scope: !4846)
!4849 = !DILocation(line: 201, column: 3, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4846, file: !3, line: 201, column: 3)
!4851 = !DILocation(line: 201, column: 3, scope: !4847)
!4852 = !DILocation(line: 201, column: 3, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4847, file: !3, line: 201, column: 3)
!4854 = !DILocation(line: 202, column: 8, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4853, file: !3, line: 202, column: 8)
!4856 = !DILocation(line: 202, column: 13, scope: !4855)
!4857 = !DILocation(line: 202, column: 21, scope: !4855)
!4858 = !DILocation(line: 202, column: 18, scope: !4855)
!4859 = !DILocation(line: 202, column: 26, scope: !4855)
!4860 = !DILocation(line: 202, column: 29, scope: !4855)
!4861 = !DILocation(line: 202, column: 34, scope: !4855)
!4862 = !DILocation(line: 202, column: 40, scope: !4855)
!4863 = !DILocation(line: 202, column: 37, scope: !4855)
!4864 = !DILocation(line: 202, column: 8, scope: !4853)
!4865 = !DILocation(line: 203, column: 5, scope: !4855)
!4866 = !DILocalVariable(name: "__mptr", scope: !4867, file: !3, line: 201, type: !143)
!4867 = distinct !DILexicalBlock(scope: !4853, file: !3, line: 201, column: 3)
!4868 = !DILocation(line: 201, column: 3, scope: !4867)
!4869 = !DILocation(line: 201, column: 3, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !4867, file: !3, line: 201, column: 3)
!4871 = distinct !{!4871, !4851, !4872}
!4872 = !DILocation(line: 203, column: 10, scope: !4847)
!4873 = !DILocation(line: 204, column: 10, scope: !4843)
!4874 = !DILocation(line: 204, column: 3, scope: !4843)
!4875 = !DILabel(scope: !4843, name: "skip", file: !3, line: 205)
!4876 = !DILocation(line: 205, column: 1, scope: !4843)
!4877 = !DILocation(line: 206, column: 5, scope: !4843)
!4878 = distinct !{!4878, !4839, !4879}
!4879 = !DILocation(line: 207, column: 2, scope: !4830)
!4880 = !DILocation(line: 208, column: 2, scope: !4830)
!4881 = !DILocation(line: 209, column: 1, scope: !4830)
!4882 = distinct !DISubprogram(name: "kzalloc", scope: !134, file: !134, line: 662, type: !4225, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!4883 = !DILocation(line: 445, column: 72, scope: !4217, inlinedAt: !4884)
!4884 = distinct !DILocation(line: 552, column: 10, scope: !4222, inlinedAt: !4885)
!4885 = distinct !DILocation(line: 664, column: 9, scope: !4882)
!4886 = !DILocation(line: 446, column: 9, scope: !4217, inlinedAt: !4884)
!4887 = !DILocation(line: 446, column: 23, scope: !4217, inlinedAt: !4884)
!4888 = !DILocation(line: 448, column: 8, scope: !4217, inlinedAt: !4884)
!4889 = !DILocation(line: 318, column: 67, scope: !4237, inlinedAt: !4890)
!4890 = distinct !DILocation(line: 553, column: 20, scope: !4222, inlinedAt: !4885)
!4891 = !DILocation(line: 346, column: 58, scope: !4243, inlinedAt: !4892)
!4892 = distinct !DILocation(line: 547, column: 11, scope: !4222, inlinedAt: !4885)
!4893 = !DILocation(line: 472, column: 28, scope: !4249, inlinedAt: !4894)
!4894 = distinct !DILocation(line: 481, column: 9, scope: !4254, inlinedAt: !4895)
!4895 = distinct !DILocation(line: 545, column: 11, scope: !4256, inlinedAt: !4885)
!4896 = !DILocation(line: 472, column: 40, scope: !4249, inlinedAt: !4894)
!4897 = !DILocation(line: 472, column: 60, scope: !4249, inlinedAt: !4894)
!4898 = !DILocation(line: 478, column: 51, scope: !4254, inlinedAt: !4895)
!4899 = !DILocation(line: 478, column: 63, scope: !4254, inlinedAt: !4895)
!4900 = !DILocation(line: 480, column: 15, scope: !4254, inlinedAt: !4895)
!4901 = !DILocation(line: 538, column: 45, scope: !4224, inlinedAt: !4885)
!4902 = !DILocation(line: 538, column: 57, scope: !4224, inlinedAt: !4885)
!4903 = !DILocation(line: 542, column: 16, scope: !4222, inlinedAt: !4885)
!4904 = !DILocalVariable(name: "size", arg: 1, scope: !4882, file: !134, line: 662, type: !404)
!4905 = !DILocation(line: 662, column: 36, scope: !4882)
!4906 = !DILocalVariable(name: "flags", arg: 2, scope: !4882, file: !134, line: 662, type: !141)
!4907 = !DILocation(line: 662, column: 48, scope: !4882)
!4908 = !DILocation(line: 664, column: 17, scope: !4882)
!4909 = !DILocation(line: 664, column: 23, scope: !4882)
!4910 = !DILocation(line: 664, column: 29, scope: !4882)
!4911 = !DILocation(line: 540, column: 27, scope: !4223, inlinedAt: !4885)
!4912 = !DILocation(line: 540, column: 6, scope: !4223, inlinedAt: !4885)
!4913 = !DILocation(line: 540, column: 6, scope: !4224, inlinedAt: !4885)
!4914 = !DILocation(line: 544, column: 7, scope: !4256, inlinedAt: !4885)
!4915 = !DILocation(line: 544, column: 12, scope: !4256, inlinedAt: !4885)
!4916 = !DILocation(line: 544, column: 7, scope: !4222, inlinedAt: !4885)
!4917 = !DILocation(line: 545, column: 25, scope: !4256, inlinedAt: !4885)
!4918 = !DILocation(line: 545, column: 31, scope: !4256, inlinedAt: !4885)
!4919 = !DILocation(line: 480, column: 33, scope: !4254, inlinedAt: !4895)
!4920 = !DILocation(line: 480, column: 23, scope: !4254, inlinedAt: !4895)
!4921 = !DILocation(line: 481, column: 29, scope: !4254, inlinedAt: !4895)
!4922 = !DILocation(line: 481, column: 35, scope: !4254, inlinedAt: !4895)
!4923 = !DILocation(line: 481, column: 42, scope: !4254, inlinedAt: !4895)
!4924 = !DILocation(line: 474, column: 23, scope: !4249, inlinedAt: !4894)
!4925 = !DILocation(line: 474, column: 29, scope: !4249, inlinedAt: !4894)
!4926 = !DILocation(line: 474, column: 36, scope: !4249, inlinedAt: !4894)
!4927 = !DILocation(line: 474, column: 9, scope: !4249, inlinedAt: !4894)
!4928 = !DILocation(line: 545, column: 4, scope: !4256, inlinedAt: !4885)
!4929 = !DILocation(line: 547, column: 25, scope: !4222, inlinedAt: !4885)
!4930 = !DILocation(line: 348, column: 7, scope: !4323, inlinedAt: !4892)
!4931 = !DILocation(line: 348, column: 6, scope: !4243, inlinedAt: !4892)
!4932 = !DILocation(line: 349, column: 3, scope: !4323, inlinedAt: !4892)
!4933 = !DILocation(line: 351, column: 6, scope: !4327, inlinedAt: !4892)
!4934 = !DILocation(line: 351, column: 11, scope: !4327, inlinedAt: !4892)
!4935 = !DILocation(line: 351, column: 6, scope: !4243, inlinedAt: !4892)
!4936 = !DILocation(line: 352, column: 3, scope: !4327, inlinedAt: !4892)
!4937 = !DILocation(line: 354, column: 32, scope: !4332, inlinedAt: !4892)
!4938 = !DILocation(line: 354, column: 37, scope: !4332, inlinedAt: !4892)
!4939 = !DILocation(line: 354, column: 42, scope: !4332, inlinedAt: !4892)
!4940 = !DILocation(line: 354, column: 45, scope: !4332, inlinedAt: !4892)
!4941 = !DILocation(line: 354, column: 50, scope: !4332, inlinedAt: !4892)
!4942 = !DILocation(line: 354, column: 6, scope: !4243, inlinedAt: !4892)
!4943 = !DILocation(line: 355, column: 3, scope: !4332, inlinedAt: !4892)
!4944 = !DILocation(line: 356, column: 32, scope: !4340, inlinedAt: !4892)
!4945 = !DILocation(line: 356, column: 37, scope: !4340, inlinedAt: !4892)
!4946 = !DILocation(line: 356, column: 43, scope: !4340, inlinedAt: !4892)
!4947 = !DILocation(line: 356, column: 46, scope: !4340, inlinedAt: !4892)
!4948 = !DILocation(line: 356, column: 51, scope: !4340, inlinedAt: !4892)
!4949 = !DILocation(line: 356, column: 6, scope: !4243, inlinedAt: !4892)
!4950 = !DILocation(line: 357, column: 3, scope: !4340, inlinedAt: !4892)
!4951 = !DILocation(line: 358, column: 6, scope: !4348, inlinedAt: !4892)
!4952 = !DILocation(line: 358, column: 11, scope: !4348, inlinedAt: !4892)
!4953 = !DILocation(line: 358, column: 6, scope: !4243, inlinedAt: !4892)
!4954 = !DILocation(line: 358, column: 26, scope: !4348, inlinedAt: !4892)
!4955 = !DILocation(line: 359, column: 6, scope: !4353, inlinedAt: !4892)
!4956 = !DILocation(line: 359, column: 11, scope: !4353, inlinedAt: !4892)
!4957 = !DILocation(line: 359, column: 6, scope: !4243, inlinedAt: !4892)
!4958 = !DILocation(line: 359, column: 26, scope: !4353, inlinedAt: !4892)
!4959 = !DILocation(line: 360, column: 6, scope: !4358, inlinedAt: !4892)
!4960 = !DILocation(line: 360, column: 11, scope: !4358, inlinedAt: !4892)
!4961 = !DILocation(line: 360, column: 6, scope: !4243, inlinedAt: !4892)
!4962 = !DILocation(line: 360, column: 26, scope: !4358, inlinedAt: !4892)
!4963 = !DILocation(line: 361, column: 6, scope: !4363, inlinedAt: !4892)
!4964 = !DILocation(line: 361, column: 11, scope: !4363, inlinedAt: !4892)
!4965 = !DILocation(line: 361, column: 6, scope: !4243, inlinedAt: !4892)
!4966 = !DILocation(line: 361, column: 26, scope: !4363, inlinedAt: !4892)
!4967 = !DILocation(line: 362, column: 6, scope: !4368, inlinedAt: !4892)
!4968 = !DILocation(line: 362, column: 11, scope: !4368, inlinedAt: !4892)
!4969 = !DILocation(line: 362, column: 6, scope: !4243, inlinedAt: !4892)
!4970 = !DILocation(line: 362, column: 26, scope: !4368, inlinedAt: !4892)
!4971 = !DILocation(line: 363, column: 6, scope: !4373, inlinedAt: !4892)
!4972 = !DILocation(line: 363, column: 11, scope: !4373, inlinedAt: !4892)
!4973 = !DILocation(line: 363, column: 6, scope: !4243, inlinedAt: !4892)
!4974 = !DILocation(line: 363, column: 26, scope: !4373, inlinedAt: !4892)
!4975 = !DILocation(line: 364, column: 6, scope: !4378, inlinedAt: !4892)
!4976 = !DILocation(line: 364, column: 11, scope: !4378, inlinedAt: !4892)
!4977 = !DILocation(line: 364, column: 6, scope: !4243, inlinedAt: !4892)
!4978 = !DILocation(line: 364, column: 26, scope: !4378, inlinedAt: !4892)
!4979 = !DILocation(line: 365, column: 6, scope: !4383, inlinedAt: !4892)
!4980 = !DILocation(line: 365, column: 11, scope: !4383, inlinedAt: !4892)
!4981 = !DILocation(line: 365, column: 6, scope: !4243, inlinedAt: !4892)
!4982 = !DILocation(line: 365, column: 26, scope: !4383, inlinedAt: !4892)
!4983 = !DILocation(line: 366, column: 6, scope: !4388, inlinedAt: !4892)
!4984 = !DILocation(line: 366, column: 11, scope: !4388, inlinedAt: !4892)
!4985 = !DILocation(line: 366, column: 6, scope: !4243, inlinedAt: !4892)
!4986 = !DILocation(line: 366, column: 26, scope: !4388, inlinedAt: !4892)
!4987 = !DILocation(line: 367, column: 6, scope: !4393, inlinedAt: !4892)
!4988 = !DILocation(line: 367, column: 11, scope: !4393, inlinedAt: !4892)
!4989 = !DILocation(line: 367, column: 6, scope: !4243, inlinedAt: !4892)
!4990 = !DILocation(line: 367, column: 26, scope: !4393, inlinedAt: !4892)
!4991 = !DILocation(line: 368, column: 6, scope: !4398, inlinedAt: !4892)
!4992 = !DILocation(line: 368, column: 11, scope: !4398, inlinedAt: !4892)
!4993 = !DILocation(line: 368, column: 6, scope: !4243, inlinedAt: !4892)
!4994 = !DILocation(line: 368, column: 26, scope: !4398, inlinedAt: !4892)
!4995 = !DILocation(line: 369, column: 6, scope: !4403, inlinedAt: !4892)
!4996 = !DILocation(line: 369, column: 11, scope: !4403, inlinedAt: !4892)
!4997 = !DILocation(line: 369, column: 6, scope: !4243, inlinedAt: !4892)
!4998 = !DILocation(line: 369, column: 26, scope: !4403, inlinedAt: !4892)
!4999 = !DILocation(line: 370, column: 6, scope: !4408, inlinedAt: !4892)
!5000 = !DILocation(line: 370, column: 11, scope: !4408, inlinedAt: !4892)
!5001 = !DILocation(line: 370, column: 6, scope: !4243, inlinedAt: !4892)
!5002 = !DILocation(line: 370, column: 26, scope: !4408, inlinedAt: !4892)
!5003 = !DILocation(line: 371, column: 6, scope: !4413, inlinedAt: !4892)
!5004 = !DILocation(line: 371, column: 11, scope: !4413, inlinedAt: !4892)
!5005 = !DILocation(line: 371, column: 6, scope: !4243, inlinedAt: !4892)
!5006 = !DILocation(line: 371, column: 26, scope: !4413, inlinedAt: !4892)
!5007 = !DILocation(line: 372, column: 6, scope: !4418, inlinedAt: !4892)
!5008 = !DILocation(line: 372, column: 11, scope: !4418, inlinedAt: !4892)
!5009 = !DILocation(line: 372, column: 6, scope: !4243, inlinedAt: !4892)
!5010 = !DILocation(line: 372, column: 26, scope: !4418, inlinedAt: !4892)
!5011 = !DILocation(line: 373, column: 6, scope: !4423, inlinedAt: !4892)
!5012 = !DILocation(line: 373, column: 11, scope: !4423, inlinedAt: !4892)
!5013 = !DILocation(line: 373, column: 6, scope: !4243, inlinedAt: !4892)
!5014 = !DILocation(line: 373, column: 26, scope: !4423, inlinedAt: !4892)
!5015 = !DILocation(line: 374, column: 6, scope: !4428, inlinedAt: !4892)
!5016 = !DILocation(line: 374, column: 11, scope: !4428, inlinedAt: !4892)
!5017 = !DILocation(line: 374, column: 6, scope: !4243, inlinedAt: !4892)
!5018 = !DILocation(line: 374, column: 26, scope: !4428, inlinedAt: !4892)
!5019 = !DILocation(line: 375, column: 6, scope: !4433, inlinedAt: !4892)
!5020 = !DILocation(line: 375, column: 11, scope: !4433, inlinedAt: !4892)
!5021 = !DILocation(line: 375, column: 6, scope: !4243, inlinedAt: !4892)
!5022 = !DILocation(line: 375, column: 27, scope: !4433, inlinedAt: !4892)
!5023 = !DILocation(line: 376, column: 6, scope: !4438, inlinedAt: !4892)
!5024 = !DILocation(line: 376, column: 11, scope: !4438, inlinedAt: !4892)
!5025 = !DILocation(line: 376, column: 6, scope: !4243, inlinedAt: !4892)
!5026 = !DILocation(line: 376, column: 32, scope: !4438, inlinedAt: !4892)
!5027 = !DILocation(line: 377, column: 6, scope: !4443, inlinedAt: !4892)
!5028 = !DILocation(line: 377, column: 11, scope: !4443, inlinedAt: !4892)
!5029 = !DILocation(line: 377, column: 6, scope: !4243, inlinedAt: !4892)
!5030 = !DILocation(line: 377, column: 32, scope: !4443, inlinedAt: !4892)
!5031 = !DILocation(line: 378, column: 6, scope: !4448, inlinedAt: !4892)
!5032 = !DILocation(line: 378, column: 11, scope: !4448, inlinedAt: !4892)
!5033 = !DILocation(line: 378, column: 6, scope: !4243, inlinedAt: !4892)
!5034 = !DILocation(line: 378, column: 32, scope: !4448, inlinedAt: !4892)
!5035 = !DILocation(line: 379, column: 6, scope: !4453, inlinedAt: !4892)
!5036 = !DILocation(line: 379, column: 11, scope: !4453, inlinedAt: !4892)
!5037 = !DILocation(line: 379, column: 6, scope: !4243, inlinedAt: !4892)
!5038 = !DILocation(line: 379, column: 33, scope: !4453, inlinedAt: !4892)
!5039 = !DILocation(line: 380, column: 6, scope: !4458, inlinedAt: !4892)
!5040 = !DILocation(line: 380, column: 11, scope: !4458, inlinedAt: !4892)
!5041 = !DILocation(line: 380, column: 6, scope: !4243, inlinedAt: !4892)
!5042 = !DILocation(line: 380, column: 33, scope: !4458, inlinedAt: !4892)
!5043 = !DILocation(line: 381, column: 6, scope: !4463, inlinedAt: !4892)
!5044 = !DILocation(line: 381, column: 11, scope: !4463, inlinedAt: !4892)
!5045 = !DILocation(line: 381, column: 6, scope: !4243, inlinedAt: !4892)
!5046 = !DILocation(line: 381, column: 33, scope: !4463, inlinedAt: !4892)
!5047 = !DILocation(line: 382, column: 2, scope: !4468, inlinedAt: !4892)
!5048 = !DILocation(line: 382, column: 2, scope: !4472, inlinedAt: !4892)
!5049 = !DILocation(line: 382, column: 2, scope: !4473, inlinedAt: !4892)
!5050 = !DILocation(line: 386, column: 1, scope: !4243, inlinedAt: !4892)
!5051 = !DILocation(line: 547, column: 9, scope: !4222, inlinedAt: !4885)
!5052 = !DILocation(line: 549, column: 8, scope: !4479, inlinedAt: !4885)
!5053 = !DILocation(line: 549, column: 7, scope: !4222, inlinedAt: !4885)
!5054 = !DILocation(line: 550, column: 4, scope: !4479, inlinedAt: !4885)
!5055 = !DILocation(line: 553, column: 33, scope: !4222, inlinedAt: !4885)
!5056 = !DILocation(line: 325, column: 6, scope: !4484, inlinedAt: !4890)
!5057 = !DILocation(line: 325, column: 6, scope: !4237, inlinedAt: !4890)
!5058 = !DILocation(line: 326, column: 3, scope: !4484, inlinedAt: !4890)
!5059 = !DILocation(line: 332, column: 9, scope: !4237, inlinedAt: !4890)
!5060 = !DILocation(line: 332, column: 15, scope: !4237, inlinedAt: !4890)
!5061 = !DILocation(line: 332, column: 2, scope: !4237, inlinedAt: !4890)
!5062 = !DILocation(line: 336, column: 1, scope: !4237, inlinedAt: !4890)
!5063 = !DILocation(line: 553, column: 5, scope: !4222, inlinedAt: !4885)
!5064 = !DILocation(line: 553, column: 41, scope: !4222, inlinedAt: !4885)
!5065 = !DILocation(line: 554, column: 5, scope: !4222, inlinedAt: !4885)
!5066 = !DILocation(line: 554, column: 12, scope: !4222, inlinedAt: !4885)
!5067 = !DILocation(line: 448, column: 31, scope: !4217, inlinedAt: !4884)
!5068 = !DILocation(line: 448, column: 34, scope: !4217, inlinedAt: !4884)
!5069 = !DILocation(line: 448, column: 14, scope: !4217, inlinedAt: !4884)
!5070 = !DILocation(line: 450, column: 22, scope: !4217, inlinedAt: !4884)
!5071 = !DILocation(line: 450, column: 25, scope: !4217, inlinedAt: !4884)
!5072 = !DILocation(line: 450, column: 30, scope: !4217, inlinedAt: !4884)
!5073 = !DILocation(line: 450, column: 36, scope: !4217, inlinedAt: !4884)
!5074 = !DILocation(line: 450, column: 8, scope: !4217, inlinedAt: !4884)
!5075 = !DILocation(line: 450, column: 6, scope: !4217, inlinedAt: !4884)
!5076 = !DILocation(line: 451, column: 9, scope: !4217, inlinedAt: !4884)
!5077 = !DILocation(line: 552, column: 3, scope: !4222, inlinedAt: !4885)
!5078 = !DILocation(line: 557, column: 19, scope: !4224, inlinedAt: !4885)
!5079 = !DILocation(line: 557, column: 25, scope: !4224, inlinedAt: !4885)
!5080 = !DILocation(line: 557, column: 9, scope: !4224, inlinedAt: !4885)
!5081 = !DILocation(line: 557, column: 2, scope: !4224, inlinedAt: !4885)
!5082 = !DILocation(line: 558, column: 1, scope: !4224, inlinedAt: !4885)
!5083 = !DILocation(line: 664, column: 2, scope: !4882)
!5084 = distinct !DISubprogram(name: "list_add_tail", scope: !5085, file: !5085, line: 98, type: !5086, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5085 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!5086 = !DISubroutineType(types: !5087)
!5087 = !{null, !151, !151}
!5088 = !DILocalVariable(name: "new", arg: 1, scope: !5084, file: !5085, line: 98, type: !151)
!5089 = !DILocation(line: 98, column: 52, scope: !5084)
!5090 = !DILocalVariable(name: "head", arg: 2, scope: !5084, file: !5085, line: 98, type: !151)
!5091 = !DILocation(line: 98, column: 75, scope: !5084)
!5092 = !DILocation(line: 100, column: 13, scope: !5084)
!5093 = !DILocation(line: 100, column: 18, scope: !5084)
!5094 = !DILocation(line: 100, column: 24, scope: !5084)
!5095 = !DILocation(line: 100, column: 30, scope: !5084)
!5096 = !DILocation(line: 100, column: 2, scope: !5084)
!5097 = !DILocation(line: 101, column: 1, scope: !5084)
!5098 = distinct !DISubprogram(name: "dvb_register_media_device", scope: !3, file: !3, line: 391, type: !5099, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{!299, !144, !299, !299, !7}
!5101 = !DILocalVariable(name: "dvbdev", arg: 1, scope: !5098, file: !3, line: 391, type: !144)
!5102 = !DILocation(line: 391, column: 57, scope: !5098)
!5103 = !DILocalVariable(name: "type", arg: 2, scope: !5098, file: !3, line: 392, type: !299)
!5104 = !DILocation(line: 392, column: 14, scope: !5098)
!5105 = !DILocalVariable(name: "minor", arg: 3, scope: !5098, file: !3, line: 392, type: !299)
!5106 = !DILocation(line: 392, column: 24, scope: !5098)
!5107 = !DILocalVariable(name: "demux_sink_pads", arg: 4, scope: !5098, file: !3, line: 393, type: !7)
!5108 = !DILocation(line: 393, column: 19, scope: !5098)
!5109 = !DILocation(line: 452, column: 2, scope: !5098)
!5110 = distinct !DISubprogram(name: "dvb_media_device_free", scope: !3, file: !3, line: 211, type: !5111, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{null, !144}
!5113 = !DILocalVariable(name: "dvbdev", arg: 1, scope: !5110, file: !3, line: 211, type: !144)
!5114 = !DILocation(line: 211, column: 54, scope: !5110)
!5115 = !DILocation(line: 249, column: 1, scope: !5110)
!5116 = distinct !DISubprogram(name: "IS_ERR", scope: !5117, file: !5117, line: 34, type: !5118, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5117 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!5118 = !DISubroutineType(types: !5119)
!5119 = !{!315, !1983}
!5120 = !DILocalVariable(name: "ptr", arg: 1, scope: !5116, file: !5117, line: 34, type: !1983)
!5121 = !DILocation(line: 34, column: 60, scope: !5116)
!5122 = !DILocation(line: 36, column: 9, scope: !5116)
!5123 = !DILocation(line: 36, column: 2, scope: !5116)
!5124 = distinct !DISubprogram(name: "PTR_ERR", scope: !5117, file: !5117, line: 29, type: !5125, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5125 = !DISubroutineType(types: !5126)
!5126 = !{!364, !1983}
!5127 = !DILocalVariable(name: "ptr", arg: 1, scope: !5124, file: !5117, line: 29, type: !1983)
!5128 = !DILocation(line: 29, column: 61, scope: !5124)
!5129 = !DILocation(line: 31, column: 16, scope: !5124)
!5130 = !DILocation(line: 31, column: 9, scope: !5124)
!5131 = !DILocation(line: 31, column: 2, scope: !5124)
!5132 = distinct !DISubprogram(name: "dvb_remove_device", scope: !3, file: !3, line: 552, type: !5111, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5133 = !DILocalVariable(name: "dvbdev", arg: 1, scope: !5132, file: !3, line: 552, type: !144)
!5134 = !DILocation(line: 552, column: 43, scope: !5132)
!5135 = !DILocation(line: 554, column: 7, scope: !5136)
!5136 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 554, column: 6)
!5137 = !DILocation(line: 554, column: 6, scope: !5132)
!5138 = !DILocation(line: 555, column: 3, scope: !5136)
!5139 = !DILocation(line: 557, column: 2, scope: !5132)
!5140 = !DILocation(line: 558, column: 13, scope: !5132)
!5141 = !DILocation(line: 558, column: 21, scope: !5132)
!5142 = !DILocation(line: 558, column: 2, scope: !5132)
!5143 = !DILocation(line: 558, column: 28, scope: !5132)
!5144 = !DILocation(line: 559, column: 2, scope: !5132)
!5145 = !DILocation(line: 561, column: 24, scope: !5132)
!5146 = !DILocation(line: 561, column: 2, scope: !5132)
!5147 = !DILocation(line: 563, column: 17, scope: !5132)
!5148 = !DILocation(line: 563, column: 28, scope: !5132)
!5149 = !DILocation(line: 563, column: 2, scope: !5132)
!5150 = !DILocation(line: 565, column: 13, scope: !5132)
!5151 = !DILocation(line: 565, column: 21, scope: !5132)
!5152 = !DILocation(line: 565, column: 2, scope: !5132)
!5153 = !DILocation(line: 566, column: 1, scope: !5132)
!5154 = distinct !DISubprogram(name: "list_del", scope: !5085, file: !5085, line: 144, type: !5155, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5155 = !DISubroutineType(types: !5156)
!5156 = !{null, !151}
!5157 = !DILocalVariable(name: "entry", arg: 1, scope: !5154, file: !5085, line: 144, type: !151)
!5158 = !DILocation(line: 144, column: 47, scope: !5154)
!5159 = !DILocation(line: 146, column: 19, scope: !5154)
!5160 = !DILocation(line: 146, column: 2, scope: !5154)
!5161 = !DILocation(line: 147, column: 2, scope: !5154)
!5162 = !DILocation(line: 147, column: 9, scope: !5154)
!5163 = !DILocation(line: 147, column: 14, scope: !5154)
!5164 = !DILocation(line: 148, column: 2, scope: !5154)
!5165 = !DILocation(line: 148, column: 9, scope: !5154)
!5166 = !DILocation(line: 148, column: 14, scope: !5154)
!5167 = !DILocation(line: 149, column: 1, scope: !5154)
!5168 = distinct !DISubprogram(name: "dvb_free_device", scope: !3, file: !3, line: 570, type: !5111, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5169 = !DILocalVariable(name: "dvbdev", arg: 1, scope: !5168, file: !3, line: 570, type: !144)
!5170 = !DILocation(line: 570, column: 41, scope: !5168)
!5171 = !DILocation(line: 572, column: 7, scope: !5172)
!5172 = distinct !DILexicalBlock(scope: !5168, file: !3, line: 572, column: 6)
!5173 = !DILocation(line: 572, column: 6, scope: !5168)
!5174 = !DILocation(line: 573, column: 3, scope: !5172)
!5175 = !DILocation(line: 575, column: 9, scope: !5168)
!5176 = !DILocation(line: 575, column: 17, scope: !5168)
!5177 = !DILocation(line: 575, column: 2, scope: !5168)
!5178 = !DILocation(line: 576, column: 9, scope: !5168)
!5179 = !DILocation(line: 576, column: 2, scope: !5168)
!5180 = !DILocation(line: 577, column: 1, scope: !5168)
!5181 = distinct !DISubprogram(name: "dvb_unregister_device", scope: !3, file: !3, line: 581, type: !5111, scopeLine: 582, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5182 = !DILocalVariable(name: "dvbdev", arg: 1, scope: !5181, file: !3, line: 581, type: !144)
!5183 = !DILocation(line: 581, column: 47, scope: !5181)
!5184 = !DILocation(line: 583, column: 20, scope: !5181)
!5185 = !DILocation(line: 583, column: 2, scope: !5181)
!5186 = !DILocation(line: 584, column: 18, scope: !5181)
!5187 = !DILocation(line: 584, column: 2, scope: !5181)
!5188 = !DILocation(line: 585, column: 1, scope: !5181)
!5189 = !DILocalVariable(name: "adap", arg: 1, scope: !3989, file: !3, line: 839, type: !3337)
!5190 = !DILocation(line: 839, column: 46, scope: !3989)
!5191 = !DILocalVariable(name: "name", arg: 2, scope: !3989, file: !3, line: 839, type: !283)
!5192 = !DILocation(line: 839, column: 64, scope: !3989)
!5193 = !DILocalVariable(name: "module", arg: 3, scope: !3989, file: !3, line: 840, type: !159)
!5194 = !DILocation(line: 840, column: 20, scope: !3989)
!5195 = !DILocalVariable(name: "device", arg: 4, scope: !3989, file: !3, line: 840, type: !3348)
!5196 = !DILocation(line: 840, column: 43, scope: !3989)
!5197 = !DILocalVariable(name: "adapter_nums", arg: 5, scope: !3989, file: !3, line: 841, type: !3992)
!5198 = !DILocation(line: 841, column: 12, scope: !3989)
!5199 = !DILocalVariable(name: "i", scope: !3989, file: !3, line: 843, type: !299)
!5200 = !DILocation(line: 843, column: 6, scope: !3989)
!5201 = !DILocalVariable(name: "num", scope: !3989, file: !3, line: 843, type: !299)
!5202 = !DILocation(line: 843, column: 9, scope: !3989)
!5203 = !DILocation(line: 845, column: 2, scope: !3989)
!5204 = !DILocation(line: 847, column: 9, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 847, column: 2)
!5206 = !DILocation(line: 847, column: 7, scope: !5205)
!5207 = !DILocation(line: 847, column: 14, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5205, file: !3, line: 847, column: 2)
!5209 = !DILocation(line: 847, column: 16, scope: !5208)
!5210 = !DILocation(line: 847, column: 2, scope: !5205)
!5211 = !DILocation(line: 848, column: 9, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 847, column: 41)
!5213 = !DILocation(line: 848, column: 22, scope: !5212)
!5214 = !DILocation(line: 848, column: 7, scope: !5212)
!5215 = !DILocation(line: 849, column: 7, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5212, file: !3, line: 849, column: 7)
!5217 = !DILocation(line: 849, column: 11, scope: !5216)
!5218 = !DILocation(line: 849, column: 17, scope: !5216)
!5219 = !DILocation(line: 849, column: 21, scope: !5216)
!5220 = !DILocation(line: 849, column: 25, scope: !5216)
!5221 = !DILocation(line: 849, column: 7, scope: !5212)
!5222 = !DILocation(line: 851, column: 38, scope: !5223)
!5223 = distinct !DILexicalBlock(scope: !5224, file: !3, line: 851, column: 8)
!5224 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 849, column: 45)
!5225 = !DILocation(line: 851, column: 8, scope: !5223)
!5226 = !DILocation(line: 851, column: 8, scope: !5224)
!5227 = !DILocation(line: 852, column: 5, scope: !5223)
!5228 = !DILocation(line: 853, column: 3, scope: !5224)
!5229 = !DILocation(line: 854, column: 10, scope: !5230)
!5230 = distinct !DILexicalBlock(scope: !5216, file: !3, line: 853, column: 10)
!5231 = !DILocation(line: 854, column: 8, scope: !5230)
!5232 = !DILocation(line: 855, column: 4, scope: !5230)
!5233 = !DILocation(line: 857, column: 7, scope: !5212)
!5234 = !DILocation(line: 858, column: 2, scope: !5212)
!5235 = !DILocation(line: 847, column: 36, scope: !5208)
!5236 = !DILocation(line: 847, column: 2, scope: !5208)
!5237 = distinct !{!5237, !5210, !5238}
!5238 = !DILocation(line: 858, column: 2, scope: !5205)
!5239 = !DILocation(line: 860, column: 6, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 860, column: 6)
!5241 = !DILocation(line: 860, column: 10, scope: !5240)
!5242 = !DILocation(line: 860, column: 6, scope: !3989)
!5243 = !DILocation(line: 861, column: 3, scope: !5244)
!5244 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 860, column: 15)
!5245 = !DILocation(line: 862, column: 3, scope: !5244)
!5246 = !DILocation(line: 865, column: 10, scope: !3989)
!5247 = !DILocation(line: 865, column: 2, scope: !3989)
!5248 = !DILocation(line: 866, column: 19, scope: !3989)
!5249 = !DILocation(line: 866, column: 25, scope: !3989)
!5250 = !DILocation(line: 866, column: 2, scope: !3989)
!5251 = !DILocation(line: 868, column: 2, scope: !3989)
!5252 = !DILocation(line: 870, column: 14, scope: !3989)
!5253 = !DILocation(line: 870, column: 2, scope: !3989)
!5254 = !DILocation(line: 870, column: 8, scope: !3989)
!5255 = !DILocation(line: 870, column: 12, scope: !3989)
!5256 = !DILocation(line: 871, column: 15, scope: !3989)
!5257 = !DILocation(line: 871, column: 2, scope: !3989)
!5258 = !DILocation(line: 871, column: 8, scope: !3989)
!5259 = !DILocation(line: 871, column: 13, scope: !3989)
!5260 = !DILocation(line: 872, column: 17, scope: !3989)
!5261 = !DILocation(line: 872, column: 2, scope: !3989)
!5262 = !DILocation(line: 872, column: 8, scope: !3989)
!5263 = !DILocation(line: 872, column: 15, scope: !3989)
!5264 = !DILocation(line: 873, column: 17, scope: !3989)
!5265 = !DILocation(line: 873, column: 2, scope: !3989)
!5266 = !DILocation(line: 873, column: 8, scope: !3989)
!5267 = !DILocation(line: 873, column: 15, scope: !3989)
!5268 = !DILocation(line: 874, column: 2, scope: !3989)
!5269 = !DILocation(line: 874, column: 8, scope: !3989)
!5270 = !DILocation(line: 874, column: 19, scope: !3989)
!5271 = !DILocation(line: 875, column: 2, scope: !3989)
!5272 = !DILocation(line: 875, column: 8, scope: !3989)
!5273 = !DILocation(line: 875, column: 19, scope: !3989)
!5274 = !DILocation(line: 876, column: 2, scope: !3989)
!5275 = !DILocation(line: 876, column: 2, scope: !5276)
!5276 = distinct !DILexicalBlock(scope: !3989, file: !3, line: 876, column: 2)
!5277 = !DILocation(line: 882, column: 18, scope: !3989)
!5278 = !DILocation(line: 882, column: 24, scope: !3989)
!5279 = !DILocation(line: 882, column: 2, scope: !3989)
!5280 = !DILocation(line: 884, column: 2, scope: !3989)
!5281 = !DILocation(line: 886, column: 9, scope: !3989)
!5282 = !DILocation(line: 886, column: 2, scope: !3989)
!5283 = !DILocation(line: 887, column: 1, scope: !3989)
!5284 = distinct !DISubprogram(name: "dvbdev_check_free_adapter_num", scope: !3, file: !3, line: 813, type: !3303, scopeLine: 814, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5285 = !DILocalVariable(name: "num", arg: 1, scope: !5284, file: !3, line: 813, type: !299)
!5286 = !DILocation(line: 813, column: 46, scope: !5284)
!5287 = !DILocalVariable(name: "entry", scope: !5284, file: !3, line: 815, type: !151)
!5288 = !DILocation(line: 815, column: 20, scope: !5284)
!5289 = !DILocation(line: 816, column: 2, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 816, column: 2)
!5291 = !DILocation(line: 816, column: 2, scope: !5292)
!5292 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 816, column: 2)
!5293 = !DILocalVariable(name: "adap", scope: !5294, file: !3, line: 817, type: !3337)
!5294 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 816, column: 42)
!5295 = !DILocation(line: 817, column: 23, scope: !5294)
!5296 = !DILocalVariable(name: "__mptr", scope: !5297, file: !3, line: 818, type: !143)
!5297 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 818, column: 10)
!5298 = !DILocation(line: 818, column: 10, scope: !5297)
!5299 = !DILocation(line: 818, column: 10, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 818, column: 10)
!5301 = !DILocation(line: 818, column: 8, scope: !5294)
!5302 = !DILocation(line: 819, column: 7, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 819, column: 7)
!5304 = !DILocation(line: 819, column: 13, scope: !5303)
!5305 = !DILocation(line: 819, column: 20, scope: !5303)
!5306 = !DILocation(line: 819, column: 17, scope: !5303)
!5307 = !DILocation(line: 819, column: 7, scope: !5294)
!5308 = !DILocation(line: 820, column: 4, scope: !5303)
!5309 = !DILocation(line: 821, column: 2, scope: !5294)
!5310 = distinct !{!5310, !5289, !5311}
!5311 = !DILocation(line: 821, column: 2, scope: !5290)
!5312 = !DILocation(line: 822, column: 2, scope: !5284)
!5313 = !DILocation(line: 823, column: 1, scope: !5284)
!5314 = distinct !DISubprogram(name: "dvbdev_get_free_adapter_num", scope: !3, file: !3, line: 825, type: !4042, scopeLine: 826, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5315 = !DILocalVariable(name: "num", scope: !5314, file: !3, line: 827, type: !299)
!5316 = !DILocation(line: 827, column: 6, scope: !5314)
!5317 = !DILocation(line: 829, column: 2, scope: !5314)
!5318 = !DILocation(line: 829, column: 9, scope: !5314)
!5319 = !DILocation(line: 829, column: 13, scope: !5314)
!5320 = !DILocation(line: 830, column: 37, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5322, file: !3, line: 830, column: 7)
!5322 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 829, column: 33)
!5323 = !DILocation(line: 830, column: 7, scope: !5321)
!5324 = !DILocation(line: 830, column: 7, scope: !5322)
!5325 = !DILocation(line: 831, column: 11, scope: !5321)
!5326 = !DILocation(line: 831, column: 4, scope: !5321)
!5327 = !DILocation(line: 832, column: 6, scope: !5322)
!5328 = distinct !{!5328, !5317, !5329}
!5329 = !DILocation(line: 833, column: 2, scope: !5314)
!5330 = !DILocation(line: 835, column: 2, scope: !5314)
!5331 = !DILocation(line: 836, column: 1, scope: !5314)
!5332 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5085, file: !5085, line: 33, type: !5155, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5333 = !DILocalVariable(name: "list", arg: 1, scope: !5332, file: !5085, line: 33, type: !151)
!5334 = !DILocation(line: 33, column: 53, scope: !5332)
!5335 = !DILocation(line: 35, column: 2, scope: !5332)
!5336 = !DILocation(line: 35, column: 2, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5332, file: !5085, line: 35, column: 2)
!5338 = !DILocation(line: 35, column: 2, scope: !5339)
!5339 = distinct !DILexicalBlock(scope: !5337, file: !5085, line: 35, column: 2)
!5340 = !DILocation(line: 35, column: 2, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5337, file: !5085, line: 35, column: 2)
!5342 = !DILocation(line: 36, column: 15, scope: !5332)
!5343 = !DILocation(line: 36, column: 2, scope: !5332)
!5344 = !DILocation(line: 36, column: 8, scope: !5332)
!5345 = !DILocation(line: 36, column: 13, scope: !5332)
!5346 = !DILocation(line: 37, column: 1, scope: !5332)
!5347 = distinct !DISubprogram(name: "dvb_unregister_adapter", scope: !3, file: !3, line: 891, type: !5348, scopeLine: 892, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5348 = !DISubroutineType(types: !5349)
!5349 = !{!299, !3337}
!5350 = !DILocalVariable(name: "adap", arg: 1, scope: !5347, file: !3, line: 891, type: !3337)
!5351 = !DILocation(line: 891, column: 48, scope: !5347)
!5352 = !DILocation(line: 893, column: 2, scope: !5347)
!5353 = !DILocation(line: 894, column: 13, scope: !5347)
!5354 = !DILocation(line: 894, column: 19, scope: !5347)
!5355 = !DILocation(line: 894, column: 2, scope: !5347)
!5356 = !DILocation(line: 895, column: 2, scope: !5347)
!5357 = !DILocation(line: 896, column: 2, scope: !5347)
!5358 = distinct !DISubprogram(name: "dvb_module_probe", scope: !3, file: !3, line: 966, type: !5359, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5359 = !DISubroutineType(types: !5360)
!5360 = !{!5361, !283, !283, !5370, !245, !143}
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_client", file: !5363, line: 314, size: 6016, elements: !5364)
!5363 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!5364 = !{!5365, !5366, !5367, !5369, !5491, !5492, !5493, !5494}
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5362, file: !5363, line: 315, baseType: !252, size: 16)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5362, file: !5363, line: 325, baseType: !252, size: 16, offset: 16)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5362, file: !5363, line: 328, baseType: !5368, size: 160, offset: 32)
!5368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 160, elements: !2057)
!5369 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !5362, file: !5363, line: 329, baseType: !5370, size: 64, offset: 192)
!5370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5371, size: 64)
!5371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !5363, line: 695, size: 7552, elements: !5372)
!5372 = !{!5373, !5374, !5375, !5412, !5413, !5427, !5434, !5435, !5436, !5437, !5438, !5439, !5440, !5444, !5445, !5446, !5447, !5479, !5490}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5371, file: !5363, line: 696, baseType: !159, size: 64)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !5371, file: !5363, line: 697, baseType: !7, size: 32, offset: 64)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !5371, file: !5363, line: 698, baseType: !5376, size: 64, offset: 128)
!5376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5377, size: 64)
!5377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5378)
!5378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !5363, line: 519, size: 320, elements: !5379)
!5379 = !{!5380, !5393, !5394, !5407, !5408}
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !5378, file: !5363, line: 529, baseType: !5381, size: 64)
!5381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5382, size: 64)
!5382 = !DISubroutineType(types: !5383)
!5383 = !{!299, !5370, !5384, !299}
!5384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5385, size: 64)
!5385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !5386, line: 69, size: 128, elements: !5387)
!5386 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!5387 = !{!5388, !5389, !5390, !5391}
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5385, file: !5386, line: 70, baseType: !707, size: 16)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5385, file: !5386, line: 71, baseType: !707, size: 16, offset: 16)
!5390 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5385, file: !5386, line: 84, baseType: !707, size: 16, offset: 32)
!5391 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5385, file: !5386, line: 85, baseType: !5392, size: 64, offset: 64)
!5392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !5378, file: !5363, line: 531, baseType: !5381, size: 64, offset: 64)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !5378, file: !5363, line: 533, baseType: !5395, size: 64, offset: 128)
!5395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5396, size: 64)
!5396 = !DISubroutineType(types: !5397)
!5397 = !{!299, !5370, !706, !252, !285, !1199, !299, !5398}
!5398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5399 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !5386, line: 135, size: 272, elements: !5400)
!5400 = !{!5401, !5402, !5403}
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !5399, file: !5386, line: 136, baseType: !1200, size: 8)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !5399, file: !5386, line: 137, baseType: !707, size: 16)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !5399, file: !5386, line: 138, baseType: !5404, size: 272)
!5404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1200, size: 272, elements: !5405)
!5405 = !{!5406}
!5406 = !DISubrange(count: 34)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !5378, file: !5363, line: 536, baseType: !5395, size: 64, offset: 192)
!5408 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !5378, file: !5363, line: 541, baseType: !5409, size: 64, offset: 256)
!5409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5410, size: 64)
!5410 = !DISubroutineType(types: !5411)
!5411 = !{!233, !5370}
!5412 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !5371, file: !5363, line: 699, baseType: !143, size: 64, offset: 192)
!5413 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !5371, file: !5363, line: 702, baseType: !5414, size: 64, offset: 256)
!5414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5415, size: 64)
!5415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5416)
!5416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !5363, line: 557, size: 192, elements: !5417)
!5417 = !{!5418, !5422, !5426}
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !5416, file: !5363, line: 558, baseType: !5419, size: 64)
!5419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5420, size: 64)
!5420 = !DISubroutineType(types: !5421)
!5421 = !{null, !5370, !7}
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !5416, file: !5363, line: 559, baseType: !5423, size: 64, offset: 64)
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5424, size: 64)
!5424 = !DISubroutineType(types: !5425)
!5425 = !{!299, !5370, !7}
!5426 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !5416, file: !5363, line: 560, baseType: !5419, size: 64, offset: 128)
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !5371, file: !5363, line: 703, baseType: !5428, size: 192, offset: 320)
!5428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !5429, line: 30, size: 192, elements: !5430)
!5429 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!5430 = !{!5431, !5432, !5433}
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !5428, file: !5429, line: 31, baseType: !627)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !5428, file: !5429, line: 32, baseType: !599, size: 128)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !5428, file: !5429, line: 33, baseType: !1063, size: 64, offset: 128)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !5371, file: !5363, line: 704, baseType: !5428, size: 192, offset: 512)
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5371, file: !5363, line: 706, baseType: !299, size: 32, offset: 704)
!5436 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !5371, file: !5363, line: 707, baseType: !299, size: 32, offset: 736)
!5437 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5371, file: !5363, line: 708, baseType: !3349, size: 5568, offset: 768)
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !5371, file: !5363, line: 709, baseType: !407, size: 64, offset: 6336)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !5371, file: !5363, line: 713, baseType: !299, size: 32, offset: 6400)
!5440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5371, file: !5363, line: 714, baseType: !5441, size: 384, offset: 6432)
!5441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 384, elements: !5442)
!5442 = !{!5443}
!5443 = !DISubrange(count: 48)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !5371, file: !5363, line: 715, baseType: !1354, size: 192, offset: 6848)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !5371, file: !5363, line: 717, baseType: !1020, size: 192, offset: 7040)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !5371, file: !5363, line: 718, baseType: !148, size: 128, offset: 7232)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !5371, file: !5363, line: 720, baseType: !5448, size: 64, offset: 7360)
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !5363, line: 618, size: 832, elements: !5450)
!5450 = !{!5451, !5455, !5456, !5460, !5461, !5462, !5463, !5467, !5468, !5471, !5472, !5475, !5478}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !5449, file: !5363, line: 619, baseType: !5452, size: 64)
!5452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5453, size: 64)
!5453 = !DISubroutineType(types: !5454)
!5454 = !{!299, !5370}
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !5449, file: !5363, line: 621, baseType: !5452, size: 64, offset: 64)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !5449, file: !5363, line: 622, baseType: !5457, size: 64, offset: 128)
!5457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5458, size: 64)
!5458 = !DISubroutineType(types: !5459)
!5459 = !{null, !5370, !299}
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !5449, file: !5363, line: 623, baseType: !5452, size: 64, offset: 192)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !5449, file: !5363, line: 624, baseType: !5457, size: 64, offset: 256)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !5449, file: !5363, line: 625, baseType: !5452, size: 64, offset: 320)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !5449, file: !5363, line: 627, baseType: !5464, size: 64, offset: 384)
!5464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5465, size: 64)
!5465 = !DISubroutineType(types: !5466)
!5466 = !{null, !5370}
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !5449, file: !5363, line: 628, baseType: !5464, size: 64, offset: 448)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !5449, file: !5363, line: 631, baseType: !5469, size: 64, offset: 512)
!5469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5470, size: 64)
!5470 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !5363, line: 631, flags: DIFlagFwdDecl)
!5471 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !5449, file: !5363, line: 632, baseType: !5469, size: 64, offset: 576)
!5472 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !5449, file: !5363, line: 633, baseType: !5473, size: 64, offset: 640)
!5473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5474, size: 64)
!5474 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !5363, line: 633, flags: DIFlagFwdDecl)
!5475 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !5449, file: !5363, line: 634, baseType: !5476, size: 64, offset: 704)
!5476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5477, size: 64)
!5477 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !5363, line: 634, flags: DIFlagFwdDecl)
!5478 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !5449, file: !5363, line: 635, baseType: !5476, size: 64, offset: 768)
!5479 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5371, file: !5363, line: 721, baseType: !5480, size: 64, offset: 7424)
!5480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5481, size: 64)
!5481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5482)
!5482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !5363, line: 664, size: 192, elements: !5483)
!5483 = !{!5484, !5485, !5486, !5487, !5488, !5489}
!5484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5482, file: !5363, line: 665, baseType: !239, size: 64)
!5485 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !5482, file: !5363, line: 666, baseType: !299, size: 32, offset: 64)
!5486 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !5482, file: !5363, line: 667, baseType: !706, size: 16, offset: 96)
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !5482, file: !5363, line: 668, baseType: !706, size: 16, offset: 112)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !5482, file: !5363, line: 669, baseType: !706, size: 16, offset: 128)
!5489 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !5482, file: !5363, line: 670, baseType: !706, size: 16, offset: 144)
!5490 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !5371, file: !5363, line: 723, baseType: !3631, size: 64, offset: 7488)
!5491 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5362, file: !5363, line: 330, baseType: !3349, size: 5568, offset: 256)
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "init_irq", scope: !5362, file: !5363, line: 331, baseType: !299, size: 32, offset: 5824)
!5493 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5362, file: !5363, line: 332, baseType: !299, size: 32, offset: 5856)
!5494 = !DIDerivedType(tag: DW_TAG_member, name: "detected", scope: !5362, file: !5363, line: 333, baseType: !148, size: 128, offset: 5888)
!5495 = !DILocalVariable(name: "module_name", arg: 1, scope: !5358, file: !3, line: 966, type: !283)
!5496 = !DILocation(line: 966, column: 49, scope: !5358)
!5497 = !DILocalVariable(name: "name", arg: 2, scope: !5358, file: !3, line: 967, type: !283)
!5498 = !DILocation(line: 967, column: 21, scope: !5358)
!5499 = !DILocalVariable(name: "adap", arg: 3, scope: !5358, file: !3, line: 968, type: !5370)
!5500 = !DILocation(line: 968, column: 29, scope: !5358)
!5501 = !DILocalVariable(name: "addr", arg: 4, scope: !5358, file: !3, line: 969, type: !245)
!5502 = !DILocation(line: 969, column: 23, scope: !5358)
!5503 = !DILocalVariable(name: "platform_data", arg: 5, scope: !5358, file: !3, line: 970, type: !143)
!5504 = !DILocation(line: 970, column: 15, scope: !5358)
!5505 = !DILocalVariable(name: "client", scope: !5358, file: !3, line: 972, type: !5361)
!5506 = !DILocation(line: 972, column: 21, scope: !5358)
!5507 = !DILocalVariable(name: "board_info", scope: !5358, file: !3, line: 973, type: !5508)
!5508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5509, size: 64)
!5509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_board_info", file: !5363, line: 410, size: 640, elements: !5510)
!5510 = !{!5511, !5512, !5513, !5514, !5515, !5516, !5517, !5518, !5544, !5560, !5561}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5509, file: !5363, line: 411, baseType: !5368, size: 160)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5509, file: !5363, line: 412, baseType: !252, size: 16, offset: 160)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5509, file: !5363, line: 413, baseType: !252, size: 16, offset: 176)
!5514 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !5509, file: !5363, line: 414, baseType: !283, size: 64, offset: 192)
!5515 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !5509, file: !5363, line: 415, baseType: !143, size: 64, offset: 256)
!5516 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !5509, file: !5363, line: 416, baseType: !3645, size: 64, offset: 320)
!5517 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5509, file: !5363, line: 417, baseType: !3658, size: 64, offset: 384)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5509, file: !5363, line: 418, baseType: !5519, size: 64, offset: 448)
!5519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5520, size: 64)
!5520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5521)
!5521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !120, line: 263, size: 256, elements: !5522)
!5522 = !{!5523, !5524, !5525, !5526, !5527}
!5523 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5521, file: !120, line: 264, baseType: !283, size: 64)
!5524 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5521, file: !120, line: 265, baseType: !404, size: 64, offset: 64)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !5521, file: !120, line: 266, baseType: !315, size: 8, offset: 128)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5521, file: !120, line: 267, baseType: !119, size: 32, offset: 160)
!5527 = !DIDerivedType(tag: DW_TAG_member, scope: !5521, file: !120, line: 268, baseType: !5528, size: 64, offset: 192)
!5528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5521, file: !120, line: 268, size: 64, elements: !5529)
!5529 = !{!5530, !5531}
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !5528, file: !120, line: 269, baseType: !1983, size: 64)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !5528, file: !120, line: 276, baseType: !5532, size: 64)
!5532 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5528, file: !120, line: 270, size: 64, elements: !5533)
!5533 = !{!5534, !5536, !5538, !5540, !5542}
!5534 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !5532, file: !120, line: 271, baseType: !5535, size: 64)
!5535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1199, size: 64, elements: !1177)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !5532, file: !120, line: 272, baseType: !5537, size: 64)
!5537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 64, elements: !1002)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !5532, file: !120, line: 273, baseType: !5539, size: 64)
!5539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 64, elements: !1421)
!5540 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !5532, file: !120, line: 274, baseType: !5541, size: 64)
!5541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !239, size: 64, elements: !1218)
!5542 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5532, file: !120, line: 275, baseType: !5543, size: 64)
!5543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 64, elements: !1218)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !5509, file: !5363, line: 419, baseType: !5545, size: 64, offset: 512)
!5545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5546, size: 64)
!5546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5547)
!5547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !5548, line: 20, size: 512, elements: !5549)
!5548 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!5549 = !{!5550, !5552, !5553, !5554, !5555, !5556, !5558, !5559}
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5547, file: !5548, line: 21, baseType: !5551, size: 64)
!5551 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !142, line: 158, baseType: !1981)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !5547, file: !5548, line: 22, baseType: !5551, size: 64, offset: 64)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5547, file: !5548, line: 23, baseType: !283, size: 64, offset: 128)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5547, file: !5548, line: 24, baseType: !407, size: 64, offset: 192)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !5547, file: !5548, line: 25, baseType: !407, size: 64, offset: 256)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5547, file: !5548, line: 26, baseType: !5557, size: 64, offset: 320)
!5557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5547, size: 64)
!5558 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !5547, file: !5548, line: 26, baseType: !5557, size: 64, offset: 384)
!5559 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !5547, file: !5548, line: 26, baseType: !5557, size: 64, offset: 448)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !5509, file: !5363, line: 420, baseType: !7, size: 32, offset: 576)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5509, file: !5363, line: 421, baseType: !299, size: 32, offset: 608)
!5562 = !DILocation(line: 973, column: 25, scope: !5358)
!5563 = !DILocation(line: 975, column: 15, scope: !5358)
!5564 = !DILocation(line: 975, column: 13, scope: !5358)
!5565 = !DILocation(line: 976, column: 7, scope: !5566)
!5566 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 976, column: 6)
!5567 = !DILocation(line: 976, column: 6, scope: !5358)
!5568 = !DILocation(line: 977, column: 3, scope: !5566)
!5569 = !DILocation(line: 979, column: 6, scope: !5570)
!5570 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 979, column: 6)
!5571 = !DILocation(line: 979, column: 6, scope: !5358)
!5572 = !DILocation(line: 980, column: 11, scope: !5570)
!5573 = !DILocation(line: 980, column: 23, scope: !5570)
!5574 = !DILocation(line: 980, column: 29, scope: !5570)
!5575 = !DILocation(line: 980, column: 3, scope: !5570)
!5576 = !DILocation(line: 982, column: 11, scope: !5570)
!5577 = !DILocation(line: 982, column: 23, scope: !5570)
!5578 = !DILocation(line: 982, column: 29, scope: !5570)
!5579 = !DILocation(line: 982, column: 3, scope: !5570)
!5580 = !DILocation(line: 984, column: 21, scope: !5358)
!5581 = !DILocation(line: 984, column: 2, scope: !5358)
!5582 = !DILocation(line: 984, column: 14, scope: !5358)
!5583 = !DILocation(line: 984, column: 19, scope: !5358)
!5584 = !DILocation(line: 985, column: 30, scope: !5358)
!5585 = !DILocation(line: 985, column: 2, scope: !5358)
!5586 = !DILocation(line: 985, column: 14, scope: !5358)
!5587 = !DILocation(line: 985, column: 28, scope: !5358)
!5588 = !DILocation(line: 986, column: 17, scope: !5358)
!5589 = !DILocation(line: 986, column: 2, scope: !5358)
!5590 = !DILocation(line: 987, column: 33, scope: !5358)
!5591 = !DILocation(line: 987, column: 39, scope: !5358)
!5592 = !DILocation(line: 987, column: 11, scope: !5358)
!5593 = !DILocation(line: 987, column: 9, scope: !5358)
!5594 = !DILocation(line: 988, column: 29, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 988, column: 6)
!5596 = !DILocation(line: 988, column: 7, scope: !5595)
!5597 = !DILocation(line: 988, column: 6, scope: !5358)
!5598 = !DILocation(line: 989, column: 9, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5595, file: !3, line: 988, column: 38)
!5600 = !DILocation(line: 989, column: 3, scope: !5599)
!5601 = !DILocation(line: 990, column: 3, scope: !5599)
!5602 = !DILocation(line: 993, column: 22, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5358, file: !3, line: 993, column: 6)
!5604 = !DILocation(line: 993, column: 30, scope: !5603)
!5605 = !DILocation(line: 993, column: 34, scope: !5603)
!5606 = !DILocation(line: 993, column: 42, scope: !5603)
!5607 = !DILocation(line: 993, column: 7, scope: !5603)
!5608 = !DILocation(line: 993, column: 6, scope: !5358)
!5609 = !DILocation(line: 994, column: 25, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !5603, file: !3, line: 993, column: 50)
!5611 = !DILocation(line: 994, column: 3, scope: !5610)
!5612 = !DILocation(line: 995, column: 10, scope: !5610)
!5613 = !DILocation(line: 996, column: 2, scope: !5610)
!5614 = !DILocation(line: 998, column: 8, scope: !5358)
!5615 = !DILocation(line: 998, column: 2, scope: !5358)
!5616 = !DILocation(line: 999, column: 9, scope: !5358)
!5617 = !DILocation(line: 999, column: 2, scope: !5358)
!5618 = !DILocation(line: 1000, column: 1, scope: !5358)
!5619 = distinct !DISubprogram(name: "request_module", scope: !5620, file: !5620, line: 30, type: !5621, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5620 = !DIFile(filename: "./include/linux/kmod.h", directory: "/home/lizy2001/genbc/linux")
!5621 = !DISubroutineType(types: !5622)
!5622 = !{!299, !283, null}
!5623 = !DILocalVariable(name: "name", arg: 1, scope: !5619, file: !5620, line: 30, type: !283)
!5624 = !DILocation(line: 30, column: 46, scope: !5619)
!5625 = !DILocation(line: 30, column: 59, scope: !5619)
!5626 = distinct !DISubprogram(name: "i2c_client_has_driver", scope: !5363, file: !5363, line: 857, type: !5627, scopeLine: 858, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5627 = !DISubroutineType(types: !5628)
!5628 = !{!315, !5361}
!5629 = !DILocalVariable(name: "client", arg: 1, scope: !5626, file: !5363, line: 857, type: !5361)
!5630 = !DILocation(line: 857, column: 61, scope: !5626)
!5631 = !DILocation(line: 859, column: 25, scope: !5626)
!5632 = !DILocation(line: 859, column: 10, scope: !5626)
!5633 = !DILocation(line: 859, column: 33, scope: !5626)
!5634 = !DILocation(line: 859, column: 36, scope: !5626)
!5635 = !DILocation(line: 859, column: 44, scope: !5626)
!5636 = !DILocation(line: 859, column: 48, scope: !5626)
!5637 = !DILocation(line: 0, scope: !5626)
!5638 = !DILocation(line: 859, column: 2, scope: !5626)
!5639 = distinct !DISubprogram(name: "try_module_get", scope: !5640, file: !5640, line: 751, type: !5641, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5640 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!5641 = !DISubroutineType(types: !5642)
!5642 = !{!315, !159}
!5643 = !DILocalVariable(name: "module", arg: 1, scope: !5639, file: !5640, line: 751, type: !159)
!5644 = !DILocation(line: 751, column: 50, scope: !5639)
!5645 = !DILocation(line: 753, column: 2, scope: !5639)
!5646 = distinct !DISubprogram(name: "dvb_module_release", scope: !3, file: !3, line: 1003, type: !5647, scopeLine: 1004, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5647 = !DISubroutineType(types: !5648)
!5648 = !{null, !5361}
!5649 = !DILocalVariable(name: "client", arg: 1, scope: !5646, file: !3, line: 1003, type: !5361)
!5650 = !DILocation(line: 1003, column: 44, scope: !5646)
!5651 = !DILocation(line: 1005, column: 7, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5646, file: !3, line: 1005, column: 6)
!5653 = !DILocation(line: 1005, column: 6, scope: !5646)
!5654 = !DILocation(line: 1006, column: 3, scope: !5652)
!5655 = !DILocation(line: 1008, column: 13, scope: !5646)
!5656 = !DILocation(line: 1008, column: 21, scope: !5646)
!5657 = !DILocation(line: 1008, column: 25, scope: !5646)
!5658 = !DILocation(line: 1008, column: 33, scope: !5646)
!5659 = !DILocation(line: 1008, column: 2, scope: !5646)
!5660 = !DILocation(line: 1009, column: 24, scope: !5646)
!5661 = !DILocation(line: 1009, column: 2, scope: !5646)
!5662 = !DILocation(line: 1010, column: 1, scope: !5646)
!5663 = distinct !DISubprogram(name: "module_put", scope: !5640, file: !5640, line: 756, type: !5664, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5664 = !DISubroutineType(types: !5665)
!5665 = !{null, !159}
!5666 = !DILocalVariable(name: "module", arg: 1, scope: !5663, file: !5640, line: 756, type: !159)
!5667 = !DILocation(line: 756, column: 46, scope: !5663)
!5668 = !DILocation(line: 758, column: 1, scope: !5663)
!5669 = distinct !DISubprogram(name: "exit_dvbdev", scope: !3, file: !3, line: 1065, type: !1732, scopeLine: 1066, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5670 = !DILocation(line: 1067, column: 16, scope: !5669)
!5671 = !DILocation(line: 1067, column: 2, scope: !5669)
!5672 = !DILocation(line: 1068, column: 2, scope: !5669)
!5673 = !DILocation(line: 1069, column: 2, scope: !5669)
!5674 = !DILocation(line: 1070, column: 1, scope: !5669)
!5675 = !DILocalVariable(name: "retval", scope: !4041, file: !3, line: 1035, type: !299)
!5676 = !DILocation(line: 1035, column: 6, scope: !4041)
!5677 = !DILocalVariable(name: "dev", scope: !4041, file: !3, line: 1036, type: !338)
!5678 = !DILocation(line: 1036, column: 8, scope: !4041)
!5679 = !DILocation(line: 1038, column: 39, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 1038, column: 6)
!5681 = !DILocation(line: 1038, column: 16, scope: !5680)
!5682 = !DILocation(line: 1038, column: 14, scope: !5680)
!5683 = !DILocation(line: 1038, column: 68, scope: !5680)
!5684 = !DILocation(line: 1038, column: 6, scope: !4041)
!5685 = !DILocation(line: 1039, column: 3, scope: !5686)
!5686 = distinct !DILexicalBlock(scope: !5680, file: !3, line: 1038, column: 74)
!5687 = !DILocation(line: 1040, column: 10, scope: !5686)
!5688 = !DILocation(line: 1040, column: 3, scope: !5686)
!5689 = !DILocation(line: 1043, column: 2, scope: !4041)
!5690 = !DILocation(line: 1044, column: 43, scope: !5691)
!5691 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 1044, column: 6)
!5692 = !DILocation(line: 1044, column: 16, scope: !5691)
!5693 = !DILocation(line: 1044, column: 14, scope: !5691)
!5694 = !DILocation(line: 1044, column: 65, scope: !5691)
!5695 = !DILocation(line: 1044, column: 6, scope: !4041)
!5696 = !DILocation(line: 1045, column: 3, scope: !5697)
!5697 = distinct !DILexicalBlock(scope: !5691, file: !3, line: 1044, column: 71)
!5698 = !DILocation(line: 1046, column: 3, scope: !5697)
!5699 = !DILocation(line: 1049, column: 14, scope: !5700)
!5700 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 1049, column: 14)
!5701 = !DILocation(line: 1049, column: 12, scope: !4041)
!5702 = !DILocation(line: 1050, column: 13, scope: !5703)
!5703 = distinct !DILexicalBlock(scope: !4041, file: !3, line: 1050, column: 6)
!5704 = !DILocation(line: 1050, column: 6, scope: !5703)
!5705 = !DILocation(line: 1050, column: 6, scope: !4041)
!5706 = !DILocation(line: 1051, column: 20, scope: !5707)
!5707 = distinct !DILexicalBlock(scope: !5703, file: !3, line: 1050, column: 25)
!5708 = !DILocation(line: 1051, column: 12, scope: !5707)
!5709 = !DILocation(line: 1051, column: 10, scope: !5707)
!5710 = !DILocation(line: 1052, column: 3, scope: !5707)
!5711 = !DILocation(line: 1054, column: 2, scope: !4041)
!5712 = !DILocation(line: 1054, column: 13, scope: !4041)
!5713 = !DILocation(line: 1054, column: 24, scope: !4041)
!5714 = !DILocation(line: 1055, column: 2, scope: !4041)
!5715 = !DILocation(line: 1055, column: 13, scope: !4041)
!5716 = !DILocation(line: 1055, column: 21, scope: !4041)
!5717 = !DILocation(line: 1056, column: 2, scope: !4041)
!5718 = !DILabel(scope: !4041, name: "error", file: !3, line: 1058)
!5719 = !DILocation(line: 1058, column: 1, scope: !4041)
!5720 = !DILocation(line: 1059, column: 2, scope: !4041)
!5721 = !DILocation(line: 1060, column: 27, scope: !4041)
!5722 = !DILocation(line: 1060, column: 2, scope: !4041)
!5723 = !DILocation(line: 1061, column: 9, scope: !4041)
!5724 = !DILocation(line: 1061, column: 2, scope: !4041)
!5725 = !DILocation(line: 1062, column: 1, scope: !4041)
!5726 = distinct !DISubprogram(name: "__list_add", scope: !5085, file: !5085, line: 63, type: !5727, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5727 = !DISubroutineType(types: !5728)
!5728 = !{null, !151, !151, !151}
!5729 = !DILocalVariable(name: "new", arg: 1, scope: !5726, file: !5085, line: 63, type: !151)
!5730 = !DILocation(line: 63, column: 49, scope: !5726)
!5731 = !DILocalVariable(name: "prev", arg: 2, scope: !5726, file: !5085, line: 64, type: !151)
!5732 = !DILocation(line: 64, column: 28, scope: !5726)
!5733 = !DILocalVariable(name: "next", arg: 3, scope: !5726, file: !5085, line: 65, type: !151)
!5734 = !DILocation(line: 65, column: 28, scope: !5726)
!5735 = !DILocation(line: 67, column: 24, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5726, file: !5085, line: 67, column: 6)
!5737 = !DILocation(line: 67, column: 29, scope: !5736)
!5738 = !DILocation(line: 67, column: 35, scope: !5736)
!5739 = !DILocation(line: 67, column: 7, scope: !5736)
!5740 = !DILocation(line: 67, column: 6, scope: !5726)
!5741 = !DILocation(line: 68, column: 3, scope: !5736)
!5742 = !DILocation(line: 70, column: 15, scope: !5726)
!5743 = !DILocation(line: 70, column: 2, scope: !5726)
!5744 = !DILocation(line: 70, column: 8, scope: !5726)
!5745 = !DILocation(line: 70, column: 13, scope: !5726)
!5746 = !DILocation(line: 71, column: 14, scope: !5726)
!5747 = !DILocation(line: 71, column: 2, scope: !5726)
!5748 = !DILocation(line: 71, column: 7, scope: !5726)
!5749 = !DILocation(line: 71, column: 12, scope: !5726)
!5750 = !DILocation(line: 72, column: 14, scope: !5726)
!5751 = !DILocation(line: 72, column: 2, scope: !5726)
!5752 = !DILocation(line: 72, column: 7, scope: !5726)
!5753 = !DILocation(line: 72, column: 12, scope: !5726)
!5754 = !DILocation(line: 73, column: 2, scope: !5726)
!5755 = !DILocation(line: 73, column: 2, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5726, file: !5085, line: 73, column: 2)
!5757 = !DILocation(line: 73, column: 2, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5756, file: !5085, line: 73, column: 2)
!5759 = !DILocation(line: 73, column: 2, scope: !5760)
!5760 = distinct !DILexicalBlock(scope: !5756, file: !5085, line: 73, column: 2)
!5761 = !DILocation(line: 74, column: 1, scope: !5726)
!5762 = distinct !DISubprogram(name: "__list_add_valid", scope: !5085, file: !5085, line: 45, type: !5763, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5763 = !DISubroutineType(types: !5764)
!5764 = !{!315, !151, !151, !151}
!5765 = !DILocalVariable(name: "new", arg: 1, scope: !5762, file: !5085, line: 45, type: !151)
!5766 = !DILocation(line: 45, column: 55, scope: !5762)
!5767 = !DILocalVariable(name: "prev", arg: 2, scope: !5762, file: !5085, line: 46, type: !151)
!5768 = !DILocation(line: 46, column: 23, scope: !5762)
!5769 = !DILocalVariable(name: "next", arg: 3, scope: !5762, file: !5085, line: 47, type: !151)
!5770 = !DILocation(line: 47, column: 23, scope: !5762)
!5771 = !DILocation(line: 49, column: 2, scope: !5762)
!5772 = distinct !DISubprogram(name: "__list_del_entry", scope: !5085, file: !5085, line: 130, type: !5155, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5773 = !DILocalVariable(name: "entry", arg: 1, scope: !5772, file: !5085, line: 130, type: !151)
!5774 = !DILocation(line: 130, column: 55, scope: !5772)
!5775 = !DILocation(line: 132, column: 30, scope: !5776)
!5776 = distinct !DILexicalBlock(scope: !5772, file: !5085, line: 132, column: 6)
!5777 = !DILocation(line: 132, column: 7, scope: !5776)
!5778 = !DILocation(line: 132, column: 6, scope: !5772)
!5779 = !DILocation(line: 133, column: 3, scope: !5776)
!5780 = !DILocation(line: 135, column: 13, scope: !5772)
!5781 = !DILocation(line: 135, column: 20, scope: !5772)
!5782 = !DILocation(line: 135, column: 26, scope: !5772)
!5783 = !DILocation(line: 135, column: 33, scope: !5772)
!5784 = !DILocation(line: 135, column: 2, scope: !5772)
!5785 = !DILocation(line: 136, column: 1, scope: !5772)
!5786 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5085, file: !5085, line: 51, type: !5787, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5787 = !DISubroutineType(types: !5788)
!5788 = !{!315, !151}
!5789 = !DILocalVariable(name: "entry", arg: 1, scope: !5786, file: !5085, line: 51, type: !151)
!5790 = !DILocation(line: 51, column: 61, scope: !5786)
!5791 = !DILocation(line: 53, column: 2, scope: !5786)
!5792 = distinct !DISubprogram(name: "__list_del", scope: !5085, file: !5085, line: 110, type: !5086, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5793 = !DILocalVariable(name: "prev", arg: 1, scope: !5792, file: !5085, line: 110, type: !151)
!5794 = !DILocation(line: 110, column: 50, scope: !5792)
!5795 = !DILocalVariable(name: "next", arg: 2, scope: !5792, file: !5085, line: 110, type: !151)
!5796 = !DILocation(line: 110, column: 75, scope: !5792)
!5797 = !DILocation(line: 112, column: 15, scope: !5792)
!5798 = !DILocation(line: 112, column: 2, scope: !5792)
!5799 = !DILocation(line: 112, column: 8, scope: !5792)
!5800 = !DILocation(line: 112, column: 13, scope: !5792)
!5801 = !DILocation(line: 113, column: 2, scope: !5792)
!5802 = !DILocation(line: 113, column: 2, scope: !5803)
!5803 = distinct !DILexicalBlock(scope: !5792, file: !5085, line: 113, column: 2)
!5804 = !DILocation(line: 113, column: 2, scope: !5805)
!5805 = distinct !DILexicalBlock(scope: !5803, file: !5085, line: 113, column: 2)
!5806 = !DILocation(line: 113, column: 2, scope: !5807)
!5807 = distinct !DILexicalBlock(scope: !5803, file: !5085, line: 113, column: 2)
!5808 = !DILocation(line: 114, column: 1, scope: !5792)
!5809 = distinct !DISubprogram(name: "get_order", scope: !5810, file: !5810, line: 29, type: !5811, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5810 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5811 = !DISubroutineType(types: !5812)
!5812 = !{!299, !407}
!5813 = !DILocalVariable(name: "x", arg: 1, scope: !5814, file: !5815, line: 366, type: !240)
!5814 = distinct !DISubprogram(name: "fls64", scope: !5815, file: !5815, line: 366, type: !5816, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5815 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5816 = !DISubroutineType(types: !5817)
!5817 = !{!299, !240}
!5818 = !DILocation(line: 366, column: 40, scope: !5814, inlinedAt: !5819)
!5819 = distinct !DILocation(line: 46, column: 9, scope: !5809)
!5820 = !DILocalVariable(name: "bitpos", scope: !5814, file: !5815, line: 368, type: !299)
!5821 = !DILocation(line: 368, column: 6, scope: !5814, inlinedAt: !5819)
!5822 = !DILocalVariable(name: "size", arg: 1, scope: !5809, file: !5810, line: 29, type: !407)
!5823 = !DILocation(line: 29, column: 63, scope: !5809)
!5824 = !DILocation(line: 31, column: 27, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5809, file: !5810, line: 31, column: 6)
!5826 = !DILocation(line: 31, column: 6, scope: !5825)
!5827 = !DILocation(line: 31, column: 6, scope: !5809)
!5828 = !DILocation(line: 32, column: 8, scope: !5829)
!5829 = distinct !DILexicalBlock(scope: !5830, file: !5810, line: 32, column: 7)
!5830 = distinct !DILexicalBlock(scope: !5825, file: !5810, line: 31, column: 34)
!5831 = !DILocation(line: 32, column: 7, scope: !5830)
!5832 = !DILocation(line: 33, column: 4, scope: !5829)
!5833 = !DILocation(line: 35, column: 7, scope: !5834)
!5834 = distinct !DILexicalBlock(scope: !5830, file: !5810, line: 35, column: 7)
!5835 = !DILocation(line: 35, column: 12, scope: !5834)
!5836 = !DILocation(line: 35, column: 7, scope: !5830)
!5837 = !DILocation(line: 36, column: 4, scope: !5834)
!5838 = !DILocation(line: 38, column: 10, scope: !5830)
!5839 = !DILocation(line: 38, column: 28, scope: !5830)
!5840 = !DILocation(line: 38, column: 41, scope: !5830)
!5841 = !DILocation(line: 38, column: 3, scope: !5830)
!5842 = !DILocation(line: 41, column: 6, scope: !5809)
!5843 = !DILocation(line: 42, column: 7, scope: !5809)
!5844 = !DILocation(line: 46, column: 15, scope: !5809)
!5845 = !DILocation(line: 374, column: 2, scope: !5814, inlinedAt: !5819)
!5846 = !DILocation(line: 376, column: 14, scope: !5814, inlinedAt: !5819)
!5847 = !{i32 666098}
!5848 = !DILocation(line: 377, column: 9, scope: !5814, inlinedAt: !5819)
!5849 = !DILocation(line: 377, column: 16, scope: !5814, inlinedAt: !5819)
!5850 = !DILocation(line: 46, column: 2, scope: !5809)
!5851 = !DILocation(line: 48, column: 1, scope: !5809)
!5852 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5853, file: !5853, line: 30, type: !5854, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5853 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5854 = !DISubroutineType(types: !5855)
!5855 = !{!299, !239}
!5856 = !DILocation(line: 366, column: 40, scope: !5814, inlinedAt: !5857)
!5857 = distinct !DILocation(line: 32, column: 9, scope: !5852)
!5858 = !DILocation(line: 368, column: 6, scope: !5814, inlinedAt: !5857)
!5859 = !DILocalVariable(name: "n", arg: 1, scope: !5852, file: !5853, line: 30, type: !239)
!5860 = !DILocation(line: 30, column: 21, scope: !5852)
!5861 = !DILocation(line: 32, column: 15, scope: !5852)
!5862 = !DILocation(line: 374, column: 2, scope: !5814, inlinedAt: !5857)
!5863 = !DILocation(line: 376, column: 14, scope: !5814, inlinedAt: !5857)
!5864 = !DILocation(line: 377, column: 9, scope: !5814, inlinedAt: !5857)
!5865 = !DILocation(line: 377, column: 16, scope: !5814, inlinedAt: !5857)
!5866 = !DILocation(line: 32, column: 18, scope: !5852)
!5867 = !DILocation(line: 32, column: 2, scope: !5852)
!5868 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5869, file: !5869, line: 137, type: !5870, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5869 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5870 = !DISubroutineType(types: !5871)
!5871 = !{!143, !782, !1983, !404, !141}
!5872 = !DILocalVariable(name: "s", arg: 1, scope: !5868, file: !5869, line: 137, type: !782)
!5873 = !DILocation(line: 137, column: 54, scope: !5868)
!5874 = !DILocalVariable(name: "object", arg: 2, scope: !5868, file: !5869, line: 137, type: !1983)
!5875 = !DILocation(line: 137, column: 69, scope: !5868)
!5876 = !DILocalVariable(name: "size", arg: 3, scope: !5868, file: !5869, line: 138, type: !404)
!5877 = !DILocation(line: 138, column: 12, scope: !5868)
!5878 = !DILocalVariable(name: "flags", arg: 4, scope: !5868, file: !5869, line: 138, type: !141)
!5879 = !DILocation(line: 138, column: 24, scope: !5868)
!5880 = !DILocation(line: 140, column: 17, scope: !5868)
!5881 = !DILocation(line: 140, column: 2, scope: !5868)
!5882 = distinct !DISubprogram(name: "copy_overflow", scope: !4170, file: !4170, line: 132, type: !5883, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5883 = !DISubroutineType(types: !5884)
!5884 = !{null, !299, !407}
!5885 = !DILocalVariable(name: "size", arg: 1, scope: !5882, file: !4170, line: 132, type: !299)
!5886 = !DILocation(line: 132, column: 38, scope: !5882)
!5887 = !DILocalVariable(name: "count", arg: 2, scope: !5882, file: !4170, line: 132, type: !407)
!5888 = !DILocation(line: 132, column: 58, scope: !5882)
!5889 = !DILocalVariable(name: "__ret_warn_on", scope: !5890, file: !4170, line: 134, type: !299)
!5890 = distinct !DILexicalBlock(scope: !5882, file: !4170, line: 134, column: 2)
!5891 = !DILocation(line: 134, column: 2, scope: !5890)
!5892 = !DILocation(line: 134, column: 2, scope: !5893)
!5893 = distinct !DILexicalBlock(scope: !5890, file: !4170, line: 134, column: 2)
!5894 = !DILocation(line: 134, column: 2, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5893, file: !4170, line: 134, column: 2)
!5896 = !DILocation(line: 134, column: 2, scope: !5897)
!5897 = distinct !DILexicalBlock(scope: !5895, file: !4170, line: 134, column: 2)
!5898 = !DILocation(line: 134, column: 2, scope: !5899)
!5899 = distinct !DILexicalBlock(scope: !5895, file: !4170, line: 134, column: 2)
!5900 = !DILocation(line: 134, column: 2, scope: !5901)
!5901 = distinct !DILexicalBlock(scope: !5899, file: !4170, line: 134, column: 2)
!5902 = !DILocation(line: 134, column: 2, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5899, file: !4170, line: 134, column: 2)
!5904 = !{i32 -2145534005, i32 -2145533976, i32 -2145533930, i32 -2145533872, i32 -2145533818, i32 -2145533764, i32 -2145533709, i32 -2145533678}
!5905 = !DILocation(line: 134, column: 2, scope: !5906)
!5906 = distinct !DILexicalBlock(scope: !5899, file: !4170, line: 134, column: 2)
!5907 = !{i32 -2145533258, i32 -2145533251, i32 -2145533199, i32 -2145533168, i32 -2145533138}
!5908 = !DILocation(line: 134, column: 2, scope: !5909)
!5909 = distinct !DILexicalBlock(scope: !5899, file: !4170, line: 134, column: 2)
!5910 = !DILocation(line: 134, column: 2, scope: !5911)
!5911 = distinct !DILexicalBlock(scope: !5895, file: !4170, line: 134, column: 2)
!5912 = !DILocation(line: 135, column: 1, scope: !5882)
!5913 = distinct !DISubprogram(name: "check_object_size", scope: !4170, file: !4170, line: 122, type: !5914, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5914 = !DISubroutineType(types: !5915)
!5915 = !{null, !1983, !407, !315}
!5916 = !DILocalVariable(name: "ptr", arg: 1, scope: !5913, file: !4170, line: 122, type: !1983)
!5917 = !DILocation(line: 122, column: 50, scope: !5913)
!5918 = !DILocalVariable(name: "n", arg: 2, scope: !5913, file: !4170, line: 122, type: !407)
!5919 = !DILocation(line: 122, column: 69, scope: !5913)
!5920 = !DILocalVariable(name: "to_user", arg: 3, scope: !5913, file: !4170, line: 123, type: !315)
!5921 = !DILocation(line: 123, column: 15, scope: !5913)
!5922 = !DILocation(line: 124, column: 3, scope: !5913)
!5923 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !5117, file: !5117, line: 39, type: !5118, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5924 = !DILocalVariable(name: "ptr", arg: 1, scope: !5923, file: !5117, line: 39, type: !1983)
!5925 = !DILocation(line: 39, column: 68, scope: !5923)
!5926 = !DILocation(line: 41, column: 9, scope: !5923)
!5927 = !DILocation(line: 41, column: 24, scope: !5923)
!5928 = !DILocation(line: 41, column: 27, scope: !5923)
!5929 = !DILocation(line: 41, column: 2, scope: !5923)
!5930 = distinct !DISubprogram(name: "dvb_uevent", scope: !3, file: !3, line: 1014, type: !3366, scopeLine: 1015, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5931 = !DILocalVariable(name: "dev", arg: 1, scope: !5930, file: !3, line: 1014, type: !3348)
!5932 = !DILocation(line: 1014, column: 38, scope: !5930)
!5933 = !DILocalVariable(name: "env", arg: 2, scope: !5930, file: !3, line: 1014, type: !2775)
!5934 = !DILocation(line: 1014, column: 67, scope: !5930)
!5935 = !DILocalVariable(name: "dvbdev", scope: !5930, file: !3, line: 1016, type: !144)
!5936 = !DILocation(line: 1016, column: 21, scope: !5930)
!5937 = !DILocation(line: 1016, column: 46, scope: !5930)
!5938 = !DILocation(line: 1016, column: 30, scope: !5930)
!5939 = !DILocation(line: 1018, column: 17, scope: !5930)
!5940 = !DILocation(line: 1018, column: 44, scope: !5930)
!5941 = !DILocation(line: 1018, column: 52, scope: !5930)
!5942 = !DILocation(line: 1018, column: 61, scope: !5930)
!5943 = !DILocation(line: 1018, column: 2, scope: !5930)
!5944 = !DILocation(line: 1019, column: 17, scope: !5930)
!5945 = !DILocation(line: 1019, column: 51, scope: !5930)
!5946 = !DILocation(line: 1019, column: 59, scope: !5930)
!5947 = !DILocation(line: 1019, column: 44, scope: !5930)
!5948 = !DILocation(line: 1019, column: 2, scope: !5930)
!5949 = !DILocation(line: 1020, column: 17, scope: !5930)
!5950 = !DILocation(line: 1020, column: 43, scope: !5930)
!5951 = !DILocation(line: 1020, column: 51, scope: !5930)
!5952 = !DILocation(line: 1020, column: 2, scope: !5930)
!5953 = !DILocation(line: 1021, column: 2, scope: !5930)
!5954 = distinct !DISubprogram(name: "dvb_devnode", scope: !3, file: !3, line: 1024, type: !3867, scopeLine: 1025, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5955 = !DILocalVariable(name: "dev", arg: 1, scope: !5954, file: !3, line: 1024, type: !3348)
!5956 = !DILocation(line: 1024, column: 41, scope: !5954)
!5957 = !DILocalVariable(name: "mode", arg: 2, scope: !5954, file: !3, line: 1024, type: !3372)
!5958 = !DILocation(line: 1024, column: 55, scope: !5954)
!5959 = !DILocalVariable(name: "dvbdev", scope: !5954, file: !3, line: 1026, type: !144)
!5960 = !DILocation(line: 1026, column: 21, scope: !5954)
!5961 = !DILocation(line: 1026, column: 46, scope: !5954)
!5962 = !DILocation(line: 1026, column: 30, scope: !5954)
!5963 = !DILocation(line: 1029, column: 3, scope: !5954)
!5964 = !DILocation(line: 1029, column: 11, scope: !5954)
!5965 = !DILocation(line: 1029, column: 20, scope: !5954)
!5966 = !DILocation(line: 1029, column: 32, scope: !5954)
!5967 = !DILocation(line: 1029, column: 40, scope: !5954)
!5968 = !DILocation(line: 1029, column: 25, scope: !5954)
!5969 = !DILocation(line: 1029, column: 47, scope: !5954)
!5970 = !DILocation(line: 1029, column: 55, scope: !5954)
!5971 = !DILocation(line: 1028, column: 9, scope: !5954)
!5972 = !DILocation(line: 1028, column: 2, scope: !5954)
!5973 = distinct !DISubprogram(name: "dvb_device_open", scope: !3, file: !3, line: 95, type: !3179, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!5974 = !DILocalVariable(name: "inode", arg: 1, scope: !5973, file: !3, line: 95, type: !247)
!5975 = !DILocation(line: 95, column: 42, scope: !5973)
!5976 = !DILocalVariable(name: "file", arg: 2, scope: !5973, file: !3, line: 95, type: !170)
!5977 = !DILocation(line: 95, column: 62, scope: !5973)
!5978 = !DILocalVariable(name: "dvbdev", scope: !5973, file: !3, line: 97, type: !144)
!5979 = !DILocation(line: 97, column: 21, scope: !5973)
!5980 = !DILocation(line: 99, column: 2, scope: !5973)
!5981 = !DILocation(line: 100, column: 2, scope: !5973)
!5982 = !DILocation(line: 101, column: 29, scope: !5973)
!5983 = !DILocation(line: 101, column: 22, scope: !5973)
!5984 = !DILocation(line: 101, column: 11, scope: !5973)
!5985 = !DILocation(line: 101, column: 9, scope: !5973)
!5986 = !DILocation(line: 103, column: 6, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5973, file: !3, line: 103, column: 6)
!5988 = !DILocation(line: 103, column: 13, scope: !5987)
!5989 = !DILocation(line: 103, column: 16, scope: !5987)
!5990 = !DILocation(line: 103, column: 24, scope: !5987)
!5991 = !DILocation(line: 103, column: 6, scope: !5973)
!5992 = !DILocalVariable(name: "err", scope: !5993, file: !3, line: 104, type: !299)
!5993 = distinct !DILexicalBlock(scope: !5987, file: !3, line: 103, column: 30)
!5994 = !DILocation(line: 104, column: 7, scope: !5993)
!5995 = !DILocalVariable(name: "new_fops", scope: !5993, file: !3, line: 105, type: !154)
!5996 = !DILocation(line: 105, column: 33, scope: !5993)
!5997 = !DILocation(line: 107, column: 14, scope: !5993)
!5998 = !DILocation(line: 107, column: 12, scope: !5993)
!5999 = !DILocation(line: 108, column: 8, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 108, column: 7)
!6001 = !DILocation(line: 108, column: 7, scope: !5993)
!6002 = !DILocation(line: 109, column: 4, scope: !6000)
!6003 = !DILocation(line: 110, column: 24, scope: !5993)
!6004 = !DILocation(line: 110, column: 3, scope: !5993)
!6005 = !DILocation(line: 110, column: 9, scope: !5993)
!6006 = !DILocation(line: 110, column: 22, scope: !5993)
!6007 = !DILocation(line: 111, column: 3, scope: !5993)
!6008 = !DILocalVariable(name: "__file", scope: !6009, file: !3, line: 111, type: !170)
!6009 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 111, column: 3)
!6010 = !DILocation(line: 111, column: 3, scope: !6009)
!6011 = !DILocation(line: 111, column: 3, scope: !6012)
!6012 = distinct !DILexicalBlock(scope: !6013, file: !3, line: 111, column: 3)
!6013 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 111, column: 3)
!6014 = !DILocation(line: 111, column: 3, scope: !6013)
!6015 = !DILocation(line: 111, column: 3, scope: !6016)
!6016 = distinct !DILexicalBlock(scope: !6017, file: !3, line: 111, column: 3)
!6017 = distinct !DILexicalBlock(scope: !6009, file: !3, line: 111, column: 3)
!6018 = !DILocation(line: 111, column: 3, scope: !6017)
!6019 = !DILocation(line: 111, column: 3, scope: !6020)
!6020 = distinct !DILexicalBlock(scope: !6016, file: !3, line: 111, column: 3)
!6021 = !DILocation(line: 111, column: 3, scope: !6022)
!6022 = distinct !DILexicalBlock(scope: !6020, file: !3, line: 111, column: 3)
!6023 = !DILocation(line: 111, column: 3, scope: !6024)
!6024 = distinct !DILexicalBlock(scope: !6020, file: !3, line: 111, column: 3)
!6025 = !{i32 -2140916470, i32 -2140916441, i32 -2140916395, i32 -2140916337, i32 -2140916283, i32 -2140916229, i32 -2140916174, i32 -2140916143}
!6026 = !DILocation(line: 111, column: 3, scope: !6027)
!6027 = distinct !DILexicalBlock(scope: !6028, file: !3, line: 111, column: 3)
!6028 = distinct !DILexicalBlock(scope: !6020, file: !3, line: 111, column: 3)
!6029 = !{i32 -2140915689, i32 -2140915682, i32 -2140915628, i32 -2140915597, i32 -2140915567}
!6030 = !DILocation(line: 111, column: 3, scope: !6028)
!6031 = !DILocation(line: 112, column: 7, scope: !6032)
!6032 = distinct !DILexicalBlock(scope: !5993, file: !3, line: 112, column: 7)
!6033 = !DILocation(line: 112, column: 13, scope: !6032)
!6034 = !DILocation(line: 112, column: 19, scope: !6032)
!6035 = !DILocation(line: 112, column: 7, scope: !5993)
!6036 = !DILocation(line: 113, column: 10, scope: !6032)
!6037 = !DILocation(line: 113, column: 16, scope: !6032)
!6038 = !DILocation(line: 113, column: 22, scope: !6032)
!6039 = !DILocation(line: 113, column: 27, scope: !6032)
!6040 = !DILocation(line: 113, column: 34, scope: !6032)
!6041 = !DILocation(line: 113, column: 8, scope: !6032)
!6042 = !DILocation(line: 113, column: 4, scope: !6032)
!6043 = !DILocation(line: 114, column: 3, scope: !5993)
!6044 = !DILocation(line: 115, column: 3, scope: !5993)
!6045 = !DILocation(line: 116, column: 10, scope: !5993)
!6046 = !DILocation(line: 116, column: 3, scope: !5993)
!6047 = !DILabel(scope: !5973, name: "fail", file: !3, line: 118)
!6048 = !DILocation(line: 118, column: 1, scope: !5973)
!6049 = !DILocation(line: 119, column: 2, scope: !5973)
!6050 = !DILocation(line: 120, column: 2, scope: !5973)
!6051 = !DILocation(line: 121, column: 2, scope: !5973)
!6052 = !DILocation(line: 122, column: 1, scope: !5973)
!6053 = distinct !DISubprogram(name: "iminor", scope: !24, file: !24, line: 875, type: !6054, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!6054 = !DISubroutineType(types: !6055)
!6055 = !{!7, !2626}
!6056 = !DILocalVariable(name: "inode", arg: 1, scope: !6053, file: !24, line: 875, type: !2626)
!6057 = !DILocation(line: 875, column: 51, scope: !6053)
!6058 = !DILocation(line: 877, column: 9, scope: !6053)
!6059 = !DILocation(line: 877, column: 2, scope: !6053)
!6060 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !73, file: !73, line: 655, type: !6061, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !477)
!6061 = !DISubroutineType(types: !6062)
!6062 = !{!143, !3682}
!6063 = !DILocalVariable(name: "dev", arg: 1, scope: !6060, file: !73, line: 655, type: !3682)
!6064 = !DILocation(line: 655, column: 58, scope: !6060)
!6065 = !DILocation(line: 657, column: 9, scope: !6060)
!6066 = !DILocation(line: 657, column: 14, scope: !6060)
!6067 = !DILocation(line: 657, column: 2, scope: !6060)
