; ModuleID = '../bcout/drivers/xen/gntalloc.llvm.bc'
source_filename = "drivers/xen/gntalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_gntalloc_init6:\09\09\09"
module asm ".long\09gntalloc_init - .\09\09\09"
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
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.61, %struct.list_head, %struct.list_head, %union.anon.62 }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
%struct.qstr = type { %union.anon.1, i8* }
%union.anon.1 = type { i64 }
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
%struct.page = type { i64, %union.anon.2, %union.anon.53, %struct.atomic_t, [8 x i8] }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.53 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.54, i32 }
%union.anon.54 = type { %struct.kuid_t }
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
%union.anon.61 = type { %struct.list_head }
%union.anon.62 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.55, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.56, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.57, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.58, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.55 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.56 = type { %struct.callback_head }
%union.anon.57 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type opaque
%struct.swap_info_struct = type opaque
%union.anon.58 = type { %struct.pipe_inode_info* }
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
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.63 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.63 = type { %struct.nfs_lock_info }
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
%struct.irq_data = type { i32, i32, i64, %struct.irq_common_data*, %struct.irq_chip*, %struct.irq_domain*, %struct.irq_data*, i8* }
%struct.irq_common_data = type { i32, i8*, %struct.msi_desc*, [1 x %struct.cpumask] }
%struct.msi_desc = type { %struct.list_head, i32, i32, %struct.device*, %struct.msi_msg, %struct.irq_affinity_desc*, void (%struct.msi_desc*, i8*)*, i8*, %union.anon.66 }
%struct.msi_msg = type { i32, i32, i32 }
%struct.irq_affinity_desc = type { %struct.cpumask, i8 }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { i32, %struct.anon.68, %union.anon.69 }
%struct.anon.68 = type { i16, i16, i32 }
%union.anon.69 = type { i8* }
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
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kmem_cache = type opaque
%struct.gntalloc_file_private_data = type { %struct.list_head, i64 }
%struct.ioctl_gntalloc_alloc_gref = type { i16, i16, i32, i64, [1 x i32] }
%struct.gntalloc_vma_private_data = type { %struct.gntalloc_gref*, i32, i32 }
%struct.gntalloc_gref = type { %struct.list_head, %struct.list_head, %struct.page*, i64, i32, i32, %struct.notify_info }
%struct.notify_info = type { i16, i32 }
%struct.ioctl_gntalloc_dealloc_gref = type { i64, i32 }
%struct.ioctl_gntalloc_unmap_notify = type { i64, i32, i32 }
%struct.evtchn_send = type { i32 }
%struct.nodemask_t = type { [1 x i64] }

@__param_str_limit = internal constant [19 x i8] c"xen_gntalloc.limit\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@limit = internal global i32 1024, align 4, !dbg !3131
@__param_limit = internal constant %struct.kernel_param { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__param_str_limit, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @limit to i8*) } }, section "__param", align 8, !dbg !3044
@__UNIQUE_ID_limittype244 = internal constant [32 x i8] c"xen_gntalloc.parmtype=limit:int\00", section ".modinfo", align 1, !dbg !3096
@__UNIQUE_ID_limit245 = internal constant [94 x i8] c"xen_gntalloc.parm=limit:Maximum number of grants that may be allocated by the gntalloc device\00", section ".modinfo", align 1, !dbg !3099
@gntalloc_miscdev = internal global %struct.miscdevice { i32 255, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct.file_operations* @gntalloc_fops, %struct.list_head zeroinitializer, %struct.device* null, %struct.device* null, %struct.attribute_group** null, i8* null, i16 0 }, align 8, !dbg !3133
@__UNIQUE_ID___addressable_gntalloc_init258 = internal global i8* bitcast (i32 ()* @gntalloc_init to i8*), section ".discard.addressable", align 8, !dbg !3104
@__exitcall_gntalloc_exit = internal global void ()* @gntalloc_exit, section ".exitcall.exit", align 8, !dbg !3106
@__UNIQUE_ID_file259 = internal constant [43 x i8] c"xen_gntalloc.file=drivers/xen/xen-gntalloc\00", section ".modinfo", align 1, !dbg !3111
@__UNIQUE_ID_license260 = internal constant [25 x i8] c"xen_gntalloc.license=GPL\00", section ".modinfo", align 1, !dbg !3116
@__UNIQUE_ID_author261 = internal constant [108 x i8] c"xen_gntalloc.author=Carter Weatherly <carter.weatherly@jhuapl.edu>, Daniel De Graaf <dgdegra@tycho.nsa.gov>\00", section ".modinfo", align 1, !dbg !3121
@__UNIQUE_ID_description262 = internal constant [69 x i8] c"xen_gntalloc.description=User-space grant reference allocator driver\00", section ".modinfo", align 1, !dbg !3126
@.str = private unnamed_addr constant [13 x i8] c"xen/gntalloc\00", align 1
@gntalloc_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* @gntalloc_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* @gntalloc_mmap, i64 0, i32 (%struct.inode*, %struct.file*)* @gntalloc_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @gntalloc_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !4274
@gref_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @gref_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @gref_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !4276
@gref_size = internal global i32 0, align 4, !dbg !4280
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@gref_list = internal global %struct.list_head { %struct.list_head* @gref_list, %struct.list_head* @gref_list }, align 8, !dbg !4278
@vmemmap_base = external dso_local global i64, align 8
@page_offset_base = external dso_local global i64, align 8
@xen_features = external dso_local global [32 x i8], align 16
@xen_p2m_size = external dso_local global i64, align 8
@xen_p2m_addr = external dso_local global i64*, align 8
@xen_max_p2m_pfn = external dso_local global i64, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"\013xen:xen_gntalloc: %s: Mapping must be shared\0A\00", align 1
@__func__.gntalloc_mmap = private unnamed_addr constant [14 x i8] c"gntalloc_mmap\00", align 1
@gntalloc_vmops = internal constant %struct.vm_operations_struct { void (%struct.vm_area_struct*)* @gntalloc_vma_open, void (%struct.vm_area_struct*)* @gntalloc_vma_close, i32 (%struct.vm_area_struct*, i64)* null, i32 (%struct.vm_area_struct*)* null, i32 (%struct.vm_fault*)* null, i32 (%struct.vm_fault*, i32)* null, void (%struct.vm_fault*, i64, i64)* null, i64 (%struct.vm_area_struct*)* null, i32 (%struct.vm_fault*)* null, i32 (%struct.vm_fault*)* null, i32 (%struct.vm_area_struct*, i64, i8*, i32, i32)* null, i8* (%struct.vm_area_struct*)* null, %struct.page* (%struct.vm_area_struct*, i64)* null }, align 8, !dbg !4282
@xen_domain_type = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"\013xen:xen_gntalloc: Could not register misc gntalloc device\0A\00", align 1
@llvm.used = appending global [10 x i8*] [i8* bitcast (%struct.kernel_param* @__param_limit to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_limittype244, i32 0, i32 0), i8* getelementptr inbounds ([94 x i8], [94 x i8]* @__UNIQUE_ID_limit245, i32 0, i32 0), i8* bitcast (void ()* @gntalloc_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_gntalloc_init258 to i8*), i8* bitcast (void ()** @__exitcall_gntalloc_exit to i8*), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__UNIQUE_ID_file259, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__UNIQUE_ID_license260, i32 0, i32 0), i8* getelementptr inbounds ([108 x i8], [108 x i8]* @__UNIQUE_ID_author261, i32 0, i32 0), i8* getelementptr inbounds ([69 x i8], [69 x i8]* @__UNIQUE_ID_description262, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @gntalloc_exit() #0 section ".exit.text" !dbg !4293 {
entry:
  call void @misc_deregister(%struct.miscdevice* @gntalloc_miscdev) #10, !dbg !4294
  ret void, !dbg !4295
}

; Function Attrs: noredzone
declare dso_local void @misc_deregister(%struct.miscdevice*) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @gntalloc_init() #0 section ".init.text" !dbg !4296 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %err, metadata !4299, metadata !DIExpression()), !dbg !4300
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !4301
  %cmp = icmp ne i32 %0, 0, !dbg !4301
  br i1 %cmp, label %if.end, label %if.then, !dbg !4303

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4304
  br label %return, !dbg !4304

if.end:                                           ; preds = %entry
  %call = call i32 @misc_register(%struct.miscdevice* @gntalloc_miscdev) #10, !dbg !4305
  store i32 %call, i32* %err, align 4, !dbg !4306
  %1 = load i32, i32* %err, align 4, !dbg !4307
  %cmp1 = icmp ne i32 %1, 0, !dbg !4309
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !4310

if.then2:                                         ; preds = %if.end
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !4311
  %2 = load i32, i32* %err, align 4, !dbg !4313
  store i32 %2, i32* %retval, align 4, !dbg !4314
  br label %return, !dbg !4314

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %tmp, align 4, !dbg !4315
  %3 = load i32, i32* %tmp, align 4, !dbg !4318
  store i32 0, i32* %retval, align 4, !dbg !4319
  br label %return, !dbg !4319

return:                                           ; preds = %if.end4, %if.then2, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !4320
  ret i32 %4, !dbg !4320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @gntalloc_ioctl(%struct.file* %filp, i32 %cmd, i64 %arg) #2 !dbg !4321 {
entry:
  %retval = alloca i64, align 8
  %filp.addr = alloca %struct.file*, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %priv = alloca %struct.gntalloc_file_private_data*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !4322, metadata !DIExpression()), !dbg !4323
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !4324, metadata !DIExpression()), !dbg !4325
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !4326, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.declare(metadata %struct.gntalloc_file_private_data** %priv, metadata !4328, metadata !DIExpression()), !dbg !4334
  %0 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !4335
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !4336
  %1 = load i8*, i8** %private_data, align 8, !dbg !4336
  %2 = bitcast i8* %1 to %struct.gntalloc_file_private_data*, !dbg !4335
  store %struct.gntalloc_file_private_data* %2, %struct.gntalloc_file_private_data** %priv, align 8, !dbg !4334
  %3 = load i32, i32* %cmd.addr, align 4, !dbg !4337
  switch i32 %3, label %sw.default [
    i32 1591045, label %sw.bb
    i32 1066758, label %sw.bb1
    i32 1066759, label %sw.bb3
  ], !dbg !4338

sw.bb:                                            ; preds = %entry
  %4 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv, align 8, !dbg !4339
  %5 = load i64, i64* %arg.addr, align 8, !dbg !4341
  %6 = inttoptr i64 %5 to i8*, !dbg !4342
  %7 = bitcast i8* %6 to %struct.ioctl_gntalloc_alloc_gref*, !dbg !4342
  %call = call i64 @gntalloc_ioctl_alloc(%struct.gntalloc_file_private_data* %4, %struct.ioctl_gntalloc_alloc_gref* %7) #10, !dbg !4343
  store i64 %call, i64* %retval, align 8, !dbg !4344
  br label %return, !dbg !4344

sw.bb1:                                           ; preds = %entry
  %8 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv, align 8, !dbg !4345
  %9 = load i64, i64* %arg.addr, align 8, !dbg !4346
  %10 = inttoptr i64 %9 to i8*, !dbg !4347
  %call2 = call i64 @gntalloc_ioctl_dealloc(%struct.gntalloc_file_private_data* %8, i8* %10) #10, !dbg !4348
  store i64 %call2, i64* %retval, align 8, !dbg !4349
  br label %return, !dbg !4349

sw.bb3:                                           ; preds = %entry
  %11 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv, align 8, !dbg !4350
  %12 = load i64, i64* %arg.addr, align 8, !dbg !4351
  %13 = inttoptr i64 %12 to i8*, !dbg !4352
  %call4 = call i64 @gntalloc_ioctl_unmap_notify(%struct.gntalloc_file_private_data* %11, i8* %13) #10, !dbg !4353
  store i64 %call4, i64* %retval, align 8, !dbg !4354
  br label %return, !dbg !4354

sw.default:                                       ; preds = %entry
  store i64 -515, i64* %retval, align 8, !dbg !4355
  br label %return, !dbg !4355

return:                                           ; preds = %sw.default, %sw.bb3, %sw.bb1, %sw.bb
  %14 = load i64, i64* %retval, align 8, !dbg !4356
  ret i64 %14, !dbg !4356
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gntalloc_mmap(%struct.file* %filp, %struct.vm_area_struct* %vma) #2 !dbg !4357 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4358, metadata !DIExpression()), !dbg !4362
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4370, metadata !DIExpression()), !dbg !4371
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4372, metadata !DIExpression()), !dbg !4373
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4374, metadata !DIExpression()), !dbg !4375
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4376, metadata !DIExpression()), !dbg !4380
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4382, metadata !DIExpression()), !dbg !4386
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4388, metadata !DIExpression()), !dbg !4392
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4397, metadata !DIExpression()), !dbg !4398
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4399, metadata !DIExpression()), !dbg !4400
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4401, metadata !DIExpression()), !dbg !4402
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4403, metadata !DIExpression()), !dbg !4404
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4405, metadata !DIExpression()), !dbg !4406
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4407, metadata !DIExpression()), !dbg !4408
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4409, metadata !DIExpression()), !dbg !4410
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4411, metadata !DIExpression()), !dbg !4412
  %retval = alloca i32, align 4
  %filp.addr = alloca %struct.file*, align 8
  %vma.addr = alloca %struct.vm_area_struct*, align 8
  %priv = alloca %struct.gntalloc_file_private_data*, align 8
  %vm_priv = alloca %struct.gntalloc_vma_private_data*, align 8
  %gref = alloca %struct.gntalloc_gref*, align 8
  %count = alloca i32, align 4
  %rv = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp22 = alloca %struct.gntalloc_gref*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !4413, metadata !DIExpression()), !dbg !4414
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vm_area_struct** %vma.addr, metadata !4415, metadata !DIExpression()), !dbg !4416
  call void @llvm.dbg.declare(metadata %struct.gntalloc_file_private_data** %priv, metadata !4417, metadata !DIExpression()), !dbg !4418
  %0 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !4419
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !4420
  %1 = load i8*, i8** %private_data, align 8, !dbg !4420
  %2 = bitcast i8* %1 to %struct.gntalloc_file_private_data*, !dbg !4419
  store %struct.gntalloc_file_private_data* %2, %struct.gntalloc_file_private_data** %priv, align 8, !dbg !4418
  call void @llvm.dbg.declare(metadata %struct.gntalloc_vma_private_data** %vm_priv, metadata !4421, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.declare(metadata %struct.gntalloc_gref** %gref, metadata !4429, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.declare(metadata i32* %count, metadata !4431, metadata !DIExpression()), !dbg !4432
  %3 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !4433
  %call = call i64 @vma_pages(%struct.vm_area_struct* %3) #10, !dbg !4434
  %conv = trunc i64 %call to i32, !dbg !4434
  store i32 %conv, i32* %count, align 4, !dbg !4432
  call void @llvm.dbg.declare(metadata i32* %rv, metadata !4435, metadata !DIExpression()), !dbg !4436
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4437, metadata !DIExpression()), !dbg !4438
  %4 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !4439
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %4, i32 0, i32 8, !dbg !4441
  %5 = load i64, i64* %vm_flags, align 8, !dbg !4441
  %and = and i64 %5, 8, !dbg !4442
  %tobool = icmp ne i64 %and, 0, !dbg !4442
  br i1 %tobool, label %if.end, label %if.then, !dbg !4443

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gntalloc_mmap, i64 0, i64 0)) #11, !dbg !4444
  store i32 -22, i32* %retval, align 4, !dbg !4446
  br label %return, !dbg !4446

if.end:                                           ; preds = %entry
  store i64 16, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4447
  %7 = call i1 @llvm.is.constant.i64(i64 %6) #8, !dbg !4448
  br i1 %7, label %if.then.i, label %if.end9.i, !dbg !4449

if.then.i:                                        ; preds = %if.end
  %8 = load i64, i64* %size.addr.i, align 8, !dbg !4450
  %cmp.i = icmp ugt i64 %8, 8192, !dbg !4451
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4452

if.then1.i:                                       ; preds = %if.then.i
  %9 = load i64, i64* %size.addr.i, align 8, !dbg !4453
  %10 = load i32, i32* %flags.addr.i, align 4, !dbg !4454
  store i64 %9, i64* %size.addr.i.i, align 8
  store i32 %10, i32* %flags.addr.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i, align 8, !dbg !4455
  %call.i.i = call i32 @get_order(i64 %11) #12, !dbg !4456
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4406
  %12 = load i64, i64* %size.addr.i.i, align 8, !dbg !4457
  %13 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4458
  %14 = load i32, i32* %order.i.i, align 4, !dbg !4459
  store i64 %12, i64* %size.addr.i.i.i, align 8
  store i32 %13, i32* %flags.addr.i.i.i, align 4
  store i32 %14, i32* %order.addr.i.i.i, align 4
  %15 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4460
  %16 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4461
  %17 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4462
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %15, i32 %16, i32 %17) #13, !dbg !4463
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4463
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4463
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4463
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !4463
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4464
  br label %kmalloc.exit, !dbg !4464

if.end.i:                                         ; preds = %if.then.i
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !4465
  store i64 %18, i64* %size.addr.i11.i, align 8
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4466
  %tobool.i.i = icmp ne i64 %19, 0, !dbg !4466
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4468

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4469
  br label %kmalloc_index.exit.i, !dbg !4469

if.end.i.i:                                       ; preds = %if.end.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4470
  %cmp.i.i = icmp ule i64 %20, 8, !dbg !4472
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4473

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4474
  br label %kmalloc_index.exit.i, !dbg !4474

if.end2.i.i:                                      ; preds = %if.end.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4475
  %cmp3.i.i = icmp ugt i64 %21, 64, !dbg !4477
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4478

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4479
  %cmp4.i.i = icmp ule i64 %22, 96, !dbg !4480
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4481

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4482
  br label %kmalloc_index.exit.i, !dbg !4482

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4483
  %cmp7.i.i = icmp ugt i64 %23, 128, !dbg !4485
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4486

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4487
  %cmp9.i.i = icmp ule i64 %24, 192, !dbg !4488
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4489

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4490
  br label %kmalloc_index.exit.i, !dbg !4490

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4491
  %cmp12.i.i = icmp ule i64 %25, 8, !dbg !4493
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4494

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4495
  br label %kmalloc_index.exit.i, !dbg !4495

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4496
  %cmp15.i.i = icmp ule i64 %26, 16, !dbg !4498
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4499

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4500
  br label %kmalloc_index.exit.i, !dbg !4500

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4501
  %cmp18.i.i = icmp ule i64 %27, 32, !dbg !4503
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4504

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4505
  br label %kmalloc_index.exit.i, !dbg !4505

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4506
  %cmp21.i.i = icmp ule i64 %28, 64, !dbg !4508
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4509

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4510
  br label %kmalloc_index.exit.i, !dbg !4510

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4511
  %cmp24.i.i = icmp ule i64 %29, 128, !dbg !4513
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4514

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4515
  br label %kmalloc_index.exit.i, !dbg !4515

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4516
  %cmp27.i.i = icmp ule i64 %30, 256, !dbg !4518
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4519

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4520
  br label %kmalloc_index.exit.i, !dbg !4520

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4521
  %cmp30.i.i = icmp ule i64 %31, 512, !dbg !4523
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4524

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4525
  br label %kmalloc_index.exit.i, !dbg !4525

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4526
  %cmp33.i.i = icmp ule i64 %32, 1024, !dbg !4528
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4529

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4530
  br label %kmalloc_index.exit.i, !dbg !4530

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4531
  %cmp36.i.i = icmp ule i64 %33, 2048, !dbg !4533
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4534

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4535
  br label %kmalloc_index.exit.i, !dbg !4535

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4536
  %cmp39.i.i = icmp ule i64 %34, 4096, !dbg !4538
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4539

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4540
  br label %kmalloc_index.exit.i, !dbg !4540

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4541
  %cmp42.i.i = icmp ule i64 %35, 8192, !dbg !4543
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4544

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4545
  br label %kmalloc_index.exit.i, !dbg !4545

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4546
  %cmp45.i.i = icmp ule i64 %36, 16384, !dbg !4548
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4549

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4550
  br label %kmalloc_index.exit.i, !dbg !4550

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4551
  %cmp48.i.i = icmp ule i64 %37, 32768, !dbg !4553
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4554

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4555
  br label %kmalloc_index.exit.i, !dbg !4555

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4556
  %cmp51.i.i = icmp ule i64 %38, 65536, !dbg !4558
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4559

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4560
  br label %kmalloc_index.exit.i, !dbg !4560

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4561
  %cmp54.i.i = icmp ule i64 %39, 131072, !dbg !4563
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4564

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4565
  br label %kmalloc_index.exit.i, !dbg !4565

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4566
  %cmp57.i.i = icmp ule i64 %40, 262144, !dbg !4568
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4569

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4570
  br label %kmalloc_index.exit.i, !dbg !4570

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4571
  %cmp60.i.i = icmp ule i64 %41, 524288, !dbg !4573
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4574

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4575
  br label %kmalloc_index.exit.i, !dbg !4575

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4576
  %cmp63.i.i = icmp ule i64 %42, 1048576, !dbg !4578
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4579

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4580
  br label %kmalloc_index.exit.i, !dbg !4580

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4581
  %cmp66.i.i = icmp ule i64 %43, 2097152, !dbg !4583
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4584

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4585
  br label %kmalloc_index.exit.i, !dbg !4585

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4586
  %cmp69.i.i = icmp ule i64 %44, 4194304, !dbg !4588
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4589

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4590
  br label %kmalloc_index.exit.i, !dbg !4590

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4591
  %cmp72.i.i = icmp ule i64 %45, 8388608, !dbg !4593
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4594

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4595
  br label %kmalloc_index.exit.i, !dbg !4595

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4596
  %cmp75.i.i = icmp ule i64 %46, 16777216, !dbg !4598
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4599

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4600
  br label %kmalloc_index.exit.i, !dbg !4600

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4601
  %cmp78.i.i = icmp ule i64 %47, 33554432, !dbg !4603
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4604

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4605
  br label %kmalloc_index.exit.i, !dbg !4605

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4606
  %cmp81.i.i = icmp ule i64 %48, 67108864, !dbg !4608
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4609

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4610
  br label %kmalloc_index.exit.i, !dbg !4610

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !4611, !srcloc !4614
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #8, !dbg !4615, !srcloc !4618
  unreachable, !dbg !4619

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %49 = load i32, i32* %retval.i.i, align 4, !dbg !4620
  store i32 %49, i32* %index.i, align 4, !dbg !4621
  %50 = load i32, i32* %index.i, align 4, !dbg !4622
  %tobool.i = icmp ne i32 %50, 0, !dbg !4622
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4624

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4625
  br label %kmalloc.exit, !dbg !4625

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %51 = load i32, i32* %flags.addr.i, align 4, !dbg !4626
  store i32 %51, i32* %flags.addr.i13.i, align 4
  %52 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4627
  %and.i.i = and i32 %52, 17, !dbg !4627
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4627
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4627
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4627
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4627
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4629

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4630
  br label %kmalloc_type.exit.i, !dbg !4630

if.end.i16.i:                                     ; preds = %if.end4.i
  %53 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4631
  %and2.i.i = and i32 %53, 1, !dbg !4632
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4631
  %54 = zext i1 %tobool3.i.i to i64, !dbg !4631
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4631
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4633
  br label %kmalloc_type.exit.i, !dbg !4633

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %55 = load i32, i32* %retval.i12.i, align 4, !dbg !4634
  %idxprom.i = zext i32 %55 to i64, !dbg !4635
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4635
  %56 = load i32, i32* %index.i, align 4, !dbg !4636
  %idxprom6.i = zext i32 %56 to i64, !dbg !4635
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4635
  %57 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4635
  %58 = load i32, i32* %flags.addr.i, align 4, !dbg !4637
  %59 = load i64, i64* %size.addr.i, align 8, !dbg !4638
  store %struct.kmem_cache* %57, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %58, i32* %flags.addr.i17.i, align 4
  store i64 %59, i64* %size.addr.i18.i, align 8
  %60 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4639
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4640
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %60, i32 %61) #13, !dbg !4641
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4641
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4641
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4641
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !4641
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4375
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4642
  %63 = load i8*, i8** %ret.i.i, align 8, !dbg !4643
  %64 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4644
  %65 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4645
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %62, i8* %63, i64 %64, i32 %65) #13, !dbg !4646
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4647
  %66 = load i8*, i8** %ret.i.i, align 8, !dbg !4648
  store i8* %66, i8** %retval.i, align 8, !dbg !4649
  br label %kmalloc.exit, !dbg !4649

if.end9.i:                                        ; preds = %if.end
  %67 = load i64, i64* %size.addr.i, align 8, !dbg !4650
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !4651
  %call10.i = call noalias i8* @__kmalloc(i64 %67, i32 %68) #13, !dbg !4652
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4652
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4652
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4652
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !4652
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4653
  br label %kmalloc.exit, !dbg !4653

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %69 = load i8*, i8** %retval.i, align 8, !dbg !4654
  %70 = bitcast i8* %69 to %struct.gntalloc_vma_private_data*, !dbg !4655
  store %struct.gntalloc_vma_private_data* %70, %struct.gntalloc_vma_private_data** %vm_priv, align 8, !dbg !4656
  %71 = load %struct.gntalloc_vma_private_data*, %struct.gntalloc_vma_private_data** %vm_priv, align 8, !dbg !4657
  %tobool3 = icmp ne %struct.gntalloc_vma_private_data* %71, null, !dbg !4657
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4659

if.then4:                                         ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !4660
  br label %return, !dbg !4660

if.end5:                                          ; preds = %kmalloc.exit
  call void @mutex_lock(%struct.mutex* @gref_mutex) #10, !dbg !4661
  store i32 0, i32* %tmp, align 4, !dbg !4662
  %72 = load i32, i32* %tmp, align 4, !dbg !4665
  %73 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv, align 8, !dbg !4666
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !4667
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 13, !dbg !4668
  %75 = load i64, i64* %vm_pgoff, align 8, !dbg !4668
  %shl = shl i64 %75, 12, !dbg !4669
  %76 = load i32, i32* %count, align 4, !dbg !4670
  %call6 = call %struct.gntalloc_gref* @find_grefs(%struct.gntalloc_file_private_data* %73, i64 %shl, i32 %76) #10, !dbg !4671
  store %struct.gntalloc_gref* %call6, %struct.gntalloc_gref** %gref, align 8, !dbg !4672
  %77 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !4673
  %cmp = icmp eq %struct.gntalloc_gref* %77, null, !dbg !4675
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !4676

if.then8:                                         ; preds = %if.end5
  store i32 -2, i32* %rv, align 4, !dbg !4677
  store i32 0, i32* %tmp9, align 4, !dbg !4679
  %78 = load i32, i32* %tmp9, align 4, !dbg !4682
  %79 = load %struct.gntalloc_vma_private_data*, %struct.gntalloc_vma_private_data** %vm_priv, align 8, !dbg !4683
  %80 = bitcast %struct.gntalloc_vma_private_data* %79 to i8*, !dbg !4683
  call void @kfree(i8* %80) #10, !dbg !4684
  br label %out_unlock, !dbg !4685

if.end10:                                         ; preds = %if.end5
  %81 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !4686
  %82 = load %struct.gntalloc_vma_private_data*, %struct.gntalloc_vma_private_data** %vm_priv, align 8, !dbg !4687
  %gref11 = getelementptr inbounds %struct.gntalloc_vma_private_data, %struct.gntalloc_vma_private_data* %82, i32 0, i32 0, !dbg !4688
  store %struct.gntalloc_gref* %81, %struct.gntalloc_gref** %gref11, align 8, !dbg !4689
  %83 = load %struct.gntalloc_vma_private_data*, %struct.gntalloc_vma_private_data** %vm_priv, align 8, !dbg !4690
  %users = getelementptr inbounds %struct.gntalloc_vma_private_data, %struct.gntalloc_vma_private_data* %83, i32 0, i32 1, !dbg !4691
  store i32 1, i32* %users, align 8, !dbg !4692
  %84 = load i32, i32* %count, align 4, !dbg !4693
  %85 = load %struct.gntalloc_vma_private_data*, %struct.gntalloc_vma_private_data** %vm_priv, align 8, !dbg !4694
  %count12 = getelementptr inbounds %struct.gntalloc_vma_private_data, %struct.gntalloc_vma_private_data* %85, i32 0, i32 2, !dbg !4695
  store i32 %84, i32* %count12, align 4, !dbg !4696
  %86 = load %struct.gntalloc_vma_private_data*, %struct.gntalloc_vma_private_data** %vm_priv, align 8, !dbg !4697
  %87 = bitcast %struct.gntalloc_vma_private_data* %86 to i8*, !dbg !4697
  %88 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !4698
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %88, i32 0, i32 15, !dbg !4699
  store i8* %87, i8** %vm_private_data, align 8, !dbg !4700
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !4701
  %vm_flags13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %89, i32 0, i32 8, !dbg !4702
  %90 = load i64, i64* %vm_flags13, align 8, !dbg !4703
  %or = or i64 %90, 67371008, !dbg !4703
  store i64 %or, i64* %vm_flags13, align 8, !dbg !4703
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !4704
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 12, !dbg !4705
  store %struct.vm_operations_struct* @gntalloc_vmops, %struct.vm_operations_struct** %vm_ops, align 8, !dbg !4706
  store i32 0, i32* %i, align 4, !dbg !4707
  br label %for.cond, !dbg !4709

for.cond:                                         ; preds = %for.inc, %if.end10
  %92 = load i32, i32* %i, align 4, !dbg !4710
  %93 = load i32, i32* %count, align 4, !dbg !4712
  %cmp14 = icmp slt i32 %92, %93, !dbg !4713
  br i1 %cmp14, label %for.body, label %for.end, !dbg !4714

for.body:                                         ; preds = %for.cond
  %94 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !4715
  %users16 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %94, i32 0, i32 4, !dbg !4717
  %95 = load i32, i32* %users16, align 8, !dbg !4718
  %inc = add i32 %95, 1, !dbg !4718
  store i32 %inc, i32* %users16, align 8, !dbg !4718
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !4719
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !4720
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %97, i32 0, i32 0, !dbg !4721
  %98 = load i64, i64* %vm_start, align 8, !dbg !4721
  %99 = load i32, i32* %i, align 4, !dbg !4722
  %conv17 = sext i32 %99 to i64, !dbg !4722
  %mul = mul i64 %conv17, 4096, !dbg !4723
  %add = add i64 %98, %mul, !dbg !4724
  %100 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !4725
  %page = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %100, i32 0, i32 2, !dbg !4726
  %101 = load %struct.page*, %struct.page** %page, align 8, !dbg !4726
  %call18 = call i32 @vm_insert_page(%struct.vm_area_struct* %96, i64 %add, %struct.page* %101) #10, !dbg !4727
  store i32 %call18, i32* %rv, align 4, !dbg !4728
  %102 = load i32, i32* %rv, align 4, !dbg !4729
  %tobool19 = icmp ne i32 %102, 0, !dbg !4729
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !4731

if.then20:                                        ; preds = %for.body
  br label %out_unlock, !dbg !4732

if.end21:                                         ; preds = %for.body
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4733, metadata !DIExpression()), !dbg !4735
  %103 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !4735
  %next_file = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %103, i32 0, i32 1, !dbg !4735
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %next_file, i32 0, i32 0, !dbg !4735
  %104 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4735
  %105 = bitcast %struct.list_head* %104 to i8*, !dbg !4735
  store i8* %105, i8** %__mptr, align 8, !dbg !4735
  br label %do.body, !dbg !4735

do.body:                                          ; preds = %if.end21
  br label %do.end, !dbg !4736

do.end:                                           ; preds = %do.body
  %106 = load i8*, i8** %__mptr, align 8, !dbg !4735
  %add.ptr = getelementptr i8, i8* %106, i64 -16, !dbg !4735
  %107 = bitcast i8* %add.ptr to %struct.gntalloc_gref*, !dbg !4735
  store %struct.gntalloc_gref* %107, %struct.gntalloc_gref** %tmp22, align 8, !dbg !4736
  %108 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %tmp22, align 8, !dbg !4735
  store %struct.gntalloc_gref* %108, %struct.gntalloc_gref** %gref, align 8, !dbg !4738
  br label %for.inc, !dbg !4739

for.inc:                                          ; preds = %do.end
  %109 = load i32, i32* %i, align 4, !dbg !4740
  %inc23 = add i32 %109, 1, !dbg !4740
  store i32 %inc23, i32* %i, align 4, !dbg !4740
  br label %for.cond, !dbg !4741, !llvm.loop !4742

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %rv, align 4, !dbg !4744
  br label %out_unlock, !dbg !4745

out_unlock:                                       ; preds = %for.end, %if.then20, %if.then8
  call void @llvm.dbg.label(metadata !4746), !dbg !4747
  call void @mutex_unlock(%struct.mutex* @gref_mutex) #10, !dbg !4748
  %110 = load i32, i32* %rv, align 4, !dbg !4749
  store i32 %110, i32* %retval, align 4, !dbg !4750
  br label %return, !dbg !4750

return:                                           ; preds = %out_unlock, %if.then4, %if.then
  %111 = load i32, i32* %retval, align 4, !dbg !4751
  ret i32 %111, !dbg !4751
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gntalloc_open(%struct.inode* %inode, %struct.file* %filp) #2 !dbg !4752 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %filp.addr = alloca %struct.file*, align 8
  %priv = alloca %struct.gntalloc_file_private_data*, align 8
  %tmp = alloca i32, align 4
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4753, metadata !DIExpression()), !dbg !4754
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !4755, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.declare(metadata %struct.gntalloc_file_private_data** %priv, metadata !4757, metadata !DIExpression()), !dbg !4758
  %call = call i8* @kzalloc(i64 24, i32 3264) #10, !dbg !4759
  %0 = bitcast i8* %call to %struct.gntalloc_file_private_data*, !dbg !4759
  store %struct.gntalloc_file_private_data* %0, %struct.gntalloc_file_private_data** %priv, align 8, !dbg !4760
  %1 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv, align 8, !dbg !4761
  %tobool = icmp ne %struct.gntalloc_file_private_data* %1, null, !dbg !4761
  br i1 %tobool, label %if.end, label %if.then, !dbg !4763

if.then:                                          ; preds = %entry
  br label %out_nomem, !dbg !4764

if.end:                                           ; preds = %entry
  %2 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv, align 8, !dbg !4765
  %list = getelementptr inbounds %struct.gntalloc_file_private_data, %struct.gntalloc_file_private_data* %2, i32 0, i32 0, !dbg !4766
  call void @INIT_LIST_HEAD(%struct.list_head* %list) #10, !dbg !4767
  %3 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv, align 8, !dbg !4768
  %4 = bitcast %struct.gntalloc_file_private_data* %3 to i8*, !dbg !4768
  %5 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !4769
  %private_data = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 15, !dbg !4770
  store i8* %4, i8** %private_data, align 8, !dbg !4771
  store i32 0, i32* %tmp, align 4, !dbg !4772
  %6 = load i32, i32* %tmp, align 4, !dbg !4775
  store i32 0, i32* %retval, align 4, !dbg !4776
  br label %return, !dbg !4776

out_nomem:                                        ; preds = %if.then
  call void @llvm.dbg.label(metadata !4777), !dbg !4778
  store i32 -12, i32* %retval, align 4, !dbg !4779
  br label %return, !dbg !4779

return:                                           ; preds = %out_nomem, %if.end
  %7 = load i32, i32* %retval, align 4, !dbg !4780
  ret i32 %7, !dbg !4780
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gntalloc_release(%struct.inode* %inode, %struct.file* %filp) #2 !dbg !4781 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %filp.addr = alloca %struct.file*, align 8
  %priv = alloca %struct.gntalloc_file_private_data*, align 8
  %gref = alloca %struct.gntalloc_gref*, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp2 = alloca %struct.gntalloc_gref*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4782, metadata !DIExpression()), !dbg !4783
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !4784, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.declare(metadata %struct.gntalloc_file_private_data** %priv, metadata !4786, metadata !DIExpression()), !dbg !4787
  %0 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !4788
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !4789
  %1 = load i8*, i8** %private_data, align 8, !dbg !4789
  %2 = bitcast i8* %1 to %struct.gntalloc_file_private_data*, !dbg !4788
  store %struct.gntalloc_file_private_data* %2, %struct.gntalloc_file_private_data** %priv, align 8, !dbg !4787
  call void @llvm.dbg.declare(metadata %struct.gntalloc_gref** %gref, metadata !4790, metadata !DIExpression()), !dbg !4791
  store i32 0, i32* %tmp, align 4, !dbg !4792
  %3 = load i32, i32* %tmp, align 4, !dbg !4795
  call void @mutex_lock(%struct.mutex* @gref_mutex) #10, !dbg !4796
  br label %while.cond, !dbg !4797

while.cond:                                       ; preds = %if.end, %entry
  %4 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv, align 8, !dbg !4798
  %list = getelementptr inbounds %struct.gntalloc_file_private_data, %struct.gntalloc_file_private_data* %4, i32 0, i32 0, !dbg !4799
  %call = call i32 @list_empty(%struct.list_head* %list) #10, !dbg !4800
  %tobool = icmp ne i32 %call, 0, !dbg !4801
  %lnot = xor i1 %tobool, true, !dbg !4801
  br i1 %lnot, label %while.body, label %while.end, !dbg !4797

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4802, metadata !DIExpression()), !dbg !4805
  %5 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv, align 8, !dbg !4805
  %list1 = getelementptr inbounds %struct.gntalloc_file_private_data, %struct.gntalloc_file_private_data* %5, i32 0, i32 0, !dbg !4805
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list1, i32 0, i32 0, !dbg !4805
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4805
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !4805
  store i8* %7, i8** %__mptr, align 8, !dbg !4805
  br label %do.body, !dbg !4805

do.body:                                          ; preds = %while.body
  br label %do.end, !dbg !4806

do.end:                                           ; preds = %do.body
  %8 = load i8*, i8** %__mptr, align 8, !dbg !4805
  %add.ptr = getelementptr i8, i8* %8, i64 -16, !dbg !4805
  %9 = bitcast i8* %add.ptr to %struct.gntalloc_gref*, !dbg !4805
  store %struct.gntalloc_gref* %9, %struct.gntalloc_gref** %tmp2, align 8, !dbg !4806
  %10 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %tmp2, align 8, !dbg !4805
  store %struct.gntalloc_gref* %10, %struct.gntalloc_gref** %gref, align 8, !dbg !4808
  %11 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !4809
  %next_file = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %11, i32 0, i32 1, !dbg !4810
  call void @list_del(%struct.list_head* %next_file) #10, !dbg !4811
  %12 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !4812
  %users = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %12, i32 0, i32 4, !dbg !4813
  %13 = load i32, i32* %users, align 8, !dbg !4814
  %dec = add i32 %13, -1, !dbg !4814
  store i32 %dec, i32* %users, align 8, !dbg !4814
  %14 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !4815
  %users3 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %14, i32 0, i32 4, !dbg !4817
  %15 = load i32, i32* %users3, align 8, !dbg !4817
  %cmp = icmp eq i32 %15, 0, !dbg !4818
  br i1 %cmp, label %if.then, label %if.end, !dbg !4819

if.then:                                          ; preds = %do.end
  %16 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !4820
  call void @__del_gref(%struct.gntalloc_gref* %16) #10, !dbg !4821
  br label %if.end, !dbg !4821

if.end:                                           ; preds = %if.then, %do.end
  br label %while.cond, !dbg !4797, !llvm.loop !4822

while.end:                                        ; preds = %while.cond
  %17 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv, align 8, !dbg !4824
  %18 = bitcast %struct.gntalloc_file_private_data* %17 to i8*, !dbg !4824
  call void @kfree(i8* %18) #10, !dbg !4825
  call void @mutex_unlock(%struct.mutex* @gref_mutex) #10, !dbg !4826
  ret i32 0, !dbg !4827
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @gntalloc_ioctl_alloc(%struct.gntalloc_file_private_data* %priv, %struct.ioctl_gntalloc_alloc_gref* %arg) #2 !dbg !4828 {
entry:
  %retval.i.i84 = alloca i1, align 1
  %addr.addr.i.i85 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i85, metadata !4841, metadata !DIExpression()), !dbg !4846
  %bytes.addr.i.i86 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i86, metadata !4855, metadata !DIExpression()), !dbg !4856
  %is_source.addr.i.i87 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i87, metadata !4857, metadata !DIExpression()), !dbg !4858
  %sz.i.i88 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i88, metadata !4859, metadata !DIExpression()), !dbg !4860
  %__ret_warn_on.i.i89 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i89, metadata !4861, metadata !DIExpression()), !dbg !4864
  %tmp.i.i90 = alloca i64, align 8
  %to.addr.i91 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i91, metadata !4865, metadata !DIExpression()), !dbg !4866
  %from.addr.i92 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i92, metadata !4867, metadata !DIExpression()), !dbg !4868
  %n.addr.i93 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i93, metadata !4869, metadata !DIExpression()), !dbg !4870
  %retval.i.i34 = alloca i1, align 1
  %addr.addr.i.i35 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i35, metadata !4841, metadata !DIExpression()), !dbg !4871
  %bytes.addr.i.i36 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i36, metadata !4855, metadata !DIExpression()), !dbg !4875
  %is_source.addr.i.i37 = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i37, metadata !4857, metadata !DIExpression()), !dbg !4876
  %sz.i.i38 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i38, metadata !4859, metadata !DIExpression()), !dbg !4877
  %__ret_warn_on.i.i39 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i39, metadata !4861, metadata !DIExpression()), !dbg !4878
  %tmp.i.i40 = alloca i64, align 8
  %to.addr.i41 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i41, metadata !4865, metadata !DIExpression()), !dbg !4879
  %from.addr.i42 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i42, metadata !4867, metadata !DIExpression()), !dbg !4880
  %n.addr.i43 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i43, metadata !4869, metadata !DIExpression()), !dbg !4881
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4841, metadata !DIExpression()), !dbg !4882
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4855, metadata !DIExpression()), !dbg !4888
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4857, metadata !DIExpression()), !dbg !4889
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4859, metadata !DIExpression()), !dbg !4890
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4861, metadata !DIExpression()), !dbg !4891
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4892, metadata !DIExpression()), !dbg !4893
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4894, metadata !DIExpression()), !dbg !4895
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4896, metadata !DIExpression()), !dbg !4897
  %priv.addr = alloca %struct.gntalloc_file_private_data*, align 8
  %arg.addr = alloca %struct.ioctl_gntalloc_alloc_gref*, align 8
  %rc = alloca i32, align 4
  %op = alloca %struct.ioctl_gntalloc_alloc_gref, align 8
  %gref_ids = alloca i32*, align 8
  %tmp = alloca i32, align 4
  store %struct.gntalloc_file_private_data* %priv, %struct.gntalloc_file_private_data** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gntalloc_file_private_data** %priv.addr, metadata !4898, metadata !DIExpression()), !dbg !4899
  store %struct.ioctl_gntalloc_alloc_gref* %arg, %struct.ioctl_gntalloc_alloc_gref** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ioctl_gntalloc_alloc_gref** %arg.addr, metadata !4900, metadata !DIExpression()), !dbg !4901
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4902, metadata !DIExpression()), !dbg !4903
  store i32 0, i32* %rc, align 4, !dbg !4903
  call void @llvm.dbg.declare(metadata %struct.ioctl_gntalloc_alloc_gref* %op, metadata !4904, metadata !DIExpression()), !dbg !4905
  call void @llvm.dbg.declare(metadata i32** %gref_ids, metadata !4906, metadata !DIExpression()), !dbg !4908
  store i32 0, i32* %tmp, align 4, !dbg !4909
  %0 = load i32, i32* %tmp, align 4, !dbg !4912
  %1 = bitcast %struct.ioctl_gntalloc_alloc_gref* %op to i8*, !dbg !4913
  %2 = load %struct.ioctl_gntalloc_alloc_gref*, %struct.ioctl_gntalloc_alloc_gref** %arg.addr, align 8, !dbg !4914
  %3 = bitcast %struct.ioctl_gntalloc_alloc_gref* %2 to i8*, !dbg !4914
  store i8* %1, i8** %to.addr.i, align 8
  store i8* %3, i8** %from.addr.i, align 8
  store i64 24, i64* %n.addr.i, align 8
  %4 = load i8*, i8** %to.addr.i, align 8, !dbg !4915
  %5 = load i64, i64* %n.addr.i, align 8, !dbg !4915
  store i8* %4, i8** %addr.addr.i.i, align 8
  store i64 %5, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !4890
  %6 = load i32, i32* %sz.i.i, align 4, !dbg !4916
  %cmp.i.i = icmp sge i32 %6, 0, !dbg !4916
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !4916

land.rhs.i.i:                                     ; preds = %entry
  %7 = load i32, i32* %sz.i.i, align 4, !dbg !4916
  %conv.i.i = sext i32 %7 to i64, !dbg !4916
  %8 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4916
  %cmp1.i.i = icmp ult i64 %conv.i.i, %8, !dbg !4916
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %entry
  %9 = phi i1 [ false, %entry ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !4918
  %lnot.i.i = xor i1 %9, true, !dbg !4916
  %lnot.ext.i.i = zext i1 %9 to i32, !dbg !4916
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4916
  br i1 %9, label %if.then.i.i, label %if.end10.i.i, !dbg !4919

if.then.i.i:                                      ; preds = %land.end.i.i
  %10 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4920
  %11 = call i1 @llvm.is.constant.i64(i64 %10) #8, !dbg !4923
  br i1 %11, label %if.else.i.i, label %if.then5.i.i, !dbg !4924

if.then5.i.i:                                     ; preds = %if.then.i.i
  %12 = load i32, i32* %sz.i.i, align 4, !dbg !4925
  %13 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4926
  call void @copy_overflow(i32 %12, i64 %13) #13, !dbg !4927
  br label %if.end9.i.i, !dbg !4927

if.else.i.i:                                      ; preds = %if.then.i.i
  %14 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4928
  %tobool6.i.i = trunc i8 %14 to i1, !dbg !4928
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !4930

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #13, !dbg !4931
  br label %if.end.i.i, !dbg !4931

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #13, !dbg !4932
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4933
  br label %check_copy_size.exit.i, !dbg !4933

if.end10.i.i:                                     ; preds = %land.end.i.i
  %15 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4891
  %cmp11.i.i = icmp ugt i64 %15, 2147483647, !dbg !4891
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !4891
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !4891
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !4891
  %16 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4934
  %tobool17.i.i = icmp ne i32 %16, 0, !dbg !4934
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !4934
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !4934
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !4934
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !4891

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #8, !dbg !4936, !srcloc !4939
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #8, !dbg !4940, !srcloc !4942
  br label %if.end31.i.i, !dbg !4943

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %17 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4891
  %tobool32.i.i = icmp ne i32 %17, 0, !dbg !4891
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !4891
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !4891
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !4891
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !4934
  %18 = load i64, i64* %tmp.i.i, align 8, !dbg !4891
  %tobool38.i.i = icmp ne i64 %18, 0, !dbg !4944
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !4945

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4946
  br label %check_copy_size.exit.i, !dbg !4946

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %19 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !4947
  %20 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4948
  %21 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4949
  %tobool41.i.i = trunc i8 %21 to i1, !dbg !4949
  call void @check_object_size(i8* %19, i64 %20, i1 zeroext %tobool41.i.i) #13, !dbg !4950
  store i1 true, i1* %retval.i.i, align 1, !dbg !4951
  br label %check_copy_size.exit.i, !dbg !4951

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %22 = load i1, i1* %retval.i.i, align 1, !dbg !4952
  %lnot.i = xor i1 %22, true, !dbg !4915
  %lnot.ext.i = zext i1 %22 to i32, !dbg !4915
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !4915
  br i1 %22, label %if.then.i, label %copy_from_user.exit, !dbg !4953

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %23 = load i8*, i8** %to.addr.i, align 8, !dbg !4954
  %24 = load i8*, i8** %from.addr.i, align 8, !dbg !4955
  %25 = load i64, i64* %n.addr.i, align 8, !dbg !4956
  %call2.i = call i64 @_copy_from_user(i8* %23, i8* %24, i64 %25) #13, !dbg !4957
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !4958
  br label %copy_from_user.exit, !dbg !4959

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %26 = load i64, i64* %n.addr.i, align 8, !dbg !4960
  %tobool = icmp ne i64 %26, 0, !dbg !4961
  br i1 %tobool, label %if.then, label %if.end, !dbg !4962

if.then:                                          ; preds = %copy_from_user.exit
  store i32 -14, i32* %rc, align 4, !dbg !4963
  br label %out, !dbg !4965

if.end:                                           ; preds = %copy_from_user.exit
  %count = getelementptr inbounds %struct.ioctl_gntalloc_alloc_gref, %struct.ioctl_gntalloc_alloc_gref* %op, i32 0, i32 2, !dbg !4966
  %27 = load i32, i32* %count, align 4, !dbg !4966
  %conv = zext i32 %27 to i64, !dbg !4967
  %call1 = call i8* @kcalloc(i64 %conv, i64 4, i32 3264) #10, !dbg !4968
  %28 = bitcast i8* %call1 to i32*, !dbg !4968
  store i32* %28, i32** %gref_ids, align 8, !dbg !4969
  %29 = load i32*, i32** %gref_ids, align 8, !dbg !4970
  %tobool2 = icmp ne i32* %29, null, !dbg !4970
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4972

if.then3:                                         ; preds = %if.end
  store i32 -12, i32* %rc, align 4, !dbg !4973
  br label %out, !dbg !4975

if.end4:                                          ; preds = %if.end
  call void @mutex_lock(%struct.mutex* @gref_mutex) #10, !dbg !4976
  call void @do_cleanup() #10, !dbg !4977
  %30 = load i32, i32* @gref_size, align 4, !dbg !4978
  %count5 = getelementptr inbounds %struct.ioctl_gntalloc_alloc_gref, %struct.ioctl_gntalloc_alloc_gref* %op, i32 0, i32 2, !dbg !4980
  %31 = load i32, i32* %count5, align 4, !dbg !4980
  %add = add i32 %30, %31, !dbg !4981
  %32 = load i32, i32* @limit, align 4, !dbg !4982
  %cmp = icmp ugt i32 %add, %32, !dbg !4983
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !4984

if.then7:                                         ; preds = %if.end4
  call void @mutex_unlock(%struct.mutex* @gref_mutex) #10, !dbg !4985
  store i32 -28, i32* %rc, align 4, !dbg !4987
  br label %out_free, !dbg !4988

if.end8:                                          ; preds = %if.end4
  %count9 = getelementptr inbounds %struct.ioctl_gntalloc_alloc_gref, %struct.ioctl_gntalloc_alloc_gref* %op, i32 0, i32 2, !dbg !4989
  %33 = load i32, i32* %count9, align 4, !dbg !4989
  %34 = load i32, i32* @gref_size, align 4, !dbg !4990
  %add10 = add i32 %34, %33, !dbg !4990
  store i32 %add10, i32* @gref_size, align 4, !dbg !4990
  %35 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv.addr, align 8, !dbg !4991
  %index = getelementptr inbounds %struct.gntalloc_file_private_data, %struct.gntalloc_file_private_data* %35, i32 0, i32 1, !dbg !4992
  %36 = load i64, i64* %index, align 8, !dbg !4992
  %index11 = getelementptr inbounds %struct.ioctl_gntalloc_alloc_gref, %struct.ioctl_gntalloc_alloc_gref* %op, i32 0, i32 3, !dbg !4993
  store i64 %36, i64* %index11, align 8, !dbg !4994
  %count12 = getelementptr inbounds %struct.ioctl_gntalloc_alloc_gref, %struct.ioctl_gntalloc_alloc_gref* %op, i32 0, i32 2, !dbg !4995
  %37 = load i32, i32* %count12, align 4, !dbg !4995
  %conv13 = zext i32 %37 to i64, !dbg !4996
  %mul = mul i64 %conv13, 4096, !dbg !4997
  %38 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv.addr, align 8, !dbg !4998
  %index14 = getelementptr inbounds %struct.gntalloc_file_private_data, %struct.gntalloc_file_private_data* %38, i32 0, i32 1, !dbg !4999
  %39 = load i64, i64* %index14, align 8, !dbg !5000
  %add15 = add i64 %39, %mul, !dbg !5000
  store i64 %add15, i64* %index14, align 8, !dbg !5000
  call void @mutex_unlock(%struct.mutex* @gref_mutex) #10, !dbg !5001
  %40 = load i32*, i32** %gref_ids, align 8, !dbg !5002
  %41 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv.addr, align 8, !dbg !5003
  %call16 = call i32 @add_grefs(%struct.ioctl_gntalloc_alloc_gref* %op, i32* %40, %struct.gntalloc_file_private_data* %41) #10, !dbg !5004
  store i32 %call16, i32* %rc, align 4, !dbg !5005
  %42 = load i32, i32* %rc, align 4, !dbg !5006
  %cmp17 = icmp slt i32 %42, 0, !dbg !5008
  br i1 %cmp17, label %if.then19, label %if.end20, !dbg !5009

if.then19:                                        ; preds = %if.end8
  br label %out_free, !dbg !5010

if.end20:                                         ; preds = %if.end8
  %43 = load %struct.ioctl_gntalloc_alloc_gref*, %struct.ioctl_gntalloc_alloc_gref** %arg.addr, align 8, !dbg !5011
  %44 = bitcast %struct.ioctl_gntalloc_alloc_gref* %43 to i8*, !dbg !5011
  %45 = bitcast %struct.ioctl_gntalloc_alloc_gref* %op to i8*, !dbg !5012
  store i8* %44, i8** %to.addr.i41, align 8
  store i8* %45, i8** %from.addr.i42, align 8
  store i64 24, i64* %n.addr.i43, align 8
  %46 = load i8*, i8** %from.addr.i42, align 8, !dbg !5013
  %47 = load i64, i64* %n.addr.i43, align 8, !dbg !5013
  store i8* %46, i8** %addr.addr.i.i35, align 8
  store i64 %47, i64* %bytes.addr.i.i36, align 8
  store i8 1, i8* %is_source.addr.i.i37, align 1
  store i32 -1, i32* %sz.i.i38, align 4, !dbg !4877
  %48 = load i32, i32* %sz.i.i38, align 4, !dbg !5014
  %cmp.i.i44 = icmp sge i32 %48, 0, !dbg !5014
  br i1 %cmp.i.i44, label %land.rhs.i.i47, label %land.end.i.i51, !dbg !5014

land.rhs.i.i47:                                   ; preds = %if.end20
  %49 = load i32, i32* %sz.i.i38, align 4, !dbg !5014
  %conv.i.i45 = sext i32 %49 to i64, !dbg !5014
  %50 = load i64, i64* %bytes.addr.i.i36, align 8, !dbg !5014
  %cmp1.i.i46 = icmp ult i64 %conv.i.i45, %50, !dbg !5014
  br label %land.end.i.i51

land.end.i.i51:                                   ; preds = %land.rhs.i.i47, %if.end20
  %51 = phi i1 [ false, %if.end20 ], [ %cmp1.i.i46, %land.rhs.i.i47 ], !dbg !5015
  %lnot.i.i48 = xor i1 %51, true, !dbg !5014
  %lnot.ext.i.i49 = zext i1 %51 to i32, !dbg !5014
  %conv4.i.i50 = sext i32 %lnot.ext.i.i49 to i64, !dbg !5014
  br i1 %51, label %if.then.i.i52, label %if.end10.i.i67, !dbg !5016

if.then.i.i52:                                    ; preds = %land.end.i.i51
  %52 = load i64, i64* %bytes.addr.i.i36, align 8, !dbg !5017
  %53 = call i1 @llvm.is.constant.i64(i64 %52) #8, !dbg !5018
  br i1 %53, label %if.else.i.i55, label %if.then5.i.i53, !dbg !5019

if.then5.i.i53:                                   ; preds = %if.then.i.i52
  %54 = load i32, i32* %sz.i.i38, align 4, !dbg !5020
  %55 = load i64, i64* %bytes.addr.i.i36, align 8, !dbg !5021
  call void @copy_overflow(i32 %54, i64 %55) #13, !dbg !5022
  br label %if.end9.i.i59, !dbg !5022

if.else.i.i55:                                    ; preds = %if.then.i.i52
  %56 = load i8, i8* %is_source.addr.i.i37, align 1, !dbg !5023
  %tobool6.i.i54 = trunc i8 %56 to i1, !dbg !5023
  br i1 %tobool6.i.i54, label %if.then7.i.i56, label %if.else8.i.i57, !dbg !5024

if.then7.i.i56:                                   ; preds = %if.else.i.i55
  call void @__bad_copy_from() #13, !dbg !5025
  br label %if.end.i.i58, !dbg !5025

if.else8.i.i57:                                   ; preds = %if.else.i.i55
  call void @__bad_copy_to() #13, !dbg !5026
  br label %if.end.i.i58

if.end.i.i58:                                     ; preds = %if.else8.i.i57, %if.then7.i.i56
  br label %if.end9.i.i59

if.end9.i.i59:                                    ; preds = %if.end.i.i58, %if.then5.i.i53
  store i1 false, i1* %retval.i.i34, align 1, !dbg !5027
  br label %check_copy_size.exit.i81, !dbg !5027

if.end10.i.i67:                                   ; preds = %land.end.i.i51
  %57 = load i64, i64* %bytes.addr.i.i36, align 8, !dbg !4878
  %cmp11.i.i60 = icmp ugt i64 %57, 2147483647, !dbg !4878
  %lnot13.i.i61 = xor i1 %cmp11.i.i60, true, !dbg !4878
  %lnot.ext16.i.i62 = zext i1 %cmp11.i.i60 to i32, !dbg !4878
  store i32 %lnot.ext16.i.i62, i32* %__ret_warn_on.i.i39, align 4, !dbg !4878
  %58 = load i32, i32* %__ret_warn_on.i.i39, align 4, !dbg !5028
  %tobool17.i.i63 = icmp ne i32 %58, 0, !dbg !5028
  %lnot18.i.i64 = xor i1 %tobool17.i.i63, true, !dbg !5028
  %lnot.ext21.i.i65 = zext i1 %tobool17.i.i63 to i32, !dbg !5028
  %conv22.i.i66 = sext i32 %lnot.ext21.i.i65 to i64, !dbg !5028
  br i1 %tobool17.i.i63, label %if.then24.i.i68, label %if.end31.i.i74, !dbg !4878

if.then24.i.i68:                                  ; preds = %if.end10.i.i67
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #8, !dbg !5029, !srcloc !4939
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #8, !dbg !5030, !srcloc !4942
  br label %if.end31.i.i74, !dbg !5031

if.end31.i.i74:                                   ; preds = %if.then24.i.i68, %if.end10.i.i67
  %59 = load i32, i32* %__ret_warn_on.i.i39, align 4, !dbg !4878
  %tobool32.i.i69 = icmp ne i32 %59, 0, !dbg !4878
  %lnot33.i.i70 = xor i1 %tobool32.i.i69, true, !dbg !4878
  %lnot.ext36.i.i71 = zext i1 %tobool32.i.i69 to i32, !dbg !4878
  %conv37.i.i72 = sext i32 %lnot.ext36.i.i71 to i64, !dbg !4878
  store i64 %conv37.i.i72, i64* %tmp.i.i40, align 8, !dbg !5028
  %60 = load i64, i64* %tmp.i.i40, align 8, !dbg !4878
  %tobool38.i.i73 = icmp ne i64 %60, 0, !dbg !5032
  br i1 %tobool38.i.i73, label %if.then39.i.i75, label %if.end40.i.i77, !dbg !5033

if.then39.i.i75:                                  ; preds = %if.end31.i.i74
  store i1 false, i1* %retval.i.i34, align 1, !dbg !5034
  br label %check_copy_size.exit.i81, !dbg !5034

if.end40.i.i77:                                   ; preds = %if.end31.i.i74
  %61 = load i8*, i8** %addr.addr.i.i35, align 8, !dbg !5035
  %62 = load i64, i64* %bytes.addr.i.i36, align 8, !dbg !5036
  %63 = load i8, i8* %is_source.addr.i.i37, align 1, !dbg !5037
  %tobool41.i.i76 = trunc i8 %63 to i1, !dbg !5037
  call void @check_object_size(i8* %61, i64 %62, i1 zeroext %tobool41.i.i76) #13, !dbg !5038
  store i1 true, i1* %retval.i.i34, align 1, !dbg !5039
  br label %check_copy_size.exit.i81, !dbg !5039

check_copy_size.exit.i81:                         ; preds = %if.end40.i.i77, %if.then39.i.i75, %if.end9.i.i59
  %64 = load i1, i1* %retval.i.i34, align 1, !dbg !5040
  %lnot.i78 = xor i1 %64, true, !dbg !5013
  %lnot.ext.i79 = zext i1 %64 to i32, !dbg !5013
  %conv.i80 = sext i32 %lnot.ext.i79 to i64, !dbg !5013
  br i1 %64, label %if.then.i83, label %copy_to_user.exit, !dbg !5041

if.then.i83:                                      ; preds = %check_copy_size.exit.i81
  %65 = load i8*, i8** %to.addr.i41, align 8, !dbg !5042
  %66 = load i8*, i8** %from.addr.i42, align 8, !dbg !5043
  %67 = load i64, i64* %n.addr.i43, align 8, !dbg !5044
  %call2.i82 = call i64 @_copy_to_user(i8* %65, i8* %66, i64 %67) #13, !dbg !5045
  store i64 %call2.i82, i64* %n.addr.i43, align 8, !dbg !5046
  br label %copy_to_user.exit, !dbg !5047

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i81, %if.then.i83
  %68 = load i64, i64* %n.addr.i43, align 8, !dbg !5048
  %tobool22 = icmp ne i64 %68, 0, !dbg !5049
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !5050

if.then23:                                        ; preds = %copy_to_user.exit
  store i32 -14, i32* %rc, align 4, !dbg !5051
  br label %out_free, !dbg !5053

if.end24:                                         ; preds = %copy_to_user.exit
  %69 = load %struct.ioctl_gntalloc_alloc_gref*, %struct.ioctl_gntalloc_alloc_gref** %arg.addr, align 8, !dbg !5054
  %gref_ids25 = getelementptr inbounds %struct.ioctl_gntalloc_alloc_gref, %struct.ioctl_gntalloc_alloc_gref* %69, i32 0, i32 4, !dbg !5055
  %arraydecay = getelementptr inbounds [1 x i32], [1 x i32]* %gref_ids25, i64 0, i64 0, !dbg !5054
  %70 = bitcast i32* %arraydecay to i8*, !dbg !5054
  %71 = load i32*, i32** %gref_ids, align 8, !dbg !5056
  %72 = bitcast i32* %71 to i8*, !dbg !5056
  %count26 = getelementptr inbounds %struct.ioctl_gntalloc_alloc_gref, %struct.ioctl_gntalloc_alloc_gref* %op, i32 0, i32 2, !dbg !5057
  %73 = load i32, i32* %count26, align 4, !dbg !5057
  %conv27 = zext i32 %73 to i64, !dbg !5058
  %mul28 = mul i64 4, %conv27, !dbg !5059
  store i8* %70, i8** %to.addr.i91, align 8
  store i8* %72, i8** %from.addr.i92, align 8
  store i64 %mul28, i64* %n.addr.i93, align 8
  %74 = load i8*, i8** %from.addr.i92, align 8, !dbg !5060
  %75 = load i64, i64* %n.addr.i93, align 8, !dbg !5060
  store i8* %74, i8** %addr.addr.i.i85, align 8
  store i64 %75, i64* %bytes.addr.i.i86, align 8
  store i8 1, i8* %is_source.addr.i.i87, align 1
  store i32 -1, i32* %sz.i.i88, align 4, !dbg !4860
  %76 = load i32, i32* %sz.i.i88, align 4, !dbg !5061
  %cmp.i.i94 = icmp sge i32 %76, 0, !dbg !5061
  br i1 %cmp.i.i94, label %land.rhs.i.i97, label %land.end.i.i101, !dbg !5061

land.rhs.i.i97:                                   ; preds = %if.end24
  %77 = load i32, i32* %sz.i.i88, align 4, !dbg !5061
  %conv.i.i95 = sext i32 %77 to i64, !dbg !5061
  %78 = load i64, i64* %bytes.addr.i.i86, align 8, !dbg !5061
  %cmp1.i.i96 = icmp ult i64 %conv.i.i95, %78, !dbg !5061
  br label %land.end.i.i101

land.end.i.i101:                                  ; preds = %land.rhs.i.i97, %if.end24
  %79 = phi i1 [ false, %if.end24 ], [ %cmp1.i.i96, %land.rhs.i.i97 ], !dbg !5062
  %lnot.i.i98 = xor i1 %79, true, !dbg !5061
  %lnot.ext.i.i99 = zext i1 %79 to i32, !dbg !5061
  %conv4.i.i100 = sext i32 %lnot.ext.i.i99 to i64, !dbg !5061
  br i1 %79, label %if.then.i.i102, label %if.end10.i.i117, !dbg !5063

if.then.i.i102:                                   ; preds = %land.end.i.i101
  %80 = load i64, i64* %bytes.addr.i.i86, align 8, !dbg !5064
  %81 = call i1 @llvm.is.constant.i64(i64 %80) #8, !dbg !5065
  br i1 %81, label %if.else.i.i105, label %if.then5.i.i103, !dbg !5066

if.then5.i.i103:                                  ; preds = %if.then.i.i102
  %82 = load i32, i32* %sz.i.i88, align 4, !dbg !5067
  %83 = load i64, i64* %bytes.addr.i.i86, align 8, !dbg !5068
  call void @copy_overflow(i32 %82, i64 %83) #13, !dbg !5069
  br label %if.end9.i.i109, !dbg !5069

if.else.i.i105:                                   ; preds = %if.then.i.i102
  %84 = load i8, i8* %is_source.addr.i.i87, align 1, !dbg !5070
  %tobool6.i.i104 = trunc i8 %84 to i1, !dbg !5070
  br i1 %tobool6.i.i104, label %if.then7.i.i106, label %if.else8.i.i107, !dbg !5071

if.then7.i.i106:                                  ; preds = %if.else.i.i105
  call void @__bad_copy_from() #13, !dbg !5072
  br label %if.end.i.i108, !dbg !5072

if.else8.i.i107:                                  ; preds = %if.else.i.i105
  call void @__bad_copy_to() #13, !dbg !5073
  br label %if.end.i.i108

if.end.i.i108:                                    ; preds = %if.else8.i.i107, %if.then7.i.i106
  br label %if.end9.i.i109

if.end9.i.i109:                                   ; preds = %if.end.i.i108, %if.then5.i.i103
  store i1 false, i1* %retval.i.i84, align 1, !dbg !5074
  br label %check_copy_size.exit.i131, !dbg !5074

if.end10.i.i117:                                  ; preds = %land.end.i.i101
  %85 = load i64, i64* %bytes.addr.i.i86, align 8, !dbg !4864
  %cmp11.i.i110 = icmp ugt i64 %85, 2147483647, !dbg !4864
  %lnot13.i.i111 = xor i1 %cmp11.i.i110, true, !dbg !4864
  %lnot.ext16.i.i112 = zext i1 %cmp11.i.i110 to i32, !dbg !4864
  store i32 %lnot.ext16.i.i112, i32* %__ret_warn_on.i.i89, align 4, !dbg !4864
  %86 = load i32, i32* %__ret_warn_on.i.i89, align 4, !dbg !5075
  %tobool17.i.i113 = icmp ne i32 %86, 0, !dbg !5075
  %lnot18.i.i114 = xor i1 %tobool17.i.i113, true, !dbg !5075
  %lnot.ext21.i.i115 = zext i1 %tobool17.i.i113 to i32, !dbg !5075
  %conv22.i.i116 = sext i32 %lnot.ext21.i.i115 to i64, !dbg !5075
  br i1 %tobool17.i.i113, label %if.then24.i.i118, label %if.end31.i.i124, !dbg !4864

if.then24.i.i118:                                 ; preds = %if.end10.i.i117
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #8, !dbg !5076, !srcloc !4939
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #8, !dbg !5077, !srcloc !4942
  br label %if.end31.i.i124, !dbg !5078

if.end31.i.i124:                                  ; preds = %if.then24.i.i118, %if.end10.i.i117
  %87 = load i32, i32* %__ret_warn_on.i.i89, align 4, !dbg !4864
  %tobool32.i.i119 = icmp ne i32 %87, 0, !dbg !4864
  %lnot33.i.i120 = xor i1 %tobool32.i.i119, true, !dbg !4864
  %lnot.ext36.i.i121 = zext i1 %tobool32.i.i119 to i32, !dbg !4864
  %conv37.i.i122 = sext i32 %lnot.ext36.i.i121 to i64, !dbg !4864
  store i64 %conv37.i.i122, i64* %tmp.i.i90, align 8, !dbg !5075
  %88 = load i64, i64* %tmp.i.i90, align 8, !dbg !4864
  %tobool38.i.i123 = icmp ne i64 %88, 0, !dbg !5079
  br i1 %tobool38.i.i123, label %if.then39.i.i125, label %if.end40.i.i127, !dbg !5080

if.then39.i.i125:                                 ; preds = %if.end31.i.i124
  store i1 false, i1* %retval.i.i84, align 1, !dbg !5081
  br label %check_copy_size.exit.i131, !dbg !5081

if.end40.i.i127:                                  ; preds = %if.end31.i.i124
  %89 = load i8*, i8** %addr.addr.i.i85, align 8, !dbg !5082
  %90 = load i64, i64* %bytes.addr.i.i86, align 8, !dbg !5083
  %91 = load i8, i8* %is_source.addr.i.i87, align 1, !dbg !5084
  %tobool41.i.i126 = trunc i8 %91 to i1, !dbg !5084
  call void @check_object_size(i8* %89, i64 %90, i1 zeroext %tobool41.i.i126) #13, !dbg !5085
  store i1 true, i1* %retval.i.i84, align 1, !dbg !5086
  br label %check_copy_size.exit.i131, !dbg !5086

check_copy_size.exit.i131:                        ; preds = %if.end40.i.i127, %if.then39.i.i125, %if.end9.i.i109
  %92 = load i1, i1* %retval.i.i84, align 1, !dbg !5087
  %lnot.i128 = xor i1 %92, true, !dbg !5060
  %lnot.ext.i129 = zext i1 %92 to i32, !dbg !5060
  %conv.i130 = sext i32 %lnot.ext.i129 to i64, !dbg !5060
  br i1 %92, label %if.then.i133, label %copy_to_user.exit134, !dbg !5088

if.then.i133:                                     ; preds = %check_copy_size.exit.i131
  %93 = load i8*, i8** %to.addr.i91, align 8, !dbg !5089
  %94 = load i8*, i8** %from.addr.i92, align 8, !dbg !5090
  %95 = load i64, i64* %n.addr.i93, align 8, !dbg !5091
  %call2.i132 = call i64 @_copy_to_user(i8* %93, i8* %94, i64 %95) #13, !dbg !5092
  store i64 %call2.i132, i64* %n.addr.i93, align 8, !dbg !5093
  br label %copy_to_user.exit134, !dbg !5094

copy_to_user.exit134:                             ; preds = %check_copy_size.exit.i131, %if.then.i133
  %96 = load i64, i64* %n.addr.i93, align 8, !dbg !5095
  %tobool30 = icmp ne i64 %96, 0, !dbg !5096
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !5097

if.then31:                                        ; preds = %copy_to_user.exit134
  store i32 -14, i32* %rc, align 4, !dbg !5098
  br label %out_free, !dbg !5100

if.end32:                                         ; preds = %copy_to_user.exit134
  br label %out_free, !dbg !5101

out_free:                                         ; preds = %if.end32, %if.then31, %if.then23, %if.then19, %if.then7
  call void @llvm.dbg.label(metadata !5102), !dbg !5103
  %97 = load i32*, i32** %gref_ids, align 8, !dbg !5104
  %98 = bitcast i32* %97 to i8*, !dbg !5104
  call void @kfree(i8* %98) #10, !dbg !5105
  br label %out, !dbg !5105

out:                                              ; preds = %out_free, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !5106), !dbg !5107
  %99 = load i32, i32* %rc, align 4, !dbg !5108
  %conv33 = sext i32 %99 to i64, !dbg !5108
  ret i64 %conv33, !dbg !5109
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @gntalloc_ioctl_dealloc(%struct.gntalloc_file_private_data* %priv, i8* %arg) #2 !dbg !5110 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4841, metadata !DIExpression()), !dbg !5113
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4855, metadata !DIExpression()), !dbg !5117
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4857, metadata !DIExpression()), !dbg !5118
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4859, metadata !DIExpression()), !dbg !5119
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4861, metadata !DIExpression()), !dbg !5120
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4892, metadata !DIExpression()), !dbg !5121
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4894, metadata !DIExpression()), !dbg !5122
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4896, metadata !DIExpression()), !dbg !5123
  %priv.addr = alloca %struct.gntalloc_file_private_data*, align 8
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %op = alloca %struct.ioctl_gntalloc_dealloc_gref, align 8
  %gref = alloca %struct.gntalloc_gref*, align 8
  %n = alloca %struct.gntalloc_gref*, align 8
  %tmp = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp5 = alloca %struct.gntalloc_gref*, align 8
  store %struct.gntalloc_file_private_data* %priv, %struct.gntalloc_file_private_data** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gntalloc_file_private_data** %priv.addr, metadata !5124, metadata !DIExpression()), !dbg !5125
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !5126, metadata !DIExpression()), !dbg !5127
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5128, metadata !DIExpression()), !dbg !5129
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5130, metadata !DIExpression()), !dbg !5131
  store i32 0, i32* %rc, align 4, !dbg !5131
  call void @llvm.dbg.declare(metadata %struct.ioctl_gntalloc_dealloc_gref* %op, metadata !5132, metadata !DIExpression()), !dbg !5137
  call void @llvm.dbg.declare(metadata %struct.gntalloc_gref** %gref, metadata !5138, metadata !DIExpression()), !dbg !5139
  call void @llvm.dbg.declare(metadata %struct.gntalloc_gref** %n, metadata !5140, metadata !DIExpression()), !dbg !5141
  store i32 0, i32* %tmp, align 4, !dbg !5142
  %0 = load i32, i32* %tmp, align 4, !dbg !5145
  %1 = bitcast %struct.ioctl_gntalloc_dealloc_gref* %op to i8*, !dbg !5146
  %2 = load i8*, i8** %arg.addr, align 8, !dbg !5147
  store i8* %1, i8** %to.addr.i, align 8
  store i8* %2, i8** %from.addr.i, align 8
  store i64 16, i64* %n.addr.i, align 8
  %3 = load i8*, i8** %to.addr.i, align 8, !dbg !5148
  %4 = load i64, i64* %n.addr.i, align 8, !dbg !5148
  store i8* %3, i8** %addr.addr.i.i, align 8
  store i64 %4, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5119
  %5 = load i32, i32* %sz.i.i, align 4, !dbg !5149
  %cmp.i.i = icmp sge i32 %5, 0, !dbg !5149
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !5149

land.rhs.i.i:                                     ; preds = %entry
  %6 = load i32, i32* %sz.i.i, align 4, !dbg !5149
  %conv.i.i = sext i32 %6 to i64, !dbg !5149
  %7 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5149
  %cmp1.i.i = icmp ult i64 %conv.i.i, %7, !dbg !5149
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %entry
  %8 = phi i1 [ false, %entry ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5150
  %lnot.i.i = xor i1 %8, true, !dbg !5149
  %lnot.ext.i.i = zext i1 %8 to i32, !dbg !5149
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5149
  br i1 %8, label %if.then.i.i, label %if.end10.i.i, !dbg !5151

if.then.i.i:                                      ; preds = %land.end.i.i
  %9 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5152
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #8, !dbg !5153
  br i1 %10, label %if.else.i.i, label %if.then5.i.i, !dbg !5154

if.then5.i.i:                                     ; preds = %if.then.i.i
  %11 = load i32, i32* %sz.i.i, align 4, !dbg !5155
  %12 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5156
  call void @copy_overflow(i32 %11, i64 %12) #13, !dbg !5157
  br label %if.end9.i.i, !dbg !5157

if.else.i.i:                                      ; preds = %if.then.i.i
  %13 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5158
  %tobool6.i.i = trunc i8 %13 to i1, !dbg !5158
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5159

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #13, !dbg !5160
  br label %if.end.i.i, !dbg !5160

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #13, !dbg !5161
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5162
  br label %check_copy_size.exit.i, !dbg !5162

if.end10.i.i:                                     ; preds = %land.end.i.i
  %14 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5120
  %cmp11.i.i = icmp ugt i64 %14, 2147483647, !dbg !5120
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5120
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5120
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5120
  %15 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5163
  %tobool17.i.i = icmp ne i32 %15, 0, !dbg !5163
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5163
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5163
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5163
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5120

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #8, !dbg !5164, !srcloc !4939
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #8, !dbg !5165, !srcloc !4942
  br label %if.end31.i.i, !dbg !5166

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %16 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5120
  %tobool32.i.i = icmp ne i32 %16, 0, !dbg !5120
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5120
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5120
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5120
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5163
  %17 = load i64, i64* %tmp.i.i, align 8, !dbg !5120
  %tobool38.i.i = icmp ne i64 %17, 0, !dbg !5167
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5168

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5169
  br label %check_copy_size.exit.i, !dbg !5169

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %18 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5170
  %19 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5171
  %20 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5172
  %tobool41.i.i = trunc i8 %20 to i1, !dbg !5172
  call void @check_object_size(i8* %18, i64 %19, i1 zeroext %tobool41.i.i) #13, !dbg !5173
  store i1 true, i1* %retval.i.i, align 1, !dbg !5174
  br label %check_copy_size.exit.i, !dbg !5174

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %21 = load i1, i1* %retval.i.i, align 1, !dbg !5175
  %lnot.i = xor i1 %21, true, !dbg !5148
  %lnot.ext.i = zext i1 %21 to i32, !dbg !5148
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5148
  br i1 %21, label %if.then.i, label %copy_from_user.exit, !dbg !5176

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %22 = load i8*, i8** %to.addr.i, align 8, !dbg !5177
  %23 = load i8*, i8** %from.addr.i, align 8, !dbg !5178
  %24 = load i64, i64* %n.addr.i, align 8, !dbg !5179
  %call2.i = call i64 @_copy_from_user(i8* %22, i8* %23, i64 %24) #13, !dbg !5180
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5181
  br label %copy_from_user.exit, !dbg !5182

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %25 = load i64, i64* %n.addr.i, align 8, !dbg !5183
  %tobool = icmp ne i64 %25, 0, !dbg !5184
  br i1 %tobool, label %if.then, label %if.end, !dbg !5185

if.then:                                          ; preds = %copy_from_user.exit
  store i32 -14, i32* %rc, align 4, !dbg !5186
  br label %dealloc_grant_out, !dbg !5188

if.end:                                           ; preds = %copy_from_user.exit
  call void @mutex_lock(%struct.mutex* @gref_mutex) #10, !dbg !5189
  %26 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv.addr, align 8, !dbg !5190
  %index = getelementptr inbounds %struct.ioctl_gntalloc_dealloc_gref, %struct.ioctl_gntalloc_dealloc_gref* %op, i32 0, i32 0, !dbg !5191
  %27 = load i64, i64* %index, align 8, !dbg !5191
  %count = getelementptr inbounds %struct.ioctl_gntalloc_dealloc_gref, %struct.ioctl_gntalloc_dealloc_gref* %op, i32 0, i32 1, !dbg !5192
  %28 = load i32, i32* %count, align 8, !dbg !5192
  %call1 = call %struct.gntalloc_gref* @find_grefs(%struct.gntalloc_file_private_data* %26, i64 %27, i32 %28) #10, !dbg !5193
  store %struct.gntalloc_gref* %call1, %struct.gntalloc_gref** %gref, align 8, !dbg !5194
  %29 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5195
  %tobool2 = icmp ne %struct.gntalloc_gref* %29, null, !dbg !5195
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !5197

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5198
  br label %for.cond, !dbg !5201

for.cond:                                         ; preds = %for.inc, %if.then3
  %30 = load i32, i32* %i, align 4, !dbg !5202
  %count4 = getelementptr inbounds %struct.ioctl_gntalloc_dealloc_gref, %struct.ioctl_gntalloc_dealloc_gref* %op, i32 0, i32 1, !dbg !5204
  %31 = load i32, i32* %count4, align 8, !dbg !5204
  %cmp = icmp ult i32 %30, %31, !dbg !5205
  br i1 %cmp, label %for.body, label %for.end, !dbg !5206

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5207, metadata !DIExpression()), !dbg !5210
  %32 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5210
  %next_file = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %32, i32 0, i32 1, !dbg !5210
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %next_file, i32 0, i32 0, !dbg !5210
  %33 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5210
  %34 = bitcast %struct.list_head* %33 to i8*, !dbg !5210
  store i8* %34, i8** %__mptr, align 8, !dbg !5210
  br label %do.body, !dbg !5210

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !5211

do.end:                                           ; preds = %do.body
  %35 = load i8*, i8** %__mptr, align 8, !dbg !5210
  %add.ptr = getelementptr i8, i8* %35, i64 -16, !dbg !5210
  %36 = bitcast i8* %add.ptr to %struct.gntalloc_gref*, !dbg !5210
  store %struct.gntalloc_gref* %36, %struct.gntalloc_gref** %tmp5, align 8, !dbg !5211
  %37 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %tmp5, align 8, !dbg !5210
  store %struct.gntalloc_gref* %37, %struct.gntalloc_gref** %n, align 8, !dbg !5213
  %38 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5214
  %next_file6 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %38, i32 0, i32 1, !dbg !5215
  call void @list_del(%struct.list_head* %next_file6) #10, !dbg !5216
  %39 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5217
  %users = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %39, i32 0, i32 4, !dbg !5218
  %40 = load i32, i32* %users, align 8, !dbg !5219
  %dec = add i32 %40, -1, !dbg !5219
  store i32 %dec, i32* %users, align 8, !dbg !5219
  %41 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %n, align 8, !dbg !5220
  store %struct.gntalloc_gref* %41, %struct.gntalloc_gref** %gref, align 8, !dbg !5221
  br label %for.inc, !dbg !5222

for.inc:                                          ; preds = %do.end
  %42 = load i32, i32* %i, align 4, !dbg !5223
  %inc = add i32 %42, 1, !dbg !5223
  store i32 %inc, i32* %i, align 4, !dbg !5223
  br label %for.cond, !dbg !5224, !llvm.loop !5225

for.end:                                          ; preds = %for.cond
  br label %if.end7, !dbg !5227

if.else:                                          ; preds = %if.end
  store i32 -22, i32* %rc, align 4, !dbg !5228
  br label %if.end7

if.end7:                                          ; preds = %if.else, %for.end
  call void @do_cleanup() #10, !dbg !5230
  call void @mutex_unlock(%struct.mutex* @gref_mutex) #10, !dbg !5231
  br label %dealloc_grant_out, !dbg !5231

dealloc_grant_out:                                ; preds = %if.end7, %if.then
  call void @llvm.dbg.label(metadata !5232), !dbg !5233
  %43 = load i32, i32* %rc, align 4, !dbg !5234
  %conv = sext i32 %43 to i64, !dbg !5234
  ret i64 %conv, !dbg !5235
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @gntalloc_ioctl_unmap_notify(%struct.gntalloc_file_private_data* %priv, i8* %arg) #2 !dbg !5236 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4841, metadata !DIExpression()), !dbg !5237
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4855, metadata !DIExpression()), !dbg !5241
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4857, metadata !DIExpression()), !dbg !5242
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4859, metadata !DIExpression()), !dbg !5243
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4861, metadata !DIExpression()), !dbg !5244
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4892, metadata !DIExpression()), !dbg !5245
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4894, metadata !DIExpression()), !dbg !5246
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4896, metadata !DIExpression()), !dbg !5247
  %retval = alloca i64, align 8
  %priv.addr = alloca %struct.gntalloc_file_private_data*, align 8
  %arg.addr = alloca i8*, align 8
  %op = alloca %struct.ioctl_gntalloc_unmap_notify, align 8
  %gref = alloca %struct.gntalloc_gref*, align 8
  %index = alloca i64, align 8
  %pgoff = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.gntalloc_file_private_data* %priv, %struct.gntalloc_file_private_data** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gntalloc_file_private_data** %priv.addr, metadata !5248, metadata !DIExpression()), !dbg !5249
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !5250, metadata !DIExpression()), !dbg !5251
  call void @llvm.dbg.declare(metadata %struct.ioctl_gntalloc_unmap_notify* %op, metadata !5252, metadata !DIExpression()), !dbg !5258
  call void @llvm.dbg.declare(metadata %struct.gntalloc_gref** %gref, metadata !5259, metadata !DIExpression()), !dbg !5260
  call void @llvm.dbg.declare(metadata i64* %index, metadata !5261, metadata !DIExpression()), !dbg !5262
  call void @llvm.dbg.declare(metadata i32* %pgoff, metadata !5263, metadata !DIExpression()), !dbg !5264
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5265, metadata !DIExpression()), !dbg !5266
  %0 = bitcast %struct.ioctl_gntalloc_unmap_notify* %op to i8*, !dbg !5267
  %1 = load i8*, i8** %arg.addr, align 8, !dbg !5268
  store i8* %0, i8** %to.addr.i, align 8
  store i8* %1, i8** %from.addr.i, align 8
  store i64 16, i64* %n.addr.i, align 8
  %2 = load i8*, i8** %to.addr.i, align 8, !dbg !5269
  %3 = load i64, i64* %n.addr.i, align 8, !dbg !5269
  store i8* %2, i8** %addr.addr.i.i, align 8
  store i64 %3, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5243
  %4 = load i32, i32* %sz.i.i, align 4, !dbg !5270
  %cmp.i.i = icmp sge i32 %4, 0, !dbg !5270
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !5270

land.rhs.i.i:                                     ; preds = %entry
  %5 = load i32, i32* %sz.i.i, align 4, !dbg !5270
  %conv.i.i = sext i32 %5 to i64, !dbg !5270
  %6 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5270
  %cmp1.i.i = icmp ult i64 %conv.i.i, %6, !dbg !5270
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %entry
  %7 = phi i1 [ false, %entry ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5271
  %lnot.i.i = xor i1 %7, true, !dbg !5270
  %lnot.ext.i.i = zext i1 %7 to i32, !dbg !5270
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5270
  br i1 %7, label %if.then.i.i, label %if.end10.i.i, !dbg !5272

if.then.i.i:                                      ; preds = %land.end.i.i
  %8 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5273
  %9 = call i1 @llvm.is.constant.i64(i64 %8) #8, !dbg !5274
  br i1 %9, label %if.else.i.i, label %if.then5.i.i, !dbg !5275

if.then5.i.i:                                     ; preds = %if.then.i.i
  %10 = load i32, i32* %sz.i.i, align 4, !dbg !5276
  %11 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5277
  call void @copy_overflow(i32 %10, i64 %11) #13, !dbg !5278
  br label %if.end9.i.i, !dbg !5278

if.else.i.i:                                      ; preds = %if.then.i.i
  %12 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5279
  %tobool6.i.i = trunc i8 %12 to i1, !dbg !5279
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5280

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #13, !dbg !5281
  br label %if.end.i.i, !dbg !5281

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #13, !dbg !5282
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5283
  br label %check_copy_size.exit.i, !dbg !5283

if.end10.i.i:                                     ; preds = %land.end.i.i
  %13 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5244
  %cmp11.i.i = icmp ugt i64 %13, 2147483647, !dbg !5244
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5244
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5244
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5244
  %14 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5284
  %tobool17.i.i = icmp ne i32 %14, 0, !dbg !5284
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5284
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5284
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5284
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5244

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 150, i32 2307, i64 12) #8, !dbg !5285, !srcloc !4939
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #8, !dbg !5286, !srcloc !4942
  br label %if.end31.i.i, !dbg !5287

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %15 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5244
  %tobool32.i.i = icmp ne i32 %15, 0, !dbg !5244
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5244
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5244
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5244
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5284
  %16 = load i64, i64* %tmp.i.i, align 8, !dbg !5244
  %tobool38.i.i = icmp ne i64 %16, 0, !dbg !5288
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5289

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5290
  br label %check_copy_size.exit.i, !dbg !5290

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %17 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5291
  %18 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5292
  %19 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5293
  %tobool41.i.i = trunc i8 %19 to i1, !dbg !5293
  call void @check_object_size(i8* %17, i64 %18, i1 zeroext %tobool41.i.i) #13, !dbg !5294
  store i1 true, i1* %retval.i.i, align 1, !dbg !5295
  br label %check_copy_size.exit.i, !dbg !5295

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %20 = load i1, i1* %retval.i.i, align 1, !dbg !5296
  %lnot.i = xor i1 %20, true, !dbg !5269
  %lnot.ext.i = zext i1 %20 to i32, !dbg !5269
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5269
  br i1 %20, label %if.then.i, label %copy_from_user.exit, !dbg !5297

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %21 = load i8*, i8** %to.addr.i, align 8, !dbg !5298
  %22 = load i8*, i8** %from.addr.i, align 8, !dbg !5299
  %23 = load i64, i64* %n.addr.i, align 8, !dbg !5300
  %call2.i = call i64 @_copy_from_user(i8* %21, i8* %22, i64 %23) #13, !dbg !5301
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5302
  br label %copy_from_user.exit, !dbg !5303

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %24 = load i64, i64* %n.addr.i, align 8, !dbg !5304
  %tobool = icmp ne i64 %24, 0, !dbg !5305
  br i1 %tobool, label %if.then, label %if.end, !dbg !5306

if.then:                                          ; preds = %copy_from_user.exit
  store i64 -14, i64* %retval, align 8, !dbg !5307
  br label %return, !dbg !5307

if.end:                                           ; preds = %copy_from_user.exit
  %index1 = getelementptr inbounds %struct.ioctl_gntalloc_unmap_notify, %struct.ioctl_gntalloc_unmap_notify* %op, i32 0, i32 0, !dbg !5308
  %25 = load i64, i64* %index1, align 8, !dbg !5308
  %and = and i64 %25, -4096, !dbg !5309
  store i64 %and, i64* %index, align 8, !dbg !5310
  %index2 = getelementptr inbounds %struct.ioctl_gntalloc_unmap_notify, %struct.ioctl_gntalloc_unmap_notify* %op, i32 0, i32 0, !dbg !5311
  %26 = load i64, i64* %index2, align 8, !dbg !5311
  %and3 = and i64 %26, 4095, !dbg !5312
  %conv = trunc i64 %and3 to i32, !dbg !5313
  store i32 %conv, i32* %pgoff, align 4, !dbg !5314
  call void @mutex_lock(%struct.mutex* @gref_mutex) #10, !dbg !5315
  %27 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv.addr, align 8, !dbg !5316
  %28 = load i64, i64* %index, align 8, !dbg !5317
  %call4 = call %struct.gntalloc_gref* @find_grefs(%struct.gntalloc_file_private_data* %27, i64 %28, i32 1) #10, !dbg !5318
  store %struct.gntalloc_gref* %call4, %struct.gntalloc_gref** %gref, align 8, !dbg !5319
  %29 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5320
  %tobool5 = icmp ne %struct.gntalloc_gref* %29, null, !dbg !5320
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5322

if.then6:                                         ; preds = %if.end
  store i32 -2, i32* %rc, align 4, !dbg !5323
  br label %unlock_out, !dbg !5325

if.end7:                                          ; preds = %if.end
  %action = getelementptr inbounds %struct.ioctl_gntalloc_unmap_notify, %struct.ioctl_gntalloc_unmap_notify* %op, i32 0, i32 1, !dbg !5326
  %30 = load i32, i32* %action, align 8, !dbg !5326
  %and8 = and i32 %30, -4, !dbg !5328
  %tobool9 = icmp ne i32 %and8, 0, !dbg !5328
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5329

if.then10:                                        ; preds = %if.end7
  store i32 -22, i32* %rc, align 4, !dbg !5330
  br label %unlock_out, !dbg !5332

if.end11:                                         ; preds = %if.end7
  %action12 = getelementptr inbounds %struct.ioctl_gntalloc_unmap_notify, %struct.ioctl_gntalloc_unmap_notify* %op, i32 0, i32 1, !dbg !5333
  %31 = load i32, i32* %action12, align 8, !dbg !5333
  %and13 = and i32 %31, 2, !dbg !5335
  %tobool14 = icmp ne i32 %and13, 0, !dbg !5335
  br i1 %tobool14, label %if.then15, label %if.end20, !dbg !5336

if.then15:                                        ; preds = %if.end11
  %event_channel_port = getelementptr inbounds %struct.ioctl_gntalloc_unmap_notify, %struct.ioctl_gntalloc_unmap_notify* %op, i32 0, i32 2, !dbg !5337
  %32 = load i32, i32* %event_channel_port, align 4, !dbg !5337
  %call16 = call i32 @evtchn_get(i32 %32) #10, !dbg !5340
  %tobool17 = icmp ne i32 %call16, 0, !dbg !5340
  br i1 %tobool17, label %if.then18, label %if.end19, !dbg !5341

if.then18:                                        ; preds = %if.then15
  store i32 -22, i32* %rc, align 4, !dbg !5342
  br label %unlock_out, !dbg !5344

if.end19:                                         ; preds = %if.then15
  br label %if.end20, !dbg !5345

if.end20:                                         ; preds = %if.end19, %if.end11
  %33 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5346
  %notify = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %33, i32 0, i32 6, !dbg !5348
  %34 = bitcast %struct.notify_info* %notify to i16*, !dbg !5349
  %bf.load = load i16, i16* %34, align 8, !dbg !5349
  %bf.lshr = lshr i16 %bf.load, 12, !dbg !5349
  %bf.clear = and i16 %bf.lshr, 3, !dbg !5349
  %conv21 = zext i16 %bf.clear to i32, !dbg !5346
  %and22 = and i32 %conv21, 2, !dbg !5350
  %tobool23 = icmp ne i32 %and22, 0, !dbg !5350
  br i1 %tobool23, label %if.then24, label %if.end26, !dbg !5351

if.then24:                                        ; preds = %if.end20
  %35 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5352
  %notify25 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %35, i32 0, i32 6, !dbg !5353
  %event = getelementptr inbounds %struct.notify_info, %struct.notify_info* %notify25, i32 0, i32 1, !dbg !5354
  %36 = load i32, i32* %event, align 4, !dbg !5354
  call void @evtchn_put(i32 %36) #10, !dbg !5355
  br label %if.end26, !dbg !5355

if.end26:                                         ; preds = %if.then24, %if.end20
  %action27 = getelementptr inbounds %struct.ioctl_gntalloc_unmap_notify, %struct.ioctl_gntalloc_unmap_notify* %op, i32 0, i32 1, !dbg !5356
  %37 = load i32, i32* %action27, align 8, !dbg !5356
  %conv28 = trunc i32 %37 to i16, !dbg !5357
  %38 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5358
  %notify29 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %38, i32 0, i32 6, !dbg !5359
  %39 = bitcast %struct.notify_info* %notify29 to i16*, !dbg !5360
  %bf.load30 = load i16, i16* %39, align 8, !dbg !5361
  %bf.value = and i16 %conv28, 3, !dbg !5361
  %bf.shl = shl i16 %bf.value, 12, !dbg !5361
  %bf.clear31 = and i16 %bf.load30, -12289, !dbg !5361
  %bf.set = or i16 %bf.clear31, %bf.shl, !dbg !5361
  store i16 %bf.set, i16* %39, align 8, !dbg !5361
  %40 = load i32, i32* %pgoff, align 4, !dbg !5362
  %conv32 = trunc i32 %40 to i16, !dbg !5362
  %41 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5363
  %notify33 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %41, i32 0, i32 6, !dbg !5364
  %42 = bitcast %struct.notify_info* %notify33 to i16*, !dbg !5365
  %bf.load34 = load i16, i16* %42, align 8, !dbg !5366
  %bf.value35 = and i16 %conv32, 4095, !dbg !5366
  %bf.clear36 = and i16 %bf.load34, -4096, !dbg !5366
  %bf.set37 = or i16 %bf.clear36, %bf.value35, !dbg !5366
  store i16 %bf.set37, i16* %42, align 8, !dbg !5366
  %event_channel_port38 = getelementptr inbounds %struct.ioctl_gntalloc_unmap_notify, %struct.ioctl_gntalloc_unmap_notify* %op, i32 0, i32 2, !dbg !5367
  %43 = load i32, i32* %event_channel_port38, align 4, !dbg !5367
  %44 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5368
  %notify39 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %44, i32 0, i32 6, !dbg !5369
  %event40 = getelementptr inbounds %struct.notify_info, %struct.notify_info* %notify39, i32 0, i32 1, !dbg !5370
  store i32 %43, i32* %event40, align 4, !dbg !5371
  store i32 0, i32* %rc, align 4, !dbg !5372
  br label %unlock_out, !dbg !5373

unlock_out:                                       ; preds = %if.end26, %if.then18, %if.then10, %if.then6
  call void @llvm.dbg.label(metadata !5374), !dbg !5375
  call void @mutex_unlock(%struct.mutex* @gref_mutex) #10, !dbg !5376
  %45 = load i32, i32* %rc, align 4, !dbg !5377
  %conv41 = sext i32 %45 to i64, !dbg !5377
  store i64 %conv41, i64* %retval, align 8, !dbg !5378
  br label %return, !dbg !5378

return:                                           ; preds = %unlock_out, %if.then
  %46 = load i64, i64* %retval, align 8, !dbg !5379
  ret i64 %46, !dbg !5379
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #2 !dbg !5380 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5385, metadata !DIExpression()), !dbg !5386
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5387, metadata !DIExpression()), !dbg !5388
  %0 = load i64, i64* %n.addr, align 8, !dbg !5389
  %1 = load i64, i64* %size.addr, align 8, !dbg !5390
  %2 = load i32, i32* %flags.addr, align 4, !dbg !5391
  %or = or i32 %2, 256, !dbg !5392
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #10, !dbg !5393
  ret i8* %call, !dbg !5394
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @do_cleanup() #2 !dbg !5395 {
entry:
  %gref = alloca %struct.gntalloc_gref*, align 8
  %n = alloca %struct.gntalloc_gref*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gntalloc_gref*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.gntalloc_gref*, align 8
  %__mptr7 = alloca i8*, align 8
  %tmp12 = alloca %struct.gntalloc_gref*, align 8
  call void @llvm.dbg.declare(metadata %struct.gntalloc_gref** %gref, metadata !5396, metadata !DIExpression()), !dbg !5397
  call void @llvm.dbg.declare(metadata %struct.gntalloc_gref** %n, metadata !5398, metadata !DIExpression()), !dbg !5399
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5400, metadata !DIExpression()), !dbg !5403
  %0 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @gref_list, i32 0, i32 0), align 8, !dbg !5403
  %1 = bitcast %struct.list_head* %0 to i8*, !dbg !5403
  store i8* %1, i8** %__mptr, align 8, !dbg !5403
  br label %do.body, !dbg !5403

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5404

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5403
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !5403
  %3 = bitcast i8* %add.ptr to %struct.gntalloc_gref*, !dbg !5403
  store %struct.gntalloc_gref* %3, %struct.gntalloc_gref** %tmp, align 8, !dbg !5404
  %4 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %tmp, align 8, !dbg !5403
  store %struct.gntalloc_gref* %4, %struct.gntalloc_gref** %gref, align 8, !dbg !5406
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !5407, metadata !DIExpression()), !dbg !5409
  %5 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5409
  %next_gref = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %5, i32 0, i32 0, !dbg !5409
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %next_gref, i32 0, i32 0, !dbg !5409
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5409
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !5409
  store i8* %7, i8** %__mptr1, align 8, !dbg !5409
  br label %do.body2, !dbg !5409

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !5410

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !5409
  %add.ptr5 = getelementptr i8, i8* %8, i64 0, !dbg !5409
  %9 = bitcast i8* %add.ptr5 to %struct.gntalloc_gref*, !dbg !5409
  store %struct.gntalloc_gref* %9, %struct.gntalloc_gref** %tmp4, align 8, !dbg !5410
  %10 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %tmp4, align 8, !dbg !5409
  store %struct.gntalloc_gref* %10, %struct.gntalloc_gref** %n, align 8, !dbg !5406
  br label %for.cond, !dbg !5406

for.cond:                                         ; preds = %do.end11, %do.end3
  %11 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5412
  %next_gref6 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %11, i32 0, i32 0, !dbg !5412
  %cmp = icmp eq %struct.list_head* %next_gref6, @gref_list, !dbg !5412
  %lnot = xor i1 %cmp, true, !dbg !5412
  br i1 %lnot, label %for.body, label %for.end, !dbg !5406

for.body:                                         ; preds = %for.cond
  %12 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5414
  %users = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %12, i32 0, i32 4, !dbg !5417
  %13 = load i32, i32* %users, align 8, !dbg !5417
  %tobool = icmp ne i32 %13, 0, !dbg !5414
  br i1 %tobool, label %if.end, label %if.then, !dbg !5418

if.then:                                          ; preds = %for.body
  %14 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5419
  call void @__del_gref(%struct.gntalloc_gref* %14) #10, !dbg !5420
  br label %if.end, !dbg !5420

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5421

for.inc:                                          ; preds = %if.end
  %15 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %n, align 8, !dbg !5412
  store %struct.gntalloc_gref* %15, %struct.gntalloc_gref** %gref, align 8, !dbg !5412
  call void @llvm.dbg.declare(metadata i8** %__mptr7, metadata !5422, metadata !DIExpression()), !dbg !5424
  %16 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %n, align 8, !dbg !5424
  %next_gref8 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %16, i32 0, i32 0, !dbg !5424
  %next9 = getelementptr inbounds %struct.list_head, %struct.list_head* %next_gref8, i32 0, i32 0, !dbg !5424
  %17 = load %struct.list_head*, %struct.list_head** %next9, align 8, !dbg !5424
  %18 = bitcast %struct.list_head* %17 to i8*, !dbg !5424
  store i8* %18, i8** %__mptr7, align 8, !dbg !5424
  br label %do.body10, !dbg !5424

do.body10:                                        ; preds = %for.inc
  br label %do.end11, !dbg !5425

do.end11:                                         ; preds = %do.body10
  %19 = load i8*, i8** %__mptr7, align 8, !dbg !5424
  %add.ptr13 = getelementptr i8, i8* %19, i64 0, !dbg !5424
  %20 = bitcast i8* %add.ptr13 to %struct.gntalloc_gref*, !dbg !5424
  store %struct.gntalloc_gref* %20, %struct.gntalloc_gref** %tmp12, align 8, !dbg !5425
  %21 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %tmp12, align 8, !dbg !5424
  store %struct.gntalloc_gref* %21, %struct.gntalloc_gref** %n, align 8, !dbg !5412
  br label %for.cond, !dbg !5412, !llvm.loop !5427

for.end:                                          ; preds = %for.cond
  ret void, !dbg !5429
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @add_grefs(%struct.ioctl_gntalloc_alloc_gref* %op, i32* %gref_ids, %struct.gntalloc_file_private_data* %priv) #2 !dbg !5430 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.ioctl_gntalloc_alloc_gref*, align 8
  %gref_ids.addr = alloca i32*, align 8
  %priv.addr = alloca %struct.gntalloc_file_private_data*, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %readonly = alloca i32, align 4
  %queue_gref = alloca %struct.list_head, align 8
  %queue_file = alloca %struct.list_head, align 8
  %gref = alloca %struct.gntalloc_gref*, align 8
  %next3 = alloca %struct.gntalloc_gref*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gntalloc_gref*, align 8
  %__mptr22 = alloca i8*, align 8
  %tmp27 = alloca %struct.gntalloc_gref*, align 8
  %__mptr38 = alloca i8*, align 8
  %tmp43 = alloca %struct.gntalloc_gref*, align 8
  store %struct.ioctl_gntalloc_alloc_gref* %op, %struct.ioctl_gntalloc_alloc_gref** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ioctl_gntalloc_alloc_gref** %op.addr, metadata !5433, metadata !DIExpression()), !dbg !5434
  store i32* %gref_ids, i32** %gref_ids.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %gref_ids.addr, metadata !5435, metadata !DIExpression()), !dbg !5436
  store %struct.gntalloc_file_private_data* %priv, %struct.gntalloc_file_private_data** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gntalloc_file_private_data** %priv.addr, metadata !5437, metadata !DIExpression()), !dbg !5438
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5439, metadata !DIExpression()), !dbg !5440
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5441, metadata !DIExpression()), !dbg !5442
  call void @llvm.dbg.declare(metadata i32* %readonly, metadata !5443, metadata !DIExpression()), !dbg !5444
  call void @llvm.dbg.declare(metadata %struct.list_head* %queue_gref, metadata !5445, metadata !DIExpression()), !dbg !5446
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %queue_gref, i32 0, i32 0, !dbg !5446
  store %struct.list_head* %queue_gref, %struct.list_head** %next, align 8, !dbg !5446
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %queue_gref, i32 0, i32 1, !dbg !5446
  store %struct.list_head* %queue_gref, %struct.list_head** %prev, align 8, !dbg !5446
  call void @llvm.dbg.declare(metadata %struct.list_head* %queue_file, metadata !5447, metadata !DIExpression()), !dbg !5448
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %queue_file, i32 0, i32 0, !dbg !5448
  store %struct.list_head* %queue_file, %struct.list_head** %next1, align 8, !dbg !5448
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %queue_file, i32 0, i32 1, !dbg !5448
  store %struct.list_head* %queue_file, %struct.list_head** %prev2, align 8, !dbg !5448
  call void @llvm.dbg.declare(metadata %struct.gntalloc_gref** %gref, metadata !5449, metadata !DIExpression()), !dbg !5450
  call void @llvm.dbg.declare(metadata %struct.gntalloc_gref** %next3, metadata !5451, metadata !DIExpression()), !dbg !5452
  %0 = load %struct.ioctl_gntalloc_alloc_gref*, %struct.ioctl_gntalloc_alloc_gref** %op.addr, align 8, !dbg !5453
  %flags = getelementptr inbounds %struct.ioctl_gntalloc_alloc_gref, %struct.ioctl_gntalloc_alloc_gref* %0, i32 0, i32 1, !dbg !5454
  %1 = load i16, i16* %flags, align 2, !dbg !5454
  %conv = zext i16 %1 to i32, !dbg !5453
  %and = and i32 %conv, 1, !dbg !5455
  %tobool = icmp ne i32 %and, 0, !dbg !5456
  %lnot = xor i1 %tobool, true, !dbg !5456
  %lnot.ext = zext i1 %lnot to i32, !dbg !5456
  store i32 %lnot.ext, i32* %readonly, align 4, !dbg !5457
  store i32 0, i32* %i, align 4, !dbg !5458
  br label %for.cond, !dbg !5460

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !5461
  %3 = load %struct.ioctl_gntalloc_alloc_gref*, %struct.ioctl_gntalloc_alloc_gref** %op.addr, align 8, !dbg !5463
  %count = getelementptr inbounds %struct.ioctl_gntalloc_alloc_gref, %struct.ioctl_gntalloc_alloc_gref* %3, i32 0, i32 2, !dbg !5464
  %4 = load i32, i32* %count, align 4, !dbg !5464
  %cmp = icmp ult i32 %2, %4, !dbg !5465
  br i1 %cmp, label %for.body, label %for.end, !dbg !5466

for.body:                                         ; preds = %for.cond
  %call = call i8* @kzalloc(i64 64, i32 3264) #10, !dbg !5467
  %5 = bitcast i8* %call to %struct.gntalloc_gref*, !dbg !5467
  store %struct.gntalloc_gref* %5, %struct.gntalloc_gref** %gref, align 8, !dbg !5469
  %6 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5470
  %tobool5 = icmp ne %struct.gntalloc_gref* %6, null, !dbg !5470
  br i1 %tobool5, label %if.end, label %if.then, !dbg !5472

if.then:                                          ; preds = %for.body
  store i32 -12, i32* %rc, align 4, !dbg !5473
  br label %undo, !dbg !5475

if.end:                                           ; preds = %for.body
  %7 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5476
  %next_gref = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %7, i32 0, i32 0, !dbg !5477
  call void @list_add_tail(%struct.list_head* %next_gref, %struct.list_head* %queue_gref) #10, !dbg !5478
  %8 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5479
  %next_file = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %8, i32 0, i32 1, !dbg !5480
  call void @list_add_tail(%struct.list_head* %next_file, %struct.list_head* %queue_file) #10, !dbg !5481
  %9 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5482
  %users = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %9, i32 0, i32 4, !dbg !5483
  store i32 1, i32* %users, align 8, !dbg !5484
  %10 = load %struct.ioctl_gntalloc_alloc_gref*, %struct.ioctl_gntalloc_alloc_gref** %op.addr, align 8, !dbg !5485
  %index = getelementptr inbounds %struct.ioctl_gntalloc_alloc_gref, %struct.ioctl_gntalloc_alloc_gref* %10, i32 0, i32 3, !dbg !5486
  %11 = load i64, i64* %index, align 8, !dbg !5486
  %12 = load i32, i32* %i, align 4, !dbg !5487
  %conv6 = sext i32 %12 to i64, !dbg !5487
  %mul = mul i64 %conv6, 4096, !dbg !5488
  %add = add i64 %11, %mul, !dbg !5489
  %13 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5490
  %file_index = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %13, i32 0, i32 3, !dbg !5491
  store i64 %add, i64* %file_index, align 8, !dbg !5492
  %call7 = call %struct.page* @alloc_pages(i32 3520, i32 0) #10, !dbg !5493
  %14 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5494
  %page = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %14, i32 0, i32 2, !dbg !5495
  store %struct.page* %call7, %struct.page** %page, align 8, !dbg !5496
  %15 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5497
  %page8 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %15, i32 0, i32 2, !dbg !5499
  %16 = load %struct.page*, %struct.page** %page8, align 8, !dbg !5499
  %tobool9 = icmp ne %struct.page* %16, null, !dbg !5497
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5500

if.then10:                                        ; preds = %if.end
  store i32 -12, i32* %rc, align 4, !dbg !5501
  br label %undo, !dbg !5503

if.end11:                                         ; preds = %if.end
  %17 = load %struct.ioctl_gntalloc_alloc_gref*, %struct.ioctl_gntalloc_alloc_gref** %op.addr, align 8, !dbg !5504
  %domid = getelementptr inbounds %struct.ioctl_gntalloc_alloc_gref, %struct.ioctl_gntalloc_alloc_gref* %17, i32 0, i32 0, !dbg !5505
  %18 = load i16, i16* %domid, align 8, !dbg !5505
  %19 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5506
  %page12 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %19, i32 0, i32 2, !dbg !5507
  %20 = load %struct.page*, %struct.page** %page12, align 8, !dbg !5507
  %call13 = call i64 @xen_page_to_gfn(%struct.page* %20) #10, !dbg !5508
  %21 = load i32, i32* %readonly, align 4, !dbg !5509
  %call14 = call i32 @gnttab_grant_foreign_access(i16 zeroext %18, i64 %call13, i32 %21) #10, !dbg !5510
  store i32 %call14, i32* %rc, align 4, !dbg !5511
  %22 = load i32, i32* %rc, align 4, !dbg !5512
  %cmp15 = icmp slt i32 %22, 0, !dbg !5514
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !5515

if.then17:                                        ; preds = %if.end11
  br label %undo, !dbg !5516

if.end18:                                         ; preds = %if.end11
  %23 = load i32, i32* %rc, align 4, !dbg !5517
  %24 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5518
  %gref_id = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %24, i32 0, i32 5, !dbg !5519
  store i32 %23, i32* %gref_id, align 4, !dbg !5520
  %25 = load i32*, i32** %gref_ids.addr, align 8, !dbg !5521
  %26 = load i32, i32* %i, align 4, !dbg !5522
  %idxprom = sext i32 %26 to i64, !dbg !5521
  %arrayidx = getelementptr i32, i32* %25, i64 %idxprom, !dbg !5521
  store i32 %23, i32* %arrayidx, align 4, !dbg !5523
  br label %for.inc, !dbg !5524

for.inc:                                          ; preds = %if.end18
  %27 = load i32, i32* %i, align 4, !dbg !5525
  %inc = add i32 %27, 1, !dbg !5525
  store i32 %inc, i32* %i, align 4, !dbg !5525
  br label %for.cond, !dbg !5526, !llvm.loop !5527

for.end:                                          ; preds = %for.cond
  call void @mutex_lock(%struct.mutex* @gref_mutex) #10, !dbg !5529
  call void @list_splice_tail(%struct.list_head* %queue_gref, %struct.list_head* @gref_list) #10, !dbg !5530
  %28 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv.addr, align 8, !dbg !5531
  %list = getelementptr inbounds %struct.gntalloc_file_private_data, %struct.gntalloc_file_private_data* %28, i32 0, i32 0, !dbg !5532
  call void @list_splice_tail(%struct.list_head* %queue_file, %struct.list_head* %list) #10, !dbg !5533
  call void @mutex_unlock(%struct.mutex* @gref_mutex) #10, !dbg !5534
  store i32 0, i32* %retval, align 4, !dbg !5535
  br label %return, !dbg !5535

undo:                                             ; preds = %if.then17, %if.then10, %if.then
  call void @llvm.dbg.label(metadata !5536), !dbg !5537
  call void @mutex_lock(%struct.mutex* @gref_mutex) #10, !dbg !5538
  %29 = load %struct.ioctl_gntalloc_alloc_gref*, %struct.ioctl_gntalloc_alloc_gref** %op.addr, align 8, !dbg !5539
  %count19 = getelementptr inbounds %struct.ioctl_gntalloc_alloc_gref, %struct.ioctl_gntalloc_alloc_gref* %29, i32 0, i32 2, !dbg !5540
  %30 = load i32, i32* %count19, align 4, !dbg !5540
  %31 = load i32, i32* %i, align 4, !dbg !5541
  %sub = sub i32 %30, %31, !dbg !5542
  %32 = load i32, i32* @gref_size, align 4, !dbg !5543
  %sub20 = sub i32 %32, %sub, !dbg !5543
  store i32 %sub20, i32* @gref_size, align 4, !dbg !5543
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5544, metadata !DIExpression()), !dbg !5547
  %next21 = getelementptr inbounds %struct.list_head, %struct.list_head* %queue_file, i32 0, i32 0, !dbg !5547
  %33 = load %struct.list_head*, %struct.list_head** %next21, align 8, !dbg !5547
  %34 = bitcast %struct.list_head* %33 to i8*, !dbg !5547
  store i8* %34, i8** %__mptr, align 8, !dbg !5547
  br label %do.body, !dbg !5547

do.body:                                          ; preds = %undo
  br label %do.end, !dbg !5548

do.end:                                           ; preds = %do.body
  %35 = load i8*, i8** %__mptr, align 8, !dbg !5547
  %add.ptr = getelementptr i8, i8* %35, i64 -16, !dbg !5547
  %36 = bitcast i8* %add.ptr to %struct.gntalloc_gref*, !dbg !5547
  store %struct.gntalloc_gref* %36, %struct.gntalloc_gref** %tmp, align 8, !dbg !5548
  %37 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %tmp, align 8, !dbg !5547
  store %struct.gntalloc_gref* %37, %struct.gntalloc_gref** %gref, align 8, !dbg !5550
  call void @llvm.dbg.declare(metadata i8** %__mptr22, metadata !5551, metadata !DIExpression()), !dbg !5553
  %38 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5553
  %next_file23 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %38, i32 0, i32 1, !dbg !5553
  %next24 = getelementptr inbounds %struct.list_head, %struct.list_head* %next_file23, i32 0, i32 0, !dbg !5553
  %39 = load %struct.list_head*, %struct.list_head** %next24, align 8, !dbg !5553
  %40 = bitcast %struct.list_head* %39 to i8*, !dbg !5553
  store i8* %40, i8** %__mptr22, align 8, !dbg !5553
  br label %do.body25, !dbg !5553

do.body25:                                        ; preds = %do.end
  br label %do.end26, !dbg !5554

do.end26:                                         ; preds = %do.body25
  %41 = load i8*, i8** %__mptr22, align 8, !dbg !5553
  %add.ptr28 = getelementptr i8, i8* %41, i64 -16, !dbg !5553
  %42 = bitcast i8* %add.ptr28 to %struct.gntalloc_gref*, !dbg !5553
  store %struct.gntalloc_gref* %42, %struct.gntalloc_gref** %tmp27, align 8, !dbg !5554
  %43 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %tmp27, align 8, !dbg !5553
  store %struct.gntalloc_gref* %43, %struct.gntalloc_gref** %next3, align 8, !dbg !5550
  br label %for.cond29, !dbg !5550

for.cond29:                                       ; preds = %do.end42, %do.end26
  %44 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5556
  %next_file30 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %44, i32 0, i32 1, !dbg !5556
  %cmp31 = icmp eq %struct.list_head* %next_file30, %queue_file, !dbg !5556
  %lnot33 = xor i1 %cmp31, true, !dbg !5556
  br i1 %lnot33, label %for.body35, label %for.end45, !dbg !5550

for.body35:                                       ; preds = %for.cond29
  %45 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5558
  %next_file36 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %45, i32 0, i32 1, !dbg !5560
  call void @list_del(%struct.list_head* %next_file36) #10, !dbg !5561
  %46 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !5562
  call void @__del_gref(%struct.gntalloc_gref* %46) #10, !dbg !5563
  br label %for.inc37, !dbg !5564

for.inc37:                                        ; preds = %for.body35
  %47 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %next3, align 8, !dbg !5556
  store %struct.gntalloc_gref* %47, %struct.gntalloc_gref** %gref, align 8, !dbg !5556
  call void @llvm.dbg.declare(metadata i8** %__mptr38, metadata !5565, metadata !DIExpression()), !dbg !5567
  %48 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %next3, align 8, !dbg !5567
  %next_file39 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %48, i32 0, i32 1, !dbg !5567
  %next40 = getelementptr inbounds %struct.list_head, %struct.list_head* %next_file39, i32 0, i32 0, !dbg !5567
  %49 = load %struct.list_head*, %struct.list_head** %next40, align 8, !dbg !5567
  %50 = bitcast %struct.list_head* %49 to i8*, !dbg !5567
  store i8* %50, i8** %__mptr38, align 8, !dbg !5567
  br label %do.body41, !dbg !5567

do.body41:                                        ; preds = %for.inc37
  br label %do.end42, !dbg !5568

do.end42:                                         ; preds = %do.body41
  %51 = load i8*, i8** %__mptr38, align 8, !dbg !5567
  %add.ptr44 = getelementptr i8, i8* %51, i64 -16, !dbg !5567
  %52 = bitcast i8* %add.ptr44 to %struct.gntalloc_gref*, !dbg !5567
  store %struct.gntalloc_gref* %52, %struct.gntalloc_gref** %tmp43, align 8, !dbg !5568
  %53 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %tmp43, align 8, !dbg !5567
  store %struct.gntalloc_gref* %53, %struct.gntalloc_gref** %next3, align 8, !dbg !5556
  br label %for.cond29, !dbg !5556, !llvm.loop !5570

for.end45:                                        ; preds = %for.cond29
  %call46 = call i32 @list_empty(%struct.list_head* %queue_gref) #10, !dbg !5572
  %tobool47 = icmp ne i32 %call46, 0, !dbg !5572
  %lnot48 = xor i1 %tobool47, true, !dbg !5572
  %lnot50 = xor i1 %lnot48, true, !dbg !5572
  %lnot52 = xor i1 %lnot50, true, !dbg !5572
  %lnot.ext53 = zext i1 %lnot52 to i32, !dbg !5572
  %conv54 = sext i32 %lnot.ext53 to i64, !dbg !5572
  %tobool55 = icmp ne i64 %conv54, 0, !dbg !5572
  br i1 %tobool55, label %if.then56, label %if.end57, !dbg !5574

if.then56:                                        ; preds = %for.end45
  call void @list_splice_tail(%struct.list_head* %queue_gref, %struct.list_head* @gref_list) #10, !dbg !5575
  br label %if.end57, !dbg !5575

if.end57:                                         ; preds = %if.then56, %for.end45
  call void @mutex_unlock(%struct.mutex* @gref_mutex) #10, !dbg !5576
  %54 = load i32, i32* %rc, align 4, !dbg !5577
  store i32 %54, i32* %retval, align 4, !dbg !5578
  br label %return, !dbg !5578

return:                                           ; preds = %if.end57, %for.end
  %55 = load i32, i32* %retval, align 4, !dbg !5579
  ret i32 %55, !dbg !5579
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noredzone
declare dso_local i64 @_copy_from_user(i8*, i8*, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #2 !dbg !5580 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5583, metadata !DIExpression()), !dbg !5584
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5585, metadata !DIExpression()), !dbg !5586
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5587, metadata !DIExpression()), !dbg !5589
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5589
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !5590
  %tobool = icmp ne i32 %0, 0, !dbg !5590
  %lnot = xor i1 %tobool, true, !dbg !5590
  %lnot1 = xor i1 %lnot, true, !dbg !5590
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5590
  %conv = sext i32 %lnot.ext to i64, !dbg !5590
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5590
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5589

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5590

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !5592

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !5594

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !5592
  %2 = load i64, i64* %count.addr, align 8, !dbg !5592
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %1, i64 %2) #10, !dbg !5592
  br label %do.body4, !dbg !5592

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !5596

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5598

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !5596

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 134, i32 2313, i64 12) #8, !dbg !5600, !srcloc !5602
  br label %do.end8, !dbg !5600

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #8, !dbg !5603, !srcloc !5605
  br label %do.body9, !dbg !5596

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5606

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !5596

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !5592

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5608

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5592

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !5592

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5589
  %tobool15 = icmp ne i32 %3, 0, !dbg !5589
  %lnot16 = xor i1 %tobool15, true, !dbg !5589
  %lnot18 = xor i1 %lnot16, true, !dbg !5589
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5589
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5589
  store i64 %conv20, i64* %tmp, align 8, !dbg !5590
  %4 = load i64, i64* %tmp, align 8, !dbg !5589
  ret void, !dbg !5610
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #1

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #2 !dbg !5611 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5614, metadata !DIExpression()), !dbg !5615
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5616, metadata !DIExpression()), !dbg !5617
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !5618, metadata !DIExpression()), !dbg !5619
  ret void, !dbg !5620
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #2 !dbg !5621 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4358, metadata !DIExpression()), !dbg !5622
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4370, metadata !DIExpression()), !dbg !5626
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4372, metadata !DIExpression()), !dbg !5627
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4374, metadata !DIExpression()), !dbg !5628
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4376, metadata !DIExpression()), !dbg !5629
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4382, metadata !DIExpression()), !dbg !5631
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4388, metadata !DIExpression()), !dbg !5633
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4397, metadata !DIExpression()), !dbg !5636
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4399, metadata !DIExpression()), !dbg !5637
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4401, metadata !DIExpression()), !dbg !5638
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4403, metadata !DIExpression()), !dbg !5639
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4405, metadata !DIExpression()), !dbg !5640
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4407, metadata !DIExpression()), !dbg !5641
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4409, metadata !DIExpression()), !dbg !5642
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4411, metadata !DIExpression()), !dbg !5643
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5644, metadata !DIExpression()), !dbg !5645
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5646, metadata !DIExpression()), !dbg !5647
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5648, metadata !DIExpression()), !dbg !5649
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !5650, metadata !DIExpression()), !dbg !5651
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !5652, metadata !DIExpression()), !dbg !5655
  %0 = load i64, i64* %n.addr, align 8, !dbg !5655
  store i64 %0, i64* %__a, align 8, !dbg !5655
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !5656, metadata !DIExpression()), !dbg !5655
  %1 = load i64, i64* %size.addr, align 8, !dbg !5655
  store i64 %1, i64* %__b, align 8, !dbg !5655
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !5657, metadata !DIExpression()), !dbg !5655
  store i64* %bytes, i64** %__d, align 8, !dbg !5655
  %cmp = icmp eq i64* %__a, %__b, !dbg !5655
  %conv = zext i1 %cmp to i32, !dbg !5655
  %2 = load i64*, i64** %__d, align 8, !dbg !5655
  %cmp1 = icmp eq i64* %__a, %2, !dbg !5655
  %conv2 = zext i1 %cmp1 to i32, !dbg !5655
  %3 = load i64, i64* %__a, align 8, !dbg !5655
  %4 = load i64, i64* %__b, align 8, !dbg !5655
  %5 = load i64*, i64** %__d, align 8, !dbg !5655
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !5655
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5655
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !5655
  store i64 %8, i64* %5, align 8, !dbg !5655
  %frombool = zext i1 %7 to i8, !dbg !5655
  store i8 %frombool, i8* %tmp, align 1, !dbg !5655
  %9 = load i8, i8* %tmp, align 1, !dbg !5655
  %tobool = trunc i8 %9 to i1, !dbg !5655
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #10, !dbg !5659
  %lnot = xor i1 %call, true, !dbg !5659
  %lnot3 = xor i1 %lnot, true, !dbg !5659
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5659
  %conv4 = sext i32 %lnot.ext to i64, !dbg !5659
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !5659
  br i1 %tobool5, label %if.then, label %if.end, !dbg !5660

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !5661
  br label %return, !dbg !5661

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !5662
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !5663
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !5664

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !5665
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5666
  br i1 %13, label %if.then6, label %if.end8, !dbg !5667

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !5668
  %15 = load i32, i32* %flags.addr, align 4, !dbg !5669
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !5670
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #8, !dbg !5671
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !5672

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !5673
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !5674
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5675

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !5676
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !5677
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !5678
  %call.i.i = call i32 @get_order(i64 %21) #12, !dbg !5679
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5640
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !5680
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5681
  %24 = load i32, i32* %order.i.i, align 4, !dbg !5682
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5683
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5684
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5685
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #13, !dbg !5686
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5686
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5686
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5686
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !5686
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5687
  br label %kmalloc.exit, !dbg !5687

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !5688
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5689
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !5689
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5690

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5691
  br label %kmalloc_index.exit.i, !dbg !5691

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5692
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !5693
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5694

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5695
  br label %kmalloc_index.exit.i, !dbg !5695

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5696
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !5697
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5698

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5699
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !5700
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5701

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5702
  br label %kmalloc_index.exit.i, !dbg !5702

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5703
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !5704
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5705

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5706
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !5707
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5708

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5709
  br label %kmalloc_index.exit.i, !dbg !5709

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5710
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !5711
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5712

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5713
  br label %kmalloc_index.exit.i, !dbg !5713

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5714
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !5715
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5716

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5717
  br label %kmalloc_index.exit.i, !dbg !5717

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5718
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !5719
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5720

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5721
  br label %kmalloc_index.exit.i, !dbg !5721

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5722
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !5723
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5724

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5725
  br label %kmalloc_index.exit.i, !dbg !5725

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5726
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !5727
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5728

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5729
  br label %kmalloc_index.exit.i, !dbg !5729

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5730
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !5731
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5732

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5733
  br label %kmalloc_index.exit.i, !dbg !5733

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5734
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !5735
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5736

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5737
  br label %kmalloc_index.exit.i, !dbg !5737

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5738
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !5739
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5740

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5741
  br label %kmalloc_index.exit.i, !dbg !5741

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5742
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !5743
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5744

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5745
  br label %kmalloc_index.exit.i, !dbg !5745

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5746
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !5747
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5748

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5749
  br label %kmalloc_index.exit.i, !dbg !5749

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5750
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !5751
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5752

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5753
  br label %kmalloc_index.exit.i, !dbg !5753

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5754
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !5755
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5756

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5757
  br label %kmalloc_index.exit.i, !dbg !5757

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5758
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !5759
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5760

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5761
  br label %kmalloc_index.exit.i, !dbg !5761

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5762
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !5763
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5764

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5765
  br label %kmalloc_index.exit.i, !dbg !5765

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5766
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !5767
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5768

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5769
  br label %kmalloc_index.exit.i, !dbg !5769

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5770
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !5771
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5772

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5773
  br label %kmalloc_index.exit.i, !dbg !5773

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5774
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !5775
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5776

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5777
  br label %kmalloc_index.exit.i, !dbg !5777

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5778
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !5779
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5780

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5781
  br label %kmalloc_index.exit.i, !dbg !5781

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5782
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !5783
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5784

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5785
  br label %kmalloc_index.exit.i, !dbg !5785

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5786
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !5787
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5788

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5789
  br label %kmalloc_index.exit.i, !dbg !5789

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5790
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !5791
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5792

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5793
  br label %kmalloc_index.exit.i, !dbg !5793

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5794
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !5795
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5796

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5797
  br label %kmalloc_index.exit.i, !dbg !5797

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5798
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !5799
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5800

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5801
  br label %kmalloc_index.exit.i, !dbg !5801

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5802
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !5803
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5804

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5805
  br label %kmalloc_index.exit.i, !dbg !5805

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !5806, !srcloc !4614
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #8, !dbg !5807, !srcloc !4618
  unreachable, !dbg !5808

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !5809
  store i32 %59, i32* %index.i, align 4, !dbg !5810
  %60 = load i32, i32* %index.i, align 4, !dbg !5811
  %tobool.i = icmp ne i32 %60, 0, !dbg !5811
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5812

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5813
  br label %kmalloc.exit, !dbg !5813

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !5814
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5815
  %and.i.i = and i32 %62, 17, !dbg !5815
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5815
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5815
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5815
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5815
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5816

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5817
  br label %kmalloc_type.exit.i, !dbg !5817

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5818
  %and2.i.i = and i32 %63, 1, !dbg !5819
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5818
  %64 = zext i1 %tobool3.i.i to i64, !dbg !5818
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5818
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5820
  br label %kmalloc_type.exit.i, !dbg !5820

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !5821
  %idxprom.i = zext i32 %65 to i64, !dbg !5822
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5822
  %66 = load i32, i32* %index.i, align 4, !dbg !5823
  %idxprom6.i = zext i32 %66 to i64, !dbg !5822
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5822
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5822
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !5824
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !5825
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5826
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5827
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #13, !dbg !5828
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5828
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5828
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5828
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !5828
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5628
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5829
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !5830
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5831
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5832
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #13, !dbg !5833
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5834
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !5835
  store i8* %76, i8** %retval.i, align 8, !dbg !5836
  br label %kmalloc.exit, !dbg !5836

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !5837
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !5838
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #13, !dbg !5839
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5839
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5839
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5839
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !5839
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5840
  br label %kmalloc.exit, !dbg !5840

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !5841
  store i8* %79, i8** %retval, align 8, !dbg !5842
  br label %return, !dbg !5842

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !5843
  %81 = load i32, i32* %flags.addr, align 4, !dbg !5844
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #10, !dbg !5845
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !5845
  %maskedptr = and i64 %ptrint, 7, !dbg !5845
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !5845
  call void @llvm.assume(i1 %maskcond), !dbg !5845
  store i8* %call9, i8** %retval, align 8, !dbg !5846
  br label %return, !dbg !5846

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !5847
  ret i8* %82, !dbg !5847
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #2 !dbg !5848 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !5852, metadata !DIExpression()), !dbg !5853
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !5854
  %tobool = trunc i8 %0 to i1, !dbg !5854
  %lnot = xor i1 %tobool, true, !dbg !5854
  %lnot1 = xor i1 %lnot, true, !dbg !5854
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5854
  %conv = sext i32 %lnot.ext to i64, !dbg !5854
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5854
  ret i1 %tobool2, !dbg !5855
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !5856 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5860, metadata !DIExpression()), !dbg !5865
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5867, metadata !DIExpression()), !dbg !5868
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5869, metadata !DIExpression()), !dbg !5870
  %0 = load i64, i64* %size.addr, align 8, !dbg !5871
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5873
  br i1 %1, label %if.then, label %if.end447, !dbg !5874

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5875
  %tobool = icmp ne i64 %2, 0, !dbg !5875
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5878

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5879
  br label %return, !dbg !5879

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5880
  %cmp = icmp ult i64 %3, 4096, !dbg !5882
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5883

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5884
  br label %return, !dbg !5884

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub = sub i64 %4, 1, !dbg !5885
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5885
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5885

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub4 = sub i64 %6, 1, !dbg !5885
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5885
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5885

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub6 = sub i64 %8, 1, !dbg !5885
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5885
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5885

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5885

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub9 = sub i64 %9, 1, !dbg !5885
  %and = and i64 %sub9, -9223372036854775808, !dbg !5885
  %tobool10 = icmp ne i64 %and, 0, !dbg !5885
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5885

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5885

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub13 = sub i64 %10, 1, !dbg !5885
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5885
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5885
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5885

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5885

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub18 = sub i64 %11, 1, !dbg !5885
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5885
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5885
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5885

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5885

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub23 = sub i64 %12, 1, !dbg !5885
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5885
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5885
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5885

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5885

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub28 = sub i64 %13, 1, !dbg !5885
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5885
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5885
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5885

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5885

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub33 = sub i64 %14, 1, !dbg !5885
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5885
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5885
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5885

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5885

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub38 = sub i64 %15, 1, !dbg !5885
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5885
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5885
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5885

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5885

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub43 = sub i64 %16, 1, !dbg !5885
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5885
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5885
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5885

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5885

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub48 = sub i64 %17, 1, !dbg !5885
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5885
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5885
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5885

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5885

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub53 = sub i64 %18, 1, !dbg !5885
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5885
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5885
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5885

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5885

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub58 = sub i64 %19, 1, !dbg !5885
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5885
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5885
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5885

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5885

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub63 = sub i64 %20, 1, !dbg !5885
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5885
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5885
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5885

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5885

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub68 = sub i64 %21, 1, !dbg !5885
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5885
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5885
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5885

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5885

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub73 = sub i64 %22, 1, !dbg !5885
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5885
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5885
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5885

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5885

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub78 = sub i64 %23, 1, !dbg !5885
  %and79 = and i64 %sub78, 562949953421312, !dbg !5885
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5885
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5885

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5885

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub83 = sub i64 %24, 1, !dbg !5885
  %and84 = and i64 %sub83, 281474976710656, !dbg !5885
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5885
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5885

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5885

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub88 = sub i64 %25, 1, !dbg !5885
  %and89 = and i64 %sub88, 140737488355328, !dbg !5885
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5885
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5885

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5885

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub93 = sub i64 %26, 1, !dbg !5885
  %and94 = and i64 %sub93, 70368744177664, !dbg !5885
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5885
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5885

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5885

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub98 = sub i64 %27, 1, !dbg !5885
  %and99 = and i64 %sub98, 35184372088832, !dbg !5885
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5885
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5885

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5885

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub103 = sub i64 %28, 1, !dbg !5885
  %and104 = and i64 %sub103, 17592186044416, !dbg !5885
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5885
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5885

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5885

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub108 = sub i64 %29, 1, !dbg !5885
  %and109 = and i64 %sub108, 8796093022208, !dbg !5885
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5885
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5885

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5885

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub113 = sub i64 %30, 1, !dbg !5885
  %and114 = and i64 %sub113, 4398046511104, !dbg !5885
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5885
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5885

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5885

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub118 = sub i64 %31, 1, !dbg !5885
  %and119 = and i64 %sub118, 2199023255552, !dbg !5885
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5885
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5885

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5885

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub123 = sub i64 %32, 1, !dbg !5885
  %and124 = and i64 %sub123, 1099511627776, !dbg !5885
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5885
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5885

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5885

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub128 = sub i64 %33, 1, !dbg !5885
  %and129 = and i64 %sub128, 549755813888, !dbg !5885
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5885
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5885

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5885

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub133 = sub i64 %34, 1, !dbg !5885
  %and134 = and i64 %sub133, 274877906944, !dbg !5885
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5885
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5885

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5885

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub138 = sub i64 %35, 1, !dbg !5885
  %and139 = and i64 %sub138, 137438953472, !dbg !5885
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5885
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5885

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5885

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub143 = sub i64 %36, 1, !dbg !5885
  %and144 = and i64 %sub143, 68719476736, !dbg !5885
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5885
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5885

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5885

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub148 = sub i64 %37, 1, !dbg !5885
  %and149 = and i64 %sub148, 34359738368, !dbg !5885
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5885
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5885

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5885

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub153 = sub i64 %38, 1, !dbg !5885
  %and154 = and i64 %sub153, 17179869184, !dbg !5885
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5885
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5885

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5885

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub158 = sub i64 %39, 1, !dbg !5885
  %and159 = and i64 %sub158, 8589934592, !dbg !5885
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5885
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5885

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5885

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub163 = sub i64 %40, 1, !dbg !5885
  %and164 = and i64 %sub163, 4294967296, !dbg !5885
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5885
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5885

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5885

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub168 = sub i64 %41, 1, !dbg !5885
  %and169 = and i64 %sub168, 2147483648, !dbg !5885
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5885
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5885

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5885

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub173 = sub i64 %42, 1, !dbg !5885
  %and174 = and i64 %sub173, 1073741824, !dbg !5885
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5885
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5885

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5885

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub178 = sub i64 %43, 1, !dbg !5885
  %and179 = and i64 %sub178, 536870912, !dbg !5885
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5885
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5885

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5885

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub183 = sub i64 %44, 1, !dbg !5885
  %and184 = and i64 %sub183, 268435456, !dbg !5885
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5885
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5885

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5885

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub188 = sub i64 %45, 1, !dbg !5885
  %and189 = and i64 %sub188, 134217728, !dbg !5885
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5885
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5885

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5885

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub193 = sub i64 %46, 1, !dbg !5885
  %and194 = and i64 %sub193, 67108864, !dbg !5885
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5885
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5885

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5885

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub198 = sub i64 %47, 1, !dbg !5885
  %and199 = and i64 %sub198, 33554432, !dbg !5885
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5885
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5885

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5885

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub203 = sub i64 %48, 1, !dbg !5885
  %and204 = and i64 %sub203, 16777216, !dbg !5885
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5885
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5885

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5885

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub208 = sub i64 %49, 1, !dbg !5885
  %and209 = and i64 %sub208, 8388608, !dbg !5885
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5885
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5885

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5885

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub213 = sub i64 %50, 1, !dbg !5885
  %and214 = and i64 %sub213, 4194304, !dbg !5885
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5885
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5885

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5885

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub218 = sub i64 %51, 1, !dbg !5885
  %and219 = and i64 %sub218, 2097152, !dbg !5885
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5885
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5885

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5885

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub223 = sub i64 %52, 1, !dbg !5885
  %and224 = and i64 %sub223, 1048576, !dbg !5885
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5885
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5885

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5885

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub228 = sub i64 %53, 1, !dbg !5885
  %and229 = and i64 %sub228, 524288, !dbg !5885
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5885
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5885

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5885

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub233 = sub i64 %54, 1, !dbg !5885
  %and234 = and i64 %sub233, 262144, !dbg !5885
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5885
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5885

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5885

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub238 = sub i64 %55, 1, !dbg !5885
  %and239 = and i64 %sub238, 131072, !dbg !5885
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5885
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5885

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5885

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub243 = sub i64 %56, 1, !dbg !5885
  %and244 = and i64 %sub243, 65536, !dbg !5885
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5885
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5885

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5885

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub248 = sub i64 %57, 1, !dbg !5885
  %and249 = and i64 %sub248, 32768, !dbg !5885
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5885
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5885

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5885

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub253 = sub i64 %58, 1, !dbg !5885
  %and254 = and i64 %sub253, 16384, !dbg !5885
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5885
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5885

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5885

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub258 = sub i64 %59, 1, !dbg !5885
  %and259 = and i64 %sub258, 8192, !dbg !5885
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5885
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5885

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5885

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub263 = sub i64 %60, 1, !dbg !5885
  %and264 = and i64 %sub263, 4096, !dbg !5885
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5885
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5885

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5885

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub268 = sub i64 %61, 1, !dbg !5885
  %and269 = and i64 %sub268, 2048, !dbg !5885
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5885
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5885

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5885

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub273 = sub i64 %62, 1, !dbg !5885
  %and274 = and i64 %sub273, 1024, !dbg !5885
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5885
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5885

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5885

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub278 = sub i64 %63, 1, !dbg !5885
  %and279 = and i64 %sub278, 512, !dbg !5885
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5885
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5885

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5885

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub283 = sub i64 %64, 1, !dbg !5885
  %and284 = and i64 %sub283, 256, !dbg !5885
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5885
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5885

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5885

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub288 = sub i64 %65, 1, !dbg !5885
  %and289 = and i64 %sub288, 128, !dbg !5885
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5885
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5885

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5885

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub293 = sub i64 %66, 1, !dbg !5885
  %and294 = and i64 %sub293, 64, !dbg !5885
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5885
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5885

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5885

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub298 = sub i64 %67, 1, !dbg !5885
  %and299 = and i64 %sub298, 32, !dbg !5885
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5885
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5885

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5885

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub303 = sub i64 %68, 1, !dbg !5885
  %and304 = and i64 %sub303, 16, !dbg !5885
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5885
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5885

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5885

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub308 = sub i64 %69, 1, !dbg !5885
  %and309 = and i64 %sub308, 8, !dbg !5885
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5885
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5885

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5885

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub313 = sub i64 %70, 1, !dbg !5885
  %and314 = and i64 %sub313, 4, !dbg !5885
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5885
  %71 = zext i1 %tobool315 to i64, !dbg !5885
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5885
  br label %cond.end, !dbg !5885

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5885
  br label %cond.end317, !dbg !5885

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5885
  br label %cond.end319, !dbg !5885

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5885
  br label %cond.end321, !dbg !5885

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5885
  br label %cond.end323, !dbg !5885

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5885
  br label %cond.end325, !dbg !5885

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5885
  br label %cond.end327, !dbg !5885

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5885
  br label %cond.end329, !dbg !5885

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5885
  br label %cond.end331, !dbg !5885

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5885
  br label %cond.end333, !dbg !5885

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5885
  br label %cond.end335, !dbg !5885

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5885
  br label %cond.end337, !dbg !5885

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5885
  br label %cond.end339, !dbg !5885

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5885
  br label %cond.end341, !dbg !5885

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5885
  br label %cond.end343, !dbg !5885

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5885
  br label %cond.end345, !dbg !5885

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5885
  br label %cond.end347, !dbg !5885

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5885
  br label %cond.end349, !dbg !5885

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5885
  br label %cond.end351, !dbg !5885

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5885
  br label %cond.end353, !dbg !5885

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5885
  br label %cond.end355, !dbg !5885

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5885
  br label %cond.end357, !dbg !5885

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5885
  br label %cond.end359, !dbg !5885

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5885
  br label %cond.end361, !dbg !5885

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5885
  br label %cond.end363, !dbg !5885

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5885
  br label %cond.end365, !dbg !5885

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5885
  br label %cond.end367, !dbg !5885

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5885
  br label %cond.end369, !dbg !5885

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5885
  br label %cond.end371, !dbg !5885

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5885
  br label %cond.end373, !dbg !5885

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5885
  br label %cond.end375, !dbg !5885

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5885
  br label %cond.end377, !dbg !5885

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5885
  br label %cond.end379, !dbg !5885

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5885
  br label %cond.end381, !dbg !5885

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5885
  br label %cond.end383, !dbg !5885

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5885
  br label %cond.end385, !dbg !5885

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5885
  br label %cond.end387, !dbg !5885

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5885
  br label %cond.end389, !dbg !5885

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5885
  br label %cond.end391, !dbg !5885

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5885
  br label %cond.end393, !dbg !5885

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5885
  br label %cond.end395, !dbg !5885

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5885
  br label %cond.end397, !dbg !5885

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5885
  br label %cond.end399, !dbg !5885

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5885
  br label %cond.end401, !dbg !5885

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5885
  br label %cond.end403, !dbg !5885

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5885
  br label %cond.end405, !dbg !5885

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5885
  br label %cond.end407, !dbg !5885

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5885
  br label %cond.end409, !dbg !5885

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5885
  br label %cond.end411, !dbg !5885

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5885
  br label %cond.end413, !dbg !5885

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5885
  br label %cond.end415, !dbg !5885

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5885
  br label %cond.end417, !dbg !5885

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5885
  br label %cond.end419, !dbg !5885

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5885
  br label %cond.end421, !dbg !5885

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5885
  br label %cond.end423, !dbg !5885

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5885
  br label %cond.end425, !dbg !5885

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5885
  br label %cond.end427, !dbg !5885

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5885
  br label %cond.end429, !dbg !5885

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5885
  br label %cond.end431, !dbg !5885

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5885
  br label %cond.end433, !dbg !5885

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5885
  br label %cond.end435, !dbg !5885

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5885
  br label %cond.end437, !dbg !5885

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5885
  br label %cond.end440, !dbg !5885

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5885

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5885
  br label %cond.end444, !dbg !5885

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5885
  %sub443 = sub i64 %72, 1, !dbg !5885
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !5885
  br label %cond.end444, !dbg !5885

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5885
  %sub446 = sub i32 %cond445, 12, !dbg !5886
  %add = add i32 %sub446, 1, !dbg !5887
  store i32 %add, i32* %retval, align 4, !dbg !5888
  br label %return, !dbg !5888

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5889
  %dec = add i64 %73, -1, !dbg !5889
  store i64 %dec, i64* %size.addr, align 8, !dbg !5889
  %74 = load i64, i64* %size.addr, align 8, !dbg !5890
  %shr = lshr i64 %74, 12, !dbg !5890
  store i64 %shr, i64* %size.addr, align 8, !dbg !5890
  %75 = load i64, i64* %size.addr, align 8, !dbg !5891
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5868
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5892
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5893
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !5892, !srcloc !5894
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5892
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5895
  %add.i = add i32 %79, 1, !dbg !5896
  store i32 %add.i, i32* %retval, align 4, !dbg !5897
  br label %return, !dbg !5897

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5898
  ret i32 %80, !dbg !5898
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5899 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5860, metadata !DIExpression()), !dbg !5903
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5867, metadata !DIExpression()), !dbg !5905
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5906, metadata !DIExpression()), !dbg !5907
  %0 = load i64, i64* %n.addr, align 8, !dbg !5908
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5905
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5909
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5910
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !5909, !srcloc !5894
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5909
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5911
  %add.i = add i32 %4, 1, !dbg !5912
  %sub = sub i32 %add.i, 1, !dbg !5913
  ret i32 %sub, !dbg !5914
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !5915 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5919, metadata !DIExpression()), !dbg !5920
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5921, metadata !DIExpression()), !dbg !5922
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5923, metadata !DIExpression()), !dbg !5924
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5925, metadata !DIExpression()), !dbg !5926
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5927
  ret i8* %0, !dbg !5928
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__del_gref(%struct.gntalloc_gref* %gref) #2 !dbg !5929 {
entry:
  %gref.addr = alloca %struct.gntalloc_gref*, align 8
  %tmp = alloca i8*, align 8
  store %struct.gntalloc_gref* %gref, %struct.gntalloc_gref** %gref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gntalloc_gref** %gref.addr, metadata !5932, metadata !DIExpression()), !dbg !5933
  %0 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref.addr, align 8, !dbg !5934
  %notify = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %0, i32 0, i32 6, !dbg !5936
  %1 = bitcast %struct.notify_info* %notify to i16*, !dbg !5937
  %bf.load = load i16, i16* %1, align 8, !dbg !5937
  %bf.lshr = lshr i16 %bf.load, 12, !dbg !5937
  %bf.clear = and i16 %bf.lshr, 3, !dbg !5937
  %conv = zext i16 %bf.clear to i32, !dbg !5934
  %and = and i32 %conv, 1, !dbg !5938
  %tobool = icmp ne i32 %and, 0, !dbg !5938
  br i1 %tobool, label %if.then, label %if.end, !dbg !5939

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %tmp, metadata !5940, metadata !DIExpression()), !dbg !5944
  %2 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref.addr, align 8, !dbg !5945
  %page = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %2, i32 0, i32 2, !dbg !5946
  %3 = load %struct.page*, %struct.page** %page, align 8, !dbg !5946
  %call = call i8* @kmap(%struct.page* %3) #10, !dbg !5947
  store i8* %call, i8** %tmp, align 8, !dbg !5944
  %4 = load i8*, i8** %tmp, align 8, !dbg !5948
  %5 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref.addr, align 8, !dbg !5949
  %notify1 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %5, i32 0, i32 6, !dbg !5950
  %6 = bitcast %struct.notify_info* %notify1 to i16*, !dbg !5951
  %bf.load2 = load i16, i16* %6, align 8, !dbg !5951
  %bf.clear3 = and i16 %bf.load2, 4095, !dbg !5951
  %idxprom = zext i16 %bf.clear3 to i64, !dbg !5948
  %arrayidx = getelementptr i8, i8* %4, i64 %idxprom, !dbg !5948
  store i8 0, i8* %arrayidx, align 1, !dbg !5952
  %7 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref.addr, align 8, !dbg !5953
  %page4 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %7, i32 0, i32 2, !dbg !5954
  %8 = load %struct.page*, %struct.page** %page4, align 8, !dbg !5954
  call void @kunmap(%struct.page* %8) #10, !dbg !5955
  br label %if.end, !dbg !5956

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref.addr, align 8, !dbg !5957
  %notify5 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %9, i32 0, i32 6, !dbg !5959
  %10 = bitcast %struct.notify_info* %notify5 to i16*, !dbg !5960
  %bf.load6 = load i16, i16* %10, align 8, !dbg !5960
  %bf.lshr7 = lshr i16 %bf.load6, 12, !dbg !5960
  %bf.clear8 = and i16 %bf.lshr7, 3, !dbg !5960
  %conv9 = zext i16 %bf.clear8 to i32, !dbg !5957
  %and10 = and i32 %conv9, 2, !dbg !5961
  %tobool11 = icmp ne i32 %and10, 0, !dbg !5961
  br i1 %tobool11, label %if.then12, label %if.end16, !dbg !5962

if.then12:                                        ; preds = %if.end
  %11 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref.addr, align 8, !dbg !5963
  %notify13 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %11, i32 0, i32 6, !dbg !5965
  %event = getelementptr inbounds %struct.notify_info, %struct.notify_info* %notify13, i32 0, i32 1, !dbg !5966
  %12 = load i32, i32* %event, align 4, !dbg !5966
  call void @notify_remote_via_evtchn(i32 %12) #10, !dbg !5967
  %13 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref.addr, align 8, !dbg !5968
  %notify14 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %13, i32 0, i32 6, !dbg !5969
  %event15 = getelementptr inbounds %struct.notify_info, %struct.notify_info* %notify14, i32 0, i32 1, !dbg !5970
  %14 = load i32, i32* %event15, align 4, !dbg !5970
  call void @evtchn_put(i32 %14) #10, !dbg !5971
  br label %if.end16, !dbg !5972

if.end16:                                         ; preds = %if.then12, %if.end
  %15 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref.addr, align 8, !dbg !5973
  %notify17 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %15, i32 0, i32 6, !dbg !5974
  %16 = bitcast %struct.notify_info* %notify17 to i16*, !dbg !5975
  %bf.load18 = load i16, i16* %16, align 8, !dbg !5976
  %bf.clear19 = and i16 %bf.load18, -12289, !dbg !5976
  store i16 %bf.clear19, i16* %16, align 8, !dbg !5976
  %17 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref.addr, align 8, !dbg !5977
  %gref_id = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %17, i32 0, i32 5, !dbg !5979
  %18 = load i32, i32* %gref_id, align 4, !dbg !5979
  %tobool20 = icmp ne i32 %18, 0, !dbg !5977
  br i1 %tobool20, label %if.then21, label %if.end33, !dbg !5980

if.then21:                                        ; preds = %if.end16
  %19 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref.addr, align 8, !dbg !5981
  %gref_id22 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %19, i32 0, i32 5, !dbg !5984
  %20 = load i32, i32* %gref_id22, align 4, !dbg !5984
  %call23 = call i32 @gnttab_query_foreign_access(i32 %20) #10, !dbg !5985
  %tobool24 = icmp ne i32 %call23, 0, !dbg !5985
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5986

if.then25:                                        ; preds = %if.then21
  br label %return, !dbg !5987

if.end26:                                         ; preds = %if.then21
  %21 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref.addr, align 8, !dbg !5988
  %gref_id27 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %21, i32 0, i32 5, !dbg !5990
  %22 = load i32, i32* %gref_id27, align 4, !dbg !5990
  %call28 = call i32 @gnttab_end_foreign_access_ref(i32 %22, i32 0) #10, !dbg !5991
  %tobool29 = icmp ne i32 %call28, 0, !dbg !5991
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !5992

if.then30:                                        ; preds = %if.end26
  br label %return, !dbg !5993

if.end31:                                         ; preds = %if.end26
  %23 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref.addr, align 8, !dbg !5994
  %gref_id32 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %23, i32 0, i32 5, !dbg !5995
  %24 = load i32, i32* %gref_id32, align 4, !dbg !5995
  call void @gnttab_free_grant_reference(i32 %24) #10, !dbg !5996
  br label %if.end33, !dbg !5997

if.end33:                                         ; preds = %if.end31, %if.end16
  %25 = load i32, i32* @gref_size, align 4, !dbg !5998
  %dec = add i32 %25, -1, !dbg !5998
  store i32 %dec, i32* @gref_size, align 4, !dbg !5998
  %26 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref.addr, align 8, !dbg !5999
  %next_gref = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %26, i32 0, i32 0, !dbg !6000
  call void @list_del(%struct.list_head* %next_gref) #10, !dbg !6001
  %27 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref.addr, align 8, !dbg !6002
  %page34 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %27, i32 0, i32 2, !dbg !6004
  %28 = load %struct.page*, %struct.page** %page34, align 8, !dbg !6004
  %tobool35 = icmp ne %struct.page* %28, null, !dbg !6002
  br i1 %tobool35, label %if.then36, label %if.end38, !dbg !6005

if.then36:                                        ; preds = %if.end33
  %29 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref.addr, align 8, !dbg !6006
  %page37 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %29, i32 0, i32 2, !dbg !6006
  %30 = load %struct.page*, %struct.page** %page37, align 8, !dbg !6006
  call void @__free_pages(%struct.page* %30, i32 0) #10, !dbg !6006
  br label %if.end38, !dbg !6006

if.end38:                                         ; preds = %if.then36, %if.end33
  %31 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref.addr, align 8, !dbg !6007
  %32 = bitcast %struct.gntalloc_gref* %31 to i8*, !dbg !6007
  call void @kfree(i8* %32) #10, !dbg !6008
  br label %return, !dbg !6009

return:                                           ; preds = %if.end38, %if.then30, %if.then25
  ret void, !dbg !6009
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmap(%struct.page* %page) #2 !dbg !6010 {
entry:
  %page.addr.i = alloca %struct.page*, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr.i, metadata !6014, metadata !DIExpression()), !dbg !6020
  %page.addr = alloca %struct.page*, align 8
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !6022, metadata !DIExpression()), !dbg !6023
  br label %do.body, !dbg !6024

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6025

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6027

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !6025

do.end2:                                          ; preds = %do.end
  %0 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !6029
  store %struct.page* %0, %struct.page** %page.addr.i, align 8
  %1 = load %struct.page*, %struct.page** %page.addr.i, align 8, !dbg !6030
  %2 = load i64, i64* @vmemmap_base, align 8, !dbg !6030
  %3 = inttoptr i64 %2 to %struct.page*, !dbg !6030
  %sub.ptr.lhs.cast.i = ptrtoint %struct.page* %1 to i64, !dbg !6030
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %2, !dbg !6030
  %sub.ptr.div.i = sdiv exact i64 %sub.ptr.sub.i, 64, !dbg !6030
  %shl.i = shl i64 %sub.ptr.div.i, 12, !dbg !6030
  %4 = load i64, i64* @page_offset_base, align 8, !dbg !6030
  %add.i = add i64 %shl.i, %4, !dbg !6030
  %5 = inttoptr i64 %add.i to i8*, !dbg !6030
  ret i8* %5, !dbg !6031
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kunmap(%struct.page* %page) #2 !dbg !6032 {
entry:
  %page.addr = alloca %struct.page*, align 8
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !6033, metadata !DIExpression()), !dbg !6034
  ret void, !dbg !6035
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @notify_remote_via_evtchn(i32 %port) #2 !dbg !6036 {
entry:
  %port.addr = alloca i32, align 4
  %send = alloca %struct.evtchn_send, align 4
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !6042, metadata !DIExpression()), !dbg !6043
  call void @llvm.dbg.declare(metadata %struct.evtchn_send* %send, metadata !6044, metadata !DIExpression()), !dbg !6048
  %port1 = getelementptr inbounds %struct.evtchn_send, %struct.evtchn_send* %send, i32 0, i32 0, !dbg !6049
  %0 = load i32, i32* %port.addr, align 4, !dbg !6050
  store i32 %0, i32* %port1, align 4, !dbg !6049
  %1 = bitcast %struct.evtchn_send* %send to i8*, !dbg !6051
  %call = call i32 @HYPERVISOR_event_channel_op(i32 4, i8* %1) #10, !dbg !6052
  ret void, !dbg !6053
}

; Function Attrs: noredzone
declare dso_local void @evtchn_put(i32) #1

; Function Attrs: noredzone
declare dso_local i32 @gnttab_query_foreign_access(i32) #1

; Function Attrs: noredzone
declare dso_local i32 @gnttab_end_foreign_access_ref(i32, i32) #1

; Function Attrs: noredzone
declare dso_local void @gnttab_free_grant_reference(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #2 !dbg !6054 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6060
  call void @__list_del_entry(%struct.list_head* %0) #10, !dbg !6061
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6062
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !6063
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !6064
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6065
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !6066
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !6067
  ret void, !dbg !6068
}

; Function Attrs: noredzone
declare dso_local void @__free_pages(%struct.page*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @HYPERVISOR_event_channel_op(i32 %cmd, i8* %arg) #2 !dbg !6069 {
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
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !6073, metadata !DIExpression()), !dbg !6074
  store i8* %arg, i8** %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !6075, metadata !DIExpression()), !dbg !6076
  call void @llvm.dbg.declare(metadata i64* %__res, metadata !6077, metadata !DIExpression()), !dbg !6079
  call void @llvm.dbg.declare(metadata i64* %__arg1, metadata !6080, metadata !DIExpression()), !dbg !6079
  %0 = load i64, i64* %__arg1, align 8, !dbg !6079
  store i64 %0, i64* %__arg1, align 8, !dbg !6079
  call void @llvm.dbg.declare(metadata i64* %__arg2, metadata !6081, metadata !DIExpression()), !dbg !6079
  %1 = load i64, i64* %__arg2, align 8, !dbg !6079
  store i64 %1, i64* %__arg2, align 8, !dbg !6079
  call void @llvm.dbg.declare(metadata i64* %__arg3, metadata !6082, metadata !DIExpression()), !dbg !6079
  %2 = load i64, i64* %__arg3, align 8, !dbg !6079
  store i64 %2, i64* %__arg3, align 8, !dbg !6079
  call void @llvm.dbg.declare(metadata i64* %__arg4, metadata !6083, metadata !DIExpression()), !dbg !6079
  %3 = load i64, i64* %__arg4, align 8, !dbg !6079
  store i64 %3, i64* %__arg4, align 8, !dbg !6079
  call void @llvm.dbg.declare(metadata i64* %__arg5, metadata !6084, metadata !DIExpression()), !dbg !6079
  %4 = load i64, i64* %__arg5, align 8, !dbg !6079
  store i64 %4, i64* %__arg5, align 8, !dbg !6079
  %5 = load i32, i32* %cmd.addr, align 4, !dbg !6079
  %conv = sext i32 %5 to i64, !dbg !6079
  store i64 %conv, i64* %__arg1, align 8, !dbg !6079
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !6079
  %7 = ptrtoint i8* %6 to i64, !dbg !6079
  store i64 %7, i64* %__arg2, align 8, !dbg !6079
  %8 = call i64 @llvm.read_register.i64(metadata !4287), !dbg !6079
  %9 = load i64, i64* %__arg1, align 8, !dbg !6079
  %10 = load i64, i64* %__arg2, align 8, !dbg !6079
  %11 = call { i64, i64, i64, i64 } asm sideeffect "call hypercall_page+${4:c}", "={rax},={rsp},={rdi},={rsi},i,1,2,3,~{memory},~{r8},~{r10},~{rdx},~{dirflag},~{fpsr},~{flags}"(i64 1024, i64 %8, i64 %9, i64 %10) #8, !dbg !6079, !srcloc !6085
  %asmresult = extractvalue { i64, i64, i64, i64 } %11, 0, !dbg !6079
  %asmresult1 = extractvalue { i64, i64, i64, i64 } %11, 1, !dbg !6079
  %asmresult2 = extractvalue { i64, i64, i64, i64 } %11, 2, !dbg !6079
  %asmresult3 = extractvalue { i64, i64, i64, i64 } %11, 3, !dbg !6079
  store i64 %asmresult, i64* %__res, align 8, !dbg !6079
  call void @llvm.write_register.i64(metadata !4287, i64 %asmresult1), !dbg !6079
  store i64 %asmresult2, i64* %__arg1, align 8, !dbg !6079
  store i64 %asmresult3, i64* %__arg2, align 8, !dbg !6079
  %12 = load i64, i64* %__res, align 8, !dbg !6079
  %conv4 = trunc i64 %12 to i32, !dbg !6079
  store i32 %conv4, i32* %tmp, align 4, !dbg !6079
  %13 = load i32, i32* %tmp, align 4, !dbg !6079
  ret i32 %13, !dbg !6086
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #2 !dbg !6087 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6088, metadata !DIExpression()), !dbg !6089
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6090
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #10, !dbg !6092
  br i1 %call, label %if.end, label %if.then, !dbg !6093

if.then:                                          ; preds = %entry
  br label %return, !dbg !6094

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6095
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6096
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6096
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !6097
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6098
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6098
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #10, !dbg !6099
  br label %return, !dbg !6100

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6100
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #2 !dbg !6101 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !6104, metadata !DIExpression()), !dbg !6105
  ret i1 true, !dbg !6106
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !6107 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6110, metadata !DIExpression()), !dbg !6111
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6112, metadata !DIExpression()), !dbg !6113
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6114
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6115
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6116
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !6117
  br label %do.body, !dbg !6118

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6119

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6121

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6119

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6123
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6123
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !6123
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !6123
  br label %do.end5, !dbg !6123

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6119

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6125
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #2 !dbg !6126 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4358, metadata !DIExpression()), !dbg !6127
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4370, metadata !DIExpression()), !dbg !6130
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4372, metadata !DIExpression()), !dbg !6131
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4374, metadata !DIExpression()), !dbg !6132
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4376, metadata !DIExpression()), !dbg !6133
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4382, metadata !DIExpression()), !dbg !6135
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4388, metadata !DIExpression()), !dbg !6137
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4397, metadata !DIExpression()), !dbg !6140
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4399, metadata !DIExpression()), !dbg !6141
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4401, metadata !DIExpression()), !dbg !6142
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4403, metadata !DIExpression()), !dbg !6143
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4405, metadata !DIExpression()), !dbg !6144
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4407, metadata !DIExpression()), !dbg !6145
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4409, metadata !DIExpression()), !dbg !6146
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4411, metadata !DIExpression()), !dbg !6147
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6148, metadata !DIExpression()), !dbg !6149
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6150, metadata !DIExpression()), !dbg !6151
  %0 = load i64, i64* %size.addr, align 8, !dbg !6152
  %1 = load i32, i32* %flags.addr, align 4, !dbg !6153
  %or = or i32 %1, 256, !dbg !6154
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !6155
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !6156
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !6157

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6158
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !6159
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6160

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !6161
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !6162
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6163
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !6164
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6144
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !6165
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6166
  %10 = load i32, i32* %order.i.i, align 4, !dbg !6167
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6168
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6169
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6170
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !6171
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6171
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6171
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6171
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !6171
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6172
  br label %kmalloc.exit, !dbg !6172

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !6173
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6174
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !6174
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6175

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6176
  br label %kmalloc_index.exit.i, !dbg !6176

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6177
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !6178
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6179

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6180
  br label %kmalloc_index.exit.i, !dbg !6180

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6181
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !6182
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6183

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6184
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !6185
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6186

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6187
  br label %kmalloc_index.exit.i, !dbg !6187

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6188
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !6189
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6190

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6191
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !6192
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6193

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6194
  br label %kmalloc_index.exit.i, !dbg !6194

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6195
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !6196
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6197

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6198
  br label %kmalloc_index.exit.i, !dbg !6198

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6199
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !6200
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6201

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6202
  br label %kmalloc_index.exit.i, !dbg !6202

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6203
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !6204
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6205

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6206
  br label %kmalloc_index.exit.i, !dbg !6206

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6207
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !6208
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6209

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6210
  br label %kmalloc_index.exit.i, !dbg !6210

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6211
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !6212
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6213

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6214
  br label %kmalloc_index.exit.i, !dbg !6214

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6215
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !6216
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6217

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6218
  br label %kmalloc_index.exit.i, !dbg !6218

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6219
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !6220
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6221

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6222
  br label %kmalloc_index.exit.i, !dbg !6222

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6223
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !6224
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6225

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6226
  br label %kmalloc_index.exit.i, !dbg !6226

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6227
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !6228
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6229

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6230
  br label %kmalloc_index.exit.i, !dbg !6230

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6231
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !6232
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6233

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6234
  br label %kmalloc_index.exit.i, !dbg !6234

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6235
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !6236
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6237

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6238
  br label %kmalloc_index.exit.i, !dbg !6238

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6239
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !6240
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6241

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6242
  br label %kmalloc_index.exit.i, !dbg !6242

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6243
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !6244
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6245

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6246
  br label %kmalloc_index.exit.i, !dbg !6246

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6247
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !6248
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6249

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6250
  br label %kmalloc_index.exit.i, !dbg !6250

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6251
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !6252
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6253

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6254
  br label %kmalloc_index.exit.i, !dbg !6254

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6255
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !6256
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6257

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6258
  br label %kmalloc_index.exit.i, !dbg !6258

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6259
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !6260
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6261

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6262
  br label %kmalloc_index.exit.i, !dbg !6262

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6263
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !6264
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6265

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6266
  br label %kmalloc_index.exit.i, !dbg !6266

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6267
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !6268
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6269

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6270
  br label %kmalloc_index.exit.i, !dbg !6270

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6271
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !6272
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6273

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6274
  br label %kmalloc_index.exit.i, !dbg !6274

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6275
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !6276
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6277

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6278
  br label %kmalloc_index.exit.i, !dbg !6278

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6279
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !6280
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6281

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6282
  br label %kmalloc_index.exit.i, !dbg !6282

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6283
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !6284
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6285

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6286
  br label %kmalloc_index.exit.i, !dbg !6286

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6287
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !6288
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6289

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6290
  br label %kmalloc_index.exit.i, !dbg !6290

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !6291, !srcloc !4614
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #8, !dbg !6292, !srcloc !4618
  unreachable, !dbg !6293

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !6294
  store i32 %45, i32* %index.i, align 4, !dbg !6295
  %46 = load i32, i32* %index.i, align 4, !dbg !6296
  %tobool.i = icmp ne i32 %46, 0, !dbg !6296
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6297

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6298
  br label %kmalloc.exit, !dbg !6298

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !6299
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6300
  %and.i.i = and i32 %48, 17, !dbg !6300
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6300
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6300
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6300
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6300
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6301

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6302
  br label %kmalloc_type.exit.i, !dbg !6302

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6303
  %and2.i.i = and i32 %49, 1, !dbg !6304
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6303
  %50 = zext i1 %tobool3.i.i to i64, !dbg !6303
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6303
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6305
  br label %kmalloc_type.exit.i, !dbg !6305

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !6306
  %idxprom.i = zext i32 %51 to i64, !dbg !6307
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6307
  %52 = load i32, i32* %index.i, align 4, !dbg !6308
  %idxprom6.i = zext i32 %52 to i64, !dbg !6307
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6307
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6307
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !6309
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !6310
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6311
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6312
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !6313
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6313
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6313
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6313
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !6313
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !6132
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6314
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !6315
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6316
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6317
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !6318
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6319
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6320
  store i8* %62, i8** %retval.i, align 8, !dbg !6321
  br label %kmalloc.exit, !dbg !6321

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !6322
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !6323
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !6324
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6324
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6324
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6324
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !6324
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6325
  br label %kmalloc.exit, !dbg !6325

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !6326
  ret i8* %65, !dbg !6327
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #2 !dbg !6328 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6329, metadata !DIExpression()), !dbg !6330
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !6331, metadata !DIExpression()), !dbg !6332
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6333
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6334
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !6335
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6335
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6336
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #10, !dbg !6337
  ret void, !dbg !6338
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @alloc_pages(i32 %gfp_mask, i32 %order) #2 !dbg !6339 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !6343, metadata !DIExpression()), !dbg !6344
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !6345, metadata !DIExpression()), !dbg !6346
  %call = call i32 @numa_node_id() #10, !dbg !6347
  %0 = load i32, i32* %gfp_mask.addr, align 4, !dbg !6348
  %1 = load i32, i32* %order.addr, align 4, !dbg !6349
  %call1 = call %struct.page* @alloc_pages_node(i32 %call, i32 %0, i32 %1) #10, !dbg !6350
  ret %struct.page* %call1, !dbg !6351
}

; Function Attrs: noredzone
declare dso_local i32 @gnttab_grant_foreign_access(i16 zeroext, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @xen_page_to_gfn(%struct.page* %page) #2 !dbg !6352 {
entry:
  %page.addr = alloca %struct.page*, align 8
  store %struct.page* %page, %struct.page** %page.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.page** %page.addr, metadata !6356, metadata !DIExpression()), !dbg !6357
  %0 = load %struct.page*, %struct.page** %page.addr, align 8, !dbg !6358
  %1 = load i64, i64* @vmemmap_base, align 8, !dbg !6358
  %2 = inttoptr i64 %1 to %struct.page*, !dbg !6358
  %sub.ptr.lhs.cast = ptrtoint %struct.page* %0 to i64, !dbg !6358
  %sub.ptr.rhs.cast = ptrtoint %struct.page* %2 to i64, !dbg !6358
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6358
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 64, !dbg !6358
  %shl = shl i64 %sub.ptr.div, 0, !dbg !6358
  %call = call i64 @pfn_to_gfn(i64 %shl) #10, !dbg !6359
  ret i64 %call, !dbg !6360
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_splice_tail(%struct.list_head* %list, %struct.list_head* %head) #2 !dbg !6361 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !6362, metadata !DIExpression()), !dbg !6363
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !6364, metadata !DIExpression()), !dbg !6365
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6366
  %call = call i32 @list_empty(%struct.list_head* %0) #10, !dbg !6368
  %tobool = icmp ne i32 %call, 0, !dbg !6368
  br i1 %tobool, label %if.end, label %if.then, !dbg !6369

if.then:                                          ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6370
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6371
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !6372
  %3 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !6372
  %4 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6373
  call void @__list_splice(%struct.list_head* %1, %struct.list_head* %3, %struct.list_head* %4) #10, !dbg !6374
  br label %if.end, !dbg !6374

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6375
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #2 !dbg !6376 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !6381, metadata !DIExpression()), !dbg !6382
  br label %do.body, !dbg !6383

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6385

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6383
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !6383
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6383
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !6385
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !6383
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6387
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !6388
  %conv = zext i1 %cmp to i32, !dbg !6388
  ret i32 %conv, !dbg !6389
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !6390 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6393, metadata !DIExpression()), !dbg !6394
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6395, metadata !DIExpression()), !dbg !6396
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6397, metadata !DIExpression()), !dbg !6398
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6399
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6401
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6402
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #10, !dbg !6403
  br i1 %call, label %if.end, label %if.then, !dbg !6404

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6405

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6406
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6407
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !6408
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !6409
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6410
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6411
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !6412
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !6413
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6414
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6415
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !6416
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !6417
  br label %do.body, !dbg !6418

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6419

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6421

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6419

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6423
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6423
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !6423
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !6423
  br label %do.end7, !dbg !6423

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6419

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6425
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !6426 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6429, metadata !DIExpression()), !dbg !6430
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6431, metadata !DIExpression()), !dbg !6432
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6433, metadata !DIExpression()), !dbg !6434
  ret i1 true, !dbg !6435
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @alloc_pages_node(i32 %nid, i32 %gfp_mask, i32 %order) #2 !dbg !6436 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, i32* %nid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nid.addr, metadata !6439, metadata !DIExpression()), !dbg !6440
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !6441, metadata !DIExpression()), !dbg !6442
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !6443, metadata !DIExpression()), !dbg !6444
  %0 = load i32, i32* %nid.addr, align 4, !dbg !6445
  %cmp = icmp eq i32 %0, -1, !dbg !6447
  br i1 %cmp, label %if.then, label %if.end, !dbg !6448

if.then:                                          ; preds = %entry
  %call = call i32 @numa_mem_id() #10, !dbg !6449
  store i32 %call, i32* %nid.addr, align 4, !dbg !6450
  br label %if.end, !dbg !6451

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %nid.addr, align 4, !dbg !6452
  %2 = load i32, i32* %gfp_mask.addr, align 4, !dbg !6453
  %3 = load i32, i32* %order.addr, align 4, !dbg !6454
  %call1 = call %struct.page* @__alloc_pages_node(i32 %1, i32 %2, i32 %3) #10, !dbg !6455
  ret %struct.page* %call1, !dbg !6456
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @numa_node_id() #2 !dbg !6457 {
entry:
  ret i32 0, !dbg !6459
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @numa_mem_id() #2 !dbg !6460 {
entry:
  %call = call i32 @numa_node_id() #10, !dbg !6462
  ret i32 %call, !dbg !6463
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @__alloc_pages_node(i32 %nid, i32 %gfp_mask, i32 %order) #2 !dbg !6464 {
entry:
  %nid.addr = alloca i32, align 4
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  store i32 %nid, i32* %nid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nid.addr, metadata !6465, metadata !DIExpression()), !dbg !6466
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !6467, metadata !DIExpression()), !dbg !6468
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !6469, metadata !DIExpression()), !dbg !6470
  %0 = load i32, i32* %gfp_mask.addr, align 4, !dbg !6471
  %1 = load i32, i32* %order.addr, align 4, !dbg !6472
  %2 = load i32, i32* %nid.addr, align 4, !dbg !6473
  %call = call %struct.page* @__alloc_pages(i32 %0, i32 %1, i32 %2) #10, !dbg !6474
  ret %struct.page* %call, !dbg !6475
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.page* @__alloc_pages(i32 %gfp_mask, i32 %order, i32 %preferred_nid) #2 !dbg !6476 {
entry:
  %gfp_mask.addr = alloca i32, align 4
  %order.addr = alloca i32, align 4
  %preferred_nid.addr = alloca i32, align 4
  store i32 %gfp_mask, i32* %gfp_mask.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp_mask.addr, metadata !6479, metadata !DIExpression()), !dbg !6480
  store i32 %order, i32* %order.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !6481, metadata !DIExpression()), !dbg !6482
  store i32 %preferred_nid, i32* %preferred_nid.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %preferred_nid.addr, metadata !6483, metadata !DIExpression()), !dbg !6484
  %0 = load i32, i32* %gfp_mask.addr, align 4, !dbg !6485
  %1 = load i32, i32* %order.addr, align 4, !dbg !6486
  %2 = load i32, i32* %preferred_nid.addr, align 4, !dbg !6487
  %call = call %struct.page* @__alloc_pages_nodemask(i32 %0, i32 %1, i32 %2, %struct.nodemask_t* null) #10, !dbg !6488
  ret %struct.page* %call, !dbg !6489
}

; Function Attrs: noredzone
declare dso_local %struct.page* @__alloc_pages_nodemask(i32, i32, i32, %struct.nodemask_t*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_gfn(i64 %pfn) #2 !dbg !6490 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !6494, metadata !DIExpression()), !dbg !6495
  %call = call i32 @xen_feature(i32 2) #10, !dbg !6496
  %tobool = icmp ne i32 %call, 0, !dbg !6496
  br i1 %tobool, label %if.then, label %if.else, !dbg !6498

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !6499
  store i64 %0, i64* %retval, align 8, !dbg !6500
  br label %return, !dbg !6500

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !6501
  %call1 = call i64 @pfn_to_mfn(i64 %1) #10, !dbg !6502
  store i64 %call1, i64* %retval, align 8, !dbg !6503
  br label %return, !dbg !6503

return:                                           ; preds = %if.else, %if.then
  %2 = load i64, i64* %retval, align 8, !dbg !6504
  ret i64 %2, !dbg !6504
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xen_feature(i32 %flag) #2 !dbg !6505 {
entry:
  %flag.addr = alloca i32, align 4
  store i32 %flag, i32* %flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flag.addr, metadata !6507, metadata !DIExpression()), !dbg !6508
  %0 = load i32, i32* %flag.addr, align 4, !dbg !6509
  %idxprom = sext i32 %0 to i64, !dbg !6510
  %arrayidx = getelementptr [32 x i8], [32 x i8]* @xen_features, i64 0, i64 %idxprom, !dbg !6510
  %1 = load i8, i8* %arrayidx, align 1, !dbg !6510
  %conv = zext i8 %1 to i32, !dbg !6510
  ret i32 %conv, !dbg !6511
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @pfn_to_mfn(i64 %pfn) #2 !dbg !6512 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !6513, metadata !DIExpression()), !dbg !6514
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !6515, metadata !DIExpression()), !dbg !6516
  %call = call i32 @xen_feature(i32 2) #10, !dbg !6517
  %tobool = icmp ne i32 %call, 0, !dbg !6517
  br i1 %tobool, label %if.then, label %if.end, !dbg !6519

if.then:                                          ; preds = %entry
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !6520
  store i64 %0, i64* %retval, align 8, !dbg !6521
  br label %return, !dbg !6521

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %pfn.addr, align 8, !dbg !6522
  %call1 = call i64 @__pfn_to_mfn(i64 %1) #10, !dbg !6523
  store i64 %call1, i64* %mfn, align 8, !dbg !6524
  %2 = load i64, i64* %mfn, align 8, !dbg !6525
  %cmp = icmp ne i64 %2, -1, !dbg !6527
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !6528

if.then2:                                         ; preds = %if.end
  %3 = load i64, i64* %mfn, align 8, !dbg !6529
  %and = and i64 %3, 4611686018427387903, !dbg !6529
  store i64 %and, i64* %mfn, align 8, !dbg !6529
  br label %if.end3, !dbg !6530

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i64, i64* %mfn, align 8, !dbg !6531
  store i64 %4, i64* %retval, align 8, !dbg !6532
  br label %return, !dbg !6532

return:                                           ; preds = %if.end3, %if.then
  %5 = load i64, i64* %retval, align 8, !dbg !6533
  ret i64 %5, !dbg !6533
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @__pfn_to_mfn(i64 %pfn) #2 !dbg !6534 {
entry:
  %retval = alloca i64, align 8
  %pfn.addr = alloca i64, align 8
  %mfn = alloca i64, align 8
  store i64 %pfn, i64* %pfn.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %pfn.addr, metadata !6535, metadata !DIExpression()), !dbg !6536
  call void @llvm.dbg.declare(metadata i64* %mfn, metadata !6537, metadata !DIExpression()), !dbg !6538
  %0 = load i64, i64* %pfn.addr, align 8, !dbg !6539
  %1 = load i64, i64* @xen_p2m_size, align 8, !dbg !6541
  %cmp = icmp ult i64 %0, %1, !dbg !6542
  br i1 %cmp, label %if.then, label %if.else, !dbg !6543

if.then:                                          ; preds = %entry
  %2 = load i64*, i64** @xen_p2m_addr, align 8, !dbg !6544
  %3 = load i64, i64* %pfn.addr, align 8, !dbg !6545
  %arrayidx = getelementptr i64, i64* %2, i64 %3, !dbg !6544
  %4 = load i64, i64* %arrayidx, align 8, !dbg !6544
  store i64 %4, i64* %mfn, align 8, !dbg !6546
  br label %if.end, !dbg !6547

if.else:                                          ; preds = %entry
  %5 = load i64, i64* %pfn.addr, align 8, !dbg !6548
  %6 = load i64, i64* @xen_max_p2m_pfn, align 8, !dbg !6548
  %cmp1 = icmp ult i64 %5, %6, !dbg !6548
  %lnot = xor i1 %cmp1, true, !dbg !6548
  %lnot2 = xor i1 %lnot, true, !dbg !6548
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6548
  %conv = sext i32 %lnot.ext to i64, !dbg !6548
  %tobool = icmp ne i64 %conv, 0, !dbg !6548
  br i1 %tobool, label %if.then3, label %if.else4, !dbg !6550

if.then3:                                         ; preds = %if.else
  %7 = load i64, i64* %pfn.addr, align 8, !dbg !6551
  %call = call i64 @get_phys_to_machine(i64 %7) #10, !dbg !6552
  store i64 %call, i64* %retval, align 8, !dbg !6553
  br label %return, !dbg !6553

if.else4:                                         ; preds = %if.else
  %8 = load i64, i64* %pfn.addr, align 8, !dbg !6554
  %or = or i64 %8, 4611686018427387904, !dbg !6554
  store i64 %or, i64* %retval, align 8, !dbg !6555
  br label %return, !dbg !6555

if.end:                                           ; preds = %if.then
  %9 = load i64, i64* %mfn, align 8, !dbg !6556
  %cmp5 = icmp eq i64 %9, -1, !dbg !6556
  %lnot7 = xor i1 %cmp5, true, !dbg !6556
  %lnot9 = xor i1 %lnot7, true, !dbg !6556
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !6556
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !6556
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !6556
  br i1 %tobool12, label %if.then13, label %if.end15, !dbg !6558

if.then13:                                        ; preds = %if.end
  %10 = load i64, i64* %pfn.addr, align 8, !dbg !6559
  %call14 = call i64 @get_phys_to_machine(i64 %10) #10, !dbg !6560
  store i64 %call14, i64* %retval, align 8, !dbg !6561
  br label %return, !dbg !6561

if.end15:                                         ; preds = %if.end
  %11 = load i64, i64* %mfn, align 8, !dbg !6562
  store i64 %11, i64* %retval, align 8, !dbg !6563
  br label %return, !dbg !6563

return:                                           ; preds = %if.end15, %if.then13, %if.else4, %if.then3
  %12 = load i64, i64* %retval, align 8, !dbg !6564
  ret i64 %12, !dbg !6564
}

; Function Attrs: noredzone
declare dso_local i64 @get_phys_to_machine(i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_splice(%struct.list_head* %list, %struct.list_head* %prev, %struct.list_head* %next) #2 !dbg !6565 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  %first = alloca %struct.list_head*, align 8
  %last = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !6568, metadata !DIExpression()), !dbg !6569
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !6570, metadata !DIExpression()), !dbg !6571
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !6572, metadata !DIExpression()), !dbg !6573
  call void @llvm.dbg.declare(metadata %struct.list_head** %first, metadata !6574, metadata !DIExpression()), !dbg !6575
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6576
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !6577
  %1 = load %struct.list_head*, %struct.list_head** %next1, align 8, !dbg !6577
  store %struct.list_head* %1, %struct.list_head** %first, align 8, !dbg !6575
  call void @llvm.dbg.declare(metadata %struct.list_head** %last, metadata !6578, metadata !DIExpression()), !dbg !6579
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6580
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !6581
  %3 = load %struct.list_head*, %struct.list_head** %prev2, align 8, !dbg !6581
  store %struct.list_head* %3, %struct.list_head** %last, align 8, !dbg !6579
  %4 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6582
  %5 = load %struct.list_head*, %struct.list_head** %first, align 8, !dbg !6583
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i32 0, i32 1, !dbg !6584
  store %struct.list_head* %4, %struct.list_head** %prev3, align 8, !dbg !6585
  %6 = load %struct.list_head*, %struct.list_head** %first, align 8, !dbg !6586
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !6587
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %7, i32 0, i32 0, !dbg !6588
  store %struct.list_head* %6, %struct.list_head** %next4, align 8, !dbg !6589
  %8 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6590
  %9 = load %struct.list_head*, %struct.list_head** %last, align 8, !dbg !6591
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i32 0, i32 0, !dbg !6592
  store %struct.list_head* %8, %struct.list_head** %next5, align 8, !dbg !6593
  %10 = load %struct.list_head*, %struct.list_head** %last, align 8, !dbg !6594
  %11 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !6595
  %prev6 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i32 0, i32 1, !dbg !6596
  store %struct.list_head* %10, %struct.list_head** %prev6, align 8, !dbg !6597
  ret void, !dbg !6598
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.gntalloc_gref* @find_grefs(%struct.gntalloc_file_private_data* %priv, i64 %index, i32 %count) #2 !dbg !6599 {
entry:
  %retval = alloca %struct.gntalloc_gref*, align 8
  %priv.addr = alloca %struct.gntalloc_file_private_data*, align 8
  %index.addr = alloca i64, align 8
  %count.addr = alloca i32, align 4
  %rv = alloca %struct.gntalloc_gref*, align 8
  %gref = alloca %struct.gntalloc_gref*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gntalloc_gref*, align 8
  %__mptr13 = alloca i8*, align 8
  %tmp18 = alloca %struct.gntalloc_gref*, align 8
  store %struct.gntalloc_file_private_data* %priv, %struct.gntalloc_file_private_data** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gntalloc_file_private_data** %priv.addr, metadata !6602, metadata !DIExpression()), !dbg !6603
  store i64 %index, i64* %index.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %index.addr, metadata !6604, metadata !DIExpression()), !dbg !6605
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !6606, metadata !DIExpression()), !dbg !6607
  call void @llvm.dbg.declare(metadata %struct.gntalloc_gref** %rv, metadata !6608, metadata !DIExpression()), !dbg !6609
  store %struct.gntalloc_gref* null, %struct.gntalloc_gref** %rv, align 8, !dbg !6609
  call void @llvm.dbg.declare(metadata %struct.gntalloc_gref** %gref, metadata !6610, metadata !DIExpression()), !dbg !6611
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6612, metadata !DIExpression()), !dbg !6615
  %0 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv.addr, align 8, !dbg !6615
  %list = getelementptr inbounds %struct.gntalloc_file_private_data, %struct.gntalloc_file_private_data* %0, i32 0, i32 0, !dbg !6615
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !6615
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6615
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !6615
  store i8* %2, i8** %__mptr, align 8, !dbg !6615
  br label %do.body, !dbg !6615

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6616

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !6615
  %add.ptr = getelementptr i8, i8* %3, i64 -16, !dbg !6615
  %4 = bitcast i8* %add.ptr to %struct.gntalloc_gref*, !dbg !6615
  store %struct.gntalloc_gref* %4, %struct.gntalloc_gref** %tmp, align 8, !dbg !6616
  %5 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %tmp, align 8, !dbg !6615
  store %struct.gntalloc_gref* %5, %struct.gntalloc_gref** %gref, align 8, !dbg !6618
  br label %for.cond, !dbg !6618

for.cond:                                         ; preds = %do.end17, %do.end
  %6 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !6619
  %next_file = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %6, i32 0, i32 1, !dbg !6619
  %7 = load %struct.gntalloc_file_private_data*, %struct.gntalloc_file_private_data** %priv.addr, align 8, !dbg !6619
  %list1 = getelementptr inbounds %struct.gntalloc_file_private_data, %struct.gntalloc_file_private_data* %7, i32 0, i32 0, !dbg !6619
  %cmp = icmp eq %struct.list_head* %next_file, %list1, !dbg !6619
  %lnot = xor i1 %cmp, true, !dbg !6619
  br i1 %lnot, label %for.body, label %for.end, !dbg !6618

for.body:                                         ; preds = %for.cond
  %8 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !6621
  %file_index = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %8, i32 0, i32 3, !dbg !6624
  %9 = load i64, i64* %file_index, align 8, !dbg !6624
  %10 = load i64, i64* %index.addr, align 8, !dbg !6625
  %cmp2 = icmp eq i64 %9, %10, !dbg !6626
  br i1 %cmp2, label %land.lhs.true, label %if.end, !dbg !6627

land.lhs.true:                                    ; preds = %for.body
  %11 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %rv, align 8, !dbg !6628
  %tobool = icmp ne %struct.gntalloc_gref* %11, null, !dbg !6628
  br i1 %tobool, label %if.end, label %if.then, !dbg !6629

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !6630
  store %struct.gntalloc_gref* %12, %struct.gntalloc_gref** %rv, align 8, !dbg !6631
  br label %if.end, !dbg !6632

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %13 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %rv, align 8, !dbg !6633
  %tobool3 = icmp ne %struct.gntalloc_gref* %13, null, !dbg !6633
  br i1 %tobool3, label %if.then4, label %if.end12, !dbg !6635

if.then4:                                         ; preds = %if.end
  %14 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !6636
  %file_index5 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %14, i32 0, i32 3, !dbg !6639
  %15 = load i64, i64* %file_index5, align 8, !dbg !6639
  %16 = load i64, i64* %index.addr, align 8, !dbg !6640
  %cmp6 = icmp ne i64 %15, %16, !dbg !6641
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !6642

if.then7:                                         ; preds = %if.then4
  store %struct.gntalloc_gref* null, %struct.gntalloc_gref** %retval, align 8, !dbg !6643
  br label %return, !dbg !6643

if.end8:                                          ; preds = %if.then4
  %17 = load i64, i64* %index.addr, align 8, !dbg !6644
  %add = add i64 %17, 4096, !dbg !6644
  store i64 %add, i64* %index.addr, align 8, !dbg !6644
  %18 = load i32, i32* %count.addr, align 4, !dbg !6645
  %dec = add i32 %18, -1, !dbg !6645
  store i32 %dec, i32* %count.addr, align 4, !dbg !6645
  %19 = load i32, i32* %count.addr, align 4, !dbg !6646
  %cmp9 = icmp eq i32 %19, 0, !dbg !6648
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6649

if.then10:                                        ; preds = %if.end8
  %20 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %rv, align 8, !dbg !6650
  store %struct.gntalloc_gref* %20, %struct.gntalloc_gref** %retval, align 8, !dbg !6651
  br label %return, !dbg !6651

if.end11:                                         ; preds = %if.end8
  br label %if.end12, !dbg !6652

if.end12:                                         ; preds = %if.end11, %if.end
  br label %for.inc, !dbg !6653

for.inc:                                          ; preds = %if.end12
  call void @llvm.dbg.declare(metadata i8** %__mptr13, metadata !6654, metadata !DIExpression()), !dbg !6656
  %21 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !6656
  %next_file14 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %21, i32 0, i32 1, !dbg !6656
  %next15 = getelementptr inbounds %struct.list_head, %struct.list_head* %next_file14, i32 0, i32 0, !dbg !6656
  %22 = load %struct.list_head*, %struct.list_head** %next15, align 8, !dbg !6656
  %23 = bitcast %struct.list_head* %22 to i8*, !dbg !6656
  store i8* %23, i8** %__mptr13, align 8, !dbg !6656
  br label %do.body16, !dbg !6656

do.body16:                                        ; preds = %for.inc
  br label %do.end17, !dbg !6657

do.end17:                                         ; preds = %do.body16
  %24 = load i8*, i8** %__mptr13, align 8, !dbg !6656
  %add.ptr19 = getelementptr i8, i8* %24, i64 -16, !dbg !6656
  %25 = bitcast i8* %add.ptr19 to %struct.gntalloc_gref*, !dbg !6656
  store %struct.gntalloc_gref* %25, %struct.gntalloc_gref** %tmp18, align 8, !dbg !6657
  %26 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %tmp18, align 8, !dbg !6656
  store %struct.gntalloc_gref* %26, %struct.gntalloc_gref** %gref, align 8, !dbg !6619
  br label %for.cond, !dbg !6619, !llvm.loop !6659

for.end:                                          ; preds = %for.cond
  store %struct.gntalloc_gref* null, %struct.gntalloc_gref** %retval, align 8, !dbg !6661
  br label %return, !dbg !6661

return:                                           ; preds = %for.end, %if.then10, %if.then7
  %27 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %retval, align 8, !dbg !6662
  ret %struct.gntalloc_gref* %27, !dbg !6662
}

; Function Attrs: noredzone
declare dso_local i32 @evtchn_get(i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @vma_pages(%struct.vm_area_struct* %vma) #2 !dbg !6663 {
entry:
  %vma.addr = alloca %struct.vm_area_struct*, align 8
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vm_area_struct** %vma.addr, metadata !6664, metadata !DIExpression()), !dbg !6665
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !6666
  %vm_end = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i32 0, i32 1, !dbg !6667
  %1 = load i64, i64* %vm_end, align 8, !dbg !6667
  %2 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !6668
  %vm_start = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %2, i32 0, i32 0, !dbg !6669
  %3 = load i64, i64* %vm_start, align 8, !dbg !6669
  %sub = sub i64 %1, %3, !dbg !6670
  %shr = lshr i64 %sub, 12, !dbg !6671
  ret i64 %shr, !dbg !6672
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #9

; Function Attrs: noredzone
declare dso_local i32 @vm_insert_page(%struct.vm_area_struct*, i64, %struct.page*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gntalloc_vma_open(%struct.vm_area_struct* %vma) #2 !dbg !6673 {
entry:
  %vma.addr = alloca %struct.vm_area_struct*, align 8
  %priv = alloca %struct.gntalloc_vma_private_data*, align 8
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vm_area_struct** %vma.addr, metadata !6674, metadata !DIExpression()), !dbg !6675
  call void @llvm.dbg.declare(metadata %struct.gntalloc_vma_private_data** %priv, metadata !6676, metadata !DIExpression()), !dbg !6677
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !6678
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i32 0, i32 15, !dbg !6679
  %1 = load i8*, i8** %vm_private_data, align 8, !dbg !6679
  %2 = bitcast i8* %1 to %struct.gntalloc_vma_private_data*, !dbg !6678
  store %struct.gntalloc_vma_private_data* %2, %struct.gntalloc_vma_private_data** %priv, align 8, !dbg !6677
  %3 = load %struct.gntalloc_vma_private_data*, %struct.gntalloc_vma_private_data** %priv, align 8, !dbg !6680
  %tobool = icmp ne %struct.gntalloc_vma_private_data* %3, null, !dbg !6680
  br i1 %tobool, label %if.end, label %if.then, !dbg !6682

if.then:                                          ; preds = %entry
  br label %return, !dbg !6683

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* @gref_mutex) #10, !dbg !6684
  %4 = load %struct.gntalloc_vma_private_data*, %struct.gntalloc_vma_private_data** %priv, align 8, !dbg !6685
  %users = getelementptr inbounds %struct.gntalloc_vma_private_data, %struct.gntalloc_vma_private_data* %4, i32 0, i32 1, !dbg !6686
  %5 = load i32, i32* %users, align 8, !dbg !6687
  %inc = add i32 %5, 1, !dbg !6687
  store i32 %inc, i32* %users, align 8, !dbg !6687
  call void @mutex_unlock(%struct.mutex* @gref_mutex) #10, !dbg !6688
  br label %return, !dbg !6689

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6689
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gntalloc_vma_close(%struct.vm_area_struct* %vma) #2 !dbg !6690 {
entry:
  %vma.addr = alloca %struct.vm_area_struct*, align 8
  %priv = alloca %struct.gntalloc_vma_private_data*, align 8
  %gref = alloca %struct.gntalloc_gref*, align 8
  %next = alloca %struct.gntalloc_gref*, align 8
  %i = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gntalloc_gref*, align 8
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vm_area_struct** %vma.addr, metadata !6691, metadata !DIExpression()), !dbg !6692
  call void @llvm.dbg.declare(metadata %struct.gntalloc_vma_private_data** %priv, metadata !6693, metadata !DIExpression()), !dbg !6694
  %0 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !6695
  %vm_private_data = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %0, i32 0, i32 15, !dbg !6696
  %1 = load i8*, i8** %vm_private_data, align 8, !dbg !6696
  %2 = bitcast i8* %1 to %struct.gntalloc_vma_private_data*, !dbg !6695
  store %struct.gntalloc_vma_private_data* %2, %struct.gntalloc_vma_private_data** %priv, align 8, !dbg !6694
  call void @llvm.dbg.declare(metadata %struct.gntalloc_gref** %gref, metadata !6697, metadata !DIExpression()), !dbg !6698
  call void @llvm.dbg.declare(metadata %struct.gntalloc_gref** %next, metadata !6699, metadata !DIExpression()), !dbg !6700
  call void @llvm.dbg.declare(metadata i32* %i, metadata !6701, metadata !DIExpression()), !dbg !6702
  %3 = load %struct.gntalloc_vma_private_data*, %struct.gntalloc_vma_private_data** %priv, align 8, !dbg !6703
  %tobool = icmp ne %struct.gntalloc_vma_private_data* %3, null, !dbg !6703
  br i1 %tobool, label %if.end, label %if.then, !dbg !6705

if.then:                                          ; preds = %entry
  br label %return, !dbg !6706

if.end:                                           ; preds = %entry
  call void @mutex_lock(%struct.mutex* @gref_mutex) #10, !dbg !6707
  %4 = load %struct.gntalloc_vma_private_data*, %struct.gntalloc_vma_private_data** %priv, align 8, !dbg !6708
  %users = getelementptr inbounds %struct.gntalloc_vma_private_data, %struct.gntalloc_vma_private_data* %4, i32 0, i32 1, !dbg !6709
  %5 = load i32, i32* %users, align 8, !dbg !6710
  %dec = add i32 %5, -1, !dbg !6710
  store i32 %dec, i32* %users, align 8, !dbg !6710
  %6 = load %struct.gntalloc_vma_private_data*, %struct.gntalloc_vma_private_data** %priv, align 8, !dbg !6711
  %users1 = getelementptr inbounds %struct.gntalloc_vma_private_data, %struct.gntalloc_vma_private_data* %6, i32 0, i32 1, !dbg !6713
  %7 = load i32, i32* %users1, align 8, !dbg !6713
  %cmp = icmp eq i32 %7, 0, !dbg !6714
  br i1 %cmp, label %if.then2, label %if.end12, !dbg !6715

if.then2:                                         ; preds = %if.end
  %8 = load %struct.gntalloc_vma_private_data*, %struct.gntalloc_vma_private_data** %priv, align 8, !dbg !6716
  %gref3 = getelementptr inbounds %struct.gntalloc_vma_private_data, %struct.gntalloc_vma_private_data* %8, i32 0, i32 0, !dbg !6718
  %9 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref3, align 8, !dbg !6718
  store %struct.gntalloc_gref* %9, %struct.gntalloc_gref** %gref, align 8, !dbg !6719
  store i32 0, i32* %i, align 4, !dbg !6720
  br label %for.cond, !dbg !6722

for.cond:                                         ; preds = %for.inc, %if.then2
  %10 = load i32, i32* %i, align 4, !dbg !6723
  %11 = load %struct.gntalloc_vma_private_data*, %struct.gntalloc_vma_private_data** %priv, align 8, !dbg !6725
  %count = getelementptr inbounds %struct.gntalloc_vma_private_data, %struct.gntalloc_vma_private_data* %11, i32 0, i32 2, !dbg !6726
  %12 = load i32, i32* %count, align 4, !dbg !6726
  %cmp4 = icmp slt i32 %10, %12, !dbg !6727
  br i1 %cmp4, label %for.body, label %for.end, !dbg !6728

for.body:                                         ; preds = %for.cond
  %13 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !6729
  %users5 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %13, i32 0, i32 4, !dbg !6731
  %14 = load i32, i32* %users5, align 8, !dbg !6732
  %dec6 = add i32 %14, -1, !dbg !6732
  store i32 %dec6, i32* %users5, align 8, !dbg !6732
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6733, metadata !DIExpression()), !dbg !6735
  %15 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !6735
  %next_gref = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %15, i32 0, i32 0, !dbg !6735
  %next7 = getelementptr inbounds %struct.list_head, %struct.list_head* %next_gref, i32 0, i32 0, !dbg !6735
  %16 = load %struct.list_head*, %struct.list_head** %next7, align 8, !dbg !6735
  %17 = bitcast %struct.list_head* %16 to i8*, !dbg !6735
  store i8* %17, i8** %__mptr, align 8, !dbg !6735
  br label %do.body, !dbg !6735

do.body:                                          ; preds = %for.body
  br label %do.end, !dbg !6736

do.end:                                           ; preds = %do.body
  %18 = load i8*, i8** %__mptr, align 8, !dbg !6735
  %add.ptr = getelementptr i8, i8* %18, i64 0, !dbg !6735
  %19 = bitcast i8* %add.ptr to %struct.gntalloc_gref*, !dbg !6735
  store %struct.gntalloc_gref* %19, %struct.gntalloc_gref** %tmp, align 8, !dbg !6736
  %20 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %tmp, align 8, !dbg !6735
  store %struct.gntalloc_gref* %20, %struct.gntalloc_gref** %next, align 8, !dbg !6738
  %21 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !6739
  %users8 = getelementptr inbounds %struct.gntalloc_gref, %struct.gntalloc_gref* %21, i32 0, i32 4, !dbg !6741
  %22 = load i32, i32* %users8, align 8, !dbg !6741
  %cmp9 = icmp eq i32 %22, 0, !dbg !6742
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6743

if.then10:                                        ; preds = %do.end
  %23 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %gref, align 8, !dbg !6744
  call void @__del_gref(%struct.gntalloc_gref* %23) #10, !dbg !6745
  br label %if.end11, !dbg !6745

if.end11:                                         ; preds = %if.then10, %do.end
  %24 = load %struct.gntalloc_gref*, %struct.gntalloc_gref** %next, align 8, !dbg !6746
  store %struct.gntalloc_gref* %24, %struct.gntalloc_gref** %gref, align 8, !dbg !6747
  br label %for.inc, !dbg !6748

for.inc:                                          ; preds = %if.end11
  %25 = load i32, i32* %i, align 4, !dbg !6749
  %inc = add i32 %25, 1, !dbg !6749
  store i32 %inc, i32* %i, align 4, !dbg !6749
  br label %for.cond, !dbg !6750, !llvm.loop !6751

for.end:                                          ; preds = %for.cond
  %26 = load %struct.gntalloc_vma_private_data*, %struct.gntalloc_vma_private_data** %priv, align 8, !dbg !6753
  %27 = bitcast %struct.gntalloc_vma_private_data* %26 to i8*, !dbg !6753
  call void @kfree(i8* %27) #10, !dbg !6754
  br label %if.end12, !dbg !6755

if.end12:                                         ; preds = %for.end, %if.end
  call void @mutex_unlock(%struct.mutex* @gref_mutex) #10, !dbg !6756
  br label %return, !dbg !6757

return:                                           ; preds = %if.end12, %if.then
  ret void, !dbg !6757
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #2 !dbg !6758 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !6759, metadata !DIExpression()), !dbg !6760
  br label %do.body, !dbg !6761

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6762

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6764

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6762

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6766
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6766
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !6766
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !6766
  br label %do.end3, !dbg !6766

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6762

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6768
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6769
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !6770
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !6771
  ret void, !dbg !6772
}

; Function Attrs: noredzone
declare dso_local i32 @misc_register(%struct.miscdevice*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4287}
!llvm.module.flags = !{!4288, !4289, !4290, !4291}
!llvm.ident = !{!4292}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_limit", scope: !2, file: !3, line: 74, type: !4284, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !146, globals: !3043, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/xen/gntalloc.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !114, !122, !128, !133, !140}
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
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xen_domain_type", file: !141, line: 5, baseType: !7, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/xen/xen.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "XEN_NATIVE", value: 0, isUnsigned: true)
!144 = !DIEnumerator(name: "XEN_PV_DOMAIN", value: 1, isUnsigned: true)
!145 = !DIEnumerator(name: "XEN_HVM_DOMAIN", value: 2, isUnsigned: true)
!146 = !{!147, !148, !150, !151, !167, !2318, !162, !3039, !3041}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !149, line: 148, baseType: !7)
!149 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!150 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gntalloc_gref", file: !3, line: 89, size: 512, elements: !153)
!153 = !{!154, !160, !161, !3026, !3028, !3029, !3032}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "next_gref", scope: !152, file: !3, line: 90, baseType: !155, size: 128)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !149, line: 178, size: 128, elements: !156)
!156 = !{!157, !159}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !149, line: 179, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !155, file: !149, line: 179, baseType: !158, size: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next_file", scope: !152, file: !3, line: 91, baseType: !155, size: 128, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !152, file: !3, line: 92, baseType: !162, size: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !164, line: 68, size: 512, align: 128, elements: !165)
!164 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !168, !3018, !3025}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !164, line: 69, baseType: !167, size: 64)
!167 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !164, line: 77, baseType: !169, size: 320, offset: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !164, line: 77, size: 320, elements: !170)
!170 = !{!171, !2892, !2897, !2923, !2931, !2937, !2949, !3017}
!171 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !164, line: 78, baseType: !172, size: 320)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !164, line: 78, size: 320, elements: !173)
!173 = !{!174, !175, !2890, !2891}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !172, file: !164, line: 84, baseType: !155, size: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !172, file: !164, line: 86, baseType: !176, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !178)
!178 = !{!179, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2885, !2886, !2887, !2888, !2889}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !177, file: !44, line: 452, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !182)
!182 = !{!183, !186, !187, !196, !203, !204, !2716, !2717, !2718, !2719, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2760, !2768, !2769, !2770, !2780, !2781, !2782, !2783}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !181, file: !44, line: 611, baseType: !184, size: 16)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !149, line: 19, baseType: !185)
!185 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !181, file: !44, line: 612, baseType: !185, size: 16, offset: 16)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !181, file: !44, line: 613, baseType: !188, size: 32, offset: 32)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !189, line: 23, baseType: !190)
!189 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 21, size: 32, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !190, file: !189, line: 22, baseType: !193, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !149, line: 32, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !195, line: 49, baseType: !7)
!195 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!196 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !181, file: !44, line: 614, baseType: !197, size: 32, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !189, line: 28, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !189, line: 26, size: 32, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !198, file: !189, line: 27, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !149, line: 33, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !195, line: 50, baseType: !7)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !181, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !181, file: !44, line: 622, baseType: !205, size: 64, offset: 128)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !208)
!208 = !{!209, !2590, !2603, !2607, !2613, !2617, !2621, !2625, !2629, !2633, !2637, !2638, !2642, !2646, !2666, !2692, !2696, !2702, !2707, !2711, !2712}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !207, file: !44, line: 1865, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, !180, !213, !7}
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !215, line: 89, size: 1536, elements: !216)
!215 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!216 = !{!217, !218, !228, !236, !237, !260, !261, !265, !292, !366, !2574, !2575, !2576, !2582, !2583, !2584}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !214, file: !215, line: 91, baseType: !7, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !214, file: !215, line: 92, baseType: !219, size: 32, offset: 32)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !220, line: 277, baseType: !221)
!220 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !220, line: 277, size: 32, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !221, file: !220, line: 277, baseType: !224, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !220, line: 70, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !220, line: 65, size: 32, elements: !226)
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !225, file: !220, line: 66, baseType: !7, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !214, file: !215, line: 93, baseType: !229, size: 128, offset: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !230, line: 38, size: 128, elements: !231)
!230 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!231 = !{!232, !234}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !229, file: !230, line: 39, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !229, file: !230, line: 39, baseType: !235, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !214, file: !215, line: 94, baseType: !213, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !214, file: !215, line: 95, baseType: !238, size: 128, offset: 256)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !215, line: 47, size: 128, elements: !239)
!239 = !{!240, !256}
!240 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !215, line: 48, baseType: !241, size: 64)
!241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !238, file: !215, line: 48, size: 64, elements: !242)
!242 = !{!243, !252}
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !215, line: 49, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !215, line: 49, size: 64, elements: !245)
!245 = !{!246, !251}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !244, file: !215, line: 50, baseType: !247, size: 32)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !248, line: 21, baseType: !249)
!248 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !250, line: 27, baseType: !7)
!250 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!251 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !244, file: !215, line: 50, baseType: !247, size: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !241, file: !215, line: 52, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !248, line: 23, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !250, line: 31, baseType: !255)
!255 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !238, file: !215, line: 54, baseType: !257, size: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !259)
!259 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !214, file: !215, line: 96, baseType: !180, size: 64, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !214, file: !215, line: 98, baseType: !262, size: 256, offset: 448)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 256, elements: !263)
!263 = !{!264}
!264 = !DISubrange(count: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !214, file: !215, line: 101, baseType: !266, size: 32, offset: 704)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !267, line: 25, size: 32, elements: !268)
!267 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !267, line: 26, baseType: !270, size: 32)
!270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !267, line: 26, size: 32, elements: !271)
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !267, line: 30, baseType: !273, size: 32)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !270, file: !267, line: 30, size: 32, elements: !274)
!274 = !{!275, !291}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !273, file: !267, line: 31, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !277, line: 83, baseType: !278)
!277 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !277, line: 71, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !277, line: 72, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !277, line: 72, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !281, file: !277, line: 73, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !277, line: 20, elements: !285)
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !284, file: !277, line: 21, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !288, line: 25, baseType: !289)
!288 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !288, line: 25, elements: !290)
!290 = !{}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !273, file: !267, line: 32, baseType: !150, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !214, file: !215, line: 102, baseType: !293, size: 64, offset: 768)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !215, line: 135, size: 1024, align: 512, elements: !296)
!296 = !{!297, !301, !302, !309, !318, !322, !326, !330, !331, !335, !340, !352, !360}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !295, file: !215, line: 136, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!150, !213, !7}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !295, file: !215, line: 137, baseType: !298, size: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !295, file: !215, line: 138, baseType: !303, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!150, !306, !308}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !295, file: !215, line: 139, baseType: !310, size: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!150, !306, !7, !313, !316}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !295, file: !215, line: 141, baseType: !319, size: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!150, !306}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !295, file: !215, line: 142, baseType: !323, size: 64, offset: 320)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!150, !213}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !295, file: !215, line: 143, baseType: !327, size: 64, offset: 384)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !213}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !295, file: !215, line: 144, baseType: !327, size: 64, offset: 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !295, file: !215, line: 145, baseType: !332, size: 64, offset: 512)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{null, !213, !180}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !295, file: !215, line: 146, baseType: !336, size: 64, offset: 576)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!339, !213, !339, !150}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !295, file: !215, line: 147, baseType: !341, size: 64, offset: 640)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!344, !346}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !215, line: 18, flags: DIFlagFwdDecl)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !348, line: 8, size: 128, elements: !349)
!348 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !347, file: !348, line: 9, baseType: !344, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !347, file: !348, line: 10, baseType: !213, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !295, file: !215, line: 148, baseType: !353, size: 64, offset: 704)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DISubroutineType(types: !355)
!355 = !{!150, !356, !358}
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !347)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !149, line: 30, baseType: !359)
!359 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !295, file: !215, line: 149, baseType: !361, size: 64, offset: 768)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!213, !213, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !214, file: !215, line: 103, baseType: !367, size: 64, offset: 832)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !369)
!369 = !{!370, !371, !374, !375, !376, !380, !432, !516, !618, !701, !705, !706, !707, !708, !709, !718, !719, !720, !725, !729, !730, !733, !737, !740, !741, !742, !783, !2503, !2504, !2505, !2506, !2507, !2508, !2511, !2513, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2541, !2542, !2543, !2544, !2545, !2548, !2549, !2550, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !368, file: !44, line: 1417, baseType: !155, size: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !368, file: !44, line: 1418, baseType: !372, size: 32, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !149, line: 16, baseType: !373)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !149, line: 13, baseType: !247)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !368, file: !44, line: 1419, baseType: !259, size: 8, offset: 160)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !368, file: !44, line: 1420, baseType: !167, size: 64, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !368, file: !44, line: 1421, baseType: !377, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !149, line: 46, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !195, line: 88, baseType: !379)
!379 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !368, file: !44, line: 1422, baseType: !381, size: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !383)
!383 = !{!384, !385, !386, !393, !397, !401, !405, !409, !410, !420, !423, !424, !425, !429, !430, !431}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !382, file: !44, line: 2229, baseType: !313, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !382, file: !44, line: 2230, baseType: !150, size: 32, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !382, file: !44, line: 2238, baseType: !387, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!150, !390}
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !392, line: 28, flags: DIFlagFwdDecl)
!392 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!393 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !382, file: !44, line: 2239, baseType: !394, size: 64, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !382, file: !44, line: 2240, baseType: !398, size: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!213, !381, !150, !313, !147}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !382, file: !44, line: 2242, baseType: !402, size: 64, offset: 320)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{null, !367}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !382, file: !44, line: 2243, baseType: !406, size: 64, offset: 384)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !408, line: 76, flags: DIFlagFwdDecl)
!408 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!409 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !44, line: 2244, baseType: !381, size: 64, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !382, file: !44, line: 2245, baseType: !411, size: 64, offset: 512)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !149, line: 182, size: 64, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !411, file: !149, line: 183, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !149, line: 186, size: 128, elements: !416)
!416 = !{!417, !418}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !149, line: 187, baseType: !414, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !415, file: !149, line: 187, baseType: !419, size: 64, offset: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !382, file: !44, line: 2247, baseType: !421, offset: 576)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !422, line: 187, elements: !290)
!422 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!423 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !382, file: !44, line: 2248, baseType: !421, offset: 576)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !382, file: !44, line: 2249, baseType: !421, offset: 576)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !382, file: !44, line: 2250, baseType: !426, offset: 576)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 3)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !382, file: !44, line: 2252, baseType: !421, offset: 576)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !382, file: !44, line: 2253, baseType: !421, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !382, file: !44, line: 2254, baseType: !421, offset: 576)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !368, file: !44, line: 1423, baseType: !433, size: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !435)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !436)
!436 = !{!437, !441, !445, !446, !450, !456, !460, !461, !462, !466, !470, !471, !472, !473, !479, !484, !485, !492, !493, !494, !495, !499, !515}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !435, file: !44, line: 1936, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{!180, !367}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !435, file: !44, line: 1937, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !180}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !435, file: !44, line: 1938, baseType: !442, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !435, file: !44, line: 1940, baseType: !447, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !180, !150}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !435, file: !44, line: 1941, baseType: !451, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!150, !180, !454}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 289, flags: DIFlagFwdDecl)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !435, file: !44, line: 1942, baseType: !457, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!150, !180}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !435, file: !44, line: 1943, baseType: !442, size: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !435, file: !44, line: 1944, baseType: !402, size: 64, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !435, file: !44, line: 1945, baseType: !463, size: 64, offset: 512)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!150, !367, !150}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !435, file: !44, line: 1946, baseType: !467, size: 64, offset: 576)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!150, !367}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !435, file: !44, line: 1947, baseType: !467, size: 64, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !435, file: !44, line: 1948, baseType: !467, size: 64, offset: 704)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !435, file: !44, line: 1949, baseType: !467, size: 64, offset: 768)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !435, file: !44, line: 1950, baseType: !474, size: 64, offset: 832)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!150, !213, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !435, file: !44, line: 1951, baseType: !480, size: 64, offset: 896)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!150, !367, !483, !339}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !435, file: !44, line: 1952, baseType: !402, size: 64, offset: 960)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !435, file: !44, line: 1954, baseType: !486, size: 64, offset: 1024)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!150, !489, !213}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !491, line: 539, flags: DIFlagFwdDecl)
!491 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!492 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !435, file: !44, line: 1955, baseType: !486, size: 64, offset: 1088)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !435, file: !44, line: 1956, baseType: !486, size: 64, offset: 1152)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !435, file: !44, line: 1957, baseType: !486, size: 64, offset: 1216)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !435, file: !44, line: 1963, baseType: !496, size: 64, offset: 1280)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!150, !367, !162, !148}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !435, file: !44, line: 1964, baseType: !500, size: 64, offset: 1344)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!503, !367, !504}
!503 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !506, line: 12, size: 256, elements: !507)
!506 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!507 = !{!508, !509, !510, !511, !512}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !505, file: !506, line: 13, baseType: !148, size: 32)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !505, file: !506, line: 16, baseType: !150, size: 32, offset: 32)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !505, file: !506, line: 23, baseType: !167, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !505, file: !506, line: 30, baseType: !167, size: 64, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !505, file: !506, line: 33, baseType: !513, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !164, line: 27, flags: DIFlagFwdDecl)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !435, file: !44, line: 1966, baseType: !500, size: 64, offset: 1408)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !368, file: !44, line: 1424, baseType: !517, size: 64, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !520)
!520 = !{!521, !587, !591, !595, !596, !597, !598, !599, !604, !609, !613}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !519, file: !38, line: 323, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!150, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !527)
!527 = !{!528, !529, !530, !531, !532, !547, !548, !553, !554, !570, !571, !572}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !526, file: !38, line: 295, baseType: !415, size: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !526, file: !38, line: 296, baseType: !155, size: 128, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !526, file: !38, line: 297, baseType: !155, size: 128, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !526, file: !38, line: 298, baseType: !155, size: 128, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !526, file: !38, line: 299, baseType: !533, size: 192, offset: 512)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !534, line: 53, size: 192, elements: !535)
!534 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!535 = !{!536, !545, !546}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !533, file: !534, line: 54, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !538, line: 13, baseType: !539)
!538 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !149, line: 175, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 173, size: 64, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !540, file: !149, line: 174, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !248, line: 22, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !250, line: 30, baseType: !379)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !533, file: !534, line: 55, baseType: !276, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !533, file: !534, line: 59, baseType: !155, size: 128, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !526, file: !38, line: 300, baseType: !276, offset: 704)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !526, file: !38, line: 301, baseType: !549, size: 32, offset: 704)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !149, line: 168, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 166, size: 32, elements: !551)
!551 = !{!552}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !550, file: !149, line: 167, baseType: !150, size: 32)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !526, file: !38, line: 302, baseType: !367, size: 64, offset: 768)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !526, file: !38, line: 303, baseType: !555, size: 64, offset: 832)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !556)
!556 = !{!557, !569}
!557 = !DIDerivedType(tag: DW_TAG_member, scope: !555, file: !38, line: 69, baseType: !558, size: 32)
!558 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !555, file: !38, line: 69, size: 32, elements: !559)
!559 = !{!560, !561, !562}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !558, file: !38, line: 70, baseType: !188, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !558, file: !38, line: 71, baseType: !197, size: 32)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !558, file: !38, line: 72, baseType: !563, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !564, line: 24, baseType: !565)
!564 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !564, line: 22, size: 32, elements: !566)
!566 = !{!567}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !565, file: !564, line: 23, baseType: !568, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !564, line: 20, baseType: !194)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !555, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !526, file: !38, line: 304, baseType: !377, size: 64, offset: 896)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !526, file: !38, line: 305, baseType: !167, size: 64, offset: 960)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !526, file: !38, line: 306, baseType: !573, size: 576, offset: 1024)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !574)
!574 = !{!575, !577, !578, !579, !580, !581, !582, !583, !586}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !573, file: !38, line: 206, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !379)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !573, file: !38, line: 207, baseType: !576, size: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !573, file: !38, line: 208, baseType: !576, size: 64, offset: 128)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !573, file: !38, line: 209, baseType: !576, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !573, file: !38, line: 210, baseType: !576, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !573, file: !38, line: 211, baseType: !576, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !573, file: !38, line: 212, baseType: !576, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !573, file: !38, line: 213, baseType: !584, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !585, line: 8, baseType: !544)
!585 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!586 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !573, file: !38, line: 214, baseType: !584, size: 64, offset: 512)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !519, file: !38, line: 324, baseType: !588, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!525, !367, !150}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !519, file: !38, line: 325, baseType: !592, size: 64, offset: 128)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{null, !525}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !519, file: !38, line: 326, baseType: !522, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !519, file: !38, line: 327, baseType: !522, size: 64, offset: 256)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !519, file: !38, line: 328, baseType: !522, size: 64, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !519, file: !38, line: 329, baseType: !463, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !519, file: !38, line: 332, baseType: !600, size: 64, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!603, !180}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !519, file: !38, line: 333, baseType: !605, size: 64, offset: 512)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!150, !180, !608}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !519, file: !38, line: 335, baseType: !610, size: 64, offset: 576)
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = !DISubroutineType(types: !612)
!612 = !{!150, !180, !603}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !519, file: !38, line: 337, baseType: !614, size: 64, offset: 640)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DISubroutineType(types: !616)
!616 = !{!150, !367, !617}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !368, file: !44, line: 1425, baseType: !619, size: 64, offset: 512)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !622)
!622 = !{!623, !627, !628, !632, !633, !634, !649, !672, !676, !677, !700}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !621, file: !38, line: 429, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!150, !367, !150, !150, !356}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !621, file: !38, line: 430, baseType: !463, size: 64, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !621, file: !38, line: 431, baseType: !629, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!150, !367, !7}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !621, file: !38, line: 432, baseType: !629, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !621, file: !38, line: 433, baseType: !463, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !621, file: !38, line: 434, baseType: !635, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!150, !367, !150, !638}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !640)
!640 = !{!641, !642, !643, !644, !645, !646, !647, !648}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !639, file: !38, line: 416, baseType: !150, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !639, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !639, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !639, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !639, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !639, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !639, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !639, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !621, file: !38, line: 435, baseType: !650, size: 64, offset: 384)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!150, !367, !555, !653}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !655)
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !654, file: !38, line: 344, baseType: !150, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !654, file: !38, line: 345, baseType: !253, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !654, file: !38, line: 346, baseType: !253, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !654, file: !38, line: 347, baseType: !253, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !654, file: !38, line: 348, baseType: !253, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !654, file: !38, line: 349, baseType: !253, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !654, file: !38, line: 350, baseType: !253, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !654, file: !38, line: 351, baseType: !543, size: 64, offset: 448)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !654, file: !38, line: 353, baseType: !543, size: 64, offset: 512)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !654, file: !38, line: 354, baseType: !150, size: 32, offset: 576)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !654, file: !38, line: 355, baseType: !150, size: 32, offset: 608)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !654, file: !38, line: 356, baseType: !253, size: 64, offset: 640)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !654, file: !38, line: 357, baseType: !253, size: 64, offset: 704)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !654, file: !38, line: 358, baseType: !253, size: 64, offset: 768)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !654, file: !38, line: 359, baseType: !543, size: 64, offset: 832)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !654, file: !38, line: 360, baseType: !150, size: 32, offset: 896)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !621, file: !38, line: 436, baseType: !673, size: 64, offset: 448)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!150, !367, !617, !653}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !621, file: !38, line: 438, baseType: !650, size: 64, offset: 512)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !621, file: !38, line: 439, baseType: !678, size: 64, offset: 576)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!150, !367, !681}
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !683)
!683 = !{!684, !685}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !682, file: !38, line: 410, baseType: !7, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !682, file: !38, line: 411, baseType: !686, size: 1344, offset: 64)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !687, size: 1344, elements: !427)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !688)
!688 = !{!689, !690, !691, !692, !693, !694, !695, !696, !697, !699}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !687, file: !38, line: 396, baseType: !7, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !687, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !687, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !687, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !687, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !687, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !687, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !687, file: !38, line: 404, baseType: !255, size: 64, offset: 256)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !687, file: !38, line: 405, baseType: !698, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !149, line: 126, baseType: !253)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !687, file: !38, line: 406, baseType: !698, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !621, file: !38, line: 440, baseType: !629, size: 64, offset: 640)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !368, file: !44, line: 1426, baseType: !702, size: 64, offset: 576)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !704)
!704 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !368, file: !44, line: 1427, baseType: !167, size: 64, offset: 640)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !368, file: !44, line: 1428, baseType: !167, size: 64, offset: 704)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !368, file: !44, line: 1429, baseType: !167, size: 64, offset: 768)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !368, file: !44, line: 1430, baseType: !213, size: 64, offset: 832)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !368, file: !44, line: 1431, baseType: !710, size: 256, offset: 896)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !711, line: 35, size: 256, elements: !712)
!711 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!712 = !{!713, !714, !715, !717}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !710, file: !711, line: 36, baseType: !537, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !710, file: !711, line: 42, baseType: !537, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !710, file: !711, line: 46, baseType: !716, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !277, line: 29, baseType: !284)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !710, file: !711, line: 47, baseType: !155, size: 128, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !368, file: !44, line: 1432, baseType: !150, size: 32, offset: 1152)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !368, file: !44, line: 1433, baseType: !549, size: 32, offset: 1184)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !368, file: !44, line: 1437, baseType: !721, size: 64, offset: 1216)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !368, file: !44, line: 1449, baseType: !726, size: 64, offset: 1280)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !230, line: 34, size: 64, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !726, file: !230, line: 35, baseType: !233, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !368, file: !44, line: 1450, baseType: !155, size: 128, offset: 1344)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !368, file: !44, line: 1451, baseType: !731, size: 64, offset: 1472)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !368, file: !44, line: 1452, baseType: !734, size: 64, offset: 1536)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !736, line: 40, flags: DIFlagFwdDecl)
!736 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!737 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !368, file: !44, line: 1453, baseType: !738, size: 64, offset: 1600)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !368, file: !44, line: 1454, baseType: !415, size: 128, offset: 1664)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !368, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !368, file: !44, line: 1456, baseType: !743, size: 2432, offset: 1856)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !744)
!744 = !{!745, !746, !747, !749, !781}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !743, file: !38, line: 519, baseType: !7, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !743, file: !38, line: 520, baseType: !710, size: 256, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !743, file: !38, line: 521, baseType: !748, size: 192, offset: 320)
!748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 192, elements: !427)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !743, file: !38, line: 522, baseType: !750, size: 1728, offset: 512)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 1728, elements: !427)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !752)
!752 = !{!753, !773, !774, !775, !776, !777, !778, !779, !780}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !751, file: !38, line: 223, baseType: !754, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !756)
!756 = !{!757, !758, !771, !772}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !755, file: !38, line: 444, baseType: !150, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !755, file: !38, line: 445, baseType: !759, size: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !762)
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !761, file: !38, line: 311, baseType: !463, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !761, file: !38, line: 312, baseType: !463, size: 64, offset: 64)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !761, file: !38, line: 313, baseType: !463, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !761, file: !38, line: 314, baseType: !463, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !761, file: !38, line: 315, baseType: !522, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !761, file: !38, line: 316, baseType: !522, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !761, file: !38, line: 317, baseType: !522, size: 64, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !761, file: !38, line: 318, baseType: !614, size: 64, offset: 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !755, file: !38, line: 446, baseType: !406, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !755, file: !38, line: 447, baseType: !754, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !751, file: !38, line: 224, baseType: !150, size: 32, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !751, file: !38, line: 226, baseType: !155, size: 128, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !751, file: !38, line: 227, baseType: !167, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !751, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !751, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !751, file: !38, line: 230, baseType: !576, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !751, file: !38, line: 231, baseType: !576, size: 64, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !751, file: !38, line: 232, baseType: !147, size: 64, offset: 512)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !743, file: !38, line: 523, baseType: !782, size: 192, offset: 2240)
!782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, size: 192, elements: !427)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !368, file: !44, line: 1458, baseType: !784, size: 2112, offset: 4288)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !785)
!785 = !{!786, !787, !794}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !784, file: !44, line: 1411, baseType: !150, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !784, file: !44, line: 1412, baseType: !788, size: 128, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !789, line: 40, baseType: !790)
!789 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !789, line: 36, size: 128, elements: !791)
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !790, file: !789, line: 37, baseType: !276)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !790, file: !789, line: 38, baseType: !155, size: 128)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !784, file: !44, line: 1413, baseType: !795, size: 1920, offset: 192)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 1920, elements: !427)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !797, line: 12, size: 640, elements: !798)
!797 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!798 = !{!799, !815, !817, !2501, !2502}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !796, file: !797, line: 13, baseType: !800, size: 320)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !801, line: 17, size: 320, elements: !802)
!801 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!802 = !{!803, !804, !805, !806}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !800, file: !801, line: 18, baseType: !150, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !800, file: !801, line: 19, baseType: !150, size: 32, offset: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !800, file: !801, line: 20, baseType: !788, size: 128, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !800, file: !801, line: 22, baseType: !807, size: 128, align: 64, offset: 192)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !149, line: 216, size: 128, align: 64, elements: !808)
!808 = !{!809, !811}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !807, file: !149, line: 217, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !807, file: !149, line: 218, baseType: !812, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{null, !810}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !796, file: !797, line: 14, baseType: !816, size: 64, offset: 320)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !796, file: !797, line: 15, baseType: !818, size: 64, offset: 384)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !819, line: 16, size: 64, elements: !820)
!819 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!820 = !{!821}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !818, file: !819, line: 17, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !736, line: 640, size: 48640, elements: !824)
!824 = !{!825, !831, !833, !834, !840, !841, !842, !843, !844, !845, !846, !847, !851, !876, !887, !979, !980, !981, !992, !993, !995, !996, !1793, !1794, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1871, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1886, !1887, !1888, !1890, !1891, !1892, !1893, !1894, !1895, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1919, !1924, !1925, !1926, !1927, !1928, !1932, !1935, !1938, !1941, !1944, !1948, !2049, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2097, !2098, !2099, !2100, !2101, !2106, !2107, !2108, !2111, !2112, !2115, !2118, !2121, !2122, !2162, !2165, !2166, !2245, !2246, !2249, !2250, !2253, !2254, !2255, !2259, !2260, !2261, !2274, !2275, !2276, !2286, !2291, !2292, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !823, file: !736, line: 646, baseType: !826, size: 128)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !827, line: 56, size: 128, elements: !828)
!827 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !826, file: !827, line: 57, baseType: !167, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !826, file: !827, line: 58, baseType: !247, size: 32, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !823, file: !736, line: 649, baseType: !832, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !503)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !823, file: !736, line: 657, baseType: !147, size: 64, offset: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !823, file: !736, line: 658, baseType: !835, size: 32, offset: 256)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !836, line: 113, baseType: !837)
!836 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !836, line: 111, size: 32, elements: !838)
!838 = !{!839}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !837, file: !836, line: 112, baseType: !549, size: 32)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !823, file: !736, line: 660, baseType: !7, size: 32, offset: 288)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !823, file: !736, line: 661, baseType: !7, size: 32, offset: 320)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !823, file: !736, line: 684, baseType: !150, size: 32, offset: 352)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !823, file: !736, line: 686, baseType: !150, size: 32, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !823, file: !736, line: 687, baseType: !150, size: 32, offset: 416)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !823, file: !736, line: 688, baseType: !150, size: 32, offset: 448)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !823, file: !736, line: 689, baseType: !7, size: 32, offset: 480)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !823, file: !736, line: 691, baseType: !848, size: 64, offset: 512)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !850)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !736, line: 691, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !823, file: !736, line: 692, baseType: !852, size: 832, offset: 576)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !736, line: 451, size: 832, elements: !853)
!853 = !{!854, !859, !867, !868, !869, !870, !871, !872, !873, !874}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !852, file: !736, line: 453, baseType: !855, size: 128)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !736, line: 325, size: 128, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !855, file: !736, line: 326, baseType: !167, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !855, file: !736, line: 327, baseType: !247, size: 32, offset: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !852, file: !736, line: 454, baseType: !860, size: 192, align: 64, offset: 128)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !861, line: 24, size: 192, align: 64, elements: !862)
!861 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!862 = !{!863, !864, !866}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !860, file: !861, line: 25, baseType: !167, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !860, file: !861, line: 26, baseType: !865, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !860, file: !861, line: 27, baseType: !865, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !852, file: !736, line: 455, baseType: !155, size: 128, offset: 320)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !852, file: !736, line: 456, baseType: !7, size: 32, offset: 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !852, file: !736, line: 458, baseType: !253, size: 64, offset: 512)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !852, file: !736, line: 459, baseType: !253, size: 64, offset: 576)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !852, file: !736, line: 460, baseType: !253, size: 64, offset: 640)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !852, file: !736, line: 461, baseType: !253, size: 64, offset: 704)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !852, file: !736, line: 463, baseType: !253, size: 64, offset: 768)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !852, file: !736, line: 465, baseType: !875, offset: 832)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !736, line: 415, elements: !290)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !823, file: !736, line: 693, baseType: !877, size: 384, offset: 1408)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !736, line: 489, size: 384, elements: !878)
!878 = !{!879, !880, !881, !882, !883, !884, !885}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !877, file: !736, line: 490, baseType: !155, size: 128)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !877, file: !736, line: 491, baseType: !167, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !877, file: !736, line: 492, baseType: !167, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !877, file: !736, line: 493, baseType: !7, size: 32, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !877, file: !736, line: 494, baseType: !185, size: 16, offset: 288)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !877, file: !736, line: 495, baseType: !185, size: 16, offset: 304)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !877, file: !736, line: 497, baseType: !886, size: 64, offset: 320)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !823, file: !736, line: 697, baseType: !888, size: 1792, offset: 1792)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !736, line: 507, size: 1792, elements: !889)
!889 = !{!890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !976, !977}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !888, file: !736, line: 508, baseType: !860, size: 192, align: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !888, file: !736, line: 515, baseType: !253, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !888, file: !736, line: 516, baseType: !253, size: 64, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !888, file: !736, line: 517, baseType: !253, size: 64, offset: 320)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !888, file: !736, line: 518, baseType: !253, size: 64, offset: 384)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !888, file: !736, line: 519, baseType: !253, size: 64, offset: 448)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !888, file: !736, line: 526, baseType: !543, size: 64, offset: 512)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !888, file: !736, line: 527, baseType: !253, size: 64, offset: 576)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !888, file: !736, line: 528, baseType: !7, size: 32, offset: 640)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !888, file: !736, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !888, file: !736, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !888, file: !736, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !888, file: !736, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !888, file: !736, line: 563, baseType: !904, size: 512, offset: 704)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !905)
!905 = !{!906, !914, !915, !920, !970, !973, !974, !975}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !904, file: !20, line: 119, baseType: !907, size: 256)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !908, line: 9, size: 256, elements: !909)
!908 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !907, file: !908, line: 10, baseType: !860, size: 192, align: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !907, file: !908, line: 11, baseType: !912, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !913, line: 29, baseType: !543)
!913 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!914 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !904, file: !20, line: 120, baseType: !912, size: 64, offset: 256)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !904, file: !20, line: 121, baseType: !916, size: 64, offset: 320)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!19, !919}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !904, file: !20, line: 122, baseType: !921, size: 64, offset: 384)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !923)
!923 = !{!924, !944, !945, !948, !953, !954, !965, !969}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !922, file: !20, line: 160, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !927)
!927 = !{!928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !926, file: !20, line: 215, baseType: !716)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !926, file: !20, line: 216, baseType: !7, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !926, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !926, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !926, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !926, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !926, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !926, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !926, file: !20, line: 233, baseType: !912, size: 64, offset: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !926, file: !20, line: 234, baseType: !919, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !926, file: !20, line: 235, baseType: !912, size: 64, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !926, file: !20, line: 236, baseType: !919, size: 64, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !926, file: !20, line: 237, baseType: !941, size: 4096, offset: 512)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !922, size: 4096, elements: !942)
!942 = !{!943}
!943 = !DISubrange(count: 8)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !922, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !922, file: !20, line: 162, baseType: !946, size: 32, offset: 96)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !149, line: 27, baseType: !947)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !195, line: 96, baseType: !150)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !922, file: !20, line: 163, baseType: !949, size: 32, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !220, line: 276, baseType: !950)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !220, line: 276, size: 32, elements: !951)
!951 = !{!952}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !950, file: !220, line: 276, baseType: !224, size: 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !922, file: !20, line: 164, baseType: !919, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !922, file: !20, line: 165, baseType: !955, size: 128, offset: 256)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !908, line: 14, size: 128, elements: !956)
!956 = !{!957}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !955, file: !908, line: 15, baseType: !958, size: 128)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !861, line: 125, size: 128, elements: !959)
!959 = !{!960, !964}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !958, file: !861, line: 126, baseType: !961, size: 64)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !861, line: 31, size: 64, elements: !962)
!962 = !{!963}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !961, file: !861, line: 32, baseType: !865, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !958, file: !861, line: 127, baseType: !865, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !922, file: !20, line: 166, baseType: !966, size: 64, offset: 384)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!912}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !922, file: !20, line: 167, baseType: !912, size: 64, offset: 448)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !904, file: !20, line: 123, baseType: !971, size: 8, offset: 448)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !248, line: 17, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !250, line: 21, baseType: !259)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !904, file: !20, line: 124, baseType: !971, size: 8, offset: 456)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !904, file: !20, line: 125, baseType: !971, size: 8, offset: 464)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !904, file: !20, line: 126, baseType: !971, size: 8, offset: 472)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !888, file: !736, line: 572, baseType: !904, size: 512, offset: 1216)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !888, file: !736, line: 580, baseType: !978, size: 64, offset: 1728)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !823, file: !736, line: 721, baseType: !7, size: 32, offset: 3584)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !823, file: !736, line: 722, baseType: !150, size: 32, offset: 3616)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !823, file: !736, line: 723, baseType: !982, size: 64, offset: 3648)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !985, line: 17, baseType: !986)
!985 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !985, line: 17, size: 64, elements: !987)
!987 = !{!988}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !986, file: !985, line: 17, baseType: !989, size: 64)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 64, elements: !990)
!990 = !{!991}
!991 = !DISubrange(count: 1)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !823, file: !736, line: 724, baseType: !984, size: 64, offset: 3712)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !823, file: !736, line: 749, baseType: !994, offset: 3776)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !736, line: 290, elements: !290)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !823, file: !736, line: 751, baseType: !155, size: 128, offset: 3776)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !823, file: !736, line: 757, baseType: !997, size: 64, offset: 3904)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !164, line: 388, size: 7296, elements: !999)
!999 = !{!1000, !1789}
!1000 = !DIDerivedType(tag: DW_TAG_member, scope: !998, file: !164, line: 389, baseType: !1001, size: 7296)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !998, file: !164, line: 389, size: 7296, elements: !1002)
!1002 = !{!1003, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1691, !1697, !1700, !1739, !1740, !1762, !1763, !1766, !1767, !1768, !1771, !1772, !1773, !1776, !1788}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1001, file: !164, line: 390, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !164, line: 305, size: 1472, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1021, !1022, !1027, !1028, !1031, !1116, !1117, !1639, !1640, !1641}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1005, file: !164, line: 308, baseType: !167, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1005, file: !164, line: 309, baseType: !167, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !1005, file: !164, line: 313, baseType: !1004, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !1005, file: !164, line: 313, baseType: !1004, size: 64, offset: 192)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !1005, file: !164, line: 315, baseType: !860, size: 192, align: 64, offset: 256)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !1005, file: !164, line: 323, baseType: !167, size: 64, offset: 448)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1005, file: !164, line: 327, baseType: !997, size: 64, offset: 512)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1005, file: !164, line: 333, baseType: !1015, size: 64, offset: 576)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !491, line: 284, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !491, line: 284, size: 64, elements: !1017)
!1017 = !{!1018}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1016, file: !491, line: 284, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1020, line: 19, baseType: !167)
!1020 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1005, file: !164, line: 334, baseType: !167, size: 64, offset: 640)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1005, file: !164, line: 343, baseType: !1023, size: 256, offset: 704)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !164, line: 340, size: 256, elements: !1024)
!1024 = !{!1025, !1026}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1023, file: !164, line: 341, baseType: !860, size: 192, align: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1023, file: !164, line: 342, baseType: !167, size: 64, offset: 192)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1005, file: !164, line: 351, baseType: !155, size: 128, offset: 960)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1005, file: !164, line: 353, baseType: !1029, size: 64, offset: 1088)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !164, line: 353, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1005, file: !164, line: 356, baseType: !1032, size: 64, offset: 1152)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1034)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !1035)
!1035 = !{!1036, !1040, !1041, !1045, !1049, !1090, !1094, !1098, !1102, !1103, !1104, !1108, !1112}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1034, file: !14, line: 558, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{null, !1004}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1034, file: !14, line: 559, baseType: !1037, size: 64, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !1034, file: !14, line: 560, baseType: !1042, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!150, !1004, !167}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1034, file: !14, line: 561, baseType: !1046, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!150, !1004}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1034, file: !14, line: 562, baseType: !1050, size: 64, offset: 256)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !164, line: 682, baseType: !7)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1069, !1076, !1082, !1083, !1084, !1086, !1088}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1055, file: !14, line: 509, baseType: !1004, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1055, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1055, file: !14, line: 511, baseType: !148, size: 32, offset: 96)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1055, file: !14, line: 512, baseType: !167, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1055, file: !14, line: 513, baseType: !167, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1055, file: !14, line: 514, baseType: !1063, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !491, line: 385, baseType: !1065)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !491, line: 385, size: 64, elements: !1066)
!1066 = !{!1067}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1065, file: !491, line: 385, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1020, line: 15, baseType: !167)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1055, file: !14, line: 516, baseType: !1070, size: 64, offset: 320)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !491, line: 359, baseType: !1072)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !491, line: 359, size: 64, elements: !1073)
!1073 = !{!1074}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1072, file: !491, line: 359, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1020, line: 16, baseType: !167)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1055, file: !14, line: 519, baseType: !1077, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1020, line: 21, baseType: !1078)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1020, line: 21, size: 64, elements: !1079)
!1079 = !{!1080}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1078, file: !1020, line: 21, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1020, line: 14, baseType: !167)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1055, file: !14, line: 521, baseType: !162, size: 64, offset: 448)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1055, file: !14, line: 522, baseType: !162, size: 64, offset: 512)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1055, file: !14, line: 528, baseType: !1085, size: 64, offset: 576)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1055, file: !14, line: 532, baseType: !1087, size: 64, offset: 640)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1055, file: !14, line: 536, baseType: !1089, size: 64, offset: 704)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !491, line: 509, baseType: !162)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1034, file: !14, line: 563, baseType: !1091, size: 64, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DISubroutineType(types: !1093)
!1093 = !{!1053, !1054, !13}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1034, file: !14, line: 565, baseType: !1095, size: 64, offset: 384)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DISubroutineType(types: !1097)
!1097 = !{null, !1054, !167, !167}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1034, file: !14, line: 567, baseType: !1099, size: 64, offset: 448)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DISubroutineType(types: !1101)
!1101 = !{!167, !1004}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1034, file: !14, line: 571, baseType: !1050, size: 64, offset: 512)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1034, file: !14, line: 574, baseType: !1050, size: 64, offset: 576)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1034, file: !14, line: 579, baseType: !1105, size: 64, offset: 640)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!150, !1004, !167, !147, !150, !150}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1034, file: !14, line: 585, baseType: !1109, size: 64, offset: 704)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DISubroutineType(types: !1111)
!1111 = !{!313, !1004}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1034, file: !14, line: 615, baseType: !1113, size: 64, offset: 768)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{!162, !1004, !167}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1005, file: !164, line: 359, baseType: !167, size: 64, offset: 1216)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1005, file: !164, line: 361, baseType: !1118, size: 64, offset: 1280)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !1120)
!1120 = !{!1121, !1131, !1132, !1133, !1395, !1396, !1397, !1398, !1399, !1401, !1402, !1403, !1433, !1621, !1630, !1631, !1632, !1633, !1634, !1635, !1638}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !1119, file: !44, line: 920, baseType: !1122, size: 128)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1119, file: !44, line: 917, size: 128, elements: !1123)
!1123 = !{!1124, !1130}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !1122, file: !44, line: 918, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1126, line: 58, size: 64, elements: !1127)
!1126 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!1127 = !{!1128}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1125, file: !1126, line: 59, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !1122, file: !44, line: 919, baseType: !807, size: 128, align: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1119, file: !44, line: 921, baseType: !347, size: 128, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1119, file: !44, line: 922, baseType: !180, size: 64, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1119, file: !44, line: 923, baseType: !1134, size: 64, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1136)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !1137)
!1137 = !{!1138, !1139, !1143, !1154, !1158, !1186, !1187, !1191, !1204, !1205, !1213, !1217, !1218, !1222, !1223, !1227, !1232, !1233, !1237, !1241, !1350, !1354, !1358, !1362, !1363, !1369, !1373, !1378, !1382, !1386, !1390, !1394}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1136, file: !44, line: 1823, baseType: !406, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1136, file: !44, line: 1824, baseType: !1140, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!377, !1118, !377, !150}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1136, file: !44, line: 1825, baseType: !1144, size: 64, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{!1147, !1118, !339, !1150, !1153}
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !149, line: 60, baseType: !1148)
!1148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !195, line: 73, baseType: !1149)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !195, line: 15, baseType: !503)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !149, line: 55, baseType: !1151)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !195, line: 72, baseType: !1152)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !195, line: 16, baseType: !167)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1136, file: !44, line: 1826, baseType: !1155, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!1147, !1118, !313, !1150, !1153}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1136, file: !44, line: 1827, baseType: !1159, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!1147, !1162, !1184}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !1164)
!1164 = !{!1165, !1166, !1167, !1171, !1172, !1173, !1176, !1177}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1163, file: !44, line: 321, baseType: !1118, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1163, file: !44, line: 326, baseType: !377, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1163, file: !44, line: 327, baseType: !1168, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{null, !1162, !503, !503}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1163, file: !44, line: 328, baseType: !147, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1163, file: !44, line: 329, baseType: !150, size: 32, offset: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !1163, file: !44, line: 330, baseType: !1174, size: 16, offset: 288)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !248, line: 19, baseType: !1175)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !250, line: 24, baseType: !185)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1163, file: !44, line: 331, baseType: !1174, size: 16, offset: 304)
!1177 = !DIDerivedType(tag: DW_TAG_member, scope: !1163, file: !44, line: 332, baseType: !1178, size: 64, offset: 320)
!1178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1163, file: !44, line: 332, size: 64, elements: !1179)
!1179 = !{!1180, !1181}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !1178, file: !44, line: 333, baseType: !7, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1178, file: !44, line: 334, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1136, file: !44, line: 1828, baseType: !1159, size: 64, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1136, file: !44, line: 1829, baseType: !1188, size: 64, offset: 384)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!150, !1162, !358}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !1136, file: !44, line: 1830, baseType: !1192, size: 64, offset: 448)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!150, !1118, !1195}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !1197)
!1197 = !{!1198, !1203}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1196, file: !44, line: 1777, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !1200)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{!150, !1195, !313, !150, !377, !253, !7}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1196, file: !44, line: 1778, baseType: !377, size: 64, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1136, file: !44, line: 1831, baseType: !1192, size: 64, offset: 512)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1136, file: !44, line: 1832, baseType: !1206, size: 64, offset: 576)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DISubroutineType(types: !1208)
!1208 = !{!1209, !1118, !1211}
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1210, line: 52, baseType: !7)
!1210 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !392, line: 27, flags: DIFlagFwdDecl)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1136, file: !44, line: 1833, baseType: !1214, size: 64, offset: 640)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!503, !1118, !7, !167}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1136, file: !44, line: 1834, baseType: !1214, size: 64, offset: 704)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1136, file: !44, line: 1835, baseType: !1219, size: 64, offset: 768)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DISubroutineType(types: !1221)
!1221 = !{!150, !1118, !1004}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1136, file: !44, line: 1836, baseType: !167, size: 64, offset: 832)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1136, file: !44, line: 1837, baseType: !1224, size: 64, offset: 896)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!150, !180, !1118}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1136, file: !44, line: 1838, baseType: !1228, size: 64, offset: 960)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!150, !1118, !1231}
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !147)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1136, file: !44, line: 1839, baseType: !1224, size: 64, offset: 1024)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1136, file: !44, line: 1840, baseType: !1234, size: 64, offset: 1088)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{!150, !1118, !377, !377, !150}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1136, file: !44, line: 1841, baseType: !1238, size: 64, offset: 1152)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DISubroutineType(types: !1240)
!1240 = !{!150, !150, !1118, !150}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1136, file: !44, line: 1842, baseType: !1242, size: 64, offset: 1216)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!150, !1118, !150, !1245}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1279, !1280, !1281, !1294, !1326}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !1246, file: !44, line: 1063, baseType: !1245, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !1246, file: !44, line: 1064, baseType: !155, size: 128, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !1246, file: !44, line: 1065, baseType: !415, size: 128, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !1246, file: !44, line: 1066, baseType: !155, size: 128, offset: 320)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !1246, file: !44, line: 1069, baseType: !155, size: 128, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !1246, file: !44, line: 1072, baseType: !1231, size: 64, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !1246, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !1246, file: !44, line: 1074, baseType: !259, size: 8, offset: 672)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !1246, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !1246, file: !44, line: 1076, baseType: !150, size: 32, offset: 736)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !1246, file: !44, line: 1077, baseType: !788, size: 128, offset: 768)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !1246, file: !44, line: 1078, baseType: !1118, size: 64, offset: 896)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !1246, file: !44, line: 1079, baseType: !377, size: 64, offset: 960)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !1246, file: !44, line: 1080, baseType: !377, size: 64, offset: 1024)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !1246, file: !44, line: 1082, baseType: !1263, size: 64, offset: 1088)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !1265)
!1265 = !{!1266, !1274, !1275, !1276, !1277, !1278}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !1264, file: !44, line: 1315, baseType: !1267)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1268, line: 20, baseType: !1269)
!1268 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1268, line: 11, elements: !1270)
!1270 = !{!1271}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1269, file: !1268, line: 12, baseType: !1272)
!1272 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !288, line: 33, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !288, line: 31, elements: !290)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1264, file: !44, line: 1316, baseType: !150, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !1264, file: !44, line: 1317, baseType: !150, size: 32, offset: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !1264, file: !44, line: 1318, baseType: !1263, size: 64, offset: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !1264, file: !44, line: 1319, baseType: !1118, size: 64, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !1264, file: !44, line: 1320, baseType: !807, size: 128, align: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !1246, file: !44, line: 1084, baseType: !167, size: 64, offset: 1152)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !1246, file: !44, line: 1085, baseType: !167, size: 64, offset: 1216)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !1246, file: !44, line: 1087, baseType: !1282, size: 64, offset: 1280)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1284)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !1285)
!1285 = !{!1286, !1290}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !1284, file: !44, line: 1012, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{null, !1245, !1245}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !1284, file: !44, line: 1013, baseType: !1291, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{null, !1245}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !1246, file: !44, line: 1088, baseType: !1295, size: 64, offset: 1344)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1297)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !1298)
!1298 = !{!1299, !1303, !1307, !1308, !1312, !1316, !1320, !1325}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !1297, file: !44, line: 1017, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!1231, !1231}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !1297, file: !44, line: 1018, baseType: !1304, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DISubroutineType(types: !1306)
!1306 = !{null, !1231}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !1297, file: !44, line: 1019, baseType: !1291, size: 64, offset: 128)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !1297, file: !44, line: 1020, baseType: !1309, size: 64, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!150, !1245, !150}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !1297, file: !44, line: 1021, baseType: !1313, size: 64, offset: 256)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!358, !1245}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !1297, file: !44, line: 1022, baseType: !1317, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!150, !1245, !150, !158}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !1297, file: !44, line: 1023, baseType: !1321, size: 64, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{null, !1245, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !1297, file: !44, line: 1024, baseType: !1313, size: 64, offset: 448)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !1246, file: !44, line: 1097, baseType: !1327, size: 256, offset: 1408)
!1327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1246, file: !44, line: 1089, size: 256, elements: !1328)
!1328 = !{!1329, !1338, !1344}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !1327, file: !44, line: 1090, baseType: !1330, size: 256)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !1331, line: 10, size: 256, elements: !1332)
!1331 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!1332 = !{!1333, !1334, !1337}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1330, file: !1331, line: 11, baseType: !247, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1330, file: !1331, line: 12, baseType: !1335, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !1331, line: 5, flags: DIFlagFwdDecl)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1330, file: !1331, line: 13, baseType: !155, size: 128, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !1327, file: !44, line: 1091, baseType: !1339, size: 64)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !1331, line: 17, size: 64, elements: !1340)
!1340 = !{!1341}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1339, file: !1331, line: 18, baseType: !1342, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !1331, line: 16, flags: DIFlagFwdDecl)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !1327, file: !44, line: 1096, baseType: !1345, size: 192)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1327, file: !44, line: 1092, size: 192, elements: !1346)
!1346 = !{!1347, !1348, !1349}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1345, file: !44, line: 1093, baseType: !155, size: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1345, file: !44, line: 1094, baseType: !150, size: 32, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !1345, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !1136, file: !44, line: 1843, baseType: !1351, size: 64, offset: 1280)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!1147, !1118, !162, !150, !1150, !1153, !150}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1136, file: !44, line: 1844, baseType: !1355, size: 64, offset: 1344)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!167, !1118, !167, !167, !167, !167}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1136, file: !44, line: 1845, baseType: !1359, size: 64, offset: 1408)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!150, !150}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1136, file: !44, line: 1846, baseType: !1242, size: 64, offset: 1472)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1136, file: !44, line: 1847, baseType: !1364, size: 64, offset: 1536)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!1147, !1367, !1118, !1153, !1150, !7}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !736, line: 53, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1136, file: !44, line: 1848, baseType: !1370, size: 64, offset: 1600)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{!1147, !1118, !1153, !1367, !1150, !7}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1136, file: !44, line: 1849, baseType: !1374, size: 64, offset: 1664)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{!150, !1118, !503, !1377, !1324}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1136, file: !44, line: 1850, baseType: !1379, size: 64, offset: 1728)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!503, !1118, !150, !377, !377}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1136, file: !44, line: 1852, baseType: !1383, size: 64, offset: 1792)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{null, !489, !1118}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1136, file: !44, line: 1856, baseType: !1387, size: 64, offset: 1856)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!1147, !1118, !377, !1118, !377, !1150, !7}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1136, file: !44, line: 1858, baseType: !1391, size: 64, offset: 1920)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!377, !1118, !377, !1118, !377, !377, !7}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1136, file: !44, line: 1861, baseType: !1234, size: 64, offset: 1984)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1119, file: !44, line: 929, baseType: !276, offset: 384)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !1119, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1119, file: !44, line: 931, baseType: !537, size: 64, offset: 448)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1119, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1119, file: !44, line: 933, baseType: !1400, size: 32, offset: 544)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !149, line: 150, baseType: !7)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1119, file: !44, line: 934, baseType: !533, size: 192, offset: 576)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1119, file: !44, line: 935, baseType: !377, size: 64, offset: 768)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1119, file: !44, line: 936, baseType: !1404, size: 192, offset: 832)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !1405)
!1405 = !{!1406, !1407, !1429, !1430, !1431, !1432}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1404, file: !44, line: 886, baseType: !1267)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1404, file: !44, line: 887, baseType: !1408, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1410)
!1410 = !{!1411, !1412, !1413, !1414, !1418, !1419, !1420, !1421}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1409, file: !53, line: 61, baseType: !835, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1409, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1409, file: !53, line: 63, baseType: !276, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1409, file: !53, line: 65, baseType: !1415, size: 256, offset: 64)
!1415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 256, elements: !1416)
!1416 = !{!1417}
!1417 = !DISubrange(count: 4)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1409, file: !53, line: 66, baseType: !411, size: 64, offset: 320)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1409, file: !53, line: 68, baseType: !788, size: 128, offset: 384)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1409, file: !53, line: 69, baseType: !807, size: 128, align: 64, offset: 512)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1409, file: !53, line: 70, baseType: !1422, size: 128, offset: 640)
!1422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1423, size: 128, elements: !990)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1424)
!1424 = !{!1425, !1426}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1423, file: !53, line: 55, baseType: !150, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1423, file: !53, line: 56, baseType: !1427, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1404, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1404, file: !44, line: 889, baseType: !188, size: 32, offset: 96)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1404, file: !44, line: 889, baseType: !188, size: 32, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1404, file: !44, line: 890, baseType: !150, size: 32, offset: 160)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1119, file: !44, line: 937, baseType: !1434, size: 64, offset: 1024)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1436)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1437, line: 111, size: 1280, elements: !1438)
!1437 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1438 = !{!1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1458, !1459, !1460, !1461, !1462, !1463, !1574, !1575, !1576, !1577, !1603, !1606, !1616}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1436, file: !1437, line: 112, baseType: !549, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1436, file: !1437, line: 120, baseType: !188, size: 32, offset: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1436, file: !1437, line: 121, baseType: !197, size: 32, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1436, file: !1437, line: 122, baseType: !188, size: 32, offset: 96)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1436, file: !1437, line: 123, baseType: !197, size: 32, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1436, file: !1437, line: 124, baseType: !188, size: 32, offset: 160)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1436, file: !1437, line: 125, baseType: !197, size: 32, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1436, file: !1437, line: 126, baseType: !188, size: 32, offset: 224)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1436, file: !1437, line: 127, baseType: !197, size: 32, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1436, file: !1437, line: 128, baseType: !7, size: 32, offset: 288)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1436, file: !1437, line: 129, baseType: !1450, size: 64, offset: 320)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1451, line: 26, baseType: !1452)
!1451 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1451, line: 24, size: 64, elements: !1453)
!1453 = !{!1454}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1452, file: !1451, line: 25, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 64, elements: !1456)
!1456 = !{!1457}
!1457 = !DISubrange(count: 2)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1436, file: !1437, line: 130, baseType: !1450, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1436, file: !1437, line: 131, baseType: !1450, size: 64, offset: 448)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1436, file: !1437, line: 132, baseType: !1450, size: 64, offset: 512)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1436, file: !1437, line: 133, baseType: !1450, size: 64, offset: 576)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1436, file: !1437, line: 135, baseType: !259, size: 8, offset: 640)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1436, file: !1437, line: 137, baseType: !1464, size: 64, offset: 704)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1466, line: 189, size: 1664, elements: !1467)
!1466 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1467 = !{!1468, !1469, !1474, !1479, !1480, !1483, !1484, !1489, !1490, !1491, !1492, !1495, !1496, !1497, !1499, !1500, !1538, !1559}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1465, file: !1466, line: 190, baseType: !835, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1465, file: !1466, line: 191, baseType: !1470, size: 32, offset: 32)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1466, line: 28, baseType: !1471)
!1471 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !149, line: 98, baseType: !1472)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !248, line: 20, baseType: !1473)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !250, line: 26, baseType: !150)
!1474 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !1466, line: 192, baseType: !1475, size: 192, offset: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1465, file: !1466, line: 192, size: 192, elements: !1476)
!1476 = !{!1477, !1478}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1475, file: !1466, line: 193, baseType: !155, size: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1475, file: !1466, line: 194, baseType: !860, size: 192, align: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1465, file: !1466, line: 199, baseType: !710, size: 256, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1465, file: !1466, line: 200, baseType: !1481, size: 64, offset: 512)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1466, line: 200, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1465, file: !1466, line: 201, baseType: !147, size: 64, offset: 576)
!1484 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !1466, line: 202, baseType: !1485, size: 64, offset: 640)
!1485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1465, file: !1466, line: 202, size: 64, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1485, file: !1466, line: 203, baseType: !584, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1485, file: !1466, line: 204, baseType: !584, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1465, file: !1466, line: 206, baseType: !584, size: 64, offset: 704)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1465, file: !1466, line: 207, baseType: !188, size: 32, offset: 768)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1465, file: !1466, line: 208, baseType: !197, size: 32, offset: 800)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1465, file: !1466, line: 209, baseType: !1493, size: 32, offset: 832)
!1493 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1466, line: 31, baseType: !1494)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !149, line: 104, baseType: !247)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1465, file: !1466, line: 210, baseType: !185, size: 16, offset: 864)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1465, file: !1466, line: 211, baseType: !185, size: 16, offset: 880)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1465, file: !1466, line: 215, baseType: !1498, size: 16, offset: 896)
!1498 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1465, file: !1466, line: 222, baseType: !167, size: 64, offset: 960)
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !1466, line: 239, baseType: !1501, size: 320, offset: 1024)
!1501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1465, file: !1466, line: 239, size: 320, elements: !1502)
!1502 = !{!1503, !1530}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1501, file: !1466, line: 240, baseType: !1504, size: 320)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1466, line: 108, size: 320, elements: !1505)
!1505 = !{!1506, !1507, !1519, !1522, !1529}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1504, file: !1466, line: 110, baseType: !167, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, scope: !1504, file: !1466, line: 111, baseType: !1508, size: 64, offset: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1504, file: !1466, line: 111, size: 64, elements: !1509)
!1509 = !{!1510, !1518}
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1508, file: !1466, line: 112, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1508, file: !1466, line: 112, size: 64, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1511, file: !1466, line: 114, baseType: !1174, size: 16)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1511, file: !1466, line: 115, baseType: !1515, size: 48, offset: 16)
!1515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 48, elements: !1516)
!1516 = !{!1517}
!1517 = !DISubrange(count: 6)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1508, file: !1466, line: 121, baseType: !167, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1504, file: !1466, line: 123, baseType: !1520, size: 64, offset: 128)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1466, line: 96, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1504, file: !1466, line: 124, baseType: !1523, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1466, line: 102, size: 192, elements: !1525)
!1525 = !{!1526, !1527, !1528}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1524, file: !1466, line: 103, baseType: !807, size: 128, align: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1524, file: !1466, line: 104, baseType: !835, size: 32, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1524, file: !1466, line: 105, baseType: !358, size: 8, offset: 160)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1504, file: !1466, line: 125, baseType: !313, size: 64, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, scope: !1501, file: !1466, line: 241, baseType: !1531, size: 320)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1501, file: !1466, line: 241, size: 320, elements: !1532)
!1532 = !{!1533, !1534, !1535, !1536, !1537}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1531, file: !1466, line: 242, baseType: !167, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1531, file: !1466, line: 243, baseType: !167, size: 64, offset: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1531, file: !1466, line: 244, baseType: !1520, size: 64, offset: 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1531, file: !1466, line: 245, baseType: !1523, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1531, file: !1466, line: 246, baseType: !339, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, scope: !1465, file: !1466, line: 254, baseType: !1539, size: 256, offset: 1344)
!1539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1465, file: !1466, line: 254, size: 256, elements: !1540)
!1540 = !{!1541, !1547}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1539, file: !1466, line: 255, baseType: !1542, size: 256)
!1542 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1466, line: 128, size: 256, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1542, file: !1466, line: 129, baseType: !147, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1542, file: !1466, line: 130, baseType: !1546, size: 256)
!1546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 256, elements: !1416)
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !1466, line: 256, baseType: !1548, size: 256)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1539, file: !1466, line: 256, size: 256, elements: !1549)
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1548, file: !1466, line: 258, baseType: !155, size: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1548, file: !1466, line: 259, baseType: !1552, size: 128, offset: 128)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1553, line: 22, size: 128, elements: !1554)
!1553 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1554 = !{!1555, !1558}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1552, file: !1553, line: 23, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1553, line: 23, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1552, file: !1553, line: 24, baseType: !167, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1465, file: !1466, line: 274, baseType: !1560, size: 64, offset: 1600)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1466, line: 170, size: 192, elements: !1562)
!1562 = !{!1563, !1572, !1573}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1561, file: !1466, line: 171, baseType: !1564, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1466, line: 165, baseType: !1565)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!150, !1464, !1568, !1570, !1464}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1521)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1542)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1561, file: !1466, line: 172, baseType: !1464, size: 64, offset: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1561, file: !1466, line: 173, baseType: !1520, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1436, file: !1437, line: 138, baseType: !1464, size: 64, offset: 768)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1436, file: !1437, line: 139, baseType: !1464, size: 64, offset: 832)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1436, file: !1437, line: 140, baseType: !1464, size: 64, offset: 896)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1436, file: !1437, line: 145, baseType: !1578, size: 64, offset: 960)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1580, line: 13, size: 896, elements: !1581)
!1580 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1579, file: !1580, line: 14, baseType: !835, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1579, file: !1580, line: 15, baseType: !549, size: 32, offset: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1579, file: !1580, line: 16, baseType: !549, size: 32, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1579, file: !1580, line: 21, baseType: !537, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1579, file: !1580, line: 27, baseType: !167, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1579, file: !1580, line: 28, baseType: !167, size: 64, offset: 256)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1579, file: !1580, line: 29, baseType: !537, size: 64, offset: 320)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1579, file: !1580, line: 32, baseType: !415, size: 128, offset: 384)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1579, file: !1580, line: 33, baseType: !188, size: 32, offset: 512)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1579, file: !1580, line: 37, baseType: !537, size: 64, offset: 576)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1579, file: !1580, line: 44, baseType: !1593, size: 256, offset: 640)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1594, line: 15, size: 256, elements: !1595)
!1594 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1601, !1602}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1593, file: !1594, line: 16, baseType: !716)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1593, file: !1594, line: 18, baseType: !150, size: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1593, file: !1594, line: 19, baseType: !150, size: 32, offset: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1593, file: !1594, line: 20, baseType: !150, size: 32, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1593, file: !1594, line: 21, baseType: !150, size: 32, offset: 96)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1593, file: !1594, line: 22, baseType: !167, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1593, file: !1594, line: 23, baseType: !167, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1436, file: !1437, line: 146, baseType: !1604, size: 64, offset: 1024)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !189, line: 18, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1436, file: !1437, line: 147, baseType: !1607, size: 64, offset: 1088)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1437, line: 25, size: 64, elements: !1609)
!1609 = !{!1610, !1611, !1612}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1608, file: !1437, line: 26, baseType: !549, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1608, file: !1437, line: 27, baseType: !150, size: 32, offset: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1608, file: !1437, line: 28, baseType: !1613, offset: 64)
!1613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, elements: !1614)
!1614 = !{!1615}
!1615 = !DISubrange(count: 0)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1436, file: !1437, line: 149, baseType: !1617, size: 128, offset: 1152)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1436, file: !1437, line: 149, size: 128, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1617, file: !1437, line: 150, baseType: !150, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1617, file: !1437, line: 151, baseType: !807, size: 128, align: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1119, file: !44, line: 938, baseType: !1622, size: 256, offset: 1088)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !1623)
!1623 = !{!1624, !1625, !1626, !1627, !1628, !1629}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1622, file: !44, line: 897, baseType: !167, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1622, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1622, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1622, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1622, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1622, file: !44, line: 904, baseType: !377, size: 64, offset: 192)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1119, file: !44, line: 940, baseType: !253, size: 64, offset: 1344)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1119, file: !44, line: 945, baseType: !147, size: 64, offset: 1408)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !1119, file: !44, line: 949, baseType: !155, size: 128, offset: 1472)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !1119, file: !44, line: 950, baseType: !155, size: 128, offset: 1600)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1119, file: !44, line: 952, baseType: !176, size: 64, offset: 1728)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1119, file: !44, line: 953, baseType: !1636, size: 32, offset: 1792)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1637, line: 8, baseType: !247)
!1637 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1119, file: !44, line: 954, baseType: !1636, size: 32, offset: 1824)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1005, file: !164, line: 362, baseType: !147, size: 64, offset: 1344)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1005, file: !164, line: 365, baseType: !537, size: 64, offset: 1408)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1005, file: !164, line: 373, baseType: !1642, offset: 1472)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !164, line: 296, elements: !290)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !1001, file: !164, line: 391, baseType: !961, size: 64, offset: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !1001, file: !164, line: 392, baseType: !253, size: 64, offset: 128)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1001, file: !164, line: 394, baseType: !1355, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1001, file: !164, line: 398, baseType: !167, size: 64, offset: 256)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1001, file: !164, line: 399, baseType: !167, size: 64, offset: 320)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1001, file: !164, line: 405, baseType: !167, size: 64, offset: 384)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !1001, file: !164, line: 406, baseType: !167, size: 64, offset: 448)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1001, file: !164, line: 407, baseType: !1651, size: 64, offset: 512)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !491, line: 286, baseType: !1653)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !491, line: 286, size: 64, elements: !1654)
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1653, file: !491, line: 286, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1020, line: 18, baseType: !167)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1001, file: !164, line: 416, baseType: !549, size: 32, offset: 576)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1001, file: !164, line: 428, baseType: !549, size: 32, offset: 608)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1001, file: !164, line: 437, baseType: !549, size: 32, offset: 640)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !1001, file: !164, line: 447, baseType: !549, size: 32, offset: 672)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1001, file: !164, line: 450, baseType: !537, size: 64, offset: 704)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1001, file: !164, line: 452, baseType: !150, size: 32, offset: 768)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1001, file: !164, line: 454, baseType: !276, offset: 800)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1001, file: !164, line: 457, baseType: !710, size: 256, offset: 832)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1001, file: !164, line: 459, baseType: !155, size: 128, offset: 1088)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1001, file: !164, line: 466, baseType: !167, size: 64, offset: 1216)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1001, file: !164, line: 467, baseType: !167, size: 64, offset: 1280)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1001, file: !164, line: 469, baseType: !167, size: 64, offset: 1344)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1001, file: !164, line: 470, baseType: !167, size: 64, offset: 1408)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1001, file: !164, line: 471, baseType: !539, size: 64, offset: 1472)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1001, file: !164, line: 472, baseType: !167, size: 64, offset: 1536)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1001, file: !164, line: 473, baseType: !167, size: 64, offset: 1600)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1001, file: !164, line: 474, baseType: !167, size: 64, offset: 1664)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1001, file: !164, line: 475, baseType: !167, size: 64, offset: 1728)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1001, file: !164, line: 477, baseType: !276, offset: 1792)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1001, file: !164, line: 478, baseType: !167, size: 64, offset: 1792)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1001, file: !164, line: 478, baseType: !167, size: 64, offset: 1856)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1001, file: !164, line: 478, baseType: !167, size: 64, offset: 1920)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1001, file: !164, line: 478, baseType: !167, size: 64, offset: 1984)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1001, file: !164, line: 479, baseType: !167, size: 64, offset: 2048)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1001, file: !164, line: 479, baseType: !167, size: 64, offset: 2112)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1001, file: !164, line: 479, baseType: !167, size: 64, offset: 2176)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1001, file: !164, line: 480, baseType: !167, size: 64, offset: 2240)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1001, file: !164, line: 480, baseType: !167, size: 64, offset: 2304)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1001, file: !164, line: 480, baseType: !167, size: 64, offset: 2368)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1001, file: !164, line: 480, baseType: !167, size: 64, offset: 2432)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1001, file: !164, line: 482, baseType: !1688, size: 2816, offset: 2496)
!1688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 2816, elements: !1689)
!1689 = !{!1690}
!1690 = !DISubrange(count: 44)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1001, file: !164, line: 488, baseType: !1692, size: 256, offset: 5312)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1693, line: 60, size: 256, elements: !1694)
!1693 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1694 = !{!1695}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1692, file: !1693, line: 61, baseType: !1696, size: 256)
!1696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !537, size: 256, elements: !1416)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1001, file: !164, line: 490, baseType: !1698, size: 64, offset: 5568)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !164, line: 490, flags: DIFlagFwdDecl)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1001, file: !164, line: 493, baseType: !1701, size: 896, offset: 5632)
!1701 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1702, line: 53, baseType: !1703)
!1702 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1702, line: 13, size: 896, elements: !1704)
!1704 = !{!1705, !1706, !1707, !1708, !1711, !1712, !1713, !1714, !1734, !1735, !1736}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1703, file: !1702, line: 18, baseType: !253, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1703, file: !1702, line: 28, baseType: !539, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1703, file: !1702, line: 31, baseType: !710, size: 256, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1703, file: !1702, line: 32, baseType: !1709, size: 64, offset: 384)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1702, line: 32, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1703, file: !1702, line: 37, baseType: !185, size: 16, offset: 448)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1703, file: !1702, line: 40, baseType: !533, size: 192, offset: 512)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1703, file: !1702, line: 41, baseType: !147, size: 64, offset: 704)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1703, file: !1702, line: 42, baseType: !1715, size: 64, offset: 768)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1717)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1718, line: 13, size: 896, elements: !1719)
!1718 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1719 = !{!1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1717, file: !1718, line: 14, baseType: !147, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1717, file: !1718, line: 15, baseType: !167, size: 64, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1717, file: !1718, line: 17, baseType: !167, size: 64, offset: 128)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1717, file: !1718, line: 17, baseType: !167, size: 64, offset: 192)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1717, file: !1718, line: 19, baseType: !503, size: 64, offset: 256)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1717, file: !1718, line: 21, baseType: !503, size: 64, offset: 320)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1717, file: !1718, line: 22, baseType: !503, size: 64, offset: 384)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1717, file: !1718, line: 23, baseType: !503, size: 64, offset: 448)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1717, file: !1718, line: 24, baseType: !503, size: 64, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1717, file: !1718, line: 25, baseType: !503, size: 64, offset: 576)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1717, file: !1718, line: 26, baseType: !503, size: 64, offset: 640)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1717, file: !1718, line: 27, baseType: !503, size: 64, offset: 704)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1717, file: !1718, line: 28, baseType: !503, size: 64, offset: 768)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1717, file: !1718, line: 29, baseType: !503, size: 64, offset: 832)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1703, file: !1702, line: 44, baseType: !549, size: 32, offset: 832)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1703, file: !1702, line: 50, baseType: !1174, size: 16, offset: 864)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1703, file: !1702, line: 51, baseType: !1737, size: 16, offset: 880)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !248, line: 18, baseType: !1738)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !250, line: 23, baseType: !1498)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1001, file: !164, line: 495, baseType: !167, size: 64, offset: 6528)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !1001, file: !164, line: 497, baseType: !1741, size: 64, offset: 6592)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !164, line: 381, size: 384, elements: !1743)
!1743 = !{!1744, !1745, !1751}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1742, file: !164, line: 382, baseType: !549, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1742, file: !164, line: 383, baseType: !1746, size: 128, offset: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !164, line: 376, size: 128, elements: !1747)
!1747 = !{!1748, !1749}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1746, file: !164, line: 377, baseType: !822, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1746, file: !164, line: 378, baseType: !1750, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1742, file: !164, line: 384, baseType: !1752, size: 192, offset: 192)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1753, line: 26, size: 192, elements: !1754)
!1753 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1754 = !{!1755, !1756}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1752, file: !1753, line: 27, baseType: !7, size: 32)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1752, file: !1753, line: 28, baseType: !1757, size: 128, offset: 64)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1758, line: 43, size: 128, elements: !1759)
!1758 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1757, file: !1758, line: 44, baseType: !716)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1757, file: !1758, line: 45, baseType: !155, size: 128)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1001, file: !164, line: 500, baseType: !276, offset: 6656)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1001, file: !164, line: 501, baseType: !1764, size: 64, offset: 6656)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !164, line: 387, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1001, file: !164, line: 516, baseType: !1604, size: 64, offset: 6720)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1001, file: !164, line: 519, baseType: !1118, size: 64, offset: 6784)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1001, file: !164, line: 521, baseType: !1769, size: 64, offset: 6848)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !164, line: 521, flags: DIFlagFwdDecl)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1001, file: !164, line: 545, baseType: !549, size: 32, offset: 6912)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1001, file: !164, line: 548, baseType: !358, size: 8, offset: 6944)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1001, file: !164, line: 550, baseType: !1774, offset: 6952)
!1774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1775, line: 142, elements: !290)
!1775 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1001, file: !164, line: 554, baseType: !1777, size: 256, offset: 6976)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1778, line: 102, size: 256, elements: !1779)
!1778 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1779 = !{!1780, !1781, !1782}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1777, file: !1778, line: 103, baseType: !537, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1777, file: !1778, line: 104, baseType: !155, size: 128, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1777, file: !1778, line: 105, baseType: !1783, size: 64, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1778, line: 21, baseType: !1784)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{null, !1787}
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !1001, file: !164, line: 557, baseType: !247, size: 32, offset: 7232)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !998, file: !164, line: 565, baseType: !1790, offset: 7296)
!1790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, elements: !1791)
!1791 = !{!1792}
!1792 = !DISubrange(count: -1)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !823, file: !736, line: 758, baseType: !997, size: 64, offset: 3968)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !823, file: !736, line: 761, baseType: !1795, size: 320, offset: 4032)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1693, line: 34, size: 320, elements: !1796)
!1796 = !{!1797, !1798}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1795, file: !1693, line: 35, baseType: !253, size: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1795, file: !1693, line: 36, baseType: !1799, size: 256, offset: 64)
!1799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1004, size: 256, elements: !1416)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !823, file: !736, line: 766, baseType: !150, size: 32, offset: 4352)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !823, file: !736, line: 767, baseType: !150, size: 32, offset: 4384)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !823, file: !736, line: 768, baseType: !150, size: 32, offset: 4416)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !823, file: !736, line: 770, baseType: !150, size: 32, offset: 4448)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !823, file: !736, line: 772, baseType: !167, size: 64, offset: 4480)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !823, file: !736, line: 775, baseType: !7, size: 32, offset: 4544)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !823, file: !736, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !823, file: !736, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !823, file: !736, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !823, file: !736, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !823, file: !736, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !823, file: !736, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !823, file: !736, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !823, file: !736, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !823, file: !736, line: 831, baseType: !167, size: 64, offset: 4672)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !823, file: !736, line: 833, baseType: !1816, size: 384, offset: 4736)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1817)
!1817 = !{!1818, !1823}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1816, file: !25, line: 26, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!503, !1822}
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_member, scope: !1816, file: !25, line: 27, baseType: !1824, size: 320, offset: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1816, file: !25, line: 27, size: 320, elements: !1825)
!1825 = !{!1826, !1836, !1861}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1824, file: !25, line: 36, baseType: !1827, size: 320)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1824, file: !25, line: 29, size: 320, elements: !1828)
!1828 = !{!1829, !1831, !1832, !1833, !1834, !1835}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1827, file: !25, line: 30, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1827, file: !25, line: 31, baseType: !247, size: 32, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1827, file: !25, line: 32, baseType: !247, size: 32, offset: 96)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1827, file: !25, line: 33, baseType: !247, size: 32, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1827, file: !25, line: 34, baseType: !253, size: 64, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1827, file: !25, line: 35, baseType: !1830, size: 64, offset: 256)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1824, file: !25, line: 46, baseType: !1837, size: 192)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1824, file: !25, line: 38, size: 192, elements: !1838)
!1838 = !{!1839, !1840, !1841, !1860}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1837, file: !25, line: 39, baseType: !946, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1837, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !25, line: 41, baseType: !1842, size: 64, offset: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !25, line: 41, size: 64, elements: !1843)
!1843 = !{!1844, !1852}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1842, file: !25, line: 42, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1847, line: 7, size: 128, elements: !1848)
!1847 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1848 = !{!1849, !1851}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1846, file: !1847, line: 8, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !195, line: 93, baseType: !379)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1846, file: !1847, line: 9, baseType: !379, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1842, file: !25, line: 43, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1855, line: 7, size: 64, elements: !1856)
!1855 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1856 = !{!1857, !1859}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1854, file: !1855, line: 8, baseType: !1858, size: 32)
!1858 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1855, line: 5, baseType: !1472)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1854, file: !1855, line: 9, baseType: !1472, size: 32, offset: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1837, file: !25, line: 45, baseType: !253, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1824, file: !25, line: 54, baseType: !1862, size: 256)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1824, file: !25, line: 48, size: 256, elements: !1863)
!1863 = !{!1864, !1867, !1868, !1869, !1870}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1862, file: !25, line: 49, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1862, file: !25, line: 50, baseType: !150, size: 32, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1862, file: !25, line: 51, baseType: !150, size: 32, offset: 96)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1862, file: !25, line: 52, baseType: !167, size: 64, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1862, file: !25, line: 53, baseType: !167, size: 64, offset: 192)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !823, file: !736, line: 835, baseType: !1872, size: 32, offset: 5120)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !149, line: 22, baseType: !1873)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !195, line: 28, baseType: !150)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !823, file: !736, line: 836, baseType: !1872, size: 32, offset: 5152)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !823, file: !736, line: 840, baseType: !167, size: 64, offset: 5184)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !823, file: !736, line: 849, baseType: !822, size: 64, offset: 5248)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !823, file: !736, line: 852, baseType: !822, size: 64, offset: 5312)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !823, file: !736, line: 857, baseType: !155, size: 128, offset: 5376)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !823, file: !736, line: 858, baseType: !155, size: 128, offset: 5504)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !823, file: !736, line: 859, baseType: !822, size: 64, offset: 5632)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !823, file: !736, line: 867, baseType: !155, size: 128, offset: 5696)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !823, file: !736, line: 868, baseType: !155, size: 128, offset: 5824)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !823, file: !736, line: 871, baseType: !1408, size: 64, offset: 5952)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !823, file: !736, line: 872, baseType: !1885, size: 512, offset: 6016)
!1885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !415, size: 512, elements: !1416)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !823, file: !736, line: 873, baseType: !155, size: 128, offset: 6528)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !823, file: !736, line: 874, baseType: !155, size: 128, offset: 6656)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !823, file: !736, line: 876, baseType: !1889, size: 64, offset: 6784)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !823, file: !736, line: 879, baseType: !483, size: 64, offset: 6848)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !823, file: !736, line: 882, baseType: !483, size: 64, offset: 6912)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !823, file: !736, line: 884, baseType: !253, size: 64, offset: 6976)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !823, file: !736, line: 885, baseType: !253, size: 64, offset: 7040)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !823, file: !736, line: 890, baseType: !253, size: 64, offset: 7104)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !823, file: !736, line: 891, baseType: !1896, size: 128, offset: 7168)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !736, line: 242, size: 128, elements: !1897)
!1897 = !{!1898, !1899, !1900}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1896, file: !736, line: 244, baseType: !253, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1896, file: !736, line: 245, baseType: !253, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1896, file: !736, line: 246, baseType: !716, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !823, file: !736, line: 900, baseType: !167, size: 64, offset: 7296)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !823, file: !736, line: 901, baseType: !167, size: 64, offset: 7360)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !823, file: !736, line: 904, baseType: !253, size: 64, offset: 7424)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !823, file: !736, line: 907, baseType: !253, size: 64, offset: 7488)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !823, file: !736, line: 910, baseType: !167, size: 64, offset: 7552)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !823, file: !736, line: 911, baseType: !167, size: 64, offset: 7616)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !823, file: !736, line: 914, baseType: !1908, size: 640, offset: 7680)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1909, line: 123, size: 640, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1910 = !{!1911, !1917, !1918}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1908, file: !1909, line: 124, baseType: !1912, size: 576)
!1912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1913, size: 576, elements: !427)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1909, line: 108, size: 192, elements: !1914)
!1914 = !{!1915, !1916}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1913, file: !1909, line: 109, baseType: !253, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1913, file: !1909, line: 110, baseType: !955, size: 128, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1908, file: !1909, line: 125, baseType: !7, size: 32, offset: 576)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1908, file: !1909, line: 126, baseType: !7, size: 32, offset: 608)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !823, file: !736, line: 917, baseType: !1920, size: 192, offset: 8320)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1909, line: 134, size: 192, elements: !1921)
!1921 = !{!1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1920, file: !1909, line: 135, baseType: !807, size: 128, align: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1920, file: !1909, line: 136, baseType: !7, size: 32, offset: 128)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !823, file: !736, line: 923, baseType: !1434, size: 64, offset: 8512)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !823, file: !736, line: 926, baseType: !1434, size: 64, offset: 8576)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !823, file: !736, line: 929, baseType: !1434, size: 64, offset: 8640)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !823, file: !736, line: 933, baseType: !1464, size: 64, offset: 8704)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !823, file: !736, line: 943, baseType: !1929, size: 128, offset: 8768)
!1929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 128, elements: !1930)
!1930 = !{!1931}
!1931 = !DISubrange(count: 16)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !823, file: !736, line: 945, baseType: !1933, size: 64, offset: 8896)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !736, line: 49, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !823, file: !736, line: 956, baseType: !1936, size: 64, offset: 8960)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !736, line: 45, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !823, file: !736, line: 959, baseType: !1939, size: 64, offset: 9024)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !736, line: 959, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !823, file: !736, line: 962, baseType: !1942, size: 64, offset: 9088)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !736, line: 66, flags: DIFlagFwdDecl)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !823, file: !736, line: 966, baseType: !1945, size: 64, offset: 9152)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1947, line: 35, flags: DIFlagFwdDecl)
!1947 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !823, file: !736, line: 969, baseType: !1949, size: 64, offset: 9216)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1951, line: 82, size: 7296, elements: !1952)
!1951 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1952 = !{!1953, !1954, !1955, !1956, !1957, !1958, !1959, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1988, !1997, !1998, !2000, !2001, !2002, !2005, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2035, !2036, !2043, !2044, !2045, !2046, !2047, !2048}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1950, file: !1951, line: 83, baseType: !835, size: 32)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1950, file: !1951, line: 84, baseType: !549, size: 32, offset: 32)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1950, file: !1951, line: 85, baseType: !150, size: 32, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1950, file: !1951, line: 86, baseType: !155, size: 128, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1950, file: !1951, line: 88, baseType: !788, size: 128, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1950, file: !1951, line: 91, baseType: !822, size: 64, offset: 384)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1950, file: !1951, line: 94, baseType: !1960, size: 192, offset: 448)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1961, line: 30, size: 192, elements: !1962)
!1961 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1960, file: !1961, line: 31, baseType: !155, size: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1960, file: !1961, line: 32, baseType: !1965, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1966, line: 25, baseType: !1967)
!1966 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1966, line: 23, size: 64, elements: !1968)
!1968 = !{!1969}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1967, file: !1966, line: 24, baseType: !989, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1950, file: !1951, line: 97, baseType: !411, size: 64, offset: 640)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1950, file: !1951, line: 100, baseType: !150, size: 32, offset: 704)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1950, file: !1951, line: 106, baseType: !150, size: 32, offset: 736)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1950, file: !1951, line: 107, baseType: !822, size: 64, offset: 768)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1950, file: !1951, line: 110, baseType: !150, size: 32, offset: 832)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1950, file: !1951, line: 111, baseType: !7, size: 32, offset: 864)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1950, file: !1951, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1950, file: !1951, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1950, file: !1951, line: 128, baseType: !150, size: 32, offset: 928)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1950, file: !1951, line: 129, baseType: !155, size: 128, offset: 960)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1950, file: !1951, line: 132, baseType: !904, size: 512, offset: 1088)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1950, file: !1951, line: 133, baseType: !912, size: 64, offset: 1600)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1950, file: !1951, line: 140, baseType: !1983, size: 256, offset: 1664)
!1983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1984, size: 256, elements: !1456)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1951, line: 38, size: 128, elements: !1985)
!1985 = !{!1986, !1987}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1984, file: !1951, line: 39, baseType: !253, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1984, file: !1951, line: 40, baseType: !253, size: 64, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1950, file: !1951, line: 146, baseType: !1989, size: 192, offset: 1920)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1951, line: 66, size: 192, elements: !1990)
!1990 = !{!1991}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1989, file: !1951, line: 67, baseType: !1992, size: 192)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1951, line: 47, size: 192, elements: !1993)
!1993 = !{!1994, !1995, !1996}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1992, file: !1951, line: 48, baseType: !539, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1992, file: !1951, line: 49, baseType: !539, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1992, file: !1951, line: 50, baseType: !539, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1950, file: !1951, line: 150, baseType: !1908, size: 640, offset: 2112)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1950, file: !1951, line: 153, baseType: !1999, size: 256, offset: 2752)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1408, size: 256, elements: !1416)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1950, file: !1951, line: 159, baseType: !1408, size: 64, offset: 3008)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1950, file: !1951, line: 162, baseType: !150, size: 32, offset: 3072)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1950, file: !1951, line: 164, baseType: !2003, size: 64, offset: 3136)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1951, line: 164, flags: DIFlagFwdDecl)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1950, file: !1951, line: 175, baseType: !2006, size: 32, offset: 3200)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !220, line: 805, baseType: !2007)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 798, size: 32, elements: !2008)
!2008 = !{!2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2007, file: !220, line: 803, baseType: !219, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2007, file: !220, line: 804, baseType: !276, offset: 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1950, file: !1951, line: 176, baseType: !253, size: 64, offset: 3264)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1950, file: !1951, line: 176, baseType: !253, size: 64, offset: 3328)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1950, file: !1951, line: 176, baseType: !253, size: 64, offset: 3392)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1950, file: !1951, line: 176, baseType: !253, size: 64, offset: 3456)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1950, file: !1951, line: 177, baseType: !253, size: 64, offset: 3520)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1950, file: !1951, line: 178, baseType: !253, size: 64, offset: 3584)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1950, file: !1951, line: 179, baseType: !1896, size: 128, offset: 3648)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1950, file: !1951, line: 180, baseType: !167, size: 64, offset: 3776)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1950, file: !1951, line: 180, baseType: !167, size: 64, offset: 3840)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1950, file: !1951, line: 180, baseType: !167, size: 64, offset: 3904)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1950, file: !1951, line: 180, baseType: !167, size: 64, offset: 3968)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1950, file: !1951, line: 181, baseType: !167, size: 64, offset: 4032)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1950, file: !1951, line: 181, baseType: !167, size: 64, offset: 4096)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1950, file: !1951, line: 181, baseType: !167, size: 64, offset: 4160)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1950, file: !1951, line: 181, baseType: !167, size: 64, offset: 4224)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1950, file: !1951, line: 182, baseType: !167, size: 64, offset: 4288)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1950, file: !1951, line: 182, baseType: !167, size: 64, offset: 4352)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1950, file: !1951, line: 182, baseType: !167, size: 64, offset: 4416)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1950, file: !1951, line: 182, baseType: !167, size: 64, offset: 4480)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1950, file: !1951, line: 183, baseType: !167, size: 64, offset: 4544)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1950, file: !1951, line: 183, baseType: !167, size: 64, offset: 4608)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1950, file: !1951, line: 184, baseType: !2033, offset: 4672)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2034, line: 12, elements: !290)
!2034 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1950, file: !1951, line: 192, baseType: !255, size: 64, offset: 4672)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1950, file: !1951, line: 203, baseType: !2037, size: 2048, offset: 4736)
!2037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2038, size: 2048, elements: !1930)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2039, line: 43, size: 128, elements: !2040)
!2039 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!2040 = !{!2041, !2042}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2038, file: !2039, line: 44, baseType: !1152, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2038, file: !2039, line: 45, baseType: !1152, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1950, file: !1951, line: 220, baseType: !358, size: 8, offset: 6784)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1950, file: !1951, line: 221, baseType: !1498, size: 16, offset: 6800)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1950, file: !1951, line: 222, baseType: !1498, size: 16, offset: 6816)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1950, file: !1951, line: 224, baseType: !997, size: 64, offset: 6848)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1950, file: !1951, line: 227, baseType: !533, size: 192, offset: 6912)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1950, file: !1951, line: 233, baseType: !533, size: 192, offset: 7104)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !823, file: !736, line: 970, baseType: !2050, size: 64, offset: 9280)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1951, line: 20, size: 16576, elements: !2052)
!2052 = !{!2053, !2054, !2055, !2056}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2051, file: !1951, line: 21, baseType: !276)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2051, file: !1951, line: 22, baseType: !835, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2051, file: !1951, line: 23, baseType: !788, size: 128, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2051, file: !1951, line: 24, baseType: !2057, size: 16384, offset: 192)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2058, size: 16384, elements: !2078)
!2058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1961, line: 49, size: 256, elements: !2059)
!2059 = !{!2060}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2058, file: !1961, line: 50, baseType: !2061, size: 256)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1961, line: 35, size: 256, elements: !2062)
!2062 = !{!2063, !2070, !2071, !2077}
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2061, file: !1961, line: 37, baseType: !2064, size: 64)
!2064 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2065, line: 19, baseType: !2066)
!2065 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2065, line: 18, baseType: !2068)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{null, !150}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2061, file: !1961, line: 38, baseType: !167, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2061, file: !1961, line: 44, baseType: !2072, size: 64, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2065, line: 22, baseType: !2073)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2065, line: 21, baseType: !2075)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2061, file: !1961, line: 46, baseType: !1965, size: 64, offset: 192)
!2078 = !{!2079}
!2079 = !DISubrange(count: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !823, file: !736, line: 971, baseType: !1965, size: 64, offset: 9344)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !823, file: !736, line: 972, baseType: !1965, size: 64, offset: 9408)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !823, file: !736, line: 974, baseType: !1965, size: 64, offset: 9472)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !823, file: !736, line: 975, baseType: !1960, size: 192, offset: 9536)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !823, file: !736, line: 976, baseType: !167, size: 64, offset: 9728)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !823, file: !736, line: 977, baseType: !1150, size: 64, offset: 9792)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !823, file: !736, line: 978, baseType: !7, size: 32, offset: 9856)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !823, file: !736, line: 980, baseType: !810, size: 64, offset: 9920)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !823, file: !736, line: 989, baseType: !2089, size: 128, offset: 9984)
!2089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2090, line: 35, size: 128, elements: !2091)
!2090 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!2091 = !{!2092, !2093, !2094}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2089, file: !2090, line: 36, baseType: !150, size: 32)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2089, file: !2090, line: 37, baseType: !549, size: 32, offset: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2089, file: !2090, line: 38, baseType: !2095, size: 64, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2090, line: 23, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !823, file: !736, line: 992, baseType: !253, size: 64, offset: 10112)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !823, file: !736, line: 993, baseType: !253, size: 64, offset: 10176)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !823, file: !736, line: 996, baseType: !276, offset: 10240)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !823, file: !736, line: 999, baseType: !716, offset: 10240)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !823, file: !736, line: 1001, baseType: !2102, size: 64, offset: 10240)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !736, line: 636, size: 64, elements: !2103)
!2103 = !{!2104}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2102, file: !736, line: 637, baseType: !2105, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !823, file: !736, line: 1005, baseType: !958, size: 128, offset: 10304)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !823, file: !736, line: 1007, baseType: !822, size: 64, offset: 10432)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !823, file: !736, line: 1009, baseType: !2109, size: 64, offset: 10496)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !736, line: 1009, flags: DIFlagFwdDecl)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !823, file: !736, line: 1043, baseType: !147, size: 64, offset: 10560)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !823, file: !736, line: 1046, baseType: !2113, size: 64, offset: 10624)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !736, line: 41, flags: DIFlagFwdDecl)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !823, file: !736, line: 1050, baseType: !2116, size: 64, offset: 10688)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !736, line: 42, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !823, file: !736, line: 1054, baseType: !2119, size: 64, offset: 10752)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !736, line: 55, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !823, file: !736, line: 1056, baseType: !734, size: 64, offset: 10816)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !823, file: !736, line: 1058, baseType: !2123, size: 64, offset: 10880)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2125, line: 99, size: 704, elements: !2126)
!2125 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!2126 = !{!2127, !2128, !2129, !2130, !2131, !2132, !2139, !2160, !2161}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2124, file: !2125, line: 100, baseType: !537, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2124, file: !2125, line: 101, baseType: !549, size: 32, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !2124, file: !2125, line: 102, baseType: !549, size: 32, offset: 96)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2124, file: !2125, line: 105, baseType: !276, offset: 128)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2124, file: !2125, line: 107, baseType: !185, size: 16, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !2124, file: !2125, line: 109, baseType: !2133, size: 128, offset: 192)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2134, line: 292, size: 128, elements: !2135)
!2134 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!2135 = !{!2136, !2137, !2138}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2133, file: !2134, line: 293, baseType: !276)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2133, file: !2134, line: 295, baseType: !148, size: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2133, file: !2134, line: 296, baseType: !147, size: 64, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !2124, file: !2125, line: 110, baseType: !2140, size: 64, offset: 320)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2125, line: 73, size: 448, elements: !2142)
!2142 = !{!2143, !2146, !2147, !2154, !2159}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2141, file: !2125, line: 74, baseType: !2144, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2125, line: 74, flags: DIFlagFwdDecl)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2141, file: !2125, line: 75, baseType: !2123, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, scope: !2141, file: !2125, line: 83, baseType: !2148, size: 128, offset: 128)
!2148 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2141, file: !2125, line: 83, size: 128, elements: !2149)
!2149 = !{!2150, !2151}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2148, file: !2125, line: 84, baseType: !155, size: 128)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2148, file: !2125, line: 85, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !164, line: 117, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, scope: !2141, file: !2125, line: 87, baseType: !2155, size: 128, offset: 256)
!2155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2141, file: !2125, line: 87, size: 128, elements: !2156)
!2156 = !{!2157, !2158}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2155, file: !2125, line: 88, baseType: !415, size: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2155, file: !2125, line: 89, baseType: !807, size: 128, align: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2141, file: !2125, line: 92, baseType: !7, size: 32, offset: 384)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !2124, file: !2125, line: 111, baseType: !411, size: 64, offset: 384)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !2124, file: !2125, line: 113, baseType: !1777, size: 256, offset: 448)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !823, file: !736, line: 1061, baseType: !2163, size: 64, offset: 10944)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !736, line: 43, flags: DIFlagFwdDecl)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !823, file: !736, line: 1064, baseType: !167, size: 64, offset: 11008)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !823, file: !736, line: 1065, baseType: !2167, size: 64, offset: 11072)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1961, line: 14, baseType: !2169)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1961, line: 12, size: 384, elements: !2170)
!2170 = !{!2171}
!2171 = !DIDerivedType(tag: DW_TAG_member, scope: !2169, file: !1961, line: 13, baseType: !2172, size: 384)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2169, file: !1961, line: 13, size: 384, elements: !2173)
!2173 = !{!2174, !2175, !2176, !2177}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2172, file: !1961, line: 13, baseType: !150, size: 32)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2172, file: !1961, line: 13, baseType: !150, size: 32, offset: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2172, file: !1961, line: 13, baseType: !150, size: 32, offset: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2172, file: !1961, line: 13, baseType: !2178, size: 256, offset: 128)
!2178 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2179, line: 32, size: 256, elements: !2180)
!2179 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!2180 = !{!2181, !2186, !2199, !2205, !2214, !2234, !2239}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2178, file: !2179, line: 37, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !2179, line: 34, size: 64, elements: !2183)
!2183 = !{!2184, !2185}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2182, file: !2179, line: 35, baseType: !1873, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2182, file: !2179, line: 36, baseType: !194, size: 32, offset: 32)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2178, file: !2179, line: 45, baseType: !2187, size: 192)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !2179, line: 40, size: 192, elements: !2188)
!2188 = !{!2189, !2191, !2192, !2198}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2187, file: !2179, line: 41, baseType: !2190, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !195, line: 95, baseType: !150)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2187, file: !2179, line: 42, baseType: !150, size: 32, offset: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2187, file: !2179, line: 43, baseType: !2193, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2179, line: 11, baseType: !2194)
!2194 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2179, line: 8, size: 64, elements: !2195)
!2195 = !{!2196, !2197}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2194, file: !2179, line: 9, baseType: !150, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2194, file: !2179, line: 10, baseType: !147, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2187, file: !2179, line: 44, baseType: !150, size: 32, offset: 128)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2178, file: !2179, line: 52, baseType: !2200, size: 128)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !2179, line: 48, size: 128, elements: !2201)
!2201 = !{!2202, !2203, !2204}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2200, file: !2179, line: 49, baseType: !1873, size: 32)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2200, file: !2179, line: 50, baseType: !194, size: 32, offset: 32)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2200, file: !2179, line: 51, baseType: !2193, size: 64, offset: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2178, file: !2179, line: 61, baseType: !2206, size: 256)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !2179, line: 55, size: 256, elements: !2207)
!2207 = !{!2208, !2209, !2210, !2211, !2213}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2206, file: !2179, line: 56, baseType: !1873, size: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2206, file: !2179, line: 57, baseType: !194, size: 32, offset: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2206, file: !2179, line: 58, baseType: !150, size: 32, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2206, file: !2179, line: 59, baseType: !2212, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !195, line: 94, baseType: !1149)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2206, file: !2179, line: 60, baseType: !2212, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2178, file: !2179, line: 95, baseType: !2215, size: 256)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !2179, line: 64, size: 256, elements: !2216)
!2216 = !{!2217, !2218}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2215, file: !2179, line: 65, baseType: !147, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, scope: !2215, file: !2179, line: 77, baseType: !2219, size: 192, offset: 64)
!2219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2215, file: !2179, line: 77, size: 192, elements: !2220)
!2220 = !{!2221, !2222, !2229}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2219, file: !2179, line: 82, baseType: !1498, size: 16)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2219, file: !2179, line: 88, baseType: !2223, size: 192)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2219, file: !2179, line: 84, size: 192, elements: !2224)
!2224 = !{!2225, !2227, !2228}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2223, file: !2179, line: 85, baseType: !2226, size: 64)
!2226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 64, elements: !942)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2223, file: !2179, line: 86, baseType: !147, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2223, file: !2179, line: 87, baseType: !147, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2219, file: !2179, line: 93, baseType: !2230, size: 96)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2219, file: !2179, line: 90, size: 96, elements: !2231)
!2231 = !{!2232, !2233}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2230, file: !2179, line: 91, baseType: !2226, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2230, file: !2179, line: 92, baseType: !249, size: 32, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2178, file: !2179, line: 101, baseType: !2235, size: 128)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !2179, line: 98, size: 128, elements: !2236)
!2236 = !{!2237, !2238}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2235, file: !2179, line: 99, baseType: !503, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2235, file: !2179, line: 100, baseType: !150, size: 32, offset: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2178, file: !2179, line: 108, baseType: !2240, size: 128)
!2240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2178, file: !2179, line: 104, size: 128, elements: !2241)
!2241 = !{!2242, !2243, !2244}
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2240, file: !2179, line: 105, baseType: !147, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2240, file: !2179, line: 106, baseType: !150, size: 32, offset: 64)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2240, file: !2179, line: 107, baseType: !7, size: 32, offset: 96)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !823, file: !736, line: 1067, baseType: !2033, offset: 11136)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !823, file: !736, line: 1099, baseType: !2247, size: 64, offset: 11136)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !736, line: 56, flags: DIFlagFwdDecl)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !823, file: !736, line: 1103, baseType: !155, size: 128, offset: 11200)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !823, file: !736, line: 1104, baseType: !2251, size: 64, offset: 11328)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !736, line: 46, flags: DIFlagFwdDecl)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !823, file: !736, line: 1105, baseType: !533, size: 192, offset: 11392)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !823, file: !736, line: 1106, baseType: !7, size: 32, offset: 11584)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !823, file: !736, line: 1109, baseType: !2256, size: 128, offset: 11648)
!2256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2257, size: 128, elements: !1456)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !736, line: 51, flags: DIFlagFwdDecl)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !823, file: !736, line: 1110, baseType: !533, size: 192, offset: 11776)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !823, file: !736, line: 1111, baseType: !155, size: 128, offset: 11968)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !823, file: !736, line: 1173, baseType: !2262, size: 64, offset: 12096)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2264, line: 62, size: 256, align: 256, elements: !2265)
!2264 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2265 = !{!2266, !2267, !2268, !2273}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2263, file: !2264, line: 75, baseType: !249, size: 32)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2263, file: !2264, line: 90, baseType: !249, size: 32, offset: 32)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2263, file: !2264, line: 124, baseType: !2269, size: 64, offset: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2263, file: !2264, line: 109, size: 64, elements: !2270)
!2270 = !{!2271, !2272}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2269, file: !2264, line: 110, baseType: !254, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2269, file: !2264, line: 112, baseType: !254, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2263, file: !2264, line: 144, baseType: !249, size: 32, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !823, file: !736, line: 1174, baseType: !247, size: 32, offset: 12160)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !823, file: !736, line: 1179, baseType: !167, size: 64, offset: 12224)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !823, file: !736, line: 1182, baseType: !2277, size: 128, offset: 12288)
!2277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1693, line: 76, size: 128, elements: !2278)
!2278 = !{!2279, !2284, !2285}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2277, file: !1693, line: 85, baseType: !2280, size: 64)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2281, line: 7, size: 64, elements: !2282)
!2281 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2282 = !{!2283}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2280, file: !2281, line: 12, baseType: !986, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2277, file: !1693, line: 88, baseType: !358, size: 8, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2277, file: !1693, line: 95, baseType: !358, size: 8, offset: 72)
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !823, file: !736, line: 1184, baseType: !2287, size: 128, offset: 12416)
!2287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !823, file: !736, line: 1184, size: 128, elements: !2288)
!2288 = !{!2289, !2290}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2287, file: !736, line: 1185, baseType: !835, size: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2287, file: !736, line: 1186, baseType: !807, size: 128, align: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !823, file: !736, line: 1190, baseType: !1367, size: 64, offset: 12544)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !823, file: !736, line: 1192, baseType: !2293, size: 128, offset: 12608)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1693, line: 64, size: 128, elements: !2294)
!2294 = !{!2295, !2296, !2297}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2293, file: !1693, line: 65, baseType: !162, size: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2293, file: !1693, line: 67, baseType: !249, size: 32, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2293, file: !1693, line: 68, baseType: !249, size: 32, offset: 96)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !823, file: !736, line: 1206, baseType: !150, size: 32, offset: 12736)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !823, file: !736, line: 1207, baseType: !150, size: 32, offset: 12768)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !823, file: !736, line: 1209, baseType: !167, size: 64, offset: 12800)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !823, file: !736, line: 1219, baseType: !253, size: 64, offset: 12864)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !823, file: !736, line: 1220, baseType: !253, size: 64, offset: 12928)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !823, file: !736, line: 1317, baseType: !150, size: 32, offset: 12992)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !823, file: !736, line: 1319, baseType: !822, size: 64, offset: 13056)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !823, file: !736, line: 1322, baseType: !2306, size: 64, offset: 13120)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2308, line: 56, size: 512, elements: !2309)
!2308 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2309 = !{!2310, !2311, !2312, !2313, !2314, !2316, !2317, !2319}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2307, file: !2308, line: 57, baseType: !2306, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2307, file: !2308, line: 58, baseType: !147, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2307, file: !2308, line: 59, baseType: !167, size: 64, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2307, file: !2308, line: 60, baseType: !167, size: 64, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2307, file: !2308, line: 61, baseType: !2315, size: 64, offset: 256)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2307, file: !2308, line: 62, baseType: !7, size: 32, offset: 320)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2307, file: !2308, line: 63, baseType: !2318, size: 64, offset: 384)
!2318 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !149, line: 153, baseType: !253)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2307, file: !2308, line: 64, baseType: !2320, size: 64, offset: 448)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !823, file: !736, line: 1326, baseType: !835, size: 32, offset: 13184)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !823, file: !736, line: 1342, baseType: !147, size: 64, offset: 13248)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !823, file: !736, line: 1343, baseType: !254, size: 64, offset: 13312)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !823, file: !736, line: 1344, baseType: !253, size: 64, offset: 13376)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !823, file: !736, line: 1345, baseType: !254, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !823, file: !736, line: 1346, baseType: !254, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !823, file: !736, line: 1347, baseType: !254, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !823, file: !736, line: 1348, baseType: !807, size: 128, align: 64, offset: 13504)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !823, file: !736, line: 1358, baseType: !2331, size: 34816, offset: 13824)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2332, line: 485, size: 34816, elements: !2333)
!2332 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2333 = !{!2334, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2363, !2364, !2365, !2366, !2367, !2368, !2371, !2372, !2373}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2331, file: !2332, line: 487, baseType: !2335, size: 192)
!2335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2336, size: 192, elements: !427)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2337, line: 16, size: 64, elements: !2338)
!2337 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2338 = !{!2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2336, file: !2337, line: 17, baseType: !1174, size: 16)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2336, file: !2337, line: 18, baseType: !1174, size: 16, offset: 16)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2336, file: !2337, line: 19, baseType: !1174, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2336, file: !2337, line: 19, baseType: !1174, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2336, file: !2337, line: 19, baseType: !1174, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2336, file: !2337, line: 19, baseType: !1174, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2336, file: !2337, line: 19, baseType: !1174, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2336, file: !2337, line: 20, baseType: !1174, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2336, file: !2337, line: 20, baseType: !1174, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2336, file: !2337, line: 20, baseType: !1174, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2336, file: !2337, line: 20, baseType: !1174, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2336, file: !2337, line: 20, baseType: !1174, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2336, file: !2337, line: 20, baseType: !1174, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2331, file: !2332, line: 491, baseType: !167, size: 64, offset: 192)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2331, file: !2332, line: 495, baseType: !185, size: 16, offset: 256)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2331, file: !2332, line: 496, baseType: !185, size: 16, offset: 272)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2331, file: !2332, line: 497, baseType: !185, size: 16, offset: 288)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2331, file: !2332, line: 498, baseType: !185, size: 16, offset: 304)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2331, file: !2332, line: 502, baseType: !167, size: 64, offset: 320)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2331, file: !2332, line: 503, baseType: !167, size: 64, offset: 384)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2331, file: !2332, line: 514, baseType: !2360, size: 256, offset: 448)
!2360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2361, size: 256, elements: !1416)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2332, line: 483, flags: DIFlagFwdDecl)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2331, file: !2332, line: 516, baseType: !167, size: 64, offset: 704)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2331, file: !2332, line: 518, baseType: !167, size: 64, offset: 768)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2331, file: !2332, line: 520, baseType: !167, size: 64, offset: 832)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2331, file: !2332, line: 521, baseType: !167, size: 64, offset: 896)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2331, file: !2332, line: 522, baseType: !167, size: 64, offset: 960)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2331, file: !2332, line: 528, baseType: !2369, size: 64, offset: 1024)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2332, line: 10, flags: DIFlagFwdDecl)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2331, file: !2332, line: 535, baseType: !167, size: 64, offset: 1088)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2331, file: !2332, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2331, file: !2332, line: 540, baseType: !2374, size: 33280, offset: 1536)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2375, line: 317, size: 33280, elements: !2376)
!2375 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2376 = !{!2377, !2378, !2379}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2374, file: !2375, line: 330, baseType: !7, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2374, file: !2375, line: 337, baseType: !167, size: 64, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2374, file: !2375, line: 348, baseType: !2380, size: 32768, offset: 512)
!2380 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2375, line: 304, size: 32768, elements: !2381)
!2381 = !{!2382, !2397, !2434, !2484, !2497}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2380, file: !2375, line: 305, baseType: !2383, size: 896)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2375, line: 12, size: 896, elements: !2384)
!2384 = !{!2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2396}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2383, file: !2375, line: 13, baseType: !247, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2383, file: !2375, line: 14, baseType: !247, size: 32, offset: 32)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2383, file: !2375, line: 15, baseType: !247, size: 32, offset: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2383, file: !2375, line: 16, baseType: !247, size: 32, offset: 96)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2383, file: !2375, line: 17, baseType: !247, size: 32, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2383, file: !2375, line: 18, baseType: !247, size: 32, offset: 160)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2383, file: !2375, line: 19, baseType: !247, size: 32, offset: 192)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2383, file: !2375, line: 22, baseType: !2393, size: 640, offset: 224)
!2393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 640, elements: !2394)
!2394 = !{!2395}
!2395 = !DISubrange(count: 20)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2383, file: !2375, line: 25, baseType: !247, size: 32, offset: 864)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2380, file: !2375, line: 306, baseType: !2398, size: 4096, align: 128)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2375, line: 34, size: 4096, align: 128, elements: !2399)
!2399 = !{!2400, !2401, !2402, !2403, !2404, !2419, !2420, !2421, !2423, !2425, !2429}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2398, file: !2375, line: 35, baseType: !1174, size: 16)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2398, file: !2375, line: 36, baseType: !1174, size: 16, offset: 16)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2398, file: !2375, line: 37, baseType: !1174, size: 16, offset: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2398, file: !2375, line: 38, baseType: !1174, size: 16, offset: 48)
!2404 = !DIDerivedType(tag: DW_TAG_member, scope: !2398, file: !2375, line: 39, baseType: !2405, size: 128, offset: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2398, file: !2375, line: 39, size: 128, elements: !2406)
!2406 = !{!2407, !2412}
!2407 = !DIDerivedType(tag: DW_TAG_member, scope: !2405, file: !2375, line: 40, baseType: !2408, size: 128)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2405, file: !2375, line: 40, size: 128, elements: !2409)
!2409 = !{!2410, !2411}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2408, file: !2375, line: 41, baseType: !253, size: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2408, file: !2375, line: 42, baseType: !253, size: 64, offset: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, scope: !2405, file: !2375, line: 44, baseType: !2413, size: 128)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2405, file: !2375, line: 44, size: 128, elements: !2414)
!2414 = !{!2415, !2416, !2417, !2418}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2413, file: !2375, line: 45, baseType: !247, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2413, file: !2375, line: 46, baseType: !247, size: 32, offset: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2413, file: !2375, line: 47, baseType: !247, size: 32, offset: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2413, file: !2375, line: 48, baseType: !247, size: 32, offset: 96)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2398, file: !2375, line: 51, baseType: !247, size: 32, offset: 192)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2398, file: !2375, line: 52, baseType: !247, size: 32, offset: 224)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2398, file: !2375, line: 55, baseType: !2422, size: 1024, offset: 256)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 1024, elements: !263)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2398, file: !2375, line: 58, baseType: !2424, size: 2048, offset: 1280)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 2048, elements: !2078)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2398, file: !2375, line: 60, baseType: !2426, size: 384, offset: 3328)
!2426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 384, elements: !2427)
!2427 = !{!2428}
!2428 = !DISubrange(count: 12)
!2429 = !DIDerivedType(tag: DW_TAG_member, scope: !2398, file: !2375, line: 62, baseType: !2430, size: 384, offset: 3712)
!2430 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2398, file: !2375, line: 62, size: 384, elements: !2431)
!2431 = !{!2432, !2433}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2430, file: !2375, line: 63, baseType: !2426, size: 384)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2430, file: !2375, line: 64, baseType: !2426, size: 384)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2380, file: !2375, line: 307, baseType: !2435, size: 1088)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2375, line: 79, size: 1088, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2483}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2435, file: !2375, line: 80, baseType: !247, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2435, file: !2375, line: 81, baseType: !247, size: 32, offset: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2435, file: !2375, line: 82, baseType: !247, size: 32, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2435, file: !2375, line: 83, baseType: !247, size: 32, offset: 96)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2435, file: !2375, line: 84, baseType: !247, size: 32, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2435, file: !2375, line: 85, baseType: !247, size: 32, offset: 160)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2435, file: !2375, line: 86, baseType: !247, size: 32, offset: 192)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2435, file: !2375, line: 88, baseType: !2393, size: 640, offset: 224)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2435, file: !2375, line: 89, baseType: !971, size: 8, offset: 864)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2435, file: !2375, line: 90, baseType: !971, size: 8, offset: 872)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2435, file: !2375, line: 91, baseType: !971, size: 8, offset: 880)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2435, file: !2375, line: 92, baseType: !971, size: 8, offset: 888)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2435, file: !2375, line: 93, baseType: !971, size: 8, offset: 896)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2435, file: !2375, line: 94, baseType: !971, size: 8, offset: 904)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2435, file: !2375, line: 95, baseType: !2452, size: 64, offset: 960)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2454, line: 11, size: 128, elements: !2455)
!2454 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2455 = !{!2456, !2457}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2453, file: !2454, line: 12, baseType: !503, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2453, file: !2454, line: 13, baseType: !2458, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2460, line: 56, size: 1344, elements: !2461)
!2460 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2461 = !{!2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2459, file: !2460, line: 61, baseType: !167, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2459, file: !2460, line: 62, baseType: !167, size: 64, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2459, file: !2460, line: 63, baseType: !167, size: 64, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2459, file: !2460, line: 64, baseType: !167, size: 64, offset: 192)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2459, file: !2460, line: 65, baseType: !167, size: 64, offset: 256)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2459, file: !2460, line: 66, baseType: !167, size: 64, offset: 320)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2459, file: !2460, line: 68, baseType: !167, size: 64, offset: 384)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2459, file: !2460, line: 69, baseType: !167, size: 64, offset: 448)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2459, file: !2460, line: 70, baseType: !167, size: 64, offset: 512)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2459, file: !2460, line: 71, baseType: !167, size: 64, offset: 576)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2459, file: !2460, line: 72, baseType: !167, size: 64, offset: 640)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2459, file: !2460, line: 73, baseType: !167, size: 64, offset: 704)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2459, file: !2460, line: 74, baseType: !167, size: 64, offset: 768)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2459, file: !2460, line: 75, baseType: !167, size: 64, offset: 832)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2459, file: !2460, line: 76, baseType: !167, size: 64, offset: 896)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2459, file: !2460, line: 81, baseType: !167, size: 64, offset: 960)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2459, file: !2460, line: 83, baseType: !167, size: 64, offset: 1024)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2459, file: !2460, line: 84, baseType: !167, size: 64, offset: 1088)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2459, file: !2460, line: 85, baseType: !167, size: 64, offset: 1152)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2459, file: !2460, line: 86, baseType: !167, size: 64, offset: 1216)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2459, file: !2460, line: 87, baseType: !167, size: 64, offset: 1280)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2435, file: !2375, line: 96, baseType: !247, size: 32, offset: 1024)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2380, file: !2375, line: 308, baseType: !2485, size: 4608, align: 512)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2375, line: 289, size: 4608, align: 512, elements: !2486)
!2486 = !{!2487, !2488, !2495}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2485, file: !2375, line: 290, baseType: !2398, size: 4096, align: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2485, file: !2375, line: 291, baseType: !2489, size: 512, offset: 4096)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2375, line: 268, size: 512, elements: !2490)
!2490 = !{!2491, !2492, !2493}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2489, file: !2375, line: 269, baseType: !253, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2489, file: !2375, line: 270, baseType: !253, size: 64, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2489, file: !2375, line: 271, baseType: !2494, size: 384, offset: 128)
!2494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 384, elements: !1516)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2485, file: !2375, line: 292, baseType: !2496, offset: 4608)
!2496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, elements: !1614)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2380, file: !2375, line: 309, baseType: !2498, size: 32768)
!2498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !971, size: 32768, elements: !2499)
!2499 = !{!2500}
!2500 = !DISubrange(count: 4096)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !796, file: !797, line: 16, baseType: !788, size: 128, offset: 448)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !796, file: !797, line: 17, baseType: !549, size: 32, offset: 576)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !368, file: !44, line: 1465, baseType: !147, size: 64, offset: 6400)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !368, file: !44, line: 1468, baseType: !247, size: 32, offset: 6464)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !368, file: !44, line: 1470, baseType: !584, size: 64, offset: 6528)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !368, file: !44, line: 1471, baseType: !584, size: 64, offset: 6592)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !368, file: !44, line: 1473, baseType: !249, size: 32, offset: 6656)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !368, file: !44, line: 1474, baseType: !2509, size: 64, offset: 6720)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !368, file: !44, line: 1477, baseType: !2512, size: 256, offset: 6784)
!2512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 256, elements: !263)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !368, file: !44, line: 1478, baseType: !2514, size: 128, offset: 7040)
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2515, line: 18, baseType: !2516)
!2515 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2515, line: 16, size: 128, elements: !2517)
!2517 = !{!2518}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2516, file: !2515, line: 17, baseType: !2519, size: 128)
!2519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !972, size: 128, elements: !1930)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !368, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !368, file: !44, line: 1481, baseType: !1400, size: 32, offset: 7200)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !368, file: !44, line: 1487, baseType: !533, size: 192, offset: 7232)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !368, file: !44, line: 1493, baseType: !313, size: 64, offset: 7424)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !368, file: !44, line: 1495, baseType: !293, size: 64, offset: 7488)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !368, file: !44, line: 1500, baseType: !150, size: 32, offset: 7552)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !368, file: !44, line: 1502, baseType: !2527, size: 448, offset: 7616)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !506, line: 60, size: 448, elements: !2528)
!2528 = !{!2529, !2534, !2535, !2536, !2537, !2538, !2539}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2527, file: !506, line: 61, baseType: !2530, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{!167, !2533, !504}
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2527, file: !506, line: 63, baseType: !2530, size: 64, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2527, file: !506, line: 66, baseType: !503, size: 64, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2527, file: !506, line: 67, baseType: !150, size: 32, offset: 192)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2527, file: !506, line: 68, baseType: !7, size: 32, offset: 224)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2527, file: !506, line: 71, baseType: !155, size: 128, offset: 256)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2527, file: !506, line: 77, baseType: !2540, size: 64, offset: 384)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !368, file: !44, line: 1505, baseType: !537, size: 64, offset: 8064)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !368, file: !44, line: 1508, baseType: !537, size: 64, offset: 8128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !368, file: !44, line: 1511, baseType: !150, size: 32, offset: 8192)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !368, file: !44, line: 1514, baseType: !1636, size: 32, offset: 8224)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !368, file: !44, line: 1517, baseType: !2546, size: 64, offset: 8256)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1778, line: 18, flags: DIFlagFwdDecl)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !368, file: !44, line: 1518, baseType: !411, size: 64, offset: 8320)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !368, file: !44, line: 1525, baseType: !1604, size: 64, offset: 8384)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !368, file: !44, line: 1532, baseType: !2551, size: 64, offset: 8448)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2552, line: 52, size: 64, elements: !2553)
!2552 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2553 = !{!2554}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2551, file: !2552, line: 53, baseType: !2555, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2552, line: 40, size: 256, elements: !2557)
!2557 = !{!2558, !2559, !2564}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2556, file: !2552, line: 42, baseType: !276)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2556, file: !2552, line: 44, baseType: !2560, size: 192)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2552, line: 28, size: 192, elements: !2561)
!2561 = !{!2562, !2563}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2560, file: !2552, line: 29, baseType: !155, size: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2560, file: !2552, line: 31, baseType: !503, size: 64, offset: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2556, file: !2552, line: 49, baseType: !503, size: 64, offset: 192)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !368, file: !44, line: 1533, baseType: !2551, size: 64, offset: 8512)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !368, file: !44, line: 1534, baseType: !807, size: 128, align: 64, offset: 8576)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !368, file: !44, line: 1535, baseType: !1777, size: 256, offset: 8704)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !368, file: !44, line: 1537, baseType: !533, size: 192, offset: 8960)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !368, file: !44, line: 1542, baseType: !150, size: 32, offset: 9152)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !368, file: !44, line: 1545, baseType: !276, offset: 9184)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !368, file: !44, line: 1546, baseType: !155, size: 128, offset: 9216)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !368, file: !44, line: 1548, baseType: !276, offset: 9344)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !368, file: !44, line: 1549, baseType: !155, size: 128, offset: 9344)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !214, file: !215, line: 104, baseType: !167, size: 64, offset: 896)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !214, file: !215, line: 105, baseType: !147, size: 64, offset: 960)
!2576 = !DIDerivedType(tag: DW_TAG_member, scope: !214, file: !215, line: 107, baseType: !2577, size: 128, offset: 1024)
!2577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !214, file: !215, line: 107, size: 128, elements: !2578)
!2578 = !{!2579, !2580}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2577, file: !215, line: 108, baseType: !155, size: 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2577, file: !215, line: 109, baseType: !2581, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !214, file: !215, line: 111, baseType: !155, size: 128, offset: 1152)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !214, file: !215, line: 112, baseType: !155, size: 128, offset: 1280)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !214, file: !215, line: 120, baseType: !2585, size: 128, offset: 1408)
!2585 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !214, file: !215, line: 116, size: 128, elements: !2586)
!2586 = !{!2587, !2588, !2589}
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2585, file: !215, line: 117, baseType: !415, size: 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2585, file: !215, line: 118, baseType: !229, size: 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2585, file: !215, line: 119, baseType: !807, size: 128, align: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !207, file: !44, line: 1866, baseType: !2591, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2592, size: 64)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!313, !213, !180, !2594}
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2596, line: 10, size: 128, elements: !2597)
!2596 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!2597 = !{!2598, !2602}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2595, file: !2596, line: 11, baseType: !2599, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{null, !147}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2595, file: !2596, line: 12, baseType: !147, size: 64, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !207, file: !44, line: 1867, baseType: !2604, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!150, !180, !150}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !207, file: !44, line: 1868, baseType: !2608, size: 64, offset: 192)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!2611, !180, !150}
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !207, file: !44, line: 1870, baseType: !2614, size: 64, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!150, !213, !339, !150}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !207, file: !44, line: 1872, baseType: !2618, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{!150, !180, !213, !184, !358}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !207, file: !44, line: 1873, baseType: !2622, size: 64, offset: 384)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!150, !213, !180, !213}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !207, file: !44, line: 1874, baseType: !2626, size: 64, offset: 448)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!150, !180, !213}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !207, file: !44, line: 1875, baseType: !2630, size: 64, offset: 512)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!150, !180, !213, !313}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !207, file: !44, line: 1876, baseType: !2634, size: 64, offset: 576)
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{!150, !180, !213, !184}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !207, file: !44, line: 1877, baseType: !2626, size: 64, offset: 640)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !207, file: !44, line: 1878, baseType: !2639, size: 64, offset: 704)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!150, !180, !213, !184, !372}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !207, file: !44, line: 1879, baseType: !2643, size: 64, offset: 768)
!2643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2644, size: 64)
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!150, !180, !213, !180, !213, !7}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !207, file: !44, line: 1881, baseType: !2647, size: 64, offset: 832)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!150, !213, !2650}
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !2652)
!2652 = !{!2653, !2654, !2655, !2656, !2657, !2658, !2663, !2664, !2665}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2651, file: !44, line: 220, baseType: !7, size: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2651, file: !44, line: 221, baseType: !184, size: 16, offset: 32)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2651, file: !44, line: 222, baseType: !188, size: 32, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2651, file: !44, line: 223, baseType: !197, size: 32, offset: 96)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2651, file: !44, line: 224, baseType: !377, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2651, file: !44, line: 225, baseType: !2659, size: 128, offset: 192)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !585, line: 13, size: 128, elements: !2660)
!2660 = !{!2661, !2662}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2659, file: !585, line: 14, baseType: !584, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2659, file: !585, line: 15, baseType: !503, size: 64, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2651, file: !44, line: 226, baseType: !2659, size: 128, offset: 320)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2651, file: !44, line: 227, baseType: !2659, size: 128, offset: 448)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2651, file: !44, line: 234, baseType: !1118, size: 64, offset: 576)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !207, file: !44, line: 1882, baseType: !2667, size: 64, offset: 896)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!150, !356, !2670, !247, !7}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2672, line: 22, size: 1152, elements: !2673)
!2672 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!2673 = !{!2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2671, file: !2672, line: 23, baseType: !247, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2671, file: !2672, line: 24, baseType: !184, size: 16, offset: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2671, file: !2672, line: 25, baseType: !7, size: 32, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2671, file: !2672, line: 26, baseType: !1494, size: 32, offset: 96)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2671, file: !2672, line: 27, baseType: !253, size: 64, offset: 128)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2671, file: !2672, line: 28, baseType: !253, size: 64, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2671, file: !2672, line: 37, baseType: !253, size: 64, offset: 256)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2671, file: !2672, line: 38, baseType: !372, size: 32, offset: 320)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2671, file: !2672, line: 39, baseType: !372, size: 32, offset: 352)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2671, file: !2672, line: 40, baseType: !188, size: 32, offset: 384)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2671, file: !2672, line: 41, baseType: !197, size: 32, offset: 416)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2671, file: !2672, line: 42, baseType: !377, size: 64, offset: 448)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2671, file: !2672, line: 43, baseType: !2659, size: 128, offset: 512)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2671, file: !2672, line: 44, baseType: !2659, size: 128, offset: 640)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2671, file: !2672, line: 45, baseType: !2659, size: 128, offset: 768)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2671, file: !2672, line: 46, baseType: !2659, size: 128, offset: 896)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2671, file: !2672, line: 47, baseType: !253, size: 64, offset: 1024)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2671, file: !2672, line: 48, baseType: !253, size: 64, offset: 1088)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !207, file: !44, line: 1883, baseType: !2693, size: 64, offset: 960)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!1147, !213, !339, !1150}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !207, file: !44, line: 1884, baseType: !2697, size: 64, offset: 1024)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!150, !180, !2700, !253, !253}
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !207, file: !44, line: 1886, baseType: !2703, size: 64, offset: 1088)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!150, !180, !2706, !150}
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !207, file: !44, line: 1887, baseType: !2708, size: 64, offset: 1152)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!150, !180, !213, !1118, !7, !184}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !207, file: !44, line: 1890, baseType: !2634, size: 64, offset: 1216)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !207, file: !44, line: 1891, baseType: !2713, size: 64, offset: 1280)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!150, !180, !2611, !150}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !181, file: !44, line: 623, baseType: !367, size: 64, offset: 192)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !181, file: !44, line: 624, baseType: !176, size: 64, offset: 256)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !181, file: !44, line: 631, baseType: !167, size: 64, offset: 320)
!2719 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !44, line: 639, baseType: !2720, size: 32, offset: 384)
!2720 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !44, line: 639, size: 32, elements: !2721)
!2721 = !{!2722, !2724}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2720, file: !44, line: 640, baseType: !2723, size: 32)
!2723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2720, file: !44, line: 641, baseType: !7, size: 32)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !181, file: !44, line: 643, baseType: !372, size: 32, offset: 416)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !181, file: !44, line: 644, baseType: !377, size: 64, offset: 448)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !181, file: !44, line: 645, baseType: !2659, size: 128, offset: 512)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !181, file: !44, line: 646, baseType: !2659, size: 128, offset: 640)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !181, file: !44, line: 647, baseType: !2659, size: 128, offset: 768)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !181, file: !44, line: 648, baseType: !276, offset: 896)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !181, file: !44, line: 649, baseType: !185, size: 16, offset: 896)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !181, file: !44, line: 650, baseType: !971, size: 8, offset: 912)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !181, file: !44, line: 651, baseType: !971, size: 8, offset: 920)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !181, file: !44, line: 652, baseType: !698, size: 64, offset: 960)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !181, file: !44, line: 659, baseType: !167, size: 64, offset: 1024)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !181, file: !44, line: 660, baseType: !710, size: 256, offset: 1088)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !181, file: !44, line: 662, baseType: !167, size: 64, offset: 1344)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !181, file: !44, line: 663, baseType: !167, size: 64, offset: 1408)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !181, file: !44, line: 665, baseType: !415, size: 128, offset: 1472)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !181, file: !44, line: 666, baseType: !155, size: 128, offset: 1600)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !181, file: !44, line: 675, baseType: !155, size: 128, offset: 1728)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !181, file: !44, line: 676, baseType: !155, size: 128, offset: 1856)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !181, file: !44, line: 677, baseType: !155, size: 128, offset: 1984)
!2744 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !44, line: 678, baseType: !2745, size: 128, offset: 2112)
!2745 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !44, line: 678, size: 128, elements: !2746)
!2746 = !{!2747, !2748}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2745, file: !44, line: 679, baseType: !411, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2745, file: !44, line: 680, baseType: !807, size: 128, align: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !181, file: !44, line: 682, baseType: !539, size: 64, offset: 2240)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !181, file: !44, line: 683, baseType: !539, size: 64, offset: 2304)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !181, file: !44, line: 684, baseType: !549, size: 32, offset: 2368)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !181, file: !44, line: 685, baseType: !549, size: 32, offset: 2400)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !181, file: !44, line: 686, baseType: !549, size: 32, offset: 2432)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !181, file: !44, line: 688, baseType: !549, size: 32, offset: 2464)
!2755 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !44, line: 690, baseType: !2756, size: 64, offset: 2496)
!2756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !44, line: 690, size: 64, elements: !2757)
!2757 = !{!2758, !2759}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2756, file: !44, line: 691, baseType: !1134, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2756, file: !44, line: 692, baseType: !442, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !181, file: !44, line: 694, baseType: !2761, size: 64, offset: 2560)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !2763)
!2763 = !{!2764, !2765, !2766, !2767}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2762, file: !44, line: 1101, baseType: !276)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2762, file: !44, line: 1102, baseType: !155, size: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2762, file: !44, line: 1103, baseType: !155, size: 128, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2762, file: !44, line: 1104, baseType: !155, size: 128, offset: 256)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !181, file: !44, line: 695, baseType: !177, size: 1216, align: 64, offset: 2624)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !181, file: !44, line: 696, baseType: !155, size: 128, offset: 3840)
!2770 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !44, line: 697, baseType: !2771, size: 64, offset: 3968)
!2771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !44, line: 697, size: 64, elements: !2772)
!2772 = !{!2773, !2774, !2775, !2778, !2779}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2771, file: !44, line: 698, baseType: !1367, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2771, file: !44, line: 699, baseType: !731, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2771, file: !44, line: 700, baseType: !2776, size: 64)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2771, file: !44, line: 701, baseType: !339, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2771, file: !44, line: 702, baseType: !7, size: 32)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !181, file: !44, line: 705, baseType: !249, size: 32, offset: 4032)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !181, file: !44, line: 708, baseType: !249, size: 32, offset: 4064)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !181, file: !44, line: 709, baseType: !2509, size: 64, offset: 4096)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !181, file: !44, line: 720, baseType: !147, size: 64, offset: 4160)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !177, file: !44, line: 453, baseType: !2133, size: 128, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !177, file: !44, line: 454, baseType: !148, size: 32, offset: 192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !177, file: !44, line: 455, baseType: !549, size: 32, offset: 224)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !177, file: !44, line: 460, baseType: !958, size: 128, offset: 256)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !177, file: !44, line: 461, baseType: !710, size: 256, offset: 384)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !177, file: !44, line: 462, baseType: !167, size: 64, offset: 640)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !177, file: !44, line: 463, baseType: !167, size: 64, offset: 704)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !177, file: !44, line: 464, baseType: !167, size: 64, offset: 768)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !177, file: !44, line: 465, baseType: !2793, size: 64, offset: 832)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2795)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !2796)
!2796 = !{!2797, !2801, !2805, !2809, !2813, !2817, !2823, !2827, !2831, !2836, !2840, !2844, !2848, !2849, !2853, !2859, !2860, !2861, !2865, !2870, !2874, !2881}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !2795, file: !44, line: 368, baseType: !2798, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!150, !162, !454}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !2795, file: !44, line: 369, baseType: !2802, size: 64, offset: 64)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!150, !1118, !162}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !2795, file: !44, line: 372, baseType: !2806, size: 64, offset: 128)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!150, !176, !454}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !2795, file: !44, line: 375, baseType: !2810, size: 64, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2811, size: 64)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!150, !162}
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !2795, file: !44, line: 381, baseType: !2814, size: 64, offset: 256)
!2814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2815, size: 64)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!150, !1118, !176, !158, !7}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !2795, file: !44, line: 383, baseType: !2818, size: 64, offset: 320)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{null, !2821}
!2821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2822, size: 64)
!2822 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !2795, file: !44, line: 385, baseType: !2824, size: 64, offset: 384)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DISubroutineType(types: !2826)
!2826 = !{!150, !1118, !176, !377, !7, !7, !2315, !1324}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !2795, file: !44, line: 388, baseType: !2828, size: 64, offset: 448)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!150, !1118, !176, !377, !7, !7, !162, !147}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !2795, file: !44, line: 393, baseType: !2832, size: 64, offset: 512)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!2835, !176, !2835}
!2835 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !149, line: 125, baseType: !253)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !2795, file: !44, line: 394, baseType: !2837, size: 64, offset: 576)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{null, !162, !7, !7}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !2795, file: !44, line: 395, baseType: !2841, size: 64, offset: 640)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DISubroutineType(types: !2843)
!2843 = !{!150, !162, !148}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !2795, file: !44, line: 396, baseType: !2845, size: 64, offset: 704)
!2845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2846, size: 64)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{null, !162}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !2795, file: !44, line: 397, baseType: !1159, size: 64, offset: 768)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !2795, file: !44, line: 402, baseType: !2850, size: 64, offset: 832)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!150, !176, !162, !162, !5}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !2795, file: !44, line: 404, baseType: !2854, size: 64, offset: 896)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!358, !162, !2857}
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2858, line: 305, baseType: !7)
!2858 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !2795, file: !44, line: 405, baseType: !2845, size: 64, offset: 960)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !2795, file: !44, line: 406, baseType: !2810, size: 64, offset: 1024)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !2795, file: !44, line: 407, baseType: !2862, size: 64, offset: 1088)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!150, !162, !167, !167}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !2795, file: !44, line: 409, baseType: !2866, size: 64, offset: 1152)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{null, !162, !2869, !2869}
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !2795, file: !44, line: 410, baseType: !2871, size: 64, offset: 1216)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DISubroutineType(types: !2873)
!2873 = !{!150, !176, !162}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !2795, file: !44, line: 413, baseType: !2875, size: 64, offset: 1280)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!150, !2878, !1118, !2880}
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !2795, file: !44, line: 415, baseType: !2882, size: 64, offset: 1344)
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DISubroutineType(types: !2884)
!2884 = !{null, !1118}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !177, file: !44, line: 466, baseType: !167, size: 64, offset: 896)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !177, file: !44, line: 467, baseType: !1636, size: 32, offset: 960)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !177, file: !44, line: 468, baseType: !276, offset: 992)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !177, file: !44, line: 469, baseType: !155, size: 128, offset: 1024)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !177, file: !44, line: 470, baseType: !147, size: 64, offset: 1152)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !172, file: !164, line: 87, baseType: !167, size: 64, offset: 192)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !172, file: !164, line: 94, baseType: !167, size: 64, offset: 256)
!2892 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !164, line: 96, baseType: !2893, size: 64)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !164, line: 96, size: 64, elements: !2894)
!2894 = !{!2895}
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2893, file: !164, line: 101, baseType: !2896, size: 64)
!2896 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !149, line: 143, baseType: !253)
!2897 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !164, line: 103, baseType: !2898, size: 320)
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !164, line: 103, size: 320, elements: !2899)
!2899 = !{!2900, !2910, !2911, !2912}
!2900 = !DIDerivedType(tag: DW_TAG_member, scope: !2898, file: !164, line: 104, baseType: !2901, size: 128)
!2901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2898, file: !164, line: 104, size: 128, elements: !2902)
!2902 = !{!2903, !2904}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2901, file: !164, line: 105, baseType: !155, size: 128)
!2904 = !DIDerivedType(tag: DW_TAG_member, scope: !2901, file: !164, line: 106, baseType: !2905, size: 128)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !164, line: 106, size: 128, elements: !2906)
!2906 = !{!2907, !2908, !2909}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2905, file: !164, line: 107, baseType: !162, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2905, file: !164, line: 109, baseType: !150, size: 32, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2905, file: !164, line: 110, baseType: !150, size: 32, offset: 96)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2898, file: !164, line: 117, baseType: !2152, size: 64, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2898, file: !164, line: 119, baseType: !147, size: 64, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, scope: !2898, file: !164, line: 120, baseType: !2913, size: 64, offset: 256)
!2913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2898, file: !164, line: 120, size: 64, elements: !2914)
!2914 = !{!2915, !2916, !2917}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2913, file: !164, line: 121, baseType: !147, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2913, file: !164, line: 122, baseType: !167, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, scope: !2913, file: !164, line: 123, baseType: !2918, size: 32)
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2913, file: !164, line: 123, size: 32, elements: !2919)
!2919 = !{!2920, !2921, !2922}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2918, file: !164, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2918, file: !164, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2918, file: !164, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2923 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !164, line: 130, baseType: !2924, size: 192)
!2924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !164, line: 130, size: 192, elements: !2925)
!2925 = !{!2926, !2927, !2928, !2929, !2930}
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2924, file: !164, line: 131, baseType: !167, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2924, file: !164, line: 134, baseType: !259, size: 8, offset: 64)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2924, file: !164, line: 135, baseType: !259, size: 8, offset: 72)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2924, file: !164, line: 136, baseType: !549, size: 32, offset: 96)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2924, file: !164, line: 137, baseType: !7, size: 32, offset: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !164, line: 139, baseType: !2932, size: 256)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !164, line: 139, size: 256, elements: !2933)
!2933 = !{!2934, !2935, !2936}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2932, file: !164, line: 140, baseType: !167, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2932, file: !164, line: 141, baseType: !549, size: 32, offset: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2932, file: !164, line: 143, baseType: !155, size: 128, offset: 128)
!2937 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !164, line: 145, baseType: !2938, size: 256)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !164, line: 145, size: 256, elements: !2939)
!2939 = !{!2940, !2941, !2942, !2943, !2948}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2938, file: !164, line: 146, baseType: !167, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2938, file: !164, line: 147, baseType: !1089, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2938, file: !164, line: 148, baseType: !167, size: 64, offset: 128)
!2943 = !DIDerivedType(tag: DW_TAG_member, scope: !2938, file: !164, line: 149, baseType: !2944, size: 64, offset: 192)
!2944 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2938, file: !164, line: 149, size: 64, elements: !2945)
!2945 = !{!2946, !2947}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2944, file: !164, line: 150, baseType: !997, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2944, file: !164, line: 151, baseType: !549, size: 32)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2938, file: !164, line: 156, baseType: !276, offset: 256)
!2949 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !164, line: 159, baseType: !2950, size: 128)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !169, file: !164, line: 159, size: 128, elements: !2951)
!2951 = !{!2952, !3016}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2950, file: !164, line: 161, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2955)
!2955 = !{!2956, !2966, !2987, !2988, !2989, !2990, !2991, !3003, !3004, !3005}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2954, file: !31, line: 111, baseType: !2957, size: 384)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2958)
!2958 = !{!2959, !2961, !2962, !2963, !2964, !2965}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2957, file: !31, line: 20, baseType: !2960, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2957, file: !31, line: 21, baseType: !2960, size: 64, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2957, file: !31, line: 22, baseType: !2960, size: 64, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2957, file: !31, line: 23, baseType: !167, size: 64, offset: 192)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2957, file: !31, line: 24, baseType: !167, size: 64, offset: 256)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2957, file: !31, line: 25, baseType: !167, size: 64, offset: 320)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2954, file: !31, line: 112, baseType: !2967, size: 64, offset: 384)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2969, line: 105, size: 128, elements: !2970)
!2969 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2970 = !{!2971, !2972}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2968, file: !2969, line: 110, baseType: !167, size: 64)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2968, file: !2969, line: 118, baseType: !2973, size: 64, offset: 64)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2969, line: 95, size: 448, elements: !2975)
!2975 = !{!2976, !2977, !2982, !2983, !2984, !2985, !2986}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2974, file: !2969, line: 96, baseType: !537, size: 64)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2974, file: !2969, line: 97, baseType: !2978, size: 64, offset: 64)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2969, line: 60, baseType: !2980)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{null, !2967}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2974, file: !2969, line: 98, baseType: !2978, size: 64, offset: 128)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2974, file: !2969, line: 99, baseType: !358, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2974, file: !2969, line: 100, baseType: !358, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2974, file: !2969, line: 101, baseType: !807, size: 128, align: 64, offset: 256)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2974, file: !2969, line: 102, baseType: !2967, size: 64, offset: 384)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2954, file: !31, line: 113, baseType: !2968, size: 128, offset: 448)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2954, file: !31, line: 114, baseType: !1752, size: 192, offset: 576)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2954, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2954, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2954, file: !31, line: 117, baseType: !2992, size: 64, offset: 832)
!2992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2994)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2995)
!2995 = !{!2996, !2997, !3001, !3002}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2994, file: !31, line: 73, baseType: !2845, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2994, file: !31, line: 78, baseType: !2998, size: 64, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{null, !2953}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2994, file: !31, line: 83, baseType: !2998, size: 64, offset: 128)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2994, file: !31, line: 89, baseType: !1050, size: 64, offset: 192)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2954, file: !31, line: 118, baseType: !147, size: 64, offset: 896)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2954, file: !31, line: 119, baseType: !150, size: 32, offset: 960)
!3005 = !DIDerivedType(tag: DW_TAG_member, scope: !2954, file: !31, line: 120, baseType: !3006, size: 128, offset: 1024)
!3006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2954, file: !31, line: 120, size: 128, elements: !3007)
!3007 = !{!3008, !3014}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3006, file: !31, line: 121, baseType: !3009, size: 128)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3010, line: 6, size: 128, elements: !3011)
!3010 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!3011 = !{!3012, !3013}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3009, file: !3010, line: 7, baseType: !253, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3009, file: !3010, line: 8, baseType: !253, size: 64, offset: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3006, file: !31, line: 122, baseType: !3015)
!3015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3009, elements: !1614)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2950, file: !164, line: 162, baseType: !147, size: 64, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !169, file: !164, line: 176, baseType: !807, size: 128, align: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !164, line: 179, baseType: !3019, size: 32, offset: 384)
!3019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !164, line: 179, size: 32, elements: !3020)
!3020 = !{!3021, !3022, !3023, !3024}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3019, file: !164, line: 184, baseType: !549, size: 32)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3019, file: !164, line: 192, baseType: !7, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3019, file: !164, line: 194, baseType: !7, size: 32)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !3019, file: !164, line: 195, baseType: !150, size: 32)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !163, file: !164, line: 199, baseType: !549, size: 32, offset: 416)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "file_index", scope: !152, file: !3, line: 93, baseType: !3027, size: 64, offset: 320)
!3027 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !149, line: 107, baseType: !253)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !152, file: !3, line: 94, baseType: !7, size: 32, offset: 384)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "gref_id", scope: !152, file: !3, line: 95, baseType: !3030, size: 32, offset: 416)
!3030 = !DIDerivedType(tag: DW_TAG_typedef, name: "grant_ref_t", file: !3031, line: 90, baseType: !1494)
!3031 = !DIFile(filename: "./include/xen/interface/grant_table.h", directory: "/home/lizy2001/genbc/linux")
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !152, file: !3, line: 96, baseType: !3033, size: 64, offset: 448)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notify_info", file: !3, line: 82, size: 64, elements: !3034)
!3034 = !{!3035, !3037, !3038}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !3033, file: !3, line: 83, baseType: !3036, size: 12, flags: DIFlagBitField, extraData: i64 0)
!3036 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !149, line: 103, baseType: !1174)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3033, file: !3, line: 84, baseType: !3036, size: 2, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3033, file: !3, line: 85, baseType: !150, size: 32, offset: 32)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !158)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3040)
!3043 = !{!3044, !3096, !3099, !3104, !3106, !3111, !3116, !3121, !3126, !0, !3131, !3133, !4274, !4276, !4278, !4280, !4282}
!3044 = !DIGlobalVariableExpression(var: !3045, expr: !DIExpression())
!3045 = distinct !DIGlobalVariable(name: "__param_limit", scope: !2, file: !3, line: 74, type: !3046, isLocal: true, isDefinition: true, align: 64)
!3046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3047)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3048, line: 69, size: 320, elements: !3049)
!3048 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!3049 = !{!3050, !3051, !3052, !3068, !3070, !3074, !3075}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3047, file: !3048, line: 70, baseType: !313, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3047, file: !3048, line: 71, baseType: !406, size: 64, offset: 64)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3047, file: !3048, line: 72, baseType: !3053, size: 64, offset: 128)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3055)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3048, line: 47, size: 256, elements: !3056)
!3056 = !{!3057, !3058, !3063, !3067}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3055, file: !3048, line: 49, baseType: !7, size: 32)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3055, file: !3048, line: 51, baseType: !3059, size: 64, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!150, !313, !3062}
!3062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3055, file: !3048, line: 53, baseType: !3064, size: 64, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!150, !339, !3062}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3055, file: !3048, line: 55, baseType: !2599, size: 64, offset: 192)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3047, file: !3048, line: 73, baseType: !3069, size: 16, offset: 192)
!3069 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1174)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3047, file: !3048, line: 74, baseType: !3071, size: 8, offset: 208)
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !248, line: 16, baseType: !3072)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !250, line: 20, baseType: !3073)
!3073 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3047, file: !3048, line: 75, baseType: !971, size: 8, offset: 216)
!3075 = !DIDerivedType(tag: DW_TAG_member, scope: !3047, file: !3048, line: 76, baseType: !3076, size: 64, offset: 256)
!3076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3047, file: !3048, line: 76, size: 64, elements: !3077)
!3077 = !{!3078, !3079, !3086}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3076, file: !3048, line: 77, baseType: !147, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3076, file: !3048, line: 78, baseType: !3080, size: 64)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3082)
!3082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3048, line: 86, size: 128, elements: !3083)
!3083 = !{!3084, !3085}
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3082, file: !3048, line: 87, baseType: !7, size: 32)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3082, file: !3048, line: 88, baseType: !339, size: 64, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3076, file: !3048, line: 79, baseType: !3087, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3089)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3048, line: 92, size: 256, elements: !3090)
!3090 = !{!3091, !3092, !3093, !3094, !3095}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3089, file: !3048, line: 94, baseType: !7, size: 32)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3089, file: !3048, line: 95, baseType: !7, size: 32, offset: 32)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3089, file: !3048, line: 96, baseType: !816, size: 64, offset: 64)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3089, file: !3048, line: 97, baseType: !3053, size: 64, offset: 128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3089, file: !3048, line: 98, baseType: !147, size: 64, offset: 192)
!3096 = !DIGlobalVariableExpression(var: !3097, expr: !DIExpression())
!3097 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_limittype244", scope: !2, file: !3, line: 74, type: !3098, isLocal: true, isDefinition: true, align: 8)
!3098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 256, elements: !263)
!3099 = !DIGlobalVariableExpression(var: !3100, expr: !DIExpression())
!3100 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_limit245", scope: !2, file: !3, line: 75, type: !3101, isLocal: true, isDefinition: true, align: 8)
!3101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 752, elements: !3102)
!3102 = !{!3103}
!3103 = !DISubrange(count: 94)
!3104 = !DIGlobalVariableExpression(var: !3105, expr: !DIExpression())
!3105 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gntalloc_init258", scope: !2, file: !3, line: 606, type: !147, isLocal: true, isDefinition: true)
!3106 = !DIGlobalVariableExpression(var: !3107, expr: !DIExpression())
!3107 = distinct !DIGlobalVariable(name: "__exitcall_gntalloc_exit", scope: !2, file: !3, line: 607, type: !3108, isLocal: true, isDefinition: true)
!3108 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3109, line: 117, baseType: !3110)
!3109 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!3111 = !DIGlobalVariableExpression(var: !3112, expr: !DIExpression())
!3112 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file259", scope: !2, file: !3, line: 609, type: !3113, isLocal: true, isDefinition: true, align: 8)
!3113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 344, elements: !3114)
!3114 = !{!3115}
!3115 = !DISubrange(count: 43)
!3116 = !DIGlobalVariableExpression(var: !3117, expr: !DIExpression())
!3117 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license260", scope: !2, file: !3, line: 609, type: !3118, isLocal: true, isDefinition: true, align: 8)
!3118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 200, elements: !3119)
!3119 = !{!3120}
!3120 = !DISubrange(count: 25)
!3121 = !DIGlobalVariableExpression(var: !3122, expr: !DIExpression())
!3122 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author261", scope: !2, file: !3, line: 610, type: !3123, isLocal: true, isDefinition: true, align: 8)
!3123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 864, elements: !3124)
!3124 = !{!3125}
!3125 = !DISubrange(count: 108)
!3126 = !DIGlobalVariableExpression(var: !3127, expr: !DIExpression())
!3127 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description262", scope: !2, file: !3, line: 612, type: !3128, isLocal: true, isDefinition: true, align: 8)
!3128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 552, elements: !3129)
!3129 = !{!3130}
!3130 = !DISubrange(count: 69)
!3131 = !DIGlobalVariableExpression(var: !3132, expr: !DIExpression())
!3132 = distinct !DIGlobalVariable(name: "limit", scope: !2, file: !3, line: 73, type: !150, isLocal: true, isDefinition: true)
!3133 = !DIGlobalVariableExpression(var: !3134, expr: !DIExpression())
!3134 = distinct !DIGlobalVariable(name: "gntalloc_miscdev", scope: !2, file: !3, line: 576, type: !3135, isLocal: true, isDefinition: true)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "miscdevice", file: !3136, line: 79, size: 640, elements: !3137)
!3136 = !DIFile(filename: "./include/linux/miscdevice.h", directory: "/home/lizy2001/genbc/linux")
!3137 = !{!3138, !3139, !3140, !3141, !3142, !4270, !4271, !4272, !4273}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3135, file: !3136, line: 80, baseType: !150, size: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3135, file: !3136, line: 81, baseType: !313, size: 64, offset: 64)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !3135, file: !3136, line: 82, baseType: !1134, size: 64, offset: 128)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3135, file: !3136, line: 83, baseType: !155, size: 128, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3135, file: !3136, line: 84, baseType: !3143, size: 64, offset: 320)
!3143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3144, size: 64)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !3145)
!3145 = !{!3146, !3443, !3444, !3447, !3448, !3499, !3590, !3591, !3592, !3593, !3594, !3603, !3708, !3721, !4197, !4198, !4202, !4204, !4205, !4206, !4210, !4216, !4217, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4258, !4259, !4260, !4263, !4266, !4267, !4268, !4269}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3144, file: !73, line: 462, baseType: !3147, size: 512)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3148, line: 64, size: 512, elements: !3149)
!3148 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3149 = !{!3150, !3151, !3152, !3154, !3194, !3294, !3433, !3438, !3439, !3440, !3441, !3442}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3147, file: !3148, line: 65, baseType: !313, size: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3147, file: !3148, line: 66, baseType: !155, size: 128, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3147, file: !3148, line: 67, baseType: !3153, size: 64, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3147, file: !3148, line: 68, baseType: !3155, size: 64, offset: 256)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3148, line: 192, size: 704, elements: !3157)
!3157 = !{!3158, !3159, !3160, !3161}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3156, file: !3148, line: 193, baseType: !155, size: 128)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3156, file: !3148, line: 194, baseType: !276, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3156, file: !3148, line: 195, baseType: !3147, size: 512, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3156, file: !3148, line: 196, baseType: !3162, size: 64, offset: 640)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3164)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3148, line: 156, size: 192, elements: !3165)
!3165 = !{!3166, !3171, !3176}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3164, file: !3148, line: 157, baseType: !3167, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3168)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = !DISubroutineType(types: !3170)
!3170 = !{!150, !3155, !3153}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3164, file: !3148, line: 158, baseType: !3172, size: 64, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3173)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!313, !3155, !3153}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3164, file: !3148, line: 159, baseType: !3177, size: 64, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3178)
!3178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3179, size: 64)
!3179 = !DISubroutineType(types: !3180)
!3180 = !{!150, !3155, !3153, !3181}
!3181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3148, line: 148, size: 20736, elements: !3183)
!3183 = !{!3184, !3186, !3188, !3189, !3193}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3182, file: !3148, line: 149, baseType: !3185, size: 192)
!3185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 192, elements: !427)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3182, file: !3148, line: 150, baseType: !3187, size: 4096, offset: 192)
!3187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 4096, elements: !2078)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3182, file: !3148, line: 151, baseType: !150, size: 32, offset: 4288)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3182, file: !3148, line: 152, baseType: !3190, size: 16384, offset: 4320)
!3190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 16384, elements: !3191)
!3191 = !{!3192}
!3192 = !DISubrange(count: 2048)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3182, file: !3148, line: 153, baseType: !150, size: 32, offset: 20704)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3147, file: !3148, line: 69, baseType: !3195, size: 64, offset: 320)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3148, line: 138, size: 448, elements: !3197)
!3197 = !{!3198, !3202, !3221, !3223, !3256, !3284, !3288}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3196, file: !3148, line: 139, baseType: !3199, size: 64)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{null, !3153}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3196, file: !3148, line: 140, baseType: !3203, size: 64, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3205)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3206, line: 230, size: 128, elements: !3207)
!3206 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3207 = !{!3208, !3217}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3205, file: !3206, line: 231, baseType: !3209, size: 64)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!1147, !3153, !3212, !339}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3206, line: 30, size: 128, elements: !3214)
!3214 = !{!3215, !3216}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3213, file: !3206, line: 31, baseType: !313, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3213, file: !3206, line: 32, baseType: !184, size: 16, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3205, file: !3206, line: 232, baseType: !3218, size: 64, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!1147, !3153, !3212, !313, !1150}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3196, file: !3148, line: 141, baseType: !3222, size: 64, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3196, file: !3148, line: 142, baseType: !3224, size: 64, offset: 192)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3227)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3206, line: 84, size: 320, elements: !3228)
!3228 = !{!3229, !3230, !3234, !3253, !3254}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3227, file: !3206, line: 85, baseType: !313, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3227, file: !3206, line: 86, baseType: !3231, size: 64, offset: 64)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!184, !3153, !3212, !150}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3227, file: !3206, line: 88, baseType: !3235, size: 64, offset: 128)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!184, !3153, !3238, !150}
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3239, size: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3206, line: 168, size: 448, elements: !3240)
!3240 = !{!3241, !3242, !3243, !3244, !3248, !3249}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3239, file: !3206, line: 169, baseType: !3213, size: 128)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3239, file: !3206, line: 170, baseType: !1150, size: 64, offset: 128)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3239, file: !3206, line: 171, baseType: !147, size: 64, offset: 192)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3239, file: !3206, line: 172, baseType: !3245, size: 64, offset: 256)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!1147, !1118, !3153, !3238, !339, !377, !1150}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3239, file: !3206, line: 174, baseType: !3245, size: 64, offset: 320)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3239, file: !3206, line: 176, baseType: !3250, size: 64, offset: 384)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3251, size: 64)
!3251 = !DISubroutineType(types: !3252)
!3252 = !{!150, !1118, !3153, !3238, !1004}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3227, file: !3206, line: 90, baseType: !3222, size: 64, offset: 192)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3227, file: !3206, line: 91, baseType: !3255, size: 64, offset: 256)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3196, file: !3148, line: 143, baseType: !3257, size: 64, offset: 256)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DISubroutineType(types: !3259)
!3259 = !{!3260, !3153}
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3262)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3263)
!3263 = !{!3264, !3265, !3269, !3273, !3279, !3283}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3262, file: !61, line: 40, baseType: !60, size: 32)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3262, file: !61, line: 41, baseType: !3266, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!358}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3262, file: !61, line: 42, baseType: !3270, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!147}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3262, file: !61, line: 43, baseType: !3274, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!2320, !3277}
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3262, file: !61, line: 44, baseType: !3280, size: 64, offset: 256)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!2320}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3262, file: !61, line: 45, baseType: !2599, size: 64, offset: 320)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3196, file: !3148, line: 144, baseType: !3285, size: 64, offset: 320)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!2320, !3153}
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3196, file: !3148, line: 145, baseType: !3289, size: 64, offset: 384)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DISubroutineType(types: !3291)
!3291 = !{null, !3153, !3292, !3293}
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3147, file: !3148, line: 70, baseType: !3295, size: 64, offset: 384)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !392, line: 123, size: 1024, elements: !3297)
!3297 = !{!3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3426, !3427, !3428, !3429, !3430}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3296, file: !392, line: 124, baseType: !549, size: 32)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3296, file: !392, line: 125, baseType: !549, size: 32, offset: 32)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3296, file: !392, line: 135, baseType: !3295, size: 64, offset: 64)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3296, file: !392, line: 136, baseType: !313, size: 64, offset: 128)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3296, file: !392, line: 138, baseType: !860, size: 192, align: 64, offset: 192)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3296, file: !392, line: 140, baseType: !2320, size: 64, offset: 384)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3296, file: !392, line: 141, baseType: !7, size: 32, offset: 448)
!3305 = !DIDerivedType(tag: DW_TAG_member, scope: !3296, file: !392, line: 142, baseType: !3306, size: 256, offset: 512)
!3306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3296, file: !392, line: 142, size: 256, elements: !3307)
!3307 = !{!3308, !3354, !3358}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3306, file: !392, line: 143, baseType: !3309, size: 192)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !392, line: 91, size: 192, elements: !3310)
!3310 = !{!3311, !3312, !3313}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3309, file: !392, line: 92, baseType: !167, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3309, file: !392, line: 94, baseType: !961, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3309, file: !392, line: 100, baseType: !3314, size: 64, offset: 128)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !392, line: 180, size: 704, elements: !3316)
!3316 = !{!3317, !3318, !3319, !3326, !3327, !3328, !3352, !3353}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3315, file: !392, line: 182, baseType: !3295, size: 64)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3315, file: !392, line: 183, baseType: !7, size: 32, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3315, file: !392, line: 186, baseType: !3320, size: 192, offset: 128)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3321, line: 19, size: 192, elements: !3322)
!3321 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3322 = !{!3323, !3324, !3325}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3320, file: !3321, line: 20, baseType: !2133, size: 128)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3320, file: !3321, line: 21, baseType: !7, size: 32, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3320, file: !3321, line: 22, baseType: !7, size: 32, offset: 160)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3315, file: !392, line: 187, baseType: !247, size: 32, offset: 320)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3315, file: !392, line: 188, baseType: !247, size: 32, offset: 352)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3315, file: !392, line: 189, baseType: !3329, size: 64, offset: 384)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !392, line: 168, size: 320, elements: !3331)
!3331 = !{!3332, !3336, !3340, !3344, !3348}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3330, file: !392, line: 169, baseType: !3333, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3334, size: 64)
!3334 = !DISubroutineType(types: !3335)
!3335 = !{!150, !489, !3314}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3330, file: !392, line: 171, baseType: !3337, size: 64, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!150, !3295, !313, !184}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3330, file: !392, line: 173, baseType: !3341, size: 64, offset: 128)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!150, !3295}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3330, file: !392, line: 174, baseType: !3345, size: 64, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!150, !3295, !3295, !313}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3330, file: !392, line: 176, baseType: !3349, size: 64, offset: 256)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DISubroutineType(types: !3351)
!3351 = !{!150, !489, !3295, !3314}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3315, file: !392, line: 192, baseType: !155, size: 128, offset: 448)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3315, file: !392, line: 194, baseType: !788, size: 128, offset: 576)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3306, file: !392, line: 144, baseType: !3355, size: 64)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !392, line: 103, size: 64, elements: !3356)
!3356 = !{!3357}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3355, file: !392, line: 104, baseType: !3295, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3306, file: !392, line: 145, baseType: !3359, size: 256)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !392, line: 107, size: 256, elements: !3360)
!3360 = !{!3361, !3421, !3424, !3425}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3359, file: !392, line: 108, baseType: !3362, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3364)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !392, line: 217, size: 768, elements: !3365)
!3365 = !{!3366, !3386, !3390, !3394, !3398, !3402, !3406, !3410, !3411, !3412, !3413, !3417}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3364, file: !392, line: 222, baseType: !3367, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!150, !3370}
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3371, size: 64)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !392, line: 197, size: 1088, elements: !3372)
!3372 = !{!3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3371, file: !392, line: 199, baseType: !3295, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3371, file: !392, line: 200, baseType: !1118, size: 64, offset: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3371, file: !392, line: 201, baseType: !489, size: 64, offset: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3371, file: !392, line: 202, baseType: !147, size: 64, offset: 192)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3371, file: !392, line: 205, baseType: !533, size: 192, offset: 256)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3371, file: !392, line: 206, baseType: !533, size: 192, offset: 448)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3371, file: !392, line: 207, baseType: !150, size: 32, offset: 640)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3371, file: !392, line: 208, baseType: !155, size: 128, offset: 704)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3371, file: !392, line: 209, baseType: !339, size: 64, offset: 832)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3371, file: !392, line: 211, baseType: !1150, size: 64, offset: 896)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3371, file: !392, line: 212, baseType: !358, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3371, file: !392, line: 213, baseType: !358, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3371, file: !392, line: 214, baseType: !1032, size: 64, offset: 1024)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3364, file: !392, line: 223, baseType: !3387, size: 64, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3388, size: 64)
!3388 = !DISubroutineType(types: !3389)
!3389 = !{null, !3370}
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3364, file: !392, line: 236, baseType: !3391, size: 64, offset: 128)
!3391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3392, size: 64)
!3392 = !DISubroutineType(types: !3393)
!3393 = !{!150, !489, !147}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3364, file: !392, line: 238, baseType: !3395, size: 64, offset: 192)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!147, !489, !1153}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3364, file: !392, line: 239, baseType: !3399, size: 64, offset: 256)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!147, !489, !147, !1153}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3364, file: !392, line: 240, baseType: !3403, size: 64, offset: 320)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{null, !489, !147}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3364, file: !392, line: 242, baseType: !3407, size: 64, offset: 384)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!1147, !3370, !339, !1150, !377}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3364, file: !392, line: 252, baseType: !1150, size: 64, offset: 448)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3364, file: !392, line: 259, baseType: !358, size: 8, offset: 512)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3364, file: !392, line: 260, baseType: !3407, size: 64, offset: 576)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3364, file: !392, line: 263, baseType: !3414, size: 64, offset: 640)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!1209, !3370, !1211}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3364, file: !392, line: 266, baseType: !3418, size: 64, offset: 704)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!150, !3370, !1004}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3359, file: !392, line: 109, baseType: !3422, size: 64, offset: 64)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !392, line: 31, flags: DIFlagFwdDecl)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3359, file: !392, line: 110, baseType: !377, size: 64, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3359, file: !392, line: 111, baseType: !3295, size: 64, offset: 192)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3296, file: !392, line: 148, baseType: !147, size: 64, offset: 768)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3296, file: !392, line: 154, baseType: !253, size: 64, offset: 832)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3296, file: !392, line: 156, baseType: !185, size: 16, offset: 896)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3296, file: !392, line: 157, baseType: !184, size: 16, offset: 912)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3296, file: !392, line: 158, baseType: !3431, size: 64, offset: 960)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !392, line: 32, flags: DIFlagFwdDecl)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3147, file: !3148, line: 71, baseType: !3434, size: 32, offset: 448)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3435, line: 19, size: 32, elements: !3436)
!3435 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3436 = !{!3437}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3434, file: !3435, line: 20, baseType: !835, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3147, file: !3148, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3147, file: !3148, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3147, file: !3148, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3147, file: !3148, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3147, file: !3148, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3144, file: !73, line: 463, baseType: !3143, size: 64, offset: 512)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3144, file: !73, line: 465, baseType: !3445, size: 64, offset: 576)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3144, file: !73, line: 467, baseType: !313, size: 64, offset: 640)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3144, file: !73, line: 468, baseType: !3449, size: 64, offset: 704)
!3449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3451)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3452)
!3452 = !{!3453, !3454, !3455, !3459, !3464, !3468}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3451, file: !73, line: 88, baseType: !313, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3451, file: !73, line: 89, baseType: !3224, size: 64, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3451, file: !73, line: 90, baseType: !3456, size: 64, offset: 128)
!3456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3457 = !DISubroutineType(types: !3458)
!3458 = !{!150, !3143, !3181}
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3451, file: !73, line: 91, baseType: !3460, size: 64, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DISubroutineType(types: !3462)
!3462 = !{!339, !3143, !3463, !3292, !3293}
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3451, file: !73, line: 93, baseType: !3465, size: 64, offset: 256)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{null, !3143}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3451, file: !73, line: 95, baseType: !3469, size: 64, offset: 320)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3471)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3472)
!3472 = !{!3473, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3471, file: !80, line: 279, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!150, !3143}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3471, file: !80, line: 280, baseType: !3465, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3471, file: !80, line: 281, baseType: !3474, size: 64, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3471, file: !80, line: 282, baseType: !3474, size: 64, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3471, file: !80, line: 283, baseType: !3474, size: 64, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3471, file: !80, line: 284, baseType: !3474, size: 64, offset: 320)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3471, file: !80, line: 285, baseType: !3474, size: 64, offset: 384)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3471, file: !80, line: 286, baseType: !3474, size: 64, offset: 448)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3471, file: !80, line: 287, baseType: !3474, size: 64, offset: 512)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3471, file: !80, line: 288, baseType: !3474, size: 64, offset: 576)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3471, file: !80, line: 289, baseType: !3474, size: 64, offset: 640)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3471, file: !80, line: 290, baseType: !3474, size: 64, offset: 704)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3471, file: !80, line: 291, baseType: !3474, size: 64, offset: 768)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3471, file: !80, line: 292, baseType: !3474, size: 64, offset: 832)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3471, file: !80, line: 293, baseType: !3474, size: 64, offset: 896)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3471, file: !80, line: 294, baseType: !3474, size: 64, offset: 960)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3471, file: !80, line: 295, baseType: !3474, size: 64, offset: 1024)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3471, file: !80, line: 296, baseType: !3474, size: 64, offset: 1088)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3471, file: !80, line: 297, baseType: !3474, size: 64, offset: 1152)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3471, file: !80, line: 298, baseType: !3474, size: 64, offset: 1216)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3471, file: !80, line: 299, baseType: !3474, size: 64, offset: 1280)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3471, file: !80, line: 300, baseType: !3474, size: 64, offset: 1344)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3471, file: !80, line: 301, baseType: !3474, size: 64, offset: 1408)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3144, file: !73, line: 470, baseType: !3500, size: 64, offset: 768)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3502, line: 82, size: 1408, elements: !3503)
!3502 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3503 = !{!3504, !3505, !3506, !3507, !3508, !3509, !3510, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3585, !3588, !3589}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3501, file: !3502, line: 83, baseType: !313, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3501, file: !3502, line: 84, baseType: !313, size: 64, offset: 64)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3501, file: !3502, line: 85, baseType: !3143, size: 64, offset: 128)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3501, file: !3502, line: 86, baseType: !3224, size: 64, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3501, file: !3502, line: 87, baseType: !3224, size: 64, offset: 256)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3501, file: !3502, line: 88, baseType: !3224, size: 64, offset: 320)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3501, file: !3502, line: 90, baseType: !3511, size: 64, offset: 384)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!150, !3143, !3514}
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3516)
!3516 = !{!3517, !3518, !3519, !3520, !3521, !3522, !3523, !3536, !3549, !3550, !3551, !3552, !3553, !3561, !3562, !3563, !3564, !3565, !3566}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3515, file: !67, line: 96, baseType: !313, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3515, file: !67, line: 97, baseType: !3500, size: 64, offset: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3515, file: !67, line: 99, baseType: !406, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3515, file: !67, line: 100, baseType: !313, size: 64, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3515, file: !67, line: 102, baseType: !358, size: 8, offset: 256)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3515, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3515, file: !67, line: 105, baseType: !3524, size: 64, offset: 320)
!3524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3525, size: 64)
!3525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3526)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3527, line: 262, size: 1600, elements: !3528)
!3527 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3528 = !{!3529, !3530, !3531, !3535}
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3526, file: !3527, line: 263, baseType: !2512, size: 256)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3526, file: !3527, line: 264, baseType: !2512, size: 256, offset: 256)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3526, file: !3527, line: 265, baseType: !3532, size: 1024, offset: 512)
!3532 = !DICompositeType(tag: DW_TAG_array_type, baseType: !315, size: 1024, elements: !3533)
!3533 = !{!3534}
!3534 = !DISubrange(count: 128)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3526, file: !3527, line: 266, baseType: !2320, size: 64, offset: 1536)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3515, file: !67, line: 106, baseType: !3537, size: 64, offset: 384)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3539)
!3539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3527, line: 210, size: 256, elements: !3540)
!3540 = !{!3541, !3545, !3547, !3548}
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3539, file: !3527, line: 211, baseType: !3542, size: 72)
!3542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !972, size: 72, elements: !3543)
!3543 = !{!3544}
!3544 = !DISubrange(count: 9)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3539, file: !3527, line: 212, baseType: !3546, size: 64, offset: 128)
!3546 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3527, line: 14, baseType: !167)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3539, file: !3527, line: 213, baseType: !249, size: 32, offset: 192)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3539, file: !3527, line: 214, baseType: !249, size: 32, offset: 224)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3515, file: !67, line: 108, baseType: !3474, size: 64, offset: 448)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3515, file: !67, line: 109, baseType: !3465, size: 64, offset: 512)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3515, file: !67, line: 110, baseType: !3474, size: 64, offset: 576)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3515, file: !67, line: 111, baseType: !3465, size: 64, offset: 640)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3515, file: !67, line: 112, baseType: !3554, size: 64, offset: 704)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!150, !3143, !3557}
!3557 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3558)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3559)
!3559 = !{!3560}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3558, file: !80, line: 51, baseType: !150, size: 32)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3515, file: !67, line: 113, baseType: !3474, size: 64, offset: 768)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3515, file: !67, line: 114, baseType: !3224, size: 64, offset: 832)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3515, file: !67, line: 115, baseType: !3224, size: 64, offset: 896)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3515, file: !67, line: 117, baseType: !3469, size: 64, offset: 960)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3515, file: !67, line: 118, baseType: !3465, size: 64, offset: 1024)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3515, file: !67, line: 120, baseType: !3567, size: 64, offset: 1088)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3501, file: !3502, line: 91, baseType: !3456, size: 64, offset: 448)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3501, file: !3502, line: 92, baseType: !3474, size: 64, offset: 512)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3501, file: !3502, line: 93, baseType: !3465, size: 64, offset: 576)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3501, file: !3502, line: 94, baseType: !3474, size: 64, offset: 640)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3501, file: !3502, line: 95, baseType: !3465, size: 64, offset: 704)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3501, file: !3502, line: 97, baseType: !3474, size: 64, offset: 768)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3501, file: !3502, line: 98, baseType: !3474, size: 64, offset: 832)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3501, file: !3502, line: 100, baseType: !3554, size: 64, offset: 896)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3501, file: !3502, line: 101, baseType: !3474, size: 64, offset: 960)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3501, file: !3502, line: 103, baseType: !3474, size: 64, offset: 1024)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3501, file: !3502, line: 105, baseType: !3474, size: 64, offset: 1088)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3501, file: !3502, line: 107, baseType: !3469, size: 64, offset: 1152)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3501, file: !3502, line: 109, baseType: !3582, size: 64, offset: 1216)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3584)
!3584 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3502, line: 109, flags: DIFlagFwdDecl)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3501, file: !3502, line: 111, baseType: !3586, size: 64, offset: 1280)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3502, line: 111, flags: DIFlagFwdDecl)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3501, file: !3502, line: 112, baseType: !421, offset: 1344)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3501, file: !3502, line: 114, baseType: !358, size: 8, offset: 1344)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3144, file: !73, line: 471, baseType: !3514, size: 64, offset: 832)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3144, file: !73, line: 473, baseType: !147, size: 64, offset: 896)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3144, file: !73, line: 475, baseType: !147, size: 64, offset: 960)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3144, file: !73, line: 480, baseType: !533, size: 192, offset: 1024)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3144, file: !73, line: 484, baseType: !3595, size: 576, offset: 1216)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3596)
!3596 = !{!3597, !3598, !3599, !3600, !3601, !3602}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3595, file: !73, line: 362, baseType: !155, size: 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3595, file: !73, line: 363, baseType: !155, size: 128, offset: 128)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3595, file: !73, line: 364, baseType: !155, size: 128, offset: 256)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3595, file: !73, line: 365, baseType: !155, size: 128, offset: 384)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3595, file: !73, line: 366, baseType: !358, size: 8, offset: 512)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3595, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3144, file: !73, line: 485, baseType: !3604, size: 2304, offset: 1792)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3605)
!3605 = !{!3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3701, !3705}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3604, file: !80, line: 566, baseType: !3557, size: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3604, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3604, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3604, file: !80, line: 569, baseType: !358, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3604, file: !80, line: 570, baseType: !358, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3604, file: !80, line: 571, baseType: !358, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3604, file: !80, line: 572, baseType: !358, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3604, file: !80, line: 573, baseType: !358, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3604, file: !80, line: 574, baseType: !358, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3604, file: !80, line: 575, baseType: !358, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3604, file: !80, line: 576, baseType: !358, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3604, file: !80, line: 577, baseType: !247, size: 32, offset: 64)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3604, file: !80, line: 578, baseType: !276, offset: 96)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3604, file: !80, line: 580, baseType: !155, size: 128, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3604, file: !80, line: 581, baseType: !1752, size: 192, offset: 256)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3604, file: !80, line: 582, baseType: !3622, size: 64, offset: 448)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3624, line: 43, size: 1472, elements: !3625)
!3624 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3625 = !{!3626, !3627, !3628, !3629, !3630, !3633, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3623, file: !3624, line: 44, baseType: !313, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3623, file: !3624, line: 45, baseType: !150, size: 32, offset: 64)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3623, file: !3624, line: 46, baseType: !155, size: 128, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3623, file: !3624, line: 47, baseType: !276, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3623, file: !3624, line: 48, baseType: !3631, size: 64, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3623, file: !3624, line: 49, baseType: !3634, size: 320, offset: 320)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3635, line: 11, size: 320, elements: !3636)
!3635 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3636 = !{!3637, !3638, !3639, !3644}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3634, file: !3635, line: 16, baseType: !415, size: 128)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3634, file: !3635, line: 17, baseType: !167, size: 64, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3634, file: !3635, line: 18, baseType: !3640, size: 64, offset: 192)
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = !DISubroutineType(types: !3642)
!3642 = !{null, !3643}
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3634, file: !3635, line: 19, baseType: !247, size: 32, offset: 256)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3623, file: !3624, line: 50, baseType: !167, size: 64, offset: 640)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3623, file: !3624, line: 51, baseType: !912, size: 64, offset: 704)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3623, file: !3624, line: 52, baseType: !912, size: 64, offset: 768)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3623, file: !3624, line: 53, baseType: !912, size: 64, offset: 832)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3623, file: !3624, line: 54, baseType: !912, size: 64, offset: 896)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3623, file: !3624, line: 55, baseType: !912, size: 64, offset: 960)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3623, file: !3624, line: 56, baseType: !167, size: 64, offset: 1024)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3623, file: !3624, line: 57, baseType: !167, size: 64, offset: 1088)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3623, file: !3624, line: 58, baseType: !167, size: 64, offset: 1152)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3623, file: !3624, line: 59, baseType: !167, size: 64, offset: 1216)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3623, file: !3624, line: 60, baseType: !167, size: 64, offset: 1280)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3623, file: !3624, line: 61, baseType: !3143, size: 64, offset: 1344)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3623, file: !3624, line: 62, baseType: !358, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3623, file: !3624, line: 63, baseType: !358, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3604, file: !80, line: 583, baseType: !358, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3604, file: !80, line: 584, baseType: !358, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3604, file: !80, line: 585, baseType: !358, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3604, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3604, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3604, file: !80, line: 592, baseType: !904, size: 512, offset: 576)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3604, file: !80, line: 593, baseType: !253, size: 64, offset: 1088)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3604, file: !80, line: 594, baseType: !1777, size: 256, offset: 1152)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3604, file: !80, line: 595, baseType: !788, size: 128, offset: 1408)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3604, file: !80, line: 596, baseType: !3631, size: 64, offset: 1536)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3604, file: !80, line: 597, baseType: !549, size: 32, offset: 1600)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3604, file: !80, line: 598, baseType: !549, size: 32, offset: 1632)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3604, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3604, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3604, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3604, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3604, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3604, file: !80, line: 604, baseType: !358, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3604, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3604, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3604, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3604, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3604, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3604, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3604, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3604, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3604, file: !80, line: 613, baseType: !150, size: 32, offset: 1792)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3604, file: !80, line: 614, baseType: !150, size: 32, offset: 1824)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3604, file: !80, line: 615, baseType: !253, size: 64, offset: 1856)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3604, file: !80, line: 616, baseType: !253, size: 64, offset: 1920)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3604, file: !80, line: 617, baseType: !253, size: 64, offset: 1984)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3604, file: !80, line: 618, baseType: !253, size: 64, offset: 2048)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3604, file: !80, line: 620, baseType: !3692, size: 64, offset: 2112)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3694)
!3694 = !{!3695, !3696, !3697, !3698}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3693, file: !80, line: 537, baseType: !276)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3693, file: !80, line: 538, baseType: !7, size: 32)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3693, file: !80, line: 540, baseType: !155, size: 128, offset: 64)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3693, file: !80, line: 543, baseType: !3699, size: 64, offset: 192)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3604, file: !80, line: 621, baseType: !3702, size: 64, offset: 2176)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !3143, !1472}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3604, file: !80, line: 622, baseType: !3706, size: 64, offset: 2240)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3144, file: !73, line: 486, baseType: !3709, size: 64, offset: 4096)
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3711)
!3711 = !{!3712, !3713, !3714, !3718, !3719, !3720}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3710, file: !80, line: 643, baseType: !3471, size: 1472)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3710, file: !80, line: 644, baseType: !3474, size: 64, offset: 1472)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3710, file: !80, line: 645, baseType: !3715, size: 64, offset: 1536)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{null, !3143, !358}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3710, file: !80, line: 646, baseType: !3474, size: 64, offset: 1600)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3710, file: !80, line: 647, baseType: !3465, size: 64, offset: 1664)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3710, file: !80, line: 648, baseType: !3465, size: 64, offset: 1728)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3144, file: !73, line: 493, baseType: !3722, size: 64, offset: 4160)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3724)
!3724 = !{!3725, !3726, !3727, !4058, !4059, !4060, !4061, !4062, !4063, !4189, !4190, !4191, !4192, !4193, !4194, !4195}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3723, file: !94, line: 163, baseType: !155, size: 128)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3723, file: !94, line: 164, baseType: !313, size: 64, offset: 128)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3723, file: !94, line: 165, baseType: !3728, size: 64, offset: 192)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3730)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3731)
!3731 = !{!3732, !3850, !3861, !3866, !3870, !3877, !3881, !3885, !4050, !4054}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3730, file: !94, line: 106, baseType: !3733, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DISubroutineType(types: !3735)
!3735 = !{!150, !3722, !3736, !93}
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3738, line: 51, size: 1344, elements: !3739)
!3738 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3739 = !{!3740, !3741, !3743, !3744, !3834, !3843, !3844, !3845, !3846, !3847, !3848, !3849}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3737, file: !3738, line: 52, baseType: !313, size: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3737, file: !3738, line: 53, baseType: !3742, size: 32, offset: 64)
!3742 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3738, line: 28, baseType: !247)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3737, file: !3738, line: 54, baseType: !313, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3737, file: !3738, line: 55, baseType: !3745, size: 192, offset: 192)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3746, line: 17, size: 192, elements: !3747)
!3746 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3747 = !{!3748, !3750, !3833}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3745, file: !3746, line: 18, baseType: !3749, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3745, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3745, file: !3746, line: 19, baseType: !3751, size: 64, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3753)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3746, line: 110, size: 1152, elements: !3754)
!3754 = !{!3755, !3759, !3763, !3769, !3775, !3779, !3783, !3788, !3792, !3793, !3797, !3801, !3805, !3816, !3817, !3818, !3819, !3829}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3753, file: !3746, line: 111, baseType: !3756, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!3749, !3749}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3753, file: !3746, line: 112, baseType: !3760, size: 64, offset: 64)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{null, !3749}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3753, file: !3746, line: 113, baseType: !3764, size: 64, offset: 128)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!358, !3767}
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3745)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3753, file: !3746, line: 114, baseType: !3770, size: 64, offset: 192)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!2320, !3767, !3773}
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3144)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3753, file: !3746, line: 116, baseType: !3776, size: 64, offset: 256)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3777, size: 64)
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!358, !3767, !313}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3753, file: !3746, line: 118, baseType: !3780, size: 64, offset: 320)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!150, !3767, !313, !7, !147, !1150}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3753, file: !3746, line: 123, baseType: !3784, size: 64, offset: 384)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{!150, !3767, !313, !3787, !1150}
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3753, file: !3746, line: 126, baseType: !3789, size: 64, offset: 448)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!313, !3767}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3753, file: !3746, line: 127, baseType: !3789, size: 64, offset: 512)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3753, file: !3746, line: 128, baseType: !3794, size: 64, offset: 576)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!3749, !3767}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3753, file: !3746, line: 130, baseType: !3798, size: 64, offset: 640)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!3749, !3767, !3749}
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3753, file: !3746, line: 133, baseType: !3802, size: 64, offset: 704)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!3749, !3767, !313}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3753, file: !3746, line: 135, baseType: !3806, size: 64, offset: 768)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!150, !3767, !313, !313, !7, !7, !3809}
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3746, line: 43, size: 640, elements: !3811)
!3811 = !{!3812, !3813, !3814}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3810, file: !3746, line: 44, baseType: !3749, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3810, file: !3746, line: 45, baseType: !7, size: 32, offset: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3810, file: !3746, line: 46, baseType: !3815, size: 512, offset: 128)
!3815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 512, elements: !942)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3753, file: !3746, line: 140, baseType: !3798, size: 64, offset: 832)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3753, file: !3746, line: 143, baseType: !3794, size: 64, offset: 896)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3753, file: !3746, line: 145, baseType: !3756, size: 64, offset: 960)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3753, file: !3746, line: 146, baseType: !3820, size: 64, offset: 1024)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!150, !3767, !3823}
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3746, line: 29, size: 128, elements: !3825)
!3825 = !{!3826, !3827, !3828}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3824, file: !3746, line: 30, baseType: !7, size: 32)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3824, file: !3746, line: 31, baseType: !7, size: 32, offset: 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3824, file: !3746, line: 32, baseType: !3767, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3753, file: !3746, line: 148, baseType: !3830, size: 64, offset: 1088)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = !DISubroutineType(types: !3832)
!3832 = !{!150, !3767, !3143}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3745, file: !3746, line: 20, baseType: !3143, size: 64, offset: 128)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3737, file: !3738, line: 57, baseType: !3835, size: 64, offset: 384)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3738, line: 31, size: 704, elements: !3837)
!3837 = !{!3838, !3839, !3840, !3841, !3842}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3836, file: !3738, line: 32, baseType: !339, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3836, file: !3738, line: 33, baseType: !150, size: 32, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3836, file: !3738, line: 34, baseType: !147, size: 64, offset: 128)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3836, file: !3738, line: 35, baseType: !3835, size: 64, offset: 192)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3836, file: !3738, line: 43, baseType: !3239, size: 448, offset: 256)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3737, file: !3738, line: 58, baseType: !3835, size: 64, offset: 448)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3737, file: !3738, line: 59, baseType: !3736, size: 64, offset: 512)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3737, file: !3738, line: 60, baseType: !3736, size: 64, offset: 576)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3737, file: !3738, line: 61, baseType: !3736, size: 64, offset: 640)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3737, file: !3738, line: 63, baseType: !3147, size: 512, offset: 704)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3737, file: !3738, line: 65, baseType: !167, size: 64, offset: 1216)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3737, file: !3738, line: 66, baseType: !147, size: 64, offset: 1280)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3730, file: !94, line: 108, baseType: !3851, size: 64, offset: 64)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!150, !3722, !3854, !93}
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3856)
!3856 = !{!3857, !3858, !3859}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3855, file: !94, line: 64, baseType: !3749, size: 64)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3855, file: !94, line: 65, baseType: !150, size: 32, offset: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3855, file: !94, line: 66, baseType: !3860, size: 512, offset: 96)
!3860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 512, elements: !1930)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3730, file: !94, line: 110, baseType: !3862, size: 64, offset: 128)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!150, !3722, !7, !3865}
!3865 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !149, line: 164, baseType: !167)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3730, file: !94, line: 111, baseType: !3867, size: 64, offset: 192)
!3867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3868 = !DISubroutineType(types: !3869)
!3869 = !{null, !3722, !7}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3730, file: !94, line: 112, baseType: !3871, size: 64, offset: 256)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!150, !3722, !3736, !3874, !7, !3876, !816}
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3730, file: !94, line: 117, baseType: !3878, size: 64, offset: 320)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!150, !3722, !7, !7, !147}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3730, file: !94, line: 119, baseType: !3882, size: 64, offset: 384)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{null, !3722, !7, !7}
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3730, file: !94, line: 121, baseType: !3886, size: 64, offset: 448)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!150, !3722, !3889, !358}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !115, line: 175, size: 448, elements: !3891)
!3891 = !{!3892, !3893, !3894, !3895, !3968, !4047, !4048, !4049}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3890, file: !115, line: 176, baseType: !247, size: 32)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3890, file: !115, line: 177, baseType: !7, size: 32, offset: 32)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq", scope: !3890, file: !115, line: 178, baseType: !167, size: 64, offset: 64)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !3890, file: !115, line: 179, baseType: !3896, size: 64, offset: 128)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_common_data", file: !115, line: 145, size: 256, elements: !3898)
!3898 = !{!3899, !3900, !3901, !3965}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "state_use_accessors", scope: !3897, file: !115, line: 146, baseType: !7, size: 32)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "handler_data", scope: !3897, file: !115, line: 150, baseType: !147, size: 64, offset: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "msi_desc", scope: !3897, file: !115, line: 151, baseType: !3902, size: 64, offset: 128)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_desc", file: !3904, line: 85, size: 768, elements: !3905)
!3904 = !DIFile(filename: "./include/linux/msi.h", directory: "/home/lizy2001/genbc/linux")
!3905 = !{!3906, !3907, !3908, !3909, !3910, !3916, !3922, !3926, !3927}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3903, file: !3904, line: 87, baseType: !155, size: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3903, file: !3904, line: 88, baseType: !7, size: 32, offset: 128)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "nvec_used", scope: !3903, file: !3904, line: 89, baseType: !7, size: 32, offset: 160)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3903, file: !3904, line: 90, baseType: !3143, size: 64, offset: 192)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !3903, file: !3904, line: 91, baseType: !3911, size: 96, offset: 256)
!3911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "msi_msg", file: !3904, line: 8, size: 96, elements: !3912)
!3912 = !{!3913, !3914, !3915}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "address_lo", scope: !3911, file: !3904, line: 9, baseType: !247, size: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "address_hi", scope: !3911, file: !3904, line: 10, baseType: !247, size: 32, offset: 32)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3911, file: !3904, line: 11, baseType: !247, size: 32, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3903, file: !3904, line: 92, baseType: !3917, size: 64, offset: 384)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_affinity_desc", file: !108, line: 308, size: 128, elements: !3919)
!3919 = !{!3920, !3921}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !3918, file: !108, line: 309, baseType: !986, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !3918, file: !108, line: 310, baseType: !7, size: 1, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg", scope: !3903, file: !3904, line: 97, baseType: !3923, size: 64, offset: 448)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{null, !3902, !147}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "write_msi_msg_data", scope: !3903, file: !3904, line: 98, baseType: !147, size: 64, offset: 512)
!3927 = !DIDerivedType(tag: DW_TAG_member, scope: !3903, file: !3904, line: 100, baseType: !3928, size: 192, offset: 576)
!3928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3903, file: !3904, line: 100, size: 192, elements: !3929)
!3929 = !{!3930, !3950, !3957, !3961}
!3930 = !DIDerivedType(tag: DW_TAG_member, scope: !3928, file: !3904, line: 102, baseType: !3931, size: 192)
!3931 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3928, file: !3904, line: 102, size: 192, elements: !3932)
!3932 = !{!3933, !3934, !3945}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "masked", scope: !3931, file: !3904, line: 103, baseType: !247, size: 32)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "msi_attrib", scope: !3931, file: !3904, line: 113, baseType: !3935, size: 64, offset: 32)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3931, file: !3904, line: 104, size: 64, elements: !3936)
!3936 = !{!3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "is_msix", scope: !3935, file: !3904, line: 105, baseType: !971, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "multiple", scope: !3935, file: !3904, line: 106, baseType: !971, size: 3, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "multi_cap", scope: !3935, file: !3904, line: 107, baseType: !971, size: 3, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "maskbit", scope: !3935, file: !3904, line: 108, baseType: !971, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "is_64", scope: !3935, file: !3904, line: 109, baseType: !971, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtual", scope: !3935, file: !3904, line: 110, baseType: !971, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "entry_nr", scope: !3935, file: !3904, line: 111, baseType: !1174, size: 16, offset: 16)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "default_irq", scope: !3935, file: !3904, line: 112, baseType: !7, size: 32, offset: 32)
!3945 = !DIDerivedType(tag: DW_TAG_member, scope: !3931, file: !3904, line: 114, baseType: !3946, size: 64, offset: 128)
!3946 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3931, file: !3904, line: 114, size: 64, elements: !3947)
!3947 = !{!3948, !3949}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "mask_pos", scope: !3946, file: !3904, line: 115, baseType: !971, size: 8)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "mask_base", scope: !3946, file: !3904, line: 116, baseType: !147, size: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "platform", scope: !3928, file: !3904, line: 127, baseType: !3951, size: 128)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_desc", file: !3904, line: 37, size: 128, elements: !3952)
!3952 = !{!3953, !3956}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "msi_priv_data", scope: !3951, file: !3904, line: 38, baseType: !3954, size: 64)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DICompositeType(tag: DW_TAG_structure_type, name: "platform_msi_priv_data", file: !3904, line: 19, flags: DIFlagFwdDecl)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !3951, file: !3904, line: 39, baseType: !1174, size: 16, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "fsl_mc", scope: !3928, file: !3904, line: 128, baseType: !3958, size: 16)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fsl_mc_msi_desc", file: !3904, line: 46, size: 16, elements: !3959)
!3959 = !{!3960}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "msi_index", scope: !3958, file: !3904, line: 47, baseType: !1174, size: 16)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "inta", scope: !3928, file: !3904, line: 129, baseType: !3962, size: 16)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ti_sci_inta_msi_desc", file: !3904, line: 54, size: 16, elements: !3963)
!3963 = !{!3964}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "dev_index", scope: !3962, file: !3904, line: 55, baseType: !1174, size: 16)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "affinity", scope: !3897, file: !115, line: 152, baseType: !3966, size: 64, offset: 192)
!3966 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !985, line: 756, baseType: !3967)
!3967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !986, size: 64, elements: !990)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !3890, file: !115, line: 180, baseType: !3969, size: 64, offset: 192)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip", file: !115, line: 503, size: 2304, elements: !3971)
!3971 = !{!3972, !3973, !3974, !3978, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3995, !3999, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4016, !4017, !4018, !4023, !4024, !4028, !4032, !4036, !4040, !4044, !4045, !4046}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "parent_device", scope: !3970, file: !115, line: 504, baseType: !3143, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3970, file: !115, line: 505, baseType: !313, size: 64, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "irq_startup", scope: !3970, file: !115, line: 506, baseType: !3975, size: 64, offset: 128)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!7, !3889}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "irq_shutdown", scope: !3970, file: !115, line: 507, baseType: !3979, size: 64, offset: 192)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{null, !3889}
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "irq_enable", scope: !3970, file: !115, line: 508, baseType: !3979, size: 64, offset: 256)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "irq_disable", scope: !3970, file: !115, line: 509, baseType: !3979, size: 64, offset: 320)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "irq_ack", scope: !3970, file: !115, line: 511, baseType: !3979, size: 64, offset: 384)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask", scope: !3970, file: !115, line: 512, baseType: !3979, size: 64, offset: 448)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "irq_mask_ack", scope: !3970, file: !115, line: 513, baseType: !3979, size: 64, offset: 512)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "irq_unmask", scope: !3970, file: !115, line: 514, baseType: !3979, size: 64, offset: 576)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "irq_eoi", scope: !3970, file: !115, line: 515, baseType: !3979, size: 64, offset: 640)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_affinity", scope: !3970, file: !115, line: 517, baseType: !3990, size: 64, offset: 704)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!150, !3889, !3993, !358}
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !986)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "irq_retrigger", scope: !3970, file: !115, line: 518, baseType: !3996, size: 64, offset: 768)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!150, !3889}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_type", scope: !3970, file: !115, line: 519, baseType: !4000, size: 64, offset: 832)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = !DISubroutineType(types: !4002)
!4002 = !{!150, !3889, !7}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_wake", scope: !3970, file: !115, line: 520, baseType: !4000, size: 64, offset: 896)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_lock", scope: !3970, file: !115, line: 522, baseType: !3979, size: 64, offset: 960)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "irq_bus_sync_unlock", scope: !3970, file: !115, line: 523, baseType: !3979, size: 64, offset: 1024)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_online", scope: !3970, file: !115, line: 525, baseType: !3979, size: 64, offset: 1088)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cpu_offline", scope: !3970, file: !115, line: 526, baseType: !3979, size: 64, offset: 1152)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "irq_suspend", scope: !3970, file: !115, line: 528, baseType: !3979, size: 64, offset: 1216)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "irq_resume", scope: !3970, file: !115, line: 529, baseType: !3979, size: 64, offset: 1280)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "irq_pm_shutdown", scope: !3970, file: !115, line: 530, baseType: !3979, size: 64, offset: 1344)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "irq_calc_mask", scope: !3970, file: !115, line: 532, baseType: !3979, size: 64, offset: 1408)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "irq_print_chip", scope: !3970, file: !115, line: 534, baseType: !4013, size: 64, offset: 1472)
!4013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4014, size: 64)
!4014 = !DISubroutineType(types: !4015)
!4015 = !{null, !3889, !489}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "irq_request_resources", scope: !3970, file: !115, line: 535, baseType: !3996, size: 64, offset: 1536)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "irq_release_resources", scope: !3970, file: !115, line: 536, baseType: !3979, size: 64, offset: 1600)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "irq_compose_msi_msg", scope: !3970, file: !115, line: 538, baseType: !4019, size: 64, offset: 1664)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{null, !3889, !4022}
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "irq_write_msi_msg", scope: !3970, file: !115, line: 539, baseType: !4019, size: 64, offset: 1728)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get_irqchip_state", scope: !3970, file: !115, line: 541, baseType: !4025, size: 64, offset: 1792)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{!150, !3889, !107, !2869}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_irqchip_state", scope: !3970, file: !115, line: 542, baseType: !4029, size: 64, offset: 1856)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DISubroutineType(types: !4031)
!4031 = !{!150, !3889, !107, !358}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "irq_set_vcpu_affinity", scope: !3970, file: !115, line: 544, baseType: !4033, size: 64, offset: 1920)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!150, !3889, !147}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_single", scope: !3970, file: !115, line: 546, baseType: !4037, size: 64, offset: 1984)
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4038, size: 64)
!4038 = !DISubroutineType(types: !4039)
!4039 = !{null, !3889, !7}
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_send_mask", scope: !3970, file: !115, line: 547, baseType: !4041, size: 64, offset: 2048)
!4041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4042, size: 64)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{null, !3889, !3993}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_setup", scope: !3970, file: !115, line: 549, baseType: !3996, size: 64, offset: 2112)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "irq_nmi_teardown", scope: !3970, file: !115, line: 550, baseType: !3979, size: 64, offset: 2176)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3970, file: !115, line: 552, baseType: !167, size: 64, offset: 2240)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !3890, file: !115, line: 181, baseType: !3722, size: 64, offset: 256)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !3890, file: !115, line: 183, baseType: !3889, size: 64, offset: 320)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "chip_data", scope: !3890, file: !115, line: 185, baseType: !147, size: 64, offset: 384)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3730, file: !94, line: 122, baseType: !4051, size: 64, offset: 512)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DISubroutineType(types: !4053)
!4053 = !{null, !3722, !3889}
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3730, file: !94, line: 123, baseType: !4055, size: 64, offset: 576)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{!150, !3722, !3854, !3876, !816}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3723, file: !94, line: 166, baseType: !147, size: 64, offset: 256)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3723, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3723, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3723, file: !94, line: 171, baseType: !3749, size: 64, offset: 384)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3723, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3723, file: !94, line: 173, baseType: !4064, size: 64, offset: 512)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !115, line: 1101, size: 192, elements: !4066)
!4066 = !{!4067, !4068, !4069, !4070, !4071, !4072}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_per_chip", scope: !4065, file: !115, line: 1102, baseType: !7, size: 32)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "num_chips", scope: !4065, file: !115, line: 1103, baseType: !7, size: 32, offset: 32)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_clear", scope: !4065, file: !115, line: 1104, baseType: !7, size: 32, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "irq_flags_to_set", scope: !4065, file: !115, line: 1105, baseType: !7, size: 32, offset: 96)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "gc_flags", scope: !4065, file: !115, line: 1106, baseType: !114, size: 32, offset: 128)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !4065, file: !115, line: 1107, baseType: !4073, offset: 192)
!4073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4074, elements: !1791)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_generic", file: !115, line: 1051, size: 960, elements: !4076)
!4076 = !{!4077, !4078, !4079, !4083, !4087, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103, !4104, !4105}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4075, file: !115, line: 1052, baseType: !716)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "reg_base", scope: !4075, file: !115, line: 1053, baseType: !147, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "reg_readl", scope: !4075, file: !115, line: 1054, baseType: !4080, size: 64, offset: 64)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!247, !147}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "reg_writel", scope: !4075, file: !115, line: 1055, baseType: !4084, size: 64, offset: 128)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{null, !247, !147}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4075, file: !115, line: 1056, baseType: !4088, size: 64, offset: 192)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DISubroutineType(types: !4090)
!4090 = !{null, !4074}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4075, file: !115, line: 1057, baseType: !4088, size: 64, offset: 256)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "irq_base", scope: !4075, file: !115, line: 1058, baseType: !7, size: 32, offset: 320)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "irq_cnt", scope: !4075, file: !115, line: 1059, baseType: !7, size: 32, offset: 352)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4075, file: !115, line: 1060, baseType: !247, size: 32, offset: 384)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "type_cache", scope: !4075, file: !115, line: 1061, baseType: !247, size: 32, offset: 416)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "polarity_cache", scope: !4075, file: !115, line: 1062, baseType: !247, size: 32, offset: 448)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "wake_enabled", scope: !4075, file: !115, line: 1063, baseType: !247, size: 32, offset: 480)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "wake_active", scope: !4075, file: !115, line: 1064, baseType: !247, size: 32, offset: 512)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "num_ct", scope: !4075, file: !115, line: 1065, baseType: !7, size: 32, offset: 544)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4075, file: !115, line: 1066, baseType: !147, size: 64, offset: 576)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "installed", scope: !4075, file: !115, line: 1067, baseType: !167, size: 64, offset: 640)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !4075, file: !115, line: 1068, baseType: !167, size: 64, offset: 704)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4075, file: !115, line: 1069, baseType: !3722, size: 64, offset: 768)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4075, file: !115, line: 1070, baseType: !155, size: 128, offset: 832)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "chip_types", scope: !4075, file: !115, line: 1071, baseType: !4106, offset: 960)
!4106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4107, elements: !1791)
!4107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_type", file: !115, line: 1009, size: 2944, elements: !4108)
!4108 = !{!4109, !4110, !4120, !4186, !4187, !4188}
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "chip", scope: !4107, file: !115, line: 1010, baseType: !3970, size: 2304)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4107, file: !115, line: 1011, baseType: !4111, size: 448, offset: 2304)
!4111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_chip_regs", file: !115, line: 986, size: 448, elements: !4112)
!4112 = !{!4113, !4114, !4115, !4116, !4117, !4118, !4119}
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !4111, file: !115, line: 987, baseType: !167, size: 64)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !4111, file: !115, line: 988, baseType: !167, size: 64, offset: 64)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !4111, file: !115, line: 989, baseType: !167, size: 64, offset: 128)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "ack", scope: !4111, file: !115, line: 990, baseType: !167, size: 64, offset: 192)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !4111, file: !115, line: 991, baseType: !167, size: 64, offset: 256)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4111, file: !115, line: 992, baseType: !167, size: 64, offset: 320)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !4111, file: !115, line: 993, baseType: !167, size: 64, offset: 384)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4107, file: !115, line: 1012, baseType: !4121, size: 64, offset: 2752)
!4121 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_flow_handler_t", file: !4122, line: 12, baseType: !4123)
!4122 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!4123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4124, size: 64)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{null, !4126}
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_desc", file: !4128, line: 55, size: 2880, elements: !4129)
!4128 = !DIFile(filename: "./include/linux/irqdesc.h", directory: "/home/lizy2001/genbc/linux")
!4129 = !{!4130, !4131, !4132, !4133, !4134, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4182, !4183, !4184, !4185}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "irq_common_data", scope: !4127, file: !4128, line: 56, baseType: !3897, size: 256)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !4127, file: !4128, line: 57, baseType: !3890, size: 448, offset: 256)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "kstat_irqs", scope: !4127, file: !4128, line: 58, baseType: !816, size: 64, offset: 704)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !4127, file: !4128, line: 59, baseType: !4121, size: 64, offset: 768)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4127, file: !4128, line: 60, baseType: !4135, size: 64, offset: 832)
!4135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4136, size: 64)
!4136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irqaction", file: !108, line: 110, size: 768, elements: !4137)
!4137 = !{!4138, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155}
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4136, file: !108, line: 111, baseType: !4139, size: 64)
!4139 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !108, line: 92, baseType: !4140)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DISubroutineType(types: !4142)
!4142 = !{!4143, !150, !147}
!4143 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !123, line: 17, baseType: !122)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !4136, file: !108, line: 112, baseType: !147, size: 64, offset: 64)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_dev_id", scope: !4136, file: !108, line: 113, baseType: !147, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4136, file: !108, line: 114, baseType: !4135, size: 64, offset: 192)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "thread_fn", scope: !4136, file: !108, line: 115, baseType: !4139, size: 64, offset: 256)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !4136, file: !108, line: 116, baseType: !822, size: 64, offset: 320)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4136, file: !108, line: 117, baseType: !4135, size: 64, offset: 384)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4136, file: !108, line: 118, baseType: !7, size: 32, offset: 448)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4136, file: !108, line: 119, baseType: !7, size: 32, offset: 480)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "thread_flags", scope: !4136, file: !108, line: 120, baseType: !167, size: 64, offset: 512)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "thread_mask", scope: !4136, file: !108, line: 121, baseType: !167, size: 64, offset: 576)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4136, file: !108, line: 122, baseType: !313, size: 64, offset: 640)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4136, file: !108, line: 123, baseType: !4156, size: 64, offset: 704)
!4156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4157, size: 64)
!4157 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !108, line: 123, flags: DIFlagFwdDecl)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "status_use_accessors", scope: !4127, file: !4128, line: 61, baseType: !7, size: 32, offset: 896)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "core_internal_state__do_not_mess_with_it", scope: !4127, file: !4128, line: 62, baseType: !7, size: 32, offset: 928)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4127, file: !4128, line: 63, baseType: !7, size: 32, offset: 960)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "wake_depth", scope: !4127, file: !4128, line: 64, baseType: !7, size: 32, offset: 992)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "tot_count", scope: !4127, file: !4128, line: 65, baseType: !7, size: 32, offset: 1024)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4127, file: !4128, line: 66, baseType: !7, size: 32, offset: 1056)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "last_unhandled", scope: !4127, file: !4128, line: 67, baseType: !167, size: 64, offset: 1088)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "irqs_unhandled", scope: !4127, file: !4128, line: 68, baseType: !7, size: 32, offset: 1152)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled", scope: !4127, file: !4128, line: 69, baseType: !549, size: 32, offset: 1184)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "threads_handled_last", scope: !4127, file: !4128, line: 70, baseType: !150, size: 32, offset: 1216)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4127, file: !4128, line: 71, baseType: !716, offset: 1248)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_enabled", scope: !4127, file: !4128, line: 72, baseType: !4170, size: 64, offset: 1280)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_affinity", scope: !4127, file: !4128, line: 73, baseType: !3993, size: 64, offset: 1344)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "threads_oneshot", scope: !4127, file: !4128, line: 81, baseType: !167, size: 64, offset: 1408)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "threads_active", scope: !4127, file: !4128, line: 82, baseType: !549, size: 32, offset: 1472)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "wait_for_threads", scope: !4127, file: !4128, line: 83, baseType: !788, size: 128, offset: 1536)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_actions", scope: !4127, file: !4128, line: 85, baseType: !7, size: 32, offset: 1664)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "no_suspend_depth", scope: !4127, file: !4128, line: 86, baseType: !7, size: 32, offset: 1696)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "cond_suspend_depth", scope: !4127, file: !4128, line: 87, baseType: !7, size: 32, offset: 1728)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "force_resume_depth", scope: !4127, file: !4128, line: 88, baseType: !7, size: 32, offset: 1760)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4127, file: !4128, line: 91, baseType: !4156, size: 64, offset: 1792)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4127, file: !4128, line: 98, baseType: !807, size: 128, align: 64, offset: 1856)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4127, file: !4128, line: 99, baseType: !3147, size: 512, offset: 1984)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "request_mutex", scope: !4127, file: !4128, line: 101, baseType: !533, size: 192, offset: 2496)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "parent_irq", scope: !4127, file: !4128, line: 102, baseType: !150, size: 32, offset: 2688)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4127, file: !4128, line: 103, baseType: !406, size: 64, offset: 2752)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4127, file: !4128, line: 104, baseType: !313, size: 64, offset: 2816)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4107, file: !115, line: 1013, baseType: !247, size: 32, offset: 2816)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache_priv", scope: !4107, file: !115, line: 1014, baseType: !247, size: 32, offset: 2848)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "mask_cache", scope: !4107, file: !115, line: 1015, baseType: !1830, size: 64, offset: 2880)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3723, file: !94, line: 175, baseType: !3722, size: 64, offset: 576)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3723, file: !94, line: 182, baseType: !3865, size: 64, offset: 640)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3723, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3723, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3723, file: !94, line: 185, baseType: !2133, size: 128, offset: 768)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3723, file: !94, line: 186, baseType: !533, size: 192, offset: 896)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3723, file: !94, line: 187, baseType: !4196, offset: 1088)
!4196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1791)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3144, file: !73, line: 499, baseType: !155, size: 128, offset: 4224)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3144, file: !73, line: 502, baseType: !4199, size: 64, offset: 4352)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4201)
!4201 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3144, file: !73, line: 504, baseType: !4203, size: 64, offset: 4416)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3144, file: !73, line: 505, baseType: !253, size: 64, offset: 4480)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3144, file: !73, line: 510, baseType: !253, size: 64, offset: 4544)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3144, file: !73, line: 511, baseType: !4207, size: 64, offset: 4608)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4209)
!4209 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3144, file: !73, line: 513, baseType: !4211, size: 64, offset: 4672)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !4213)
!4213 = !{!4214, !4215}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4212, file: !73, line: 293, baseType: !7, size: 32)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4212, file: !73, line: 294, baseType: !167, size: 64, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3144, file: !73, line: 515, baseType: !155, size: 128, offset: 4736)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3144, file: !73, line: 526, baseType: !4218, offset: 4864)
!4218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4219, line: 5, elements: !290)
!4219 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3144, file: !73, line: 528, baseType: !3736, size: 64, offset: 4864)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3144, file: !73, line: 529, baseType: !3749, size: 64, offset: 4928)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3144, file: !73, line: 534, baseType: !372, size: 32, offset: 4992)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3144, file: !73, line: 535, baseType: !247, size: 32, offset: 5024)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3144, file: !73, line: 537, baseType: !276, offset: 5056)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3144, file: !73, line: 538, baseType: !155, size: 128, offset: 5056)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3144, file: !73, line: 540, baseType: !4227, size: 64, offset: 5184)
!4227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4228, size: 64)
!4228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4229, line: 54, size: 960, elements: !4230)
!4229 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!4230 = !{!4231, !4232, !4233, !4234, !4235, !4236, !4237, !4241, !4245, !4246, !4247, !4248, !4252, !4256, !4257}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4228, file: !4229, line: 55, baseType: !313, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4228, file: !4229, line: 56, baseType: !406, size: 64, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4228, file: !4229, line: 58, baseType: !3224, size: 64, offset: 128)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4228, file: !4229, line: 59, baseType: !3224, size: 64, offset: 192)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !4228, file: !4229, line: 60, baseType: !3153, size: 64, offset: 256)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4228, file: !4229, line: 62, baseType: !3456, size: 64, offset: 320)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4228, file: !4229, line: 63, baseType: !4238, size: 64, offset: 384)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!339, !3143, !3463}
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4228, file: !4229, line: 65, baseType: !4242, size: 64, offset: 448)
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DISubroutineType(types: !4244)
!4244 = !{null, !4227}
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4228, file: !4229, line: 66, baseType: !3465, size: 64, offset: 512)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4228, file: !4229, line: 68, baseType: !3474, size: 64, offset: 576)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4228, file: !4229, line: 70, baseType: !3260, size: 64, offset: 640)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4228, file: !4229, line: 71, baseType: !4249, size: 64, offset: 704)
!4249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4250, size: 64)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!2320, !3143}
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4228, file: !4229, line: 73, baseType: !4253, size: 64, offset: 768)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{null, !3143, !3292, !3293}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4228, file: !4229, line: 75, baseType: !3469, size: 64, offset: 832)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4228, file: !4229, line: 77, baseType: !3586, size: 64, offset: 896)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3144, file: !73, line: 541, baseType: !3224, size: 64, offset: 5248)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3144, file: !73, line: 543, baseType: !3465, size: 64, offset: 5312)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3144, file: !73, line: 544, baseType: !4261, size: 64, offset: 5376)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3144, file: !73, line: 545, baseType: !4264, size: 64, offset: 5440)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3144, file: !73, line: 547, baseType: !358, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3144, file: !73, line: 548, baseType: !358, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3144, file: !73, line: 549, baseType: !358, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3144, file: !73, line: 550, baseType: !358, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "this_device", scope: !3135, file: !3136, line: 85, baseType: !3143, size: 64, offset: 384)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3135, file: !3136, line: 86, baseType: !3224, size: 64, offset: 448)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !3135, file: !3136, line: 87, baseType: !313, size: 64, offset: 512)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3135, file: !3136, line: 88, baseType: !184, size: 16, offset: 576)
!4274 = !DIGlobalVariableExpression(var: !4275, expr: !DIExpression())
!4275 = distinct !DIGlobalVariable(name: "gntalloc_fops", scope: !2, file: !3, line: 563, type: !1135, isLocal: true, isDefinition: true)
!4276 = !DIGlobalVariableExpression(var: !4277, expr: !DIExpression())
!4277 = distinct !DIGlobalVariable(name: "gref_mutex", scope: !2, file: !3, line: 79, type: !533, isLocal: true, isDefinition: true)
!4278 = !DIGlobalVariableExpression(var: !4279, expr: !DIExpression())
!4279 = distinct !DIGlobalVariable(name: "gref_list", scope: !2, file: !3, line: 78, type: !155, isLocal: true, isDefinition: true)
!4280 = !DIGlobalVariableExpression(var: !4281, expr: !DIExpression())
!4281 = distinct !DIGlobalVariable(name: "gref_size", scope: !2, file: !3, line: 80, type: !150, isLocal: true, isDefinition: true)
!4282 = !DIGlobalVariableExpression(var: !4283, expr: !DIExpression())
!4283 = distinct !DIGlobalVariable(name: "gntalloc_vmops", scope: !2, file: !3, line: 500, type: !1033, isLocal: true, isDefinition: true)
!4284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 152, elements: !4285)
!4285 = !{!4286}
!4286 = !DISubrange(count: 19)
!4287 = !{!"rsp"}
!4288 = !{i32 7, !"Dwarf Version", i32 4}
!4289 = !{i32 2, !"Debug Info Version", i32 3}
!4290 = !{i32 1, !"wchar_size", i32 2}
!4291 = !{i32 1, !"Code Model", i32 2}
!4292 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4293 = distinct !DISubprogram(name: "gntalloc_exit", scope: !3, file: !3, line: 601, type: !2075, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4294 = !DILocation(line: 603, column: 2, scope: !4293)
!4295 = !DILocation(line: 604, column: 1, scope: !4293)
!4296 = distinct !DISubprogram(name: "gntalloc_init", scope: !3, file: !3, line: 582, type: !4297, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!150}
!4299 = !DILocalVariable(name: "err", scope: !4296, file: !3, line: 584, type: !150)
!4300 = !DILocation(line: 584, column: 6, scope: !4296)
!4301 = !DILocation(line: 586, column: 7, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 586, column: 6)
!4303 = !DILocation(line: 586, column: 6, scope: !4296)
!4304 = !DILocation(line: 587, column: 3, scope: !4302)
!4305 = !DILocation(line: 589, column: 8, scope: !4296)
!4306 = !DILocation(line: 589, column: 6, scope: !4296)
!4307 = !DILocation(line: 590, column: 6, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 590, column: 6)
!4309 = !DILocation(line: 590, column: 10, scope: !4308)
!4310 = !DILocation(line: 590, column: 6, scope: !4296)
!4311 = !DILocation(line: 591, column: 3, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 590, column: 16)
!4313 = !DILocation(line: 592, column: 10, scope: !4312)
!4314 = !DILocation(line: 592, column: 3, scope: !4312)
!4315 = !DILocation(line: 595, column: 2, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4317, file: !3, line: 595, column: 2)
!4317 = distinct !DILexicalBlock(scope: !4296, file: !3, line: 595, column: 2)
!4318 = !DILocation(line: 595, column: 2, scope: !4317)
!4319 = !DILocation(line: 598, column: 2, scope: !4296)
!4320 = !DILocation(line: 599, column: 1, scope: !4296)
!4321 = distinct !DISubprogram(name: "gntalloc_ioctl", scope: !3, file: !3, line: 440, type: !1215, scopeLine: 442, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4322 = !DILocalVariable(name: "filp", arg: 1, scope: !4321, file: !3, line: 440, type: !1118)
!4323 = !DILocation(line: 440, column: 41, scope: !4321)
!4324 = !DILocalVariable(name: "cmd", arg: 2, scope: !4321, file: !3, line: 440, type: !7)
!4325 = !DILocation(line: 440, column: 60, scope: !4321)
!4326 = !DILocalVariable(name: "arg", arg: 3, scope: !4321, file: !3, line: 441, type: !167)
!4327 = !DILocation(line: 441, column: 17, scope: !4321)
!4328 = !DILocalVariable(name: "priv", scope: !4321, file: !3, line: 443, type: !4329)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gntalloc_file_private_data", file: !3, line: 99, size: 192, elements: !4331)
!4331 = !{!4332, !4333}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4330, file: !3, line: 100, baseType: !155, size: 128)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4330, file: !3, line: 101, baseType: !3027, size: 64, offset: 128)
!4334 = !DILocation(line: 443, column: 37, scope: !4321)
!4335 = !DILocation(line: 443, column: 44, scope: !4321)
!4336 = !DILocation(line: 443, column: 50, scope: !4321)
!4337 = !DILocation(line: 445, column: 10, scope: !4321)
!4338 = !DILocation(line: 445, column: 2, scope: !4321)
!4339 = !DILocation(line: 447, column: 31, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4321, file: !3, line: 445, column: 15)
!4341 = !DILocation(line: 447, column: 52, scope: !4340)
!4342 = !DILocation(line: 447, column: 37, scope: !4340)
!4343 = !DILocation(line: 447, column: 10, scope: !4340)
!4344 = !DILocation(line: 447, column: 3, scope: !4340)
!4345 = !DILocation(line: 450, column: 33, scope: !4340)
!4346 = !DILocation(line: 450, column: 54, scope: !4340)
!4347 = !DILocation(line: 450, column: 39, scope: !4340)
!4348 = !DILocation(line: 450, column: 10, scope: !4340)
!4349 = !DILocation(line: 450, column: 3, scope: !4340)
!4350 = !DILocation(line: 453, column: 38, scope: !4340)
!4351 = !DILocation(line: 453, column: 59, scope: !4340)
!4352 = !DILocation(line: 453, column: 44, scope: !4340)
!4353 = !DILocation(line: 453, column: 10, scope: !4340)
!4354 = !DILocation(line: 453, column: 3, scope: !4340)
!4355 = !DILocation(line: 456, column: 3, scope: !4340)
!4356 = !DILocation(line: 460, column: 1, scope: !4321)
!4357 = distinct !DISubprogram(name: "gntalloc_mmap", scope: !3, file: !3, line: 505, type: !1220, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4358 = !DILocalVariable(name: "s", arg: 1, scope: !4359, file: !134, line: 445, type: !2152)
!4359 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !134, file: !134, line: 445, type: !4360, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4360 = !DISubroutineType(types: !4361)
!4361 = !{!147, !2152, !148, !1150}
!4362 = !DILocation(line: 445, column: 72, scope: !4359, inlinedAt: !4363)
!4363 = distinct !DILocation(line: 552, column: 10, scope: !4364, inlinedAt: !4369)
!4364 = distinct !DILexicalBlock(scope: !4365, file: !134, line: 540, column: 34)
!4365 = distinct !DILexicalBlock(scope: !4366, file: !134, line: 540, column: 6)
!4366 = distinct !DISubprogram(name: "kmalloc", scope: !134, file: !134, line: 538, type: !4367, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4367 = !DISubroutineType(types: !4368)
!4368 = !{!147, !1150, !148}
!4369 = distinct !DILocation(line: 518, column: 12, scope: !4357)
!4370 = !DILocalVariable(name: "flags", arg: 2, scope: !4359, file: !134, line: 446, type: !148)
!4371 = !DILocation(line: 446, column: 9, scope: !4359, inlinedAt: !4363)
!4372 = !DILocalVariable(name: "size", arg: 3, scope: !4359, file: !134, line: 446, type: !1150)
!4373 = !DILocation(line: 446, column: 23, scope: !4359, inlinedAt: !4363)
!4374 = !DILocalVariable(name: "ret", scope: !4359, file: !134, line: 448, type: !147)
!4375 = !DILocation(line: 448, column: 8, scope: !4359, inlinedAt: !4363)
!4376 = !DILocalVariable(name: "flags", arg: 1, scope: !4377, file: !134, line: 318, type: !148)
!4377 = distinct !DISubprogram(name: "kmalloc_type", scope: !134, file: !134, line: 318, type: !4378, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!133, !148}
!4380 = !DILocation(line: 318, column: 67, scope: !4377, inlinedAt: !4381)
!4381 = distinct !DILocation(line: 553, column: 20, scope: !4364, inlinedAt: !4369)
!4382 = !DILocalVariable(name: "size", arg: 1, scope: !4383, file: !134, line: 346, type: !1150)
!4383 = distinct !DISubprogram(name: "kmalloc_index", scope: !134, file: !134, line: 346, type: !4384, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!7, !1150}
!4386 = !DILocation(line: 346, column: 58, scope: !4383, inlinedAt: !4387)
!4387 = distinct !DILocation(line: 547, column: 11, scope: !4364, inlinedAt: !4369)
!4388 = !DILocalVariable(name: "size", arg: 1, scope: !4389, file: !134, line: 472, type: !1150)
!4389 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !134, file: !134, line: 472, type: !4390, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!147, !1150, !148, !7}
!4392 = !DILocation(line: 472, column: 28, scope: !4389, inlinedAt: !4393)
!4393 = distinct !DILocation(line: 481, column: 9, scope: !4394, inlinedAt: !4395)
!4394 = distinct !DISubprogram(name: "kmalloc_large", scope: !134, file: !134, line: 478, type: !4367, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4395 = distinct !DILocation(line: 545, column: 11, scope: !4396, inlinedAt: !4369)
!4396 = distinct !DILexicalBlock(scope: !4364, file: !134, line: 544, column: 7)
!4397 = !DILocalVariable(name: "flags", arg: 2, scope: !4389, file: !134, line: 472, type: !148)
!4398 = !DILocation(line: 472, column: 40, scope: !4389, inlinedAt: !4393)
!4399 = !DILocalVariable(name: "order", arg: 3, scope: !4389, file: !134, line: 472, type: !7)
!4400 = !DILocation(line: 472, column: 60, scope: !4389, inlinedAt: !4393)
!4401 = !DILocalVariable(name: "size", arg: 1, scope: !4394, file: !134, line: 478, type: !1150)
!4402 = !DILocation(line: 478, column: 51, scope: !4394, inlinedAt: !4395)
!4403 = !DILocalVariable(name: "flags", arg: 2, scope: !4394, file: !134, line: 478, type: !148)
!4404 = !DILocation(line: 478, column: 63, scope: !4394, inlinedAt: !4395)
!4405 = !DILocalVariable(name: "order", scope: !4394, file: !134, line: 480, type: !7)
!4406 = !DILocation(line: 480, column: 15, scope: !4394, inlinedAt: !4395)
!4407 = !DILocalVariable(name: "size", arg: 1, scope: !4366, file: !134, line: 538, type: !1150)
!4408 = !DILocation(line: 538, column: 45, scope: !4366, inlinedAt: !4369)
!4409 = !DILocalVariable(name: "flags", arg: 2, scope: !4366, file: !134, line: 538, type: !148)
!4410 = !DILocation(line: 538, column: 57, scope: !4366, inlinedAt: !4369)
!4411 = !DILocalVariable(name: "index", scope: !4364, file: !134, line: 542, type: !7)
!4412 = !DILocation(line: 542, column: 16, scope: !4364, inlinedAt: !4369)
!4413 = !DILocalVariable(name: "filp", arg: 1, scope: !4357, file: !3, line: 505, type: !1118)
!4414 = !DILocation(line: 505, column: 39, scope: !4357)
!4415 = !DILocalVariable(name: "vma", arg: 2, scope: !4357, file: !3, line: 505, type: !1004)
!4416 = !DILocation(line: 505, column: 68, scope: !4357)
!4417 = !DILocalVariable(name: "priv", scope: !4357, file: !3, line: 507, type: !4329)
!4418 = !DILocation(line: 507, column: 37, scope: !4357)
!4419 = !DILocation(line: 507, column: 44, scope: !4357)
!4420 = !DILocation(line: 507, column: 50, scope: !4357)
!4421 = !DILocalVariable(name: "vm_priv", scope: !4357, file: !3, line: 508, type: !4422)
!4422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4423, size: 64)
!4423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gntalloc_vma_private_data", file: !3, line: 104, size: 128, elements: !4424)
!4424 = !{!4425, !4426, !4427}
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "gref", scope: !4423, file: !3, line: 105, baseType: !151, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !4423, file: !3, line: 106, baseType: !150, size: 32, offset: 64)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4423, file: !3, line: 107, baseType: !150, size: 32, offset: 96)
!4428 = !DILocation(line: 508, column: 36, scope: !4357)
!4429 = !DILocalVariable(name: "gref", scope: !4357, file: !3, line: 509, type: !151)
!4430 = !DILocation(line: 509, column: 24, scope: !4357)
!4431 = !DILocalVariable(name: "count", scope: !4357, file: !3, line: 510, type: !150)
!4432 = !DILocation(line: 510, column: 6, scope: !4357)
!4433 = !DILocation(line: 510, column: 24, scope: !4357)
!4434 = !DILocation(line: 510, column: 14, scope: !4357)
!4435 = !DILocalVariable(name: "rv", scope: !4357, file: !3, line: 511, type: !150)
!4436 = !DILocation(line: 511, column: 6, scope: !4357)
!4437 = !DILocalVariable(name: "i", scope: !4357, file: !3, line: 511, type: !150)
!4438 = !DILocation(line: 511, column: 10, scope: !4357)
!4439 = !DILocation(line: 513, column: 8, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 513, column: 6)
!4441 = !DILocation(line: 513, column: 13, scope: !4440)
!4442 = !DILocation(line: 513, column: 22, scope: !4440)
!4443 = !DILocation(line: 513, column: 6, scope: !4357)
!4444 = !DILocation(line: 514, column: 3, scope: !4445)
!4445 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 513, column: 36)
!4446 = !DILocation(line: 515, column: 3, scope: !4445)
!4447 = !DILocation(line: 540, column: 27, scope: !4365, inlinedAt: !4369)
!4448 = !DILocation(line: 540, column: 6, scope: !4365, inlinedAt: !4369)
!4449 = !DILocation(line: 540, column: 6, scope: !4366, inlinedAt: !4369)
!4450 = !DILocation(line: 544, column: 7, scope: !4396, inlinedAt: !4369)
!4451 = !DILocation(line: 544, column: 12, scope: !4396, inlinedAt: !4369)
!4452 = !DILocation(line: 544, column: 7, scope: !4364, inlinedAt: !4369)
!4453 = !DILocation(line: 545, column: 25, scope: !4396, inlinedAt: !4369)
!4454 = !DILocation(line: 545, column: 31, scope: !4396, inlinedAt: !4369)
!4455 = !DILocation(line: 480, column: 33, scope: !4394, inlinedAt: !4395)
!4456 = !DILocation(line: 480, column: 23, scope: !4394, inlinedAt: !4395)
!4457 = !DILocation(line: 481, column: 29, scope: !4394, inlinedAt: !4395)
!4458 = !DILocation(line: 481, column: 35, scope: !4394, inlinedAt: !4395)
!4459 = !DILocation(line: 481, column: 42, scope: !4394, inlinedAt: !4395)
!4460 = !DILocation(line: 474, column: 23, scope: !4389, inlinedAt: !4393)
!4461 = !DILocation(line: 474, column: 29, scope: !4389, inlinedAt: !4393)
!4462 = !DILocation(line: 474, column: 36, scope: !4389, inlinedAt: !4393)
!4463 = !DILocation(line: 474, column: 9, scope: !4389, inlinedAt: !4393)
!4464 = !DILocation(line: 545, column: 4, scope: !4396, inlinedAt: !4369)
!4465 = !DILocation(line: 547, column: 25, scope: !4364, inlinedAt: !4369)
!4466 = !DILocation(line: 348, column: 7, scope: !4467, inlinedAt: !4387)
!4467 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 348, column: 6)
!4468 = !DILocation(line: 348, column: 6, scope: !4383, inlinedAt: !4387)
!4469 = !DILocation(line: 349, column: 3, scope: !4467, inlinedAt: !4387)
!4470 = !DILocation(line: 351, column: 6, scope: !4471, inlinedAt: !4387)
!4471 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 351, column: 6)
!4472 = !DILocation(line: 351, column: 11, scope: !4471, inlinedAt: !4387)
!4473 = !DILocation(line: 351, column: 6, scope: !4383, inlinedAt: !4387)
!4474 = !DILocation(line: 352, column: 3, scope: !4471, inlinedAt: !4387)
!4475 = !DILocation(line: 354, column: 32, scope: !4476, inlinedAt: !4387)
!4476 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 354, column: 6)
!4477 = !DILocation(line: 354, column: 37, scope: !4476, inlinedAt: !4387)
!4478 = !DILocation(line: 354, column: 42, scope: !4476, inlinedAt: !4387)
!4479 = !DILocation(line: 354, column: 45, scope: !4476, inlinedAt: !4387)
!4480 = !DILocation(line: 354, column: 50, scope: !4476, inlinedAt: !4387)
!4481 = !DILocation(line: 354, column: 6, scope: !4383, inlinedAt: !4387)
!4482 = !DILocation(line: 355, column: 3, scope: !4476, inlinedAt: !4387)
!4483 = !DILocation(line: 356, column: 32, scope: !4484, inlinedAt: !4387)
!4484 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 356, column: 6)
!4485 = !DILocation(line: 356, column: 37, scope: !4484, inlinedAt: !4387)
!4486 = !DILocation(line: 356, column: 43, scope: !4484, inlinedAt: !4387)
!4487 = !DILocation(line: 356, column: 46, scope: !4484, inlinedAt: !4387)
!4488 = !DILocation(line: 356, column: 51, scope: !4484, inlinedAt: !4387)
!4489 = !DILocation(line: 356, column: 6, scope: !4383, inlinedAt: !4387)
!4490 = !DILocation(line: 357, column: 3, scope: !4484, inlinedAt: !4387)
!4491 = !DILocation(line: 358, column: 6, scope: !4492, inlinedAt: !4387)
!4492 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 358, column: 6)
!4493 = !DILocation(line: 358, column: 11, scope: !4492, inlinedAt: !4387)
!4494 = !DILocation(line: 358, column: 6, scope: !4383, inlinedAt: !4387)
!4495 = !DILocation(line: 358, column: 26, scope: !4492, inlinedAt: !4387)
!4496 = !DILocation(line: 359, column: 6, scope: !4497, inlinedAt: !4387)
!4497 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 359, column: 6)
!4498 = !DILocation(line: 359, column: 11, scope: !4497, inlinedAt: !4387)
!4499 = !DILocation(line: 359, column: 6, scope: !4383, inlinedAt: !4387)
!4500 = !DILocation(line: 359, column: 26, scope: !4497, inlinedAt: !4387)
!4501 = !DILocation(line: 360, column: 6, scope: !4502, inlinedAt: !4387)
!4502 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 360, column: 6)
!4503 = !DILocation(line: 360, column: 11, scope: !4502, inlinedAt: !4387)
!4504 = !DILocation(line: 360, column: 6, scope: !4383, inlinedAt: !4387)
!4505 = !DILocation(line: 360, column: 26, scope: !4502, inlinedAt: !4387)
!4506 = !DILocation(line: 361, column: 6, scope: !4507, inlinedAt: !4387)
!4507 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 361, column: 6)
!4508 = !DILocation(line: 361, column: 11, scope: !4507, inlinedAt: !4387)
!4509 = !DILocation(line: 361, column: 6, scope: !4383, inlinedAt: !4387)
!4510 = !DILocation(line: 361, column: 26, scope: !4507, inlinedAt: !4387)
!4511 = !DILocation(line: 362, column: 6, scope: !4512, inlinedAt: !4387)
!4512 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 362, column: 6)
!4513 = !DILocation(line: 362, column: 11, scope: !4512, inlinedAt: !4387)
!4514 = !DILocation(line: 362, column: 6, scope: !4383, inlinedAt: !4387)
!4515 = !DILocation(line: 362, column: 26, scope: !4512, inlinedAt: !4387)
!4516 = !DILocation(line: 363, column: 6, scope: !4517, inlinedAt: !4387)
!4517 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 363, column: 6)
!4518 = !DILocation(line: 363, column: 11, scope: !4517, inlinedAt: !4387)
!4519 = !DILocation(line: 363, column: 6, scope: !4383, inlinedAt: !4387)
!4520 = !DILocation(line: 363, column: 26, scope: !4517, inlinedAt: !4387)
!4521 = !DILocation(line: 364, column: 6, scope: !4522, inlinedAt: !4387)
!4522 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 364, column: 6)
!4523 = !DILocation(line: 364, column: 11, scope: !4522, inlinedAt: !4387)
!4524 = !DILocation(line: 364, column: 6, scope: !4383, inlinedAt: !4387)
!4525 = !DILocation(line: 364, column: 26, scope: !4522, inlinedAt: !4387)
!4526 = !DILocation(line: 365, column: 6, scope: !4527, inlinedAt: !4387)
!4527 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 365, column: 6)
!4528 = !DILocation(line: 365, column: 11, scope: !4527, inlinedAt: !4387)
!4529 = !DILocation(line: 365, column: 6, scope: !4383, inlinedAt: !4387)
!4530 = !DILocation(line: 365, column: 26, scope: !4527, inlinedAt: !4387)
!4531 = !DILocation(line: 366, column: 6, scope: !4532, inlinedAt: !4387)
!4532 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 366, column: 6)
!4533 = !DILocation(line: 366, column: 11, scope: !4532, inlinedAt: !4387)
!4534 = !DILocation(line: 366, column: 6, scope: !4383, inlinedAt: !4387)
!4535 = !DILocation(line: 366, column: 26, scope: !4532, inlinedAt: !4387)
!4536 = !DILocation(line: 367, column: 6, scope: !4537, inlinedAt: !4387)
!4537 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 367, column: 6)
!4538 = !DILocation(line: 367, column: 11, scope: !4537, inlinedAt: !4387)
!4539 = !DILocation(line: 367, column: 6, scope: !4383, inlinedAt: !4387)
!4540 = !DILocation(line: 367, column: 26, scope: !4537, inlinedAt: !4387)
!4541 = !DILocation(line: 368, column: 6, scope: !4542, inlinedAt: !4387)
!4542 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 368, column: 6)
!4543 = !DILocation(line: 368, column: 11, scope: !4542, inlinedAt: !4387)
!4544 = !DILocation(line: 368, column: 6, scope: !4383, inlinedAt: !4387)
!4545 = !DILocation(line: 368, column: 26, scope: !4542, inlinedAt: !4387)
!4546 = !DILocation(line: 369, column: 6, scope: !4547, inlinedAt: !4387)
!4547 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 369, column: 6)
!4548 = !DILocation(line: 369, column: 11, scope: !4547, inlinedAt: !4387)
!4549 = !DILocation(line: 369, column: 6, scope: !4383, inlinedAt: !4387)
!4550 = !DILocation(line: 369, column: 26, scope: !4547, inlinedAt: !4387)
!4551 = !DILocation(line: 370, column: 6, scope: !4552, inlinedAt: !4387)
!4552 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 370, column: 6)
!4553 = !DILocation(line: 370, column: 11, scope: !4552, inlinedAt: !4387)
!4554 = !DILocation(line: 370, column: 6, scope: !4383, inlinedAt: !4387)
!4555 = !DILocation(line: 370, column: 26, scope: !4552, inlinedAt: !4387)
!4556 = !DILocation(line: 371, column: 6, scope: !4557, inlinedAt: !4387)
!4557 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 371, column: 6)
!4558 = !DILocation(line: 371, column: 11, scope: !4557, inlinedAt: !4387)
!4559 = !DILocation(line: 371, column: 6, scope: !4383, inlinedAt: !4387)
!4560 = !DILocation(line: 371, column: 26, scope: !4557, inlinedAt: !4387)
!4561 = !DILocation(line: 372, column: 6, scope: !4562, inlinedAt: !4387)
!4562 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 372, column: 6)
!4563 = !DILocation(line: 372, column: 11, scope: !4562, inlinedAt: !4387)
!4564 = !DILocation(line: 372, column: 6, scope: !4383, inlinedAt: !4387)
!4565 = !DILocation(line: 372, column: 26, scope: !4562, inlinedAt: !4387)
!4566 = !DILocation(line: 373, column: 6, scope: !4567, inlinedAt: !4387)
!4567 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 373, column: 6)
!4568 = !DILocation(line: 373, column: 11, scope: !4567, inlinedAt: !4387)
!4569 = !DILocation(line: 373, column: 6, scope: !4383, inlinedAt: !4387)
!4570 = !DILocation(line: 373, column: 26, scope: !4567, inlinedAt: !4387)
!4571 = !DILocation(line: 374, column: 6, scope: !4572, inlinedAt: !4387)
!4572 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 374, column: 6)
!4573 = !DILocation(line: 374, column: 11, scope: !4572, inlinedAt: !4387)
!4574 = !DILocation(line: 374, column: 6, scope: !4383, inlinedAt: !4387)
!4575 = !DILocation(line: 374, column: 26, scope: !4572, inlinedAt: !4387)
!4576 = !DILocation(line: 375, column: 6, scope: !4577, inlinedAt: !4387)
!4577 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 375, column: 6)
!4578 = !DILocation(line: 375, column: 11, scope: !4577, inlinedAt: !4387)
!4579 = !DILocation(line: 375, column: 6, scope: !4383, inlinedAt: !4387)
!4580 = !DILocation(line: 375, column: 27, scope: !4577, inlinedAt: !4387)
!4581 = !DILocation(line: 376, column: 6, scope: !4582, inlinedAt: !4387)
!4582 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 376, column: 6)
!4583 = !DILocation(line: 376, column: 11, scope: !4582, inlinedAt: !4387)
!4584 = !DILocation(line: 376, column: 6, scope: !4383, inlinedAt: !4387)
!4585 = !DILocation(line: 376, column: 32, scope: !4582, inlinedAt: !4387)
!4586 = !DILocation(line: 377, column: 6, scope: !4587, inlinedAt: !4387)
!4587 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 377, column: 6)
!4588 = !DILocation(line: 377, column: 11, scope: !4587, inlinedAt: !4387)
!4589 = !DILocation(line: 377, column: 6, scope: !4383, inlinedAt: !4387)
!4590 = !DILocation(line: 377, column: 32, scope: !4587, inlinedAt: !4387)
!4591 = !DILocation(line: 378, column: 6, scope: !4592, inlinedAt: !4387)
!4592 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 378, column: 6)
!4593 = !DILocation(line: 378, column: 11, scope: !4592, inlinedAt: !4387)
!4594 = !DILocation(line: 378, column: 6, scope: !4383, inlinedAt: !4387)
!4595 = !DILocation(line: 378, column: 32, scope: !4592, inlinedAt: !4387)
!4596 = !DILocation(line: 379, column: 6, scope: !4597, inlinedAt: !4387)
!4597 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 379, column: 6)
!4598 = !DILocation(line: 379, column: 11, scope: !4597, inlinedAt: !4387)
!4599 = !DILocation(line: 379, column: 6, scope: !4383, inlinedAt: !4387)
!4600 = !DILocation(line: 379, column: 33, scope: !4597, inlinedAt: !4387)
!4601 = !DILocation(line: 380, column: 6, scope: !4602, inlinedAt: !4387)
!4602 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 380, column: 6)
!4603 = !DILocation(line: 380, column: 11, scope: !4602, inlinedAt: !4387)
!4604 = !DILocation(line: 380, column: 6, scope: !4383, inlinedAt: !4387)
!4605 = !DILocation(line: 380, column: 33, scope: !4602, inlinedAt: !4387)
!4606 = !DILocation(line: 381, column: 6, scope: !4607, inlinedAt: !4387)
!4607 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 381, column: 6)
!4608 = !DILocation(line: 381, column: 11, scope: !4607, inlinedAt: !4387)
!4609 = !DILocation(line: 381, column: 6, scope: !4383, inlinedAt: !4387)
!4610 = !DILocation(line: 381, column: 33, scope: !4607, inlinedAt: !4387)
!4611 = !DILocation(line: 382, column: 2, scope: !4612, inlinedAt: !4387)
!4612 = distinct !DILexicalBlock(scope: !4613, file: !134, line: 382, column: 2)
!4613 = distinct !DILexicalBlock(scope: !4383, file: !134, line: 382, column: 2)
!4614 = !{i32 -2143546204, i32 -2143546175, i32 -2143546129, i32 -2143546071, i32 -2143546017, i32 -2143545963, i32 -2143545908, i32 -2143545877}
!4615 = !DILocation(line: 382, column: 2, scope: !4616, inlinedAt: !4387)
!4616 = distinct !DILexicalBlock(scope: !4617, file: !134, line: 382, column: 2)
!4617 = distinct !DILexicalBlock(scope: !4613, file: !134, line: 382, column: 2)
!4618 = !{i32 -2143545434, i32 -2143545427, i32 -2143545373, i32 -2143545342, i32 -2143545312}
!4619 = !DILocation(line: 382, column: 2, scope: !4617, inlinedAt: !4387)
!4620 = !DILocation(line: 386, column: 1, scope: !4383, inlinedAt: !4387)
!4621 = !DILocation(line: 547, column: 9, scope: !4364, inlinedAt: !4369)
!4622 = !DILocation(line: 549, column: 8, scope: !4623, inlinedAt: !4369)
!4623 = distinct !DILexicalBlock(scope: !4364, file: !134, line: 549, column: 7)
!4624 = !DILocation(line: 549, column: 7, scope: !4364, inlinedAt: !4369)
!4625 = !DILocation(line: 550, column: 4, scope: !4623, inlinedAt: !4369)
!4626 = !DILocation(line: 553, column: 33, scope: !4364, inlinedAt: !4369)
!4627 = !DILocation(line: 325, column: 6, scope: !4628, inlinedAt: !4381)
!4628 = distinct !DILexicalBlock(scope: !4377, file: !134, line: 325, column: 6)
!4629 = !DILocation(line: 325, column: 6, scope: !4377, inlinedAt: !4381)
!4630 = !DILocation(line: 326, column: 3, scope: !4628, inlinedAt: !4381)
!4631 = !DILocation(line: 332, column: 9, scope: !4377, inlinedAt: !4381)
!4632 = !DILocation(line: 332, column: 15, scope: !4377, inlinedAt: !4381)
!4633 = !DILocation(line: 332, column: 2, scope: !4377, inlinedAt: !4381)
!4634 = !DILocation(line: 336, column: 1, scope: !4377, inlinedAt: !4381)
!4635 = !DILocation(line: 553, column: 5, scope: !4364, inlinedAt: !4369)
!4636 = !DILocation(line: 553, column: 41, scope: !4364, inlinedAt: !4369)
!4637 = !DILocation(line: 554, column: 5, scope: !4364, inlinedAt: !4369)
!4638 = !DILocation(line: 554, column: 12, scope: !4364, inlinedAt: !4369)
!4639 = !DILocation(line: 448, column: 31, scope: !4359, inlinedAt: !4363)
!4640 = !DILocation(line: 448, column: 34, scope: !4359, inlinedAt: !4363)
!4641 = !DILocation(line: 448, column: 14, scope: !4359, inlinedAt: !4363)
!4642 = !DILocation(line: 450, column: 22, scope: !4359, inlinedAt: !4363)
!4643 = !DILocation(line: 450, column: 25, scope: !4359, inlinedAt: !4363)
!4644 = !DILocation(line: 450, column: 30, scope: !4359, inlinedAt: !4363)
!4645 = !DILocation(line: 450, column: 36, scope: !4359, inlinedAt: !4363)
!4646 = !DILocation(line: 450, column: 8, scope: !4359, inlinedAt: !4363)
!4647 = !DILocation(line: 450, column: 6, scope: !4359, inlinedAt: !4363)
!4648 = !DILocation(line: 451, column: 9, scope: !4359, inlinedAt: !4363)
!4649 = !DILocation(line: 552, column: 3, scope: !4364, inlinedAt: !4369)
!4650 = !DILocation(line: 557, column: 19, scope: !4366, inlinedAt: !4369)
!4651 = !DILocation(line: 557, column: 25, scope: !4366, inlinedAt: !4369)
!4652 = !DILocation(line: 557, column: 9, scope: !4366, inlinedAt: !4369)
!4653 = !DILocation(line: 557, column: 2, scope: !4366, inlinedAt: !4369)
!4654 = !DILocation(line: 558, column: 1, scope: !4366, inlinedAt: !4369)
!4655 = !DILocation(line: 518, column: 12, scope: !4357)
!4656 = !DILocation(line: 518, column: 10, scope: !4357)
!4657 = !DILocation(line: 519, column: 7, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 519, column: 6)
!4659 = !DILocation(line: 519, column: 6, scope: !4357)
!4660 = !DILocation(line: 520, column: 3, scope: !4658)
!4661 = !DILocation(line: 522, column: 2, scope: !4357)
!4662 = !DILocation(line: 524, column: 2, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4664, file: !3, line: 524, column: 2)
!4664 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 524, column: 2)
!4665 = !DILocation(line: 524, column: 2, scope: !4664)
!4666 = !DILocation(line: 527, column: 20, scope: !4357)
!4667 = !DILocation(line: 527, column: 26, scope: !4357)
!4668 = !DILocation(line: 527, column: 31, scope: !4357)
!4669 = !DILocation(line: 527, column: 40, scope: !4357)
!4670 = !DILocation(line: 527, column: 55, scope: !4357)
!4671 = !DILocation(line: 527, column: 9, scope: !4357)
!4672 = !DILocation(line: 527, column: 7, scope: !4357)
!4673 = !DILocation(line: 528, column: 6, scope: !4674)
!4674 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 528, column: 6)
!4675 = !DILocation(line: 528, column: 11, scope: !4674)
!4676 = !DILocation(line: 528, column: 6, scope: !4357)
!4677 = !DILocation(line: 529, column: 6, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 528, column: 20)
!4679 = !DILocation(line: 530, column: 3, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4681, file: !3, line: 530, column: 3)
!4681 = distinct !DILexicalBlock(scope: !4678, file: !3, line: 530, column: 3)
!4682 = !DILocation(line: 530, column: 3, scope: !4681)
!4683 = !DILocation(line: 532, column: 9, scope: !4678)
!4684 = !DILocation(line: 532, column: 3, scope: !4678)
!4685 = !DILocation(line: 533, column: 3, scope: !4678)
!4686 = !DILocation(line: 536, column: 18, scope: !4357)
!4687 = !DILocation(line: 536, column: 2, scope: !4357)
!4688 = !DILocation(line: 536, column: 11, scope: !4357)
!4689 = !DILocation(line: 536, column: 16, scope: !4357)
!4690 = !DILocation(line: 537, column: 2, scope: !4357)
!4691 = !DILocation(line: 537, column: 11, scope: !4357)
!4692 = !DILocation(line: 537, column: 17, scope: !4357)
!4693 = !DILocation(line: 538, column: 19, scope: !4357)
!4694 = !DILocation(line: 538, column: 2, scope: !4357)
!4695 = !DILocation(line: 538, column: 11, scope: !4357)
!4696 = !DILocation(line: 538, column: 17, scope: !4357)
!4697 = !DILocation(line: 540, column: 25, scope: !4357)
!4698 = !DILocation(line: 540, column: 2, scope: !4357)
!4699 = !DILocation(line: 540, column: 7, scope: !4357)
!4700 = !DILocation(line: 540, column: 23, scope: !4357)
!4701 = !DILocation(line: 542, column: 2, scope: !4357)
!4702 = !DILocation(line: 542, column: 7, scope: !4357)
!4703 = !DILocation(line: 542, column: 16, scope: !4357)
!4704 = !DILocation(line: 544, column: 2, scope: !4357)
!4705 = !DILocation(line: 544, column: 7, scope: !4357)
!4706 = !DILocation(line: 544, column: 14, scope: !4357)
!4707 = !DILocation(line: 546, column: 9, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 546, column: 2)
!4709 = !DILocation(line: 546, column: 7, scope: !4708)
!4710 = !DILocation(line: 546, column: 14, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4708, file: !3, line: 546, column: 2)
!4712 = !DILocation(line: 546, column: 18, scope: !4711)
!4713 = !DILocation(line: 546, column: 16, scope: !4711)
!4714 = !DILocation(line: 546, column: 2, scope: !4708)
!4715 = !DILocation(line: 547, column: 3, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4711, file: !3, line: 546, column: 30)
!4717 = !DILocation(line: 547, column: 9, scope: !4716)
!4718 = !DILocation(line: 547, column: 14, scope: !4716)
!4719 = !DILocation(line: 548, column: 23, scope: !4716)
!4720 = !DILocation(line: 548, column: 28, scope: !4716)
!4721 = !DILocation(line: 548, column: 33, scope: !4716)
!4722 = !DILocation(line: 548, column: 44, scope: !4716)
!4723 = !DILocation(line: 548, column: 46, scope: !4716)
!4724 = !DILocation(line: 548, column: 42, scope: !4716)
!4725 = !DILocation(line: 549, column: 5, scope: !4716)
!4726 = !DILocation(line: 549, column: 11, scope: !4716)
!4727 = !DILocation(line: 548, column: 8, scope: !4716)
!4728 = !DILocation(line: 548, column: 6, scope: !4716)
!4729 = !DILocation(line: 550, column: 7, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 550, column: 7)
!4731 = !DILocation(line: 550, column: 7, scope: !4716)
!4732 = !DILocation(line: 551, column: 4, scope: !4730)
!4733 = !DILocalVariable(name: "__mptr", scope: !4734, file: !3, line: 553, type: !147)
!4734 = distinct !DILexicalBlock(scope: !4716, file: !3, line: 553, column: 10)
!4735 = !DILocation(line: 553, column: 10, scope: !4734)
!4736 = !DILocation(line: 553, column: 10, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !4734, file: !3, line: 553, column: 10)
!4738 = !DILocation(line: 553, column: 8, scope: !4716)
!4739 = !DILocation(line: 555, column: 2, scope: !4716)
!4740 = !DILocation(line: 546, column: 26, scope: !4711)
!4741 = !DILocation(line: 546, column: 2, scope: !4711)
!4742 = distinct !{!4742, !4714, !4743}
!4743 = !DILocation(line: 555, column: 2, scope: !4708)
!4744 = !DILocation(line: 556, column: 5, scope: !4357)
!4745 = !DILocation(line: 556, column: 2, scope: !4357)
!4746 = !DILabel(scope: !4357, name: "out_unlock", file: !3, line: 558)
!4747 = !DILocation(line: 558, column: 1, scope: !4357)
!4748 = !DILocation(line: 559, column: 2, scope: !4357)
!4749 = !DILocation(line: 560, column: 9, scope: !4357)
!4750 = !DILocation(line: 560, column: 2, scope: !4357)
!4751 = !DILocation(line: 561, column: 1, scope: !4357)
!4752 = distinct !DISubprogram(name: "gntalloc_open", scope: !3, file: !3, line: 242, type: !1225, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4753 = !DILocalVariable(name: "inode", arg: 1, scope: !4752, file: !3, line: 242, type: !180)
!4754 = !DILocation(line: 242, column: 40, scope: !4752)
!4755 = !DILocalVariable(name: "filp", arg: 2, scope: !4752, file: !3, line: 242, type: !1118)
!4756 = !DILocation(line: 242, column: 60, scope: !4752)
!4757 = !DILocalVariable(name: "priv", scope: !4752, file: !3, line: 244, type: !4329)
!4758 = !DILocation(line: 244, column: 37, scope: !4752)
!4759 = !DILocation(line: 246, column: 9, scope: !4752)
!4760 = !DILocation(line: 246, column: 7, scope: !4752)
!4761 = !DILocation(line: 247, column: 7, scope: !4762)
!4762 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 247, column: 6)
!4763 = !DILocation(line: 247, column: 6, scope: !4752)
!4764 = !DILocation(line: 248, column: 3, scope: !4762)
!4765 = !DILocation(line: 249, column: 18, scope: !4752)
!4766 = !DILocation(line: 249, column: 24, scope: !4752)
!4767 = !DILocation(line: 249, column: 2, scope: !4752)
!4768 = !DILocation(line: 251, column: 23, scope: !4752)
!4769 = !DILocation(line: 251, column: 2, scope: !4752)
!4770 = !DILocation(line: 251, column: 8, scope: !4752)
!4771 = !DILocation(line: 251, column: 21, scope: !4752)
!4772 = !DILocation(line: 253, column: 2, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4774, file: !3, line: 253, column: 2)
!4774 = distinct !DILexicalBlock(scope: !4752, file: !3, line: 253, column: 2)
!4775 = !DILocation(line: 253, column: 2, scope: !4774)
!4776 = !DILocation(line: 255, column: 2, scope: !4752)
!4777 = !DILabel(scope: !4752, name: "out_nomem", file: !3, line: 257)
!4778 = !DILocation(line: 257, column: 1, scope: !4752)
!4779 = !DILocation(line: 258, column: 2, scope: !4752)
!4780 = !DILocation(line: 259, column: 1, scope: !4752)
!4781 = distinct !DISubprogram(name: "gntalloc_release", scope: !3, file: !3, line: 261, type: !1225, scopeLine: 262, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4782 = !DILocalVariable(name: "inode", arg: 1, scope: !4781, file: !3, line: 261, type: !180)
!4783 = !DILocation(line: 261, column: 43, scope: !4781)
!4784 = !DILocalVariable(name: "filp", arg: 2, scope: !4781, file: !3, line: 261, type: !1118)
!4785 = !DILocation(line: 261, column: 63, scope: !4781)
!4786 = !DILocalVariable(name: "priv", scope: !4781, file: !3, line: 263, type: !4329)
!4787 = !DILocation(line: 263, column: 37, scope: !4781)
!4788 = !DILocation(line: 263, column: 44, scope: !4781)
!4789 = !DILocation(line: 263, column: 50, scope: !4781)
!4790 = !DILocalVariable(name: "gref", scope: !4781, file: !3, line: 264, type: !151)
!4791 = !DILocation(line: 264, column: 24, scope: !4781)
!4792 = !DILocation(line: 266, column: 2, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 266, column: 2)
!4794 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 266, column: 2)
!4795 = !DILocation(line: 266, column: 2, scope: !4794)
!4796 = !DILocation(line: 268, column: 2, scope: !4781)
!4797 = !DILocation(line: 269, column: 2, scope: !4781)
!4798 = !DILocation(line: 269, column: 22, scope: !4781)
!4799 = !DILocation(line: 269, column: 28, scope: !4781)
!4800 = !DILocation(line: 269, column: 10, scope: !4781)
!4801 = !DILocation(line: 269, column: 9, scope: !4781)
!4802 = !DILocalVariable(name: "__mptr", scope: !4803, file: !3, line: 270, type: !147)
!4803 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 270, column: 10)
!4804 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 269, column: 35)
!4805 = !DILocation(line: 270, column: 10, scope: !4803)
!4806 = !DILocation(line: 270, column: 10, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4803, file: !3, line: 270, column: 10)
!4808 = !DILocation(line: 270, column: 8, scope: !4804)
!4809 = !DILocation(line: 272, column: 13, scope: !4804)
!4810 = !DILocation(line: 272, column: 19, scope: !4804)
!4811 = !DILocation(line: 272, column: 3, scope: !4804)
!4812 = !DILocation(line: 273, column: 3, scope: !4804)
!4813 = !DILocation(line: 273, column: 9, scope: !4804)
!4814 = !DILocation(line: 273, column: 14, scope: !4804)
!4815 = !DILocation(line: 274, column: 7, scope: !4816)
!4816 = distinct !DILexicalBlock(scope: !4804, file: !3, line: 274, column: 7)
!4817 = !DILocation(line: 274, column: 13, scope: !4816)
!4818 = !DILocation(line: 274, column: 19, scope: !4816)
!4819 = !DILocation(line: 274, column: 7, scope: !4804)
!4820 = !DILocation(line: 275, column: 15, scope: !4816)
!4821 = !DILocation(line: 275, column: 4, scope: !4816)
!4822 = distinct !{!4822, !4797, !4823}
!4823 = !DILocation(line: 276, column: 2, scope: !4781)
!4824 = !DILocation(line: 277, column: 8, scope: !4781)
!4825 = !DILocation(line: 277, column: 2, scope: !4781)
!4826 = !DILocation(line: 278, column: 2, scope: !4781)
!4827 = !DILocation(line: 280, column: 2, scope: !4781)
!4828 = distinct !DISubprogram(name: "gntalloc_ioctl_alloc", scope: !3, file: !3, line: 283, type: !4829, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!503, !4329, !4831}
!4831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4832, size: 64)
!4832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ioctl_gntalloc_alloc_gref", file: !4833, line: 21, size: 192, elements: !4834)
!4833 = !DIFile(filename: "./include/uapi/xen/gntalloc.h", directory: "/home/lizy2001/genbc/linux")
!4834 = !{!4835, !4836, !4837, !4838, !4839}
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "domid", scope: !4832, file: !4833, line: 24, baseType: !1175, size: 16)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4832, file: !4833, line: 26, baseType: !1175, size: 16, offset: 16)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4832, file: !4833, line: 28, baseType: !249, size: 32, offset: 32)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4832, file: !4833, line: 31, baseType: !254, size: 64, offset: 64)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "gref_ids", scope: !4832, file: !4833, line: 34, baseType: !4840, size: 32, offset: 128)
!4840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 32, elements: !990)
!4841 = !DILocalVariable(name: "addr", arg: 1, scope: !4842, file: !4843, line: 138, type: !2320)
!4842 = distinct !DISubprogram(name: "check_copy_size", scope: !4843, file: !4843, line: 138, type: !4844, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4843 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!358, !2320, !1150, !358}
!4846 = !DILocation(line: 138, column: 29, scope: !4842, inlinedAt: !4847)
!4847 = distinct !DILocation(line: 199, column: 6, scope: !4848, inlinedAt: !4853)
!4848 = distinct !DILexicalBlock(scope: !4850, file: !4849, line: 199, column: 6)
!4849 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!4850 = distinct !DISubprogram(name: "copy_to_user", scope: !4849, file: !4849, line: 197, type: !4851, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!167, !147, !2320, !167}
!4853 = distinct !DILocation(line: 334, column: 6, scope: !4854)
!4854 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 334, column: 6)
!4855 = !DILocalVariable(name: "bytes", arg: 2, scope: !4842, file: !4843, line: 138, type: !1150)
!4856 = !DILocation(line: 138, column: 42, scope: !4842, inlinedAt: !4847)
!4857 = !DILocalVariable(name: "is_source", arg: 3, scope: !4842, file: !4843, line: 138, type: !358)
!4858 = !DILocation(line: 138, column: 54, scope: !4842, inlinedAt: !4847)
!4859 = !DILocalVariable(name: "sz", scope: !4842, file: !4843, line: 140, type: !150)
!4860 = !DILocation(line: 140, column: 6, scope: !4842, inlinedAt: !4847)
!4861 = !DILocalVariable(name: "__ret_warn_on", scope: !4862, file: !4843, line: 150, type: !150)
!4862 = distinct !DILexicalBlock(scope: !4863, file: !4843, line: 150, column: 6)
!4863 = distinct !DILexicalBlock(scope: !4842, file: !4843, line: 150, column: 6)
!4864 = !DILocation(line: 150, column: 6, scope: !4862, inlinedAt: !4847)
!4865 = !DILocalVariable(name: "to", arg: 1, scope: !4850, file: !4849, line: 197, type: !147)
!4866 = !DILocation(line: 197, column: 27, scope: !4850, inlinedAt: !4853)
!4867 = !DILocalVariable(name: "from", arg: 2, scope: !4850, file: !4849, line: 197, type: !2320)
!4868 = !DILocation(line: 197, column: 43, scope: !4850, inlinedAt: !4853)
!4869 = !DILocalVariable(name: "n", arg: 3, scope: !4850, file: !4849, line: 197, type: !167)
!4870 = !DILocation(line: 197, column: 63, scope: !4850, inlinedAt: !4853)
!4871 = !DILocation(line: 138, column: 29, scope: !4842, inlinedAt: !4872)
!4872 = distinct !DILocation(line: 199, column: 6, scope: !4848, inlinedAt: !4873)
!4873 = distinct !DILocation(line: 330, column: 6, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 330, column: 6)
!4875 = !DILocation(line: 138, column: 42, scope: !4842, inlinedAt: !4872)
!4876 = !DILocation(line: 138, column: 54, scope: !4842, inlinedAt: !4872)
!4877 = !DILocation(line: 140, column: 6, scope: !4842, inlinedAt: !4872)
!4878 = !DILocation(line: 150, column: 6, scope: !4862, inlinedAt: !4872)
!4879 = !DILocation(line: 197, column: 27, scope: !4850, inlinedAt: !4873)
!4880 = !DILocation(line: 197, column: 43, scope: !4850, inlinedAt: !4873)
!4881 = !DILocation(line: 197, column: 63, scope: !4850, inlinedAt: !4873)
!4882 = !DILocation(line: 138, column: 29, scope: !4842, inlinedAt: !4883)
!4883 = distinct !DILocation(line: 191, column: 6, scope: !4884, inlinedAt: !4886)
!4884 = distinct !DILexicalBlock(scope: !4885, file: !4849, line: 191, column: 6)
!4885 = distinct !DISubprogram(name: "copy_from_user", scope: !4849, file: !4849, line: 189, type: !4851, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!4886 = distinct !DILocation(line: 292, column: 6, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 292, column: 6)
!4888 = !DILocation(line: 138, column: 42, scope: !4842, inlinedAt: !4883)
!4889 = !DILocation(line: 138, column: 54, scope: !4842, inlinedAt: !4883)
!4890 = !DILocation(line: 140, column: 6, scope: !4842, inlinedAt: !4883)
!4891 = !DILocation(line: 150, column: 6, scope: !4862, inlinedAt: !4883)
!4892 = !DILocalVariable(name: "to", arg: 1, scope: !4885, file: !4849, line: 189, type: !147)
!4893 = !DILocation(line: 189, column: 22, scope: !4885, inlinedAt: !4886)
!4894 = !DILocalVariable(name: "from", arg: 2, scope: !4885, file: !4849, line: 189, type: !2320)
!4895 = !DILocation(line: 189, column: 45, scope: !4885, inlinedAt: !4886)
!4896 = !DILocalVariable(name: "n", arg: 3, scope: !4885, file: !4849, line: 189, type: !167)
!4897 = !DILocation(line: 189, column: 65, scope: !4885, inlinedAt: !4886)
!4898 = !DILocalVariable(name: "priv", arg: 1, scope: !4828, file: !3, line: 283, type: !4329)
!4899 = !DILocation(line: 283, column: 69, scope: !4828)
!4900 = !DILocalVariable(name: "arg", arg: 2, scope: !4828, file: !3, line: 284, type: !4831)
!4901 = !DILocation(line: 284, column: 44, scope: !4828)
!4902 = !DILocalVariable(name: "rc", scope: !4828, file: !3, line: 286, type: !150)
!4903 = !DILocation(line: 286, column: 6, scope: !4828)
!4904 = !DILocalVariable(name: "op", scope: !4828, file: !3, line: 287, type: !4832)
!4905 = !DILocation(line: 287, column: 35, scope: !4828)
!4906 = !DILocalVariable(name: "gref_ids", scope: !4828, file: !3, line: 288, type: !4907)
!4907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!4908 = !DILocation(line: 288, column: 12, scope: !4828)
!4909 = !DILocation(line: 290, column: 2, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 290, column: 2)
!4911 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 290, column: 2)
!4912 = !DILocation(line: 290, column: 2, scope: !4911)
!4913 = !DILocation(line: 292, column: 21, scope: !4887)
!4914 = !DILocation(line: 292, column: 26, scope: !4887)
!4915 = !DILocation(line: 191, column: 6, scope: !4884, inlinedAt: !4886)
!4916 = !DILocation(line: 141, column: 6, scope: !4917, inlinedAt: !4883)
!4917 = distinct !DILexicalBlock(scope: !4842, file: !4843, line: 141, column: 6)
!4918 = !DILocation(line: 0, scope: !4917, inlinedAt: !4883)
!4919 = !DILocation(line: 141, column: 6, scope: !4842, inlinedAt: !4883)
!4920 = !DILocation(line: 142, column: 29, scope: !4921, inlinedAt: !4883)
!4921 = distinct !DILexicalBlock(scope: !4922, file: !4843, line: 142, column: 7)
!4922 = distinct !DILexicalBlock(scope: !4917, file: !4843, line: 141, column: 39)
!4923 = !DILocation(line: 142, column: 8, scope: !4921, inlinedAt: !4883)
!4924 = !DILocation(line: 142, column: 7, scope: !4922, inlinedAt: !4883)
!4925 = !DILocation(line: 143, column: 18, scope: !4921, inlinedAt: !4883)
!4926 = !DILocation(line: 143, column: 22, scope: !4921, inlinedAt: !4883)
!4927 = !DILocation(line: 143, column: 4, scope: !4921, inlinedAt: !4883)
!4928 = !DILocation(line: 144, column: 12, scope: !4929, inlinedAt: !4883)
!4929 = distinct !DILexicalBlock(scope: !4921, file: !4843, line: 144, column: 12)
!4930 = !DILocation(line: 144, column: 12, scope: !4921, inlinedAt: !4883)
!4931 = !DILocation(line: 145, column: 4, scope: !4929, inlinedAt: !4883)
!4932 = !DILocation(line: 147, column: 4, scope: !4929, inlinedAt: !4883)
!4933 = !DILocation(line: 148, column: 3, scope: !4922, inlinedAt: !4883)
!4934 = !DILocation(line: 150, column: 6, scope: !4935, inlinedAt: !4883)
!4935 = distinct !DILexicalBlock(scope: !4862, file: !4843, line: 150, column: 6)
!4936 = !DILocation(line: 150, column: 6, scope: !4937, inlinedAt: !4883)
!4937 = distinct !DILexicalBlock(scope: !4938, file: !4843, line: 150, column: 6)
!4938 = distinct !DILexicalBlock(scope: !4935, file: !4843, line: 150, column: 6)
!4939 = !{i32 -2145543125, i32 -2145543096, i32 -2145543050, i32 -2145542992, i32 -2145542938, i32 -2145542884, i32 -2145542829, i32 -2145542798}
!4940 = !DILocation(line: 150, column: 6, scope: !4941, inlinedAt: !4883)
!4941 = distinct !DILexicalBlock(scope: !4938, file: !4843, line: 150, column: 6)
!4942 = !{i32 -2145542378, i32 -2145542371, i32 -2145542319, i32 -2145542288, i32 -2145542258}
!4943 = !DILocation(line: 150, column: 6, scope: !4938, inlinedAt: !4883)
!4944 = !DILocation(line: 150, column: 6, scope: !4863, inlinedAt: !4883)
!4945 = !DILocation(line: 150, column: 6, scope: !4842, inlinedAt: !4883)
!4946 = !DILocation(line: 151, column: 3, scope: !4863, inlinedAt: !4883)
!4947 = !DILocation(line: 152, column: 20, scope: !4842, inlinedAt: !4883)
!4948 = !DILocation(line: 152, column: 26, scope: !4842, inlinedAt: !4883)
!4949 = !DILocation(line: 152, column: 33, scope: !4842, inlinedAt: !4883)
!4950 = !DILocation(line: 152, column: 2, scope: !4842, inlinedAt: !4883)
!4951 = !DILocation(line: 153, column: 2, scope: !4842, inlinedAt: !4883)
!4952 = !DILocation(line: 154, column: 1, scope: !4842, inlinedAt: !4883)
!4953 = !DILocation(line: 191, column: 6, scope: !4885, inlinedAt: !4886)
!4954 = !DILocation(line: 192, column: 23, scope: !4884, inlinedAt: !4886)
!4955 = !DILocation(line: 192, column: 27, scope: !4884, inlinedAt: !4886)
!4956 = !DILocation(line: 192, column: 33, scope: !4884, inlinedAt: !4886)
!4957 = !DILocation(line: 192, column: 7, scope: !4884, inlinedAt: !4886)
!4958 = !DILocation(line: 192, column: 5, scope: !4884, inlinedAt: !4886)
!4959 = !DILocation(line: 192, column: 3, scope: !4884, inlinedAt: !4886)
!4960 = !DILocation(line: 193, column: 9, scope: !4885, inlinedAt: !4886)
!4961 = !DILocation(line: 292, column: 6, scope: !4887)
!4962 = !DILocation(line: 292, column: 6, scope: !4828)
!4963 = !DILocation(line: 293, column: 6, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4887, file: !3, line: 292, column: 44)
!4965 = !DILocation(line: 294, column: 3, scope: !4964)
!4966 = !DILocation(line: 297, column: 24, scope: !4828)
!4967 = !DILocation(line: 297, column: 21, scope: !4828)
!4968 = !DILocation(line: 297, column: 13, scope: !4828)
!4969 = !DILocation(line: 297, column: 11, scope: !4828)
!4970 = !DILocation(line: 298, column: 7, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 298, column: 6)
!4972 = !DILocation(line: 298, column: 6, scope: !4828)
!4973 = !DILocation(line: 299, column: 6, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 298, column: 17)
!4975 = !DILocation(line: 300, column: 3, scope: !4974)
!4976 = !DILocation(line: 303, column: 2, scope: !4828)
!4977 = !DILocation(line: 308, column: 2, scope: !4828)
!4978 = !DILocation(line: 309, column: 6, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 309, column: 6)
!4980 = !DILocation(line: 309, column: 21, scope: !4979)
!4981 = !DILocation(line: 309, column: 16, scope: !4979)
!4982 = !DILocation(line: 309, column: 29, scope: !4979)
!4983 = !DILocation(line: 309, column: 27, scope: !4979)
!4984 = !DILocation(line: 309, column: 6, scope: !4828)
!4985 = !DILocation(line: 310, column: 3, scope: !4986)
!4986 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 309, column: 36)
!4987 = !DILocation(line: 311, column: 6, scope: !4986)
!4988 = !DILocation(line: 312, column: 3, scope: !4986)
!4989 = !DILocation(line: 314, column: 18, scope: !4828)
!4990 = !DILocation(line: 314, column: 12, scope: !4828)
!4991 = !DILocation(line: 315, column: 13, scope: !4828)
!4992 = !DILocation(line: 315, column: 19, scope: !4828)
!4993 = !DILocation(line: 315, column: 5, scope: !4828)
!4994 = !DILocation(line: 315, column: 11, scope: !4828)
!4995 = !DILocation(line: 316, column: 20, scope: !4828)
!4996 = !DILocation(line: 316, column: 17, scope: !4828)
!4997 = !DILocation(line: 316, column: 26, scope: !4828)
!4998 = !DILocation(line: 316, column: 2, scope: !4828)
!4999 = !DILocation(line: 316, column: 8, scope: !4828)
!5000 = !DILocation(line: 316, column: 14, scope: !4828)
!5001 = !DILocation(line: 317, column: 2, scope: !4828)
!5002 = !DILocation(line: 319, column: 22, scope: !4828)
!5003 = !DILocation(line: 319, column: 32, scope: !4828)
!5004 = !DILocation(line: 319, column: 7, scope: !4828)
!5005 = !DILocation(line: 319, column: 5, scope: !4828)
!5006 = !DILocation(line: 320, column: 6, scope: !5007)
!5007 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 320, column: 6)
!5008 = !DILocation(line: 320, column: 9, scope: !5007)
!5009 = !DILocation(line: 320, column: 6, scope: !4828)
!5010 = !DILocation(line: 321, column: 3, scope: !5007)
!5011 = !DILocation(line: 330, column: 19, scope: !4874)
!5012 = !DILocation(line: 330, column: 24, scope: !4874)
!5013 = !DILocation(line: 199, column: 6, scope: !4848, inlinedAt: !4873)
!5014 = !DILocation(line: 141, column: 6, scope: !4917, inlinedAt: !4872)
!5015 = !DILocation(line: 0, scope: !4917, inlinedAt: !4872)
!5016 = !DILocation(line: 141, column: 6, scope: !4842, inlinedAt: !4872)
!5017 = !DILocation(line: 142, column: 29, scope: !4921, inlinedAt: !4872)
!5018 = !DILocation(line: 142, column: 8, scope: !4921, inlinedAt: !4872)
!5019 = !DILocation(line: 142, column: 7, scope: !4922, inlinedAt: !4872)
!5020 = !DILocation(line: 143, column: 18, scope: !4921, inlinedAt: !4872)
!5021 = !DILocation(line: 143, column: 22, scope: !4921, inlinedAt: !4872)
!5022 = !DILocation(line: 143, column: 4, scope: !4921, inlinedAt: !4872)
!5023 = !DILocation(line: 144, column: 12, scope: !4929, inlinedAt: !4872)
!5024 = !DILocation(line: 144, column: 12, scope: !4921, inlinedAt: !4872)
!5025 = !DILocation(line: 145, column: 4, scope: !4929, inlinedAt: !4872)
!5026 = !DILocation(line: 147, column: 4, scope: !4929, inlinedAt: !4872)
!5027 = !DILocation(line: 148, column: 3, scope: !4922, inlinedAt: !4872)
!5028 = !DILocation(line: 150, column: 6, scope: !4935, inlinedAt: !4872)
!5029 = !DILocation(line: 150, column: 6, scope: !4937, inlinedAt: !4872)
!5030 = !DILocation(line: 150, column: 6, scope: !4941, inlinedAt: !4872)
!5031 = !DILocation(line: 150, column: 6, scope: !4938, inlinedAt: !4872)
!5032 = !DILocation(line: 150, column: 6, scope: !4863, inlinedAt: !4872)
!5033 = !DILocation(line: 150, column: 6, scope: !4842, inlinedAt: !4872)
!5034 = !DILocation(line: 151, column: 3, scope: !4863, inlinedAt: !4872)
!5035 = !DILocation(line: 152, column: 20, scope: !4842, inlinedAt: !4872)
!5036 = !DILocation(line: 152, column: 26, scope: !4842, inlinedAt: !4872)
!5037 = !DILocation(line: 152, column: 33, scope: !4842, inlinedAt: !4872)
!5038 = !DILocation(line: 152, column: 2, scope: !4842, inlinedAt: !4872)
!5039 = !DILocation(line: 153, column: 2, scope: !4842, inlinedAt: !4872)
!5040 = !DILocation(line: 154, column: 1, scope: !4842, inlinedAt: !4872)
!5041 = !DILocation(line: 199, column: 6, scope: !4850, inlinedAt: !4873)
!5042 = !DILocation(line: 200, column: 21, scope: !4848, inlinedAt: !4873)
!5043 = !DILocation(line: 200, column: 25, scope: !4848, inlinedAt: !4873)
!5044 = !DILocation(line: 200, column: 31, scope: !4848, inlinedAt: !4873)
!5045 = !DILocation(line: 200, column: 7, scope: !4848, inlinedAt: !4873)
!5046 = !DILocation(line: 200, column: 5, scope: !4848, inlinedAt: !4873)
!5047 = !DILocation(line: 200, column: 3, scope: !4848, inlinedAt: !4873)
!5048 = !DILocation(line: 201, column: 9, scope: !4850, inlinedAt: !4873)
!5049 = !DILocation(line: 330, column: 6, scope: !4874)
!5050 = !DILocation(line: 330, column: 6, scope: !4828)
!5051 = !DILocation(line: 331, column: 6, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !4874, file: !3, line: 330, column: 42)
!5053 = !DILocation(line: 332, column: 3, scope: !5052)
!5054 = !DILocation(line: 334, column: 19, scope: !4854)
!5055 = !DILocation(line: 334, column: 24, scope: !4854)
!5056 = !DILocation(line: 334, column: 34, scope: !4854)
!5057 = !DILocation(line: 335, column: 29, scope: !4854)
!5058 = !DILocation(line: 335, column: 26, scope: !4854)
!5059 = !DILocation(line: 335, column: 24, scope: !4854)
!5060 = !DILocation(line: 199, column: 6, scope: !4848, inlinedAt: !4853)
!5061 = !DILocation(line: 141, column: 6, scope: !4917, inlinedAt: !4847)
!5062 = !DILocation(line: 0, scope: !4917, inlinedAt: !4847)
!5063 = !DILocation(line: 141, column: 6, scope: !4842, inlinedAt: !4847)
!5064 = !DILocation(line: 142, column: 29, scope: !4921, inlinedAt: !4847)
!5065 = !DILocation(line: 142, column: 8, scope: !4921, inlinedAt: !4847)
!5066 = !DILocation(line: 142, column: 7, scope: !4922, inlinedAt: !4847)
!5067 = !DILocation(line: 143, column: 18, scope: !4921, inlinedAt: !4847)
!5068 = !DILocation(line: 143, column: 22, scope: !4921, inlinedAt: !4847)
!5069 = !DILocation(line: 143, column: 4, scope: !4921, inlinedAt: !4847)
!5070 = !DILocation(line: 144, column: 12, scope: !4929, inlinedAt: !4847)
!5071 = !DILocation(line: 144, column: 12, scope: !4921, inlinedAt: !4847)
!5072 = !DILocation(line: 145, column: 4, scope: !4929, inlinedAt: !4847)
!5073 = !DILocation(line: 147, column: 4, scope: !4929, inlinedAt: !4847)
!5074 = !DILocation(line: 148, column: 3, scope: !4922, inlinedAt: !4847)
!5075 = !DILocation(line: 150, column: 6, scope: !4935, inlinedAt: !4847)
!5076 = !DILocation(line: 150, column: 6, scope: !4937, inlinedAt: !4847)
!5077 = !DILocation(line: 150, column: 6, scope: !4941, inlinedAt: !4847)
!5078 = !DILocation(line: 150, column: 6, scope: !4938, inlinedAt: !4847)
!5079 = !DILocation(line: 150, column: 6, scope: !4863, inlinedAt: !4847)
!5080 = !DILocation(line: 150, column: 6, scope: !4842, inlinedAt: !4847)
!5081 = !DILocation(line: 151, column: 3, scope: !4863, inlinedAt: !4847)
!5082 = !DILocation(line: 152, column: 20, scope: !4842, inlinedAt: !4847)
!5083 = !DILocation(line: 152, column: 26, scope: !4842, inlinedAt: !4847)
!5084 = !DILocation(line: 152, column: 33, scope: !4842, inlinedAt: !4847)
!5085 = !DILocation(line: 152, column: 2, scope: !4842, inlinedAt: !4847)
!5086 = !DILocation(line: 153, column: 2, scope: !4842, inlinedAt: !4847)
!5087 = !DILocation(line: 154, column: 1, scope: !4842, inlinedAt: !4847)
!5088 = !DILocation(line: 199, column: 6, scope: !4850, inlinedAt: !4853)
!5089 = !DILocation(line: 200, column: 21, scope: !4848, inlinedAt: !4853)
!5090 = !DILocation(line: 200, column: 25, scope: !4848, inlinedAt: !4853)
!5091 = !DILocation(line: 200, column: 31, scope: !4848, inlinedAt: !4853)
!5092 = !DILocation(line: 200, column: 7, scope: !4848, inlinedAt: !4853)
!5093 = !DILocation(line: 200, column: 5, scope: !4848, inlinedAt: !4853)
!5094 = !DILocation(line: 200, column: 3, scope: !4848, inlinedAt: !4853)
!5095 = !DILocation(line: 201, column: 9, scope: !4850, inlinedAt: !4853)
!5096 = !DILocation(line: 334, column: 6, scope: !4854)
!5097 = !DILocation(line: 334, column: 6, scope: !4828)
!5098 = !DILocation(line: 336, column: 6, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !4854, file: !3, line: 335, column: 37)
!5100 = !DILocation(line: 337, column: 3, scope: !5099)
!5101 = !DILocation(line: 335, column: 34, scope: !4854)
!5102 = !DILabel(scope: !4828, name: "out_free", file: !3, line: 340)
!5103 = !DILocation(line: 340, column: 1, scope: !4828)
!5104 = !DILocation(line: 341, column: 8, scope: !4828)
!5105 = !DILocation(line: 341, column: 2, scope: !4828)
!5106 = !DILabel(scope: !4828, name: "out", file: !3, line: 342)
!5107 = !DILocation(line: 342, column: 1, scope: !4828)
!5108 = !DILocation(line: 343, column: 9, scope: !4828)
!5109 = !DILocation(line: 343, column: 2, scope: !4828)
!5110 = distinct !DISubprogram(name: "gntalloc_ioctl_dealloc", scope: !3, file: !3, line: 346, type: !5111, scopeLine: 348, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5111 = !DISubroutineType(types: !5112)
!5112 = !{!503, !4329, !147}
!5113 = !DILocation(line: 138, column: 29, scope: !4842, inlinedAt: !5114)
!5114 = distinct !DILocation(line: 191, column: 6, scope: !4884, inlinedAt: !5115)
!5115 = distinct !DILocation(line: 355, column: 6, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 355, column: 6)
!5117 = !DILocation(line: 138, column: 42, scope: !4842, inlinedAt: !5114)
!5118 = !DILocation(line: 138, column: 54, scope: !4842, inlinedAt: !5114)
!5119 = !DILocation(line: 140, column: 6, scope: !4842, inlinedAt: !5114)
!5120 = !DILocation(line: 150, column: 6, scope: !4862, inlinedAt: !5114)
!5121 = !DILocation(line: 189, column: 22, scope: !4885, inlinedAt: !5115)
!5122 = !DILocation(line: 189, column: 45, scope: !4885, inlinedAt: !5115)
!5123 = !DILocation(line: 189, column: 65, scope: !4885, inlinedAt: !5115)
!5124 = !DILocalVariable(name: "priv", arg: 1, scope: !5110, file: !3, line: 346, type: !4329)
!5125 = !DILocation(line: 346, column: 71, scope: !5110)
!5126 = !DILocalVariable(name: "arg", arg: 2, scope: !5110, file: !3, line: 347, type: !147)
!5127 = !DILocation(line: 347, column: 16, scope: !5110)
!5128 = !DILocalVariable(name: "i", scope: !5110, file: !3, line: 349, type: !150)
!5129 = !DILocation(line: 349, column: 6, scope: !5110)
!5130 = !DILocalVariable(name: "rc", scope: !5110, file: !3, line: 349, type: !150)
!5131 = !DILocation(line: 349, column: 9, scope: !5110)
!5132 = !DILocalVariable(name: "op", scope: !5110, file: !3, line: 350, type: !5133)
!5133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ioctl_gntalloc_dealloc_gref", file: !4833, line: 45, size: 128, elements: !5134)
!5134 = !{!5135, !5136}
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5133, file: !4833, line: 48, baseType: !254, size: 64)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5133, file: !4833, line: 50, baseType: !249, size: 32, offset: 64)
!5137 = !DILocation(line: 350, column: 37, scope: !5110)
!5138 = !DILocalVariable(name: "gref", scope: !5110, file: !3, line: 351, type: !151)
!5139 = !DILocation(line: 351, column: 24, scope: !5110)
!5140 = !DILocalVariable(name: "n", scope: !5110, file: !3, line: 351, type: !151)
!5141 = !DILocation(line: 351, column: 31, scope: !5110)
!5142 = !DILocation(line: 353, column: 2, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5144, file: !3, line: 353, column: 2)
!5144 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 353, column: 2)
!5145 = !DILocation(line: 353, column: 2, scope: !5144)
!5146 = !DILocation(line: 355, column: 21, scope: !5116)
!5147 = !DILocation(line: 355, column: 26, scope: !5116)
!5148 = !DILocation(line: 191, column: 6, scope: !4884, inlinedAt: !5115)
!5149 = !DILocation(line: 141, column: 6, scope: !4917, inlinedAt: !5114)
!5150 = !DILocation(line: 0, scope: !4917, inlinedAt: !5114)
!5151 = !DILocation(line: 141, column: 6, scope: !4842, inlinedAt: !5114)
!5152 = !DILocation(line: 142, column: 29, scope: !4921, inlinedAt: !5114)
!5153 = !DILocation(line: 142, column: 8, scope: !4921, inlinedAt: !5114)
!5154 = !DILocation(line: 142, column: 7, scope: !4922, inlinedAt: !5114)
!5155 = !DILocation(line: 143, column: 18, scope: !4921, inlinedAt: !5114)
!5156 = !DILocation(line: 143, column: 22, scope: !4921, inlinedAt: !5114)
!5157 = !DILocation(line: 143, column: 4, scope: !4921, inlinedAt: !5114)
!5158 = !DILocation(line: 144, column: 12, scope: !4929, inlinedAt: !5114)
!5159 = !DILocation(line: 144, column: 12, scope: !4921, inlinedAt: !5114)
!5160 = !DILocation(line: 145, column: 4, scope: !4929, inlinedAt: !5114)
!5161 = !DILocation(line: 147, column: 4, scope: !4929, inlinedAt: !5114)
!5162 = !DILocation(line: 148, column: 3, scope: !4922, inlinedAt: !5114)
!5163 = !DILocation(line: 150, column: 6, scope: !4935, inlinedAt: !5114)
!5164 = !DILocation(line: 150, column: 6, scope: !4937, inlinedAt: !5114)
!5165 = !DILocation(line: 150, column: 6, scope: !4941, inlinedAt: !5114)
!5166 = !DILocation(line: 150, column: 6, scope: !4938, inlinedAt: !5114)
!5167 = !DILocation(line: 150, column: 6, scope: !4863, inlinedAt: !5114)
!5168 = !DILocation(line: 150, column: 6, scope: !4842, inlinedAt: !5114)
!5169 = !DILocation(line: 151, column: 3, scope: !4863, inlinedAt: !5114)
!5170 = !DILocation(line: 152, column: 20, scope: !4842, inlinedAt: !5114)
!5171 = !DILocation(line: 152, column: 26, scope: !4842, inlinedAt: !5114)
!5172 = !DILocation(line: 152, column: 33, scope: !4842, inlinedAt: !5114)
!5173 = !DILocation(line: 152, column: 2, scope: !4842, inlinedAt: !5114)
!5174 = !DILocation(line: 153, column: 2, scope: !4842, inlinedAt: !5114)
!5175 = !DILocation(line: 154, column: 1, scope: !4842, inlinedAt: !5114)
!5176 = !DILocation(line: 191, column: 6, scope: !4885, inlinedAt: !5115)
!5177 = !DILocation(line: 192, column: 23, scope: !4884, inlinedAt: !5115)
!5178 = !DILocation(line: 192, column: 27, scope: !4884, inlinedAt: !5115)
!5179 = !DILocation(line: 192, column: 33, scope: !4884, inlinedAt: !5115)
!5180 = !DILocation(line: 192, column: 7, scope: !4884, inlinedAt: !5115)
!5181 = !DILocation(line: 192, column: 5, scope: !4884, inlinedAt: !5115)
!5182 = !DILocation(line: 192, column: 3, scope: !4884, inlinedAt: !5115)
!5183 = !DILocation(line: 193, column: 9, scope: !4885, inlinedAt: !5115)
!5184 = !DILocation(line: 355, column: 6, scope: !5116)
!5185 = !DILocation(line: 355, column: 6, scope: !5110)
!5186 = !DILocation(line: 356, column: 6, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5116, file: !3, line: 355, column: 44)
!5188 = !DILocation(line: 357, column: 3, scope: !5187)
!5189 = !DILocation(line: 360, column: 2, scope: !5110)
!5190 = !DILocation(line: 361, column: 20, scope: !5110)
!5191 = !DILocation(line: 361, column: 29, scope: !5110)
!5192 = !DILocation(line: 361, column: 39, scope: !5110)
!5193 = !DILocation(line: 361, column: 9, scope: !5110)
!5194 = !DILocation(line: 361, column: 7, scope: !5110)
!5195 = !DILocation(line: 362, column: 6, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 362, column: 6)
!5197 = !DILocation(line: 362, column: 6, scope: !5110)
!5198 = !DILocation(line: 367, column: 10, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 367, column: 3)
!5200 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 362, column: 12)
!5201 = !DILocation(line: 367, column: 8, scope: !5199)
!5202 = !DILocation(line: 367, column: 15, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 367, column: 3)
!5204 = !DILocation(line: 367, column: 22, scope: !5203)
!5205 = !DILocation(line: 367, column: 17, scope: !5203)
!5206 = !DILocation(line: 367, column: 3, scope: !5199)
!5207 = !DILocalVariable(name: "__mptr", scope: !5208, file: !3, line: 368, type: !147)
!5208 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 368, column: 8)
!5209 = distinct !DILexicalBlock(scope: !5203, file: !3, line: 367, column: 34)
!5210 = !DILocation(line: 368, column: 8, scope: !5208)
!5211 = !DILocation(line: 368, column: 8, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5208, file: !3, line: 368, column: 8)
!5213 = !DILocation(line: 368, column: 6, scope: !5209)
!5214 = !DILocation(line: 370, column: 14, scope: !5209)
!5215 = !DILocation(line: 370, column: 20, scope: !5209)
!5216 = !DILocation(line: 370, column: 4, scope: !5209)
!5217 = !DILocation(line: 371, column: 4, scope: !5209)
!5218 = !DILocation(line: 371, column: 10, scope: !5209)
!5219 = !DILocation(line: 371, column: 15, scope: !5209)
!5220 = !DILocation(line: 372, column: 11, scope: !5209)
!5221 = !DILocation(line: 372, column: 9, scope: !5209)
!5222 = !DILocation(line: 373, column: 3, scope: !5209)
!5223 = !DILocation(line: 367, column: 30, scope: !5203)
!5224 = !DILocation(line: 367, column: 3, scope: !5203)
!5225 = distinct !{!5225, !5206, !5226}
!5226 = !DILocation(line: 373, column: 3, scope: !5199)
!5227 = !DILocation(line: 374, column: 2, scope: !5200)
!5228 = !DILocation(line: 375, column: 6, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 374, column: 9)
!5230 = !DILocation(line: 378, column: 2, scope: !5110)
!5231 = !DILocation(line: 380, column: 2, scope: !5110)
!5232 = !DILabel(scope: !5110, name: "dealloc_grant_out", file: !3, line: 381)
!5233 = !DILocation(line: 381, column: 1, scope: !5110)
!5234 = !DILocation(line: 382, column: 9, scope: !5110)
!5235 = !DILocation(line: 382, column: 2, scope: !5110)
!5236 = distinct !DISubprogram(name: "gntalloc_ioctl_unmap_notify", scope: !3, file: !3, line: 385, type: !5111, scopeLine: 387, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5237 = !DILocation(line: 138, column: 29, scope: !4842, inlinedAt: !5238)
!5238 = distinct !DILocation(line: 191, column: 6, scope: !4884, inlinedAt: !5239)
!5239 = distinct !DILocation(line: 394, column: 6, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 394, column: 6)
!5241 = !DILocation(line: 138, column: 42, scope: !4842, inlinedAt: !5238)
!5242 = !DILocation(line: 138, column: 54, scope: !4842, inlinedAt: !5238)
!5243 = !DILocation(line: 140, column: 6, scope: !4842, inlinedAt: !5238)
!5244 = !DILocation(line: 150, column: 6, scope: !4862, inlinedAt: !5238)
!5245 = !DILocation(line: 189, column: 22, scope: !4885, inlinedAt: !5239)
!5246 = !DILocation(line: 189, column: 45, scope: !4885, inlinedAt: !5239)
!5247 = !DILocation(line: 189, column: 65, scope: !4885, inlinedAt: !5239)
!5248 = !DILocalVariable(name: "priv", arg: 1, scope: !5236, file: !3, line: 385, type: !4329)
!5249 = !DILocation(line: 385, column: 76, scope: !5236)
!5250 = !DILocalVariable(name: "arg", arg: 2, scope: !5236, file: !3, line: 386, type: !147)
!5251 = !DILocation(line: 386, column: 16, scope: !5236)
!5252 = !DILocalVariable(name: "op", scope: !5236, file: !3, line: 388, type: !5253)
!5253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ioctl_gntalloc_unmap_notify", file: !4833, line: 65, size: 128, elements: !5254)
!5254 = !{!5255, !5256, !5257}
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5253, file: !4833, line: 72, baseType: !254, size: 64)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !5253, file: !4833, line: 74, baseType: !249, size: 32, offset: 64)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "event_channel_port", scope: !5253, file: !4833, line: 76, baseType: !249, size: 32, offset: 96)
!5258 = !DILocation(line: 388, column: 37, scope: !5236)
!5259 = !DILocalVariable(name: "gref", scope: !5236, file: !3, line: 389, type: !151)
!5260 = !DILocation(line: 389, column: 24, scope: !5236)
!5261 = !DILocalVariable(name: "index", scope: !5236, file: !3, line: 390, type: !3027)
!5262 = !DILocation(line: 390, column: 11, scope: !5236)
!5263 = !DILocalVariable(name: "pgoff", scope: !5236, file: !3, line: 391, type: !150)
!5264 = !DILocation(line: 391, column: 6, scope: !5236)
!5265 = !DILocalVariable(name: "rc", scope: !5236, file: !3, line: 392, type: !150)
!5266 = !DILocation(line: 392, column: 6, scope: !5236)
!5267 = !DILocation(line: 394, column: 21, scope: !5240)
!5268 = !DILocation(line: 394, column: 26, scope: !5240)
!5269 = !DILocation(line: 191, column: 6, scope: !4884, inlinedAt: !5239)
!5270 = !DILocation(line: 141, column: 6, scope: !4917, inlinedAt: !5238)
!5271 = !DILocation(line: 0, scope: !4917, inlinedAt: !5238)
!5272 = !DILocation(line: 141, column: 6, scope: !4842, inlinedAt: !5238)
!5273 = !DILocation(line: 142, column: 29, scope: !4921, inlinedAt: !5238)
!5274 = !DILocation(line: 142, column: 8, scope: !4921, inlinedAt: !5238)
!5275 = !DILocation(line: 142, column: 7, scope: !4922, inlinedAt: !5238)
!5276 = !DILocation(line: 143, column: 18, scope: !4921, inlinedAt: !5238)
!5277 = !DILocation(line: 143, column: 22, scope: !4921, inlinedAt: !5238)
!5278 = !DILocation(line: 143, column: 4, scope: !4921, inlinedAt: !5238)
!5279 = !DILocation(line: 144, column: 12, scope: !4929, inlinedAt: !5238)
!5280 = !DILocation(line: 144, column: 12, scope: !4921, inlinedAt: !5238)
!5281 = !DILocation(line: 145, column: 4, scope: !4929, inlinedAt: !5238)
!5282 = !DILocation(line: 147, column: 4, scope: !4929, inlinedAt: !5238)
!5283 = !DILocation(line: 148, column: 3, scope: !4922, inlinedAt: !5238)
!5284 = !DILocation(line: 150, column: 6, scope: !4935, inlinedAt: !5238)
!5285 = !DILocation(line: 150, column: 6, scope: !4937, inlinedAt: !5238)
!5286 = !DILocation(line: 150, column: 6, scope: !4941, inlinedAt: !5238)
!5287 = !DILocation(line: 150, column: 6, scope: !4938, inlinedAt: !5238)
!5288 = !DILocation(line: 150, column: 6, scope: !4863, inlinedAt: !5238)
!5289 = !DILocation(line: 150, column: 6, scope: !4842, inlinedAt: !5238)
!5290 = !DILocation(line: 151, column: 3, scope: !4863, inlinedAt: !5238)
!5291 = !DILocation(line: 152, column: 20, scope: !4842, inlinedAt: !5238)
!5292 = !DILocation(line: 152, column: 26, scope: !4842, inlinedAt: !5238)
!5293 = !DILocation(line: 152, column: 33, scope: !4842, inlinedAt: !5238)
!5294 = !DILocation(line: 152, column: 2, scope: !4842, inlinedAt: !5238)
!5295 = !DILocation(line: 153, column: 2, scope: !4842, inlinedAt: !5238)
!5296 = !DILocation(line: 154, column: 1, scope: !4842, inlinedAt: !5238)
!5297 = !DILocation(line: 191, column: 6, scope: !4885, inlinedAt: !5239)
!5298 = !DILocation(line: 192, column: 23, scope: !4884, inlinedAt: !5239)
!5299 = !DILocation(line: 192, column: 27, scope: !4884, inlinedAt: !5239)
!5300 = !DILocation(line: 192, column: 33, scope: !4884, inlinedAt: !5239)
!5301 = !DILocation(line: 192, column: 7, scope: !4884, inlinedAt: !5239)
!5302 = !DILocation(line: 192, column: 5, scope: !4884, inlinedAt: !5239)
!5303 = !DILocation(line: 192, column: 3, scope: !4884, inlinedAt: !5239)
!5304 = !DILocation(line: 193, column: 9, scope: !4885, inlinedAt: !5239)
!5305 = !DILocation(line: 394, column: 6, scope: !5240)
!5306 = !DILocation(line: 394, column: 6, scope: !5236)
!5307 = !DILocation(line: 395, column: 3, scope: !5240)
!5308 = !DILocation(line: 397, column: 13, scope: !5236)
!5309 = !DILocation(line: 397, column: 19, scope: !5236)
!5310 = !DILocation(line: 397, column: 8, scope: !5236)
!5311 = !DILocation(line: 398, column: 13, scope: !5236)
!5312 = !DILocation(line: 398, column: 19, scope: !5236)
!5313 = !DILocation(line: 398, column: 10, scope: !5236)
!5314 = !DILocation(line: 398, column: 8, scope: !5236)
!5315 = !DILocation(line: 400, column: 2, scope: !5236)
!5316 = !DILocation(line: 402, column: 20, scope: !5236)
!5317 = !DILocation(line: 402, column: 26, scope: !5236)
!5318 = !DILocation(line: 402, column: 9, scope: !5236)
!5319 = !DILocation(line: 402, column: 7, scope: !5236)
!5320 = !DILocation(line: 403, column: 7, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 403, column: 6)
!5322 = !DILocation(line: 403, column: 6, scope: !5236)
!5323 = !DILocation(line: 404, column: 6, scope: !5324)
!5324 = distinct !DILexicalBlock(scope: !5321, file: !3, line: 403, column: 13)
!5325 = !DILocation(line: 405, column: 3, scope: !5324)
!5326 = !DILocation(line: 408, column: 9, scope: !5327)
!5327 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 408, column: 6)
!5328 = !DILocation(line: 408, column: 16, scope: !5327)
!5329 = !DILocation(line: 408, column: 6, scope: !5236)
!5330 = !DILocation(line: 409, column: 6, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5327, file: !3, line: 408, column: 70)
!5332 = !DILocation(line: 410, column: 3, scope: !5331)
!5333 = !DILocation(line: 420, column: 9, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 420, column: 6)
!5335 = !DILocation(line: 420, column: 16, scope: !5334)
!5336 = !DILocation(line: 420, column: 6, scope: !5236)
!5337 = !DILocation(line: 421, column: 21, scope: !5338)
!5338 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 421, column: 7)
!5339 = distinct !DILexicalBlock(scope: !5334, file: !3, line: 420, column: 43)
!5340 = !DILocation(line: 421, column: 7, scope: !5338)
!5341 = !DILocation(line: 421, column: 7, scope: !5339)
!5342 = !DILocation(line: 422, column: 7, scope: !5343)
!5343 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 421, column: 42)
!5344 = !DILocation(line: 423, column: 4, scope: !5343)
!5345 = !DILocation(line: 425, column: 2, scope: !5339)
!5346 = !DILocation(line: 427, column: 6, scope: !5347)
!5347 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 427, column: 6)
!5348 = !DILocation(line: 427, column: 12, scope: !5347)
!5349 = !DILocation(line: 427, column: 19, scope: !5347)
!5350 = !DILocation(line: 427, column: 25, scope: !5347)
!5351 = !DILocation(line: 427, column: 6, scope: !5236)
!5352 = !DILocation(line: 428, column: 14, scope: !5347)
!5353 = !DILocation(line: 428, column: 20, scope: !5347)
!5354 = !DILocation(line: 428, column: 27, scope: !5347)
!5355 = !DILocation(line: 428, column: 3, scope: !5347)
!5356 = !DILocation(line: 430, column: 26, scope: !5236)
!5357 = !DILocation(line: 430, column: 23, scope: !5236)
!5358 = !DILocation(line: 430, column: 2, scope: !5236)
!5359 = !DILocation(line: 430, column: 8, scope: !5236)
!5360 = !DILocation(line: 430, column: 15, scope: !5236)
!5361 = !DILocation(line: 430, column: 21, scope: !5236)
!5362 = !DILocation(line: 431, column: 23, scope: !5236)
!5363 = !DILocation(line: 431, column: 2, scope: !5236)
!5364 = !DILocation(line: 431, column: 8, scope: !5236)
!5365 = !DILocation(line: 431, column: 15, scope: !5236)
!5366 = !DILocation(line: 431, column: 21, scope: !5236)
!5367 = !DILocation(line: 432, column: 26, scope: !5236)
!5368 = !DILocation(line: 432, column: 2, scope: !5236)
!5369 = !DILocation(line: 432, column: 8, scope: !5236)
!5370 = !DILocation(line: 432, column: 15, scope: !5236)
!5371 = !DILocation(line: 432, column: 21, scope: !5236)
!5372 = !DILocation(line: 433, column: 5, scope: !5236)
!5373 = !DILocation(line: 433, column: 2, scope: !5236)
!5374 = !DILabel(scope: !5236, name: "unlock_out", file: !3, line: 435)
!5375 = !DILocation(line: 435, column: 2, scope: !5236)
!5376 = !DILocation(line: 436, column: 2, scope: !5236)
!5377 = !DILocation(line: 437, column: 9, scope: !5236)
!5378 = !DILocation(line: 437, column: 2, scope: !5236)
!5379 = !DILocation(line: 438, column: 1, scope: !5236)
!5380 = distinct !DISubprogram(name: "kcalloc", scope: !134, file: !134, line: 601, type: !5381, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5381 = !DISubroutineType(types: !5382)
!5382 = !{!147, !1150, !1150, !148}
!5383 = !DILocalVariable(name: "n", arg: 1, scope: !5380, file: !134, line: 601, type: !1150)
!5384 = !DILocation(line: 601, column: 36, scope: !5380)
!5385 = !DILocalVariable(name: "size", arg: 2, scope: !5380, file: !134, line: 601, type: !1150)
!5386 = !DILocation(line: 601, column: 46, scope: !5380)
!5387 = !DILocalVariable(name: "flags", arg: 3, scope: !5380, file: !134, line: 601, type: !148)
!5388 = !DILocation(line: 601, column: 58, scope: !5380)
!5389 = !DILocation(line: 603, column: 23, scope: !5380)
!5390 = !DILocation(line: 603, column: 26, scope: !5380)
!5391 = !DILocation(line: 603, column: 32, scope: !5380)
!5392 = !DILocation(line: 603, column: 38, scope: !5380)
!5393 = !DILocation(line: 603, column: 9, scope: !5380)
!5394 = !DILocation(line: 603, column: 2, scope: !5380)
!5395 = distinct !DISubprogram(name: "do_cleanup", scope: !3, file: !3, line: 112, type: !2075, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5396 = !DILocalVariable(name: "gref", scope: !5395, file: !3, line: 114, type: !151)
!5397 = !DILocation(line: 114, column: 24, scope: !5395)
!5398 = !DILocalVariable(name: "n", scope: !5395, file: !3, line: 114, type: !151)
!5399 = !DILocation(line: 114, column: 31, scope: !5395)
!5400 = !DILocalVariable(name: "__mptr", scope: !5401, file: !3, line: 115, type: !147)
!5401 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 115, column: 2)
!5402 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 115, column: 2)
!5403 = !DILocation(line: 115, column: 2, scope: !5401)
!5404 = !DILocation(line: 115, column: 2, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5401, file: !3, line: 115, column: 2)
!5406 = !DILocation(line: 115, column: 2, scope: !5402)
!5407 = !DILocalVariable(name: "__mptr", scope: !5408, file: !3, line: 115, type: !147)
!5408 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 115, column: 2)
!5409 = !DILocation(line: 115, column: 2, scope: !5408)
!5410 = !DILocation(line: 115, column: 2, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5408, file: !3, line: 115, column: 2)
!5412 = !DILocation(line: 115, column: 2, scope: !5413)
!5413 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 115, column: 2)
!5414 = !DILocation(line: 116, column: 8, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5416, file: !3, line: 116, column: 7)
!5416 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 115, column: 59)
!5417 = !DILocation(line: 116, column: 14, scope: !5415)
!5418 = !DILocation(line: 116, column: 7, scope: !5416)
!5419 = !DILocation(line: 117, column: 15, scope: !5415)
!5420 = !DILocation(line: 117, column: 4, scope: !5415)
!5421 = !DILocation(line: 118, column: 2, scope: !5416)
!5422 = !DILocalVariable(name: "__mptr", scope: !5423, file: !3, line: 115, type: !147)
!5423 = distinct !DILexicalBlock(scope: !5413, file: !3, line: 115, column: 2)
!5424 = !DILocation(line: 115, column: 2, scope: !5423)
!5425 = !DILocation(line: 115, column: 2, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5423, file: !3, line: 115, column: 2)
!5427 = distinct !{!5427, !5406, !5428}
!5428 = !DILocation(line: 118, column: 2, scope: !5402)
!5429 = !DILocation(line: 119, column: 1, scope: !5395)
!5430 = distinct !DISubprogram(name: "add_grefs", scope: !3, file: !3, line: 121, type: !5431, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5431 = !DISubroutineType(types: !5432)
!5432 = !{!150, !4831, !4907, !4329}
!5433 = !DILocalVariable(name: "op", arg: 1, scope: !5430, file: !3, line: 121, type: !4831)
!5434 = !DILocation(line: 121, column: 56, scope: !5430)
!5435 = !DILocalVariable(name: "gref_ids", arg: 2, scope: !5430, file: !3, line: 122, type: !4907)
!5436 = !DILocation(line: 122, column: 12, scope: !5430)
!5437 = !DILocalVariable(name: "priv", arg: 3, scope: !5430, file: !3, line: 122, type: !4329)
!5438 = !DILocation(line: 122, column: 57, scope: !5430)
!5439 = !DILocalVariable(name: "i", scope: !5430, file: !3, line: 124, type: !150)
!5440 = !DILocation(line: 124, column: 6, scope: !5430)
!5441 = !DILocalVariable(name: "rc", scope: !5430, file: !3, line: 124, type: !150)
!5442 = !DILocation(line: 124, column: 9, scope: !5430)
!5443 = !DILocalVariable(name: "readonly", scope: !5430, file: !3, line: 124, type: !150)
!5444 = !DILocation(line: 124, column: 13, scope: !5430)
!5445 = !DILocalVariable(name: "queue_gref", scope: !5430, file: !3, line: 125, type: !155)
!5446 = !DILocation(line: 125, column: 2, scope: !5430)
!5447 = !DILocalVariable(name: "queue_file", scope: !5430, file: !3, line: 126, type: !155)
!5448 = !DILocation(line: 126, column: 2, scope: !5430)
!5449 = !DILocalVariable(name: "gref", scope: !5430, file: !3, line: 127, type: !151)
!5450 = !DILocation(line: 127, column: 24, scope: !5430)
!5451 = !DILocalVariable(name: "next", scope: !5430, file: !3, line: 127, type: !151)
!5452 = !DILocation(line: 127, column: 31, scope: !5430)
!5453 = !DILocation(line: 129, column: 15, scope: !5430)
!5454 = !DILocation(line: 129, column: 19, scope: !5430)
!5455 = !DILocation(line: 129, column: 25, scope: !5430)
!5456 = !DILocation(line: 129, column: 13, scope: !5430)
!5457 = !DILocation(line: 129, column: 11, scope: !5430)
!5458 = !DILocation(line: 130, column: 9, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 130, column: 2)
!5460 = !DILocation(line: 130, column: 7, scope: !5459)
!5461 = !DILocation(line: 130, column: 14, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5459, file: !3, line: 130, column: 2)
!5463 = !DILocation(line: 130, column: 18, scope: !5462)
!5464 = !DILocation(line: 130, column: 22, scope: !5462)
!5465 = !DILocation(line: 130, column: 16, scope: !5462)
!5466 = !DILocation(line: 130, column: 2, scope: !5459)
!5467 = !DILocation(line: 131, column: 10, scope: !5468)
!5468 = distinct !DILexicalBlock(scope: !5462, file: !3, line: 130, column: 34)
!5469 = !DILocation(line: 131, column: 8, scope: !5468)
!5470 = !DILocation(line: 132, column: 8, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 132, column: 7)
!5472 = !DILocation(line: 132, column: 7, scope: !5468)
!5473 = !DILocation(line: 133, column: 7, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5471, file: !3, line: 132, column: 14)
!5475 = !DILocation(line: 134, column: 4, scope: !5474)
!5476 = !DILocation(line: 136, column: 18, scope: !5468)
!5477 = !DILocation(line: 136, column: 24, scope: !5468)
!5478 = !DILocation(line: 136, column: 3, scope: !5468)
!5479 = !DILocation(line: 137, column: 18, scope: !5468)
!5480 = !DILocation(line: 137, column: 24, scope: !5468)
!5481 = !DILocation(line: 137, column: 3, scope: !5468)
!5482 = !DILocation(line: 138, column: 3, scope: !5468)
!5483 = !DILocation(line: 138, column: 9, scope: !5468)
!5484 = !DILocation(line: 138, column: 15, scope: !5468)
!5485 = !DILocation(line: 139, column: 22, scope: !5468)
!5486 = !DILocation(line: 139, column: 26, scope: !5468)
!5487 = !DILocation(line: 139, column: 34, scope: !5468)
!5488 = !DILocation(line: 139, column: 36, scope: !5468)
!5489 = !DILocation(line: 139, column: 32, scope: !5468)
!5490 = !DILocation(line: 139, column: 3, scope: !5468)
!5491 = !DILocation(line: 139, column: 9, scope: !5468)
!5492 = !DILocation(line: 139, column: 20, scope: !5468)
!5493 = !DILocation(line: 140, column: 16, scope: !5468)
!5494 = !DILocation(line: 140, column: 3, scope: !5468)
!5495 = !DILocation(line: 140, column: 9, scope: !5468)
!5496 = !DILocation(line: 140, column: 14, scope: !5468)
!5497 = !DILocation(line: 141, column: 8, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 141, column: 7)
!5499 = !DILocation(line: 141, column: 14, scope: !5498)
!5500 = !DILocation(line: 141, column: 7, scope: !5468)
!5501 = !DILocation(line: 142, column: 7, scope: !5502)
!5502 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 141, column: 20)
!5503 = !DILocation(line: 143, column: 4, scope: !5502)
!5504 = !DILocation(line: 147, column: 36, scope: !5468)
!5505 = !DILocation(line: 147, column: 40, scope: !5468)
!5506 = !DILocation(line: 148, column: 24, scope: !5468)
!5507 = !DILocation(line: 148, column: 30, scope: !5468)
!5508 = !DILocation(line: 148, column: 8, scope: !5468)
!5509 = !DILocation(line: 149, column: 8, scope: !5468)
!5510 = !DILocation(line: 147, column: 8, scope: !5468)
!5511 = !DILocation(line: 147, column: 6, scope: !5468)
!5512 = !DILocation(line: 150, column: 7, scope: !5513)
!5513 = distinct !DILexicalBlock(scope: !5468, file: !3, line: 150, column: 7)
!5514 = !DILocation(line: 150, column: 10, scope: !5513)
!5515 = !DILocation(line: 150, column: 7, scope: !5468)
!5516 = !DILocation(line: 151, column: 4, scope: !5513)
!5517 = !DILocation(line: 152, column: 33, scope: !5468)
!5518 = !DILocation(line: 152, column: 17, scope: !5468)
!5519 = !DILocation(line: 152, column: 23, scope: !5468)
!5520 = !DILocation(line: 152, column: 31, scope: !5468)
!5521 = !DILocation(line: 152, column: 3, scope: !5468)
!5522 = !DILocation(line: 152, column: 12, scope: !5468)
!5523 = !DILocation(line: 152, column: 15, scope: !5468)
!5524 = !DILocation(line: 153, column: 2, scope: !5468)
!5525 = !DILocation(line: 130, column: 30, scope: !5462)
!5526 = !DILocation(line: 130, column: 2, scope: !5462)
!5527 = distinct !{!5527, !5466, !5528}
!5528 = !DILocation(line: 153, column: 2, scope: !5459)
!5529 = !DILocation(line: 156, column: 2, scope: !5430)
!5530 = !DILocation(line: 157, column: 2, scope: !5430)
!5531 = !DILocation(line: 158, column: 33, scope: !5430)
!5532 = !DILocation(line: 158, column: 39, scope: !5430)
!5533 = !DILocation(line: 158, column: 2, scope: !5430)
!5534 = !DILocation(line: 159, column: 2, scope: !5430)
!5535 = !DILocation(line: 161, column: 2, scope: !5430)
!5536 = !DILabel(scope: !5430, name: "undo", file: !3, line: 163)
!5537 = !DILocation(line: 163, column: 1, scope: !5430)
!5538 = !DILocation(line: 164, column: 2, scope: !5430)
!5539 = !DILocation(line: 165, column: 16, scope: !5430)
!5540 = !DILocation(line: 165, column: 20, scope: !5430)
!5541 = !DILocation(line: 165, column: 28, scope: !5430)
!5542 = !DILocation(line: 165, column: 26, scope: !5430)
!5543 = !DILocation(line: 165, column: 12, scope: !5430)
!5544 = !DILocalVariable(name: "__mptr", scope: !5545, file: !3, line: 167, type: !147)
!5545 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 167, column: 2)
!5546 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 167, column: 2)
!5547 = !DILocation(line: 167, column: 2, scope: !5545)
!5548 = !DILocation(line: 167, column: 2, scope: !5549)
!5549 = distinct !DILexicalBlock(scope: !5545, file: !3, line: 167, column: 2)
!5550 = !DILocation(line: 167, column: 2, scope: !5546)
!5551 = !DILocalVariable(name: "__mptr", scope: !5552, file: !3, line: 167, type: !147)
!5552 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 167, column: 2)
!5553 = !DILocation(line: 167, column: 2, scope: !5552)
!5554 = !DILocation(line: 167, column: 2, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !5552, file: !3, line: 167, column: 2)
!5556 = !DILocation(line: 167, column: 2, scope: !5557)
!5557 = distinct !DILexicalBlock(scope: !5546, file: !3, line: 167, column: 2)
!5558 = !DILocation(line: 168, column: 13, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 167, column: 63)
!5560 = !DILocation(line: 168, column: 19, scope: !5559)
!5561 = !DILocation(line: 168, column: 3, scope: !5559)
!5562 = !DILocation(line: 169, column: 14, scope: !5559)
!5563 = !DILocation(line: 169, column: 3, scope: !5559)
!5564 = !DILocation(line: 170, column: 2, scope: !5559)
!5565 = !DILocalVariable(name: "__mptr", scope: !5566, file: !3, line: 167, type: !147)
!5566 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 167, column: 2)
!5567 = !DILocation(line: 167, column: 2, scope: !5566)
!5568 = !DILocation(line: 167, column: 2, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5566, file: !3, line: 167, column: 2)
!5570 = distinct !{!5570, !5550, !5571}
!5571 = !DILocation(line: 170, column: 2, scope: !5546)
!5572 = !DILocation(line: 178, column: 6, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 178, column: 6)
!5574 = !DILocation(line: 178, column: 6, scope: !5430)
!5575 = !DILocation(line: 179, column: 3, scope: !5573)
!5576 = !DILocation(line: 180, column: 2, scope: !5430)
!5577 = !DILocation(line: 181, column: 9, scope: !5430)
!5578 = !DILocation(line: 181, column: 2, scope: !5430)
!5579 = !DILocation(line: 182, column: 1, scope: !5430)
!5580 = distinct !DISubprogram(name: "copy_overflow", scope: !4843, file: !4843, line: 132, type: !5581, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5581 = !DISubroutineType(types: !5582)
!5582 = !{null, !150, !167}
!5583 = !DILocalVariable(name: "size", arg: 1, scope: !5580, file: !4843, line: 132, type: !150)
!5584 = !DILocation(line: 132, column: 38, scope: !5580)
!5585 = !DILocalVariable(name: "count", arg: 2, scope: !5580, file: !4843, line: 132, type: !167)
!5586 = !DILocation(line: 132, column: 58, scope: !5580)
!5587 = !DILocalVariable(name: "__ret_warn_on", scope: !5588, file: !4843, line: 134, type: !150)
!5588 = distinct !DILexicalBlock(scope: !5580, file: !4843, line: 134, column: 2)
!5589 = !DILocation(line: 134, column: 2, scope: !5588)
!5590 = !DILocation(line: 134, column: 2, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5588, file: !4843, line: 134, column: 2)
!5592 = !DILocation(line: 134, column: 2, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5591, file: !4843, line: 134, column: 2)
!5594 = !DILocation(line: 134, column: 2, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5593, file: !4843, line: 134, column: 2)
!5596 = !DILocation(line: 134, column: 2, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5593, file: !4843, line: 134, column: 2)
!5598 = !DILocation(line: 134, column: 2, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5597, file: !4843, line: 134, column: 2)
!5600 = !DILocation(line: 134, column: 2, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5597, file: !4843, line: 134, column: 2)
!5602 = !{i32 -2145544949, i32 -2145544920, i32 -2145544874, i32 -2145544816, i32 -2145544762, i32 -2145544708, i32 -2145544653, i32 -2145544622}
!5603 = !DILocation(line: 134, column: 2, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5597, file: !4843, line: 134, column: 2)
!5605 = !{i32 -2145544202, i32 -2145544195, i32 -2145544143, i32 -2145544112, i32 -2145544082}
!5606 = !DILocation(line: 134, column: 2, scope: !5607)
!5607 = distinct !DILexicalBlock(scope: !5597, file: !4843, line: 134, column: 2)
!5608 = !DILocation(line: 134, column: 2, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5593, file: !4843, line: 134, column: 2)
!5610 = !DILocation(line: 135, column: 1, scope: !5580)
!5611 = distinct !DISubprogram(name: "check_object_size", scope: !4843, file: !4843, line: 122, type: !5612, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5612 = !DISubroutineType(types: !5613)
!5613 = !{null, !2320, !167, !358}
!5614 = !DILocalVariable(name: "ptr", arg: 1, scope: !5611, file: !4843, line: 122, type: !2320)
!5615 = !DILocation(line: 122, column: 50, scope: !5611)
!5616 = !DILocalVariable(name: "n", arg: 2, scope: !5611, file: !4843, line: 122, type: !167)
!5617 = !DILocation(line: 122, column: 69, scope: !5611)
!5618 = !DILocalVariable(name: "to_user", arg: 3, scope: !5611, file: !4843, line: 123, type: !358)
!5619 = !DILocation(line: 123, column: 15, scope: !5611)
!5620 = !DILocation(line: 124, column: 3, scope: !5611)
!5621 = distinct !DISubprogram(name: "kmalloc_array", scope: !134, file: !134, line: 584, type: !5381, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5622 = !DILocation(line: 445, column: 72, scope: !4359, inlinedAt: !5623)
!5623 = distinct !DILocation(line: 552, column: 10, scope: !4364, inlinedAt: !5624)
!5624 = distinct !DILocation(line: 591, column: 10, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5621, file: !134, line: 590, column: 6)
!5626 = !DILocation(line: 446, column: 9, scope: !4359, inlinedAt: !5623)
!5627 = !DILocation(line: 446, column: 23, scope: !4359, inlinedAt: !5623)
!5628 = !DILocation(line: 448, column: 8, scope: !4359, inlinedAt: !5623)
!5629 = !DILocation(line: 318, column: 67, scope: !4377, inlinedAt: !5630)
!5630 = distinct !DILocation(line: 553, column: 20, scope: !4364, inlinedAt: !5624)
!5631 = !DILocation(line: 346, column: 58, scope: !4383, inlinedAt: !5632)
!5632 = distinct !DILocation(line: 547, column: 11, scope: !4364, inlinedAt: !5624)
!5633 = !DILocation(line: 472, column: 28, scope: !4389, inlinedAt: !5634)
!5634 = distinct !DILocation(line: 481, column: 9, scope: !4394, inlinedAt: !5635)
!5635 = distinct !DILocation(line: 545, column: 11, scope: !4396, inlinedAt: !5624)
!5636 = !DILocation(line: 472, column: 40, scope: !4389, inlinedAt: !5634)
!5637 = !DILocation(line: 472, column: 60, scope: !4389, inlinedAt: !5634)
!5638 = !DILocation(line: 478, column: 51, scope: !4394, inlinedAt: !5635)
!5639 = !DILocation(line: 478, column: 63, scope: !4394, inlinedAt: !5635)
!5640 = !DILocation(line: 480, column: 15, scope: !4394, inlinedAt: !5635)
!5641 = !DILocation(line: 538, column: 45, scope: !4366, inlinedAt: !5624)
!5642 = !DILocation(line: 538, column: 57, scope: !4366, inlinedAt: !5624)
!5643 = !DILocation(line: 542, column: 16, scope: !4364, inlinedAt: !5624)
!5644 = !DILocalVariable(name: "n", arg: 1, scope: !5621, file: !134, line: 584, type: !1150)
!5645 = !DILocation(line: 584, column: 42, scope: !5621)
!5646 = !DILocalVariable(name: "size", arg: 2, scope: !5621, file: !134, line: 584, type: !1150)
!5647 = !DILocation(line: 584, column: 52, scope: !5621)
!5648 = !DILocalVariable(name: "flags", arg: 3, scope: !5621, file: !134, line: 584, type: !148)
!5649 = !DILocation(line: 584, column: 64, scope: !5621)
!5650 = !DILocalVariable(name: "bytes", scope: !5621, file: !134, line: 586, type: !1150)
!5651 = !DILocation(line: 586, column: 9, scope: !5621)
!5652 = !DILocalVariable(name: "__a", scope: !5653, file: !134, line: 588, type: !1150)
!5653 = distinct !DILexicalBlock(scope: !5654, file: !134, line: 588, column: 6)
!5654 = distinct !DILexicalBlock(scope: !5621, file: !134, line: 588, column: 6)
!5655 = !DILocation(line: 588, column: 6, scope: !5653)
!5656 = !DILocalVariable(name: "__b", scope: !5653, file: !134, line: 588, type: !1150)
!5657 = !DILocalVariable(name: "__d", scope: !5653, file: !134, line: 588, type: !5658)
!5658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!5659 = !DILocation(line: 588, column: 6, scope: !5654)
!5660 = !DILocation(line: 588, column: 6, scope: !5621)
!5661 = !DILocation(line: 589, column: 3, scope: !5654)
!5662 = !DILocation(line: 590, column: 27, scope: !5625)
!5663 = !DILocation(line: 590, column: 6, scope: !5625)
!5664 = !DILocation(line: 590, column: 30, scope: !5625)
!5665 = !DILocation(line: 590, column: 54, scope: !5625)
!5666 = !DILocation(line: 590, column: 33, scope: !5625)
!5667 = !DILocation(line: 590, column: 6, scope: !5621)
!5668 = !DILocation(line: 591, column: 18, scope: !5625)
!5669 = !DILocation(line: 591, column: 25, scope: !5625)
!5670 = !DILocation(line: 540, column: 27, scope: !4365, inlinedAt: !5624)
!5671 = !DILocation(line: 540, column: 6, scope: !4365, inlinedAt: !5624)
!5672 = !DILocation(line: 540, column: 6, scope: !4366, inlinedAt: !5624)
!5673 = !DILocation(line: 544, column: 7, scope: !4396, inlinedAt: !5624)
!5674 = !DILocation(line: 544, column: 12, scope: !4396, inlinedAt: !5624)
!5675 = !DILocation(line: 544, column: 7, scope: !4364, inlinedAt: !5624)
!5676 = !DILocation(line: 545, column: 25, scope: !4396, inlinedAt: !5624)
!5677 = !DILocation(line: 545, column: 31, scope: !4396, inlinedAt: !5624)
!5678 = !DILocation(line: 480, column: 33, scope: !4394, inlinedAt: !5635)
!5679 = !DILocation(line: 480, column: 23, scope: !4394, inlinedAt: !5635)
!5680 = !DILocation(line: 481, column: 29, scope: !4394, inlinedAt: !5635)
!5681 = !DILocation(line: 481, column: 35, scope: !4394, inlinedAt: !5635)
!5682 = !DILocation(line: 481, column: 42, scope: !4394, inlinedAt: !5635)
!5683 = !DILocation(line: 474, column: 23, scope: !4389, inlinedAt: !5634)
!5684 = !DILocation(line: 474, column: 29, scope: !4389, inlinedAt: !5634)
!5685 = !DILocation(line: 474, column: 36, scope: !4389, inlinedAt: !5634)
!5686 = !DILocation(line: 474, column: 9, scope: !4389, inlinedAt: !5634)
!5687 = !DILocation(line: 545, column: 4, scope: !4396, inlinedAt: !5624)
!5688 = !DILocation(line: 547, column: 25, scope: !4364, inlinedAt: !5624)
!5689 = !DILocation(line: 348, column: 7, scope: !4467, inlinedAt: !5632)
!5690 = !DILocation(line: 348, column: 6, scope: !4383, inlinedAt: !5632)
!5691 = !DILocation(line: 349, column: 3, scope: !4467, inlinedAt: !5632)
!5692 = !DILocation(line: 351, column: 6, scope: !4471, inlinedAt: !5632)
!5693 = !DILocation(line: 351, column: 11, scope: !4471, inlinedAt: !5632)
!5694 = !DILocation(line: 351, column: 6, scope: !4383, inlinedAt: !5632)
!5695 = !DILocation(line: 352, column: 3, scope: !4471, inlinedAt: !5632)
!5696 = !DILocation(line: 354, column: 32, scope: !4476, inlinedAt: !5632)
!5697 = !DILocation(line: 354, column: 37, scope: !4476, inlinedAt: !5632)
!5698 = !DILocation(line: 354, column: 42, scope: !4476, inlinedAt: !5632)
!5699 = !DILocation(line: 354, column: 45, scope: !4476, inlinedAt: !5632)
!5700 = !DILocation(line: 354, column: 50, scope: !4476, inlinedAt: !5632)
!5701 = !DILocation(line: 354, column: 6, scope: !4383, inlinedAt: !5632)
!5702 = !DILocation(line: 355, column: 3, scope: !4476, inlinedAt: !5632)
!5703 = !DILocation(line: 356, column: 32, scope: !4484, inlinedAt: !5632)
!5704 = !DILocation(line: 356, column: 37, scope: !4484, inlinedAt: !5632)
!5705 = !DILocation(line: 356, column: 43, scope: !4484, inlinedAt: !5632)
!5706 = !DILocation(line: 356, column: 46, scope: !4484, inlinedAt: !5632)
!5707 = !DILocation(line: 356, column: 51, scope: !4484, inlinedAt: !5632)
!5708 = !DILocation(line: 356, column: 6, scope: !4383, inlinedAt: !5632)
!5709 = !DILocation(line: 357, column: 3, scope: !4484, inlinedAt: !5632)
!5710 = !DILocation(line: 358, column: 6, scope: !4492, inlinedAt: !5632)
!5711 = !DILocation(line: 358, column: 11, scope: !4492, inlinedAt: !5632)
!5712 = !DILocation(line: 358, column: 6, scope: !4383, inlinedAt: !5632)
!5713 = !DILocation(line: 358, column: 26, scope: !4492, inlinedAt: !5632)
!5714 = !DILocation(line: 359, column: 6, scope: !4497, inlinedAt: !5632)
!5715 = !DILocation(line: 359, column: 11, scope: !4497, inlinedAt: !5632)
!5716 = !DILocation(line: 359, column: 6, scope: !4383, inlinedAt: !5632)
!5717 = !DILocation(line: 359, column: 26, scope: !4497, inlinedAt: !5632)
!5718 = !DILocation(line: 360, column: 6, scope: !4502, inlinedAt: !5632)
!5719 = !DILocation(line: 360, column: 11, scope: !4502, inlinedAt: !5632)
!5720 = !DILocation(line: 360, column: 6, scope: !4383, inlinedAt: !5632)
!5721 = !DILocation(line: 360, column: 26, scope: !4502, inlinedAt: !5632)
!5722 = !DILocation(line: 361, column: 6, scope: !4507, inlinedAt: !5632)
!5723 = !DILocation(line: 361, column: 11, scope: !4507, inlinedAt: !5632)
!5724 = !DILocation(line: 361, column: 6, scope: !4383, inlinedAt: !5632)
!5725 = !DILocation(line: 361, column: 26, scope: !4507, inlinedAt: !5632)
!5726 = !DILocation(line: 362, column: 6, scope: !4512, inlinedAt: !5632)
!5727 = !DILocation(line: 362, column: 11, scope: !4512, inlinedAt: !5632)
!5728 = !DILocation(line: 362, column: 6, scope: !4383, inlinedAt: !5632)
!5729 = !DILocation(line: 362, column: 26, scope: !4512, inlinedAt: !5632)
!5730 = !DILocation(line: 363, column: 6, scope: !4517, inlinedAt: !5632)
!5731 = !DILocation(line: 363, column: 11, scope: !4517, inlinedAt: !5632)
!5732 = !DILocation(line: 363, column: 6, scope: !4383, inlinedAt: !5632)
!5733 = !DILocation(line: 363, column: 26, scope: !4517, inlinedAt: !5632)
!5734 = !DILocation(line: 364, column: 6, scope: !4522, inlinedAt: !5632)
!5735 = !DILocation(line: 364, column: 11, scope: !4522, inlinedAt: !5632)
!5736 = !DILocation(line: 364, column: 6, scope: !4383, inlinedAt: !5632)
!5737 = !DILocation(line: 364, column: 26, scope: !4522, inlinedAt: !5632)
!5738 = !DILocation(line: 365, column: 6, scope: !4527, inlinedAt: !5632)
!5739 = !DILocation(line: 365, column: 11, scope: !4527, inlinedAt: !5632)
!5740 = !DILocation(line: 365, column: 6, scope: !4383, inlinedAt: !5632)
!5741 = !DILocation(line: 365, column: 26, scope: !4527, inlinedAt: !5632)
!5742 = !DILocation(line: 366, column: 6, scope: !4532, inlinedAt: !5632)
!5743 = !DILocation(line: 366, column: 11, scope: !4532, inlinedAt: !5632)
!5744 = !DILocation(line: 366, column: 6, scope: !4383, inlinedAt: !5632)
!5745 = !DILocation(line: 366, column: 26, scope: !4532, inlinedAt: !5632)
!5746 = !DILocation(line: 367, column: 6, scope: !4537, inlinedAt: !5632)
!5747 = !DILocation(line: 367, column: 11, scope: !4537, inlinedAt: !5632)
!5748 = !DILocation(line: 367, column: 6, scope: !4383, inlinedAt: !5632)
!5749 = !DILocation(line: 367, column: 26, scope: !4537, inlinedAt: !5632)
!5750 = !DILocation(line: 368, column: 6, scope: !4542, inlinedAt: !5632)
!5751 = !DILocation(line: 368, column: 11, scope: !4542, inlinedAt: !5632)
!5752 = !DILocation(line: 368, column: 6, scope: !4383, inlinedAt: !5632)
!5753 = !DILocation(line: 368, column: 26, scope: !4542, inlinedAt: !5632)
!5754 = !DILocation(line: 369, column: 6, scope: !4547, inlinedAt: !5632)
!5755 = !DILocation(line: 369, column: 11, scope: !4547, inlinedAt: !5632)
!5756 = !DILocation(line: 369, column: 6, scope: !4383, inlinedAt: !5632)
!5757 = !DILocation(line: 369, column: 26, scope: !4547, inlinedAt: !5632)
!5758 = !DILocation(line: 370, column: 6, scope: !4552, inlinedAt: !5632)
!5759 = !DILocation(line: 370, column: 11, scope: !4552, inlinedAt: !5632)
!5760 = !DILocation(line: 370, column: 6, scope: !4383, inlinedAt: !5632)
!5761 = !DILocation(line: 370, column: 26, scope: !4552, inlinedAt: !5632)
!5762 = !DILocation(line: 371, column: 6, scope: !4557, inlinedAt: !5632)
!5763 = !DILocation(line: 371, column: 11, scope: !4557, inlinedAt: !5632)
!5764 = !DILocation(line: 371, column: 6, scope: !4383, inlinedAt: !5632)
!5765 = !DILocation(line: 371, column: 26, scope: !4557, inlinedAt: !5632)
!5766 = !DILocation(line: 372, column: 6, scope: !4562, inlinedAt: !5632)
!5767 = !DILocation(line: 372, column: 11, scope: !4562, inlinedAt: !5632)
!5768 = !DILocation(line: 372, column: 6, scope: !4383, inlinedAt: !5632)
!5769 = !DILocation(line: 372, column: 26, scope: !4562, inlinedAt: !5632)
!5770 = !DILocation(line: 373, column: 6, scope: !4567, inlinedAt: !5632)
!5771 = !DILocation(line: 373, column: 11, scope: !4567, inlinedAt: !5632)
!5772 = !DILocation(line: 373, column: 6, scope: !4383, inlinedAt: !5632)
!5773 = !DILocation(line: 373, column: 26, scope: !4567, inlinedAt: !5632)
!5774 = !DILocation(line: 374, column: 6, scope: !4572, inlinedAt: !5632)
!5775 = !DILocation(line: 374, column: 11, scope: !4572, inlinedAt: !5632)
!5776 = !DILocation(line: 374, column: 6, scope: !4383, inlinedAt: !5632)
!5777 = !DILocation(line: 374, column: 26, scope: !4572, inlinedAt: !5632)
!5778 = !DILocation(line: 375, column: 6, scope: !4577, inlinedAt: !5632)
!5779 = !DILocation(line: 375, column: 11, scope: !4577, inlinedAt: !5632)
!5780 = !DILocation(line: 375, column: 6, scope: !4383, inlinedAt: !5632)
!5781 = !DILocation(line: 375, column: 27, scope: !4577, inlinedAt: !5632)
!5782 = !DILocation(line: 376, column: 6, scope: !4582, inlinedAt: !5632)
!5783 = !DILocation(line: 376, column: 11, scope: !4582, inlinedAt: !5632)
!5784 = !DILocation(line: 376, column: 6, scope: !4383, inlinedAt: !5632)
!5785 = !DILocation(line: 376, column: 32, scope: !4582, inlinedAt: !5632)
!5786 = !DILocation(line: 377, column: 6, scope: !4587, inlinedAt: !5632)
!5787 = !DILocation(line: 377, column: 11, scope: !4587, inlinedAt: !5632)
!5788 = !DILocation(line: 377, column: 6, scope: !4383, inlinedAt: !5632)
!5789 = !DILocation(line: 377, column: 32, scope: !4587, inlinedAt: !5632)
!5790 = !DILocation(line: 378, column: 6, scope: !4592, inlinedAt: !5632)
!5791 = !DILocation(line: 378, column: 11, scope: !4592, inlinedAt: !5632)
!5792 = !DILocation(line: 378, column: 6, scope: !4383, inlinedAt: !5632)
!5793 = !DILocation(line: 378, column: 32, scope: !4592, inlinedAt: !5632)
!5794 = !DILocation(line: 379, column: 6, scope: !4597, inlinedAt: !5632)
!5795 = !DILocation(line: 379, column: 11, scope: !4597, inlinedAt: !5632)
!5796 = !DILocation(line: 379, column: 6, scope: !4383, inlinedAt: !5632)
!5797 = !DILocation(line: 379, column: 33, scope: !4597, inlinedAt: !5632)
!5798 = !DILocation(line: 380, column: 6, scope: !4602, inlinedAt: !5632)
!5799 = !DILocation(line: 380, column: 11, scope: !4602, inlinedAt: !5632)
!5800 = !DILocation(line: 380, column: 6, scope: !4383, inlinedAt: !5632)
!5801 = !DILocation(line: 380, column: 33, scope: !4602, inlinedAt: !5632)
!5802 = !DILocation(line: 381, column: 6, scope: !4607, inlinedAt: !5632)
!5803 = !DILocation(line: 381, column: 11, scope: !4607, inlinedAt: !5632)
!5804 = !DILocation(line: 381, column: 6, scope: !4383, inlinedAt: !5632)
!5805 = !DILocation(line: 381, column: 33, scope: !4607, inlinedAt: !5632)
!5806 = !DILocation(line: 382, column: 2, scope: !4612, inlinedAt: !5632)
!5807 = !DILocation(line: 382, column: 2, scope: !4616, inlinedAt: !5632)
!5808 = !DILocation(line: 382, column: 2, scope: !4617, inlinedAt: !5632)
!5809 = !DILocation(line: 386, column: 1, scope: !4383, inlinedAt: !5632)
!5810 = !DILocation(line: 547, column: 9, scope: !4364, inlinedAt: !5624)
!5811 = !DILocation(line: 549, column: 8, scope: !4623, inlinedAt: !5624)
!5812 = !DILocation(line: 549, column: 7, scope: !4364, inlinedAt: !5624)
!5813 = !DILocation(line: 550, column: 4, scope: !4623, inlinedAt: !5624)
!5814 = !DILocation(line: 553, column: 33, scope: !4364, inlinedAt: !5624)
!5815 = !DILocation(line: 325, column: 6, scope: !4628, inlinedAt: !5630)
!5816 = !DILocation(line: 325, column: 6, scope: !4377, inlinedAt: !5630)
!5817 = !DILocation(line: 326, column: 3, scope: !4628, inlinedAt: !5630)
!5818 = !DILocation(line: 332, column: 9, scope: !4377, inlinedAt: !5630)
!5819 = !DILocation(line: 332, column: 15, scope: !4377, inlinedAt: !5630)
!5820 = !DILocation(line: 332, column: 2, scope: !4377, inlinedAt: !5630)
!5821 = !DILocation(line: 336, column: 1, scope: !4377, inlinedAt: !5630)
!5822 = !DILocation(line: 553, column: 5, scope: !4364, inlinedAt: !5624)
!5823 = !DILocation(line: 553, column: 41, scope: !4364, inlinedAt: !5624)
!5824 = !DILocation(line: 554, column: 5, scope: !4364, inlinedAt: !5624)
!5825 = !DILocation(line: 554, column: 12, scope: !4364, inlinedAt: !5624)
!5826 = !DILocation(line: 448, column: 31, scope: !4359, inlinedAt: !5623)
!5827 = !DILocation(line: 448, column: 34, scope: !4359, inlinedAt: !5623)
!5828 = !DILocation(line: 448, column: 14, scope: !4359, inlinedAt: !5623)
!5829 = !DILocation(line: 450, column: 22, scope: !4359, inlinedAt: !5623)
!5830 = !DILocation(line: 450, column: 25, scope: !4359, inlinedAt: !5623)
!5831 = !DILocation(line: 450, column: 30, scope: !4359, inlinedAt: !5623)
!5832 = !DILocation(line: 450, column: 36, scope: !4359, inlinedAt: !5623)
!5833 = !DILocation(line: 450, column: 8, scope: !4359, inlinedAt: !5623)
!5834 = !DILocation(line: 450, column: 6, scope: !4359, inlinedAt: !5623)
!5835 = !DILocation(line: 451, column: 9, scope: !4359, inlinedAt: !5623)
!5836 = !DILocation(line: 552, column: 3, scope: !4364, inlinedAt: !5624)
!5837 = !DILocation(line: 557, column: 19, scope: !4366, inlinedAt: !5624)
!5838 = !DILocation(line: 557, column: 25, scope: !4366, inlinedAt: !5624)
!5839 = !DILocation(line: 557, column: 9, scope: !4366, inlinedAt: !5624)
!5840 = !DILocation(line: 557, column: 2, scope: !4366, inlinedAt: !5624)
!5841 = !DILocation(line: 558, column: 1, scope: !4366, inlinedAt: !5624)
!5842 = !DILocation(line: 591, column: 3, scope: !5625)
!5843 = !DILocation(line: 592, column: 19, scope: !5621)
!5844 = !DILocation(line: 592, column: 26, scope: !5621)
!5845 = !DILocation(line: 592, column: 9, scope: !5621)
!5846 = !DILocation(line: 592, column: 2, scope: !5621)
!5847 = !DILocation(line: 593, column: 1, scope: !5621)
!5848 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5849, file: !5849, line: 52, type: !5850, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5849 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!5850 = !DISubroutineType(types: !5851)
!5851 = !{!358, !358}
!5852 = !DILocalVariable(name: "overflow", arg: 1, scope: !5848, file: !5849, line: 52, type: !358)
!5853 = !DILocation(line: 52, column: 60, scope: !5848)
!5854 = !DILocation(line: 54, column: 9, scope: !5848)
!5855 = !DILocation(line: 54, column: 2, scope: !5848)
!5856 = distinct !DISubprogram(name: "get_order", scope: !5857, file: !5857, line: 29, type: !5858, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5857 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5858 = !DISubroutineType(types: !5859)
!5859 = !{!150, !167}
!5860 = !DILocalVariable(name: "x", arg: 1, scope: !5861, file: !5862, line: 366, type: !254)
!5861 = distinct !DISubprogram(name: "fls64", scope: !5862, file: !5862, line: 366, type: !5863, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5862 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5863 = !DISubroutineType(types: !5864)
!5864 = !{!150, !254}
!5865 = !DILocation(line: 366, column: 40, scope: !5861, inlinedAt: !5866)
!5866 = distinct !DILocation(line: 46, column: 9, scope: !5856)
!5867 = !DILocalVariable(name: "bitpos", scope: !5861, file: !5862, line: 368, type: !150)
!5868 = !DILocation(line: 368, column: 6, scope: !5861, inlinedAt: !5866)
!5869 = !DILocalVariable(name: "size", arg: 1, scope: !5856, file: !5857, line: 29, type: !167)
!5870 = !DILocation(line: 29, column: 63, scope: !5856)
!5871 = !DILocation(line: 31, column: 27, scope: !5872)
!5872 = distinct !DILexicalBlock(scope: !5856, file: !5857, line: 31, column: 6)
!5873 = !DILocation(line: 31, column: 6, scope: !5872)
!5874 = !DILocation(line: 31, column: 6, scope: !5856)
!5875 = !DILocation(line: 32, column: 8, scope: !5876)
!5876 = distinct !DILexicalBlock(scope: !5877, file: !5857, line: 32, column: 7)
!5877 = distinct !DILexicalBlock(scope: !5872, file: !5857, line: 31, column: 34)
!5878 = !DILocation(line: 32, column: 7, scope: !5877)
!5879 = !DILocation(line: 33, column: 4, scope: !5876)
!5880 = !DILocation(line: 35, column: 7, scope: !5881)
!5881 = distinct !DILexicalBlock(scope: !5877, file: !5857, line: 35, column: 7)
!5882 = !DILocation(line: 35, column: 12, scope: !5881)
!5883 = !DILocation(line: 35, column: 7, scope: !5877)
!5884 = !DILocation(line: 36, column: 4, scope: !5881)
!5885 = !DILocation(line: 38, column: 10, scope: !5877)
!5886 = !DILocation(line: 38, column: 28, scope: !5877)
!5887 = !DILocation(line: 38, column: 41, scope: !5877)
!5888 = !DILocation(line: 38, column: 3, scope: !5877)
!5889 = !DILocation(line: 41, column: 6, scope: !5856)
!5890 = !DILocation(line: 42, column: 7, scope: !5856)
!5891 = !DILocation(line: 46, column: 15, scope: !5856)
!5892 = !DILocation(line: 374, column: 2, scope: !5861, inlinedAt: !5866)
!5893 = !DILocation(line: 376, column: 14, scope: !5861, inlinedAt: !5866)
!5894 = !{i32 656873}
!5895 = !DILocation(line: 377, column: 9, scope: !5861, inlinedAt: !5866)
!5896 = !DILocation(line: 377, column: 16, scope: !5861, inlinedAt: !5866)
!5897 = !DILocation(line: 46, column: 2, scope: !5856)
!5898 = !DILocation(line: 48, column: 1, scope: !5856)
!5899 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5900, file: !5900, line: 30, type: !5901, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5900 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5901 = !DISubroutineType(types: !5902)
!5902 = !{!150, !253}
!5903 = !DILocation(line: 366, column: 40, scope: !5861, inlinedAt: !5904)
!5904 = distinct !DILocation(line: 32, column: 9, scope: !5899)
!5905 = !DILocation(line: 368, column: 6, scope: !5861, inlinedAt: !5904)
!5906 = !DILocalVariable(name: "n", arg: 1, scope: !5899, file: !5900, line: 30, type: !253)
!5907 = !DILocation(line: 30, column: 21, scope: !5899)
!5908 = !DILocation(line: 32, column: 15, scope: !5899)
!5909 = !DILocation(line: 374, column: 2, scope: !5861, inlinedAt: !5904)
!5910 = !DILocation(line: 376, column: 14, scope: !5861, inlinedAt: !5904)
!5911 = !DILocation(line: 377, column: 9, scope: !5861, inlinedAt: !5904)
!5912 = !DILocation(line: 377, column: 16, scope: !5861, inlinedAt: !5904)
!5913 = !DILocation(line: 32, column: 18, scope: !5899)
!5914 = !DILocation(line: 32, column: 2, scope: !5899)
!5915 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5916, file: !5916, line: 137, type: !5917, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5916 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5917 = !DISubroutineType(types: !5918)
!5918 = !{!147, !2152, !2320, !1150, !148}
!5919 = !DILocalVariable(name: "s", arg: 1, scope: !5915, file: !5916, line: 137, type: !2152)
!5920 = !DILocation(line: 137, column: 54, scope: !5915)
!5921 = !DILocalVariable(name: "object", arg: 2, scope: !5915, file: !5916, line: 137, type: !2320)
!5922 = !DILocation(line: 137, column: 69, scope: !5915)
!5923 = !DILocalVariable(name: "size", arg: 3, scope: !5915, file: !5916, line: 138, type: !1150)
!5924 = !DILocation(line: 138, column: 12, scope: !5915)
!5925 = !DILocalVariable(name: "flags", arg: 4, scope: !5915, file: !5916, line: 138, type: !148)
!5926 = !DILocation(line: 138, column: 24, scope: !5915)
!5927 = !DILocation(line: 140, column: 17, scope: !5915)
!5928 = !DILocation(line: 140, column: 2, scope: !5915)
!5929 = distinct !DISubprogram(name: "__del_gref", scope: !3, file: !3, line: 184, type: !5930, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!5930 = !DISubroutineType(types: !5931)
!5931 = !{null, !151}
!5932 = !DILocalVariable(name: "gref", arg: 1, scope: !5929, file: !3, line: 184, type: !151)
!5933 = !DILocation(line: 184, column: 46, scope: !5929)
!5934 = !DILocation(line: 186, column: 6, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 186, column: 6)
!5936 = !DILocation(line: 186, column: 12, scope: !5935)
!5937 = !DILocation(line: 186, column: 19, scope: !5935)
!5938 = !DILocation(line: 186, column: 25, scope: !5935)
!5939 = !DILocation(line: 186, column: 6, scope: !5929)
!5940 = !DILocalVariable(name: "tmp", scope: !5941, file: !3, line: 187, type: !5942)
!5941 = distinct !DILexicalBlock(scope: !5935, file: !3, line: 186, column: 52)
!5942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5943, size: 64)
!5943 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !149, line: 102, baseType: !971)
!5944 = !DILocation(line: 187, column: 12, scope: !5941)
!5945 = !DILocation(line: 187, column: 23, scope: !5941)
!5946 = !DILocation(line: 187, column: 29, scope: !5941)
!5947 = !DILocation(line: 187, column: 18, scope: !5941)
!5948 = !DILocation(line: 188, column: 3, scope: !5941)
!5949 = !DILocation(line: 188, column: 7, scope: !5941)
!5950 = !DILocation(line: 188, column: 13, scope: !5941)
!5951 = !DILocation(line: 188, column: 20, scope: !5941)
!5952 = !DILocation(line: 188, column: 27, scope: !5941)
!5953 = !DILocation(line: 189, column: 10, scope: !5941)
!5954 = !DILocation(line: 189, column: 16, scope: !5941)
!5955 = !DILocation(line: 189, column: 3, scope: !5941)
!5956 = !DILocation(line: 190, column: 2, scope: !5941)
!5957 = !DILocation(line: 191, column: 6, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 191, column: 6)
!5959 = !DILocation(line: 191, column: 12, scope: !5958)
!5960 = !DILocation(line: 191, column: 19, scope: !5958)
!5961 = !DILocation(line: 191, column: 25, scope: !5958)
!5962 = !DILocation(line: 191, column: 6, scope: !5929)
!5963 = !DILocation(line: 192, column: 28, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5958, file: !3, line: 191, column: 52)
!5965 = !DILocation(line: 192, column: 34, scope: !5964)
!5966 = !DILocation(line: 192, column: 41, scope: !5964)
!5967 = !DILocation(line: 192, column: 3, scope: !5964)
!5968 = !DILocation(line: 193, column: 14, scope: !5964)
!5969 = !DILocation(line: 193, column: 20, scope: !5964)
!5970 = !DILocation(line: 193, column: 27, scope: !5964)
!5971 = !DILocation(line: 193, column: 3, scope: !5964)
!5972 = !DILocation(line: 194, column: 2, scope: !5964)
!5973 = !DILocation(line: 196, column: 2, scope: !5929)
!5974 = !DILocation(line: 196, column: 8, scope: !5929)
!5975 = !DILocation(line: 196, column: 15, scope: !5929)
!5976 = !DILocation(line: 196, column: 21, scope: !5929)
!5977 = !DILocation(line: 198, column: 6, scope: !5978)
!5978 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 198, column: 6)
!5979 = !DILocation(line: 198, column: 12, scope: !5978)
!5980 = !DILocation(line: 198, column: 6, scope: !5929)
!5981 = !DILocation(line: 199, column: 35, scope: !5982)
!5982 = distinct !DILexicalBlock(scope: !5983, file: !3, line: 199, column: 7)
!5983 = distinct !DILexicalBlock(scope: !5978, file: !3, line: 198, column: 21)
!5984 = !DILocation(line: 199, column: 41, scope: !5982)
!5985 = !DILocation(line: 199, column: 7, scope: !5982)
!5986 = !DILocation(line: 199, column: 7, scope: !5983)
!5987 = !DILocation(line: 200, column: 4, scope: !5982)
!5988 = !DILocation(line: 202, column: 38, scope: !5989)
!5989 = distinct !DILexicalBlock(scope: !5983, file: !3, line: 202, column: 7)
!5990 = !DILocation(line: 202, column: 44, scope: !5989)
!5991 = !DILocation(line: 202, column: 8, scope: !5989)
!5992 = !DILocation(line: 202, column: 7, scope: !5983)
!5993 = !DILocation(line: 203, column: 4, scope: !5989)
!5994 = !DILocation(line: 205, column: 31, scope: !5983)
!5995 = !DILocation(line: 205, column: 37, scope: !5983)
!5996 = !DILocation(line: 205, column: 3, scope: !5983)
!5997 = !DILocation(line: 206, column: 2, scope: !5983)
!5998 = !DILocation(line: 208, column: 11, scope: !5929)
!5999 = !DILocation(line: 209, column: 12, scope: !5929)
!6000 = !DILocation(line: 209, column: 18, scope: !5929)
!6001 = !DILocation(line: 209, column: 2, scope: !5929)
!6002 = !DILocation(line: 211, column: 6, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !5929, file: !3, line: 211, column: 6)
!6004 = !DILocation(line: 211, column: 12, scope: !6003)
!6005 = !DILocation(line: 211, column: 6, scope: !5929)
!6006 = !DILocation(line: 212, column: 3, scope: !6003)
!6007 = !DILocation(line: 214, column: 8, scope: !5929)
!6008 = !DILocation(line: 214, column: 2, scope: !5929)
!6009 = !DILocation(line: 215, column: 1, scope: !5929)
!6010 = distinct !DISubprogram(name: "kmap", scope: !6011, file: !6011, line: 137, type: !6012, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6011 = !DIFile(filename: "./include/linux/highmem.h", directory: "/home/lizy2001/genbc/linux")
!6012 = !DISubroutineType(types: !6013)
!6013 = !{!147, !162}
!6014 = !DILocalVariable(name: "page", arg: 1, scope: !6015, file: !14, line: 1514, type: !6018)
!6015 = distinct !DISubprogram(name: "lowmem_page_address", scope: !14, file: !14, line: 1514, type: !6016, scopeLine: 1515, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6016 = !DISubroutineType(types: !6017)
!6017 = !{!147, !6018}
!6018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6019, size: 64)
!6019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!6020 = !DILocation(line: 1514, column: 69, scope: !6015, inlinedAt: !6021)
!6021 = distinct !DILocation(line: 140, column: 9, scope: !6010)
!6022 = !DILocalVariable(name: "page", arg: 1, scope: !6010, file: !6011, line: 137, type: !162)
!6023 = !DILocation(line: 137, column: 39, scope: !6010)
!6024 = !DILocation(line: 139, column: 2, scope: !6010)
!6025 = !DILocation(line: 139, column: 2, scope: !6026)
!6026 = distinct !DILexicalBlock(scope: !6010, file: !6011, line: 139, column: 2)
!6027 = !DILocation(line: 139, column: 2, scope: !6028)
!6028 = distinct !DILexicalBlock(scope: !6026, file: !6011, line: 139, column: 2)
!6029 = !DILocation(line: 140, column: 9, scope: !6010)
!6030 = !DILocation(line: 1516, column: 9, scope: !6015, inlinedAt: !6021)
!6031 = !DILocation(line: 140, column: 2, scope: !6010)
!6032 = distinct !DISubprogram(name: "kunmap", scope: !6011, file: !6011, line: 147, type: !2846, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6033 = !DILocalVariable(name: "page", arg: 1, scope: !6032, file: !6011, line: 147, type: !162)
!6034 = !DILocation(line: 147, column: 40, scope: !6032)
!6035 = !DILocation(line: 152, column: 1, scope: !6032)
!6036 = distinct !DISubprogram(name: "notify_remote_via_evtchn", scope: !6037, file: !6037, line: 78, type: !6038, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6037 = !DIFile(filename: "./include/xen/events.h", directory: "/home/lizy2001/genbc/linux")
!6038 = !DISubroutineType(types: !6039)
!6039 = !{null, !6040}
!6040 = !DIDerivedType(tag: DW_TAG_typedef, name: "evtchn_port_t", file: !6041, line: 15, baseType: !1494)
!6041 = !DIFile(filename: "./include/xen/interface/event_channel.h", directory: "/home/lizy2001/genbc/linux")
!6042 = !DILocalVariable(name: "port", arg: 1, scope: !6036, file: !6037, line: 78, type: !6040)
!6043 = !DILocation(line: 78, column: 59, scope: !6036)
!6044 = !DILocalVariable(name: "send", scope: !6036, file: !6037, line: 80, type: !6045)
!6045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "evtchn_send", file: !6041, line: 114, size: 32, elements: !6046)
!6046 = !{!6047}
!6047 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !6045, file: !6041, line: 116, baseType: !6040, size: 32)
!6048 = !DILocation(line: 80, column: 21, scope: !6036)
!6049 = !DILocation(line: 80, column: 28, scope: !6036)
!6050 = !DILocation(line: 80, column: 38, scope: !6036)
!6051 = !DILocation(line: 81, column: 51, scope: !6036)
!6052 = !DILocation(line: 81, column: 8, scope: !6036)
!6053 = !DILocation(line: 82, column: 1, scope: !6036)
!6054 = distinct !DISubprogram(name: "list_del", scope: !6055, file: !6055, line: 144, type: !6056, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6055 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!6056 = !DISubroutineType(types: !6057)
!6057 = !{null, !158}
!6058 = !DILocalVariable(name: "entry", arg: 1, scope: !6054, file: !6055, line: 144, type: !158)
!6059 = !DILocation(line: 144, column: 47, scope: !6054)
!6060 = !DILocation(line: 146, column: 19, scope: !6054)
!6061 = !DILocation(line: 146, column: 2, scope: !6054)
!6062 = !DILocation(line: 147, column: 2, scope: !6054)
!6063 = !DILocation(line: 147, column: 9, scope: !6054)
!6064 = !DILocation(line: 147, column: 14, scope: !6054)
!6065 = !DILocation(line: 148, column: 2, scope: !6054)
!6066 = !DILocation(line: 148, column: 9, scope: !6054)
!6067 = !DILocation(line: 148, column: 14, scope: !6054)
!6068 = !DILocation(line: 149, column: 1, scope: !6054)
!6069 = distinct !DISubprogram(name: "HYPERVISOR_event_channel_op", scope: !6070, file: !6070, line: 356, type: !6071, scopeLine: 357, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6070 = !DIFile(filename: "./arch/x86/include/asm/xen/hypercall.h", directory: "/home/lizy2001/genbc/linux")
!6071 = !DISubroutineType(types: !6072)
!6072 = !{!150, !150, !147}
!6073 = !DILocalVariable(name: "cmd", arg: 1, scope: !6069, file: !6070, line: 356, type: !150)
!6074 = !DILocation(line: 356, column: 33, scope: !6069)
!6075 = !DILocalVariable(name: "arg", arg: 2, scope: !6069, file: !6070, line: 356, type: !147)
!6076 = !DILocation(line: 356, column: 44, scope: !6069)
!6077 = !DILocalVariable(name: "__res", scope: !6078, file: !6070, line: 358, type: !167)
!6078 = distinct !DILexicalBlock(scope: !6069, file: !6070, line: 358, column: 9)
!6079 = !DILocation(line: 358, column: 9, scope: !6078)
!6080 = !DILocalVariable(name: "__arg1", scope: !6078, file: !6070, line: 358, type: !167)
!6081 = !DILocalVariable(name: "__arg2", scope: !6078, file: !6070, line: 358, type: !167)
!6082 = !DILocalVariable(name: "__arg3", scope: !6078, file: !6070, line: 358, type: !167)
!6083 = !DILocalVariable(name: "__arg4", scope: !6078, file: !6070, line: 358, type: !167)
!6084 = !DILocalVariable(name: "__arg5", scope: !6078, file: !6070, line: 358, type: !167)
!6085 = !{i32 -2141427723}
!6086 = !DILocation(line: 358, column: 2, scope: !6069)
!6087 = distinct !DISubprogram(name: "__list_del_entry", scope: !6055, file: !6055, line: 130, type: !6056, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6088 = !DILocalVariable(name: "entry", arg: 1, scope: !6087, file: !6055, line: 130, type: !158)
!6089 = !DILocation(line: 130, column: 55, scope: !6087)
!6090 = !DILocation(line: 132, column: 30, scope: !6091)
!6091 = distinct !DILexicalBlock(scope: !6087, file: !6055, line: 132, column: 6)
!6092 = !DILocation(line: 132, column: 7, scope: !6091)
!6093 = !DILocation(line: 132, column: 6, scope: !6087)
!6094 = !DILocation(line: 133, column: 3, scope: !6091)
!6095 = !DILocation(line: 135, column: 13, scope: !6087)
!6096 = !DILocation(line: 135, column: 20, scope: !6087)
!6097 = !DILocation(line: 135, column: 26, scope: !6087)
!6098 = !DILocation(line: 135, column: 33, scope: !6087)
!6099 = !DILocation(line: 135, column: 2, scope: !6087)
!6100 = !DILocation(line: 136, column: 1, scope: !6087)
!6101 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6055, file: !6055, line: 51, type: !6102, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6102 = !DISubroutineType(types: !6103)
!6103 = !{!358, !158}
!6104 = !DILocalVariable(name: "entry", arg: 1, scope: !6101, file: !6055, line: 51, type: !158)
!6105 = !DILocation(line: 51, column: 61, scope: !6101)
!6106 = !DILocation(line: 53, column: 2, scope: !6101)
!6107 = distinct !DISubprogram(name: "__list_del", scope: !6055, file: !6055, line: 110, type: !6108, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6108 = !DISubroutineType(types: !6109)
!6109 = !{null, !158, !158}
!6110 = !DILocalVariable(name: "prev", arg: 1, scope: !6107, file: !6055, line: 110, type: !158)
!6111 = !DILocation(line: 110, column: 50, scope: !6107)
!6112 = !DILocalVariable(name: "next", arg: 2, scope: !6107, file: !6055, line: 110, type: !158)
!6113 = !DILocation(line: 110, column: 75, scope: !6107)
!6114 = !DILocation(line: 112, column: 15, scope: !6107)
!6115 = !DILocation(line: 112, column: 2, scope: !6107)
!6116 = !DILocation(line: 112, column: 8, scope: !6107)
!6117 = !DILocation(line: 112, column: 13, scope: !6107)
!6118 = !DILocation(line: 113, column: 2, scope: !6107)
!6119 = !DILocation(line: 113, column: 2, scope: !6120)
!6120 = distinct !DILexicalBlock(scope: !6107, file: !6055, line: 113, column: 2)
!6121 = !DILocation(line: 113, column: 2, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6120, file: !6055, line: 113, column: 2)
!6123 = !DILocation(line: 113, column: 2, scope: !6124)
!6124 = distinct !DILexicalBlock(scope: !6120, file: !6055, line: 113, column: 2)
!6125 = !DILocation(line: 114, column: 1, scope: !6107)
!6126 = distinct !DISubprogram(name: "kzalloc", scope: !134, file: !134, line: 662, type: !4367, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6127 = !DILocation(line: 445, column: 72, scope: !4359, inlinedAt: !6128)
!6128 = distinct !DILocation(line: 552, column: 10, scope: !4364, inlinedAt: !6129)
!6129 = distinct !DILocation(line: 664, column: 9, scope: !6126)
!6130 = !DILocation(line: 446, column: 9, scope: !4359, inlinedAt: !6128)
!6131 = !DILocation(line: 446, column: 23, scope: !4359, inlinedAt: !6128)
!6132 = !DILocation(line: 448, column: 8, scope: !4359, inlinedAt: !6128)
!6133 = !DILocation(line: 318, column: 67, scope: !4377, inlinedAt: !6134)
!6134 = distinct !DILocation(line: 553, column: 20, scope: !4364, inlinedAt: !6129)
!6135 = !DILocation(line: 346, column: 58, scope: !4383, inlinedAt: !6136)
!6136 = distinct !DILocation(line: 547, column: 11, scope: !4364, inlinedAt: !6129)
!6137 = !DILocation(line: 472, column: 28, scope: !4389, inlinedAt: !6138)
!6138 = distinct !DILocation(line: 481, column: 9, scope: !4394, inlinedAt: !6139)
!6139 = distinct !DILocation(line: 545, column: 11, scope: !4396, inlinedAt: !6129)
!6140 = !DILocation(line: 472, column: 40, scope: !4389, inlinedAt: !6138)
!6141 = !DILocation(line: 472, column: 60, scope: !4389, inlinedAt: !6138)
!6142 = !DILocation(line: 478, column: 51, scope: !4394, inlinedAt: !6139)
!6143 = !DILocation(line: 478, column: 63, scope: !4394, inlinedAt: !6139)
!6144 = !DILocation(line: 480, column: 15, scope: !4394, inlinedAt: !6139)
!6145 = !DILocation(line: 538, column: 45, scope: !4366, inlinedAt: !6129)
!6146 = !DILocation(line: 538, column: 57, scope: !4366, inlinedAt: !6129)
!6147 = !DILocation(line: 542, column: 16, scope: !4364, inlinedAt: !6129)
!6148 = !DILocalVariable(name: "size", arg: 1, scope: !6126, file: !134, line: 662, type: !1150)
!6149 = !DILocation(line: 662, column: 36, scope: !6126)
!6150 = !DILocalVariable(name: "flags", arg: 2, scope: !6126, file: !134, line: 662, type: !148)
!6151 = !DILocation(line: 662, column: 48, scope: !6126)
!6152 = !DILocation(line: 664, column: 17, scope: !6126)
!6153 = !DILocation(line: 664, column: 23, scope: !6126)
!6154 = !DILocation(line: 664, column: 29, scope: !6126)
!6155 = !DILocation(line: 540, column: 27, scope: !4365, inlinedAt: !6129)
!6156 = !DILocation(line: 540, column: 6, scope: !4365, inlinedAt: !6129)
!6157 = !DILocation(line: 540, column: 6, scope: !4366, inlinedAt: !6129)
!6158 = !DILocation(line: 544, column: 7, scope: !4396, inlinedAt: !6129)
!6159 = !DILocation(line: 544, column: 12, scope: !4396, inlinedAt: !6129)
!6160 = !DILocation(line: 544, column: 7, scope: !4364, inlinedAt: !6129)
!6161 = !DILocation(line: 545, column: 25, scope: !4396, inlinedAt: !6129)
!6162 = !DILocation(line: 545, column: 31, scope: !4396, inlinedAt: !6129)
!6163 = !DILocation(line: 480, column: 33, scope: !4394, inlinedAt: !6139)
!6164 = !DILocation(line: 480, column: 23, scope: !4394, inlinedAt: !6139)
!6165 = !DILocation(line: 481, column: 29, scope: !4394, inlinedAt: !6139)
!6166 = !DILocation(line: 481, column: 35, scope: !4394, inlinedAt: !6139)
!6167 = !DILocation(line: 481, column: 42, scope: !4394, inlinedAt: !6139)
!6168 = !DILocation(line: 474, column: 23, scope: !4389, inlinedAt: !6138)
!6169 = !DILocation(line: 474, column: 29, scope: !4389, inlinedAt: !6138)
!6170 = !DILocation(line: 474, column: 36, scope: !4389, inlinedAt: !6138)
!6171 = !DILocation(line: 474, column: 9, scope: !4389, inlinedAt: !6138)
!6172 = !DILocation(line: 545, column: 4, scope: !4396, inlinedAt: !6129)
!6173 = !DILocation(line: 547, column: 25, scope: !4364, inlinedAt: !6129)
!6174 = !DILocation(line: 348, column: 7, scope: !4467, inlinedAt: !6136)
!6175 = !DILocation(line: 348, column: 6, scope: !4383, inlinedAt: !6136)
!6176 = !DILocation(line: 349, column: 3, scope: !4467, inlinedAt: !6136)
!6177 = !DILocation(line: 351, column: 6, scope: !4471, inlinedAt: !6136)
!6178 = !DILocation(line: 351, column: 11, scope: !4471, inlinedAt: !6136)
!6179 = !DILocation(line: 351, column: 6, scope: !4383, inlinedAt: !6136)
!6180 = !DILocation(line: 352, column: 3, scope: !4471, inlinedAt: !6136)
!6181 = !DILocation(line: 354, column: 32, scope: !4476, inlinedAt: !6136)
!6182 = !DILocation(line: 354, column: 37, scope: !4476, inlinedAt: !6136)
!6183 = !DILocation(line: 354, column: 42, scope: !4476, inlinedAt: !6136)
!6184 = !DILocation(line: 354, column: 45, scope: !4476, inlinedAt: !6136)
!6185 = !DILocation(line: 354, column: 50, scope: !4476, inlinedAt: !6136)
!6186 = !DILocation(line: 354, column: 6, scope: !4383, inlinedAt: !6136)
!6187 = !DILocation(line: 355, column: 3, scope: !4476, inlinedAt: !6136)
!6188 = !DILocation(line: 356, column: 32, scope: !4484, inlinedAt: !6136)
!6189 = !DILocation(line: 356, column: 37, scope: !4484, inlinedAt: !6136)
!6190 = !DILocation(line: 356, column: 43, scope: !4484, inlinedAt: !6136)
!6191 = !DILocation(line: 356, column: 46, scope: !4484, inlinedAt: !6136)
!6192 = !DILocation(line: 356, column: 51, scope: !4484, inlinedAt: !6136)
!6193 = !DILocation(line: 356, column: 6, scope: !4383, inlinedAt: !6136)
!6194 = !DILocation(line: 357, column: 3, scope: !4484, inlinedAt: !6136)
!6195 = !DILocation(line: 358, column: 6, scope: !4492, inlinedAt: !6136)
!6196 = !DILocation(line: 358, column: 11, scope: !4492, inlinedAt: !6136)
!6197 = !DILocation(line: 358, column: 6, scope: !4383, inlinedAt: !6136)
!6198 = !DILocation(line: 358, column: 26, scope: !4492, inlinedAt: !6136)
!6199 = !DILocation(line: 359, column: 6, scope: !4497, inlinedAt: !6136)
!6200 = !DILocation(line: 359, column: 11, scope: !4497, inlinedAt: !6136)
!6201 = !DILocation(line: 359, column: 6, scope: !4383, inlinedAt: !6136)
!6202 = !DILocation(line: 359, column: 26, scope: !4497, inlinedAt: !6136)
!6203 = !DILocation(line: 360, column: 6, scope: !4502, inlinedAt: !6136)
!6204 = !DILocation(line: 360, column: 11, scope: !4502, inlinedAt: !6136)
!6205 = !DILocation(line: 360, column: 6, scope: !4383, inlinedAt: !6136)
!6206 = !DILocation(line: 360, column: 26, scope: !4502, inlinedAt: !6136)
!6207 = !DILocation(line: 361, column: 6, scope: !4507, inlinedAt: !6136)
!6208 = !DILocation(line: 361, column: 11, scope: !4507, inlinedAt: !6136)
!6209 = !DILocation(line: 361, column: 6, scope: !4383, inlinedAt: !6136)
!6210 = !DILocation(line: 361, column: 26, scope: !4507, inlinedAt: !6136)
!6211 = !DILocation(line: 362, column: 6, scope: !4512, inlinedAt: !6136)
!6212 = !DILocation(line: 362, column: 11, scope: !4512, inlinedAt: !6136)
!6213 = !DILocation(line: 362, column: 6, scope: !4383, inlinedAt: !6136)
!6214 = !DILocation(line: 362, column: 26, scope: !4512, inlinedAt: !6136)
!6215 = !DILocation(line: 363, column: 6, scope: !4517, inlinedAt: !6136)
!6216 = !DILocation(line: 363, column: 11, scope: !4517, inlinedAt: !6136)
!6217 = !DILocation(line: 363, column: 6, scope: !4383, inlinedAt: !6136)
!6218 = !DILocation(line: 363, column: 26, scope: !4517, inlinedAt: !6136)
!6219 = !DILocation(line: 364, column: 6, scope: !4522, inlinedAt: !6136)
!6220 = !DILocation(line: 364, column: 11, scope: !4522, inlinedAt: !6136)
!6221 = !DILocation(line: 364, column: 6, scope: !4383, inlinedAt: !6136)
!6222 = !DILocation(line: 364, column: 26, scope: !4522, inlinedAt: !6136)
!6223 = !DILocation(line: 365, column: 6, scope: !4527, inlinedAt: !6136)
!6224 = !DILocation(line: 365, column: 11, scope: !4527, inlinedAt: !6136)
!6225 = !DILocation(line: 365, column: 6, scope: !4383, inlinedAt: !6136)
!6226 = !DILocation(line: 365, column: 26, scope: !4527, inlinedAt: !6136)
!6227 = !DILocation(line: 366, column: 6, scope: !4532, inlinedAt: !6136)
!6228 = !DILocation(line: 366, column: 11, scope: !4532, inlinedAt: !6136)
!6229 = !DILocation(line: 366, column: 6, scope: !4383, inlinedAt: !6136)
!6230 = !DILocation(line: 366, column: 26, scope: !4532, inlinedAt: !6136)
!6231 = !DILocation(line: 367, column: 6, scope: !4537, inlinedAt: !6136)
!6232 = !DILocation(line: 367, column: 11, scope: !4537, inlinedAt: !6136)
!6233 = !DILocation(line: 367, column: 6, scope: !4383, inlinedAt: !6136)
!6234 = !DILocation(line: 367, column: 26, scope: !4537, inlinedAt: !6136)
!6235 = !DILocation(line: 368, column: 6, scope: !4542, inlinedAt: !6136)
!6236 = !DILocation(line: 368, column: 11, scope: !4542, inlinedAt: !6136)
!6237 = !DILocation(line: 368, column: 6, scope: !4383, inlinedAt: !6136)
!6238 = !DILocation(line: 368, column: 26, scope: !4542, inlinedAt: !6136)
!6239 = !DILocation(line: 369, column: 6, scope: !4547, inlinedAt: !6136)
!6240 = !DILocation(line: 369, column: 11, scope: !4547, inlinedAt: !6136)
!6241 = !DILocation(line: 369, column: 6, scope: !4383, inlinedAt: !6136)
!6242 = !DILocation(line: 369, column: 26, scope: !4547, inlinedAt: !6136)
!6243 = !DILocation(line: 370, column: 6, scope: !4552, inlinedAt: !6136)
!6244 = !DILocation(line: 370, column: 11, scope: !4552, inlinedAt: !6136)
!6245 = !DILocation(line: 370, column: 6, scope: !4383, inlinedAt: !6136)
!6246 = !DILocation(line: 370, column: 26, scope: !4552, inlinedAt: !6136)
!6247 = !DILocation(line: 371, column: 6, scope: !4557, inlinedAt: !6136)
!6248 = !DILocation(line: 371, column: 11, scope: !4557, inlinedAt: !6136)
!6249 = !DILocation(line: 371, column: 6, scope: !4383, inlinedAt: !6136)
!6250 = !DILocation(line: 371, column: 26, scope: !4557, inlinedAt: !6136)
!6251 = !DILocation(line: 372, column: 6, scope: !4562, inlinedAt: !6136)
!6252 = !DILocation(line: 372, column: 11, scope: !4562, inlinedAt: !6136)
!6253 = !DILocation(line: 372, column: 6, scope: !4383, inlinedAt: !6136)
!6254 = !DILocation(line: 372, column: 26, scope: !4562, inlinedAt: !6136)
!6255 = !DILocation(line: 373, column: 6, scope: !4567, inlinedAt: !6136)
!6256 = !DILocation(line: 373, column: 11, scope: !4567, inlinedAt: !6136)
!6257 = !DILocation(line: 373, column: 6, scope: !4383, inlinedAt: !6136)
!6258 = !DILocation(line: 373, column: 26, scope: !4567, inlinedAt: !6136)
!6259 = !DILocation(line: 374, column: 6, scope: !4572, inlinedAt: !6136)
!6260 = !DILocation(line: 374, column: 11, scope: !4572, inlinedAt: !6136)
!6261 = !DILocation(line: 374, column: 6, scope: !4383, inlinedAt: !6136)
!6262 = !DILocation(line: 374, column: 26, scope: !4572, inlinedAt: !6136)
!6263 = !DILocation(line: 375, column: 6, scope: !4577, inlinedAt: !6136)
!6264 = !DILocation(line: 375, column: 11, scope: !4577, inlinedAt: !6136)
!6265 = !DILocation(line: 375, column: 6, scope: !4383, inlinedAt: !6136)
!6266 = !DILocation(line: 375, column: 27, scope: !4577, inlinedAt: !6136)
!6267 = !DILocation(line: 376, column: 6, scope: !4582, inlinedAt: !6136)
!6268 = !DILocation(line: 376, column: 11, scope: !4582, inlinedAt: !6136)
!6269 = !DILocation(line: 376, column: 6, scope: !4383, inlinedAt: !6136)
!6270 = !DILocation(line: 376, column: 32, scope: !4582, inlinedAt: !6136)
!6271 = !DILocation(line: 377, column: 6, scope: !4587, inlinedAt: !6136)
!6272 = !DILocation(line: 377, column: 11, scope: !4587, inlinedAt: !6136)
!6273 = !DILocation(line: 377, column: 6, scope: !4383, inlinedAt: !6136)
!6274 = !DILocation(line: 377, column: 32, scope: !4587, inlinedAt: !6136)
!6275 = !DILocation(line: 378, column: 6, scope: !4592, inlinedAt: !6136)
!6276 = !DILocation(line: 378, column: 11, scope: !4592, inlinedAt: !6136)
!6277 = !DILocation(line: 378, column: 6, scope: !4383, inlinedAt: !6136)
!6278 = !DILocation(line: 378, column: 32, scope: !4592, inlinedAt: !6136)
!6279 = !DILocation(line: 379, column: 6, scope: !4597, inlinedAt: !6136)
!6280 = !DILocation(line: 379, column: 11, scope: !4597, inlinedAt: !6136)
!6281 = !DILocation(line: 379, column: 6, scope: !4383, inlinedAt: !6136)
!6282 = !DILocation(line: 379, column: 33, scope: !4597, inlinedAt: !6136)
!6283 = !DILocation(line: 380, column: 6, scope: !4602, inlinedAt: !6136)
!6284 = !DILocation(line: 380, column: 11, scope: !4602, inlinedAt: !6136)
!6285 = !DILocation(line: 380, column: 6, scope: !4383, inlinedAt: !6136)
!6286 = !DILocation(line: 380, column: 33, scope: !4602, inlinedAt: !6136)
!6287 = !DILocation(line: 381, column: 6, scope: !4607, inlinedAt: !6136)
!6288 = !DILocation(line: 381, column: 11, scope: !4607, inlinedAt: !6136)
!6289 = !DILocation(line: 381, column: 6, scope: !4383, inlinedAt: !6136)
!6290 = !DILocation(line: 381, column: 33, scope: !4607, inlinedAt: !6136)
!6291 = !DILocation(line: 382, column: 2, scope: !4612, inlinedAt: !6136)
!6292 = !DILocation(line: 382, column: 2, scope: !4616, inlinedAt: !6136)
!6293 = !DILocation(line: 382, column: 2, scope: !4617, inlinedAt: !6136)
!6294 = !DILocation(line: 386, column: 1, scope: !4383, inlinedAt: !6136)
!6295 = !DILocation(line: 547, column: 9, scope: !4364, inlinedAt: !6129)
!6296 = !DILocation(line: 549, column: 8, scope: !4623, inlinedAt: !6129)
!6297 = !DILocation(line: 549, column: 7, scope: !4364, inlinedAt: !6129)
!6298 = !DILocation(line: 550, column: 4, scope: !4623, inlinedAt: !6129)
!6299 = !DILocation(line: 553, column: 33, scope: !4364, inlinedAt: !6129)
!6300 = !DILocation(line: 325, column: 6, scope: !4628, inlinedAt: !6134)
!6301 = !DILocation(line: 325, column: 6, scope: !4377, inlinedAt: !6134)
!6302 = !DILocation(line: 326, column: 3, scope: !4628, inlinedAt: !6134)
!6303 = !DILocation(line: 332, column: 9, scope: !4377, inlinedAt: !6134)
!6304 = !DILocation(line: 332, column: 15, scope: !4377, inlinedAt: !6134)
!6305 = !DILocation(line: 332, column: 2, scope: !4377, inlinedAt: !6134)
!6306 = !DILocation(line: 336, column: 1, scope: !4377, inlinedAt: !6134)
!6307 = !DILocation(line: 553, column: 5, scope: !4364, inlinedAt: !6129)
!6308 = !DILocation(line: 553, column: 41, scope: !4364, inlinedAt: !6129)
!6309 = !DILocation(line: 554, column: 5, scope: !4364, inlinedAt: !6129)
!6310 = !DILocation(line: 554, column: 12, scope: !4364, inlinedAt: !6129)
!6311 = !DILocation(line: 448, column: 31, scope: !4359, inlinedAt: !6128)
!6312 = !DILocation(line: 448, column: 34, scope: !4359, inlinedAt: !6128)
!6313 = !DILocation(line: 448, column: 14, scope: !4359, inlinedAt: !6128)
!6314 = !DILocation(line: 450, column: 22, scope: !4359, inlinedAt: !6128)
!6315 = !DILocation(line: 450, column: 25, scope: !4359, inlinedAt: !6128)
!6316 = !DILocation(line: 450, column: 30, scope: !4359, inlinedAt: !6128)
!6317 = !DILocation(line: 450, column: 36, scope: !4359, inlinedAt: !6128)
!6318 = !DILocation(line: 450, column: 8, scope: !4359, inlinedAt: !6128)
!6319 = !DILocation(line: 450, column: 6, scope: !4359, inlinedAt: !6128)
!6320 = !DILocation(line: 451, column: 9, scope: !4359, inlinedAt: !6128)
!6321 = !DILocation(line: 552, column: 3, scope: !4364, inlinedAt: !6129)
!6322 = !DILocation(line: 557, column: 19, scope: !4366, inlinedAt: !6129)
!6323 = !DILocation(line: 557, column: 25, scope: !4366, inlinedAt: !6129)
!6324 = !DILocation(line: 557, column: 9, scope: !4366, inlinedAt: !6129)
!6325 = !DILocation(line: 557, column: 2, scope: !4366, inlinedAt: !6129)
!6326 = !DILocation(line: 558, column: 1, scope: !4366, inlinedAt: !6129)
!6327 = !DILocation(line: 664, column: 2, scope: !6126)
!6328 = distinct !DISubprogram(name: "list_add_tail", scope: !6055, file: !6055, line: 98, type: !6108, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6329 = !DILocalVariable(name: "new", arg: 1, scope: !6328, file: !6055, line: 98, type: !158)
!6330 = !DILocation(line: 98, column: 52, scope: !6328)
!6331 = !DILocalVariable(name: "head", arg: 2, scope: !6328, file: !6055, line: 98, type: !158)
!6332 = !DILocation(line: 98, column: 75, scope: !6328)
!6333 = !DILocation(line: 100, column: 13, scope: !6328)
!6334 = !DILocation(line: 100, column: 18, scope: !6328)
!6335 = !DILocation(line: 100, column: 24, scope: !6328)
!6336 = !DILocation(line: 100, column: 30, scope: !6328)
!6337 = !DILocation(line: 100, column: 2, scope: !6328)
!6338 = !DILocation(line: 101, column: 1, scope: !6328)
!6339 = distinct !DISubprogram(name: "alloc_pages", scope: !6340, file: !6340, line: 555, type: !6341, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6340 = !DIFile(filename: "./include/linux/gfp.h", directory: "/home/lizy2001/genbc/linux")
!6341 = !DISubroutineType(types: !6342)
!6342 = !{!162, !148, !7}
!6343 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !6339, file: !6340, line: 555, type: !148)
!6344 = !DILocation(line: 555, column: 46, scope: !6339)
!6345 = !DILocalVariable(name: "order", arg: 2, scope: !6339, file: !6340, line: 555, type: !7)
!6346 = !DILocation(line: 555, column: 69, scope: !6339)
!6347 = !DILocation(line: 557, column: 26, scope: !6339)
!6348 = !DILocation(line: 557, column: 42, scope: !6339)
!6349 = !DILocation(line: 557, column: 52, scope: !6339)
!6350 = !DILocation(line: 557, column: 9, scope: !6339)
!6351 = !DILocation(line: 557, column: 2, scope: !6339)
!6352 = distinct !DISubprogram(name: "xen_page_to_gfn", scope: !6353, file: !6353, line: 31, type: !6354, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6353 = !DIFile(filename: "./include/xen/page.h", directory: "/home/lizy2001/genbc/linux")
!6354 = !DISubroutineType(types: !6355)
!6355 = !{!167, !162}
!6356 = !DILocalVariable(name: "page", arg: 1, scope: !6352, file: !6353, line: 31, type: !162)
!6357 = !DILocation(line: 31, column: 58, scope: !6352)
!6358 = !DILocation(line: 33, column: 20, scope: !6352)
!6359 = !DILocation(line: 33, column: 9, scope: !6352)
!6360 = !DILocation(line: 33, column: 2, scope: !6352)
!6361 = distinct !DISubprogram(name: "list_splice_tail", scope: !6055, file: !6055, line: 464, type: !6108, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6362 = !DILocalVariable(name: "list", arg: 1, scope: !6361, file: !6055, line: 464, type: !158)
!6363 = !DILocation(line: 464, column: 55, scope: !6361)
!6364 = !DILocalVariable(name: "head", arg: 2, scope: !6361, file: !6055, line: 465, type: !158)
!6365 = !DILocation(line: 465, column: 23, scope: !6361)
!6366 = !DILocation(line: 467, column: 18, scope: !6367)
!6367 = distinct !DILexicalBlock(scope: !6361, file: !6055, line: 467, column: 6)
!6368 = !DILocation(line: 467, column: 7, scope: !6367)
!6369 = !DILocation(line: 467, column: 6, scope: !6361)
!6370 = !DILocation(line: 468, column: 17, scope: !6367)
!6371 = !DILocation(line: 468, column: 23, scope: !6367)
!6372 = !DILocation(line: 468, column: 29, scope: !6367)
!6373 = !DILocation(line: 468, column: 35, scope: !6367)
!6374 = !DILocation(line: 468, column: 3, scope: !6367)
!6375 = !DILocation(line: 469, column: 1, scope: !6361)
!6376 = distinct !DISubprogram(name: "list_empty", scope: !6055, file: !6055, line: 280, type: !6377, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6377 = !DISubroutineType(types: !6378)
!6378 = !{!150, !6379}
!6379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6380, size: 64)
!6380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!6381 = !DILocalVariable(name: "head", arg: 1, scope: !6376, file: !6055, line: 280, type: !6379)
!6382 = !DILocation(line: 280, column: 54, scope: !6376)
!6383 = !DILocation(line: 282, column: 9, scope: !6384)
!6384 = distinct !DILexicalBlock(scope: !6376, file: !6055, line: 282, column: 9)
!6385 = !DILocation(line: 282, column: 9, scope: !6386)
!6386 = distinct !DILexicalBlock(scope: !6384, file: !6055, line: 282, column: 9)
!6387 = !DILocation(line: 282, column: 34, scope: !6376)
!6388 = !DILocation(line: 282, column: 31, scope: !6376)
!6389 = !DILocation(line: 282, column: 2, scope: !6376)
!6390 = distinct !DISubprogram(name: "__list_add", scope: !6055, file: !6055, line: 63, type: !6391, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6391 = !DISubroutineType(types: !6392)
!6392 = !{null, !158, !158, !158}
!6393 = !DILocalVariable(name: "new", arg: 1, scope: !6390, file: !6055, line: 63, type: !158)
!6394 = !DILocation(line: 63, column: 49, scope: !6390)
!6395 = !DILocalVariable(name: "prev", arg: 2, scope: !6390, file: !6055, line: 64, type: !158)
!6396 = !DILocation(line: 64, column: 28, scope: !6390)
!6397 = !DILocalVariable(name: "next", arg: 3, scope: !6390, file: !6055, line: 65, type: !158)
!6398 = !DILocation(line: 65, column: 28, scope: !6390)
!6399 = !DILocation(line: 67, column: 24, scope: !6400)
!6400 = distinct !DILexicalBlock(scope: !6390, file: !6055, line: 67, column: 6)
!6401 = !DILocation(line: 67, column: 29, scope: !6400)
!6402 = !DILocation(line: 67, column: 35, scope: !6400)
!6403 = !DILocation(line: 67, column: 7, scope: !6400)
!6404 = !DILocation(line: 67, column: 6, scope: !6390)
!6405 = !DILocation(line: 68, column: 3, scope: !6400)
!6406 = !DILocation(line: 70, column: 15, scope: !6390)
!6407 = !DILocation(line: 70, column: 2, scope: !6390)
!6408 = !DILocation(line: 70, column: 8, scope: !6390)
!6409 = !DILocation(line: 70, column: 13, scope: !6390)
!6410 = !DILocation(line: 71, column: 14, scope: !6390)
!6411 = !DILocation(line: 71, column: 2, scope: !6390)
!6412 = !DILocation(line: 71, column: 7, scope: !6390)
!6413 = !DILocation(line: 71, column: 12, scope: !6390)
!6414 = !DILocation(line: 72, column: 14, scope: !6390)
!6415 = !DILocation(line: 72, column: 2, scope: !6390)
!6416 = !DILocation(line: 72, column: 7, scope: !6390)
!6417 = !DILocation(line: 72, column: 12, scope: !6390)
!6418 = !DILocation(line: 73, column: 2, scope: !6390)
!6419 = !DILocation(line: 73, column: 2, scope: !6420)
!6420 = distinct !DILexicalBlock(scope: !6390, file: !6055, line: 73, column: 2)
!6421 = !DILocation(line: 73, column: 2, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6420, file: !6055, line: 73, column: 2)
!6423 = !DILocation(line: 73, column: 2, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6420, file: !6055, line: 73, column: 2)
!6425 = !DILocation(line: 74, column: 1, scope: !6390)
!6426 = distinct !DISubprogram(name: "__list_add_valid", scope: !6055, file: !6055, line: 45, type: !6427, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6427 = !DISubroutineType(types: !6428)
!6428 = !{!358, !158, !158, !158}
!6429 = !DILocalVariable(name: "new", arg: 1, scope: !6426, file: !6055, line: 45, type: !158)
!6430 = !DILocation(line: 45, column: 55, scope: !6426)
!6431 = !DILocalVariable(name: "prev", arg: 2, scope: !6426, file: !6055, line: 46, type: !158)
!6432 = !DILocation(line: 46, column: 23, scope: !6426)
!6433 = !DILocalVariable(name: "next", arg: 3, scope: !6426, file: !6055, line: 47, type: !158)
!6434 = !DILocation(line: 47, column: 23, scope: !6426)
!6435 = !DILocation(line: 49, column: 2, scope: !6426)
!6436 = distinct !DISubprogram(name: "alloc_pages_node", scope: !6340, file: !6340, line: 532, type: !6437, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6437 = !DISubroutineType(types: !6438)
!6438 = !{!162, !150, !148, !7}
!6439 = !DILocalVariable(name: "nid", arg: 1, scope: !6436, file: !6340, line: 532, type: !150)
!6440 = !DILocation(line: 532, column: 49, scope: !6436)
!6441 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !6436, file: !6340, line: 532, type: !148)
!6442 = !DILocation(line: 532, column: 60, scope: !6436)
!6443 = !DILocalVariable(name: "order", arg: 3, scope: !6436, file: !6340, line: 533, type: !7)
!6444 = !DILocation(line: 533, column: 20, scope: !6436)
!6445 = !DILocation(line: 535, column: 6, scope: !6446)
!6446 = distinct !DILexicalBlock(scope: !6436, file: !6340, line: 535, column: 6)
!6447 = !DILocation(line: 535, column: 10, scope: !6446)
!6448 = !DILocation(line: 535, column: 6, scope: !6436)
!6449 = !DILocation(line: 536, column: 9, scope: !6446)
!6450 = !DILocation(line: 536, column: 7, scope: !6446)
!6451 = !DILocation(line: 536, column: 3, scope: !6446)
!6452 = !DILocation(line: 538, column: 28, scope: !6436)
!6453 = !DILocation(line: 538, column: 33, scope: !6436)
!6454 = !DILocation(line: 538, column: 43, scope: !6436)
!6455 = !DILocation(line: 538, column: 9, scope: !6436)
!6456 = !DILocation(line: 538, column: 2, scope: !6436)
!6457 = distinct !DISubprogram(name: "numa_node_id", scope: !6458, file: !6458, line: 85, type: !4297, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6458 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/lizy2001/genbc/linux")
!6459 = !DILocation(line: 87, column: 2, scope: !6457)
!6460 = distinct !DISubprogram(name: "numa_mem_id", scope: !6461, file: !6461, line: 167, type: !4297, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6461 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/lizy2001/genbc/linux")
!6462 = !DILocation(line: 169, column: 9, scope: !6460)
!6463 = !DILocation(line: 169, column: 2, scope: !6460)
!6464 = distinct !DISubprogram(name: "__alloc_pages_node", scope: !6340, file: !6340, line: 519, type: !6437, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6465 = !DILocalVariable(name: "nid", arg: 1, scope: !6464, file: !6340, line: 519, type: !150)
!6466 = !DILocation(line: 519, column: 24, scope: !6464)
!6467 = !DILocalVariable(name: "gfp_mask", arg: 2, scope: !6464, file: !6340, line: 519, type: !148)
!6468 = !DILocation(line: 519, column: 35, scope: !6464)
!6469 = !DILocalVariable(name: "order", arg: 3, scope: !6464, file: !6340, line: 519, type: !7)
!6470 = !DILocation(line: 519, column: 58, scope: !6464)
!6471 = !DILocation(line: 524, column: 23, scope: !6464)
!6472 = !DILocation(line: 524, column: 33, scope: !6464)
!6473 = !DILocation(line: 524, column: 40, scope: !6464)
!6474 = !DILocation(line: 524, column: 9, scope: !6464)
!6475 = !DILocation(line: 524, column: 2, scope: !6464)
!6476 = distinct !DISubprogram(name: "__alloc_pages", scope: !6340, file: !6340, line: 509, type: !6477, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6477 = !DISubroutineType(types: !6478)
!6478 = !{!162, !148, !7, !150}
!6479 = !DILocalVariable(name: "gfp_mask", arg: 1, scope: !6476, file: !6340, line: 509, type: !148)
!6480 = !DILocation(line: 509, column: 21, scope: !6476)
!6481 = !DILocalVariable(name: "order", arg: 2, scope: !6476, file: !6340, line: 509, type: !7)
!6482 = !DILocation(line: 509, column: 44, scope: !6476)
!6483 = !DILocalVariable(name: "preferred_nid", arg: 3, scope: !6476, file: !6340, line: 509, type: !150)
!6484 = !DILocation(line: 509, column: 55, scope: !6476)
!6485 = !DILocation(line: 511, column: 32, scope: !6476)
!6486 = !DILocation(line: 511, column: 42, scope: !6476)
!6487 = !DILocation(line: 511, column: 49, scope: !6476)
!6488 = !DILocation(line: 511, column: 9, scope: !6476)
!6489 = !DILocation(line: 511, column: 2, scope: !6476)
!6490 = distinct !DISubprogram(name: "pfn_to_gfn", scope: !6491, file: !6491, line: 251, type: !6492, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6491 = !DIFile(filename: "./arch/x86/include/asm/xen/page.h", directory: "/home/lizy2001/genbc/linux")
!6492 = !DISubroutineType(types: !6493)
!6493 = !{!167, !167}
!6494 = !DILocalVariable(name: "pfn", arg: 1, scope: !6490, file: !6491, line: 251, type: !167)
!6495 = !DILocation(line: 251, column: 54, scope: !6490)
!6496 = !DILocation(line: 253, column: 6, scope: !6497)
!6497 = distinct !DILexicalBlock(scope: !6490, file: !6491, line: 253, column: 6)
!6498 = !DILocation(line: 253, column: 6, scope: !6490)
!6499 = !DILocation(line: 254, column: 10, scope: !6497)
!6500 = !DILocation(line: 254, column: 3, scope: !6497)
!6501 = !DILocation(line: 256, column: 21, scope: !6497)
!6502 = !DILocation(line: 256, column: 10, scope: !6497)
!6503 = !DILocation(line: 256, column: 3, scope: !6497)
!6504 = !DILocation(line: 257, column: 1, scope: !6490)
!6505 = distinct !DISubprogram(name: "xen_feature", scope: !6506, file: !6506, line: 19, type: !1360, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6506 = !DIFile(filename: "./include/xen/features.h", directory: "/home/lizy2001/genbc/linux")
!6507 = !DILocalVariable(name: "flag", arg: 1, scope: !6505, file: !6506, line: 19, type: !150)
!6508 = !DILocation(line: 19, column: 35, scope: !6505)
!6509 = !DILocation(line: 21, column: 22, scope: !6505)
!6510 = !DILocation(line: 21, column: 9, scope: !6505)
!6511 = !DILocation(line: 21, column: 2, scope: !6505)
!6512 = distinct !DISubprogram(name: "pfn_to_mfn", scope: !6491, file: !6491, line: 164, type: !6492, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6513 = !DILocalVariable(name: "pfn", arg: 1, scope: !6512, file: !6491, line: 164, type: !167)
!6514 = !DILocation(line: 164, column: 54, scope: !6512)
!6515 = !DILocalVariable(name: "mfn", scope: !6512, file: !6491, line: 166, type: !167)
!6516 = !DILocation(line: 166, column: 16, scope: !6512)
!6517 = !DILocation(line: 173, column: 6, scope: !6518)
!6518 = distinct !DILexicalBlock(scope: !6512, file: !6491, line: 173, column: 6)
!6519 = !DILocation(line: 173, column: 6, scope: !6512)
!6520 = !DILocation(line: 174, column: 10, scope: !6518)
!6521 = !DILocation(line: 174, column: 3, scope: !6518)
!6522 = !DILocation(line: 176, column: 21, scope: !6512)
!6523 = !DILocation(line: 176, column: 8, scope: !6512)
!6524 = !DILocation(line: 176, column: 6, scope: !6512)
!6525 = !DILocation(line: 178, column: 6, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !6512, file: !6491, line: 178, column: 6)
!6527 = !DILocation(line: 178, column: 10, scope: !6526)
!6528 = !DILocation(line: 178, column: 6, scope: !6512)
!6529 = !DILocation(line: 179, column: 7, scope: !6526)
!6530 = !DILocation(line: 179, column: 3, scope: !6526)
!6531 = !DILocation(line: 181, column: 9, scope: !6512)
!6532 = !DILocation(line: 181, column: 2, scope: !6512)
!6533 = !DILocation(line: 182, column: 1, scope: !6512)
!6534 = distinct !DISubprogram(name: "__pfn_to_mfn", scope: !6491, file: !6491, line: 141, type: !6492, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6535 = !DILocalVariable(name: "pfn", arg: 1, scope: !6534, file: !6491, line: 141, type: !167)
!6536 = !DILocation(line: 141, column: 56, scope: !6534)
!6537 = !DILocalVariable(name: "mfn", scope: !6534, file: !6491, line: 143, type: !167)
!6538 = !DILocation(line: 143, column: 16, scope: !6534)
!6539 = !DILocation(line: 145, column: 6, scope: !6540)
!6540 = distinct !DILexicalBlock(scope: !6534, file: !6491, line: 145, column: 6)
!6541 = !DILocation(line: 145, column: 12, scope: !6540)
!6542 = !DILocation(line: 145, column: 10, scope: !6540)
!6543 = !DILocation(line: 145, column: 6, scope: !6534)
!6544 = !DILocation(line: 146, column: 9, scope: !6540)
!6545 = !DILocation(line: 146, column: 22, scope: !6540)
!6546 = !DILocation(line: 146, column: 7, scope: !6540)
!6547 = !DILocation(line: 146, column: 3, scope: !6540)
!6548 = !DILocation(line: 147, column: 11, scope: !6549)
!6549 = distinct !DILexicalBlock(scope: !6540, file: !6491, line: 147, column: 11)
!6550 = !DILocation(line: 147, column: 11, scope: !6540)
!6551 = !DILocation(line: 148, column: 30, scope: !6549)
!6552 = !DILocation(line: 148, column: 10, scope: !6549)
!6553 = !DILocation(line: 148, column: 3, scope: !6549)
!6554 = !DILocation(line: 150, column: 10, scope: !6549)
!6555 = !DILocation(line: 150, column: 3, scope: !6549)
!6556 = !DILocation(line: 152, column: 6, scope: !6557)
!6557 = distinct !DILexicalBlock(scope: !6534, file: !6491, line: 152, column: 6)
!6558 = !DILocation(line: 152, column: 6, scope: !6534)
!6559 = !DILocation(line: 153, column: 30, scope: !6557)
!6560 = !DILocation(line: 153, column: 10, scope: !6557)
!6561 = !DILocation(line: 153, column: 3, scope: !6557)
!6562 = !DILocation(line: 155, column: 9, scope: !6534)
!6563 = !DILocation(line: 155, column: 2, scope: !6534)
!6564 = !DILocation(line: 156, column: 1, scope: !6534)
!6565 = distinct !DISubprogram(name: "__list_splice", scope: !6055, file: !6055, line: 433, type: !6566, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6566 = !DISubroutineType(types: !6567)
!6567 = !{null, !6379, !158, !158}
!6568 = !DILocalVariable(name: "list", arg: 1, scope: !6565, file: !6055, line: 433, type: !6379)
!6569 = !DILocation(line: 433, column: 58, scope: !6565)
!6570 = !DILocalVariable(name: "prev", arg: 2, scope: !6565, file: !6055, line: 434, type: !158)
!6571 = !DILocation(line: 434, column: 24, scope: !6565)
!6572 = !DILocalVariable(name: "next", arg: 3, scope: !6565, file: !6055, line: 435, type: !158)
!6573 = !DILocation(line: 435, column: 24, scope: !6565)
!6574 = !DILocalVariable(name: "first", scope: !6565, file: !6055, line: 437, type: !158)
!6575 = !DILocation(line: 437, column: 20, scope: !6565)
!6576 = !DILocation(line: 437, column: 28, scope: !6565)
!6577 = !DILocation(line: 437, column: 34, scope: !6565)
!6578 = !DILocalVariable(name: "last", scope: !6565, file: !6055, line: 438, type: !158)
!6579 = !DILocation(line: 438, column: 20, scope: !6565)
!6580 = !DILocation(line: 438, column: 27, scope: !6565)
!6581 = !DILocation(line: 438, column: 33, scope: !6565)
!6582 = !DILocation(line: 440, column: 16, scope: !6565)
!6583 = !DILocation(line: 440, column: 2, scope: !6565)
!6584 = !DILocation(line: 440, column: 9, scope: !6565)
!6585 = !DILocation(line: 440, column: 14, scope: !6565)
!6586 = !DILocation(line: 441, column: 15, scope: !6565)
!6587 = !DILocation(line: 441, column: 2, scope: !6565)
!6588 = !DILocation(line: 441, column: 8, scope: !6565)
!6589 = !DILocation(line: 441, column: 13, scope: !6565)
!6590 = !DILocation(line: 443, column: 15, scope: !6565)
!6591 = !DILocation(line: 443, column: 2, scope: !6565)
!6592 = !DILocation(line: 443, column: 8, scope: !6565)
!6593 = !DILocation(line: 443, column: 13, scope: !6565)
!6594 = !DILocation(line: 444, column: 15, scope: !6565)
!6595 = !DILocation(line: 444, column: 2, scope: !6565)
!6596 = !DILocation(line: 444, column: 8, scope: !6565)
!6597 = !DILocation(line: 444, column: 13, scope: !6565)
!6598 = !DILocation(line: 445, column: 1, scope: !6565)
!6599 = distinct !DISubprogram(name: "find_grefs", scope: !3, file: !3, line: 218, type: !6600, scopeLine: 220, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6600 = !DISubroutineType(types: !6601)
!6601 = !{!151, !4329, !3027, !1494}
!6602 = !DILocalVariable(name: "priv", arg: 1, scope: !6599, file: !3, line: 218, type: !4329)
!6603 = !DILocation(line: 218, column: 76, scope: !6599)
!6604 = !DILocalVariable(name: "index", arg: 2, scope: !6599, file: !3, line: 219, type: !3027)
!6605 = !DILocation(line: 219, column: 12, scope: !6599)
!6606 = !DILocalVariable(name: "count", arg: 3, scope: !6599, file: !3, line: 219, type: !1494)
!6607 = !DILocation(line: 219, column: 28, scope: !6599)
!6608 = !DILocalVariable(name: "rv", scope: !6599, file: !3, line: 221, type: !151)
!6609 = !DILocation(line: 221, column: 24, scope: !6599)
!6610 = !DILocalVariable(name: "gref", scope: !6599, file: !3, line: 221, type: !151)
!6611 = !DILocation(line: 221, column: 36, scope: !6599)
!6612 = !DILocalVariable(name: "__mptr", scope: !6613, file: !3, line: 222, type: !147)
!6613 = distinct !DILexicalBlock(scope: !6614, file: !3, line: 222, column: 2)
!6614 = distinct !DILexicalBlock(scope: !6599, file: !3, line: 222, column: 2)
!6615 = !DILocation(line: 222, column: 2, scope: !6613)
!6616 = !DILocation(line: 222, column: 2, scope: !6617)
!6617 = distinct !DILexicalBlock(scope: !6613, file: !3, line: 222, column: 2)
!6618 = !DILocation(line: 222, column: 2, scope: !6614)
!6619 = !DILocation(line: 222, column: 2, scope: !6620)
!6620 = distinct !DILexicalBlock(scope: !6614, file: !3, line: 222, column: 2)
!6621 = !DILocation(line: 223, column: 7, scope: !6622)
!6622 = distinct !DILexicalBlock(scope: !6623, file: !3, line: 223, column: 7)
!6623 = distinct !DILexicalBlock(scope: !6620, file: !3, line: 222, column: 52)
!6624 = !DILocation(line: 223, column: 13, scope: !6622)
!6625 = !DILocation(line: 223, column: 27, scope: !6622)
!6626 = !DILocation(line: 223, column: 24, scope: !6622)
!6627 = !DILocation(line: 223, column: 33, scope: !6622)
!6628 = !DILocation(line: 223, column: 37, scope: !6622)
!6629 = !DILocation(line: 223, column: 7, scope: !6623)
!6630 = !DILocation(line: 224, column: 9, scope: !6622)
!6631 = !DILocation(line: 224, column: 7, scope: !6622)
!6632 = !DILocation(line: 224, column: 4, scope: !6622)
!6633 = !DILocation(line: 225, column: 7, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6623, file: !3, line: 225, column: 7)
!6635 = !DILocation(line: 225, column: 7, scope: !6623)
!6636 = !DILocation(line: 226, column: 8, scope: !6637)
!6637 = distinct !DILexicalBlock(scope: !6638, file: !3, line: 226, column: 8)
!6638 = distinct !DILexicalBlock(scope: !6634, file: !3, line: 225, column: 11)
!6639 = !DILocation(line: 226, column: 14, scope: !6637)
!6640 = !DILocation(line: 226, column: 28, scope: !6637)
!6641 = !DILocation(line: 226, column: 25, scope: !6637)
!6642 = !DILocation(line: 226, column: 8, scope: !6638)
!6643 = !DILocation(line: 227, column: 5, scope: !6637)
!6644 = !DILocation(line: 228, column: 10, scope: !6638)
!6645 = !DILocation(line: 229, column: 9, scope: !6638)
!6646 = !DILocation(line: 230, column: 8, scope: !6647)
!6647 = distinct !DILexicalBlock(scope: !6638, file: !3, line: 230, column: 8)
!6648 = !DILocation(line: 230, column: 14, scope: !6647)
!6649 = !DILocation(line: 230, column: 8, scope: !6638)
!6650 = !DILocation(line: 231, column: 12, scope: !6647)
!6651 = !DILocation(line: 231, column: 5, scope: !6647)
!6652 = !DILocation(line: 232, column: 3, scope: !6638)
!6653 = !DILocation(line: 233, column: 2, scope: !6623)
!6654 = !DILocalVariable(name: "__mptr", scope: !6655, file: !3, line: 222, type: !147)
!6655 = distinct !DILexicalBlock(scope: !6620, file: !3, line: 222, column: 2)
!6656 = !DILocation(line: 222, column: 2, scope: !6655)
!6657 = !DILocation(line: 222, column: 2, scope: !6658)
!6658 = distinct !DILexicalBlock(scope: !6655, file: !3, line: 222, column: 2)
!6659 = distinct !{!6659, !6618, !6660}
!6660 = !DILocation(line: 233, column: 2, scope: !6614)
!6661 = !DILocation(line: 234, column: 2, scope: !6599)
!6662 = !DILocation(line: 235, column: 1, scope: !6599)
!6663 = distinct !DISubprogram(name: "vma_pages", scope: !14, file: !14, line: 2685, type: !1100, scopeLine: 2686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6664 = !DILocalVariable(name: "vma", arg: 1, scope: !6663, file: !14, line: 2685, type: !1004)
!6665 = !DILocation(line: 2685, column: 62, scope: !6663)
!6666 = !DILocation(line: 2687, column: 10, scope: !6663)
!6667 = !DILocation(line: 2687, column: 15, scope: !6663)
!6668 = !DILocation(line: 2687, column: 24, scope: !6663)
!6669 = !DILocation(line: 2687, column: 29, scope: !6663)
!6670 = !DILocation(line: 2687, column: 22, scope: !6663)
!6671 = !DILocation(line: 2687, column: 39, scope: !6663)
!6672 = !DILocation(line: 2687, column: 2, scope: !6663)
!6673 = distinct !DISubprogram(name: "gntalloc_vma_open", scope: !3, file: !3, line: 462, type: !1038, scopeLine: 463, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6674 = !DILocalVariable(name: "vma", arg: 1, scope: !6673, file: !3, line: 462, type: !1004)
!6675 = !DILocation(line: 462, column: 54, scope: !6673)
!6676 = !DILocalVariable(name: "priv", scope: !6673, file: !3, line: 464, type: !4422)
!6677 = !DILocation(line: 464, column: 36, scope: !6673)
!6678 = !DILocation(line: 464, column: 43, scope: !6673)
!6679 = !DILocation(line: 464, column: 48, scope: !6673)
!6680 = !DILocation(line: 466, column: 7, scope: !6681)
!6681 = distinct !DILexicalBlock(scope: !6673, file: !3, line: 466, column: 6)
!6682 = !DILocation(line: 466, column: 6, scope: !6673)
!6683 = !DILocation(line: 467, column: 3, scope: !6681)
!6684 = !DILocation(line: 469, column: 2, scope: !6673)
!6685 = !DILocation(line: 470, column: 2, scope: !6673)
!6686 = !DILocation(line: 470, column: 8, scope: !6673)
!6687 = !DILocation(line: 470, column: 13, scope: !6673)
!6688 = !DILocation(line: 471, column: 2, scope: !6673)
!6689 = !DILocation(line: 472, column: 1, scope: !6673)
!6690 = distinct !DISubprogram(name: "gntalloc_vma_close", scope: !3, file: !3, line: 474, type: !1038, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6691 = !DILocalVariable(name: "vma", arg: 1, scope: !6690, file: !3, line: 474, type: !1004)
!6692 = !DILocation(line: 474, column: 55, scope: !6690)
!6693 = !DILocalVariable(name: "priv", scope: !6690, file: !3, line: 476, type: !4422)
!6694 = !DILocation(line: 476, column: 36, scope: !6690)
!6695 = !DILocation(line: 476, column: 43, scope: !6690)
!6696 = !DILocation(line: 476, column: 48, scope: !6690)
!6697 = !DILocalVariable(name: "gref", scope: !6690, file: !3, line: 477, type: !151)
!6698 = !DILocation(line: 477, column: 24, scope: !6690)
!6699 = !DILocalVariable(name: "next", scope: !6690, file: !3, line: 477, type: !151)
!6700 = !DILocation(line: 477, column: 31, scope: !6690)
!6701 = !DILocalVariable(name: "i", scope: !6690, file: !3, line: 478, type: !150)
!6702 = !DILocation(line: 478, column: 6, scope: !6690)
!6703 = !DILocation(line: 480, column: 7, scope: !6704)
!6704 = distinct !DILexicalBlock(scope: !6690, file: !3, line: 480, column: 6)
!6705 = !DILocation(line: 480, column: 6, scope: !6690)
!6706 = !DILocation(line: 481, column: 3, scope: !6704)
!6707 = !DILocation(line: 483, column: 2, scope: !6690)
!6708 = !DILocation(line: 484, column: 2, scope: !6690)
!6709 = !DILocation(line: 484, column: 8, scope: !6690)
!6710 = !DILocation(line: 484, column: 13, scope: !6690)
!6711 = !DILocation(line: 485, column: 6, scope: !6712)
!6712 = distinct !DILexicalBlock(scope: !6690, file: !3, line: 485, column: 6)
!6713 = !DILocation(line: 485, column: 12, scope: !6712)
!6714 = !DILocation(line: 485, column: 18, scope: !6712)
!6715 = !DILocation(line: 485, column: 6, scope: !6690)
!6716 = !DILocation(line: 486, column: 10, scope: !6717)
!6717 = distinct !DILexicalBlock(scope: !6712, file: !3, line: 485, column: 24)
!6718 = !DILocation(line: 486, column: 16, scope: !6717)
!6719 = !DILocation(line: 486, column: 8, scope: !6717)
!6720 = !DILocation(line: 487, column: 10, scope: !6721)
!6721 = distinct !DILexicalBlock(scope: !6717, file: !3, line: 487, column: 3)
!6722 = !DILocation(line: 487, column: 8, scope: !6721)
!6723 = !DILocation(line: 487, column: 15, scope: !6724)
!6724 = distinct !DILexicalBlock(scope: !6721, file: !3, line: 487, column: 3)
!6725 = !DILocation(line: 487, column: 19, scope: !6724)
!6726 = !DILocation(line: 487, column: 25, scope: !6724)
!6727 = !DILocation(line: 487, column: 17, scope: !6724)
!6728 = !DILocation(line: 487, column: 3, scope: !6721)
!6729 = !DILocation(line: 488, column: 4, scope: !6730)
!6730 = distinct !DILexicalBlock(scope: !6724, file: !3, line: 487, column: 37)
!6731 = !DILocation(line: 488, column: 10, scope: !6730)
!6732 = !DILocation(line: 488, column: 15, scope: !6730)
!6733 = !DILocalVariable(name: "__mptr", scope: !6734, file: !3, line: 489, type: !147)
!6734 = distinct !DILexicalBlock(scope: !6730, file: !3, line: 489, column: 11)
!6735 = !DILocation(line: 489, column: 11, scope: !6734)
!6736 = !DILocation(line: 489, column: 11, scope: !6737)
!6737 = distinct !DILexicalBlock(scope: !6734, file: !3, line: 489, column: 11)
!6738 = !DILocation(line: 489, column: 9, scope: !6730)
!6739 = !DILocation(line: 491, column: 8, scope: !6740)
!6740 = distinct !DILexicalBlock(scope: !6730, file: !3, line: 491, column: 8)
!6741 = !DILocation(line: 491, column: 14, scope: !6740)
!6742 = !DILocation(line: 491, column: 20, scope: !6740)
!6743 = !DILocation(line: 491, column: 8, scope: !6730)
!6744 = !DILocation(line: 492, column: 16, scope: !6740)
!6745 = !DILocation(line: 492, column: 5, scope: !6740)
!6746 = !DILocation(line: 493, column: 11, scope: !6730)
!6747 = !DILocation(line: 493, column: 9, scope: !6730)
!6748 = !DILocation(line: 494, column: 3, scope: !6730)
!6749 = !DILocation(line: 487, column: 33, scope: !6724)
!6750 = !DILocation(line: 487, column: 3, scope: !6724)
!6751 = distinct !{!6751, !6728, !6752}
!6752 = !DILocation(line: 494, column: 3, scope: !6721)
!6753 = !DILocation(line: 495, column: 9, scope: !6717)
!6754 = !DILocation(line: 495, column: 3, scope: !6717)
!6755 = !DILocation(line: 496, column: 2, scope: !6717)
!6756 = !DILocation(line: 497, column: 2, scope: !6690)
!6757 = !DILocation(line: 498, column: 1, scope: !6690)
!6758 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6055, file: !6055, line: 33, type: !6056, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!6759 = !DILocalVariable(name: "list", arg: 1, scope: !6758, file: !6055, line: 33, type: !158)
!6760 = !DILocation(line: 33, column: 53, scope: !6758)
!6761 = !DILocation(line: 35, column: 2, scope: !6758)
!6762 = !DILocation(line: 35, column: 2, scope: !6763)
!6763 = distinct !DILexicalBlock(scope: !6758, file: !6055, line: 35, column: 2)
!6764 = !DILocation(line: 35, column: 2, scope: !6765)
!6765 = distinct !DILexicalBlock(scope: !6763, file: !6055, line: 35, column: 2)
!6766 = !DILocation(line: 35, column: 2, scope: !6767)
!6767 = distinct !DILexicalBlock(scope: !6763, file: !6055, line: 35, column: 2)
!6768 = !DILocation(line: 36, column: 15, scope: !6758)
!6769 = !DILocation(line: 36, column: 2, scope: !6758)
!6770 = !DILocation(line: 36, column: 8, scope: !6758)
!6771 = !DILocation(line: 36, column: 13, scope: !6758)
!6772 = !DILocation(line: 37, column: 1, scope: !6758)
