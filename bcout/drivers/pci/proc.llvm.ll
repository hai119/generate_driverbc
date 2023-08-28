; ModuleID = '../bcout/drivers/pci/proc.llvm.bc'
source_filename = "drivers/pci/proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_pci_proc_init6:\09\09\09"
module asm ".long\09pci_proc_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.proc_dir_entry = type opaque
%struct.proc_ops = type { i32, i32 (%struct.inode*, %struct.file*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i64, i32)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64 (%struct.file*, i64, i64, i64, i64)* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
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
%struct.seq_file = type { i8*, i64, i64, i64, i64, i64, i64, %struct.mutex, %struct.seq_operations*, i32, %struct.file*, i8* }
%struct.seq_operations = type { i8* (%struct.seq_file*, i64*)*, void (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i8*, i64*)*, i32 (%struct.seq_file*, i8*)* }
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
%struct.swap_info_struct = type opaque
%union.anon.59 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.30 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.30 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.poll_table_struct = type opaque
%struct.kmem_cache = type opaque
%struct.cpuinfo_x86 = type { i8, i8, i8, i8, i32, [3 x i32], i8, i8, i8, i8, i32, i32, %union.anon.66, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8 }
%union.anon.66 = type { i64, [72 x i8] }
%struct.pci_dev = type <{ %struct.list_head, %struct.pci_bus*, %struct.pci_bus*, i8*, %struct.proc_dir_entry*, %struct.pci_slot*, i32, i16, i16, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, [6 x i8], i64*, %struct.pci_driver*, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, [4 x i8], %struct.pcie_link_state*, i8, [3 x i8], i32, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], [4 x i8], %struct.hlist_head, %struct.bin_attribute*, i32, [4 x i8], [17 x %struct.bin_attribute*], [17 x %struct.bin_attribute*], %struct.attribute_group**, %struct.pci_vpd*, %union.anon.65, i16, i8, i8, i16, [2 x i8], i64, i64, i8*, i64 }>
%struct.pci_bus = type { %struct.list_head, %struct.pci_bus*, %struct.list_head, %struct.list_head, %struct.pci_dev*, %struct.list_head, [4 x %struct.resource*], %struct.list_head, %struct.resource, %struct.pci_ops*, %struct.msi_controller*, i8*, %struct.proc_dir_entry*, i8, i8, i8, i8, [48 x i8], i16, i16, %struct.device*, %struct.device, %struct.bin_attribute*, %struct.bin_attribute*, i8 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.pci_ops = type { i32 (%struct.pci_bus*)*, void (%struct.pci_bus*)*, i8* (%struct.pci_bus*, i32, i32)*, i32 (%struct.pci_bus*, i32, i32, i32, i32*)*, i32 (%struct.pci_bus*, i32, i32, i32, i32)* }
%struct.msi_controller = type opaque
%struct.pci_slot = type { %struct.pci_bus*, %struct.list_head, %struct.hotplug_slot*, i8, %struct.kobject }
%struct.hotplug_slot = type opaque
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
%struct.pci_driver = type { %struct.list_head, i8*, %struct.pci_device_id*, i32 (%struct.pci_dev*, %struct.pci_device_id*)*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, {}*, void (%struct.pci_dev*)*, i32 (%struct.pci_dev*, i32)*, %struct.pci_error_handlers*, %struct.attribute_group**, %struct.device_driver, %struct.pci_dynids }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_error_handlers = type { i32 (%struct.pci_dev*, i32)*, i32 (%struct.pci_dev*)*, i32 (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)*, void (%struct.pci_dev*)* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.driver_private = type opaque
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.device_dma_parameters = type { i32, i64 }
%struct.pcie_link_state = type opaque
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
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
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.pci_vpd = type opaque
%union.anon.65 = type { %struct.pci_sriov* }
%struct.pci_sriov = type { i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, %struct.pci_dev*, %struct.pci_dev*, i32, i8, i16, i16, [6 x i64], i8 }
%struct.pci_sysdata = type { i32, i32, %struct.acpi_device*, i8*, i8*, %struct.pci_dev* }
%struct.acpi_device = type opaque
%struct.pci_filp_private = type { i32, i32 }

@proc_initialized = internal global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"%04x:%02x\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@proc_bus_pci_dir = internal global %struct.proc_dir_entry* null, align 8, !dbg !174
@.str.2 = private unnamed_addr constant [8 x i8] c"%02x.%x\00", align 1
@proc_bus_pci_ops = internal constant %struct.proc_ops { i32 0, i32 (%struct.inode*, %struct.file*)* @proc_bus_pci_open, i64 (%struct.file*, i8*, i64, i64*)* @proc_bus_pci_read, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.file*, i8*, i64, i64*)* @proc_bus_pci_write, i64 (%struct.file*, i64, i32)* @proc_bus_pci_lseek, i32 (%struct.inode*, %struct.file*)* @proc_bus_pci_release, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* @proc_bus_pci_ioctl, i32 (%struct.file*, %struct.vm_area_struct*)* @proc_bus_pci_mmap, i64 (%struct.file*, i64, i64, i64, i64)* null }, align 8, !dbg !179
@__UNIQUE_ID___addressable_pci_proc_init236 = internal global i8* bitcast (i32 ()* @pci_proc_init to i8*), section ".discard.addressable", align 8, !dbg !172
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"bus/pci\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"devices\00", align 1
@proc_bus_pci_devices_op = internal constant %struct.seq_operations { i8* (%struct.seq_file*, i64*)* @pci_seq_start, void (%struct.seq_file*, i8*)* @pci_seq_stop, i8* (%struct.seq_file*, i8*, i64*)* @pci_seq_next, i32 (%struct.seq_file*, i8*)* @show_device }, align 8, !dbg !3091
@.str.6 = private unnamed_addr constant [21 x i8] c"%02x%02x\09%04x%04x\09%x\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"\09%16llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_pci_proc_init236 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_proc_attach_device(%struct.pci_dev* %dev) #0 !dbg !3099 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.pci_dev*, align 8
  %bus = alloca %struct.pci_bus*, align 8
  %e = alloca %struct.proc_dir_entry*, align 8
  %name = alloca [16 x i8], align 16
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4133, metadata !DIExpression()), !dbg !4134
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus, metadata !4135, metadata !DIExpression()), !dbg !4136
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4137
  %bus1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 1, !dbg !4138
  %1 = load %struct.pci_bus*, %struct.pci_bus** %bus1, align 8, !dbg !4138
  store %struct.pci_bus* %1, %struct.pci_bus** %bus, align 8, !dbg !4136
  call void @llvm.dbg.declare(metadata %struct.proc_dir_entry** %e, metadata !4139, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.declare(metadata [16 x i8]* %name, metadata !4141, metadata !DIExpression()), !dbg !4142
  %2 = load i32, i32* @proc_initialized, align 4, !dbg !4143
  %tobool = icmp ne i32 %2, 0, !dbg !4143
  br i1 %tobool, label %if.end, label %if.then, !dbg !4145

if.then:                                          ; preds = %entry
  store i32 -13, i32* %retval, align 4, !dbg !4146
  br label %return, !dbg !4146

if.end:                                           ; preds = %entry
  %3 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4147
  %procdir = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %3, i32 0, i32 12, !dbg !4149
  %4 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %procdir, align 8, !dbg !4149
  %tobool2 = icmp ne %struct.proc_dir_entry* %4, null, !dbg !4147
  br i1 %tobool2, label %if.end20, label %if.then3, !dbg !4150

if.then3:                                         ; preds = %if.end
  %5 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4151
  %call = call i32 @pci_proc_domain(%struct.pci_bus* %5) #9, !dbg !4154
  %tobool4 = icmp ne i32 %call, 0, !dbg !4154
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !4155

if.then5:                                         ; preds = %if.then3
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !4156
  %6 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4158
  %call6 = call i32 @pci_domain_nr(%struct.pci_bus* %6) #9, !dbg !4159
  %7 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4160
  %number = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %7, i32 0, i32 13, !dbg !4161
  %8 = load i8, i8* %number, align 8, !dbg !4161
  %conv = zext i8 %8 to i32, !dbg !4160
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %call6, i32 %conv) #9, !dbg !4162
  br label %if.end12, !dbg !4163

if.else:                                          ; preds = %if.then3
  %arraydecay8 = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !4164
  %9 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4166
  %number9 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %9, i32 0, i32 13, !dbg !4167
  %10 = load i8, i8* %number9, align 8, !dbg !4167
  %conv10 = zext i8 %10 to i32, !dbg !4166
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %conv10) #9, !dbg !4168
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then5
  %arraydecay13 = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !4169
  %11 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @proc_bus_pci_dir, align 8, !dbg !4170
  %call14 = call %struct.proc_dir_entry* @proc_mkdir(i8* %arraydecay13, %struct.proc_dir_entry* %11) #9, !dbg !4171
  %12 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4172
  %procdir15 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %12, i32 0, i32 12, !dbg !4173
  store %struct.proc_dir_entry* %call14, %struct.proc_dir_entry** %procdir15, align 8, !dbg !4174
  %13 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4175
  %procdir16 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %13, i32 0, i32 12, !dbg !4177
  %14 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %procdir16, align 8, !dbg !4177
  %tobool17 = icmp ne %struct.proc_dir_entry* %14, null, !dbg !4175
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !4178

if.then18:                                        ; preds = %if.end12
  store i32 -12, i32* %retval, align 4, !dbg !4179
  br label %return, !dbg !4179

if.end19:                                         ; preds = %if.end12
  br label %if.end20, !dbg !4180

if.end20:                                         ; preds = %if.end19, %if.end
  %arraydecay21 = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !4181
  %15 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4182
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 6, !dbg !4182
  %16 = load i32, i32* %devfn, align 8, !dbg !4182
  %shr = lshr i32 %16, 3, !dbg !4182
  %and = and i32 %shr, 31, !dbg !4182
  %17 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4183
  %devfn22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 6, !dbg !4183
  %18 = load i32, i32* %devfn22, align 8, !dbg !4183
  %and23 = and i32 %18, 7, !dbg !4183
  %call24 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %and, i32 %and23) #9, !dbg !4184
  %arraydecay25 = getelementptr inbounds [16 x i8], [16 x i8]* %name, i64 0, i64 0, !dbg !4185
  %19 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !4186
  %procdir26 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %19, i32 0, i32 12, !dbg !4187
  %20 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %procdir26, align 8, !dbg !4187
  %21 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4188
  %22 = bitcast %struct.pci_dev* %21 to i8*, !dbg !4188
  %call27 = call %struct.proc_dir_entry* @proc_create_data(i8* %arraydecay25, i16 zeroext -32348, %struct.proc_dir_entry* %20, %struct.proc_ops* @proc_bus_pci_ops, i8* %22) #9, !dbg !4189
  store %struct.proc_dir_entry* %call27, %struct.proc_dir_entry** %e, align 8, !dbg !4190
  %23 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %e, align 8, !dbg !4191
  %tobool28 = icmp ne %struct.proc_dir_entry* %23, null, !dbg !4191
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !4193

if.then29:                                        ; preds = %if.end20
  store i32 -12, i32* %retval, align 4, !dbg !4194
  br label %return, !dbg !4194

if.end30:                                         ; preds = %if.end20
  %24 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %e, align 8, !dbg !4195
  %25 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4196
  %cfg_size = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %25, i32 0, i32 42, !dbg !4197
  %26 = load i32, i32* %cfg_size, align 8, !dbg !4197
  %conv31 = sext i32 %26 to i64, !dbg !4196
  call void @proc_set_size(%struct.proc_dir_entry* %24, i64 %conv31) #9, !dbg !4198
  %27 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %e, align 8, !dbg !4199
  %28 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4200
  %procent = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 4, !dbg !4201
  store %struct.proc_dir_entry* %27, %struct.proc_dir_entry** %procent, align 8, !dbg !4202
  store i32 0, i32* %retval, align 4, !dbg !4203
  br label %return, !dbg !4203

return:                                           ; preds = %if.end30, %if.then29, %if.then18, %if.then
  %29 = load i32, i32* %retval, align 4, !dbg !4204
  ret i32 %29, !dbg !4204
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_proc_domain(%struct.pci_bus* %bus) #0 !dbg !4205 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4207, metadata !DIExpression()), !dbg !4208
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4209
  %call = call i32 @pci_domain_nr(%struct.pci_bus* %0) #9, !dbg !4210
  ret i32 %call, !dbg !4211
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_domain_nr(%struct.pci_bus* %bus) #0 !dbg !4212 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4213, metadata !DIExpression()), !dbg !4214
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4215
  %call = call %struct.pci_sysdata* @to_pci_sysdata(%struct.pci_bus* %0) #9, !dbg !4216
  %domain = getelementptr inbounds %struct.pci_sysdata, %struct.pci_sysdata* %call, i32 0, i32 0, !dbg !4217
  %1 = load i32, i32* %domain, align 8, !dbg !4217
  ret i32 %1, !dbg !4218
}

; Function Attrs: noredzone
declare dso_local %struct.proc_dir_entry* @proc_mkdir(i8*, %struct.proc_dir_entry*) #2

; Function Attrs: noredzone
declare dso_local %struct.proc_dir_entry* @proc_create_data(i8*, i16 zeroext, %struct.proc_dir_entry*, %struct.proc_ops*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @proc_set_size(%struct.proc_dir_entry*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_proc_detach_device(%struct.pci_dev* %dev) #0 !dbg !4219 {
entry:
  %dev.addr = alloca %struct.pci_dev*, align 8
  store %struct.pci_dev* %dev, %struct.pci_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev.addr, metadata !4220, metadata !DIExpression()), !dbg !4221
  %0 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4222
  %procent = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %0, i32 0, i32 4, !dbg !4223
  %1 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %procent, align 8, !dbg !4223
  call void @proc_remove(%struct.proc_dir_entry* %1) #9, !dbg !4224
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev.addr, align 8, !dbg !4225
  %procent1 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %2, i32 0, i32 4, !dbg !4226
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %procent1, align 8, !dbg !4227
  ret i32 0, !dbg !4228
}

; Function Attrs: noredzone
declare dso_local void @proc_remove(%struct.proc_dir_entry*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @pci_proc_detach_bus(%struct.pci_bus* %bus) #0 !dbg !4229 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4230, metadata !DIExpression()), !dbg !4231
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4232
  %procdir = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 12, !dbg !4233
  %1 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %procdir, align 8, !dbg !4233
  call void @proc_remove(%struct.proc_dir_entry* %1) #9, !dbg !4234
  ret i32 0, !dbg !4235
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @pci_proc_init() #3 section ".init.text" !dbg !4236 {
entry:
  %dev = alloca %struct.pci_dev*, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !4239, metadata !DIExpression()), !dbg !4240
  store %struct.pci_dev* null, %struct.pci_dev** %dev, align 8, !dbg !4240
  %call = call %struct.proc_dir_entry* @proc_mkdir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %struct.proc_dir_entry* null) #9, !dbg !4241
  store %struct.proc_dir_entry* %call, %struct.proc_dir_entry** @proc_bus_pci_dir, align 8, !dbg !4242
  %0 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** @proc_bus_pci_dir, align 8, !dbg !4243
  %call1 = call %struct.proc_dir_entry* @proc_create_seq_private(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i16 zeroext 0, %struct.proc_dir_entry* %0, %struct.seq_operations* @proc_bus_pci_devices_op, i32 0, i8* null) #9, !dbg !4243
  store i32 1, i32* @proc_initialized, align 4, !dbg !4244
  br label %while.cond, !dbg !4245

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4245
  %call2 = call %struct.pci_dev* @pci_get_device(i32 -1, i32 -1, %struct.pci_dev* %1) #9, !dbg !4245
  store %struct.pci_dev* %call2, %struct.pci_dev** %dev, align 8, !dbg !4245
  %cmp = icmp ne %struct.pci_dev* %call2, null, !dbg !4245
  br i1 %cmp, label %while.body, label %while.end, !dbg !4245

while.body:                                       ; preds = %while.cond
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4246
  %call3 = call i32 @pci_proc_attach_device(%struct.pci_dev* %2) #9, !dbg !4247
  br label %while.cond, !dbg !4245, !llvm.loop !4248

while.end:                                        ; preds = %while.cond
  ret i32 0, !dbg !4250
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.pci_sysdata* @to_pci_sysdata(%struct.pci_bus* %bus) #0 !dbg !4251 {
entry:
  %bus.addr = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %bus, %struct.pci_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pci_bus** %bus.addr, metadata !4267, metadata !DIExpression()), !dbg !4268
  %0 = load %struct.pci_bus*, %struct.pci_bus** %bus.addr, align 8, !dbg !4269
  %sysdata = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %0, i32 0, i32 11, !dbg !4270
  %1 = load i8*, i8** %sysdata, align 8, !dbg !4270
  %2 = bitcast i8* %1 to %struct.pci_sysdata*, !dbg !4269
  ret %struct.pci_sysdata* %2, !dbg !4271
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @proc_bus_pci_open(%struct.inode* %inode, %struct.file* %file) #0 !dbg !4272 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4273, metadata !DIExpression()), !dbg !4277
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4285, metadata !DIExpression()), !dbg !4286
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4287, metadata !DIExpression()), !dbg !4288
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4289, metadata !DIExpression()), !dbg !4290
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4291, metadata !DIExpression()), !dbg !4295
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4297, metadata !DIExpression()), !dbg !4301
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4303, metadata !DIExpression()), !dbg !4307
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4312, metadata !DIExpression()), !dbg !4313
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4314, metadata !DIExpression()), !dbg !4315
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4316, metadata !DIExpression()), !dbg !4317
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4318, metadata !DIExpression()), !dbg !4319
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4320, metadata !DIExpression()), !dbg !4321
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4322, metadata !DIExpression()), !dbg !4323
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4324, metadata !DIExpression()), !dbg !4325
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4326, metadata !DIExpression()), !dbg !4327
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  %fpriv = alloca %struct.pci_filp_private*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4328, metadata !DIExpression()), !dbg !4329
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4330, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.declare(metadata %struct.pci_filp_private** %fpriv, metadata !4332, metadata !DIExpression()), !dbg !4338
  store i64 8, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %0 = load i64, i64* %size.addr.i, align 8, !dbg !4339
  %1 = call i1 @llvm.is.constant.i64(i64 %0) #8, !dbg !4340
  br i1 %1, label %if.then.i, label %if.end9.i, !dbg !4341

if.then.i:                                        ; preds = %entry
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !4342
  %cmp.i = icmp ugt i64 %2, 8192, !dbg !4343
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4344

if.then1.i:                                       ; preds = %if.then.i
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !4345
  %4 = load i32, i32* %flags.addr.i, align 4, !dbg !4346
  store i64 %3, i64* %size.addr.i.i, align 8
  store i32 %4, i32* %flags.addr.i.i, align 4
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !4347
  %call.i.i = call i32 @get_order(i64 %5) #10, !dbg !4348
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4321
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !4349
  %7 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4350
  %8 = load i32, i32* %order.i.i, align 4, !dbg !4351
  store i64 %6, i64* %size.addr.i.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i.i, align 4
  store i32 %8, i32* %order.addr.i.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4352
  %10 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4353
  %11 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4354
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %9, i32 %10, i32 %11) #11, !dbg !4355
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4355
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4355
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4355
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !4355
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4356
  br label %kmalloc.exit, !dbg !4356

if.end.i:                                         ; preds = %if.then.i
  %12 = load i64, i64* %size.addr.i, align 8, !dbg !4357
  store i64 %12, i64* %size.addr.i11.i, align 8
  %13 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4358
  %tobool.i.i = icmp ne i64 %13, 0, !dbg !4358
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4360

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4361
  br label %kmalloc_index.exit.i, !dbg !4361

if.end.i.i:                                       ; preds = %if.end.i
  %14 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4362
  %cmp.i.i = icmp ule i64 %14, 8, !dbg !4364
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4365

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4366
  br label %kmalloc_index.exit.i, !dbg !4366

if.end2.i.i:                                      ; preds = %if.end.i.i
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4367
  %cmp3.i.i = icmp ugt i64 %15, 64, !dbg !4369
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4370

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4371
  %cmp4.i.i = icmp ule i64 %16, 96, !dbg !4372
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4373

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4374
  br label %kmalloc_index.exit.i, !dbg !4374

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4375
  %cmp7.i.i = icmp ugt i64 %17, 128, !dbg !4377
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4378

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4379
  %cmp9.i.i = icmp ule i64 %18, 192, !dbg !4380
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4381

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4382
  br label %kmalloc_index.exit.i, !dbg !4382

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4383
  %cmp12.i.i = icmp ule i64 %19, 8, !dbg !4385
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4386

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4387
  br label %kmalloc_index.exit.i, !dbg !4387

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4388
  %cmp15.i.i = icmp ule i64 %20, 16, !dbg !4390
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4391

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4392
  br label %kmalloc_index.exit.i, !dbg !4392

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4393
  %cmp18.i.i = icmp ule i64 %21, 32, !dbg !4395
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4396

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4397
  br label %kmalloc_index.exit.i, !dbg !4397

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4398
  %cmp21.i.i = icmp ule i64 %22, 64, !dbg !4400
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4401

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4402
  br label %kmalloc_index.exit.i, !dbg !4402

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4403
  %cmp24.i.i = icmp ule i64 %23, 128, !dbg !4405
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4406

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4407
  br label %kmalloc_index.exit.i, !dbg !4407

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4408
  %cmp27.i.i = icmp ule i64 %24, 256, !dbg !4410
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4411

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4412
  br label %kmalloc_index.exit.i, !dbg !4412

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4413
  %cmp30.i.i = icmp ule i64 %25, 512, !dbg !4415
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4416

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4417
  br label %kmalloc_index.exit.i, !dbg !4417

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4418
  %cmp33.i.i = icmp ule i64 %26, 1024, !dbg !4420
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4421

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4422
  br label %kmalloc_index.exit.i, !dbg !4422

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4423
  %cmp36.i.i = icmp ule i64 %27, 2048, !dbg !4425
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4426

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4427
  br label %kmalloc_index.exit.i, !dbg !4427

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4428
  %cmp39.i.i = icmp ule i64 %28, 4096, !dbg !4430
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4431

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4432
  br label %kmalloc_index.exit.i, !dbg !4432

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4433
  %cmp42.i.i = icmp ule i64 %29, 8192, !dbg !4435
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4436

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4437
  br label %kmalloc_index.exit.i, !dbg !4437

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4438
  %cmp45.i.i = icmp ule i64 %30, 16384, !dbg !4440
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4441

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4442
  br label %kmalloc_index.exit.i, !dbg !4442

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4443
  %cmp48.i.i = icmp ule i64 %31, 32768, !dbg !4445
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4446

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4447
  br label %kmalloc_index.exit.i, !dbg !4447

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4448
  %cmp51.i.i = icmp ule i64 %32, 65536, !dbg !4450
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4451

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4452
  br label %kmalloc_index.exit.i, !dbg !4452

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4453
  %cmp54.i.i = icmp ule i64 %33, 131072, !dbg !4455
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4456

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4457
  br label %kmalloc_index.exit.i, !dbg !4457

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4458
  %cmp57.i.i = icmp ule i64 %34, 262144, !dbg !4460
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4461

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4462
  br label %kmalloc_index.exit.i, !dbg !4462

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4463
  %cmp60.i.i = icmp ule i64 %35, 524288, !dbg !4465
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4466

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4467
  br label %kmalloc_index.exit.i, !dbg !4467

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4468
  %cmp63.i.i = icmp ule i64 %36, 1048576, !dbg !4470
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4471

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4472
  br label %kmalloc_index.exit.i, !dbg !4472

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4473
  %cmp66.i.i = icmp ule i64 %37, 2097152, !dbg !4475
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4476

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4477
  br label %kmalloc_index.exit.i, !dbg !4477

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4478
  %cmp69.i.i = icmp ule i64 %38, 4194304, !dbg !4480
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4481

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4482
  br label %kmalloc_index.exit.i, !dbg !4482

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4483
  %cmp72.i.i = icmp ule i64 %39, 8388608, !dbg !4485
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4486

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4487
  br label %kmalloc_index.exit.i, !dbg !4487

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4488
  %cmp75.i.i = icmp ule i64 %40, 16777216, !dbg !4490
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4491

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4492
  br label %kmalloc_index.exit.i, !dbg !4492

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4493
  %cmp78.i.i = icmp ule i64 %41, 33554432, !dbg !4495
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4496

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4497
  br label %kmalloc_index.exit.i, !dbg !4497

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4498
  %cmp81.i.i = icmp ule i64 %42, 67108864, !dbg !4500
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4501

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4502
  br label %kmalloc_index.exit.i, !dbg !4502

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !4503, !srcloc !4506
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 156) #8, !dbg !4507, !srcloc !4510
  unreachable, !dbg !4511

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %43 = load i32, i32* %retval.i.i, align 4, !dbg !4512
  store i32 %43, i32* %index.i, align 4, !dbg !4513
  %44 = load i32, i32* %index.i, align 4, !dbg !4514
  %tobool.i = icmp ne i32 %44, 0, !dbg !4514
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4516

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4517
  br label %kmalloc.exit, !dbg !4517

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %45 = load i32, i32* %flags.addr.i, align 4, !dbg !4518
  store i32 %45, i32* %flags.addr.i13.i, align 4
  %46 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4519
  %and.i.i = and i32 %46, 17, !dbg !4519
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4519
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4519
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4519
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4519
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4521

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4522
  br label %kmalloc_type.exit.i, !dbg !4522

if.end.i16.i:                                     ; preds = %if.end4.i
  %47 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4523
  %and2.i.i = and i32 %47, 1, !dbg !4524
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4523
  %48 = zext i1 %tobool3.i.i to i64, !dbg !4523
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4523
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4525
  br label %kmalloc_type.exit.i, !dbg !4525

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %49 = load i32, i32* %retval.i12.i, align 4, !dbg !4526
  %idxprom.i = zext i32 %49 to i64, !dbg !4527
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4527
  %50 = load i32, i32* %index.i, align 4, !dbg !4528
  %idxprom6.i = zext i32 %50 to i64, !dbg !4527
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4527
  %51 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4527
  %52 = load i32, i32* %flags.addr.i, align 4, !dbg !4529
  %53 = load i64, i64* %size.addr.i, align 8, !dbg !4530
  store %struct.kmem_cache* %51, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %52, i32* %flags.addr.i17.i, align 4
  store i64 %53, i64* %size.addr.i18.i, align 8
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4531
  %55 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4532
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %54, i32 %55) #11, !dbg !4533
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4533
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4533
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4533
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !4533
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4290
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4534
  %57 = load i8*, i8** %ret.i.i, align 8, !dbg !4535
  %58 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4536
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4537
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %56, i8* %57, i64 %58, i32 %59) #11, !dbg !4538
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4539
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !4540
  store i8* %60, i8** %retval.i, align 8, !dbg !4541
  br label %kmalloc.exit, !dbg !4541

if.end9.i:                                        ; preds = %entry
  %61 = load i64, i64* %size.addr.i, align 8, !dbg !4542
  %62 = load i32, i32* %flags.addr.i, align 4, !dbg !4543
  %call10.i = call noalias i8* @__kmalloc(i64 %61, i32 %62) #11, !dbg !4544
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4544
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4544
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4544
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !4544
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4545
  br label %kmalloc.exit, !dbg !4545

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %63 = load i8*, i8** %retval.i, align 8, !dbg !4546
  %64 = bitcast i8* %63 to %struct.pci_filp_private*, !dbg !4547
  store %struct.pci_filp_private* %64, %struct.pci_filp_private** %fpriv, align 8, !dbg !4338
  %65 = load %struct.pci_filp_private*, %struct.pci_filp_private** %fpriv, align 8, !dbg !4548
  %tobool = icmp ne %struct.pci_filp_private* %65, null, !dbg !4548
  br i1 %tobool, label %if.end, label %if.then, !dbg !4550

if.then:                                          ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !4551
  br label %return, !dbg !4551

if.end:                                           ; preds = %kmalloc.exit
  %66 = load %struct.pci_filp_private*, %struct.pci_filp_private** %fpriv, align 8, !dbg !4552
  %mmap_state = getelementptr inbounds %struct.pci_filp_private, %struct.pci_filp_private* %66, i32 0, i32 0, !dbg !4553
  store i32 0, i32* %mmap_state, align 4, !dbg !4554
  %67 = load %struct.pci_filp_private*, %struct.pci_filp_private** %fpriv, align 8, !dbg !4555
  %write_combine = getelementptr inbounds %struct.pci_filp_private, %struct.pci_filp_private* %67, i32 0, i32 1, !dbg !4556
  store i32 0, i32* %write_combine, align 4, !dbg !4557
  %68 = load %struct.pci_filp_private*, %struct.pci_filp_private** %fpriv, align 8, !dbg !4558
  %69 = bitcast %struct.pci_filp_private* %68 to i8*, !dbg !4558
  %70 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4559
  %private_data = getelementptr inbounds %struct.file, %struct.file* %70, i32 0, i32 15, !dbg !4560
  store i8* %69, i8** %private_data, align 8, !dbg !4561
  store i32 0, i32* %retval, align 4, !dbg !4562
  br label %return, !dbg !4562

return:                                           ; preds = %if.end, %if.then
  %71 = load i32, i32* %retval, align 4, !dbg !4563
  ret i32 %71, !dbg !4563
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @proc_bus_pci_read(%struct.file* %file, i8* %buf, i64 %nbytes, i64* %ppos) #0 !dbg !4564 {
entry:
  %retval.i = alloca i1, align 1
  %bit.addr.i = alloca i16, align 2
  call void @llvm.dbg.declare(metadata i16* %bit.addr.i, metadata !4565, metadata !DIExpression()), !dbg !4570
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %buf.addr = alloca i8*, align 8
  %nbytes.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %dev = alloca %struct.pci_dev*, align 8
  %pos = alloca i32, align 4
  %cnt = alloca i32, align 4
  %size = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp26 = alloca i8, align 1
  %val = alloca i8, align 1
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca i8*, align 8
  %__val_pu = alloca i8, align 1
  %tmp43 = alloca i64, align 8
  %val52 = alloca i16, align 2
  %__ret_pu54 = alloca i32, align 4
  %__ptr_pu55 = alloca i8*, align 8
  %__val_pu56 = alloca i16, align 2
  %tmp59 = alloca i64, align 8
  %val66 = alloca i32, align 4
  %__ret_pu68 = alloca i32, align 4
  %__ptr_pu69 = alloca i8*, align 8
  %__val_pu70 = alloca i32, align 4
  %tmp73 = alloca i64, align 8
  %val81 = alloca i16, align 2
  %__ret_pu83 = alloca i32, align 4
  %__ptr_pu84 = alloca i8*, align 8
  %__val_pu85 = alloca i16, align 2
  %tmp88 = alloca i64, align 8
  %val96 = alloca i8, align 1
  %__ret_pu98 = alloca i32, align 4
  %__ptr_pu99 = alloca i8*, align 8
  %__val_pu100 = alloca i8, align 1
  %tmp103 = alloca i64, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4575, metadata !DIExpression()), !dbg !4576
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4577, metadata !DIExpression()), !dbg !4578
  store i64 %nbytes, i64* %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nbytes.addr, metadata !4579, metadata !DIExpression()), !dbg !4580
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !4581, metadata !DIExpression()), !dbg !4582
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !4583, metadata !DIExpression()), !dbg !4584
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4585
  %call = call %struct.inode* @file_inode(%struct.file* %0) #9, !dbg !4586
  %call1 = call i8* @PDE_DATA(%struct.inode* %call) #9, !dbg !4587
  %1 = bitcast i8* %call1 to %struct.pci_dev*, !dbg !4587
  store %struct.pci_dev* %1, %struct.pci_dev** %dev, align 8, !dbg !4584
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !4588, metadata !DIExpression()), !dbg !4589
  %2 = load i64*, i64** %ppos.addr, align 8, !dbg !4590
  %3 = load i64, i64* %2, align 8, !dbg !4591
  %conv = trunc i64 %3 to i32, !dbg !4591
  store i32 %conv, i32* %pos, align 4, !dbg !4589
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !4592, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.declare(metadata i32* %size, metadata !4594, metadata !DIExpression()), !dbg !4595
  %call2 = call zeroext i1 @capable(i32 21) #9, !dbg !4596
  br i1 %call2, label %if.then, label %if.else, !dbg !4598

if.then:                                          ; preds = %entry
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4599
  %cfg_size = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %4, i32 0, i32 42, !dbg !4600
  %5 = load i32, i32* %cfg_size, align 8, !dbg !4600
  store i32 %5, i32* %size, align 4, !dbg !4601
  br label %if.end7, !dbg !4602

if.else:                                          ; preds = %entry
  %6 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4603
  %hdr_type = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %6, i32 0, i32 13, !dbg !4605
  %7 = load i8, i8* %hdr_type, align 1, !dbg !4605
  %conv3 = zext i8 %7 to i32, !dbg !4603
  %cmp = icmp eq i32 %conv3, 2, !dbg !4606
  br i1 %cmp, label %if.then5, label %if.else6, !dbg !4607

if.then5:                                         ; preds = %if.else
  store i32 128, i32* %size, align 4, !dbg !4608
  br label %if.end, !dbg !4609

if.else6:                                         ; preds = %if.else
  store i32 64, i32* %size, align 4, !dbg !4610
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then5
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %8 = load i32, i32* %pos, align 4, !dbg !4611
  %9 = load i32, i32* %size, align 4, !dbg !4613
  %cmp8 = icmp uge i32 %8, %9, !dbg !4614
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !4615

if.then10:                                        ; preds = %if.end7
  store i64 0, i64* %retval, align 8, !dbg !4616
  br label %return, !dbg !4616

if.end11:                                         ; preds = %if.end7
  %10 = load i64, i64* %nbytes.addr, align 8, !dbg !4617
  %11 = load i32, i32* %size, align 4, !dbg !4619
  %conv12 = zext i32 %11 to i64, !dbg !4619
  %cmp13 = icmp uge i64 %10, %conv12, !dbg !4620
  br i1 %cmp13, label %if.then15, label %if.end17, !dbg !4621

if.then15:                                        ; preds = %if.end11
  %12 = load i32, i32* %size, align 4, !dbg !4622
  %conv16 = zext i32 %12 to i64, !dbg !4622
  store i64 %conv16, i64* %nbytes.addr, align 8, !dbg !4623
  br label %if.end17, !dbg !4624

if.end17:                                         ; preds = %if.then15, %if.end11
  %13 = load i32, i32* %pos, align 4, !dbg !4625
  %conv18 = zext i32 %13 to i64, !dbg !4625
  %14 = load i64, i64* %nbytes.addr, align 8, !dbg !4627
  %add = add i64 %conv18, %14, !dbg !4628
  %15 = load i32, i32* %size, align 4, !dbg !4629
  %conv19 = zext i32 %15 to i64, !dbg !4629
  %cmp20 = icmp ugt i64 %add, %conv19, !dbg !4630
  br i1 %cmp20, label %if.then22, label %if.end24, !dbg !4631

if.then22:                                        ; preds = %if.end17
  %16 = load i32, i32* %size, align 4, !dbg !4632
  %17 = load i32, i32* %pos, align 4, !dbg !4633
  %sub = sub i32 %16, %17, !dbg !4634
  %conv23 = zext i32 %sub to i64, !dbg !4632
  store i64 %conv23, i64* %nbytes.addr, align 8, !dbg !4635
  br label %if.end24, !dbg !4636

if.end24:                                         ; preds = %if.then22, %if.end17
  %18 = load i64, i64* %nbytes.addr, align 8, !dbg !4637
  %conv25 = trunc i64 %18 to i32, !dbg !4637
  store i32 %conv25, i32* %cnt, align 4, !dbg !4638
  %19 = load i8*, i8** %buf.addr, align 8, !dbg !4639
  %20 = ptrtoint i8* %19 to i64, !dbg !4639
  %21 = load i32, i32* %cnt, align 4, !dbg !4639
  %conv27 = zext i32 %21 to i64, !dbg !4639
  store i16 528, i16* %bit.addr.i, align 2
  %22 = load i16, i16* %bit.addr.i, align 2, !dbg !4640
  %23 = load i16, i16* %bit.addr.i, align 2, !dbg !4640
  %conv.i = zext i16 %23 to i32, !dbg !4640
  %and.i = and i32 %conv.i, 7, !dbg !4640
  %shl.i = shl i32 1, %and.i, !dbg !4640
  %24 = load i16, i16* %bit.addr.i, align 2, !dbg !4640
  %conv1.i = zext i16 %24 to i32, !dbg !4640
  %shr.i = ashr i32 %conv1.i, 3, !dbg !4640
  %idxprom.i = sext i32 %shr.i to i64, !dbg !4640
  %arrayidx.i = getelementptr i8, i8* bitcast (%union.anon.66* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12) to i8*), i64 %idxprom.i, !dbg !4640
  callbr void asm sideeffect "1: jmp 6f\0A2:\0A.skip -(((5f-4f) - (2b-1b)) > 0) * ((5f-4f) - (2b-1b)),0x90\0A3:\0A.section .altinstructions,\22a\22\0A .long 1b - .\0A .long 4f - .\0A .word ${1:P}\0A .byte 3b - 1b\0A .byte 5f - 4f\0A .byte 3b - 2b\0A.previous\0A.section .altinstr_replacement,\22ax\22\0A4: jmp ${5:l}\0A5:\0A.previous\0A.section .altinstructions,\22a\22\0A .long 1b - .\0A .long 0\0A .word ${0:P}\0A .byte 3b - 1b\0A .byte 0\0A .byte 0\0A.previous\0A.section .altinstr_aux,\22ax\22\0A6:\0A testb $2,$3\0A jnz ${4:l}\0A jmp ${5:l}\0A.previous\0A", "i,i,i,*m,X,X,~{dirflag},~{fpsr},~{flags}"(i16 %22, i32 117, i32 %shl.i, i8* %arrayidx.i, i8* blockaddress(@proc_bus_pci_read, %t_yes.i), i8* blockaddress(@proc_bus_pci_read, %t_no.i)) #8
          to label %asm.fallthrough.i [label %t_yes.i, label %t_no.i], !dbg !4640, !srcloc !4641

asm.fallthrough.i:                                ; preds = %if.end24
  br label %t_yes.i, !dbg !4640

t_yes.i:                                          ; preds = %asm.fallthrough.i, %if.end24
  call void @llvm.dbg.label(metadata !4642), !dbg !4643
  store i1 true, i1* %retval.i, align 1, !dbg !4644
  br label %_static_cpu_has.exit, !dbg !4644

t_no.i:                                           ; preds = %if.end24
  call void @llvm.dbg.label(metadata !4645), !dbg !4646
  store i1 false, i1* %retval.i, align 1, !dbg !4647
  br label %_static_cpu_has.exit, !dbg !4647

_static_cpu_has.exit:                             ; preds = %t_yes.i, %t_no.i
  %25 = load i1, i1* %retval.i, align 1, !dbg !4648
  %26 = zext i1 %25 to i64, !dbg !4639
  %cond = select i1 %25, i32 56, i32 47, !dbg !4639
  %sh_prom = zext i32 %cond to i64, !dbg !4639
  %shl = shl i64 1, %sh_prom, !dbg !4639
  %sub30 = sub i64 %shl, 4096, !dbg !4639
  %call31 = call zeroext i1 @__chk_range_not_ok(i64 %20, i64 %conv27, i64 %sub30) #9, !dbg !4639
  %frombool = zext i1 %call31 to i8, !dbg !4639
  store i8 %frombool, i8* %tmp26, align 1, !dbg !4639
  %27 = load i8, i8* %tmp26, align 1, !dbg !4639
  %tobool = trunc i8 %27 to i1, !dbg !4639
  %lnot = xor i1 %tobool, true, !dbg !4649
  %lnot32 = xor i1 %lnot, true, !dbg !4649
  %lnot33 = xor i1 %lnot32, true, !dbg !4649
  %lnot.ext = zext i1 %lnot33 to i32, !dbg !4649
  %conv34 = sext i32 %lnot.ext to i64, !dbg !4649
  store i64 %conv34, i64* %tmp, align 8, !dbg !4650
  %28 = load i64, i64* %tmp, align 8, !dbg !4649
  %tobool35 = icmp ne i64 %28, 0, !dbg !4650
  br i1 %tobool35, label %if.end37, label %if.then36, !dbg !4651

if.then36:                                        ; preds = %_static_cpu_has.exit
  store i64 -22, i64* %retval, align 8, !dbg !4652
  br label %return, !dbg !4652

if.end37:                                         ; preds = %_static_cpu_has.exit
  %29 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4653
  call void @pci_config_pm_runtime_get(%struct.pci_dev* %29) #9, !dbg !4654
  %30 = load i32, i32* %pos, align 4, !dbg !4655
  %and = and i32 %30, 1, !dbg !4657
  %tobool38 = icmp ne i32 %and, 0, !dbg !4657
  br i1 %tobool38, label %land.lhs.true, label %if.end45, !dbg !4658

land.lhs.true:                                    ; preds = %if.end37
  %31 = load i32, i32* %cnt, align 4, !dbg !4659
  %tobool39 = icmp ne i32 %31, 0, !dbg !4659
  br i1 %tobool39, label %if.then40, label %if.end45, !dbg !4660

if.then40:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i8* %val, metadata !4661, metadata !DIExpression()), !dbg !4663
  %32 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4664
  %33 = load i32, i32* %pos, align 4, !dbg !4665
  %call41 = call i32 @pci_user_read_config_byte(%struct.pci_dev* %32, i32 %33, i8* %val) #9, !dbg !4666
  call void @llvm.dbg.declare(metadata i32* %__ret_pu, metadata !4667, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu, metadata !4670, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.declare(metadata i8* %__val_pu, metadata !4671, metadata !DIExpression()), !dbg !4669
  %34 = load i8*, i8** %buf.addr, align 8, !dbg !4669
  store i8* %34, i8** %__ptr_pu, align 8, !dbg !4669
  %35 = load i8, i8* %val, align 1, !dbg !4669
  store i8 %35, i8* %__val_pu, align 1, !dbg !4669
  %36 = call i64 @llvm.read_register.i64(metadata !3093), !dbg !4669
  %37 = load i8*, i8** %__ptr_pu, align 8, !dbg !4669
  %38 = load i8, i8* %__val_pu, align 1, !dbg !4669
  %39 = call { i8*, i64 } asm sideeffect "call __put_user_nocheck_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %37, i8 %38, i64 1, i64 %36) #8, !dbg !4669, !srcloc !4672
  %asmresult = extractvalue { i8*, i64 } %39, 0, !dbg !4669
  %asmresult42 = extractvalue { i8*, i64 } %39, 1, !dbg !4669
  %40 = ptrtoint i8* %asmresult to i64, !dbg !4669
  %41 = trunc i64 %40 to i32, !dbg !4669
  store i32 %41, i32* %__ret_pu, align 4, !dbg !4669
  call void @llvm.write_register.i64(metadata !3093, i64 %asmresult42), !dbg !4669
  %42 = load i32, i32* %__ret_pu, align 4, !dbg !4669
  %conv44 = sext i32 %42 to i64, !dbg !4669
  store i64 %conv44, i64* %tmp43, align 8, !dbg !4669
  %43 = load i64, i64* %tmp43, align 8, !dbg !4669
  %44 = load i8*, i8** %buf.addr, align 8, !dbg !4673
  %incdec.ptr = getelementptr i8, i8* %44, i32 1, !dbg !4673
  store i8* %incdec.ptr, i8** %buf.addr, align 8, !dbg !4673
  %45 = load i32, i32* %pos, align 4, !dbg !4674
  %inc = add i32 %45, 1, !dbg !4674
  store i32 %inc, i32* %pos, align 4, !dbg !4674
  %46 = load i32, i32* %cnt, align 4, !dbg !4675
  %dec = add i32 %46, -1, !dbg !4675
  store i32 %dec, i32* %cnt, align 4, !dbg !4675
  br label %if.end45, !dbg !4676

if.end45:                                         ; preds = %if.then40, %land.lhs.true, %if.end37
  %47 = load i32, i32* %pos, align 4, !dbg !4677
  %and46 = and i32 %47, 3, !dbg !4679
  %tobool47 = icmp ne i32 %and46, 0, !dbg !4679
  br i1 %tobool47, label %land.lhs.true48, label %if.end63, !dbg !4680

land.lhs.true48:                                  ; preds = %if.end45
  %48 = load i32, i32* %cnt, align 4, !dbg !4681
  %cmp49 = icmp ugt i32 %48, 2, !dbg !4682
  br i1 %cmp49, label %if.then51, label %if.end63, !dbg !4683

if.then51:                                        ; preds = %land.lhs.true48
  call void @llvm.dbg.declare(metadata i16* %val52, metadata !4684, metadata !DIExpression()), !dbg !4686
  %49 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4687
  %50 = load i32, i32* %pos, align 4, !dbg !4688
  %call53 = call i32 @pci_user_read_config_word(%struct.pci_dev* %49, i32 %50, i16* %val52) #9, !dbg !4689
  call void @llvm.dbg.declare(metadata i32* %__ret_pu54, metadata !4690, metadata !DIExpression()), !dbg !4692
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu55, metadata !4693, metadata !DIExpression()), !dbg !4692
  call void @llvm.dbg.declare(metadata i16* %__val_pu56, metadata !4694, metadata !DIExpression()), !dbg !4692
  %51 = load i8*, i8** %buf.addr, align 8, !dbg !4692
  %52 = bitcast i8* %51 to i16*, !dbg !4692
  %53 = bitcast i16* %52 to i8*, !dbg !4692
  store i8* %53, i8** %__ptr_pu55, align 8, !dbg !4692
  %54 = load i16, i16* %val52, align 2, !dbg !4692
  store i16 %54, i16* %__val_pu56, align 2, !dbg !4692
  %55 = call i64 @llvm.read_register.i64(metadata !3093), !dbg !4692
  %56 = load i8*, i8** %__ptr_pu55, align 8, !dbg !4692
  %57 = load i16, i16* %__val_pu56, align 2, !dbg !4692
  %58 = call { i8*, i64 } asm sideeffect "call __put_user_nocheck_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %56, i16 %57, i64 2, i64 %55) #8, !dbg !4692, !srcloc !4695
  %asmresult57 = extractvalue { i8*, i64 } %58, 0, !dbg !4692
  %asmresult58 = extractvalue { i8*, i64 } %58, 1, !dbg !4692
  %59 = ptrtoint i8* %asmresult57 to i64, !dbg !4692
  %60 = trunc i64 %59 to i32, !dbg !4692
  store i32 %60, i32* %__ret_pu54, align 4, !dbg !4692
  call void @llvm.write_register.i64(metadata !3093, i64 %asmresult58), !dbg !4692
  %61 = load i32, i32* %__ret_pu54, align 4, !dbg !4692
  %conv60 = sext i32 %61 to i64, !dbg !4692
  store i64 %conv60, i64* %tmp59, align 8, !dbg !4692
  %62 = load i64, i64* %tmp59, align 8, !dbg !4692
  %63 = load i8*, i8** %buf.addr, align 8, !dbg !4696
  %add.ptr = getelementptr i8, i8* %63, i64 2, !dbg !4696
  store i8* %add.ptr, i8** %buf.addr, align 8, !dbg !4696
  %64 = load i32, i32* %pos, align 4, !dbg !4697
  %add61 = add i32 %64, 2, !dbg !4697
  store i32 %add61, i32* %pos, align 4, !dbg !4697
  %65 = load i32, i32* %cnt, align 4, !dbg !4698
  %sub62 = sub i32 %65, 2, !dbg !4698
  store i32 %sub62, i32* %cnt, align 4, !dbg !4698
  br label %if.end63, !dbg !4699

if.end63:                                         ; preds = %if.then51, %land.lhs.true48, %if.end45
  br label %while.cond, !dbg !4700

while.cond:                                       ; preds = %while.body, %if.end63
  %66 = load i32, i32* %cnt, align 4, !dbg !4701
  %cmp64 = icmp uge i32 %66, 4, !dbg !4702
  br i1 %cmp64, label %while.body, label %while.end, !dbg !4700

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %val66, metadata !4703, metadata !DIExpression()), !dbg !4705
  %67 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4706
  %68 = load i32, i32* %pos, align 4, !dbg !4707
  %call67 = call i32 @pci_user_read_config_dword(%struct.pci_dev* %67, i32 %68, i32* %val66) #9, !dbg !4708
  call void @llvm.dbg.declare(metadata i32* %__ret_pu68, metadata !4709, metadata !DIExpression()), !dbg !4711
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu69, metadata !4712, metadata !DIExpression()), !dbg !4711
  call void @llvm.dbg.declare(metadata i32* %__val_pu70, metadata !4713, metadata !DIExpression()), !dbg !4711
  %69 = load i8*, i8** %buf.addr, align 8, !dbg !4711
  %70 = bitcast i8* %69 to i32*, !dbg !4711
  %71 = bitcast i32* %70 to i8*, !dbg !4711
  store i8* %71, i8** %__ptr_pu69, align 8, !dbg !4711
  %72 = load i32, i32* %val66, align 4, !dbg !4711
  store i32 %72, i32* %__val_pu70, align 4, !dbg !4711
  %73 = call i64 @llvm.read_register.i64(metadata !3093), !dbg !4711
  %74 = load i8*, i8** %__ptr_pu69, align 8, !dbg !4711
  %75 = load i32, i32* %__val_pu70, align 4, !dbg !4711
  %76 = call { i8*, i64 } asm sideeffect "call __put_user_nocheck_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %74, i32 %75, i64 4, i64 %73) #8, !dbg !4711, !srcloc !4714
  %asmresult71 = extractvalue { i8*, i64 } %76, 0, !dbg !4711
  %asmresult72 = extractvalue { i8*, i64 } %76, 1, !dbg !4711
  %77 = ptrtoint i8* %asmresult71 to i64, !dbg !4711
  %78 = trunc i64 %77 to i32, !dbg !4711
  store i32 %78, i32* %__ret_pu68, align 4, !dbg !4711
  call void @llvm.write_register.i64(metadata !3093, i64 %asmresult72), !dbg !4711
  %79 = load i32, i32* %__ret_pu68, align 4, !dbg !4711
  %conv74 = sext i32 %79 to i64, !dbg !4711
  store i64 %conv74, i64* %tmp73, align 8, !dbg !4711
  %80 = load i64, i64* %tmp73, align 8, !dbg !4711
  %81 = load i8*, i8** %buf.addr, align 8, !dbg !4715
  %add.ptr75 = getelementptr i8, i8* %81, i64 4, !dbg !4715
  store i8* %add.ptr75, i8** %buf.addr, align 8, !dbg !4715
  %82 = load i32, i32* %pos, align 4, !dbg !4716
  %add76 = add i32 %82, 4, !dbg !4716
  store i32 %add76, i32* %pos, align 4, !dbg !4716
  %83 = load i32, i32* %cnt, align 4, !dbg !4717
  %sub77 = sub i32 %83, 4, !dbg !4717
  store i32 %sub77, i32* %cnt, align 4, !dbg !4717
  br label %while.cond, !dbg !4700, !llvm.loop !4718

while.end:                                        ; preds = %while.cond
  %84 = load i32, i32* %cnt, align 4, !dbg !4720
  %cmp78 = icmp uge i32 %84, 2, !dbg !4722
  br i1 %cmp78, label %if.then80, label %if.end93, !dbg !4723

if.then80:                                        ; preds = %while.end
  call void @llvm.dbg.declare(metadata i16* %val81, metadata !4724, metadata !DIExpression()), !dbg !4726
  %85 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4727
  %86 = load i32, i32* %pos, align 4, !dbg !4728
  %call82 = call i32 @pci_user_read_config_word(%struct.pci_dev* %85, i32 %86, i16* %val81) #9, !dbg !4729
  call void @llvm.dbg.declare(metadata i32* %__ret_pu83, metadata !4730, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu84, metadata !4733, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.declare(metadata i16* %__val_pu85, metadata !4734, metadata !DIExpression()), !dbg !4732
  %87 = load i8*, i8** %buf.addr, align 8, !dbg !4732
  %88 = bitcast i8* %87 to i16*, !dbg !4732
  %89 = bitcast i16* %88 to i8*, !dbg !4732
  store i8* %89, i8** %__ptr_pu84, align 8, !dbg !4732
  %90 = load i16, i16* %val81, align 2, !dbg !4732
  store i16 %90, i16* %__val_pu85, align 2, !dbg !4732
  %91 = call i64 @llvm.read_register.i64(metadata !3093), !dbg !4732
  %92 = load i8*, i8** %__ptr_pu84, align 8, !dbg !4732
  %93 = load i16, i16* %__val_pu85, align 2, !dbg !4732
  %94 = call { i8*, i64 } asm sideeffect "call __put_user_nocheck_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %92, i16 %93, i64 2, i64 %91) #8, !dbg !4732, !srcloc !4735
  %asmresult86 = extractvalue { i8*, i64 } %94, 0, !dbg !4732
  %asmresult87 = extractvalue { i8*, i64 } %94, 1, !dbg !4732
  %95 = ptrtoint i8* %asmresult86 to i64, !dbg !4732
  %96 = trunc i64 %95 to i32, !dbg !4732
  store i32 %96, i32* %__ret_pu83, align 4, !dbg !4732
  call void @llvm.write_register.i64(metadata !3093, i64 %asmresult87), !dbg !4732
  %97 = load i32, i32* %__ret_pu83, align 4, !dbg !4732
  %conv89 = sext i32 %97 to i64, !dbg !4732
  store i64 %conv89, i64* %tmp88, align 8, !dbg !4732
  %98 = load i64, i64* %tmp88, align 8, !dbg !4732
  %99 = load i8*, i8** %buf.addr, align 8, !dbg !4736
  %add.ptr90 = getelementptr i8, i8* %99, i64 2, !dbg !4736
  store i8* %add.ptr90, i8** %buf.addr, align 8, !dbg !4736
  %100 = load i32, i32* %pos, align 4, !dbg !4737
  %add91 = add i32 %100, 2, !dbg !4737
  store i32 %add91, i32* %pos, align 4, !dbg !4737
  %101 = load i32, i32* %cnt, align 4, !dbg !4738
  %sub92 = sub i32 %101, 2, !dbg !4738
  store i32 %sub92, i32* %cnt, align 4, !dbg !4738
  br label %if.end93, !dbg !4739

if.end93:                                         ; preds = %if.then80, %while.end
  %102 = load i32, i32* %cnt, align 4, !dbg !4740
  %tobool94 = icmp ne i32 %102, 0, !dbg !4740
  br i1 %tobool94, label %if.then95, label %if.end108, !dbg !4742

if.then95:                                        ; preds = %if.end93
  call void @llvm.dbg.declare(metadata i8* %val96, metadata !4743, metadata !DIExpression()), !dbg !4745
  %103 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4746
  %104 = load i32, i32* %pos, align 4, !dbg !4747
  %call97 = call i32 @pci_user_read_config_byte(%struct.pci_dev* %103, i32 %104, i8* %val96) #9, !dbg !4748
  call void @llvm.dbg.declare(metadata i32* %__ret_pu98, metadata !4749, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu99, metadata !4752, metadata !DIExpression()), !dbg !4751
  call void @llvm.dbg.declare(metadata i8* %__val_pu100, metadata !4753, metadata !DIExpression()), !dbg !4751
  %105 = load i8*, i8** %buf.addr, align 8, !dbg !4751
  store i8* %105, i8** %__ptr_pu99, align 8, !dbg !4751
  %106 = load i8, i8* %val96, align 1, !dbg !4751
  store i8 %106, i8* %__val_pu100, align 1, !dbg !4751
  %107 = call i64 @llvm.read_register.i64(metadata !3093), !dbg !4751
  %108 = load i8*, i8** %__ptr_pu99, align 8, !dbg !4751
  %109 = load i8, i8* %__val_pu100, align 1, !dbg !4751
  %110 = call { i8*, i64 } asm sideeffect "call __put_user_nocheck_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %108, i8 %109, i64 1, i64 %107) #8, !dbg !4751, !srcloc !4754
  %asmresult101 = extractvalue { i8*, i64 } %110, 0, !dbg !4751
  %asmresult102 = extractvalue { i8*, i64 } %110, 1, !dbg !4751
  %111 = ptrtoint i8* %asmresult101 to i64, !dbg !4751
  %112 = trunc i64 %111 to i32, !dbg !4751
  store i32 %112, i32* %__ret_pu98, align 4, !dbg !4751
  call void @llvm.write_register.i64(metadata !3093, i64 %asmresult102), !dbg !4751
  %113 = load i32, i32* %__ret_pu98, align 4, !dbg !4751
  %conv104 = sext i32 %113 to i64, !dbg !4751
  store i64 %conv104, i64* %tmp103, align 8, !dbg !4751
  %114 = load i64, i64* %tmp103, align 8, !dbg !4751
  %115 = load i8*, i8** %buf.addr, align 8, !dbg !4755
  %incdec.ptr105 = getelementptr i8, i8* %115, i32 1, !dbg !4755
  store i8* %incdec.ptr105, i8** %buf.addr, align 8, !dbg !4755
  %116 = load i32, i32* %pos, align 4, !dbg !4756
  %inc106 = add i32 %116, 1, !dbg !4756
  store i32 %inc106, i32* %pos, align 4, !dbg !4756
  %117 = load i32, i32* %cnt, align 4, !dbg !4757
  %dec107 = add i32 %117, -1, !dbg !4757
  store i32 %dec107, i32* %cnt, align 4, !dbg !4757
  br label %if.end108, !dbg !4758

if.end108:                                        ; preds = %if.then95, %if.end93
  %118 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4759
  call void @pci_config_pm_runtime_put(%struct.pci_dev* %118) #9, !dbg !4760
  %119 = load i32, i32* %pos, align 4, !dbg !4761
  %conv109 = zext i32 %119 to i64, !dbg !4761
  %120 = load i64*, i64** %ppos.addr, align 8, !dbg !4762
  store i64 %conv109, i64* %120, align 8, !dbg !4763
  %121 = load i64, i64* %nbytes.addr, align 8, !dbg !4764
  store i64 %121, i64* %retval, align 8, !dbg !4765
  br label %return, !dbg !4765

return:                                           ; preds = %if.end108, %if.then36, %if.then10
  %122 = load i64, i64* %retval, align 8, !dbg !4766
  ret i64 %122, !dbg !4766
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @proc_bus_pci_write(%struct.file* %file, i8* %buf, i64 %nbytes, i64* %ppos) #0 !dbg !4767 {
entry:
  %retval.i = alloca i1, align 1
  %bit.addr.i = alloca i16, align 2
  call void @llvm.dbg.declare(metadata i16* %bit.addr.i, metadata !4565, metadata !DIExpression()), !dbg !4768
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %buf.addr = alloca i8*, align 8
  %nbytes.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %ino = alloca %struct.inode*, align 8
  %dev = alloca %struct.pci_dev*, align 8
  %pos = alloca i32, align 4
  %size = alloca i32, align 4
  %cnt = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp21 = alloca i8, align 1
  %val = alloca i8, align 1
  %__ret_gu = alloca i32, align 4
  %__val_gu = alloca i8, align 1
  %tmp39 = alloca i64, align 8
  %val49 = alloca i16, align 2
  %__ret_gu50 = alloca i32, align 4
  %__val_gu51 = alloca i16, align 2
  %tmp55 = alloca i64, align 8
  %val63 = alloca i32, align 4
  %__ret_gu64 = alloca i32, align 4
  %__val_gu65 = alloca i32, align 4
  %tmp69 = alloca i64, align 8
  %val78 = alloca i16, align 2
  %__ret_gu79 = alloca i32, align 4
  %__val_gu80 = alloca i16, align 2
  %tmp84 = alloca i64, align 8
  %val93 = alloca i8, align 1
  %__ret_gu94 = alloca i32, align 4
  %__val_gu95 = alloca i8, align 1
  %tmp99 = alloca i64, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4773, metadata !DIExpression()), !dbg !4774
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4775, metadata !DIExpression()), !dbg !4776
  store i64 %nbytes, i64* %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nbytes.addr, metadata !4777, metadata !DIExpression()), !dbg !4778
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !4779, metadata !DIExpression()), !dbg !4780
  call void @llvm.dbg.declare(metadata %struct.inode** %ino, metadata !4781, metadata !DIExpression()), !dbg !4782
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4783
  %call = call %struct.inode* @file_inode(%struct.file* %0) #9, !dbg !4784
  store %struct.inode* %call, %struct.inode** %ino, align 8, !dbg !4782
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !4785, metadata !DIExpression()), !dbg !4786
  %1 = load %struct.inode*, %struct.inode** %ino, align 8, !dbg !4787
  %call1 = call i8* @PDE_DATA(%struct.inode* %1) #9, !dbg !4788
  %2 = bitcast i8* %call1 to %struct.pci_dev*, !dbg !4788
  store %struct.pci_dev* %2, %struct.pci_dev** %dev, align 8, !dbg !4786
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !4789, metadata !DIExpression()), !dbg !4790
  %3 = load i64*, i64** %ppos.addr, align 8, !dbg !4791
  %4 = load i64, i64* %3, align 8, !dbg !4792
  %conv = trunc i64 %4 to i32, !dbg !4792
  store i32 %conv, i32* %pos, align 4, !dbg !4790
  call void @llvm.dbg.declare(metadata i32* %size, metadata !4793, metadata !DIExpression()), !dbg !4794
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4795
  %cfg_size = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 42, !dbg !4796
  %6 = load i32, i32* %cfg_size, align 8, !dbg !4796
  store i32 %6, i32* %size, align 4, !dbg !4794
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !4797, metadata !DIExpression()), !dbg !4798
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4799, metadata !DIExpression()), !dbg !4800
  %call2 = call i32 @security_locked_down(i32 6) #9, !dbg !4801
  store i32 %call2, i32* %ret, align 4, !dbg !4802
  %7 = load i32, i32* %ret, align 4, !dbg !4803
  %tobool = icmp ne i32 %7, 0, !dbg !4803
  br i1 %tobool, label %if.then, label %if.end, !dbg !4805

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %ret, align 4, !dbg !4806
  %conv3 = sext i32 %8 to i64, !dbg !4806
  store i64 %conv3, i64* %retval, align 8, !dbg !4807
  br label %return, !dbg !4807

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %pos, align 4, !dbg !4808
  %10 = load i32, i32* %size, align 4, !dbg !4810
  %cmp = icmp sge i32 %9, %10, !dbg !4811
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !4812

if.then5:                                         ; preds = %if.end
  store i64 0, i64* %retval, align 8, !dbg !4813
  br label %return, !dbg !4813

if.end6:                                          ; preds = %if.end
  %11 = load i64, i64* %nbytes.addr, align 8, !dbg !4814
  %12 = load i32, i32* %size, align 4, !dbg !4816
  %conv7 = sext i32 %12 to i64, !dbg !4816
  %cmp8 = icmp uge i64 %11, %conv7, !dbg !4817
  br i1 %cmp8, label %if.then10, label %if.end12, !dbg !4818

if.then10:                                        ; preds = %if.end6
  %13 = load i32, i32* %size, align 4, !dbg !4819
  %conv11 = sext i32 %13 to i64, !dbg !4819
  store i64 %conv11, i64* %nbytes.addr, align 8, !dbg !4820
  br label %if.end12, !dbg !4821

if.end12:                                         ; preds = %if.then10, %if.end6
  %14 = load i32, i32* %pos, align 4, !dbg !4822
  %conv13 = sext i32 %14 to i64, !dbg !4822
  %15 = load i64, i64* %nbytes.addr, align 8, !dbg !4824
  %add = add i64 %conv13, %15, !dbg !4825
  %16 = load i32, i32* %size, align 4, !dbg !4826
  %conv14 = sext i32 %16 to i64, !dbg !4826
  %cmp15 = icmp ugt i64 %add, %conv14, !dbg !4827
  br i1 %cmp15, label %if.then17, label %if.end19, !dbg !4828

if.then17:                                        ; preds = %if.end12
  %17 = load i32, i32* %size, align 4, !dbg !4829
  %18 = load i32, i32* %pos, align 4, !dbg !4830
  %sub = sub i32 %17, %18, !dbg !4831
  %conv18 = sext i32 %sub to i64, !dbg !4829
  store i64 %conv18, i64* %nbytes.addr, align 8, !dbg !4832
  br label %if.end19, !dbg !4833

if.end19:                                         ; preds = %if.then17, %if.end12
  %19 = load i64, i64* %nbytes.addr, align 8, !dbg !4834
  %conv20 = trunc i64 %19 to i32, !dbg !4834
  store i32 %conv20, i32* %cnt, align 4, !dbg !4835
  %20 = load i8*, i8** %buf.addr, align 8, !dbg !4836
  %21 = ptrtoint i8* %20 to i64, !dbg !4836
  %22 = load i32, i32* %cnt, align 4, !dbg !4836
  %conv22 = sext i32 %22 to i64, !dbg !4836
  store i16 528, i16* %bit.addr.i, align 2
  %23 = load i16, i16* %bit.addr.i, align 2, !dbg !4837
  %24 = load i16, i16* %bit.addr.i, align 2, !dbg !4837
  %conv.i = zext i16 %24 to i32, !dbg !4837
  %and.i = and i32 %conv.i, 7, !dbg !4837
  %shl.i = shl i32 1, %and.i, !dbg !4837
  %25 = load i16, i16* %bit.addr.i, align 2, !dbg !4837
  %conv1.i = zext i16 %25 to i32, !dbg !4837
  %shr.i = ashr i32 %conv1.i, 3, !dbg !4837
  %idxprom.i = sext i32 %shr.i to i64, !dbg !4837
  %arrayidx.i = getelementptr i8, i8* bitcast (%union.anon.66* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 12) to i8*), i64 %idxprom.i, !dbg !4837
  callbr void asm sideeffect "1: jmp 6f\0A2:\0A.skip -(((5f-4f) - (2b-1b)) > 0) * ((5f-4f) - (2b-1b)),0x90\0A3:\0A.section .altinstructions,\22a\22\0A .long 1b - .\0A .long 4f - .\0A .word ${1:P}\0A .byte 3b - 1b\0A .byte 5f - 4f\0A .byte 3b - 2b\0A.previous\0A.section .altinstr_replacement,\22ax\22\0A4: jmp ${5:l}\0A5:\0A.previous\0A.section .altinstructions,\22a\22\0A .long 1b - .\0A .long 0\0A .word ${0:P}\0A .byte 3b - 1b\0A .byte 0\0A .byte 0\0A.previous\0A.section .altinstr_aux,\22ax\22\0A6:\0A testb $2,$3\0A jnz ${4:l}\0A jmp ${5:l}\0A.previous\0A", "i,i,i,*m,X,X,~{dirflag},~{fpsr},~{flags}"(i16 %23, i32 117, i32 %shl.i, i8* %arrayidx.i, i8* blockaddress(@proc_bus_pci_write, %t_yes.i), i8* blockaddress(@proc_bus_pci_write, %t_no.i)) #8
          to label %asm.fallthrough.i [label %t_yes.i, label %t_no.i], !dbg !4837, !srcloc !4641

asm.fallthrough.i:                                ; preds = %if.end19
  br label %t_yes.i, !dbg !4837

t_yes.i:                                          ; preds = %asm.fallthrough.i, %if.end19
  call void @llvm.dbg.label(metadata !4642), !dbg !4838
  store i1 true, i1* %retval.i, align 1, !dbg !4839
  br label %_static_cpu_has.exit, !dbg !4839

t_no.i:                                           ; preds = %if.end19
  call void @llvm.dbg.label(metadata !4645), !dbg !4840
  store i1 false, i1* %retval.i, align 1, !dbg !4841
  br label %_static_cpu_has.exit, !dbg !4841

_static_cpu_has.exit:                             ; preds = %t_yes.i, %t_no.i
  %26 = load i1, i1* %retval.i, align 1, !dbg !4842
  %27 = zext i1 %26 to i64, !dbg !4836
  %cond = select i1 %26, i32 56, i32 47, !dbg !4836
  %sh_prom = zext i32 %cond to i64, !dbg !4836
  %shl = shl i64 1, %sh_prom, !dbg !4836
  %sub25 = sub i64 %shl, 4096, !dbg !4836
  %call26 = call zeroext i1 @__chk_range_not_ok(i64 %21, i64 %conv22, i64 %sub25) #9, !dbg !4836
  %frombool = zext i1 %call26 to i8, !dbg !4836
  store i8 %frombool, i8* %tmp21, align 1, !dbg !4836
  %28 = load i8, i8* %tmp21, align 1, !dbg !4836
  %tobool27 = trunc i8 %28 to i1, !dbg !4836
  %lnot = xor i1 %tobool27, true, !dbg !4843
  %lnot28 = xor i1 %lnot, true, !dbg !4843
  %lnot29 = xor i1 %lnot28, true, !dbg !4843
  %lnot.ext = zext i1 %lnot29 to i32, !dbg !4843
  %conv30 = sext i32 %lnot.ext to i64, !dbg !4843
  store i64 %conv30, i64* %tmp, align 8, !dbg !4844
  %29 = load i64, i64* %tmp, align 8, !dbg !4843
  %tobool31 = icmp ne i64 %29, 0, !dbg !4844
  br i1 %tobool31, label %if.end33, label %if.then32, !dbg !4845

if.then32:                                        ; preds = %_static_cpu_has.exit
  store i64 -22, i64* %retval, align 8, !dbg !4846
  br label %return, !dbg !4846

if.end33:                                         ; preds = %_static_cpu_has.exit
  %30 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4847
  call void @pci_config_pm_runtime_get(%struct.pci_dev* %30) #9, !dbg !4848
  %31 = load i32, i32* %pos, align 4, !dbg !4849
  %and = and i32 %31, 1, !dbg !4851
  %tobool34 = icmp ne i32 %and, 0, !dbg !4851
  br i1 %tobool34, label %land.lhs.true, label %if.end42, !dbg !4852

land.lhs.true:                                    ; preds = %if.end33
  %32 = load i32, i32* %cnt, align 4, !dbg !4853
  %tobool35 = icmp ne i32 %32, 0, !dbg !4853
  br i1 %tobool35, label %if.then36, label %if.end42, !dbg !4854

if.then36:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i8* %val, metadata !4855, metadata !DIExpression()), !dbg !4857
  call void @llvm.dbg.declare(metadata i32* %__ret_gu, metadata !4858, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.declare(metadata i8* %__val_gu, metadata !4861, metadata !DIExpression()), !dbg !4860
  %33 = call i64 @llvm.read_register.i64(metadata !3093), !dbg !4860
  %34 = load i8*, i8** %buf.addr, align 8, !dbg !4860
  %35 = call { i8*, i8, i64 } asm sideeffect "call __get_user_nocheck_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i8* %34, i64 1, i64 %33) #8, !dbg !4860, !srcloc !4862
  %asmresult = extractvalue { i8*, i8, i64 } %35, 0, !dbg !4860
  %asmresult37 = extractvalue { i8*, i8, i64 } %35, 1, !dbg !4860
  %asmresult38 = extractvalue { i8*, i8, i64 } %35, 2, !dbg !4860
  %36 = ptrtoint i8* %asmresult to i64, !dbg !4860
  %37 = trunc i64 %36 to i32, !dbg !4860
  store i32 %37, i32* %__ret_gu, align 4, !dbg !4860
  store i8 %asmresult37, i8* %__val_gu, align 1, !dbg !4860
  call void @llvm.write_register.i64(metadata !3093, i64 %asmresult38), !dbg !4860
  %38 = load i8, i8* %__val_gu, align 1, !dbg !4860
  store i8 %38, i8* %val, align 1, !dbg !4860
  %39 = load i32, i32* %__ret_gu, align 4, !dbg !4860
  %conv40 = sext i32 %39 to i64, !dbg !4860
  store i64 %conv40, i64* %tmp39, align 8, !dbg !4860
  %40 = load i64, i64* %tmp39, align 8, !dbg !4860
  %41 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4863
  %42 = load i32, i32* %pos, align 4, !dbg !4864
  %43 = load i8, i8* %val, align 1, !dbg !4865
  %call41 = call i32 @pci_user_write_config_byte(%struct.pci_dev* %41, i32 %42, i8 zeroext %43) #9, !dbg !4866
  %44 = load i8*, i8** %buf.addr, align 8, !dbg !4867
  %incdec.ptr = getelementptr i8, i8* %44, i32 1, !dbg !4867
  store i8* %incdec.ptr, i8** %buf.addr, align 8, !dbg !4867
  %45 = load i32, i32* %pos, align 4, !dbg !4868
  %inc = add i32 %45, 1, !dbg !4868
  store i32 %inc, i32* %pos, align 4, !dbg !4868
  %46 = load i32, i32* %cnt, align 4, !dbg !4869
  %dec = add i32 %46, -1, !dbg !4869
  store i32 %dec, i32* %cnt, align 4, !dbg !4869
  br label %if.end42, !dbg !4870

if.end42:                                         ; preds = %if.then36, %land.lhs.true, %if.end33
  %47 = load i32, i32* %pos, align 4, !dbg !4871
  %and43 = and i32 %47, 3, !dbg !4873
  %tobool44 = icmp ne i32 %and43, 0, !dbg !4873
  br i1 %tobool44, label %land.lhs.true45, label %if.end60, !dbg !4874

land.lhs.true45:                                  ; preds = %if.end42
  %48 = load i32, i32* %cnt, align 4, !dbg !4875
  %cmp46 = icmp sgt i32 %48, 2, !dbg !4876
  br i1 %cmp46, label %if.then48, label %if.end60, !dbg !4877

if.then48:                                        ; preds = %land.lhs.true45
  call void @llvm.dbg.declare(metadata i16* %val49, metadata !4878, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.declare(metadata i32* %__ret_gu50, metadata !4881, metadata !DIExpression()), !dbg !4883
  call void @llvm.dbg.declare(metadata i16* %__val_gu51, metadata !4884, metadata !DIExpression()), !dbg !4883
  %49 = call i64 @llvm.read_register.i64(metadata !3093), !dbg !4883
  %50 = load i8*, i8** %buf.addr, align 8, !dbg !4883
  %51 = bitcast i8* %50 to i16*, !dbg !4883
  %52 = call { i16*, i16, i64 } asm sideeffect "call __get_user_nocheck_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i16* %51, i64 2, i64 %49) #8, !dbg !4883, !srcloc !4885
  %asmresult52 = extractvalue { i16*, i16, i64 } %52, 0, !dbg !4883
  %asmresult53 = extractvalue { i16*, i16, i64 } %52, 1, !dbg !4883
  %asmresult54 = extractvalue { i16*, i16, i64 } %52, 2, !dbg !4883
  %53 = ptrtoint i16* %asmresult52 to i64, !dbg !4883
  %54 = trunc i64 %53 to i32, !dbg !4883
  store i32 %54, i32* %__ret_gu50, align 4, !dbg !4883
  store i16 %asmresult53, i16* %__val_gu51, align 2, !dbg !4883
  call void @llvm.write_register.i64(metadata !3093, i64 %asmresult54), !dbg !4883
  %55 = load i16, i16* %__val_gu51, align 2, !dbg !4883
  store i16 %55, i16* %val49, align 2, !dbg !4883
  %56 = load i32, i32* %__ret_gu50, align 4, !dbg !4883
  %conv56 = sext i32 %56 to i64, !dbg !4883
  store i64 %conv56, i64* %tmp55, align 8, !dbg !4883
  %57 = load i64, i64* %tmp55, align 8, !dbg !4883
  %58 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4886
  %59 = load i32, i32* %pos, align 4, !dbg !4887
  %60 = load i16, i16* %val49, align 2, !dbg !4888
  %call57 = call i32 @pci_user_write_config_word(%struct.pci_dev* %58, i32 %59, i16 zeroext %60) #9, !dbg !4889
  %61 = load i8*, i8** %buf.addr, align 8, !dbg !4890
  %add.ptr = getelementptr i8, i8* %61, i64 2, !dbg !4890
  store i8* %add.ptr, i8** %buf.addr, align 8, !dbg !4890
  %62 = load i32, i32* %pos, align 4, !dbg !4891
  %add58 = add i32 %62, 2, !dbg !4891
  store i32 %add58, i32* %pos, align 4, !dbg !4891
  %63 = load i32, i32* %cnt, align 4, !dbg !4892
  %sub59 = sub i32 %63, 2, !dbg !4892
  store i32 %sub59, i32* %cnt, align 4, !dbg !4892
  br label %if.end60, !dbg !4893

if.end60:                                         ; preds = %if.then48, %land.lhs.true45, %if.end42
  br label %while.cond, !dbg !4894

while.cond:                                       ; preds = %while.body, %if.end60
  %64 = load i32, i32* %cnt, align 4, !dbg !4895
  %cmp61 = icmp sge i32 %64, 4, !dbg !4896
  br i1 %cmp61, label %while.body, label %while.end, !dbg !4894

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %val63, metadata !4897, metadata !DIExpression()), !dbg !4899
  call void @llvm.dbg.declare(metadata i32* %__ret_gu64, metadata !4900, metadata !DIExpression()), !dbg !4902
  call void @llvm.dbg.declare(metadata i32* %__val_gu65, metadata !4903, metadata !DIExpression()), !dbg !4902
  %65 = call i64 @llvm.read_register.i64(metadata !3093), !dbg !4902
  %66 = load i8*, i8** %buf.addr, align 8, !dbg !4902
  %67 = bitcast i8* %66 to i32*, !dbg !4902
  %68 = call { i32*, i32, i64 } asm sideeffect "call __get_user_nocheck_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i32* %67, i64 4, i64 %65) #8, !dbg !4902, !srcloc !4904
  %asmresult66 = extractvalue { i32*, i32, i64 } %68, 0, !dbg !4902
  %asmresult67 = extractvalue { i32*, i32, i64 } %68, 1, !dbg !4902
  %asmresult68 = extractvalue { i32*, i32, i64 } %68, 2, !dbg !4902
  %69 = ptrtoint i32* %asmresult66 to i64, !dbg !4902
  %70 = trunc i64 %69 to i32, !dbg !4902
  store i32 %70, i32* %__ret_gu64, align 4, !dbg !4902
  store i32 %asmresult67, i32* %__val_gu65, align 4, !dbg !4902
  call void @llvm.write_register.i64(metadata !3093, i64 %asmresult68), !dbg !4902
  %71 = load i32, i32* %__val_gu65, align 4, !dbg !4902
  store i32 %71, i32* %val63, align 4, !dbg !4902
  %72 = load i32, i32* %__ret_gu64, align 4, !dbg !4902
  %conv70 = sext i32 %72 to i64, !dbg !4902
  store i64 %conv70, i64* %tmp69, align 8, !dbg !4902
  %73 = load i64, i64* %tmp69, align 8, !dbg !4902
  %74 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4905
  %75 = load i32, i32* %pos, align 4, !dbg !4906
  %76 = load i32, i32* %val63, align 4, !dbg !4907
  %call71 = call i32 @pci_user_write_config_dword(%struct.pci_dev* %74, i32 %75, i32 %76) #9, !dbg !4908
  %77 = load i8*, i8** %buf.addr, align 8, !dbg !4909
  %add.ptr72 = getelementptr i8, i8* %77, i64 4, !dbg !4909
  store i8* %add.ptr72, i8** %buf.addr, align 8, !dbg !4909
  %78 = load i32, i32* %pos, align 4, !dbg !4910
  %add73 = add i32 %78, 4, !dbg !4910
  store i32 %add73, i32* %pos, align 4, !dbg !4910
  %79 = load i32, i32* %cnt, align 4, !dbg !4911
  %sub74 = sub i32 %79, 4, !dbg !4911
  store i32 %sub74, i32* %cnt, align 4, !dbg !4911
  br label %while.cond, !dbg !4894, !llvm.loop !4912

while.end:                                        ; preds = %while.cond
  %80 = load i32, i32* %cnt, align 4, !dbg !4914
  %cmp75 = icmp sge i32 %80, 2, !dbg !4916
  br i1 %cmp75, label %if.then77, label %if.end90, !dbg !4917

if.then77:                                        ; preds = %while.end
  call void @llvm.dbg.declare(metadata i16* %val78, metadata !4918, metadata !DIExpression()), !dbg !4920
  call void @llvm.dbg.declare(metadata i32* %__ret_gu79, metadata !4921, metadata !DIExpression()), !dbg !4923
  call void @llvm.dbg.declare(metadata i16* %__val_gu80, metadata !4924, metadata !DIExpression()), !dbg !4923
  %81 = call i64 @llvm.read_register.i64(metadata !3093), !dbg !4923
  %82 = load i8*, i8** %buf.addr, align 8, !dbg !4923
  %83 = bitcast i8* %82 to i16*, !dbg !4923
  %84 = call { i16*, i16, i64 } asm sideeffect "call __get_user_nocheck_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i16* %83, i64 2, i64 %81) #8, !dbg !4923, !srcloc !4925
  %asmresult81 = extractvalue { i16*, i16, i64 } %84, 0, !dbg !4923
  %asmresult82 = extractvalue { i16*, i16, i64 } %84, 1, !dbg !4923
  %asmresult83 = extractvalue { i16*, i16, i64 } %84, 2, !dbg !4923
  %85 = ptrtoint i16* %asmresult81 to i64, !dbg !4923
  %86 = trunc i64 %85 to i32, !dbg !4923
  store i32 %86, i32* %__ret_gu79, align 4, !dbg !4923
  store i16 %asmresult82, i16* %__val_gu80, align 2, !dbg !4923
  call void @llvm.write_register.i64(metadata !3093, i64 %asmresult83), !dbg !4923
  %87 = load i16, i16* %__val_gu80, align 2, !dbg !4923
  store i16 %87, i16* %val78, align 2, !dbg !4923
  %88 = load i32, i32* %__ret_gu79, align 4, !dbg !4923
  %conv85 = sext i32 %88 to i64, !dbg !4923
  store i64 %conv85, i64* %tmp84, align 8, !dbg !4923
  %89 = load i64, i64* %tmp84, align 8, !dbg !4923
  %90 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4926
  %91 = load i32, i32* %pos, align 4, !dbg !4927
  %92 = load i16, i16* %val78, align 2, !dbg !4928
  %call86 = call i32 @pci_user_write_config_word(%struct.pci_dev* %90, i32 %91, i16 zeroext %92) #9, !dbg !4929
  %93 = load i8*, i8** %buf.addr, align 8, !dbg !4930
  %add.ptr87 = getelementptr i8, i8* %93, i64 2, !dbg !4930
  store i8* %add.ptr87, i8** %buf.addr, align 8, !dbg !4930
  %94 = load i32, i32* %pos, align 4, !dbg !4931
  %add88 = add i32 %94, 2, !dbg !4931
  store i32 %add88, i32* %pos, align 4, !dbg !4931
  %95 = load i32, i32* %cnt, align 4, !dbg !4932
  %sub89 = sub i32 %95, 2, !dbg !4932
  store i32 %sub89, i32* %cnt, align 4, !dbg !4932
  br label %if.end90, !dbg !4933

if.end90:                                         ; preds = %if.then77, %while.end
  %96 = load i32, i32* %cnt, align 4, !dbg !4934
  %tobool91 = icmp ne i32 %96, 0, !dbg !4934
  br i1 %tobool91, label %if.then92, label %if.end105, !dbg !4936

if.then92:                                        ; preds = %if.end90
  call void @llvm.dbg.declare(metadata i8* %val93, metadata !4937, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.declare(metadata i32* %__ret_gu94, metadata !4940, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.declare(metadata i8* %__val_gu95, metadata !4943, metadata !DIExpression()), !dbg !4942
  %97 = call i64 @llvm.read_register.i64(metadata !3093), !dbg !4942
  %98 = load i8*, i8** %buf.addr, align 8, !dbg !4942
  %99 = call { i8*, i8, i64 } asm sideeffect "call __get_user_nocheck_${4:P}", "={ax},={rdx},={rsp},0,i,2,~{dirflag},~{fpsr},~{flags}"(i8* %98, i64 1, i64 %97) #8, !dbg !4942, !srcloc !4944
  %asmresult96 = extractvalue { i8*, i8, i64 } %99, 0, !dbg !4942
  %asmresult97 = extractvalue { i8*, i8, i64 } %99, 1, !dbg !4942
  %asmresult98 = extractvalue { i8*, i8, i64 } %99, 2, !dbg !4942
  %100 = ptrtoint i8* %asmresult96 to i64, !dbg !4942
  %101 = trunc i64 %100 to i32, !dbg !4942
  store i32 %101, i32* %__ret_gu94, align 4, !dbg !4942
  store i8 %asmresult97, i8* %__val_gu95, align 1, !dbg !4942
  call void @llvm.write_register.i64(metadata !3093, i64 %asmresult98), !dbg !4942
  %102 = load i8, i8* %__val_gu95, align 1, !dbg !4942
  store i8 %102, i8* %val93, align 1, !dbg !4942
  %103 = load i32, i32* %__ret_gu94, align 4, !dbg !4942
  %conv100 = sext i32 %103 to i64, !dbg !4942
  store i64 %conv100, i64* %tmp99, align 8, !dbg !4942
  %104 = load i64, i64* %tmp99, align 8, !dbg !4942
  %105 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4945
  %106 = load i32, i32* %pos, align 4, !dbg !4946
  %107 = load i8, i8* %val93, align 1, !dbg !4947
  %call101 = call i32 @pci_user_write_config_byte(%struct.pci_dev* %105, i32 %106, i8 zeroext %107) #9, !dbg !4948
  %108 = load i8*, i8** %buf.addr, align 8, !dbg !4949
  %incdec.ptr102 = getelementptr i8, i8* %108, i32 1, !dbg !4949
  store i8* %incdec.ptr102, i8** %buf.addr, align 8, !dbg !4949
  %109 = load i32, i32* %pos, align 4, !dbg !4950
  %inc103 = add i32 %109, 1, !dbg !4950
  store i32 %inc103, i32* %pos, align 4, !dbg !4950
  %110 = load i32, i32* %cnt, align 4, !dbg !4951
  %dec104 = add i32 %110, -1, !dbg !4951
  store i32 %dec104, i32* %cnt, align 4, !dbg !4951
  br label %if.end105, !dbg !4952

if.end105:                                        ; preds = %if.then92, %if.end90
  %111 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4953
  call void @pci_config_pm_runtime_put(%struct.pci_dev* %111) #9, !dbg !4954
  %112 = load i32, i32* %pos, align 4, !dbg !4955
  %conv106 = sext i32 %112 to i64, !dbg !4955
  %113 = load i64*, i64** %ppos.addr, align 8, !dbg !4956
  store i64 %conv106, i64* %113, align 8, !dbg !4957
  %114 = load %struct.inode*, %struct.inode** %ino, align 8, !dbg !4958
  %115 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4959
  %cfg_size107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %115, i32 0, i32 42, !dbg !4960
  %116 = load i32, i32* %cfg_size107, align 8, !dbg !4960
  %conv108 = sext i32 %116 to i64, !dbg !4959
  call void @i_size_write(%struct.inode* %114, i64 %conv108) #9, !dbg !4961
  %117 = load i64, i64* %nbytes.addr, align 8, !dbg !4962
  store i64 %117, i64* %retval, align 8, !dbg !4963
  br label %return, !dbg !4963

return:                                           ; preds = %if.end105, %if.then32, %if.then5, %if.then
  %118 = load i64, i64* %retval, align 8, !dbg !4964
  ret i64 %118, !dbg !4964
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @proc_bus_pci_lseek(%struct.file* %file, i64 %off, i32 %whence) #0 !dbg !4965 {
entry:
  %file.addr = alloca %struct.file*, align 8
  %off.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %dev = alloca %struct.pci_dev*, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4966, metadata !DIExpression()), !dbg !4967
  store i64 %off, i64* %off.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %off.addr, metadata !4968, metadata !DIExpression()), !dbg !4969
  store i32 %whence, i32* %whence.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %whence.addr, metadata !4970, metadata !DIExpression()), !dbg !4971
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !4972, metadata !DIExpression()), !dbg !4973
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4974
  %call = call %struct.inode* @file_inode(%struct.file* %0) #9, !dbg !4975
  %call1 = call i8* @PDE_DATA(%struct.inode* %call) #9, !dbg !4976
  %1 = bitcast i8* %call1 to %struct.pci_dev*, !dbg !4976
  store %struct.pci_dev* %1, %struct.pci_dev** %dev, align 8, !dbg !4973
  %2 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4977
  %3 = load i64, i64* %off.addr, align 8, !dbg !4978
  %4 = load i32, i32* %whence.addr, align 4, !dbg !4979
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !4980
  %cfg_size = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 42, !dbg !4981
  %6 = load i32, i32* %cfg_size, align 8, !dbg !4981
  %conv = sext i32 %6 to i64, !dbg !4980
  %call2 = call i64 @fixed_size_llseek(%struct.file* %2, i64 %3, i32 %4, i64 %conv) #9, !dbg !4982
  ret i64 %call2, !dbg !4983
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @proc_bus_pci_release(%struct.inode* %inode, %struct.file* %file) #0 !dbg !4984 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4985, metadata !DIExpression()), !dbg !4986
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4987, metadata !DIExpression()), !dbg !4988
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4989
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !4990
  %1 = load i8*, i8** %private_data, align 8, !dbg !4990
  call void @kfree(i8* %1) #9, !dbg !4991
  %2 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4992
  %private_data1 = getelementptr inbounds %struct.file, %struct.file* %2, i32 0, i32 15, !dbg !4993
  store i8* null, i8** %private_data1, align 8, !dbg !4994
  ret i32 0, !dbg !4995
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @proc_bus_pci_ioctl(%struct.file* %file, i32 %cmd, i64 %arg) #0 !dbg !4996 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %dev = alloca %struct.pci_dev*, align 8
  %fpriv = alloca %struct.pci_filp_private*, align 8
  %ret = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4997, metadata !DIExpression()), !dbg !4998
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !4999, metadata !DIExpression()), !dbg !5000
  store i64 %arg, i64* %arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %arg.addr, metadata !5001, metadata !DIExpression()), !dbg !5002
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !5003, metadata !DIExpression()), !dbg !5004
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5005
  %call = call %struct.inode* @file_inode(%struct.file* %0) #9, !dbg !5006
  %call1 = call i8* @PDE_DATA(%struct.inode* %call) #9, !dbg !5007
  %1 = bitcast i8* %call1 to %struct.pci_dev*, !dbg !5007
  store %struct.pci_dev* %1, %struct.pci_dev** %dev, align 8, !dbg !5004
  call void @llvm.dbg.declare(metadata %struct.pci_filp_private** %fpriv, metadata !5008, metadata !DIExpression()), !dbg !5009
  %2 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5010
  %private_data = getelementptr inbounds %struct.file, %struct.file* %2, i32 0, i32 15, !dbg !5011
  %3 = load i8*, i8** %private_data, align 8, !dbg !5011
  %4 = bitcast i8* %3 to %struct.pci_filp_private*, !dbg !5010
  store %struct.pci_filp_private* %4, %struct.pci_filp_private** %fpriv, align 8, !dbg !5009
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5012, metadata !DIExpression()), !dbg !5013
  store i32 0, i32* %ret, align 4, !dbg !5013
  %call2 = call i32 @security_locked_down(i32 6) #9, !dbg !5014
  store i32 %call2, i32* %ret, align 4, !dbg !5015
  %5 = load i32, i32* %ret, align 4, !dbg !5016
  %tobool = icmp ne i32 %5, 0, !dbg !5016
  br i1 %tobool, label %if.then, label %if.end, !dbg !5018

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %ret, align 4, !dbg !5019
  %conv = sext i32 %6 to i64, !dbg !5019
  store i64 %conv, i64* %retval, align 8, !dbg !5020
  br label %return, !dbg !5020

if.end:                                           ; preds = %entry
  %7 = load i32, i32* %cmd.addr, align 4, !dbg !5021
  switch i32 %7, label %sw.default [
    i32 1346586880, label %sw.bb
    i32 1346586881, label %sw.bb4
    i32 1346586882, label %sw.bb5
    i32 1346586883, label %sw.bb6
  ], !dbg !5022

sw.bb:                                            ; preds = %if.end
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5023
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 1, !dbg !5025
  %9 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5025
  %call3 = call i32 @pci_domain_nr(%struct.pci_bus* %9) #9, !dbg !5026
  store i32 %call3, i32* %ret, align 4, !dbg !5027
  br label %sw.epilog, !dbg !5028

sw.bb4:                                           ; preds = %if.end
  store i64 -22, i64* %retval, align 8, !dbg !5029
  br label %return, !dbg !5029

sw.bb5:                                           ; preds = %if.end
  %10 = load %struct.pci_filp_private*, %struct.pci_filp_private** %fpriv, align 8, !dbg !5031
  %mmap_state = getelementptr inbounds %struct.pci_filp_private, %struct.pci_filp_private* %10, i32 0, i32 0, !dbg !5032
  store i32 1, i32* %mmap_state, align 4, !dbg !5033
  br label %sw.epilog, !dbg !5034

sw.bb6:                                           ; preds = %if.end
  %call7 = call zeroext i1 @pat_enabled() #9, !dbg !5035
  br i1 %call7, label %if.then8, label %if.end13, !dbg !5037

if.then8:                                         ; preds = %sw.bb6
  %11 = load i64, i64* %arg.addr, align 8, !dbg !5038
  %tobool9 = icmp ne i64 %11, 0, !dbg !5038
  br i1 %tobool9, label %if.then10, label %if.else, !dbg !5041

if.then10:                                        ; preds = %if.then8
  %12 = load %struct.pci_filp_private*, %struct.pci_filp_private** %fpriv, align 8, !dbg !5042
  %write_combine = getelementptr inbounds %struct.pci_filp_private, %struct.pci_filp_private* %12, i32 0, i32 1, !dbg !5043
  store i32 1, i32* %write_combine, align 4, !dbg !5044
  br label %if.end12, !dbg !5042

if.else:                                          ; preds = %if.then8
  %13 = load %struct.pci_filp_private*, %struct.pci_filp_private** %fpriv, align 8, !dbg !5045
  %write_combine11 = getelementptr inbounds %struct.pci_filp_private, %struct.pci_filp_private* %13, i32 0, i32 1, !dbg !5046
  store i32 0, i32* %write_combine11, align 4, !dbg !5047
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then10
  br label %sw.epilog, !dbg !5048

if.end13:                                         ; preds = %sw.bb6
  br label %sw.default, !dbg !5035

sw.default:                                       ; preds = %if.end, %if.end13
  store i32 -22, i32* %ret, align 4, !dbg !5049
  br label %sw.epilog, !dbg !5050

sw.epilog:                                        ; preds = %sw.default, %if.end12, %sw.bb5, %sw.bb
  %14 = load i32, i32* %ret, align 4, !dbg !5051
  %conv14 = sext i32 %14 to i64, !dbg !5051
  store i64 %conv14, i64* %retval, align 8, !dbg !5052
  br label %return, !dbg !5052

return:                                           ; preds = %sw.epilog, %sw.bb4, %if.then
  %15 = load i64, i64* %retval, align 8, !dbg !5053
  ret i64 %15, !dbg !5053
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @proc_bus_pci_mmap(%struct.file* %file, %struct.vm_area_struct* %vma) #0 !dbg !5054 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct.file*, align 8
  %vma.addr = alloca %struct.vm_area_struct*, align 8
  %dev = alloca %struct.pci_dev*, align 8
  %fpriv = alloca %struct.pci_filp_private*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %write_combine = alloca i32, align 4
  %res_bit = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !5055, metadata !DIExpression()), !dbg !5056
  store %struct.vm_area_struct* %vma, %struct.vm_area_struct** %vma.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.vm_area_struct** %vma.addr, metadata !5057, metadata !DIExpression()), !dbg !5058
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !5059, metadata !DIExpression()), !dbg !5060
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5061
  %call = call %struct.inode* @file_inode(%struct.file* %0) #9, !dbg !5062
  %call1 = call i8* @PDE_DATA(%struct.inode* %call) #9, !dbg !5063
  %1 = bitcast i8* %call1 to %struct.pci_dev*, !dbg !5063
  store %struct.pci_dev* %1, %struct.pci_dev** %dev, align 8, !dbg !5060
  call void @llvm.dbg.declare(metadata %struct.pci_filp_private** %fpriv, metadata !5064, metadata !DIExpression()), !dbg !5065
  %2 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !5066
  %private_data = getelementptr inbounds %struct.file, %struct.file* %2, i32 0, i32 15, !dbg !5067
  %3 = load i8*, i8** %private_data, align 8, !dbg !5067
  %4 = bitcast i8* %3 to %struct.pci_filp_private*, !dbg !5066
  store %struct.pci_filp_private* %4, %struct.pci_filp_private** %fpriv, align 8, !dbg !5065
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5068, metadata !DIExpression()), !dbg !5069
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5070, metadata !DIExpression()), !dbg !5071
  call void @llvm.dbg.declare(metadata i32* %write_combine, metadata !5072, metadata !DIExpression()), !dbg !5073
  store i32 0, i32* %write_combine, align 4, !dbg !5073
  call void @llvm.dbg.declare(metadata i32* %res_bit, metadata !5074, metadata !DIExpression()), !dbg !5075
  store i32 512, i32* %res_bit, align 4, !dbg !5075
  %call2 = call zeroext i1 @capable(i32 17) #9, !dbg !5076
  br i1 %call2, label %lor.lhs.false, label %if.then, !dbg !5078

lor.lhs.false:                                    ; preds = %entry
  %call3 = call i32 @security_locked_down(i32 6) #9, !dbg !5079
  %tobool = icmp ne i32 %call3, 0, !dbg !5079
  br i1 %tobool, label %if.then, label %if.end, !dbg !5080

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, i32* %retval, align 4, !dbg !5081
  br label %return, !dbg !5081

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.pci_filp_private*, %struct.pci_filp_private** %fpriv, align 8, !dbg !5082
  %mmap_state = getelementptr inbounds %struct.pci_filp_private, %struct.pci_filp_private* %5, i32 0, i32 0, !dbg !5084
  %6 = load i32, i32* %mmap_state, align 4, !dbg !5084
  %cmp = icmp eq i32 %6, 0, !dbg !5085
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !5086

if.then4:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !5087
  br label %return, !dbg !5087

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5090
  br label %for.cond, !dbg !5092

for.cond:                                         ; preds = %for.inc, %if.end5
  %7 = load i32, i32* %i, align 4, !dbg !5093
  %cmp6 = icmp slt i32 %7, 6, !dbg !5095
  br i1 %cmp6, label %for.body, label %for.end, !dbg !5096

for.body:                                         ; preds = %for.cond
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5097
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 44, !dbg !5100
  %9 = load i32, i32* %i, align 4, !dbg !5101
  %idxprom = sext i32 %9 to i64, !dbg !5097
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 %idxprom, !dbg !5097
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx, i32 0, i32 3, !dbg !5102
  %10 = load i64, i64* %flags, align 8, !dbg !5102
  %11 = load i32, i32* %res_bit, align 4, !dbg !5103
  %conv = sext i32 %11 to i64, !dbg !5103
  %and = and i64 %10, %conv, !dbg !5104
  %tobool7 = icmp ne i64 %and, 0, !dbg !5104
  br i1 %tobool7, label %land.lhs.true, label %if.end11, !dbg !5105

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5106
  %13 = load i32, i32* %i, align 4, !dbg !5107
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !5108
  %call8 = call i32 @pci_mmap_fits(%struct.pci_dev* %12, i32 %13, %struct.vm_area_struct* %14, i32 1) #9, !dbg !5109
  %tobool9 = icmp ne i32 %call8, 0, !dbg !5109
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5110

if.then10:                                        ; preds = %land.lhs.true
  br label %for.end, !dbg !5111

if.end11:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5112

for.inc:                                          ; preds = %if.end11
  %15 = load i32, i32* %i, align 4, !dbg !5113
  %inc = add i32 %15, 1, !dbg !5113
  store i32 %inc, i32* %i, align 4, !dbg !5113
  br label %for.cond, !dbg !5114, !llvm.loop !5115

for.end:                                          ; preds = %if.then10, %for.cond
  %16 = load i32, i32* %i, align 4, !dbg !5117
  %cmp12 = icmp sge i32 %16, 6, !dbg !5119
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !5120

if.then14:                                        ; preds = %for.end
  store i32 -19, i32* %retval, align 4, !dbg !5121
  br label %return, !dbg !5121

if.end15:                                         ; preds = %for.end
  %17 = load %struct.pci_filp_private*, %struct.pci_filp_private** %fpriv, align 8, !dbg !5122
  %mmap_state16 = getelementptr inbounds %struct.pci_filp_private, %struct.pci_filp_private* %17, i32 0, i32 0, !dbg !5124
  %18 = load i32, i32* %mmap_state16, align 4, !dbg !5124
  %cmp17 = icmp eq i32 %18, 1, !dbg !5125
  br i1 %cmp17, label %land.lhs.true19, label %if.end31, !dbg !5126

land.lhs.true19:                                  ; preds = %if.end15
  %19 = load %struct.pci_filp_private*, %struct.pci_filp_private** %fpriv, align 8, !dbg !5127
  %write_combine20 = getelementptr inbounds %struct.pci_filp_private, %struct.pci_filp_private* %19, i32 0, i32 1, !dbg !5128
  %20 = load i32, i32* %write_combine20, align 4, !dbg !5128
  %tobool21 = icmp ne i32 %20, 0, !dbg !5127
  br i1 %tobool21, label %if.then22, label %if.end31, !dbg !5129

if.then22:                                        ; preds = %land.lhs.true19
  %21 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5130
  %resource23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 44, !dbg !5133
  %22 = load i32, i32* %i, align 4, !dbg !5134
  %idxprom24 = sext i32 %22 to i64, !dbg !5130
  %arrayidx25 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource23, i64 0, i64 %idxprom24, !dbg !5130
  %flags26 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx25, i32 0, i32 3, !dbg !5135
  %23 = load i64, i64* %flags26, align 8, !dbg !5135
  %and27 = and i64 %23, 8192, !dbg !5136
  %tobool28 = icmp ne i64 %and27, 0, !dbg !5136
  br i1 %tobool28, label %if.then29, label %if.else, !dbg !5137

if.then29:                                        ; preds = %if.then22
  store i32 1, i32* %write_combine, align 4, !dbg !5138
  br label %if.end30, !dbg !5139

if.else:                                          ; preds = %if.then22
  store i32 -22, i32* %retval, align 4, !dbg !5140
  br label %return, !dbg !5140

if.end30:                                         ; preds = %if.then29
  br label %if.end31, !dbg !5141

if.end31:                                         ; preds = %if.end30, %land.lhs.true19, %if.end15
  %24 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5142
  %25 = load i32, i32* %i, align 4, !dbg !5143
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %vma.addr, align 8, !dbg !5144
  %27 = load %struct.pci_filp_private*, %struct.pci_filp_private** %fpriv, align 8, !dbg !5145
  %mmap_state32 = getelementptr inbounds %struct.pci_filp_private, %struct.pci_filp_private* %27, i32 0, i32 0, !dbg !5146
  %28 = load i32, i32* %mmap_state32, align 4, !dbg !5146
  %29 = load i32, i32* %write_combine, align 4, !dbg !5147
  %call33 = call i32 @pci_mmap_page_range(%struct.pci_dev* %24, i32 %25, %struct.vm_area_struct* %26, i32 %28, i32 %29) #9, !dbg !5148
  store i32 %call33, i32* %ret, align 4, !dbg !5149
  %30 = load i32, i32* %ret, align 4, !dbg !5150
  %cmp34 = icmp slt i32 %30, 0, !dbg !5152
  br i1 %cmp34, label %if.then36, label %if.end37, !dbg !5153

if.then36:                                        ; preds = %if.end31
  %31 = load i32, i32* %ret, align 4, !dbg !5154
  store i32 %31, i32* %retval, align 4, !dbg !5155
  br label %return, !dbg !5155

if.end37:                                         ; preds = %if.end31
  store i32 0, i32* %retval, align 4, !dbg !5156
  br label %return, !dbg !5156

return:                                           ; preds = %if.end37, %if.then36, %if.else, %if.then14, %if.then4, %if.then
  %32 = load i32, i32* %retval, align 4, !dbg !5157
  ret i32 %32, !dbg !5157
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !5158 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5162, metadata !DIExpression()), !dbg !5167
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5169, metadata !DIExpression()), !dbg !5170
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5171, metadata !DIExpression()), !dbg !5172
  %0 = load i64, i64* %size.addr, align 8, !dbg !5173
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5175
  br i1 %1, label %if.then, label %if.end447, !dbg !5176

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5177
  %tobool = icmp ne i64 %2, 0, !dbg !5177
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5180

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5181
  br label %return, !dbg !5181

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5182
  %cmp = icmp ult i64 %3, 4096, !dbg !5184
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5185

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5186
  br label %return, !dbg !5186

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub = sub i64 %4, 1, !dbg !5187
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5187
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5187

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub4 = sub i64 %6, 1, !dbg !5187
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5187
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5187

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub6 = sub i64 %8, 1, !dbg !5187
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5187
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5187

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5187

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub9 = sub i64 %9, 1, !dbg !5187
  %and = and i64 %sub9, -9223372036854775808, !dbg !5187
  %tobool10 = icmp ne i64 %and, 0, !dbg !5187
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5187

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5187

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub13 = sub i64 %10, 1, !dbg !5187
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5187
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5187
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5187

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5187

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub18 = sub i64 %11, 1, !dbg !5187
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5187
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5187
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5187

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5187

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub23 = sub i64 %12, 1, !dbg !5187
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5187
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5187
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5187

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5187

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub28 = sub i64 %13, 1, !dbg !5187
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5187
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5187
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5187

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5187

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub33 = sub i64 %14, 1, !dbg !5187
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5187
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5187
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5187

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5187

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub38 = sub i64 %15, 1, !dbg !5187
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5187
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5187
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5187

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5187

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub43 = sub i64 %16, 1, !dbg !5187
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5187
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5187
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5187

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5187

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub48 = sub i64 %17, 1, !dbg !5187
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5187
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5187
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5187

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5187

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub53 = sub i64 %18, 1, !dbg !5187
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5187
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5187
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5187

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5187

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub58 = sub i64 %19, 1, !dbg !5187
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5187
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5187
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5187

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5187

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub63 = sub i64 %20, 1, !dbg !5187
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5187
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5187
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5187

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5187

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub68 = sub i64 %21, 1, !dbg !5187
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5187
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5187
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5187

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5187

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub73 = sub i64 %22, 1, !dbg !5187
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5187
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5187
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5187

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5187

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub78 = sub i64 %23, 1, !dbg !5187
  %and79 = and i64 %sub78, 562949953421312, !dbg !5187
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5187
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5187

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5187

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub83 = sub i64 %24, 1, !dbg !5187
  %and84 = and i64 %sub83, 281474976710656, !dbg !5187
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5187
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5187

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5187

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub88 = sub i64 %25, 1, !dbg !5187
  %and89 = and i64 %sub88, 140737488355328, !dbg !5187
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5187
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5187

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5187

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub93 = sub i64 %26, 1, !dbg !5187
  %and94 = and i64 %sub93, 70368744177664, !dbg !5187
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5187
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5187

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5187

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub98 = sub i64 %27, 1, !dbg !5187
  %and99 = and i64 %sub98, 35184372088832, !dbg !5187
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5187
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5187

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5187

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub103 = sub i64 %28, 1, !dbg !5187
  %and104 = and i64 %sub103, 17592186044416, !dbg !5187
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5187
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5187

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5187

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub108 = sub i64 %29, 1, !dbg !5187
  %and109 = and i64 %sub108, 8796093022208, !dbg !5187
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5187
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5187

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5187

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub113 = sub i64 %30, 1, !dbg !5187
  %and114 = and i64 %sub113, 4398046511104, !dbg !5187
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5187
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5187

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5187

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub118 = sub i64 %31, 1, !dbg !5187
  %and119 = and i64 %sub118, 2199023255552, !dbg !5187
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5187
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5187

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5187

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub123 = sub i64 %32, 1, !dbg !5187
  %and124 = and i64 %sub123, 1099511627776, !dbg !5187
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5187
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5187

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5187

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub128 = sub i64 %33, 1, !dbg !5187
  %and129 = and i64 %sub128, 549755813888, !dbg !5187
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5187
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5187

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5187

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub133 = sub i64 %34, 1, !dbg !5187
  %and134 = and i64 %sub133, 274877906944, !dbg !5187
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5187
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5187

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5187

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub138 = sub i64 %35, 1, !dbg !5187
  %and139 = and i64 %sub138, 137438953472, !dbg !5187
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5187
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5187

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5187

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub143 = sub i64 %36, 1, !dbg !5187
  %and144 = and i64 %sub143, 68719476736, !dbg !5187
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5187
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5187

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5187

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub148 = sub i64 %37, 1, !dbg !5187
  %and149 = and i64 %sub148, 34359738368, !dbg !5187
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5187
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5187

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5187

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub153 = sub i64 %38, 1, !dbg !5187
  %and154 = and i64 %sub153, 17179869184, !dbg !5187
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5187
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5187

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5187

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub158 = sub i64 %39, 1, !dbg !5187
  %and159 = and i64 %sub158, 8589934592, !dbg !5187
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5187
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5187

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5187

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub163 = sub i64 %40, 1, !dbg !5187
  %and164 = and i64 %sub163, 4294967296, !dbg !5187
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5187
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5187

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5187

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub168 = sub i64 %41, 1, !dbg !5187
  %and169 = and i64 %sub168, 2147483648, !dbg !5187
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5187
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5187

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5187

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub173 = sub i64 %42, 1, !dbg !5187
  %and174 = and i64 %sub173, 1073741824, !dbg !5187
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5187
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5187

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5187

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub178 = sub i64 %43, 1, !dbg !5187
  %and179 = and i64 %sub178, 536870912, !dbg !5187
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5187
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5187

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5187

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub183 = sub i64 %44, 1, !dbg !5187
  %and184 = and i64 %sub183, 268435456, !dbg !5187
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5187
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5187

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5187

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub188 = sub i64 %45, 1, !dbg !5187
  %and189 = and i64 %sub188, 134217728, !dbg !5187
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5187
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5187

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5187

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub193 = sub i64 %46, 1, !dbg !5187
  %and194 = and i64 %sub193, 67108864, !dbg !5187
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5187
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5187

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5187

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub198 = sub i64 %47, 1, !dbg !5187
  %and199 = and i64 %sub198, 33554432, !dbg !5187
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5187
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5187

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5187

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub203 = sub i64 %48, 1, !dbg !5187
  %and204 = and i64 %sub203, 16777216, !dbg !5187
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5187
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5187

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5187

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub208 = sub i64 %49, 1, !dbg !5187
  %and209 = and i64 %sub208, 8388608, !dbg !5187
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5187
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5187

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5187

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub213 = sub i64 %50, 1, !dbg !5187
  %and214 = and i64 %sub213, 4194304, !dbg !5187
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5187
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5187

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5187

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub218 = sub i64 %51, 1, !dbg !5187
  %and219 = and i64 %sub218, 2097152, !dbg !5187
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5187
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5187

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5187

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub223 = sub i64 %52, 1, !dbg !5187
  %and224 = and i64 %sub223, 1048576, !dbg !5187
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5187
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5187

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5187

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub228 = sub i64 %53, 1, !dbg !5187
  %and229 = and i64 %sub228, 524288, !dbg !5187
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5187
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5187

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5187

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub233 = sub i64 %54, 1, !dbg !5187
  %and234 = and i64 %sub233, 262144, !dbg !5187
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5187
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5187

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5187

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub238 = sub i64 %55, 1, !dbg !5187
  %and239 = and i64 %sub238, 131072, !dbg !5187
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5187
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5187

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5187

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub243 = sub i64 %56, 1, !dbg !5187
  %and244 = and i64 %sub243, 65536, !dbg !5187
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5187
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5187

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5187

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub248 = sub i64 %57, 1, !dbg !5187
  %and249 = and i64 %sub248, 32768, !dbg !5187
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5187
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5187

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5187

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub253 = sub i64 %58, 1, !dbg !5187
  %and254 = and i64 %sub253, 16384, !dbg !5187
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5187
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5187

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5187

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub258 = sub i64 %59, 1, !dbg !5187
  %and259 = and i64 %sub258, 8192, !dbg !5187
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5187
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5187

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5187

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub263 = sub i64 %60, 1, !dbg !5187
  %and264 = and i64 %sub263, 4096, !dbg !5187
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5187
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5187

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5187

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub268 = sub i64 %61, 1, !dbg !5187
  %and269 = and i64 %sub268, 2048, !dbg !5187
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5187
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5187

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5187

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub273 = sub i64 %62, 1, !dbg !5187
  %and274 = and i64 %sub273, 1024, !dbg !5187
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5187
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5187

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5187

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub278 = sub i64 %63, 1, !dbg !5187
  %and279 = and i64 %sub278, 512, !dbg !5187
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5187
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5187

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5187

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub283 = sub i64 %64, 1, !dbg !5187
  %and284 = and i64 %sub283, 256, !dbg !5187
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5187
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5187

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5187

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub288 = sub i64 %65, 1, !dbg !5187
  %and289 = and i64 %sub288, 128, !dbg !5187
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5187
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5187

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5187

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub293 = sub i64 %66, 1, !dbg !5187
  %and294 = and i64 %sub293, 64, !dbg !5187
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5187
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5187

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5187

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub298 = sub i64 %67, 1, !dbg !5187
  %and299 = and i64 %sub298, 32, !dbg !5187
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5187
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5187

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5187

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub303 = sub i64 %68, 1, !dbg !5187
  %and304 = and i64 %sub303, 16, !dbg !5187
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5187
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5187

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5187

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub308 = sub i64 %69, 1, !dbg !5187
  %and309 = and i64 %sub308, 8, !dbg !5187
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5187
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5187

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5187

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub313 = sub i64 %70, 1, !dbg !5187
  %and314 = and i64 %sub313, 4, !dbg !5187
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5187
  %71 = zext i1 %tobool315 to i64, !dbg !5187
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5187
  br label %cond.end, !dbg !5187

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5187
  br label %cond.end317, !dbg !5187

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5187
  br label %cond.end319, !dbg !5187

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5187
  br label %cond.end321, !dbg !5187

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5187
  br label %cond.end323, !dbg !5187

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5187
  br label %cond.end325, !dbg !5187

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5187
  br label %cond.end327, !dbg !5187

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5187
  br label %cond.end329, !dbg !5187

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5187
  br label %cond.end331, !dbg !5187

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5187
  br label %cond.end333, !dbg !5187

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5187
  br label %cond.end335, !dbg !5187

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5187
  br label %cond.end337, !dbg !5187

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5187
  br label %cond.end339, !dbg !5187

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5187
  br label %cond.end341, !dbg !5187

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5187
  br label %cond.end343, !dbg !5187

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5187
  br label %cond.end345, !dbg !5187

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5187
  br label %cond.end347, !dbg !5187

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5187
  br label %cond.end349, !dbg !5187

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5187
  br label %cond.end351, !dbg !5187

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5187
  br label %cond.end353, !dbg !5187

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5187
  br label %cond.end355, !dbg !5187

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5187
  br label %cond.end357, !dbg !5187

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5187
  br label %cond.end359, !dbg !5187

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5187
  br label %cond.end361, !dbg !5187

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5187
  br label %cond.end363, !dbg !5187

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5187
  br label %cond.end365, !dbg !5187

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5187
  br label %cond.end367, !dbg !5187

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5187
  br label %cond.end369, !dbg !5187

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5187
  br label %cond.end371, !dbg !5187

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5187
  br label %cond.end373, !dbg !5187

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5187
  br label %cond.end375, !dbg !5187

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5187
  br label %cond.end377, !dbg !5187

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5187
  br label %cond.end379, !dbg !5187

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5187
  br label %cond.end381, !dbg !5187

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5187
  br label %cond.end383, !dbg !5187

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5187
  br label %cond.end385, !dbg !5187

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5187
  br label %cond.end387, !dbg !5187

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5187
  br label %cond.end389, !dbg !5187

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5187
  br label %cond.end391, !dbg !5187

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5187
  br label %cond.end393, !dbg !5187

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5187
  br label %cond.end395, !dbg !5187

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5187
  br label %cond.end397, !dbg !5187

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5187
  br label %cond.end399, !dbg !5187

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5187
  br label %cond.end401, !dbg !5187

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5187
  br label %cond.end403, !dbg !5187

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5187
  br label %cond.end405, !dbg !5187

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5187
  br label %cond.end407, !dbg !5187

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5187
  br label %cond.end409, !dbg !5187

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5187
  br label %cond.end411, !dbg !5187

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5187
  br label %cond.end413, !dbg !5187

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5187
  br label %cond.end415, !dbg !5187

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5187
  br label %cond.end417, !dbg !5187

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5187
  br label %cond.end419, !dbg !5187

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5187
  br label %cond.end421, !dbg !5187

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5187
  br label %cond.end423, !dbg !5187

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5187
  br label %cond.end425, !dbg !5187

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5187
  br label %cond.end427, !dbg !5187

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5187
  br label %cond.end429, !dbg !5187

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5187
  br label %cond.end431, !dbg !5187

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5187
  br label %cond.end433, !dbg !5187

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5187
  br label %cond.end435, !dbg !5187

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5187
  br label %cond.end437, !dbg !5187

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5187
  br label %cond.end440, !dbg !5187

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5187

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5187
  br label %cond.end444, !dbg !5187

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5187
  %sub443 = sub i64 %72, 1, !dbg !5187
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !5187
  br label %cond.end444, !dbg !5187

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5187
  %sub446 = sub i32 %cond445, 12, !dbg !5188
  %add = add i32 %sub446, 1, !dbg !5189
  store i32 %add, i32* %retval, align 4, !dbg !5190
  br label %return, !dbg !5190

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5191
  %dec = add i64 %73, -1, !dbg !5191
  store i64 %dec, i64* %size.addr, align 8, !dbg !5191
  %74 = load i64, i64* %size.addr, align 8, !dbg !5192
  %shr = lshr i64 %74, 12, !dbg !5192
  store i64 %shr, i64* %size.addr, align 8, !dbg !5192
  %75 = load i64, i64* %size.addr, align 8, !dbg !5193
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5170
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5194
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5195
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #7, !dbg !5194, !srcloc !5196
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5194
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5197
  %add.i = add i32 %79, 1, !dbg !5198
  store i32 %add.i, i32* %retval, align 4, !dbg !5199
  br label %return, !dbg !5199

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5200
  ret i32 %80, !dbg !5200
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !5201 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5162, metadata !DIExpression()), !dbg !5205
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5169, metadata !DIExpression()), !dbg !5207
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5208, metadata !DIExpression()), !dbg !5209
  %0 = load i64, i64* %n.addr, align 8, !dbg !5210
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5207
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5211
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5212
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #7, !dbg !5211, !srcloc !5196
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5211
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5213
  %add.i = add i32 %4, 1, !dbg !5214
  %sub = sub i32 %add.i, 1, !dbg !5215
  ret i32 %sub, !dbg !5216
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5217 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5221, metadata !DIExpression()), !dbg !5222
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5223, metadata !DIExpression()), !dbg !5224
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5225, metadata !DIExpression()), !dbg !5226
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5227, metadata !DIExpression()), !dbg !5228
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5229
  ret i8* %0, !dbg !5230
}

; Function Attrs: noredzone
declare dso_local i8* @PDE_DATA(%struct.inode*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.inode* @file_inode(%struct.file* %f) #0 !dbg !5231 {
entry:
  %f.addr = alloca %struct.file*, align 8
  store %struct.file* %f, %struct.file** %f.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %f.addr, metadata !5234, metadata !DIExpression()), !dbg !5235
  %0 = load %struct.file*, %struct.file** %f.addr, align 8, !dbg !5236
  %f_inode = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 2, !dbg !5237
  %1 = load %struct.inode*, %struct.inode** %f_inode, align 8, !dbg !5237
  ret %struct.inode* %1, !dbg !5238
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @capable(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__chk_range_not_ok(i64 %addr, i64 %size, i64 %limit) #0 !dbg !5239 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %limit.addr = alloca i64, align 8
  store i64 %addr, i64* %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %addr.addr, metadata !5243, metadata !DIExpression()), !dbg !5244
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5245, metadata !DIExpression()), !dbg !5246
  store i64 %limit, i64* %limit.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %limit.addr, metadata !5247, metadata !DIExpression()), !dbg !5248
  %0 = load i64, i64* %size.addr, align 8, !dbg !5249
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5251
  br i1 %1, label %if.then, label %if.end, !dbg !5252

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %addr.addr, align 8, !dbg !5253
  %3 = load i64, i64* %limit.addr, align 8, !dbg !5253
  %4 = load i64, i64* %size.addr, align 8, !dbg !5253
  %sub = sub i64 %3, %4, !dbg !5253
  %cmp = icmp ugt i64 %2, %sub, !dbg !5253
  %lnot = xor i1 %cmp, true, !dbg !5253
  %lnot1 = xor i1 %lnot, true, !dbg !5253
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5253
  %conv = sext i32 %lnot.ext to i64, !dbg !5253
  %tobool = icmp ne i64 %conv, 0, !dbg !5253
  store i1 %tobool, i1* %retval, align 1, !dbg !5254
  br label %return, !dbg !5254

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %size.addr, align 8, !dbg !5255
  %6 = load i64, i64* %addr.addr, align 8, !dbg !5256
  %add = add i64 %6, %5, !dbg !5256
  store i64 %add, i64* %addr.addr, align 8, !dbg !5256
  %7 = load i64, i64* %addr.addr, align 8, !dbg !5257
  %8 = load i64, i64* %size.addr, align 8, !dbg !5257
  %cmp2 = icmp ult i64 %7, %8, !dbg !5257
  %lnot4 = xor i1 %cmp2, true, !dbg !5257
  %lnot6 = xor i1 %lnot4, true, !dbg !5257
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5257
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !5257
  %tobool9 = icmp ne i64 %conv8, 0, !dbg !5257
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !5259

if.then10:                                        ; preds = %if.end
  store i1 true, i1* %retval, align 1, !dbg !5260
  br label %return, !dbg !5260

if.end11:                                         ; preds = %if.end
  %9 = load i64, i64* %addr.addr, align 8, !dbg !5261
  %10 = load i64, i64* %limit.addr, align 8, !dbg !5261
  %cmp12 = icmp ugt i64 %9, %10, !dbg !5261
  %lnot14 = xor i1 %cmp12, true, !dbg !5261
  %lnot16 = xor i1 %lnot14, true, !dbg !5261
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !5261
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !5261
  %tobool19 = icmp ne i64 %conv18, 0, !dbg !5261
  store i1 %tobool19, i1* %retval, align 1, !dbg !5262
  br label %return, !dbg !5262

return:                                           ; preds = %if.end11, %if.then10, %if.then
  %11 = load i1, i1* %retval, align 1, !dbg !5263
  ret i1 %11, !dbg !5263
}

; Function Attrs: noredzone
declare dso_local void @pci_config_pm_runtime_get(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_user_read_config_byte(%struct.pci_dev*, i32, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: noredzone
declare dso_local i32 @pci_user_read_config_word(%struct.pci_dev*, i32, i16*) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_user_read_config_dword(%struct.pci_dev*, i32, i32*) #2

; Function Attrs: noredzone
declare dso_local void @pci_config_pm_runtime_put(%struct.pci_dev*) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @security_locked_down(i32 %what) #0 !dbg !5264 {
entry:
  %what.addr = alloca i32, align 4
  store i32 %what, i32* %what.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %what.addr, metadata !5267, metadata !DIExpression()), !dbg !5268
  ret i32 0, !dbg !5269
}

; Function Attrs: noredzone
declare dso_local i32 @pci_user_write_config_byte(%struct.pci_dev*, i32, i8 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_user_write_config_word(%struct.pci_dev*, i32, i16 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_user_write_config_dword(%struct.pci_dev*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i_size_write(%struct.inode* %inode, i64 %i_size) #0 !dbg !5270 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %i_size.addr = alloca i64, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5273, metadata !DIExpression()), !dbg !5274
  store i64 %i_size, i64* %i_size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %i_size.addr, metadata !5275, metadata !DIExpression()), !dbg !5276
  %0 = load i64, i64* %i_size.addr, align 8, !dbg !5277
  %1 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !5278
  %i_size1 = getelementptr inbounds %struct.inode, %struct.inode* %1, i32 0, i32 11, !dbg !5279
  store i64 %0, i64* %i_size1, align 8, !dbg !5280
  ret void, !dbg !5281
}

; Function Attrs: noredzone
declare dso_local i64 @fixed_size_llseek(%struct.file*, i64, i32, i64) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @pat_enabled() #2

; Function Attrs: noredzone
declare dso_local i32 @pci_mmap_fits(%struct.pci_dev*, i32, %struct.vm_area_struct*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @pci_mmap_page_range(%struct.pci_dev*, i32, %struct.vm_area_struct*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local %struct.proc_dir_entry* @proc_create_seq_private(i8*, i16 zeroext, %struct.proc_dir_entry*, %struct.seq_operations*, i32, i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, %struct.pci_dev*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_seq_start(%struct.seq_file* %m, i64* %pos) #0 !dbg !5282 {
entry:
  %m.addr = alloca %struct.seq_file*, align 8
  %pos.addr = alloca i64*, align 8
  %dev = alloca %struct.pci_dev*, align 8
  %n = alloca i64, align 8
  store %struct.seq_file* %m, %struct.seq_file** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_file** %m.addr, metadata !5283, metadata !DIExpression()), !dbg !5284
  store i64* %pos, i64** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %pos.addr, metadata !5285, metadata !DIExpression()), !dbg !5286
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !5287, metadata !DIExpression()), !dbg !5288
  store %struct.pci_dev* null, %struct.pci_dev** %dev, align 8, !dbg !5288
  call void @llvm.dbg.declare(metadata i64* %n, metadata !5289, metadata !DIExpression()), !dbg !5290
  %0 = load i64*, i64** %pos.addr, align 8, !dbg !5291
  %1 = load i64, i64* %0, align 8, !dbg !5292
  store i64 %1, i64* %n, align 8, !dbg !5290
  br label %while.cond, !dbg !5293

while.cond:                                       ; preds = %if.end, %entry
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5293
  %call = call %struct.pci_dev* @pci_get_device(i32 -1, i32 -1, %struct.pci_dev* %2) #9, !dbg !5293
  store %struct.pci_dev* %call, %struct.pci_dev** %dev, align 8, !dbg !5293
  %cmp = icmp ne %struct.pci_dev* %call, null, !dbg !5293
  br i1 %cmp, label %while.body, label %while.end, !dbg !5293

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %n, align 8, !dbg !5294
  %dec = add i64 %3, -1, !dbg !5294
  store i64 %dec, i64* %n, align 8, !dbg !5294
  %tobool = icmp ne i64 %3, 0, !dbg !5294
  br i1 %tobool, label %if.end, label %if.then, !dbg !5297

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !5298

if.end:                                           ; preds = %while.body
  br label %while.cond, !dbg !5293, !llvm.loop !5299

while.end:                                        ; preds = %if.then, %while.cond
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5301
  %5 = bitcast %struct.pci_dev* %4 to i8*, !dbg !5301
  ret i8* %5, !dbg !5302
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @pci_seq_stop(%struct.seq_file* %m, i8* %v) #0 !dbg !5303 {
entry:
  %m.addr = alloca %struct.seq_file*, align 8
  %v.addr = alloca i8*, align 8
  %dev = alloca %struct.pci_dev*, align 8
  store %struct.seq_file* %m, %struct.seq_file** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_file** %m.addr, metadata !5304, metadata !DIExpression()), !dbg !5305
  store i8* %v, i8** %v.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr, metadata !5306, metadata !DIExpression()), !dbg !5307
  %0 = load i8*, i8** %v.addr, align 8, !dbg !5308
  %tobool = icmp ne i8* %0, null, !dbg !5308
  br i1 %tobool, label %if.then, label %if.end, !dbg !5310

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !5311, metadata !DIExpression()), !dbg !5313
  %1 = load i8*, i8** %v.addr, align 8, !dbg !5314
  %2 = bitcast i8* %1 to %struct.pci_dev*, !dbg !5314
  store %struct.pci_dev* %2, %struct.pci_dev** %dev, align 8, !dbg !5313
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5315
  call void @pci_dev_put(%struct.pci_dev* %3) #9, !dbg !5316
  br label %if.end, !dbg !5317

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5318
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @pci_seq_next(%struct.seq_file* %m, i8* %v, i64* %pos) #0 !dbg !5319 {
entry:
  %m.addr = alloca %struct.seq_file*, align 8
  %v.addr = alloca i8*, align 8
  %pos.addr = alloca i64*, align 8
  %dev = alloca %struct.pci_dev*, align 8
  store %struct.seq_file* %m, %struct.seq_file** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_file** %m.addr, metadata !5320, metadata !DIExpression()), !dbg !5321
  store i8* %v, i8** %v.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr, metadata !5322, metadata !DIExpression()), !dbg !5323
  store i64* %pos, i64** %pos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %pos.addr, metadata !5324, metadata !DIExpression()), !dbg !5325
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !5326, metadata !DIExpression()), !dbg !5327
  %0 = load i8*, i8** %v.addr, align 8, !dbg !5328
  %1 = bitcast i8* %0 to %struct.pci_dev*, !dbg !5328
  store %struct.pci_dev* %1, %struct.pci_dev** %dev, align 8, !dbg !5327
  %2 = load i64*, i64** %pos.addr, align 8, !dbg !5329
  %3 = load i64, i64* %2, align 8, !dbg !5330
  %inc = add i64 %3, 1, !dbg !5330
  store i64 %inc, i64* %2, align 8, !dbg !5330
  %4 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5331
  %call = call %struct.pci_dev* @pci_get_device(i32 -1, i32 -1, %struct.pci_dev* %4) #9, !dbg !5332
  store %struct.pci_dev* %call, %struct.pci_dev** %dev, align 8, !dbg !5333
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5334
  %6 = bitcast %struct.pci_dev* %5 to i8*, !dbg !5334
  ret i8* %6, !dbg !5335
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @show_device(%struct.seq_file* %m, i8* %v) #0 !dbg !5336 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca %struct.seq_file*, align 8
  %v.addr = alloca i8*, align 8
  %dev = alloca %struct.pci_dev*, align 8
  %drv = alloca %struct.pci_driver*, align 8
  %i = alloca i32, align 4
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %start12 = alloca i64, align 8
  %end13 = alloca i64, align 8
  store %struct.seq_file* %m, %struct.seq_file** %m.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.seq_file** %m.addr, metadata !5337, metadata !DIExpression()), !dbg !5338
  store i8* %v, i8** %v.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr, metadata !5339, metadata !DIExpression()), !dbg !5340
  call void @llvm.dbg.declare(metadata %struct.pci_dev** %dev, metadata !5341, metadata !DIExpression()), !dbg !5344
  %0 = load i8*, i8** %v.addr, align 8, !dbg !5345
  %1 = bitcast i8* %0 to %struct.pci_dev*, !dbg !5345
  store %struct.pci_dev* %1, %struct.pci_dev** %dev, align 8, !dbg !5344
  call void @llvm.dbg.declare(metadata %struct.pci_driver** %drv, metadata !5346, metadata !DIExpression()), !dbg !5349
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5350, metadata !DIExpression()), !dbg !5351
  %2 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5352
  %cmp = icmp eq %struct.pci_dev* %2, null, !dbg !5354
  br i1 %cmp, label %if.then, label %if.end, !dbg !5355

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !5356
  br label %return, !dbg !5356

if.end:                                           ; preds = %entry
  %3 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5357
  %call = call %struct.pci_driver* @pci_dev_driver(%struct.pci_dev* %3) #9, !dbg !5358
  store %struct.pci_driver* %call, %struct.pci_driver** %drv, align 8, !dbg !5359
  %4 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !5360
  %5 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5361
  %bus = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 1, !dbg !5362
  %6 = load %struct.pci_bus*, %struct.pci_bus** %bus, align 8, !dbg !5362
  %number = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %6, i32 0, i32 13, !dbg !5363
  %7 = load i8, i8* %number, align 8, !dbg !5363
  %conv = zext i8 %7 to i32, !dbg !5361
  %8 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5364
  %devfn = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 6, !dbg !5365
  %9 = load i32, i32* %devfn, align 8, !dbg !5365
  %10 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5366
  %vendor = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %10, i32 0, i32 7, !dbg !5367
  %11 = load i16, i16* %vendor, align 4, !dbg !5367
  %conv1 = zext i16 %11 to i32, !dbg !5366
  %12 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5368
  %device = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 8, !dbg !5369
  %13 = load i16, i16* %device, align 2, !dbg !5369
  %conv2 = zext i16 %13 to i32, !dbg !5368
  %14 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5370
  %irq = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 43, !dbg !5371
  %15 = load i32, i32* %irq, align 4, !dbg !5371
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %conv, i32 %9, i32 %conv1, i32 %conv2, i32 %15) #9, !dbg !5372
  store i32 0, i32* %i, align 4, !dbg !5373
  br label %for.cond, !dbg !5375

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load i32, i32* %i, align 4, !dbg !5376
  %cmp3 = icmp sle i32 %16, 6, !dbg !5378
  br i1 %cmp3, label %for.body, label %for.end, !dbg !5379

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i64* %start, metadata !5380, metadata !DIExpression()), !dbg !5382
  call void @llvm.dbg.declare(metadata i64* %end, metadata !5383, metadata !DIExpression()), !dbg !5384
  %17 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5385
  %18 = load i32, i32* %i, align 4, !dbg !5386
  %19 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5387
  %resource = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 44, !dbg !5388
  %20 = load i32, i32* %i, align 4, !dbg !5389
  %idxprom = sext i32 %20 to i64, !dbg !5387
  %arrayidx = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource, i64 0, i64 %idxprom, !dbg !5387
  call void @pci_resource_to_user(%struct.pci_dev* %17, i32 %18, %struct.resource* %arrayidx, i64* %start, i64* %end) #9, !dbg !5390
  %21 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !5391
  %22 = load i64, i64* %start, align 8, !dbg !5392
  %23 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5393
  %resource5 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 44, !dbg !5394
  %24 = load i32, i32* %i, align 4, !dbg !5395
  %idxprom6 = sext i32 %24 to i64, !dbg !5393
  %arrayidx7 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource5, i64 0, i64 %idxprom6, !dbg !5393
  %flags = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx7, i32 0, i32 3, !dbg !5396
  %25 = load i64, i64* %flags, align 8, !dbg !5396
  %and = and i64 %25, 15, !dbg !5397
  %or = or i64 %22, %and, !dbg !5398
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 %or) #9, !dbg !5399
  br label %for.inc, !dbg !5400

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %i, align 4, !dbg !5401
  %inc = add i32 %26, 1, !dbg !5401
  store i32 %inc, i32* %i, align 4, !dbg !5401
  br label %for.cond, !dbg !5402, !llvm.loop !5403

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !5405
  br label %for.cond8, !dbg !5407

for.cond8:                                        ; preds = %for.inc27, %for.end
  %27 = load i32, i32* %i, align 4, !dbg !5408
  %cmp9 = icmp sle i32 %27, 6, !dbg !5410
  br i1 %cmp9, label %for.body11, label %for.end29, !dbg !5411

for.body11:                                       ; preds = %for.cond8
  call void @llvm.dbg.declare(metadata i64* %start12, metadata !5412, metadata !DIExpression()), !dbg !5414
  call void @llvm.dbg.declare(metadata i64* %end13, metadata !5415, metadata !DIExpression()), !dbg !5416
  %28 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5417
  %29 = load i32, i32* %i, align 4, !dbg !5418
  %30 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5419
  %resource14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %30, i32 0, i32 44, !dbg !5420
  %31 = load i32, i32* %i, align 4, !dbg !5421
  %idxprom15 = sext i32 %31 to i64, !dbg !5419
  %arrayidx16 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource14, i64 0, i64 %idxprom15, !dbg !5419
  call void @pci_resource_to_user(%struct.pci_dev* %28, i32 %29, %struct.resource* %arrayidx16, i64* %start12, i64* %end13) #9, !dbg !5422
  %32 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !5423
  %33 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5424
  %resource17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 44, !dbg !5425
  %34 = load i32, i32* %i, align 4, !dbg !5426
  %idxprom18 = sext i32 %34 to i64, !dbg !5424
  %arrayidx19 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource17, i64 0, i64 %idxprom18, !dbg !5424
  %start20 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx19, i32 0, i32 0, !dbg !5427
  %35 = load i64, i64* %start20, align 8, !dbg !5427
  %36 = load %struct.pci_dev*, %struct.pci_dev** %dev, align 8, !dbg !5428
  %resource21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 44, !dbg !5429
  %37 = load i32, i32* %i, align 4, !dbg !5430
  %idxprom22 = sext i32 %37 to i64, !dbg !5428
  %arrayidx23 = getelementptr [17 x %struct.resource], [17 x %struct.resource]* %resource21, i64 0, i64 %idxprom22, !dbg !5428
  %end24 = getelementptr inbounds %struct.resource, %struct.resource* %arrayidx23, i32 0, i32 1, !dbg !5431
  %38 = load i64, i64* %end24, align 8, !dbg !5431
  %cmp25 = icmp ult i64 %35, %38, !dbg !5432
  br i1 %cmp25, label %cond.true, label %cond.false, !dbg !5424

cond.true:                                        ; preds = %for.body11
  %39 = load i64, i64* %end13, align 8, !dbg !5433
  %40 = load i64, i64* %start12, align 8, !dbg !5434
  %sub = sub i64 %39, %40, !dbg !5435
  %add = add i64 %sub, 1, !dbg !5436
  br label %cond.end, !dbg !5424

cond.false:                                       ; preds = %for.body11
  br label %cond.end, !dbg !5424

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %add, %cond.true ], [ 0, %cond.false ], !dbg !5424
  call void (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 %cond) #9, !dbg !5437
  br label %for.inc27, !dbg !5438

for.inc27:                                        ; preds = %cond.end
  %41 = load i32, i32* %i, align 4, !dbg !5439
  %inc28 = add i32 %41, 1, !dbg !5439
  store i32 %inc28, i32* %i, align 4, !dbg !5439
  br label %for.cond8, !dbg !5440, !llvm.loop !5441

for.end29:                                        ; preds = %for.cond8
  %42 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !5443
  call void @seq_putc(%struct.seq_file* %42, i8 signext 9) #9, !dbg !5444
  %43 = load %struct.pci_driver*, %struct.pci_driver** %drv, align 8, !dbg !5445
  %tobool = icmp ne %struct.pci_driver* %43, null, !dbg !5445
  br i1 %tobool, label %if.then30, label %if.end31, !dbg !5447

if.then30:                                        ; preds = %for.end29
  %44 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !5448
  %45 = load %struct.pci_driver*, %struct.pci_driver** %drv, align 8, !dbg !5449
  %name = getelementptr inbounds %struct.pci_driver, %struct.pci_driver* %45, i32 0, i32 1, !dbg !5450
  %46 = load i8*, i8** %name, align 8, !dbg !5450
  call void @seq_puts(%struct.seq_file* %44, i8* %46) #9, !dbg !5451
  br label %if.end31, !dbg !5451

if.end31:                                         ; preds = %if.then30, %for.end29
  %47 = load %struct.seq_file*, %struct.seq_file** %m.addr, align 8, !dbg !5452
  call void @seq_putc(%struct.seq_file* %47, i8 signext 10) #9, !dbg !5453
  store i32 0, i32* %retval, align 4, !dbg !5454
  br label %return, !dbg !5454

return:                                           ; preds = %if.end31, %if.then
  %48 = load i32, i32* %retval, align 4, !dbg !5455
  ret i32 %48, !dbg !5455
}

; Function Attrs: noredzone
declare dso_local void @pci_dev_put(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local %struct.pci_driver* @pci_dev_driver(%struct.pci_dev*) #2

; Function Attrs: noredzone
declare dso_local void @seq_printf(%struct.seq_file*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @pci_resource_to_user(%struct.pci_dev*, i32, %struct.resource*, i64*, i64*) #2

; Function Attrs: noredzone
declare dso_local void @seq_putc(%struct.seq_file*, i8 signext) #2

; Function Attrs: noredzone
declare dso_local void @seq_puts(%struct.seq_file*, i8*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { noredzone }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!3093}
!llvm.module.flags = !{!3094, !3095, !3096, !3097}
!llvm.ident = !{!3098}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "proc_initialized", scope: !2, file: !3, line: 20, type: !190, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !153, globals: !171, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pci/proc.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !98, !105, !110, !137, !142}
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
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci_mmap_state", file: !94, line: 83, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/pci.h", directory: "/home/lizy2001/genbc/linux")
!95 = !{!96, !97}
!96 = !DIEnumerator(name: "pci_mmap_io", value: 0, isUnsigned: true)
!97 = !DIEnumerator(name: "pci_mmap_mem", value: 1, isUnsigned: true)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !99, line: 305, baseType: !7, size: 32, elements: !100)
!99 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !102, !103, !104}
!101 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!103 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!104 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 10, baseType: !7, size: 32, elements: !107)
!106 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!107 = !{!108, !109}
!108 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!109 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdown_reason", file: !111, line: 106, baseType: !7, size: 32, elements: !112)
!111 = !DIFile(filename: "./include/linux/security.h", directory: "/home/lizy2001/genbc/linux")
!112 = !{!113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136}
!113 = !DIEnumerator(name: "LOCKDOWN_NONE", value: 0, isUnsigned: true)
!114 = !DIEnumerator(name: "LOCKDOWN_MODULE_SIGNATURE", value: 1, isUnsigned: true)
!115 = !DIEnumerator(name: "LOCKDOWN_DEV_MEM", value: 2, isUnsigned: true)
!116 = !DIEnumerator(name: "LOCKDOWN_EFI_TEST", value: 3, isUnsigned: true)
!117 = !DIEnumerator(name: "LOCKDOWN_KEXEC", value: 4, isUnsigned: true)
!118 = !DIEnumerator(name: "LOCKDOWN_HIBERNATION", value: 5, isUnsigned: true)
!119 = !DIEnumerator(name: "LOCKDOWN_PCI_ACCESS", value: 6, isUnsigned: true)
!120 = !DIEnumerator(name: "LOCKDOWN_IOPORT", value: 7, isUnsigned: true)
!121 = !DIEnumerator(name: "LOCKDOWN_MSR", value: 8, isUnsigned: true)
!122 = !DIEnumerator(name: "LOCKDOWN_ACPI_TABLES", value: 9, isUnsigned: true)
!123 = !DIEnumerator(name: "LOCKDOWN_PCMCIA_CIS", value: 10, isUnsigned: true)
!124 = !DIEnumerator(name: "LOCKDOWN_TIOCSSERIAL", value: 11, isUnsigned: true)
!125 = !DIEnumerator(name: "LOCKDOWN_MODULE_PARAMETERS", value: 12, isUnsigned: true)
!126 = !DIEnumerator(name: "LOCKDOWN_MMIOTRACE", value: 13, isUnsigned: true)
!127 = !DIEnumerator(name: "LOCKDOWN_DEBUGFS", value: 14, isUnsigned: true)
!128 = !DIEnumerator(name: "LOCKDOWN_XMON_WR", value: 15, isUnsigned: true)
!129 = !DIEnumerator(name: "LOCKDOWN_INTEGRITY_MAX", value: 16, isUnsigned: true)
!130 = !DIEnumerator(name: "LOCKDOWN_KCORE", value: 17, isUnsigned: true)
!131 = !DIEnumerator(name: "LOCKDOWN_KPROBES", value: 18, isUnsigned: true)
!132 = !DIEnumerator(name: "LOCKDOWN_BPF_READ", value: 19, isUnsigned: true)
!133 = !DIEnumerator(name: "LOCKDOWN_PERF", value: 20, isUnsigned: true)
!134 = !DIEnumerator(name: "LOCKDOWN_TRACEFS", value: 21, isUnsigned: true)
!135 = !DIEnumerator(name: "LOCKDOWN_XMON_RW", value: 22, isUnsigned: true)
!136 = !DIEnumerator(name: "LOCKDOWN_CONFIDENTIALITY_MAX", value: 23, isUnsigned: true)
!137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pci_mmap_api", file: !138, line: 35, baseType: !7, size: 32, elements: !139)
!138 = !DIFile(filename: "drivers/pci/pci.h", directory: "/home/lizy2001/genbc/linux")
!139 = !{!140, !141}
!140 = !DIEnumerator(name: "PCI_MMAP_SYSFS", value: 0, isUnsigned: true)
!141 = !DIEnumerator(name: "PCI_MMAP_PROCFS", value: 1, isUnsigned: true)
!142 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 89, baseType: !7, size: 32, elements: !143)
!143 = !{!144, !145, !146, !147, !148, !149, !150, !151, !152}
!144 = !DIEnumerator(name: "PCI_STD_RESOURCES", value: 0, isUnsigned: true)
!145 = !DIEnumerator(name: "PCI_STD_RESOURCE_END", value: 5, isUnsigned: true)
!146 = !DIEnumerator(name: "PCI_ROM_RESOURCE", value: 6, isUnsigned: true)
!147 = !DIEnumerator(name: "PCI_IOV_RESOURCES", value: 7, isUnsigned: true)
!148 = !DIEnumerator(name: "PCI_IOV_RESOURCE_END", value: 12, isUnsigned: true)
!149 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCES", value: 13, isUnsigned: true)
!150 = !DIEnumerator(name: "PCI_BRIDGE_RESOURCE_END", value: 16, isUnsigned: true)
!151 = !DIEnumerator(name: "PCI_NUM_RESOURCES", value: 17, isUnsigned: true)
!152 = !DIEnumerator(name: "DEVICE_COUNT_RESOURCE", value: 17, isUnsigned: true)
!153 = !{!154, !156, !157, !158, !159, !161, !164, !165, !166, !167, !169, !170}
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !155, line: 148, baseType: !7)
!155 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!157 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !160, line: 29, baseType: !161)
!160 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !162, line: 24, baseType: !163)
!162 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!163 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !160, line: 31, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !162, line: 27, baseType: !7)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!170 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!171 = !{!172, !0, !174, !179, !3091}
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pci_proc_init236", scope: !2, file: !3, line: 462, type: !156, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "proc_bus_pci_dir", scope: !2, file: !3, line: 403, type: !176, isLocal: true, isDefinition: true)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !178, line: 123, flags: DIFlagFwdDecl)
!178 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "proc_bus_pci_ops", scope: !2, file: !3, line: 309, type: !181, isLocal: true, isDefinition: true)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ops", file: !183, line: 29, size: 704, elements: !184)
!183 = !DIFile(filename: "./include/linux/proc_fs.h", directory: "/home/lizy2001/genbc/linux")
!184 = !{!185, !186, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "proc_flags", scope: !182, file: !183, line: 30, baseType: !7, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "proc_open", scope: !182, file: !183, line: 31, baseType: !187, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!190, !191, !585}
!190 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !193)
!193 = !{!194, !196, !197, !206, !213, !214, !3014, !3015, !3016, !3017, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3040, !3041, !3042, !3047, !3048, !3049, !3050, !3051, !3052, !3053, !3058, !3066, !3067, !3068, !3078, !3079, !3080, !3081}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !192, file: !44, line: 611, baseType: !195, size: 16)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !155, line: 19, baseType: !163)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !192, file: !44, line: 612, baseType: !163, size: 16, offset: 16)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !192, file: !44, line: 613, baseType: !198, size: 32, offset: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !199, line: 23, baseType: !200)
!199 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 21, size: 32, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !200, file: !199, line: 22, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !155, line: 32, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !205, line: 49, baseType: !7)
!205 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!206 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !192, file: !44, line: 614, baseType: !207, size: 32, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !199, line: 28, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 26, size: 32, elements: !209)
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !208, file: !199, line: 27, baseType: !211, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !155, line: 33, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !205, line: 50, baseType: !7)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !192, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !192, file: !44, line: 622, baseType: !215, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !218)
!218 = !{!219, !2888, !2901, !2905, !2911, !2915, !2919, !2923, !2927, !2931, !2935, !2936, !2940, !2944, !2964, !2990, !2994, !3000, !3005, !3009, !3010}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !217, file: !44, line: 1865, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !191, !223, !7}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !225, line: 89, size: 1536, elements: !226)
!225 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!226 = !{!227, !228, !238, !246, !247, !267, !268, !272, !299, !370, !2872, !2873, !2874, !2880, !2881, !2882}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !224, file: !225, line: 91, baseType: !7, size: 32)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !224, file: !225, line: 92, baseType: !229, size: 32, offset: 32)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !230, line: 277, baseType: !231)
!230 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !230, line: 277, size: 32, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !231, file: !230, line: 277, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !230, line: 70, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !230, line: 65, size: 32, elements: !236)
!236 = !{!237}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !235, file: !230, line: 66, baseType: !7, size: 32)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !224, file: !225, line: 93, baseType: !239, size: 128, offset: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !240, line: 38, size: 128, elements: !241)
!240 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!241 = !{!242, !244}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !240, line: 39, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !239, file: !240, line: 39, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !224, file: !225, line: 94, baseType: !223, size: 64, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !224, file: !225, line: 95, baseType: !248, size: 128, offset: 256)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !225, line: 47, size: 128, elements: !249)
!249 = !{!250, !263}
!250 = !DIDerivedType(tag: DW_TAG_member, scope: !248, file: !225, line: 48, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !225, line: 48, size: 64, elements: !252)
!252 = !{!253, !260}
!253 = !DIDerivedType(tag: DW_TAG_member, scope: !251, file: !225, line: 49, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !251, file: !225, line: 49, size: 64, elements: !255)
!255 = !{!256, !259}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !254, file: !225, line: 50, baseType: !257, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !258, line: 21, baseType: !166)
!258 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!259 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !254, file: !225, line: 50, baseType: !257, size: 32, offset: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !251, file: !225, line: 52, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !258, line: 23, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !162, line: 31, baseType: !170)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !248, file: !225, line: 54, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !224, file: !225, line: 96, baseType: !191, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !224, file: !225, line: 98, baseType: !269, size: 256, offset: 448)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 256, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !224, file: !225, line: 101, baseType: !273, size: 32, offset: 704)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !274, line: 25, size: 32, elements: !275)
!274 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, scope: !273, file: !274, line: 26, baseType: !277, size: 32)
!277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !273, file: !274, line: 26, size: 32, elements: !278)
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, scope: !277, file: !274, line: 30, baseType: !280, size: 32)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !277, file: !274, line: 30, size: 32, elements: !281)
!281 = !{!282, !298}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !280, file: !274, line: 31, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !284, line: 83, baseType: !285)
!284 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !284, line: 71, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, scope: !285, file: !284, line: 72, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !285, file: !284, line: 72, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !288, file: !284, line: 73, baseType: !291)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !284, line: 20, elements: !292)
!292 = !{!293}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !291, file: !284, line: 21, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !295, line: 25, baseType: !296)
!295 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 25, elements: !297)
!297 = !{}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !280, file: !274, line: 32, baseType: !190, size: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !224, file: !225, line: 102, baseType: !300, size: 64, offset: 768)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !225, line: 135, size: 1024, align: 512, elements: !303)
!303 = !{!304, !308, !309, !316, !322, !326, !330, !334, !335, !339, !344, !356, !364}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !302, file: !225, line: 136, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!190, !223, !7}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !302, file: !225, line: 137, baseType: !305, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !302, file: !225, line: 138, baseType: !310, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!190, !313, !315}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !302, file: !225, line: 139, baseType: !317, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!190, !313, !7, !167, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !302, file: !225, line: 141, baseType: !323, size: 64, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!190, !313}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !302, file: !225, line: 142, baseType: !327, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!190, !223}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !302, file: !225, line: 143, baseType: !331, size: 64, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !223}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !302, file: !225, line: 144, baseType: !331, size: 64, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !302, file: !225, line: 145, baseType: !336, size: 64, offset: 512)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !223, !191}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !302, file: !225, line: 146, baseType: !340, size: 64, offset: 576)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!343, !223, !343, !190}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !302, file: !225, line: 147, baseType: !345, size: 64, offset: 640)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!348, !350}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !225, line: 18, flags: DIFlagFwdDecl)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !352, line: 8, size: 128, elements: !353)
!352 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!353 = !{!354, !355}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !351, file: !352, line: 9, baseType: !348, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !351, file: !352, line: 10, baseType: !223, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !302, file: !225, line: 148, baseType: !357, size: 64, offset: 704)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!190, !360, !362}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !155, line: 30, baseType: !363)
!363 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !302, file: !225, line: 149, baseType: !365, size: 64, offset: 768)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{!223, !223, !368}
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !224, file: !225, line: 103, baseType: !371, size: 64, offset: 832)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !373)
!373 = !{!374, !380, !383, !384, !385, !389, !441, !2538, !2620, !2703, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2719, !2723, !2724, !2727, !2728, !2731, !2732, !2733, !2774, !2801, !2802, !2803, !2804, !2805, !2806, !2809, !2811, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2839, !2840, !2841, !2842, !2843, !2846, !2847, !2848, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !372, file: !44, line: 1417, baseType: !375, size: 128)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !155, line: 178, size: 128, elements: !376)
!376 = !{!377, !379}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !155, line: 179, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !375, file: !155, line: 179, baseType: !378, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !372, file: !44, line: 1418, baseType: !381, size: 32, offset: 128)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !155, line: 16, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !155, line: 13, baseType: !257)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !372, file: !44, line: 1419, baseType: !266, size: 8, offset: 160)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !372, file: !44, line: 1420, baseType: !157, size: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !372, file: !44, line: 1421, baseType: !386, size: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !155, line: 46, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !205, line: 88, baseType: !388)
!388 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !372, file: !44, line: 1422, baseType: !390, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !392)
!392 = !{!393, !394, !395, !402, !406, !410, !414, !418, !419, !429, !432, !433, !434, !438, !439, !440}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !391, file: !44, line: 2229, baseType: !167, size: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !391, file: !44, line: 2230, baseType: !190, size: 32, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !391, file: !44, line: 2238, baseType: !396, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!190, !399}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !401, line: 28, flags: DIFlagFwdDecl)
!401 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!402 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !391, file: !44, line: 2239, baseType: !403, size: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !391, file: !44, line: 2240, baseType: !407, size: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!223, !390, !190, !167, !156}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !391, file: !44, line: 2242, baseType: !411, size: 64, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !371}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !391, file: !44, line: 2243, baseType: !415, size: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !417, line: 189, flags: DIFlagFwdDecl)
!417 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/lizy2001/genbc/linux")
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !391, file: !44, line: 2244, baseType: !390, size: 64, offset: 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !391, file: !44, line: 2245, baseType: !420, size: 64, offset: 512)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !155, line: 182, size: 64, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !420, file: !155, line: 183, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !155, line: 186, size: 128, elements: !425)
!425 = !{!426, !427}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !424, file: !155, line: 187, baseType: !423, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !424, file: !155, line: 187, baseType: !428, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !391, file: !44, line: 2247, baseType: !430, offset: 576)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !431, line: 187, elements: !297)
!431 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!432 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !391, file: !44, line: 2248, baseType: !430, offset: 576)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !391, file: !44, line: 2249, baseType: !430, offset: 576)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !391, file: !44, line: 2250, baseType: !435, offset: 576)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 3)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !391, file: !44, line: 2252, baseType: !430, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !391, file: !44, line: 2253, baseType: !430, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !391, file: !44, line: 2254, baseType: !430, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !372, file: !44, line: 1423, baseType: !442, size: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !445)
!445 = !{!446, !450, !454, !455, !459, !465, !469, !470, !471, !475, !479, !480, !481, !482, !488, !493, !494, !2515, !2516, !2517, !2518, !2522, !2537}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !444, file: !44, line: 1936, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!191, !371}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !444, file: !44, line: 1937, baseType: !451, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{null, !191}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !444, file: !44, line: 1938, baseType: !451, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !444, file: !44, line: 1940, baseType: !456, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !191, !190}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !444, file: !44, line: 1941, baseType: !460, size: 64, offset: 256)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!190, !191, !463}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 40, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !444, file: !44, line: 1942, baseType: !466, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!190, !191}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !444, file: !44, line: 1943, baseType: !451, size: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !444, file: !44, line: 1944, baseType: !411, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !444, file: !44, line: 1945, baseType: !472, size: 64, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!190, !371, !190}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !444, file: !44, line: 1946, baseType: !476, size: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!190, !371}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !444, file: !44, line: 1947, baseType: !476, size: 64, offset: 640)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !444, file: !44, line: 1948, baseType: !476, size: 64, offset: 704)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !444, file: !44, line: 1949, baseType: !476, size: 64, offset: 768)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !444, file: !44, line: 1950, baseType: !483, size: 64, offset: 832)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!190, !223, !486}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !444, file: !44, line: 1951, baseType: !489, size: 64, offset: 896)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!190, !371, !492, !343}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !444, file: !44, line: 1952, baseType: !411, size: 64, offset: 960)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !444, file: !44, line: 1954, baseType: !495, size: 64, offset: 1024)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!190, !498, !223}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !500, line: 16, size: 896, elements: !501)
!500 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/lizy2001/genbc/linux")
!501 = !{!502, !503, !507, !508, !509, !510, !511, !512, !527, !549, !550, !2514}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !499, file: !500, line: 17, baseType: !343, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !499, file: !500, line: 18, baseType: !504, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !155, line: 55, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !205, line: 72, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !205, line: 16, baseType: !157)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !499, file: !500, line: 19, baseType: !504, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !499, file: !500, line: 20, baseType: !504, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !499, file: !500, line: 21, baseType: !504, size: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !499, file: !500, line: 22, baseType: !386, size: 64, offset: 320)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !499, file: !500, line: 23, baseType: !386, size: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !499, file: !500, line: 24, baseType: !513, size: 192, offset: 448)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !514, line: 53, size: 192, elements: !515)
!514 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!515 = !{!516, !525, !526}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !513, file: !514, line: 54, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !518, line: 13, baseType: !519)
!518 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !155, line: 175, baseType: !520)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !155, line: 173, size: 64, elements: !521)
!521 = !{!522}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !520, file: !155, line: 174, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !258, line: 22, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !162, line: 30, baseType: !388)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !513, file: !514, line: 55, baseType: !283, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !513, file: !514, line: 59, baseType: !375, size: 128, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !499, file: !500, line: 25, baseType: !528, size: 64, offset: 640)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !500, line: 31, size: 256, elements: !531)
!531 = !{!532, !537, !541, !545}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !530, file: !500, line: 32, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!156, !498, !536}
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !530, file: !500, line: 33, baseType: !538, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !498, !156}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !530, file: !500, line: 34, baseType: !542, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!156, !498, !156, !536}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !530, file: !500, line: 35, baseType: !546, size: 64, offset: 192)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!190, !498, !156}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !499, file: !500, line: 26, baseType: !190, size: 32, offset: 704)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !499, file: !500, line: 27, baseType: !551, size: 64, offset: 768)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !554)
!554 = !{!555, !573, !574, !575, !2480, !2481, !2482, !2483, !2484, !2486, !2487, !2488, !2497, !2498, !2507, !2508, !2509, !2510, !2511, !2512, !2513}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !553, file: !44, line: 920, baseType: !556, size: 128)
!556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !553, file: !44, line: 917, size: 128, elements: !557)
!557 = !{!558, !564}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !556, file: !44, line: 918, baseType: !559, size: 64)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !560, line: 58, size: 64, elements: !561)
!560 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !559, file: !560, line: 59, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !556, file: !44, line: 919, baseType: !565, size: 128, align: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !155, line: 216, size: 128, align: 64, elements: !566)
!566 = !{!567, !569}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !565, file: !155, line: 217, baseType: !568, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !565, file: !155, line: 218, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{null, !568}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !553, file: !44, line: 921, baseType: !351, size: 128, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !553, file: !44, line: 922, baseType: !191, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !553, file: !44, line: 923, baseType: !576, size: 64, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !579)
!579 = !{!580, !581, !586, !594, !598, !625, !626, !630, !643, !644, !651, !655, !656, !2316, !2317, !2318, !2323, !2324, !2328, !2332, !2440, !2444, !2445, !2449, !2450, !2454, !2458, !2463, !2467, !2471, !2475, !2479}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !578, file: !44, line: 1823, baseType: !415, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !578, file: !44, line: 1824, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!386, !585, !386, !190}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !578, file: !44, line: 1825, baseType: !587, size: 64, offset: 128)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!590, !585, !343, !504, !536}
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !155, line: 60, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !205, line: 73, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !205, line: 15, baseType: !593)
!593 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !578, file: !44, line: 1826, baseType: !595, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!590, !585, !167, !504, !536}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !578, file: !44, line: 1827, baseType: !599, size: 64, offset: 256)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{!590, !602, !623}
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !604)
!604 = !{!605, !606, !607, !611, !612, !613, !615, !616}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !603, file: !44, line: 321, baseType: !585, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !603, file: !44, line: 326, baseType: !386, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !603, file: !44, line: 327, baseType: !608, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !602, !593, !593}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !603, file: !44, line: 328, baseType: !156, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !603, file: !44, line: 329, baseType: !190, size: 32, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !603, file: !44, line: 330, baseType: !614, size: 16, offset: 288)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !258, line: 19, baseType: !161)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !603, file: !44, line: 331, baseType: !614, size: 16, offset: 304)
!616 = !DIDerivedType(tag: DW_TAG_member, scope: !603, file: !44, line: 332, baseType: !617, size: 64, offset: 320)
!617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !603, file: !44, line: 332, size: 64, elements: !618)
!618 = !{!619, !620}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !617, file: !44, line: 333, baseType: !7, size: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !617, file: !44, line: 334, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !578, file: !44, line: 1828, baseType: !599, size: 64, offset: 320)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !578, file: !44, line: 1829, baseType: !627, size: 64, offset: 384)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!190, !602, !362}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !578, file: !44, line: 1830, baseType: !631, size: 64, offset: 448)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!190, !585, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !636)
!636 = !{!637, !642}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !635, file: !44, line: 1777, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!190, !634, !167, !190, !386, !261, !7}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !635, file: !44, line: 1778, baseType: !386, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !578, file: !44, line: 1831, baseType: !631, size: 64, offset: 512)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !578, file: !44, line: 1832, baseType: !645, size: 64, offset: 576)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!648, !585, !649}
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !160, line: 52, baseType: !7)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !401, line: 27, flags: DIFlagFwdDecl)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !578, file: !44, line: 1833, baseType: !652, size: 64, offset: 640)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!593, !585, !7, !157}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !578, file: !44, line: 1834, baseType: !652, size: 64, offset: 704)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !578, file: !44, line: 1835, baseType: !657, size: 64, offset: 768)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!190, !585, !660}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !662, line: 305, size: 1472, elements: !663)
!662 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!663 = !{!664, !665, !666, !667, !668, !676, !677, !2249, !2255, !2256, !2261, !2262, !2265, !2310, !2311, !2312, !2313, !2314}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !661, file: !662, line: 308, baseType: !157, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !661, file: !662, line: 309, baseType: !157, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !661, file: !662, line: 313, baseType: !660, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !661, file: !662, line: 313, baseType: !660, size: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !661, file: !662, line: 315, baseType: !669, size: 192, align: 64, offset: 256)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !670, line: 24, size: 192, align: 64, elements: !671)
!670 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!671 = !{!672, !673, !675}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !669, file: !670, line: 25, baseType: !157, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !669, file: !670, line: 26, baseType: !674, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !669, file: !670, line: 27, baseType: !674, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !661, file: !662, line: 323, baseType: !157, size: 64, offset: 448)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !661, file: !662, line: 327, baseType: !678, size: 64, offset: 512)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !662, line: 388, size: 7296, elements: !680)
!680 = !{!681, !2245}
!681 = !DIDerivedType(tag: DW_TAG_member, scope: !679, file: !662, line: 389, baseType: !682, size: 7296)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !679, file: !662, line: 389, size: 7296, elements: !683)
!683 = !{!684, !685, !689, !690, !694, !695, !696, !697, !698, !707, !712, !713, !714, !715, !716, !717, !718, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !753, !761, !764, !804, !805, !2229, !2230, !2233, !2234, !2235, !2238, !2239, !2240, !2243, !2244}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !682, file: !662, line: 390, baseType: !660, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !682, file: !662, line: 391, baseType: !686, size: 64, offset: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !670, line: 31, size: 64, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !686, file: !670, line: 32, baseType: !674, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !682, file: !662, line: 392, baseType: !261, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !682, file: !662, line: 394, baseType: !691, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!157, !585, !157, !157, !157, !157}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !682, file: !662, line: 398, baseType: !157, size: 64, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !682, file: !662, line: 399, baseType: !157, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !682, file: !662, line: 405, baseType: !157, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !682, file: !662, line: 406, baseType: !157, size: 64, offset: 448)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !682, file: !662, line: 407, baseType: !699, size: 64, offset: 512)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !701, line: 286, baseType: !702)
!701 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !701, line: 286, size: 64, elements: !703)
!703 = !{!704}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !702, file: !701, line: 286, baseType: !705, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !706, line: 18, baseType: !157)
!706 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!707 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !682, file: !662, line: 416, baseType: !708, size: 32, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !155, line: 168, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !155, line: 166, size: 32, elements: !710)
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !709, file: !155, line: 167, baseType: !190, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !682, file: !662, line: 428, baseType: !708, size: 32, offset: 608)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !682, file: !662, line: 437, baseType: !708, size: 32, offset: 640)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !682, file: !662, line: 447, baseType: !708, size: 32, offset: 672)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !682, file: !662, line: 450, baseType: !517, size: 64, offset: 704)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !682, file: !662, line: 452, baseType: !190, size: 32, offset: 768)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !682, file: !662, line: 454, baseType: !283, offset: 800)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !682, file: !662, line: 457, baseType: !719, size: 256, offset: 832)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !720, line: 35, size: 256, elements: !721)
!720 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!721 = !{!722, !723, !724, !726}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !719, file: !720, line: 36, baseType: !517, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !719, file: !720, line: 42, baseType: !517, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !719, file: !720, line: 46, baseType: !725, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !284, line: 29, baseType: !291)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !719, file: !720, line: 47, baseType: !375, size: 128, offset: 128)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !682, file: !662, line: 459, baseType: !375, size: 128, offset: 1088)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !682, file: !662, line: 466, baseType: !157, size: 64, offset: 1216)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !682, file: !662, line: 467, baseType: !157, size: 64, offset: 1280)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !682, file: !662, line: 469, baseType: !157, size: 64, offset: 1344)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !682, file: !662, line: 470, baseType: !157, size: 64, offset: 1408)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !682, file: !662, line: 471, baseType: !519, size: 64, offset: 1472)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !682, file: !662, line: 472, baseType: !157, size: 64, offset: 1536)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !682, file: !662, line: 473, baseType: !157, size: 64, offset: 1600)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !682, file: !662, line: 474, baseType: !157, size: 64, offset: 1664)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !682, file: !662, line: 475, baseType: !157, size: 64, offset: 1728)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !682, file: !662, line: 477, baseType: !283, offset: 1792)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !682, file: !662, line: 478, baseType: !157, size: 64, offset: 1792)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !682, file: !662, line: 478, baseType: !157, size: 64, offset: 1856)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !682, file: !662, line: 478, baseType: !157, size: 64, offset: 1920)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !682, file: !662, line: 478, baseType: !157, size: 64, offset: 1984)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !682, file: !662, line: 479, baseType: !157, size: 64, offset: 2048)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !682, file: !662, line: 479, baseType: !157, size: 64, offset: 2112)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !682, file: !662, line: 479, baseType: !157, size: 64, offset: 2176)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !682, file: !662, line: 480, baseType: !157, size: 64, offset: 2240)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !682, file: !662, line: 480, baseType: !157, size: 64, offset: 2304)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !682, file: !662, line: 480, baseType: !157, size: 64, offset: 2368)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !682, file: !662, line: 480, baseType: !157, size: 64, offset: 2432)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !682, file: !662, line: 482, baseType: !750, size: 2816, offset: 2496)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 2816, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: 44)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !682, file: !662, line: 488, baseType: !754, size: 256, offset: 5312)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !755, line: 60, size: 256, elements: !756)
!755 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!756 = !{!757}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !754, file: !755, line: 61, baseType: !758, size: 256)
!758 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 256, elements: !759)
!759 = !{!760}
!760 = !DISubrange(count: 4)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !682, file: !662, line: 490, baseType: !762, size: 64, offset: 5568)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !662, line: 490, flags: DIFlagFwdDecl)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !682, file: !662, line: 493, baseType: !765, size: 896, offset: 5632)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !766, line: 53, baseType: !767)
!766 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !766, line: 13, size: 896, elements: !768)
!768 = !{!769, !770, !771, !772, !775, !776, !777, !778, !798, !799, !800}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !767, file: !766, line: 18, baseType: !261, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !767, file: !766, line: 28, baseType: !519, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !767, file: !766, line: 31, baseType: !719, size: 256, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !767, file: !766, line: 32, baseType: !773, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !766, line: 32, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !767, file: !766, line: 37, baseType: !163, size: 16, offset: 448)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !767, file: !766, line: 40, baseType: !513, size: 192, offset: 512)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !767, file: !766, line: 41, baseType: !156, size: 64, offset: 704)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !767, file: !766, line: 42, baseType: !779, size: 64, offset: 768)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !782, line: 13, size: 896, elements: !783)
!782 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!783 = !{!784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !781, file: !782, line: 14, baseType: !156, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !781, file: !782, line: 15, baseType: !157, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !781, file: !782, line: 17, baseType: !157, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !781, file: !782, line: 17, baseType: !157, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !781, file: !782, line: 19, baseType: !593, size: 64, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !781, file: !782, line: 21, baseType: !593, size: 64, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !781, file: !782, line: 22, baseType: !593, size: 64, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !781, file: !782, line: 23, baseType: !593, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !781, file: !782, line: 24, baseType: !593, size: 64, offset: 512)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !781, file: !782, line: 25, baseType: !593, size: 64, offset: 576)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !781, file: !782, line: 26, baseType: !593, size: 64, offset: 640)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !781, file: !782, line: 27, baseType: !593, size: 64, offset: 704)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !781, file: !782, line: 28, baseType: !593, size: 64, offset: 768)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !781, file: !782, line: 29, baseType: !593, size: 64, offset: 832)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !767, file: !766, line: 44, baseType: !708, size: 32, offset: 832)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !767, file: !766, line: 50, baseType: !614, size: 16, offset: 864)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !767, file: !766, line: 51, baseType: !801, size: 16, offset: 880)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !258, line: 18, baseType: !802)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !162, line: 23, baseType: !803)
!803 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !682, file: !662, line: 495, baseType: !157, size: 64, offset: 6528)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !682, file: !662, line: 497, baseType: !806, size: 64, offset: 6592)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !662, line: 381, size: 384, elements: !808)
!808 = !{!809, !810, !2228}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !807, file: !662, line: 382, baseType: !708, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !807, file: !662, line: 383, baseType: !811, size: 128, offset: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !662, line: 376, size: 128, elements: !812)
!812 = !{!813, !2226}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !811, file: !662, line: 377, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !816, line: 640, size: 48640, elements: !817)
!816 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!817 = !{!818, !824, !826, !827, !833, !834, !835, !836, !837, !838, !839, !840, !844, !862, !873, !962, !963, !964, !975, !976, !978, !979, !980, !981, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1060, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1098, !1100, !1101, !1102, !1114, !1115, !1116, !1117, !1118, !1119, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1143, !1148, !1335, !1336, !1337, !1338, !1342, !1345, !1348, !1351, !1354, !1357, !1458, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1506, !1507, !1508, !1509, !1510, !1515, !1516, !1517, !1520, !1521, !1524, !1527, !1530, !1533, !1584, !1587, !1588, !1667, !1668, !1671, !1672, !1675, !1676, !1677, !1681, !1682, !1683, !1696, !1697, !1698, !1708, !1713, !1716, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !815, file: !816, line: 646, baseType: !819, size: 128)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !820, line: 56, size: 128, elements: !821)
!820 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!821 = !{!822, !823}
!822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !819, file: !820, line: 57, baseType: !157, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !819, file: !820, line: 58, baseType: !257, size: 32, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !815, file: !816, line: 649, baseType: !825, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !593)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !815, file: !816, line: 657, baseType: !156, size: 64, offset: 192)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !815, file: !816, line: 658, baseType: !828, size: 32, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !829, line: 113, baseType: !830)
!829 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !829, line: 111, size: 32, elements: !831)
!831 = !{!832}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !830, file: !829, line: 112, baseType: !708, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !815, file: !816, line: 660, baseType: !7, size: 32, offset: 288)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !815, file: !816, line: 661, baseType: !7, size: 32, offset: 320)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !815, file: !816, line: 684, baseType: !190, size: 32, offset: 352)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !815, file: !816, line: 686, baseType: !190, size: 32, offset: 384)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !815, file: !816, line: 687, baseType: !190, size: 32, offset: 416)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !815, file: !816, line: 688, baseType: !190, size: 32, offset: 448)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !815, file: !816, line: 689, baseType: !7, size: 32, offset: 480)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !815, file: !816, line: 691, baseType: !841, size: 64, offset: 512)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !843)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !816, line: 691, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !815, file: !816, line: 692, baseType: !845, size: 832, offset: 576)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !816, line: 451, size: 832, elements: !846)
!846 = !{!847, !852, !853, !854, !855, !856, !857, !858, !859, !860}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !845, file: !816, line: 453, baseType: !848, size: 128)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !816, line: 325, size: 128, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !848, file: !816, line: 326, baseType: !157, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !848, file: !816, line: 327, baseType: !257, size: 32, offset: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !845, file: !816, line: 454, baseType: !669, size: 192, align: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !845, file: !816, line: 455, baseType: !375, size: 128, offset: 320)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !845, file: !816, line: 456, baseType: !7, size: 32, offset: 448)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !845, file: !816, line: 458, baseType: !261, size: 64, offset: 512)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !845, file: !816, line: 459, baseType: !261, size: 64, offset: 576)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !845, file: !816, line: 460, baseType: !261, size: 64, offset: 640)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !845, file: !816, line: 461, baseType: !261, size: 64, offset: 704)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !845, file: !816, line: 463, baseType: !261, size: 64, offset: 768)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !845, file: !816, line: 465, baseType: !861, offset: 832)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !816, line: 415, elements: !297)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !815, file: !816, line: 693, baseType: !863, size: 384, offset: 1408)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !816, line: 489, size: 384, elements: !864)
!864 = !{!865, !866, !867, !868, !869, !870, !871}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !863, file: !816, line: 490, baseType: !375, size: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !863, file: !816, line: 491, baseType: !157, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !863, file: !816, line: 492, baseType: !157, size: 64, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !863, file: !816, line: 493, baseType: !7, size: 32, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !863, file: !816, line: 494, baseType: !163, size: 16, offset: 288)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !863, file: !816, line: 495, baseType: !163, size: 16, offset: 304)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !863, file: !816, line: 497, baseType: !872, size: 64, offset: 320)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !815, file: !816, line: 697, baseType: !874, size: 1792, offset: 1792)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !816, line: 507, size: 1792, elements: !875)
!875 = !{!876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !959, !960}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !874, file: !816, line: 508, baseType: !669, size: 192, align: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !874, file: !816, line: 515, baseType: !261, size: 64, offset: 192)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !874, file: !816, line: 516, baseType: !261, size: 64, offset: 256)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !874, file: !816, line: 517, baseType: !261, size: 64, offset: 320)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !874, file: !816, line: 518, baseType: !261, size: 64, offset: 384)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !874, file: !816, line: 519, baseType: !261, size: 64, offset: 448)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !874, file: !816, line: 526, baseType: !523, size: 64, offset: 512)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !874, file: !816, line: 527, baseType: !261, size: 64, offset: 576)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !874, file: !816, line: 528, baseType: !7, size: 32, offset: 640)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !874, file: !816, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !874, file: !816, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !874, file: !816, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !874, file: !816, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !874, file: !816, line: 563, baseType: !890, size: 512, offset: 704)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !891)
!891 = !{!892, !900, !901, !906, !953, !956, !957, !958}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !890, file: !20, line: 119, baseType: !893, size: 256)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !894, line: 9, size: 256, elements: !895)
!894 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!895 = !{!896, !897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !893, file: !894, line: 10, baseType: !669, size: 192, align: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !893, file: !894, line: 11, baseType: !898, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !899, line: 29, baseType: !523)
!899 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!900 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !890, file: !20, line: 120, baseType: !898, size: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !890, file: !20, line: 121, baseType: !902, size: 64, offset: 320)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!19, !905}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !890, file: !20, line: 122, baseType: !907, size: 64, offset: 384)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !909)
!909 = !{!910, !930, !931, !934, !939, !940, !948, !952}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !908, file: !20, line: 160, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !913)
!913 = !{!914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !912, file: !20, line: 215, baseType: !725)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !912, file: !20, line: 216, baseType: !7, size: 32)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !912, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !912, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !912, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !912, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !912, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !912, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !912, file: !20, line: 233, baseType: !898, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !912, file: !20, line: 234, baseType: !905, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !912, file: !20, line: 235, baseType: !898, size: 64, offset: 256)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !912, file: !20, line: 236, baseType: !905, size: 64, offset: 320)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !912, file: !20, line: 237, baseType: !927, size: 4096, offset: 512)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !908, size: 4096, elements: !928)
!928 = !{!929}
!929 = !DISubrange(count: 8)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !908, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !908, file: !20, line: 162, baseType: !932, size: 32, offset: 96)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !155, line: 27, baseType: !933)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !205, line: 96, baseType: !190)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !908, file: !20, line: 163, baseType: !935, size: 32, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !230, line: 276, baseType: !936)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !230, line: 276, size: 32, elements: !937)
!937 = !{!938}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !936, file: !230, line: 276, baseType: !234, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !908, file: !20, line: 164, baseType: !905, size: 64, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !908, file: !20, line: 165, baseType: !941, size: 128, offset: 256)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !894, line: 14, size: 128, elements: !942)
!942 = !{!943}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !941, file: !894, line: 15, baseType: !944, size: 128)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !670, line: 125, size: 128, elements: !945)
!945 = !{!946, !947}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !944, file: !670, line: 126, baseType: !686, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !944, file: !670, line: 127, baseType: !674, size: 64, offset: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !908, file: !20, line: 166, baseType: !949, size: 64, offset: 384)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!898}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !908, file: !20, line: 167, baseType: !898, size: 64, offset: 448)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !890, file: !20, line: 123, baseType: !954, size: 8, offset: 448)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !258, line: 17, baseType: !955)
!955 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !162, line: 21, baseType: !266)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !890, file: !20, line: 124, baseType: !954, size: 8, offset: 456)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !890, file: !20, line: 125, baseType: !954, size: 8, offset: 464)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !890, file: !20, line: 126, baseType: !954, size: 8, offset: 472)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !874, file: !816, line: 572, baseType: !890, size: 512, offset: 1216)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !874, file: !816, line: 580, baseType: !961, size: 64, offset: 1728)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !815, file: !816, line: 721, baseType: !7, size: 32, offset: 3584)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !815, file: !816, line: 722, baseType: !190, size: 32, offset: 3616)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !815, file: !816, line: 723, baseType: !965, size: 64, offset: 3648)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !968, line: 17, baseType: !969)
!968 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !968, line: 17, size: 64, elements: !970)
!970 = !{!971}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !969, file: !968, line: 17, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, size: 64, elements: !973)
!973 = !{!974}
!974 = !DISubrange(count: 1)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !815, file: !816, line: 724, baseType: !967, size: 64, offset: 3712)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !815, file: !816, line: 749, baseType: !977, offset: 3776)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !816, line: 290, elements: !297)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !815, file: !816, line: 751, baseType: !375, size: 128, offset: 3776)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !815, file: !816, line: 757, baseType: !678, size: 64, offset: 3904)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !815, file: !816, line: 758, baseType: !678, size: 64, offset: 3968)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !815, file: !816, line: 761, baseType: !982, size: 320, offset: 4032)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !755, line: 34, size: 320, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !982, file: !755, line: 35, baseType: !261, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !982, file: !755, line: 36, baseType: !986, size: 256, offset: 64)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 256, elements: !759)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !815, file: !816, line: 766, baseType: !190, size: 32, offset: 4352)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !815, file: !816, line: 767, baseType: !190, size: 32, offset: 4384)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !815, file: !816, line: 768, baseType: !190, size: 32, offset: 4416)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !815, file: !816, line: 770, baseType: !190, size: 32, offset: 4448)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !815, file: !816, line: 772, baseType: !157, size: 64, offset: 4480)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !815, file: !816, line: 775, baseType: !7, size: 32, offset: 4544)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !815, file: !816, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !815, file: !816, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !815, file: !816, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !815, file: !816, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !815, file: !816, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !815, file: !816, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !815, file: !816, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !815, file: !816, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !815, file: !816, line: 831, baseType: !157, size: 64, offset: 4672)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !815, file: !816, line: 833, baseType: !1003, size: 384, offset: 4736)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1004)
!1004 = !{!1005, !1010}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1003, file: !25, line: 26, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!593, !1009}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, scope: !1003, file: !25, line: 27, baseType: !1011, size: 320, offset: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1003, file: !25, line: 27, size: 320, elements: !1012)
!1012 = !{!1013, !1023, !1050}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1011, file: !25, line: 36, baseType: !1014, size: 320)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1011, file: !25, line: 29, size: 320, elements: !1015)
!1015 = !{!1016, !1018, !1019, !1020, !1021, !1022}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1014, file: !25, line: 30, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1014, file: !25, line: 31, baseType: !257, size: 32, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1014, file: !25, line: 32, baseType: !257, size: 32, offset: 96)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1014, file: !25, line: 33, baseType: !257, size: 32, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1014, file: !25, line: 34, baseType: !261, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1014, file: !25, line: 35, baseType: !1017, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1011, file: !25, line: 46, baseType: !1024, size: 192)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1011, file: !25, line: 38, size: 192, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1049}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1024, file: !25, line: 39, baseType: !932, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1024, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, scope: !1024, file: !25, line: 41, baseType: !1029, size: 64, offset: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1024, file: !25, line: 41, size: 64, elements: !1030)
!1030 = !{!1031, !1039}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1029, file: !25, line: 42, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1034, line: 7, size: 128, elements: !1035)
!1034 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1035 = !{!1036, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1033, file: !1034, line: 8, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !205, line: 93, baseType: !388)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1033, file: !1034, line: 9, baseType: !388, size: 64, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1029, file: !25, line: 43, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1042, line: 7, size: 64, elements: !1043)
!1042 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1043 = !{!1044, !1048}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1041, file: !1042, line: 8, baseType: !1045, size: 32)
!1045 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1042, line: 5, baseType: !1046)
!1046 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !258, line: 20, baseType: !1047)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !162, line: 26, baseType: !190)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1041, file: !1042, line: 9, baseType: !1046, size: 32, offset: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1024, file: !25, line: 45, baseType: !261, size: 64, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1011, file: !25, line: 54, baseType: !1051, size: 256)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1011, file: !25, line: 48, size: 256, elements: !1052)
!1052 = !{!1053, !1056, !1057, !1058, !1059}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1051, file: !25, line: 49, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1051, file: !25, line: 50, baseType: !190, size: 32, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1051, file: !25, line: 51, baseType: !190, size: 32, offset: 96)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1051, file: !25, line: 52, baseType: !157, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1051, file: !25, line: 53, baseType: !157, size: 64, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !815, file: !816, line: 835, baseType: !1061, size: 32, offset: 5120)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !155, line: 22, baseType: !1062)
!1062 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !205, line: 28, baseType: !190)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !815, file: !816, line: 836, baseType: !1061, size: 32, offset: 5152)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !815, file: !816, line: 840, baseType: !157, size: 64, offset: 5184)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !815, file: !816, line: 849, baseType: !814, size: 64, offset: 5248)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !815, file: !816, line: 852, baseType: !814, size: 64, offset: 5312)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !815, file: !816, line: 857, baseType: !375, size: 128, offset: 5376)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !815, file: !816, line: 858, baseType: !375, size: 128, offset: 5504)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !815, file: !816, line: 859, baseType: !814, size: 64, offset: 5632)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !815, file: !816, line: 867, baseType: !375, size: 128, offset: 5696)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !815, file: !816, line: 868, baseType: !375, size: 128, offset: 5824)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !815, file: !816, line: 871, baseType: !1073, size: 64, offset: 5952)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1075)
!1075 = !{!1076, !1077, !1078, !1079, !1081, !1082, !1089, !1090}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1074, file: !53, line: 61, baseType: !828, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1074, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1074, file: !53, line: 63, baseType: !283, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1074, file: !53, line: 65, baseType: !1080, size: 256, offset: 64)
!1080 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 256, elements: !759)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1074, file: !53, line: 66, baseType: !420, size: 64, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1074, file: !53, line: 68, baseType: !1083, size: 128, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1084, line: 40, baseType: !1085)
!1084 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1084, line: 36, size: 128, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1085, file: !1084, line: 37, baseType: !283)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1085, file: !1084, line: 38, baseType: !375, size: 128)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1074, file: !53, line: 69, baseType: !565, size: 128, align: 64, offset: 512)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1074, file: !53, line: 70, baseType: !1091, size: 128, offset: 640)
!1091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1092, size: 128, elements: !973)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1092, file: !53, line: 55, baseType: !190, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1092, file: !53, line: 56, baseType: !1096, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !815, file: !816, line: 872, baseType: !1099, size: 512, offset: 6016)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 512, elements: !759)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !815, file: !816, line: 873, baseType: !375, size: 128, offset: 6528)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !815, file: !816, line: 874, baseType: !375, size: 128, offset: 6656)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !815, file: !816, line: 876, baseType: !1103, size: 64, offset: 6784)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1105, line: 26, size: 192, elements: !1106)
!1105 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1104, file: !1105, line: 27, baseType: !7, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1104, file: !1105, line: 28, baseType: !1109, size: 128, offset: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1110, line: 43, size: 128, elements: !1111)
!1110 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1109, file: !1110, line: 44, baseType: !725)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1109, file: !1110, line: 45, baseType: !375, size: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !815, file: !816, line: 879, baseType: !492, size: 64, offset: 6848)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !815, file: !816, line: 882, baseType: !492, size: 64, offset: 6912)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !815, file: !816, line: 884, baseType: !261, size: 64, offset: 6976)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !815, file: !816, line: 885, baseType: !261, size: 64, offset: 7040)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !815, file: !816, line: 890, baseType: !261, size: 64, offset: 7104)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !815, file: !816, line: 891, baseType: !1120, size: 128, offset: 7168)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !816, line: 242, size: 128, elements: !1121)
!1121 = !{!1122, !1123, !1124}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1120, file: !816, line: 244, baseType: !261, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1120, file: !816, line: 245, baseType: !261, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1120, file: !816, line: 246, baseType: !725, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !815, file: !816, line: 900, baseType: !157, size: 64, offset: 7296)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !815, file: !816, line: 901, baseType: !157, size: 64, offset: 7360)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !815, file: !816, line: 904, baseType: !261, size: 64, offset: 7424)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !815, file: !816, line: 907, baseType: !261, size: 64, offset: 7488)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !815, file: !816, line: 910, baseType: !157, size: 64, offset: 7552)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !815, file: !816, line: 911, baseType: !157, size: 64, offset: 7616)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !815, file: !816, line: 914, baseType: !1132, size: 640, offset: 7680)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1133, line: 123, size: 640, elements: !1134)
!1133 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1134 = !{!1135, !1141, !1142}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1132, file: !1133, line: 124, baseType: !1136, size: 576)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1137, size: 576, elements: !436)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1133, line: 108, size: 192, elements: !1138)
!1138 = !{!1139, !1140}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1137, file: !1133, line: 109, baseType: !261, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1137, file: !1133, line: 110, baseType: !941, size: 128, offset: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1132, file: !1133, line: 125, baseType: !7, size: 32, offset: 576)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1132, file: !1133, line: 126, baseType: !7, size: 32, offset: 608)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !815, file: !816, line: 917, baseType: !1144, size: 192, offset: 8320)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1133, line: 134, size: 192, elements: !1145)
!1145 = !{!1146, !1147}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1144, file: !1133, line: 135, baseType: !565, size: 128, align: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1144, file: !1133, line: 136, baseType: !7, size: 32, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !815, file: !816, line: 923, baseType: !1149, size: 64, offset: 8512)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1151)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1152, line: 111, size: 1280, elements: !1153)
!1152 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1153 = !{!1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1173, !1174, !1175, !1176, !1177, !1178, !1288, !1289, !1290, !1291, !1317, !1320, !1330}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1151, file: !1152, line: 112, baseType: !708, size: 32)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1151, file: !1152, line: 120, baseType: !198, size: 32, offset: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1151, file: !1152, line: 121, baseType: !207, size: 32, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1151, file: !1152, line: 122, baseType: !198, size: 32, offset: 96)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1151, file: !1152, line: 123, baseType: !207, size: 32, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1151, file: !1152, line: 124, baseType: !198, size: 32, offset: 160)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1151, file: !1152, line: 125, baseType: !207, size: 32, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1151, file: !1152, line: 126, baseType: !198, size: 32, offset: 224)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1151, file: !1152, line: 127, baseType: !207, size: 32, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1151, file: !1152, line: 128, baseType: !7, size: 32, offset: 288)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1151, file: !1152, line: 129, baseType: !1165, size: 64, offset: 320)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1166, line: 26, baseType: !1167)
!1166 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1166, line: 24, size: 64, elements: !1168)
!1168 = !{!1169}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1167, file: !1166, line: 25, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 64, elements: !1171)
!1171 = !{!1172}
!1172 = !DISubrange(count: 2)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1151, file: !1152, line: 130, baseType: !1165, size: 64, offset: 384)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1151, file: !1152, line: 131, baseType: !1165, size: 64, offset: 448)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1151, file: !1152, line: 132, baseType: !1165, size: 64, offset: 512)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1151, file: !1152, line: 133, baseType: !1165, size: 64, offset: 576)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1151, file: !1152, line: 135, baseType: !266, size: 8, offset: 640)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1151, file: !1152, line: 137, baseType: !1179, size: 64, offset: 704)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1181, line: 189, size: 1664, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1182 = !{!1183, !1184, !1187, !1192, !1193, !1196, !1197, !1204, !1205, !1206, !1207, !1210, !1211, !1212, !1213, !1214, !1252, !1273}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1180, file: !1181, line: 190, baseType: !828, size: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1180, file: !1181, line: 191, baseType: !1185, size: 32, offset: 32)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1181, line: 28, baseType: !1186)
!1186 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !155, line: 98, baseType: !1046)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1181, line: 192, baseType: !1188, size: 192, offset: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1180, file: !1181, line: 192, size: 192, elements: !1189)
!1189 = !{!1190, !1191}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1188, file: !1181, line: 193, baseType: !375, size: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1188, file: !1181, line: 194, baseType: !669, size: 192, align: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1180, file: !1181, line: 199, baseType: !719, size: 256, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1180, file: !1181, line: 200, baseType: !1194, size: 64, offset: 512)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1181, line: 200, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1180, file: !1181, line: 201, baseType: !156, size: 64, offset: 576)
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1181, line: 202, baseType: !1198, size: 64, offset: 640)
!1198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1180, file: !1181, line: 202, size: 64, elements: !1199)
!1199 = !{!1200, !1203}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1198, file: !1181, line: 203, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1202, line: 8, baseType: !524)
!1202 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1198, file: !1181, line: 204, baseType: !1201, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1180, file: !1181, line: 206, baseType: !1201, size: 64, offset: 704)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1180, file: !1181, line: 207, baseType: !198, size: 32, offset: 768)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1180, file: !1181, line: 208, baseType: !207, size: 32, offset: 800)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1180, file: !1181, line: 209, baseType: !1208, size: 32, offset: 832)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1181, line: 31, baseType: !1209)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !155, line: 104, baseType: !257)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1180, file: !1181, line: 210, baseType: !163, size: 16, offset: 864)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1180, file: !1181, line: 211, baseType: !163, size: 16, offset: 880)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1180, file: !1181, line: 215, baseType: !803, size: 16, offset: 896)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1180, file: !1181, line: 222, baseType: !157, size: 64, offset: 960)
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1181, line: 239, baseType: !1215, size: 320, offset: 1024)
!1215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1180, file: !1181, line: 239, size: 320, elements: !1216)
!1216 = !{!1217, !1244}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1215, file: !1181, line: 240, baseType: !1218, size: 320)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1181, line: 108, size: 320, elements: !1219)
!1219 = !{!1220, !1221, !1233, !1236, !1243}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1218, file: !1181, line: 110, baseType: !157, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1181, line: 111, baseType: !1222, size: 64, offset: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !1181, line: 111, size: 64, elements: !1223)
!1223 = !{!1224, !1232}
!1224 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !1181, line: 112, baseType: !1225, size: 64)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1222, file: !1181, line: 112, size: 64, elements: !1226)
!1226 = !{!1227, !1228}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1225, file: !1181, line: 114, baseType: !614, size: 16)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1225, file: !1181, line: 115, baseType: !1229, size: 48, offset: 16)
!1229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 48, elements: !1230)
!1230 = !{!1231}
!1231 = !DISubrange(count: 6)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1222, file: !1181, line: 121, baseType: !157, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1218, file: !1181, line: 123, baseType: !1234, size: 64, offset: 128)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1181, line: 96, flags: DIFlagFwdDecl)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1218, file: !1181, line: 124, baseType: !1237, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1181, line: 102, size: 192, elements: !1239)
!1239 = !{!1240, !1241, !1242}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1238, file: !1181, line: 103, baseType: !565, size: 128, align: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1238, file: !1181, line: 104, baseType: !828, size: 32, offset: 128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1238, file: !1181, line: 105, baseType: !362, size: 8, offset: 160)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1218, file: !1181, line: 125, baseType: !167, size: 64, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !1181, line: 241, baseType: !1245, size: 320)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1215, file: !1181, line: 241, size: 320, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1251}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1245, file: !1181, line: 242, baseType: !157, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1245, file: !1181, line: 243, baseType: !157, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1245, file: !1181, line: 244, baseType: !1234, size: 64, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1245, file: !1181, line: 245, baseType: !1237, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1245, file: !1181, line: 246, baseType: !343, size: 64, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1180, file: !1181, line: 254, baseType: !1253, size: 256, offset: 1344)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1180, file: !1181, line: 254, size: 256, elements: !1254)
!1254 = !{!1255, !1261}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1253, file: !1181, line: 255, baseType: !1256, size: 256)
!1256 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1181, line: 128, size: 256, elements: !1257)
!1257 = !{!1258, !1259}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1256, file: !1181, line: 129, baseType: !156, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1256, file: !1181, line: 130, baseType: !1260, size: 256)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 256, elements: !759)
!1261 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !1181, line: 256, baseType: !1262, size: 256)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1253, file: !1181, line: 256, size: 256, elements: !1263)
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1262, file: !1181, line: 258, baseType: !375, size: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1262, file: !1181, line: 259, baseType: !1266, size: 128, offset: 128)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1267, line: 22, size: 128, elements: !1268)
!1267 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1268 = !{!1269, !1272}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1266, file: !1267, line: 23, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1267, line: 23, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1266, file: !1267, line: 24, baseType: !157, size: 64, offset: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1180, file: !1181, line: 274, baseType: !1274, size: 64, offset: 1600)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1181, line: 170, size: 192, elements: !1276)
!1276 = !{!1277, !1286, !1287}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1275, file: !1181, line: 171, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1181, line: 165, baseType: !1279)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!190, !1179, !1282, !1284, !1179}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1235)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1275, file: !1181, line: 172, baseType: !1179, size: 64, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1275, file: !1181, line: 173, baseType: !1234, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1151, file: !1152, line: 138, baseType: !1179, size: 64, offset: 768)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1151, file: !1152, line: 139, baseType: !1179, size: 64, offset: 832)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1151, file: !1152, line: 140, baseType: !1179, size: 64, offset: 896)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1151, file: !1152, line: 145, baseType: !1292, size: 64, offset: 960)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1294, line: 13, size: 896, elements: !1295)
!1294 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1293, file: !1294, line: 14, baseType: !828, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1293, file: !1294, line: 15, baseType: !708, size: 32, offset: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1293, file: !1294, line: 16, baseType: !708, size: 32, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1293, file: !1294, line: 21, baseType: !517, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1293, file: !1294, line: 27, baseType: !157, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1293, file: !1294, line: 28, baseType: !157, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1293, file: !1294, line: 29, baseType: !517, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1293, file: !1294, line: 32, baseType: !424, size: 128, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1293, file: !1294, line: 33, baseType: !198, size: 32, offset: 512)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1293, file: !1294, line: 37, baseType: !517, size: 64, offset: 576)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1293, file: !1294, line: 44, baseType: !1307, size: 256, offset: 640)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1308, line: 15, size: 256, elements: !1309)
!1308 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1309 = !{!1310, !1311, !1312, !1313, !1314, !1315, !1316}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1307, file: !1308, line: 16, baseType: !725)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1307, file: !1308, line: 18, baseType: !190, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1307, file: !1308, line: 19, baseType: !190, size: 32, offset: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1307, file: !1308, line: 20, baseType: !190, size: 32, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1307, file: !1308, line: 21, baseType: !190, size: 32, offset: 96)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1307, file: !1308, line: 22, baseType: !157, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1307, file: !1308, line: 23, baseType: !157, size: 64, offset: 192)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1151, file: !1152, line: 146, baseType: !1318, size: 64, offset: 1024)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !662, line: 516, flags: DIFlagFwdDecl)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1151, file: !1152, line: 147, baseType: !1321, size: 64, offset: 1088)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1152, line: 25, size: 64, elements: !1323)
!1323 = !{!1324, !1325, !1326}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1322, file: !1152, line: 26, baseType: !708, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1322, file: !1152, line: 27, baseType: !190, size: 32, offset: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1322, file: !1152, line: 28, baseType: !1327, offset: 64)
!1327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, elements: !1328)
!1328 = !{!1329}
!1329 = !DISubrange(count: 0)
!1330 = !DIDerivedType(tag: DW_TAG_member, scope: !1151, file: !1152, line: 149, baseType: !1331, size: 128, offset: 1152)
!1331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1151, file: !1152, line: 149, size: 128, elements: !1332)
!1332 = !{!1333, !1334}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1331, file: !1152, line: 150, baseType: !190, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1331, file: !1152, line: 151, baseType: !565, size: 128, align: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !815, file: !816, line: 926, baseType: !1149, size: 64, offset: 8576)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !815, file: !816, line: 929, baseType: !1149, size: 64, offset: 8640)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !815, file: !816, line: 933, baseType: !1179, size: 64, offset: 8704)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !815, file: !816, line: 943, baseType: !1339, size: 128, offset: 8768)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 128, elements: !1340)
!1340 = !{!1341}
!1341 = !DISubrange(count: 16)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !815, file: !816, line: 945, baseType: !1343, size: 64, offset: 8896)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !816, line: 49, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !815, file: !816, line: 956, baseType: !1346, size: 64, offset: 8960)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !816, line: 45, flags: DIFlagFwdDecl)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !815, file: !816, line: 959, baseType: !1349, size: 64, offset: 9024)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !816, line: 959, flags: DIFlagFwdDecl)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !815, file: !816, line: 962, baseType: !1352, size: 64, offset: 9088)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !816, line: 66, flags: DIFlagFwdDecl)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !815, file: !816, line: 966, baseType: !1355, size: 64, offset: 9152)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !816, line: 50, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !815, file: !816, line: 969, baseType: !1358, size: 64, offset: 9216)
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1360, line: 82, size: 7296, elements: !1361)
!1360 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1367, !1368, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1397, !1406, !1407, !1409, !1410, !1411, !1414, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1444, !1445, !1452, !1453, !1454, !1455, !1456, !1457}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1359, file: !1360, line: 83, baseType: !828, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1359, file: !1360, line: 84, baseType: !708, size: 32, offset: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1359, file: !1360, line: 85, baseType: !190, size: 32, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1359, file: !1360, line: 86, baseType: !375, size: 128, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1359, file: !1360, line: 88, baseType: !1083, size: 128, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1359, file: !1360, line: 91, baseType: !814, size: 64, offset: 384)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1359, file: !1360, line: 94, baseType: !1369, size: 192, offset: 448)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1370, line: 30, size: 192, elements: !1371)
!1370 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1371 = !{!1372, !1373}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1369, file: !1370, line: 31, baseType: !375, size: 128)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1369, file: !1370, line: 32, baseType: !1374, size: 64, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1375, line: 25, baseType: !1376)
!1375 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1375, line: 23, size: 64, elements: !1377)
!1377 = !{!1378}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1376, file: !1375, line: 24, baseType: !972, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1359, file: !1360, line: 97, baseType: !420, size: 64, offset: 640)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1359, file: !1360, line: 100, baseType: !190, size: 32, offset: 704)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1359, file: !1360, line: 106, baseType: !190, size: 32, offset: 736)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1359, file: !1360, line: 107, baseType: !814, size: 64, offset: 768)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1359, file: !1360, line: 110, baseType: !190, size: 32, offset: 832)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1359, file: !1360, line: 111, baseType: !7, size: 32, offset: 864)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1359, file: !1360, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1359, file: !1360, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1359, file: !1360, line: 128, baseType: !190, size: 32, offset: 928)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1359, file: !1360, line: 129, baseType: !375, size: 128, offset: 960)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1359, file: !1360, line: 132, baseType: !890, size: 512, offset: 1088)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1359, file: !1360, line: 133, baseType: !898, size: 64, offset: 1600)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1359, file: !1360, line: 140, baseType: !1392, size: 256, offset: 1664)
!1392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1393, size: 256, elements: !1171)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1360, line: 38, size: 128, elements: !1394)
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1393, file: !1360, line: 39, baseType: !261, size: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1393, file: !1360, line: 40, baseType: !261, size: 64, offset: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1359, file: !1360, line: 146, baseType: !1398, size: 192, offset: 1920)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1360, line: 66, size: 192, elements: !1399)
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1398, file: !1360, line: 67, baseType: !1401, size: 192)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1360, line: 47, size: 192, elements: !1402)
!1402 = !{!1403, !1404, !1405}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1401, file: !1360, line: 48, baseType: !519, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1401, file: !1360, line: 49, baseType: !519, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1401, file: !1360, line: 50, baseType: !519, size: 64, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1359, file: !1360, line: 150, baseType: !1132, size: 640, offset: 2112)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1359, file: !1360, line: 153, baseType: !1408, size: 256, offset: 2752)
!1408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1073, size: 256, elements: !759)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1359, file: !1360, line: 159, baseType: !1073, size: 64, offset: 3008)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1359, file: !1360, line: 162, baseType: !190, size: 32, offset: 3072)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1359, file: !1360, line: 164, baseType: !1412, size: 64, offset: 3136)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1360, line: 164, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1359, file: !1360, line: 175, baseType: !1415, size: 32, offset: 3200)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !230, line: 805, baseType: !1416)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !230, line: 798, size: 32, elements: !1417)
!1417 = !{!1418, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1416, file: !230, line: 803, baseType: !229, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1416, file: !230, line: 804, baseType: !283, offset: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1359, file: !1360, line: 176, baseType: !261, size: 64, offset: 3264)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1359, file: !1360, line: 176, baseType: !261, size: 64, offset: 3328)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1359, file: !1360, line: 176, baseType: !261, size: 64, offset: 3392)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1359, file: !1360, line: 176, baseType: !261, size: 64, offset: 3456)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1359, file: !1360, line: 177, baseType: !261, size: 64, offset: 3520)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1359, file: !1360, line: 178, baseType: !261, size: 64, offset: 3584)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1359, file: !1360, line: 179, baseType: !1120, size: 128, offset: 3648)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1359, file: !1360, line: 180, baseType: !157, size: 64, offset: 3776)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1359, file: !1360, line: 180, baseType: !157, size: 64, offset: 3840)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1359, file: !1360, line: 180, baseType: !157, size: 64, offset: 3904)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1359, file: !1360, line: 180, baseType: !157, size: 64, offset: 3968)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1359, file: !1360, line: 181, baseType: !157, size: 64, offset: 4032)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1359, file: !1360, line: 181, baseType: !157, size: 64, offset: 4096)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1359, file: !1360, line: 181, baseType: !157, size: 64, offset: 4160)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1359, file: !1360, line: 181, baseType: !157, size: 64, offset: 4224)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1359, file: !1360, line: 182, baseType: !157, size: 64, offset: 4288)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1359, file: !1360, line: 182, baseType: !157, size: 64, offset: 4352)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1359, file: !1360, line: 182, baseType: !157, size: 64, offset: 4416)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1359, file: !1360, line: 182, baseType: !157, size: 64, offset: 4480)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1359, file: !1360, line: 183, baseType: !157, size: 64, offset: 4544)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1359, file: !1360, line: 183, baseType: !157, size: 64, offset: 4608)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1359, file: !1360, line: 184, baseType: !1442, offset: 4672)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1443, line: 12, elements: !297)
!1443 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1359, file: !1360, line: 192, baseType: !170, size: 64, offset: 4672)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1359, file: !1360, line: 203, baseType: !1446, size: 2048, offset: 4736)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1447, size: 2048, elements: !1340)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1448, line: 43, size: 128, elements: !1449)
!1448 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1447, file: !1448, line: 44, baseType: !506, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1447, file: !1448, line: 45, baseType: !506, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1359, file: !1360, line: 220, baseType: !362, size: 8, offset: 6784)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1359, file: !1360, line: 221, baseType: !803, size: 16, offset: 6800)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1359, file: !1360, line: 222, baseType: !803, size: 16, offset: 6816)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1359, file: !1360, line: 224, baseType: !678, size: 64, offset: 6848)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1359, file: !1360, line: 227, baseType: !513, size: 192, offset: 6912)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1359, file: !1360, line: 233, baseType: !513, size: 192, offset: 7104)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !815, file: !816, line: 970, baseType: !1459, size: 64, offset: 9280)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1360, line: 20, size: 16576, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1465}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1460, file: !1360, line: 21, baseType: !283)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1460, file: !1360, line: 22, baseType: !828, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1460, file: !1360, line: 23, baseType: !1083, size: 128, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1460, file: !1360, line: 24, baseType: !1466, size: 16384, offset: 192)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1467, size: 16384, elements: !1487)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1370, line: 49, size: 256, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1467, file: !1370, line: 50, baseType: !1470, size: 256)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1370, line: 35, size: 256, elements: !1471)
!1471 = !{!1472, !1479, !1480, !1486}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1470, file: !1370, line: 37, baseType: !1473, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1474, line: 19, baseType: !1475)
!1474 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1474, line: 18, baseType: !1477)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{null, !190}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1470, file: !1370, line: 38, baseType: !157, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1470, file: !1370, line: 44, baseType: !1481, size: 64, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1474, line: 22, baseType: !1482)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1474, line: 21, baseType: !1484)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{null}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1470, file: !1370, line: 46, baseType: !1374, size: 64, offset: 192)
!1487 = !{!1488}
!1488 = !DISubrange(count: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !815, file: !816, line: 971, baseType: !1374, size: 64, offset: 9344)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !815, file: !816, line: 972, baseType: !1374, size: 64, offset: 9408)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !815, file: !816, line: 974, baseType: !1374, size: 64, offset: 9472)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !815, file: !816, line: 975, baseType: !1369, size: 192, offset: 9536)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !815, file: !816, line: 976, baseType: !157, size: 64, offset: 9728)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !815, file: !816, line: 977, baseType: !504, size: 64, offset: 9792)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !815, file: !816, line: 978, baseType: !7, size: 32, offset: 9856)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !815, file: !816, line: 980, baseType: !568, size: 64, offset: 9920)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !815, file: !816, line: 989, baseType: !1498, size: 128, offset: 9984)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1499, line: 35, size: 128, elements: !1500)
!1499 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1500 = !{!1501, !1502, !1503}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1498, file: !1499, line: 36, baseType: !190, size: 32)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1498, file: !1499, line: 37, baseType: !708, size: 32, offset: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1498, file: !1499, line: 38, baseType: !1504, size: 64, offset: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1499, line: 23, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !815, file: !816, line: 992, baseType: !261, size: 64, offset: 10112)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !815, file: !816, line: 993, baseType: !261, size: 64, offset: 10176)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !815, file: !816, line: 996, baseType: !283, offset: 10240)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !815, file: !816, line: 999, baseType: !725, offset: 10240)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !815, file: !816, line: 1001, baseType: !1511, size: 64, offset: 10240)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !816, line: 636, size: 64, elements: !1512)
!1512 = !{!1513}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1511, file: !816, line: 637, baseType: !1514, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !815, file: !816, line: 1005, baseType: !944, size: 128, offset: 10304)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !815, file: !816, line: 1007, baseType: !814, size: 64, offset: 10432)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !815, file: !816, line: 1009, baseType: !1518, size: 64, offset: 10496)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !816, line: 1009, flags: DIFlagFwdDecl)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !815, file: !816, line: 1043, baseType: !156, size: 64, offset: 10560)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !815, file: !816, line: 1046, baseType: !1522, size: 64, offset: 10624)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !816, line: 41, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !815, file: !816, line: 1050, baseType: !1525, size: 64, offset: 10688)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !816, line: 42, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !815, file: !816, line: 1054, baseType: !1528, size: 64, offset: 10752)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !816, line: 55, flags: DIFlagFwdDecl)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !815, file: !816, line: 1056, baseType: !1531, size: 64, offset: 10816)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !816, line: 40, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !815, file: !816, line: 1058, baseType: !1534, size: 64, offset: 10880)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1536, line: 99, size: 704, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1537 = !{!1538, !1539, !1540, !1541, !1542, !1543, !1550, !1571, !1572}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1535, file: !1536, line: 100, baseType: !517, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1535, file: !1536, line: 101, baseType: !708, size: 32, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1535, file: !1536, line: 102, baseType: !708, size: 32, offset: 96)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1535, file: !1536, line: 105, baseType: !283, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1535, file: !1536, line: 107, baseType: !163, size: 16, offset: 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1535, file: !1536, line: 109, baseType: !1544, size: 128, offset: 192)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1545, line: 292, size: 128, elements: !1546)
!1545 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1546 = !{!1547, !1548, !1549}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1544, file: !1545, line: 293, baseType: !283)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1544, file: !1545, line: 295, baseType: !154, size: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1544, file: !1545, line: 296, baseType: !156, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1535, file: !1536, line: 110, baseType: !1551, size: 64, offset: 320)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1536, line: 73, size: 448, elements: !1553)
!1553 = !{!1554, !1557, !1558, !1565, !1570}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1552, file: !1536, line: 74, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1536, line: 74, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1552, file: !1536, line: 75, baseType: !1534, size: 64, offset: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !1536, line: 83, baseType: !1559, size: 128, offset: 128)
!1559 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1552, file: !1536, line: 83, size: 128, elements: !1560)
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1559, file: !1536, line: 84, baseType: !375, size: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1559, file: !1536, line: 85, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !662, line: 117, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, scope: !1552, file: !1536, line: 87, baseType: !1566, size: 128, offset: 256)
!1566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1552, file: !1536, line: 87, size: 128, elements: !1567)
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1566, file: !1536, line: 88, baseType: !424, size: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1566, file: !1536, line: 89, baseType: !565, size: 128, align: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1552, file: !1536, line: 92, baseType: !7, size: 32, offset: 384)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1535, file: !1536, line: 111, baseType: !420, size: 64, offset: 384)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1535, file: !1536, line: 113, baseType: !1573, size: 256, offset: 448)
!1573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1574, line: 102, size: 256, elements: !1575)
!1574 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1575 = !{!1576, !1577, !1578}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1573, file: !1574, line: 103, baseType: !517, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1573, file: !1574, line: 104, baseType: !375, size: 128, offset: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1573, file: !1574, line: 105, baseType: !1579, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1574, line: 21, baseType: !1580)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{null, !1583}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !815, file: !816, line: 1061, baseType: !1585, size: 64, offset: 10944)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !816, line: 43, flags: DIFlagFwdDecl)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !815, file: !816, line: 1064, baseType: !157, size: 64, offset: 11008)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !815, file: !816, line: 1065, baseType: !1589, size: 64, offset: 11072)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1370, line: 14, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1370, line: 12, size: 384, elements: !1592)
!1592 = !{!1593}
!1593 = !DIDerivedType(tag: DW_TAG_member, scope: !1591, file: !1370, line: 13, baseType: !1594, size: 384)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1591, file: !1370, line: 13, size: 384, elements: !1595)
!1595 = !{!1596, !1597, !1598, !1599}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1594, file: !1370, line: 13, baseType: !190, size: 32)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1594, file: !1370, line: 13, baseType: !190, size: 32, offset: 32)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1594, file: !1370, line: 13, baseType: !190, size: 32, offset: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1594, file: !1370, line: 13, baseType: !1600, size: 256, offset: 128)
!1600 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1601, line: 32, size: 256, elements: !1602)
!1601 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1602 = !{!1603, !1608, !1621, !1627, !1636, !1656, !1661}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1600, file: !1601, line: 37, baseType: !1604, size: 64)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1600, file: !1601, line: 34, size: 64, elements: !1605)
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1604, file: !1601, line: 35, baseType: !1062, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1604, file: !1601, line: 36, baseType: !204, size: 32, offset: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1600, file: !1601, line: 45, baseType: !1609, size: 192)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1600, file: !1601, line: 40, size: 192, elements: !1610)
!1610 = !{!1611, !1613, !1614, !1620}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1609, file: !1601, line: 41, baseType: !1612, size: 32)
!1612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !205, line: 95, baseType: !190)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1609, file: !1601, line: 42, baseType: !190, size: 32, offset: 32)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1609, file: !1601, line: 43, baseType: !1615, size: 64, offset: 64)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1601, line: 11, baseType: !1616)
!1616 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1601, line: 8, size: 64, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1616, file: !1601, line: 9, baseType: !190, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1616, file: !1601, line: 10, baseType: !156, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1609, file: !1601, line: 44, baseType: !190, size: 32, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1600, file: !1601, line: 52, baseType: !1622, size: 128)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1600, file: !1601, line: 48, size: 128, elements: !1623)
!1623 = !{!1624, !1625, !1626}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1622, file: !1601, line: 49, baseType: !1062, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1622, file: !1601, line: 50, baseType: !204, size: 32, offset: 32)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1622, file: !1601, line: 51, baseType: !1615, size: 64, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1600, file: !1601, line: 61, baseType: !1628, size: 256)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1600, file: !1601, line: 55, size: 256, elements: !1629)
!1629 = !{!1630, !1631, !1632, !1633, !1635}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1628, file: !1601, line: 56, baseType: !1062, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1628, file: !1601, line: 57, baseType: !204, size: 32, offset: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1628, file: !1601, line: 58, baseType: !190, size: 32, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1628, file: !1601, line: 59, baseType: !1634, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !205, line: 94, baseType: !592)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1628, file: !1601, line: 60, baseType: !1634, size: 64, offset: 192)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1600, file: !1601, line: 95, baseType: !1637, size: 256)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1600, file: !1601, line: 64, size: 256, elements: !1638)
!1638 = !{!1639, !1640}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1637, file: !1601, line: 65, baseType: !156, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, scope: !1637, file: !1601, line: 77, baseType: !1641, size: 192, offset: 64)
!1641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1637, file: !1601, line: 77, size: 192, elements: !1642)
!1642 = !{!1643, !1644, !1651}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1641, file: !1601, line: 82, baseType: !803, size: 16)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1641, file: !1601, line: 88, baseType: !1645, size: 192)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1641, file: !1601, line: 84, size: 192, elements: !1646)
!1646 = !{!1647, !1649, !1650}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1645, file: !1601, line: 85, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 64, elements: !928)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1645, file: !1601, line: 86, baseType: !156, size: 64, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1645, file: !1601, line: 87, baseType: !156, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1641, file: !1601, line: 93, baseType: !1652, size: 96)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1641, file: !1601, line: 90, size: 96, elements: !1653)
!1653 = !{!1654, !1655}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1652, file: !1601, line: 91, baseType: !1648, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1652, file: !1601, line: 92, baseType: !166, size: 32, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1600, file: !1601, line: 101, baseType: !1657, size: 128)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1600, file: !1601, line: 98, size: 128, elements: !1658)
!1658 = !{!1659, !1660}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1657, file: !1601, line: 99, baseType: !593, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1657, file: !1601, line: 100, baseType: !190, size: 32, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1600, file: !1601, line: 108, baseType: !1662, size: 128)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1600, file: !1601, line: 104, size: 128, elements: !1663)
!1663 = !{!1664, !1665, !1666}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1662, file: !1601, line: 105, baseType: !156, size: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1662, file: !1601, line: 106, baseType: !190, size: 32, offset: 64)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1662, file: !1601, line: 107, baseType: !7, size: 32, offset: 96)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !815, file: !816, line: 1067, baseType: !1442, offset: 11136)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !815, file: !816, line: 1099, baseType: !1669, size: 64, offset: 11136)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !816, line: 56, flags: DIFlagFwdDecl)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !815, file: !816, line: 1103, baseType: !375, size: 128, offset: 11200)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !815, file: !816, line: 1104, baseType: !1673, size: 64, offset: 11328)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !816, line: 46, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !815, file: !816, line: 1105, baseType: !513, size: 192, offset: 11392)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !815, file: !816, line: 1106, baseType: !7, size: 32, offset: 11584)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !815, file: !816, line: 1109, baseType: !1678, size: 128, offset: 11648)
!1678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1679, size: 128, elements: !1171)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !816, line: 51, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !815, file: !816, line: 1110, baseType: !513, size: 192, offset: 11776)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !815, file: !816, line: 1111, baseType: !375, size: 128, offset: 11968)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !815, file: !816, line: 1173, baseType: !1684, size: 64, offset: 12096)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1686, line: 62, size: 256, align: 256, elements: !1687)
!1686 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1687 = !{!1688, !1689, !1690, !1695}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1685, file: !1686, line: 75, baseType: !166, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1685, file: !1686, line: 90, baseType: !166, size: 32, offset: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1685, file: !1686, line: 124, baseType: !1691, size: 64, offset: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1685, file: !1686, line: 109, size: 64, elements: !1692)
!1692 = !{!1693, !1694}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1691, file: !1686, line: 110, baseType: !262, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1691, file: !1686, line: 112, baseType: !262, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1685, file: !1686, line: 144, baseType: !166, size: 32, offset: 128)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !815, file: !816, line: 1174, baseType: !257, size: 32, offset: 12160)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !815, file: !816, line: 1179, baseType: !157, size: 64, offset: 12224)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !815, file: !816, line: 1182, baseType: !1699, size: 128, offset: 12288)
!1699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !755, line: 76, size: 128, elements: !1700)
!1700 = !{!1701, !1706, !1707}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1699, file: !755, line: 85, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1703, line: 7, size: 64, elements: !1704)
!1703 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1704 = !{!1705}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1702, file: !1703, line: 12, baseType: !969, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1699, file: !755, line: 88, baseType: !362, size: 8, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1699, file: !755, line: 95, baseType: !362, size: 8, offset: 72)
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !815, file: !816, line: 1184, baseType: !1709, size: 128, offset: 12416)
!1709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !815, file: !816, line: 1184, size: 128, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1709, file: !816, line: 1185, baseType: !828, size: 32)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1709, file: !816, line: 1186, baseType: !565, size: 128, align: 64)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !815, file: !816, line: 1190, baseType: !1714, size: 64, offset: 12544)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !816, line: 53, flags: DIFlagFwdDecl)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !815, file: !816, line: 1192, baseType: !1717, size: 128, offset: 12608)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !755, line: 64, size: 128, elements: !1718)
!1718 = !{!1719, !2022, !2023}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1717, file: !755, line: 65, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !662, line: 68, size: 512, align: 128, elements: !1722)
!1722 = !{!1723, !1724, !2014, !2021}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1721, file: !662, line: 69, baseType: !157, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !662, line: 77, baseType: !1725, size: 320, offset: 64)
!1725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1721, file: !662, line: 77, size: 320, elements: !1726)
!1726 = !{!1727, !1848, !1853, !1879, !1887, !1893, !1906, !2013}
!1727 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !662, line: 78, baseType: !1728, size: 320)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !662, line: 78, size: 320, elements: !1729)
!1729 = !{!1730, !1731, !1846, !1847}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1728, file: !662, line: 84, baseType: !375, size: 128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1728, file: !662, line: 86, baseType: !1732, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !1734)
!1734 = !{!1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1839, !1840, !1843, !1844, !1845}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1733, file: !44, line: 452, baseType: !191, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1733, file: !44, line: 453, baseType: !1544, size: 128, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1733, file: !44, line: 454, baseType: !154, size: 32, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1733, file: !44, line: 455, baseType: !708, size: 32, offset: 224)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1733, file: !44, line: 460, baseType: !944, size: 128, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1733, file: !44, line: 461, baseType: !719, size: 256, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1733, file: !44, line: 462, baseType: !157, size: 64, offset: 640)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !1733, file: !44, line: 463, baseType: !157, size: 64, offset: 704)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1733, file: !44, line: 464, baseType: !157, size: 64, offset: 768)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1733, file: !44, line: 465, baseType: !1745, size: 64, offset: 832)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1747)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !1748)
!1748 = !{!1749, !1753, !1757, !1761, !1765, !1769, !1775, !1781, !1785, !1790, !1794, !1798, !1802, !1803, !1807, !1813, !1814, !1815, !1819, !1824, !1828, !1835}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1747, file: !44, line: 368, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!190, !1720, !463}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !1747, file: !44, line: 369, baseType: !1754, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!190, !585, !1720}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1747, file: !44, line: 372, baseType: !1758, size: 64, offset: 128)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!190, !1732, !463}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !1747, file: !44, line: 375, baseType: !1762, size: 64, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!190, !1720}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !1747, file: !44, line: 381, baseType: !1766, size: 64, offset: 256)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!190, !585, !1732, !378, !7}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1747, file: !44, line: 383, baseType: !1770, size: 64, offset: 320)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{null, !1773}
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1747, file: !44, line: 385, baseType: !1776, size: 64, offset: 384)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!190, !585, !1732, !386, !7, !7, !1779, !1780}
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1747, file: !44, line: 388, baseType: !1782, size: 64, offset: 448)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DISubroutineType(types: !1784)
!1784 = !{!190, !585, !1732, !386, !7, !7, !1720, !156}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1747, file: !44, line: 393, baseType: !1786, size: 64, offset: 512)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!1789, !1732, !1789}
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !155, line: 125, baseType: !261)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !1747, file: !44, line: 394, baseType: !1791, size: 64, offset: 576)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{null, !1720, !7, !7}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !1747, file: !44, line: 395, baseType: !1795, size: 64, offset: 640)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!190, !1720, !154}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !1747, file: !44, line: 396, baseType: !1799, size: 64, offset: 704)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{null, !1720}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1747, file: !44, line: 397, baseType: !599, size: 64, offset: 768)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !1747, file: !44, line: 402, baseType: !1804, size: 64, offset: 832)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!190, !1732, !1720, !1720, !5}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !1747, file: !44, line: 404, baseType: !1808, size: 64, offset: 896)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!362, !1720, !1811}
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !1812, line: 305, baseType: !7)
!1812 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !1747, file: !44, line: 405, baseType: !1799, size: 64, offset: 960)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !1747, file: !44, line: 406, baseType: !1762, size: 64, offset: 1024)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1747, file: !44, line: 407, baseType: !1816, size: 64, offset: 1088)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!190, !1720, !157, !157}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1747, file: !44, line: 409, baseType: !1820, size: 64, offset: 1152)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{null, !1720, !1823, !1823}
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1747, file: !44, line: 410, baseType: !1825, size: 64, offset: 1216)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!190, !1732, !1720}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1747, file: !44, line: 413, baseType: !1829, size: 64, offset: 1280)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!190, !1832, !585, !1834}
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1747, file: !44, line: 415, baseType: !1836, size: 64, offset: 1344)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{null, !585}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1733, file: !44, line: 466, baseType: !157, size: 64, offset: 896)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1733, file: !44, line: 467, baseType: !1841, size: 32, offset: 960)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1842, line: 8, baseType: !257)
!1842 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1733, file: !44, line: 468, baseType: !283, offset: 992)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1733, file: !44, line: 469, baseType: !375, size: 128, offset: 1024)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1733, file: !44, line: 470, baseType: !156, size: 64, offset: 1152)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1728, file: !662, line: 87, baseType: !157, size: 64, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1728, file: !662, line: 94, baseType: !157, size: 64, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !662, line: 96, baseType: !1849, size: 64)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !662, line: 96, size: 64, elements: !1850)
!1850 = !{!1851}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1849, file: !662, line: 101, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !155, line: 143, baseType: !261)
!1853 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !662, line: 103, baseType: !1854, size: 320)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !662, line: 103, size: 320, elements: !1855)
!1855 = !{!1856, !1866, !1867, !1868}
!1856 = !DIDerivedType(tag: DW_TAG_member, scope: !1854, file: !662, line: 104, baseType: !1857, size: 128)
!1857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1854, file: !662, line: 104, size: 128, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1857, file: !662, line: 105, baseType: !375, size: 128)
!1860 = !DIDerivedType(tag: DW_TAG_member, scope: !1857, file: !662, line: 106, baseType: !1861, size: 128)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1857, file: !662, line: 106, size: 128, elements: !1862)
!1862 = !{!1863, !1864, !1865}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1861, file: !662, line: 107, baseType: !1720, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1861, file: !662, line: 109, baseType: !190, size: 32, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1861, file: !662, line: 110, baseType: !190, size: 32, offset: 96)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1854, file: !662, line: 117, baseType: !1563, size: 64, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1854, file: !662, line: 119, baseType: !156, size: 64, offset: 192)
!1868 = !DIDerivedType(tag: DW_TAG_member, scope: !1854, file: !662, line: 120, baseType: !1869, size: 64, offset: 256)
!1869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1854, file: !662, line: 120, size: 64, elements: !1870)
!1870 = !{!1871, !1872, !1873}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1869, file: !662, line: 121, baseType: !156, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1869, file: !662, line: 122, baseType: !157, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, scope: !1869, file: !662, line: 123, baseType: !1874, size: 32)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !662, line: 123, size: 32, elements: !1875)
!1875 = !{!1876, !1877, !1878}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1874, file: !662, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1874, file: !662, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1874, file: !662, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1879 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !662, line: 130, baseType: !1880, size: 192)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !662, line: 130, size: 192, elements: !1881)
!1881 = !{!1882, !1883, !1884, !1885, !1886}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1880, file: !662, line: 131, baseType: !157, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1880, file: !662, line: 134, baseType: !266, size: 8, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1880, file: !662, line: 135, baseType: !266, size: 8, offset: 72)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1880, file: !662, line: 136, baseType: !708, size: 32, offset: 96)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1880, file: !662, line: 137, baseType: !7, size: 32, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !662, line: 139, baseType: !1888, size: 256)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !662, line: 139, size: 256, elements: !1889)
!1889 = !{!1890, !1891, !1892}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1888, file: !662, line: 140, baseType: !157, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1888, file: !662, line: 141, baseType: !708, size: 32, offset: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1888, file: !662, line: 143, baseType: !375, size: 128, offset: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !662, line: 145, baseType: !1894, size: 256)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !662, line: 145, size: 256, elements: !1895)
!1895 = !{!1896, !1897, !1899, !1900, !1905}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1894, file: !662, line: 146, baseType: !157, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1894, file: !662, line: 147, baseType: !1898, size: 64, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !701, line: 509, baseType: !1720)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1894, file: !662, line: 148, baseType: !157, size: 64, offset: 128)
!1900 = !DIDerivedType(tag: DW_TAG_member, scope: !1894, file: !662, line: 149, baseType: !1901, size: 64, offset: 192)
!1901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1894, file: !662, line: 149, size: 64, elements: !1902)
!1902 = !{!1903, !1904}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1901, file: !662, line: 150, baseType: !678, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1901, file: !662, line: 151, baseType: !708, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1894, file: !662, line: 156, baseType: !283, offset: 256)
!1906 = !DIDerivedType(tag: DW_TAG_member, scope: !1725, file: !662, line: 159, baseType: !1907, size: 128)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1725, file: !662, line: 159, size: 128, elements: !1908)
!1908 = !{!1909, !2012}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1907, file: !662, line: 161, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !1912)
!1912 = !{!1913, !1923, !1944, !1945, !1946, !1947, !1948, !1999, !2000, !2001}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1911, file: !31, line: 111, baseType: !1914, size: 384)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !1915)
!1915 = !{!1916, !1918, !1919, !1920, !1921, !1922}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1914, file: !31, line: 20, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1914, file: !31, line: 21, baseType: !1917, size: 64, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1914, file: !31, line: 22, baseType: !1917, size: 64, offset: 128)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1914, file: !31, line: 23, baseType: !157, size: 64, offset: 192)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1914, file: !31, line: 24, baseType: !157, size: 64, offset: 256)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1914, file: !31, line: 25, baseType: !157, size: 64, offset: 320)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1911, file: !31, line: 112, baseType: !1924, size: 64, offset: 384)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1926, line: 105, size: 128, elements: !1927)
!1926 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!1927 = !{!1928, !1929}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1925, file: !1926, line: 110, baseType: !157, size: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1925, file: !1926, line: 118, baseType: !1930, size: 64, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1926, line: 95, size: 448, elements: !1932)
!1932 = !{!1933, !1934, !1939, !1940, !1941, !1942, !1943}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1931, file: !1926, line: 96, baseType: !517, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1931, file: !1926, line: 97, baseType: !1935, size: 64, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1926, line: 60, baseType: !1937)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1924}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1931, file: !1926, line: 98, baseType: !1935, size: 64, offset: 128)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1931, file: !1926, line: 99, baseType: !362, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1931, file: !1926, line: 100, baseType: !362, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1931, file: !1926, line: 101, baseType: !565, size: 128, align: 64, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1931, file: !1926, line: 102, baseType: !1924, size: 64, offset: 384)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !1911, file: !31, line: 113, baseType: !1925, size: 128, offset: 448)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1911, file: !31, line: 114, baseType: !1104, size: 192, offset: 576)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1911, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1911, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1911, file: !31, line: 117, baseType: !1949, size: 64, offset: 832)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1951)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !1952)
!1952 = !{!1953, !1954, !1958, !1959}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1951, file: !31, line: 73, baseType: !1799, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !1951, file: !31, line: 78, baseType: !1955, size: 64, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{null, !1910}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1951, file: !31, line: 83, baseType: !1955, size: 64, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1951, file: !31, line: 89, baseType: !1960, size: 64, offset: 192)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!1963, !1964}
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !662, line: 682, baseType: !7)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1966)
!1966 = !{!1967, !1968, !1969, !1970, !1971, !1972, !1979, !1986, !1992, !1993, !1994, !1996, !1998}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1965, file: !14, line: 509, baseType: !660, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1965, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1965, file: !14, line: 511, baseType: !154, size: 32, offset: 96)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1965, file: !14, line: 512, baseType: !157, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1965, file: !14, line: 513, baseType: !157, size: 64, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1965, file: !14, line: 514, baseType: !1973, size: 64, offset: 256)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !701, line: 385, baseType: !1975)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !701, line: 385, size: 64, elements: !1976)
!1976 = !{!1977}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1975, file: !701, line: 385, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !706, line: 15, baseType: !157)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1965, file: !14, line: 516, baseType: !1980, size: 64, offset: 320)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !701, line: 359, baseType: !1982)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !701, line: 359, size: 64, elements: !1983)
!1983 = !{!1984}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1982, file: !701, line: 359, baseType: !1985, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !706, line: 16, baseType: !157)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1965, file: !14, line: 519, baseType: !1987, size: 64, offset: 384)
!1987 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !706, line: 21, baseType: !1988)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !706, line: 21, size: 64, elements: !1989)
!1989 = !{!1990}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1988, file: !706, line: 21, baseType: !1991, size: 64)
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !706, line: 14, baseType: !157)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1965, file: !14, line: 521, baseType: !1720, size: 64, offset: 448)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1965, file: !14, line: 522, baseType: !1720, size: 64, offset: 512)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1965, file: !14, line: 528, baseType: !1995, size: 64, offset: 576)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1965, file: !14, line: 532, baseType: !1997, size: 64, offset: 640)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1965, file: !14, line: 536, baseType: !1898, size: 64, offset: 704)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1911, file: !31, line: 118, baseType: !156, size: 64, offset: 896)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1911, file: !31, line: 119, baseType: !190, size: 32, offset: 960)
!2001 = !DIDerivedType(tag: DW_TAG_member, scope: !1911, file: !31, line: 120, baseType: !2002, size: 128, offset: 1024)
!2002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1911, file: !31, line: 120, size: 128, elements: !2003)
!2003 = !{!2004, !2010}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2002, file: !31, line: 121, baseType: !2005, size: 128)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2006, line: 6, size: 128, elements: !2007)
!2006 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2005, file: !2006, line: 7, baseType: !261, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2005, file: !2006, line: 8, baseType: !261, size: 64, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2002, file: !31, line: 122, baseType: !2011)
!2011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2005, elements: !1328)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1907, file: !662, line: 162, baseType: !156, size: 64, offset: 64)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1725, file: !662, line: 176, baseType: !565, size: 128, align: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, scope: !1721, file: !662, line: 179, baseType: !2015, size: 32, offset: 384)
!2015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1721, file: !662, line: 179, size: 32, elements: !2016)
!2016 = !{!2017, !2018, !2019, !2020}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2015, file: !662, line: 184, baseType: !708, size: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2015, file: !662, line: 192, baseType: !7, size: 32)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2015, file: !662, line: 194, baseType: !7, size: 32)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2015, file: !662, line: 195, baseType: !190, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1721, file: !662, line: 199, baseType: !708, size: 32, offset: 416)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1717, file: !755, line: 67, baseType: !166, size: 32, offset: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1717, file: !755, line: 68, baseType: !166, size: 32, offset: 96)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !815, file: !816, line: 1206, baseType: !190, size: 32, offset: 12736)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !815, file: !816, line: 1207, baseType: !190, size: 32, offset: 12768)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !815, file: !816, line: 1209, baseType: !157, size: 64, offset: 12800)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !815, file: !816, line: 1219, baseType: !261, size: 64, offset: 12864)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !815, file: !816, line: 1220, baseType: !261, size: 64, offset: 12928)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !815, file: !816, line: 1317, baseType: !190, size: 32, offset: 12992)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !815, file: !816, line: 1319, baseType: !814, size: 64, offset: 13056)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !815, file: !816, line: 1322, baseType: !2032, size: 64, offset: 13120)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2034, line: 56, size: 512, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2035 = !{!2036, !2037, !2038, !2039, !2040, !2041, !2042, !2044}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2033, file: !2034, line: 57, baseType: !2032, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2033, file: !2034, line: 58, baseType: !156, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2033, file: !2034, line: 59, baseType: !157, size: 64, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2033, file: !2034, line: 60, baseType: !157, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2033, file: !2034, line: 61, baseType: !1779, size: 64, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2033, file: !2034, line: 62, baseType: !7, size: 32, offset: 320)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2033, file: !2034, line: 63, baseType: !2043, size: 64, offset: 384)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !155, line: 153, baseType: !261)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2033, file: !2034, line: 64, baseType: !2045, size: 64, offset: 448)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !815, file: !816, line: 1326, baseType: !828, size: 32, offset: 13184)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !815, file: !816, line: 1342, baseType: !156, size: 64, offset: 13248)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !815, file: !816, line: 1343, baseType: !262, size: 64, offset: 13312)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !815, file: !816, line: 1344, baseType: !261, size: 64, offset: 13376)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !815, file: !816, line: 1345, baseType: !262, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !815, file: !816, line: 1346, baseType: !262, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !815, file: !816, line: 1347, baseType: !262, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !815, file: !816, line: 1348, baseType: !565, size: 128, align: 64, offset: 13504)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !815, file: !816, line: 1358, baseType: !2056, size: 34816, offset: 13824)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2057, line: 485, size: 34816, elements: !2058)
!2057 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2058 = !{!2059, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2088, !2089, !2090, !2091, !2092, !2093, !2096, !2097, !2098}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2056, file: !2057, line: 487, baseType: !2060, size: 192)
!2060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2061, size: 192, elements: !436)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2062, line: 16, size: 64, elements: !2063)
!2062 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2063 = !{!2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2061, file: !2062, line: 17, baseType: !614, size: 16)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2061, file: !2062, line: 18, baseType: !614, size: 16, offset: 16)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2061, file: !2062, line: 19, baseType: !614, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2061, file: !2062, line: 19, baseType: !614, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2061, file: !2062, line: 19, baseType: !614, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2061, file: !2062, line: 19, baseType: !614, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2061, file: !2062, line: 19, baseType: !614, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2061, file: !2062, line: 20, baseType: !614, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2061, file: !2062, line: 20, baseType: !614, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2061, file: !2062, line: 20, baseType: !614, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2061, file: !2062, line: 20, baseType: !614, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2061, file: !2062, line: 20, baseType: !614, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2061, file: !2062, line: 20, baseType: !614, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2056, file: !2057, line: 491, baseType: !157, size: 64, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2056, file: !2057, line: 495, baseType: !163, size: 16, offset: 256)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2056, file: !2057, line: 496, baseType: !163, size: 16, offset: 272)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2056, file: !2057, line: 497, baseType: !163, size: 16, offset: 288)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2056, file: !2057, line: 498, baseType: !163, size: 16, offset: 304)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2056, file: !2057, line: 502, baseType: !157, size: 64, offset: 320)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2056, file: !2057, line: 503, baseType: !157, size: 64, offset: 384)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2056, file: !2057, line: 514, baseType: !2085, size: 256, offset: 448)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2086, size: 256, elements: !759)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2057, line: 483, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2056, file: !2057, line: 516, baseType: !157, size: 64, offset: 704)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2056, file: !2057, line: 518, baseType: !157, size: 64, offset: 768)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2056, file: !2057, line: 520, baseType: !157, size: 64, offset: 832)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2056, file: !2057, line: 521, baseType: !157, size: 64, offset: 896)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2056, file: !2057, line: 522, baseType: !157, size: 64, offset: 960)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2056, file: !2057, line: 528, baseType: !2094, size: 64, offset: 1024)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2057, line: 10, flags: DIFlagFwdDecl)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2056, file: !2057, line: 535, baseType: !157, size: 64, offset: 1088)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2056, file: !2057, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2056, file: !2057, line: 540, baseType: !2099, size: 33280, offset: 1536)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2100, line: 317, size: 33280, elements: !2101)
!2100 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2101 = !{!2102, !2103, !2104}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2099, file: !2100, line: 330, baseType: !7, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2099, file: !2100, line: 337, baseType: !157, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2099, file: !2100, line: 348, baseType: !2105, size: 32768, offset: 512)
!2105 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2100, line: 304, size: 32768, elements: !2106)
!2106 = !{!2107, !2122, !2159, !2209, !2222}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2105, file: !2100, line: 305, baseType: !2108, size: 896)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2100, line: 12, size: 896, elements: !2109)
!2109 = !{!2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2121}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2108, file: !2100, line: 13, baseType: !257, size: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2108, file: !2100, line: 14, baseType: !257, size: 32, offset: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2108, file: !2100, line: 15, baseType: !257, size: 32, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2108, file: !2100, line: 16, baseType: !257, size: 32, offset: 96)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2108, file: !2100, line: 17, baseType: !257, size: 32, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2108, file: !2100, line: 18, baseType: !257, size: 32, offset: 160)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2108, file: !2100, line: 19, baseType: !257, size: 32, offset: 192)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2108, file: !2100, line: 22, baseType: !2118, size: 640, offset: 224)
!2118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 640, elements: !2119)
!2119 = !{!2120}
!2120 = !DISubrange(count: 20)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2108, file: !2100, line: 25, baseType: !257, size: 32, offset: 864)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2105, file: !2100, line: 306, baseType: !2123, size: 4096, align: 128)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2100, line: 34, size: 4096, align: 128, elements: !2124)
!2124 = !{!2125, !2126, !2127, !2128, !2129, !2144, !2145, !2146, !2148, !2150, !2154}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2123, file: !2100, line: 35, baseType: !614, size: 16)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2123, file: !2100, line: 36, baseType: !614, size: 16, offset: 16)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2123, file: !2100, line: 37, baseType: !614, size: 16, offset: 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2123, file: !2100, line: 38, baseType: !614, size: 16, offset: 48)
!2129 = !DIDerivedType(tag: DW_TAG_member, scope: !2123, file: !2100, line: 39, baseType: !2130, size: 128, offset: 64)
!2130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2123, file: !2100, line: 39, size: 128, elements: !2131)
!2131 = !{!2132, !2137}
!2132 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !2100, line: 40, baseType: !2133, size: 128)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2130, file: !2100, line: 40, size: 128, elements: !2134)
!2134 = !{!2135, !2136}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2133, file: !2100, line: 41, baseType: !261, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2133, file: !2100, line: 42, baseType: !261, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, scope: !2130, file: !2100, line: 44, baseType: !2138, size: 128)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2130, file: !2100, line: 44, size: 128, elements: !2139)
!2139 = !{!2140, !2141, !2142, !2143}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2138, file: !2100, line: 45, baseType: !257, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2138, file: !2100, line: 46, baseType: !257, size: 32, offset: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2138, file: !2100, line: 47, baseType: !257, size: 32, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2138, file: !2100, line: 48, baseType: !257, size: 32, offset: 96)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2123, file: !2100, line: 51, baseType: !257, size: 32, offset: 192)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2123, file: !2100, line: 52, baseType: !257, size: 32, offset: 224)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2123, file: !2100, line: 55, baseType: !2147, size: 1024, offset: 256)
!2147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 1024, elements: !270)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2123, file: !2100, line: 58, baseType: !2149, size: 2048, offset: 1280)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 2048, elements: !1487)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2123, file: !2100, line: 60, baseType: !2151, size: 384, offset: 3328)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 384, elements: !2152)
!2152 = !{!2153}
!2153 = !DISubrange(count: 12)
!2154 = !DIDerivedType(tag: DW_TAG_member, scope: !2123, file: !2100, line: 62, baseType: !2155, size: 384, offset: 3712)
!2155 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2123, file: !2100, line: 62, size: 384, elements: !2156)
!2156 = !{!2157, !2158}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2155, file: !2100, line: 63, baseType: !2151, size: 384)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2155, file: !2100, line: 64, baseType: !2151, size: 384)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2105, file: !2100, line: 307, baseType: !2160, size: 1088)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2100, line: 79, size: 1088, elements: !2161)
!2161 = !{!2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2208}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2160, file: !2100, line: 80, baseType: !257, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2160, file: !2100, line: 81, baseType: !257, size: 32, offset: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2160, file: !2100, line: 82, baseType: !257, size: 32, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2160, file: !2100, line: 83, baseType: !257, size: 32, offset: 96)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2160, file: !2100, line: 84, baseType: !257, size: 32, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2160, file: !2100, line: 85, baseType: !257, size: 32, offset: 160)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2160, file: !2100, line: 86, baseType: !257, size: 32, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2160, file: !2100, line: 88, baseType: !2118, size: 640, offset: 224)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2160, file: !2100, line: 89, baseType: !954, size: 8, offset: 864)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2160, file: !2100, line: 90, baseType: !954, size: 8, offset: 872)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2160, file: !2100, line: 91, baseType: !954, size: 8, offset: 880)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2160, file: !2100, line: 92, baseType: !954, size: 8, offset: 888)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2160, file: !2100, line: 93, baseType: !954, size: 8, offset: 896)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2160, file: !2100, line: 94, baseType: !954, size: 8, offset: 904)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2160, file: !2100, line: 95, baseType: !2177, size: 64, offset: 960)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2179, line: 11, size: 128, elements: !2180)
!2179 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2180 = !{!2181, !2182}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2178, file: !2179, line: 12, baseType: !593, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2178, file: !2179, line: 13, baseType: !2183, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2185, line: 56, size: 1344, elements: !2186)
!2185 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2186 = !{!2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2184, file: !2185, line: 61, baseType: !157, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2184, file: !2185, line: 62, baseType: !157, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2184, file: !2185, line: 63, baseType: !157, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2184, file: !2185, line: 64, baseType: !157, size: 64, offset: 192)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2184, file: !2185, line: 65, baseType: !157, size: 64, offset: 256)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2184, file: !2185, line: 66, baseType: !157, size: 64, offset: 320)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2184, file: !2185, line: 68, baseType: !157, size: 64, offset: 384)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2184, file: !2185, line: 69, baseType: !157, size: 64, offset: 448)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2184, file: !2185, line: 70, baseType: !157, size: 64, offset: 512)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2184, file: !2185, line: 71, baseType: !157, size: 64, offset: 576)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2184, file: !2185, line: 72, baseType: !157, size: 64, offset: 640)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2184, file: !2185, line: 73, baseType: !157, size: 64, offset: 704)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2184, file: !2185, line: 74, baseType: !157, size: 64, offset: 768)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2184, file: !2185, line: 75, baseType: !157, size: 64, offset: 832)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2184, file: !2185, line: 76, baseType: !157, size: 64, offset: 896)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2184, file: !2185, line: 81, baseType: !157, size: 64, offset: 960)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2184, file: !2185, line: 83, baseType: !157, size: 64, offset: 1024)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2184, file: !2185, line: 84, baseType: !157, size: 64, offset: 1088)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2184, file: !2185, line: 85, baseType: !157, size: 64, offset: 1152)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2184, file: !2185, line: 86, baseType: !157, size: 64, offset: 1216)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2184, file: !2185, line: 87, baseType: !157, size: 64, offset: 1280)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2160, file: !2100, line: 96, baseType: !257, size: 32, offset: 1024)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2105, file: !2100, line: 308, baseType: !2210, size: 4608, align: 512)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2100, line: 289, size: 4608, align: 512, elements: !2211)
!2211 = !{!2212, !2213, !2220}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2210, file: !2100, line: 290, baseType: !2123, size: 4096, align: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2210, file: !2100, line: 291, baseType: !2214, size: 512, offset: 4096)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2100, line: 268, size: 512, elements: !2215)
!2215 = !{!2216, !2217, !2218}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2214, file: !2100, line: 269, baseType: !261, size: 64)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2214, file: !2100, line: 270, baseType: !261, size: 64, offset: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2214, file: !2100, line: 271, baseType: !2219, size: 384, offset: 128)
!2219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 384, elements: !1230)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2210, file: !2100, line: 292, baseType: !2221, offset: 4608)
!2221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, elements: !1328)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2105, file: !2100, line: 309, baseType: !2223, size: 32768)
!2223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !954, size: 32768, elements: !2224)
!2224 = !{!2225}
!2225 = !DISubrange(count: 4096)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !811, file: !662, line: 378, baseType: !2227, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !807, file: !662, line: 384, baseType: !1104, size: 192, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !682, file: !662, line: 500, baseType: !283, offset: 6656)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !682, file: !662, line: 501, baseType: !2231, size: 64, offset: 6656)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !662, line: 387, flags: DIFlagFwdDecl)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !682, file: !662, line: 516, baseType: !1318, size: 64, offset: 6720)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !682, file: !662, line: 519, baseType: !585, size: 64, offset: 6784)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !682, file: !662, line: 521, baseType: !2236, size: 64, offset: 6848)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !662, line: 521, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !682, file: !662, line: 545, baseType: !708, size: 32, offset: 6912)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !682, file: !662, line: 548, baseType: !362, size: 8, offset: 6944)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !682, file: !662, line: 550, baseType: !2241, offset: 6952)
!2241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2242, line: 142, elements: !297)
!2242 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !682, file: !662, line: 554, baseType: !1573, size: 256, offset: 6976)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !682, file: !662, line: 557, baseType: !257, size: 32, offset: 7232)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !679, file: !662, line: 565, baseType: !2246, offset: 7296)
!2246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !157, elements: !2247)
!2247 = !{!2248}
!2248 = !DISubrange(count: -1)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !661, file: !662, line: 333, baseType: !2250, size: 64, offset: 576)
!2250 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !701, line: 284, baseType: !2251)
!2251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !701, line: 284, size: 64, elements: !2252)
!2252 = !{!2253}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2251, file: !701, line: 284, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !706, line: 19, baseType: !157)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !661, file: !662, line: 334, baseType: !157, size: 64, offset: 640)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !661, file: !662, line: 343, baseType: !2257, size: 256, offset: 704)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !661, file: !662, line: 340, size: 256, elements: !2258)
!2258 = !{!2259, !2260}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2257, file: !662, line: 341, baseType: !669, size: 192, align: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2257, file: !662, line: 342, baseType: !157, size: 64, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !661, file: !662, line: 351, baseType: !375, size: 128, offset: 960)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !661, file: !662, line: 353, baseType: !2263, size: 64, offset: 1088)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !662, line: 353, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !661, file: !662, line: 356, baseType: !2266, size: 64, offset: 1152)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2268)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !2269)
!2269 = !{!2270, !2274, !2275, !2279, !2283, !2284, !2288, !2292, !2296, !2297, !2298, !2302, !2306}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2268, file: !14, line: 558, baseType: !2271, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{null, !660}
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2268, file: !14, line: 559, baseType: !2271, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !2268, file: !14, line: 560, baseType: !2276, size: 64, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!190, !660, !157}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2268, file: !14, line: 561, baseType: !2280, size: 64, offset: 192)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!190, !660}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2268, file: !14, line: 562, baseType: !1960, size: 64, offset: 256)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2268, file: !14, line: 563, baseType: !2285, size: 64, offset: 320)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!1963, !1964, !13}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2268, file: !14, line: 565, baseType: !2289, size: 64, offset: 384)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{null, !1964, !157, !157}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2268, file: !14, line: 567, baseType: !2293, size: 64, offset: 448)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!157, !660}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2268, file: !14, line: 571, baseType: !1960, size: 64, offset: 512)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2268, file: !14, line: 574, baseType: !1960, size: 64, offset: 576)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2268, file: !14, line: 579, baseType: !2299, size: 64, offset: 640)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!190, !660, !157, !156, !190, !190}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2268, file: !14, line: 585, baseType: !2303, size: 64, offset: 704)
!2303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{!167, !660}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2268, file: !14, line: 615, baseType: !2307, size: 64, offset: 768)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DISubroutineType(types: !2309)
!2309 = !{!1720, !660, !157}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !661, file: !662, line: 359, baseType: !157, size: 64, offset: 1216)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !661, file: !662, line: 361, baseType: !585, size: 64, offset: 1280)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !661, file: !662, line: 362, baseType: !156, size: 64, offset: 1344)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !661, file: !662, line: 365, baseType: !517, size: 64, offset: 1408)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !661, file: !662, line: 373, baseType: !2315, offset: 1472)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !662, line: 296, elements: !297)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !578, file: !44, line: 1836, baseType: !157, size: 64, offset: 832)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !578, file: !44, line: 1837, baseType: !187, size: 64, offset: 896)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !578, file: !44, line: 1838, baseType: !2319, size: 64, offset: 960)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!190, !585, !2322}
!2322 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !156)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !578, file: !44, line: 1839, baseType: !187, size: 64, offset: 1024)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !578, file: !44, line: 1840, baseType: !2325, size: 64, offset: 1088)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!190, !585, !386, !386, !190}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !578, file: !44, line: 1841, baseType: !2329, size: 64, offset: 1152)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!190, !190, !585, !190}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !578, file: !44, line: 1842, baseType: !2333, size: 64, offset: 1216)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!190, !585, !190, !2336}
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2338)
!2338 = !{!2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2370, !2371, !2372, !2385, !2416}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2337, file: !44, line: 1063, baseType: !2336, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2337, file: !44, line: 1064, baseType: !375, size: 128, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2337, file: !44, line: 1065, baseType: !424, size: 128, offset: 192)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2337, file: !44, line: 1066, baseType: !375, size: 128, offset: 320)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2337, file: !44, line: 1069, baseType: !375, size: 128, offset: 448)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2337, file: !44, line: 1072, baseType: !2322, size: 64, offset: 576)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2337, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2337, file: !44, line: 1074, baseType: !266, size: 8, offset: 672)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2337, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2337, file: !44, line: 1076, baseType: !190, size: 32, offset: 736)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2337, file: !44, line: 1077, baseType: !1083, size: 128, offset: 768)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2337, file: !44, line: 1078, baseType: !585, size: 64, offset: 896)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2337, file: !44, line: 1079, baseType: !386, size: 64, offset: 960)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2337, file: !44, line: 1080, baseType: !386, size: 64, offset: 1024)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2337, file: !44, line: 1082, baseType: !2354, size: 64, offset: 1088)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2356)
!2356 = !{!2357, !2365, !2366, !2367, !2368, !2369}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2355, file: !44, line: 1315, baseType: !2358)
!2358 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2359, line: 20, baseType: !2360)
!2359 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2359, line: 11, elements: !2361)
!2361 = !{!2362}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2360, file: !2359, line: 12, baseType: !2363)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !295, line: 33, baseType: !2364)
!2364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 31, elements: !297)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2355, file: !44, line: 1316, baseType: !190, size: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2355, file: !44, line: 1317, baseType: !190, size: 32, offset: 32)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2355, file: !44, line: 1318, baseType: !2354, size: 64, offset: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2355, file: !44, line: 1319, baseType: !585, size: 64, offset: 128)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2355, file: !44, line: 1320, baseType: !565, size: 128, align: 64, offset: 192)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2337, file: !44, line: 1084, baseType: !157, size: 64, offset: 1152)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2337, file: !44, line: 1085, baseType: !157, size: 64, offset: 1216)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2337, file: !44, line: 1087, baseType: !2373, size: 64, offset: 1280)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2375)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2376)
!2376 = !{!2377, !2381}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2375, file: !44, line: 1012, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2379, size: 64)
!2379 = !DISubroutineType(types: !2380)
!2380 = !{null, !2336, !2336}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2375, file: !44, line: 1013, baseType: !2382, size: 64, offset: 64)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{null, !2336}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2337, file: !44, line: 1088, baseType: !2386, size: 64, offset: 1344)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2388)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2389)
!2389 = !{!2390, !2394, !2398, !2399, !2403, !2407, !2411, !2415}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2388, file: !44, line: 1017, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!2322, !2322}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2388, file: !44, line: 1018, baseType: !2395, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{null, !2322}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2388, file: !44, line: 1019, baseType: !2382, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2388, file: !44, line: 1020, baseType: !2400, size: 64, offset: 192)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!190, !2336, !190}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2388, file: !44, line: 1021, baseType: !2404, size: 64, offset: 256)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!362, !2336}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2388, file: !44, line: 1022, baseType: !2408, size: 64, offset: 320)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!190, !2336, !190, !378}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2388, file: !44, line: 1023, baseType: !2412, size: 64, offset: 384)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{null, !2336, !1780}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2388, file: !44, line: 1024, baseType: !2404, size: 64, offset: 448)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2337, file: !44, line: 1097, baseType: !2417, size: 256, offset: 1408)
!2417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2337, file: !44, line: 1089, size: 256, elements: !2418)
!2418 = !{!2419, !2428, !2434}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2417, file: !44, line: 1090, baseType: !2420, size: 256)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2421, line: 10, size: 256, elements: !2422)
!2421 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2422 = !{!2423, !2424, !2427}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2420, file: !2421, line: 11, baseType: !257, size: 32)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2420, file: !2421, line: 12, baseType: !2425, size: 64, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2421, line: 5, flags: DIFlagFwdDecl)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2420, file: !2421, line: 13, baseType: !375, size: 128, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2417, file: !44, line: 1091, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2421, line: 17, size: 64, elements: !2430)
!2430 = !{!2431}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2429, file: !2421, line: 18, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2421, line: 16, flags: DIFlagFwdDecl)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2417, file: !44, line: 1096, baseType: !2435, size: 192)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2417, file: !44, line: 1092, size: 192, elements: !2436)
!2436 = !{!2437, !2438, !2439}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2435, file: !44, line: 1093, baseType: !375, size: 128)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2435, file: !44, line: 1094, baseType: !190, size: 32, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2435, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !578, file: !44, line: 1843, baseType: !2441, size: 64, offset: 1280)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!590, !585, !1720, !190, !504, !536, !190}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !578, file: !44, line: 1844, baseType: !691, size: 64, offset: 1344)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !578, file: !44, line: 1845, baseType: !2446, size: 64, offset: 1408)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!190, !190}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !578, file: !44, line: 1846, baseType: !2333, size: 64, offset: 1472)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !578, file: !44, line: 1847, baseType: !2451, size: 64, offset: 1536)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DISubroutineType(types: !2453)
!2453 = !{!590, !1714, !585, !536, !504, !7}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !578, file: !44, line: 1848, baseType: !2455, size: 64, offset: 1600)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!590, !585, !536, !1714, !504, !7}
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !578, file: !44, line: 1849, baseType: !2459, size: 64, offset: 1664)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!190, !585, !593, !2462, !1780}
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !578, file: !44, line: 1850, baseType: !2464, size: 64, offset: 1728)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!593, !585, !190, !386, !386}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !578, file: !44, line: 1852, baseType: !2468, size: 64, offset: 1792)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{null, !498, !585}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !578, file: !44, line: 1856, baseType: !2472, size: 64, offset: 1856)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!590, !585, !386, !585, !386, !504, !7}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !578, file: !44, line: 1858, baseType: !2476, size: 64, offset: 1920)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!386, !585, !386, !585, !386, !386, !7}
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !578, file: !44, line: 1861, baseType: !2325, size: 64, offset: 1984)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !553, file: !44, line: 929, baseType: !283, offset: 384)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !553, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !553, file: !44, line: 931, baseType: !517, size: 64, offset: 448)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !553, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !553, file: !44, line: 933, baseType: !2485, size: 32, offset: 544)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !155, line: 150, baseType: !7)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !553, file: !44, line: 934, baseType: !513, size: 192, offset: 576)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !553, file: !44, line: 935, baseType: !386, size: 64, offset: 768)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !553, file: !44, line: 936, baseType: !2489, size: 192, offset: 832)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !2490)
!2490 = !{!2491, !2492, !2493, !2494, !2495, !2496}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2489, file: !44, line: 886, baseType: !2358)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2489, file: !44, line: 887, baseType: !1073, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2489, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2489, file: !44, line: 889, baseType: !198, size: 32, offset: 96)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2489, file: !44, line: 889, baseType: !198, size: 32, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2489, file: !44, line: 890, baseType: !190, size: 32, offset: 160)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !553, file: !44, line: 937, baseType: !1149, size: 64, offset: 1024)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !553, file: !44, line: 938, baseType: !2499, size: 256, offset: 1088)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !2500)
!2500 = !{!2501, !2502, !2503, !2504, !2505, !2506}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2499, file: !44, line: 897, baseType: !157, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2499, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2499, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2499, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2499, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2499, file: !44, line: 904, baseType: !386, size: 64, offset: 192)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !553, file: !44, line: 940, baseType: !261, size: 64, offset: 1344)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !553, file: !44, line: 945, baseType: !156, size: 64, offset: 1408)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !553, file: !44, line: 949, baseType: !375, size: 128, offset: 1472)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !553, file: !44, line: 950, baseType: !375, size: 128, offset: 1600)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !553, file: !44, line: 952, baseType: !1732, size: 64, offset: 1728)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !553, file: !44, line: 953, baseType: !1841, size: 32, offset: 1792)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !553, file: !44, line: 954, baseType: !1841, size: 32, offset: 1824)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !499, file: !500, line: 28, baseType: !156, size: 64, offset: 832)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !444, file: !44, line: 1955, baseType: !495, size: 64, offset: 1088)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !444, file: !44, line: 1956, baseType: !495, size: 64, offset: 1152)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !444, file: !44, line: 1957, baseType: !495, size: 64, offset: 1216)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !444, file: !44, line: 1963, baseType: !2519, size: 64, offset: 1280)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!190, !371, !1720, !154}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !444, file: !44, line: 1964, baseType: !2523, size: 64, offset: 1344)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!593, !371, !2526}
!2526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2527, size: 64)
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2528, line: 12, size: 256, elements: !2529)
!2528 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2529 = !{!2530, !2531, !2532, !2533, !2534}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2527, file: !2528, line: 13, baseType: !154, size: 32)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2527, file: !2528, line: 16, baseType: !190, size: 32, offset: 32)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2527, file: !2528, line: 23, baseType: !157, size: 64, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2527, file: !2528, line: 30, baseType: !157, size: 64, offset: 128)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2527, file: !2528, line: 33, baseType: !2535, size: 64, offset: 192)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !662, line: 27, flags: DIFlagFwdDecl)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !444, file: !44, line: 1966, baseType: !2523, size: 64, offset: 1408)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !372, file: !44, line: 1424, baseType: !2539, size: 64, offset: 448)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2541)
!2541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2542)
!2542 = !{!2543, !2589, !2593, !2597, !2598, !2599, !2600, !2601, !2606, !2611, !2615}
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2541, file: !38, line: 323, baseType: !2544, size: 64)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!190, !2547}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2549)
!2549 = !{!2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2574, !2575, !2576}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2548, file: !38, line: 295, baseType: !424, size: 128)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2548, file: !38, line: 296, baseType: !375, size: 128, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2548, file: !38, line: 297, baseType: !375, size: 128, offset: 256)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2548, file: !38, line: 298, baseType: !375, size: 128, offset: 384)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2548, file: !38, line: 299, baseType: !513, size: 192, offset: 512)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2548, file: !38, line: 300, baseType: !283, offset: 704)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2548, file: !38, line: 301, baseType: !708, size: 32, offset: 704)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2548, file: !38, line: 302, baseType: !371, size: 64, offset: 768)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2548, file: !38, line: 303, baseType: !2559, size: 64, offset: 832)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2560)
!2560 = !{!2561, !2573}
!2561 = !DIDerivedType(tag: DW_TAG_member, scope: !2559, file: !38, line: 69, baseType: !2562, size: 32)
!2562 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2559, file: !38, line: 69, size: 32, elements: !2563)
!2563 = !{!2564, !2565, !2566}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2562, file: !38, line: 70, baseType: !198, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2562, file: !38, line: 71, baseType: !207, size: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2562, file: !38, line: 72, baseType: !2567, size: 32)
!2567 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2568, line: 24, baseType: !2569)
!2568 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2568, line: 22, size: 32, elements: !2570)
!2570 = !{!2571}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2569, file: !2568, line: 23, baseType: !2572, size: 32)
!2572 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2568, line: 20, baseType: !204)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2559, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2548, file: !38, line: 304, baseType: !386, size: 64, offset: 896)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2548, file: !38, line: 305, baseType: !157, size: 64, offset: 960)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2548, file: !38, line: 306, baseType: !2577, size: 576, offset: 1024)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2578)
!2578 = !{!2579, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2577, file: !38, line: 206, baseType: !2580, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !388)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2577, file: !38, line: 207, baseType: !2580, size: 64, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2577, file: !38, line: 208, baseType: !2580, size: 64, offset: 128)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2577, file: !38, line: 209, baseType: !2580, size: 64, offset: 192)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2577, file: !38, line: 210, baseType: !2580, size: 64, offset: 256)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2577, file: !38, line: 211, baseType: !2580, size: 64, offset: 320)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2577, file: !38, line: 212, baseType: !2580, size: 64, offset: 384)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2577, file: !38, line: 213, baseType: !1201, size: 64, offset: 448)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2577, file: !38, line: 214, baseType: !1201, size: 64, offset: 512)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2541, file: !38, line: 324, baseType: !2590, size: 64, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!2547, !371, !190}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2541, file: !38, line: 325, baseType: !2594, size: 64, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DISubroutineType(types: !2596)
!2596 = !{null, !2547}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2541, file: !38, line: 326, baseType: !2544, size: 64, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2541, file: !38, line: 327, baseType: !2544, size: 64, offset: 256)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2541, file: !38, line: 328, baseType: !2544, size: 64, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2541, file: !38, line: 329, baseType: !472, size: 64, offset: 384)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2541, file: !38, line: 332, baseType: !2602, size: 64, offset: 448)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!2605, !191}
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2541, file: !38, line: 333, baseType: !2607, size: 64, offset: 512)
!2607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2608, size: 64)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!190, !191, !2610}
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2567, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2541, file: !38, line: 335, baseType: !2612, size: 64, offset: 576)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!190, !191, !2605}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2541, file: !38, line: 337, baseType: !2616, size: 64, offset: 640)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!190, !371, !2619}
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !372, file: !44, line: 1425, baseType: !2621, size: 64, offset: 512)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2623)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2624)
!2624 = !{!2625, !2629, !2630, !2634, !2635, !2636, !2651, !2674, !2678, !2679, !2702}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2623, file: !38, line: 429, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!190, !371, !190, !190, !360}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2623, file: !38, line: 430, baseType: !472, size: 64, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2623, file: !38, line: 431, baseType: !2631, size: 64, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!190, !371, !7}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2623, file: !38, line: 432, baseType: !2631, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2623, file: !38, line: 433, baseType: !472, size: 64, offset: 256)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2623, file: !38, line: 434, baseType: !2637, size: 64, offset: 320)
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DISubroutineType(types: !2639)
!2639 = !{!190, !371, !190, !2640}
!2640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2642)
!2642 = !{!2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2641, file: !38, line: 416, baseType: !190, size: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2641, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2641, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2641, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2641, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2641, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2641, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2641, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2623, file: !38, line: 435, baseType: !2652, size: 64, offset: 384)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!190, !371, !2559, !2655}
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2657)
!2657 = !{!2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2656, file: !38, line: 344, baseType: !190, size: 32)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2656, file: !38, line: 345, baseType: !261, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2656, file: !38, line: 346, baseType: !261, size: 64, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2656, file: !38, line: 347, baseType: !261, size: 64, offset: 192)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2656, file: !38, line: 348, baseType: !261, size: 64, offset: 256)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2656, file: !38, line: 349, baseType: !261, size: 64, offset: 320)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2656, file: !38, line: 350, baseType: !261, size: 64, offset: 384)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2656, file: !38, line: 351, baseType: !523, size: 64, offset: 448)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2656, file: !38, line: 353, baseType: !523, size: 64, offset: 512)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2656, file: !38, line: 354, baseType: !190, size: 32, offset: 576)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2656, file: !38, line: 355, baseType: !190, size: 32, offset: 608)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2656, file: !38, line: 356, baseType: !261, size: 64, offset: 640)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2656, file: !38, line: 357, baseType: !261, size: 64, offset: 704)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2656, file: !38, line: 358, baseType: !261, size: 64, offset: 768)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2656, file: !38, line: 359, baseType: !523, size: 64, offset: 832)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2656, file: !38, line: 360, baseType: !190, size: 32, offset: 896)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2623, file: !38, line: 436, baseType: !2675, size: 64, offset: 448)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!190, !371, !2619, !2655}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2623, file: !38, line: 438, baseType: !2652, size: 64, offset: 512)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2623, file: !38, line: 439, baseType: !2680, size: 64, offset: 576)
!2680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2681, size: 64)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!190, !371, !2683}
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2685)
!2685 = !{!2686, !2687}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2684, file: !38, line: 410, baseType: !7, size: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2684, file: !38, line: 411, baseType: !2688, size: 1344, offset: 64)
!2688 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2689, size: 1344, elements: !436)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2690)
!2690 = !{!2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2701}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2689, file: !38, line: 396, baseType: !7, size: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2689, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2689, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2689, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2689, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2689, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2689, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2689, file: !38, line: 404, baseType: !170, size: 64, offset: 256)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2689, file: !38, line: 405, baseType: !2700, size: 64, offset: 320)
!2700 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !155, line: 126, baseType: !261)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2689, file: !38, line: 406, baseType: !2700, size: 64, offset: 384)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2623, file: !38, line: 440, baseType: !2631, size: 64, offset: 640)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !372, file: !44, line: 1426, baseType: !2704, size: 64, offset: 576)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2706)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !372, file: !44, line: 1427, baseType: !157, size: 64, offset: 640)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !372, file: !44, line: 1428, baseType: !157, size: 64, offset: 704)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !372, file: !44, line: 1429, baseType: !157, size: 64, offset: 768)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !372, file: !44, line: 1430, baseType: !223, size: 64, offset: 832)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !372, file: !44, line: 1431, baseType: !719, size: 256, offset: 896)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !372, file: !44, line: 1432, baseType: !190, size: 32, offset: 1152)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !372, file: !44, line: 1433, baseType: !708, size: 32, offset: 1184)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !372, file: !44, line: 1437, baseType: !2715, size: 64, offset: 1216)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2718)
!2718 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !372, file: !44, line: 1449, baseType: !2720, size: 64, offset: 1280)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !240, line: 34, size: 64, elements: !2721)
!2721 = !{!2722}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2720, file: !240, line: 35, baseType: !243, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !372, file: !44, line: 1450, baseType: !375, size: 128, offset: 1344)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !372, file: !44, line: 1451, baseType: !2725, size: 64, offset: 1472)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !372, file: !44, line: 1452, baseType: !1531, size: 64, offset: 1536)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !372, file: !44, line: 1453, baseType: !2729, size: 64, offset: 1600)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !372, file: !44, line: 1454, baseType: !424, size: 128, offset: 1664)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !372, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !372, file: !44, line: 1456, baseType: !2734, size: 2432, offset: 1856)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2735)
!2735 = !{!2736, !2737, !2738, !2740, !2772}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2734, file: !38, line: 519, baseType: !7, size: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2734, file: !38, line: 520, baseType: !719, size: 256, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2734, file: !38, line: 521, baseType: !2739, size: 192, offset: 320)
!2739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 192, elements: !436)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2734, file: !38, line: 522, baseType: !2741, size: 1728, offset: 512)
!2741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2742, size: 1728, elements: !436)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2743)
!2743 = !{!2744, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2742, file: !38, line: 223, baseType: !2745, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2747)
!2747 = !{!2748, !2749, !2762, !2763}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2746, file: !38, line: 444, baseType: !190, size: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2746, file: !38, line: 445, baseType: !2750, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2752)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2753)
!2753 = !{!2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2752, file: !38, line: 311, baseType: !472, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2752, file: !38, line: 312, baseType: !472, size: 64, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2752, file: !38, line: 313, baseType: !472, size: 64, offset: 128)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2752, file: !38, line: 314, baseType: !472, size: 64, offset: 192)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2752, file: !38, line: 315, baseType: !2544, size: 64, offset: 256)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2752, file: !38, line: 316, baseType: !2544, size: 64, offset: 320)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2752, file: !38, line: 317, baseType: !2544, size: 64, offset: 384)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2752, file: !38, line: 318, baseType: !2616, size: 64, offset: 448)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2746, file: !38, line: 446, baseType: !415, size: 64, offset: 128)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2746, file: !38, line: 447, baseType: !2745, size: 64, offset: 192)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2742, file: !38, line: 224, baseType: !190, size: 32, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2742, file: !38, line: 226, baseType: !375, size: 128, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2742, file: !38, line: 227, baseType: !157, size: 64, offset: 256)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2742, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2742, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2742, file: !38, line: 230, baseType: !2580, size: 64, offset: 384)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2742, file: !38, line: 231, baseType: !2580, size: 64, offset: 448)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2742, file: !38, line: 232, baseType: !156, size: 64, offset: 512)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2734, file: !38, line: 523, baseType: !2773, size: 192, offset: 2240)
!2773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2750, size: 192, elements: !436)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !372, file: !44, line: 1458, baseType: !2775, size: 2112, offset: 4288)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2776)
!2776 = !{!2777, !2778, !2779}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2775, file: !44, line: 1411, baseType: !190, size: 32)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2775, file: !44, line: 1412, baseType: !1083, size: 128, offset: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2775, file: !44, line: 1413, baseType: !2780, size: 1920, offset: 192)
!2780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2781, size: 1920, elements: !436)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2782, line: 12, size: 640, elements: !2783)
!2782 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2783 = !{!2784, !2792, !2794, !2799, !2800}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2781, file: !2782, line: 13, baseType: !2785, size: 320)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2786, line: 17, size: 320, elements: !2787)
!2786 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2787 = !{!2788, !2789, !2790, !2791}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2785, file: !2786, line: 18, baseType: !190, size: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2785, file: !2786, line: 19, baseType: !190, size: 32, offset: 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2785, file: !2786, line: 20, baseType: !1083, size: 128, offset: 64)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2785, file: !2786, line: 22, baseType: !565, size: 128, align: 64, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2781, file: !2782, line: 14, baseType: !2793, size: 64, offset: 320)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2781, file: !2782, line: 15, baseType: !2795, size: 64, offset: 384)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2796, line: 16, size: 64, elements: !2797)
!2796 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2797 = !{!2798}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2795, file: !2796, line: 17, baseType: !814, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2781, file: !2782, line: 16, baseType: !1083, size: 128, offset: 448)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2781, file: !2782, line: 17, baseType: !708, size: 32, offset: 576)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !372, file: !44, line: 1465, baseType: !156, size: 64, offset: 6400)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !372, file: !44, line: 1468, baseType: !257, size: 32, offset: 6464)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !372, file: !44, line: 1470, baseType: !1201, size: 64, offset: 6528)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !372, file: !44, line: 1471, baseType: !1201, size: 64, offset: 6592)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !372, file: !44, line: 1473, baseType: !166, size: 32, offset: 6656)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !372, file: !44, line: 1474, baseType: !2807, size: 64, offset: 6720)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !372, file: !44, line: 1477, baseType: !2810, size: 256, offset: 6784)
!2810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 256, elements: !270)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !372, file: !44, line: 1478, baseType: !2812, size: 128, offset: 7040)
!2812 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2813, line: 18, baseType: !2814)
!2813 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2814 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2813, line: 16, size: 128, elements: !2815)
!2815 = !{!2816}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2814, file: !2813, line: 17, baseType: !2817, size: 128)
!2817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !955, size: 128, elements: !1340)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !372, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !372, file: !44, line: 1481, baseType: !2485, size: 32, offset: 7200)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !372, file: !44, line: 1487, baseType: !513, size: 192, offset: 7232)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !372, file: !44, line: 1493, baseType: !167, size: 64, offset: 7424)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !372, file: !44, line: 1495, baseType: !300, size: 64, offset: 7488)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !372, file: !44, line: 1500, baseType: !190, size: 32, offset: 7552)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !372, file: !44, line: 1502, baseType: !2825, size: 448, offset: 7616)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2528, line: 60, size: 448, elements: !2826)
!2826 = !{!2827, !2832, !2833, !2834, !2835, !2836, !2837}
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2825, file: !2528, line: 61, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2829, size: 64)
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!157, !2831, !2526}
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2825, file: !2528, line: 63, baseType: !2828, size: 64, offset: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2825, file: !2528, line: 66, baseType: !593, size: 64, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2825, file: !2528, line: 67, baseType: !190, size: 32, offset: 192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2825, file: !2528, line: 68, baseType: !7, size: 32, offset: 224)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2825, file: !2528, line: 71, baseType: !375, size: 128, offset: 256)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2825, file: !2528, line: 77, baseType: !2838, size: 64, offset: 384)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !372, file: !44, line: 1505, baseType: !517, size: 64, offset: 8064)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !372, file: !44, line: 1508, baseType: !517, size: 64, offset: 8128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !372, file: !44, line: 1511, baseType: !190, size: 32, offset: 8192)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !372, file: !44, line: 1514, baseType: !1841, size: 32, offset: 8224)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !372, file: !44, line: 1517, baseType: !2844, size: 64, offset: 8256)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1574, line: 18, flags: DIFlagFwdDecl)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !372, file: !44, line: 1518, baseType: !420, size: 64, offset: 8320)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !372, file: !44, line: 1525, baseType: !1318, size: 64, offset: 8384)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !372, file: !44, line: 1532, baseType: !2849, size: 64, offset: 8448)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2850, line: 52, size: 64, elements: !2851)
!2850 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2851 = !{!2852}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2849, file: !2850, line: 53, baseType: !2853, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2850, line: 40, size: 256, elements: !2855)
!2855 = !{!2856, !2857, !2862}
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2854, file: !2850, line: 42, baseType: !283)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2854, file: !2850, line: 44, baseType: !2858, size: 192)
!2858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2850, line: 28, size: 192, elements: !2859)
!2859 = !{!2860, !2861}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2858, file: !2850, line: 29, baseType: !375, size: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2858, file: !2850, line: 31, baseType: !593, size: 64, offset: 128)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2854, file: !2850, line: 49, baseType: !593, size: 64, offset: 192)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !372, file: !44, line: 1533, baseType: !2849, size: 64, offset: 8512)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !372, file: !44, line: 1534, baseType: !565, size: 128, align: 64, offset: 8576)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !372, file: !44, line: 1535, baseType: !1573, size: 256, offset: 8704)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !372, file: !44, line: 1537, baseType: !513, size: 192, offset: 8960)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !372, file: !44, line: 1542, baseType: !190, size: 32, offset: 9152)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !372, file: !44, line: 1545, baseType: !283, offset: 9184)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !372, file: !44, line: 1546, baseType: !375, size: 128, offset: 9216)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !372, file: !44, line: 1548, baseType: !283, offset: 9344)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !372, file: !44, line: 1549, baseType: !375, size: 128, offset: 9344)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !224, file: !225, line: 104, baseType: !157, size: 64, offset: 896)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !224, file: !225, line: 105, baseType: !156, size: 64, offset: 960)
!2874 = !DIDerivedType(tag: DW_TAG_member, scope: !224, file: !225, line: 107, baseType: !2875, size: 128, offset: 1024)
!2875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !224, file: !225, line: 107, size: 128, elements: !2876)
!2876 = !{!2877, !2878}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2875, file: !225, line: 108, baseType: !375, size: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2875, file: !225, line: 109, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !224, file: !225, line: 111, baseType: !375, size: 128, offset: 1152)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !224, file: !225, line: 112, baseType: !375, size: 128, offset: 1280)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !224, file: !225, line: 120, baseType: !2883, size: 128, offset: 1408)
!2883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !224, file: !225, line: 116, size: 128, elements: !2884)
!2884 = !{!2885, !2886, !2887}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2883, file: !225, line: 117, baseType: !424, size: 128)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2883, file: !225, line: 118, baseType: !239, size: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2883, file: !225, line: 119, baseType: !565, size: 128, align: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !217, file: !44, line: 1866, baseType: !2889, size: 64, offset: 64)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!167, !223, !191, !2892}
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2894, line: 10, size: 128, elements: !2895)
!2894 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!2895 = !{!2896, !2900}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2893, file: !2894, line: 11, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{null, !156}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2893, file: !2894, line: 12, baseType: !156, size: 64, offset: 64)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !217, file: !44, line: 1867, baseType: !2902, size: 64, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!190, !191, !190}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !217, file: !44, line: 1868, baseType: !2906, size: 64, offset: 192)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DISubroutineType(types: !2908)
!2908 = !{!2909, !191, !190}
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !217, file: !44, line: 1870, baseType: !2912, size: 64, offset: 256)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!190, !223, !343, !190}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !217, file: !44, line: 1872, baseType: !2916, size: 64, offset: 320)
!2916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2917, size: 64)
!2917 = !DISubroutineType(types: !2918)
!2918 = !{!190, !191, !223, !195, !362}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !217, file: !44, line: 1873, baseType: !2920, size: 64, offset: 384)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DISubroutineType(types: !2922)
!2922 = !{!190, !223, !191, !223}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !217, file: !44, line: 1874, baseType: !2924, size: 64, offset: 448)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!190, !191, !223}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !217, file: !44, line: 1875, baseType: !2928, size: 64, offset: 512)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!190, !191, !223, !167}
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !217, file: !44, line: 1876, baseType: !2932, size: 64, offset: 576)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!190, !191, !223, !195}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !217, file: !44, line: 1877, baseType: !2924, size: 64, offset: 640)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !217, file: !44, line: 1878, baseType: !2937, size: 64, offset: 704)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!190, !191, !223, !195, !381}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !217, file: !44, line: 1879, baseType: !2941, size: 64, offset: 768)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!190, !191, !223, !191, !223, !7}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !217, file: !44, line: 1881, baseType: !2945, size: 64, offset: 832)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!190, !223, !2948}
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !2950)
!2950 = !{!2951, !2952, !2953, !2954, !2955, !2956, !2961, !2962, !2963}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !2949, file: !44, line: 220, baseType: !7, size: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !2949, file: !44, line: 221, baseType: !195, size: 16, offset: 32)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !2949, file: !44, line: 222, baseType: !198, size: 32, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !2949, file: !44, line: 223, baseType: !207, size: 32, offset: 96)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !2949, file: !44, line: 224, baseType: !386, size: 64, offset: 128)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !2949, file: !44, line: 225, baseType: !2957, size: 128, offset: 192)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1202, line: 13, size: 128, elements: !2958)
!2958 = !{!2959, !2960}
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2957, file: !1202, line: 14, baseType: !1201, size: 64)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2957, file: !1202, line: 15, baseType: !593, size: 64, offset: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !2949, file: !44, line: 226, baseType: !2957, size: 128, offset: 320)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !2949, file: !44, line: 227, baseType: !2957, size: 128, offset: 448)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !2949, file: !44, line: 234, baseType: !585, size: 64, offset: 576)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !217, file: !44, line: 1882, baseType: !2965, size: 64, offset: 896)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!190, !360, !2968, !257, !7}
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !2970, line: 22, size: 1152, elements: !2971)
!2970 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!2971 = !{!2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !2969, file: !2970, line: 23, baseType: !257, size: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2969, file: !2970, line: 24, baseType: !195, size: 16, offset: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !2969, file: !2970, line: 25, baseType: !7, size: 32, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !2969, file: !2970, line: 26, baseType: !1209, size: 32, offset: 96)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2969, file: !2970, line: 27, baseType: !261, size: 64, offset: 128)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !2969, file: !2970, line: 28, baseType: !261, size: 64, offset: 192)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2969, file: !2970, line: 37, baseType: !261, size: 64, offset: 256)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2969, file: !2970, line: 38, baseType: !381, size: 32, offset: 320)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !2969, file: !2970, line: 39, baseType: !381, size: 32, offset: 352)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2969, file: !2970, line: 40, baseType: !198, size: 32, offset: 384)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2969, file: !2970, line: 41, baseType: !207, size: 32, offset: 416)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2969, file: !2970, line: 42, baseType: !386, size: 64, offset: 448)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !2969, file: !2970, line: 43, baseType: !2957, size: 128, offset: 512)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !2969, file: !2970, line: 44, baseType: !2957, size: 128, offset: 640)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !2969, file: !2970, line: 45, baseType: !2957, size: 128, offset: 768)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !2969, file: !2970, line: 46, baseType: !2957, size: 128, offset: 896)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2969, file: !2970, line: 47, baseType: !261, size: 64, offset: 1024)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !2969, file: !2970, line: 48, baseType: !261, size: 64, offset: 1088)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !217, file: !44, line: 1883, baseType: !2991, size: 64, offset: 960)
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DISubroutineType(types: !2993)
!2993 = !{!590, !223, !343, !504}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !217, file: !44, line: 1884, baseType: !2995, size: 64, offset: 1024)
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!190, !191, !2998, !261, !261}
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !217, file: !44, line: 1886, baseType: !3001, size: 64, offset: 1088)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!190, !191, !3004, !190}
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !217, file: !44, line: 1887, baseType: !3006, size: 64, offset: 1152)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!190, !191, !223, !585, !7, !195}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !217, file: !44, line: 1890, baseType: !2932, size: 64, offset: 1216)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !217, file: !44, line: 1891, baseType: !3011, size: 64, offset: 1280)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!190, !191, !2909, !190}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !192, file: !44, line: 623, baseType: !371, size: 64, offset: 192)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !192, file: !44, line: 624, baseType: !1732, size: 64, offset: 256)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !192, file: !44, line: 631, baseType: !157, size: 64, offset: 320)
!3017 = !DIDerivedType(tag: DW_TAG_member, scope: !192, file: !44, line: 639, baseType: !3018, size: 32, offset: 384)
!3018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !192, file: !44, line: 639, size: 32, elements: !3019)
!3019 = !{!3020, !3022}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3018, file: !44, line: 640, baseType: !3021, size: 32)
!3021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3018, file: !44, line: 641, baseType: !7, size: 32)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !192, file: !44, line: 643, baseType: !381, size: 32, offset: 416)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !192, file: !44, line: 644, baseType: !386, size: 64, offset: 448)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !192, file: !44, line: 645, baseType: !2957, size: 128, offset: 512)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !192, file: !44, line: 646, baseType: !2957, size: 128, offset: 640)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !192, file: !44, line: 647, baseType: !2957, size: 128, offset: 768)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !192, file: !44, line: 648, baseType: !283, offset: 896)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !192, file: !44, line: 649, baseType: !163, size: 16, offset: 896)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !192, file: !44, line: 650, baseType: !954, size: 8, offset: 912)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !192, file: !44, line: 651, baseType: !954, size: 8, offset: 920)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !192, file: !44, line: 652, baseType: !2700, size: 64, offset: 960)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !192, file: !44, line: 659, baseType: !157, size: 64, offset: 1024)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !192, file: !44, line: 660, baseType: !719, size: 256, offset: 1088)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !192, file: !44, line: 662, baseType: !157, size: 64, offset: 1344)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !192, file: !44, line: 663, baseType: !157, size: 64, offset: 1408)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !192, file: !44, line: 665, baseType: !424, size: 128, offset: 1472)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !192, file: !44, line: 666, baseType: !375, size: 128, offset: 1600)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !192, file: !44, line: 675, baseType: !375, size: 128, offset: 1728)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !192, file: !44, line: 676, baseType: !375, size: 128, offset: 1856)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !192, file: !44, line: 677, baseType: !375, size: 128, offset: 1984)
!3042 = !DIDerivedType(tag: DW_TAG_member, scope: !192, file: !44, line: 678, baseType: !3043, size: 128, offset: 2112)
!3043 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !192, file: !44, line: 678, size: 128, elements: !3044)
!3044 = !{!3045, !3046}
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3043, file: !44, line: 679, baseType: !420, size: 64)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3043, file: !44, line: 680, baseType: !565, size: 128, align: 64)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !192, file: !44, line: 682, baseType: !519, size: 64, offset: 2240)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !192, file: !44, line: 683, baseType: !519, size: 64, offset: 2304)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !192, file: !44, line: 684, baseType: !708, size: 32, offset: 2368)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !192, file: !44, line: 685, baseType: !708, size: 32, offset: 2400)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !192, file: !44, line: 686, baseType: !708, size: 32, offset: 2432)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !192, file: !44, line: 688, baseType: !708, size: 32, offset: 2464)
!3053 = !DIDerivedType(tag: DW_TAG_member, scope: !192, file: !44, line: 690, baseType: !3054, size: 64, offset: 2496)
!3054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !192, file: !44, line: 690, size: 64, elements: !3055)
!3055 = !{!3056, !3057}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3054, file: !44, line: 691, baseType: !576, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3054, file: !44, line: 692, baseType: !451, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !192, file: !44, line: 694, baseType: !3059, size: 64, offset: 2560)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3061)
!3061 = !{!3062, !3063, !3064, !3065}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3060, file: !44, line: 1101, baseType: !283)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3060, file: !44, line: 1102, baseType: !375, size: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3060, file: !44, line: 1103, baseType: !375, size: 128, offset: 128)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3060, file: !44, line: 1104, baseType: !375, size: 128, offset: 256)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !192, file: !44, line: 695, baseType: !1733, size: 1216, align: 64, offset: 2624)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !192, file: !44, line: 696, baseType: !375, size: 128, offset: 3840)
!3068 = !DIDerivedType(tag: DW_TAG_member, scope: !192, file: !44, line: 697, baseType: !3069, size: 64, offset: 3968)
!3069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !192, file: !44, line: 697, size: 64, elements: !3070)
!3070 = !{!3071, !3072, !3073, !3076, !3077}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3069, file: !44, line: 698, baseType: !1714, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3069, file: !44, line: 699, baseType: !2725, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3069, file: !44, line: 700, baseType: !3074, size: 64)
!3074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3075, size: 64)
!3075 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3069, file: !44, line: 701, baseType: !343, size: 64)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3069, file: !44, line: 702, baseType: !7, size: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !192, file: !44, line: 705, baseType: !166, size: 32, offset: 4032)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !192, file: !44, line: 708, baseType: !166, size: 32, offset: 4064)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !192, file: !44, line: 709, baseType: !2807, size: 64, offset: 4096)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !192, file: !44, line: 720, baseType: !156, size: 64, offset: 4160)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read", scope: !182, file: !183, line: 32, baseType: !587, size: 64, offset: 128)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "proc_read_iter", scope: !182, file: !183, line: 33, baseType: !599, size: 64, offset: 192)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "proc_write", scope: !182, file: !183, line: 34, baseType: !595, size: 64, offset: 256)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "proc_lseek", scope: !182, file: !183, line: 35, baseType: !582, size: 64, offset: 320)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "proc_release", scope: !182, file: !183, line: 36, baseType: !187, size: 64, offset: 384)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "proc_poll", scope: !182, file: !183, line: 37, baseType: !645, size: 64, offset: 448)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "proc_ioctl", scope: !182, file: !183, line: 38, baseType: !652, size: 64, offset: 512)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "proc_mmap", scope: !182, file: !183, line: 42, baseType: !657, size: 64, offset: 576)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "proc_get_unmapped_area", scope: !182, file: !183, line: 43, baseType: !691, size: 64, offset: 640)
!3091 = !DIGlobalVariableExpression(var: !3092, expr: !DIExpression())
!3092 = distinct !DIGlobalVariable(name: "proc_bus_pci_devices_op", scope: !2, file: !3, line: 396, type: !529, isLocal: true, isDefinition: true)
!3093 = !{!"rsp"}
!3094 = !{i32 7, !"Dwarf Version", i32 4}
!3095 = !{i32 2, !"Debug Info Version", i32 3}
!3096 = !{i32 1, !"wchar_size", i32 2}
!3097 = !{i32 1, !"Code Model", i32 2}
!3098 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3099 = distinct !DISubprogram(name: "pci_proc_attach_device", scope: !3, file: !3, line: 405, type: !3100, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !297)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!190, !3102}
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dev", file: !94, line: 309, size: 19264, elements: !3104)
!3104 = !{!3105, !3106, !3912, !3913, !3914, !3915, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3943, !4006, !4007, !4008, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4026, !4027, !4028, !4029, !4032, !4033, !4034, !4035, !4036, !4037, !4038, !4039, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4082, !4083, !4085, !4086, !4087, !4088, !4090, !4091, !4092, !4095, !4126, !4127, !4128, !4129, !4130, !4131, !4132}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "bus_list", scope: !3103, file: !94, line: 310, baseType: !375, size: 128)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3103, file: !94, line: 311, baseType: !3107, size: 64, offset: 128)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_bus", file: !94, line: 605, size: 8064, elements: !3109)
!3109 = !{!3110, !3111, !3112, !3113, !3114, !3115, !3116, !3131, !3132, !3133, !3157, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3170, !3171, !3173, !3908, !3909, !3910, !3911}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3108, file: !94, line: 606, baseType: !375, size: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3108, file: !94, line: 607, baseType: !3107, size: 64, offset: 128)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3108, file: !94, line: 608, baseType: !375, size: 128, offset: 192)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !3108, file: !94, line: 609, baseType: !375, size: 128, offset: 320)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !3108, file: !94, line: 610, baseType: !3102, size: 64, offset: 448)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "slots", scope: !3108, file: !94, line: 611, baseType: !375, size: 128, offset: 512)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3108, file: !94, line: 613, baseType: !3117, size: 256, offset: 640)
!3117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3118, size: 256, elements: !759)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3120, line: 20, size: 512, elements: !3121)
!3120 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3121 = !{!3122, !3124, !3125, !3126, !3127, !3128, !3129, !3130}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3119, file: !3120, line: 21, baseType: !3123, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !155, line: 158, baseType: !2043)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3119, file: !3120, line: 22, baseType: !3123, size: 64, offset: 64)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3119, file: !3120, line: 23, baseType: !167, size: 64, offset: 128)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3119, file: !3120, line: 24, baseType: !157, size: 64, offset: 192)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3119, file: !3120, line: 25, baseType: !157, size: 64, offset: 256)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3119, file: !3120, line: 26, baseType: !3118, size: 64, offset: 320)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3119, file: !3120, line: 26, baseType: !3118, size: 64, offset: 384)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3119, file: !3120, line: 26, baseType: !3118, size: 64, offset: 448)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3108, file: !94, line: 614, baseType: !375, size: 128, offset: 896)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "busn_res", scope: !3108, file: !94, line: 615, baseType: !3119, size: 512, offset: 1024)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3108, file: !94, line: 617, baseType: !3134, size: 64, offset: 1536)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_ops", file: !94, line: 731, size: 320, elements: !3136)
!3136 = !{!3137, !3141, !3145, !3149, !3153}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "add_bus", scope: !3135, file: !94, line: 732, baseType: !3138, size: 64)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!190, !3107}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "remove_bus", scope: !3135, file: !94, line: 733, baseType: !3142, size: 64, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{null, !3107}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "map_bus", scope: !3135, file: !94, line: 734, baseType: !3146, size: 64, offset: 128)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{!156, !3107, !7, !190}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3135, file: !94, line: 735, baseType: !3150, size: 64, offset: 192)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DISubroutineType(types: !3152)
!3152 = !{!190, !3107, !7, !190, !190, !1017}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3135, file: !94, line: 736, baseType: !3154, size: 64, offset: 256)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!190, !3107, !7, !190, !190, !257}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3108, file: !94, line: 618, baseType: !3158, size: 64, offset: 1600)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_controller", file: !94, line: 537, flags: DIFlagFwdDecl)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !3108, file: !94, line: 619, baseType: !156, size: 64, offset: 1664)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !3108, file: !94, line: 620, baseType: !176, size: 64, offset: 1728)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3108, file: !94, line: 622, baseType: !266, size: 8, offset: 1792)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !3108, file: !94, line: 623, baseType: !266, size: 8, offset: 1800)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "max_bus_speed", scope: !3108, file: !94, line: 624, baseType: !266, size: 8, offset: 1808)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "cur_bus_speed", scope: !3108, file: !94, line: 625, baseType: !266, size: 8, offset: 1816)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3108, file: !94, line: 630, baseType: !3167, size: 384, offset: 1824)
!3167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 384, elements: !3168)
!3168 = !{!3169}
!3169 = !DISubrange(count: 48)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_ctl", scope: !3108, file: !94, line: 632, baseType: !163, size: 16, offset: 2208)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !3108, file: !94, line: 633, baseType: !3172, size: 16, offset: 2224)
!3172 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_bus_flags_t", file: !94, line: 237, baseType: !163)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "bridge", scope: !3108, file: !94, line: 634, baseType: !3174, size: 64, offset: 2240)
!3174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3175, size: 64)
!3175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !3176)
!3176 = !{!3177, !3462, !3463, !3466, !3467, !3518, !3609, !3610, !3611, !3612, !3613, !3622, !3727, !3740, !3743, !3744, !3748, !3750, !3751, !3752, !3756, !3762, !3763, !3766, !3770, !3860, !3861, !3862, !3863, !3864, !3896, !3897, !3898, !3901, !3904, !3905, !3906, !3907}
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3175, file: !73, line: 462, baseType: !3178, size: 512)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3179, line: 64, size: 512, elements: !3180)
!3179 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3180 = !{!3181, !3182, !3183, !3185, !3225, !3325, !3452, !3457, !3458, !3459, !3460, !3461}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3178, file: !3179, line: 65, baseType: !167, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3178, file: !3179, line: 66, baseType: !375, size: 128, offset: 64)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3178, file: !3179, line: 67, baseType: !3184, size: 64, offset: 192)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3178, file: !3179, line: 68, baseType: !3186, size: 64, offset: 256)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3179, line: 192, size: 704, elements: !3188)
!3188 = !{!3189, !3190, !3191, !3192}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3187, file: !3179, line: 193, baseType: !375, size: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3187, file: !3179, line: 194, baseType: !283, offset: 128)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3187, file: !3179, line: 195, baseType: !3178, size: 512, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3187, file: !3179, line: 196, baseType: !3193, size: 64, offset: 640)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3195)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3179, line: 156, size: 192, elements: !3196)
!3196 = !{!3197, !3202, !3207}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3195, file: !3179, line: 157, baseType: !3198, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3199)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!190, !3186, !3184}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3195, file: !3179, line: 158, baseType: !3203, size: 64, offset: 64)
!3203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3204)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DISubroutineType(types: !3206)
!3206 = !{!167, !3186, !3184}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3195, file: !3179, line: 159, baseType: !3208, size: 64, offset: 128)
!3208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3209)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!190, !3186, !3184, !3212}
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3179, line: 148, size: 20736, elements: !3214)
!3214 = !{!3215, !3217, !3219, !3220, !3224}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3213, file: !3179, line: 149, baseType: !3216, size: 192)
!3216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 192, elements: !436)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3213, file: !3179, line: 150, baseType: !3218, size: 4096, offset: 192)
!3218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 4096, elements: !1487)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3213, file: !3179, line: 151, baseType: !190, size: 32, offset: 4288)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3213, file: !3179, line: 152, baseType: !3221, size: 16384, offset: 4320)
!3221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 16384, elements: !3222)
!3222 = !{!3223}
!3223 = !DISubrange(count: 2048)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3213, file: !3179, line: 153, baseType: !190, size: 32, offset: 20704)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3178, file: !3179, line: 69, baseType: !3226, size: 64, offset: 320)
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3179, line: 138, size: 448, elements: !3228)
!3228 = !{!3229, !3233, !3252, !3254, !3287, !3315, !3319}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3227, file: !3179, line: 139, baseType: !3230, size: 64)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{null, !3184}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3227, file: !3179, line: 140, baseType: !3234, size: 64, offset: 64)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3236)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3237, line: 230, size: 128, elements: !3238)
!3237 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3238 = !{!3239, !3248}
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3236, file: !3237, line: 231, baseType: !3240, size: 64)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!590, !3184, !3243, !343}
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3237, line: 30, size: 128, elements: !3245)
!3245 = !{!3246, !3247}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3244, file: !3237, line: 31, baseType: !167, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3244, file: !3237, line: 32, baseType: !195, size: 16, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3236, file: !3237, line: 232, baseType: !3249, size: 64, offset: 64)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!590, !3184, !3243, !167, !504}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3227, file: !3179, line: 141, baseType: !3253, size: 64, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3227, file: !3179, line: 142, baseType: !3255, size: 64, offset: 192)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3258)
!3258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3237, line: 84, size: 320, elements: !3259)
!3259 = !{!3260, !3261, !3265, !3284, !3285}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3258, file: !3237, line: 85, baseType: !167, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3258, file: !3237, line: 86, baseType: !3262, size: 64, offset: 64)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{!195, !3184, !3243, !190}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3258, file: !3237, line: 88, baseType: !3266, size: 64, offset: 128)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!195, !3184, !3269, !190}
!3269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3270, size: 64)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3237, line: 168, size: 448, elements: !3271)
!3271 = !{!3272, !3273, !3274, !3275, !3279, !3280}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3270, file: !3237, line: 169, baseType: !3244, size: 128)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3270, file: !3237, line: 170, baseType: !504, size: 64, offset: 128)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3270, file: !3237, line: 171, baseType: !156, size: 64, offset: 192)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3270, file: !3237, line: 172, baseType: !3276, size: 64, offset: 256)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DISubroutineType(types: !3278)
!3278 = !{!590, !585, !3184, !3269, !343, !386, !504}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3270, file: !3237, line: 174, baseType: !3276, size: 64, offset: 320)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3270, file: !3237, line: 176, baseType: !3281, size: 64, offset: 384)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{!190, !585, !3184, !3269, !660}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3258, file: !3237, line: 90, baseType: !3253, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3258, file: !3237, line: 91, baseType: !3286, size: 64, offset: 256)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3227, file: !3179, line: 143, baseType: !3288, size: 64, offset: 256)
!3288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3289, size: 64)
!3289 = !DISubroutineType(types: !3290)
!3290 = !{!3291, !3184}
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3293)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3294)
!3294 = !{!3295, !3296, !3300, !3304, !3310, !3314}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3293, file: !61, line: 40, baseType: !60, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3293, file: !61, line: 41, baseType: !3297, size: 64, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DISubroutineType(types: !3299)
!3299 = !{!362}
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3293, file: !61, line: 42, baseType: !3301, size: 64, offset: 128)
!3301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3302 = !DISubroutineType(types: !3303)
!3303 = !{!156}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3293, file: !61, line: 43, baseType: !3305, size: 64, offset: 192)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!2045, !3308}
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3293, file: !61, line: 44, baseType: !3311, size: 64, offset: 256)
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = !DISubroutineType(types: !3313)
!3313 = !{!2045}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3293, file: !61, line: 45, baseType: !2897, size: 64, offset: 320)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3227, file: !3179, line: 144, baseType: !3316, size: 64, offset: 320)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!2045, !3184}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3227, file: !3179, line: 145, baseType: !3320, size: 64, offset: 384)
!3320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3321, size: 64)
!3321 = !DISubroutineType(types: !3322)
!3322 = !{null, !3184, !3323, !3324}
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3178, file: !3179, line: 70, baseType: !3326, size: 64, offset: 384)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !401, line: 123, size: 1024, elements: !3328)
!3328 = !{!3329, !3330, !3331, !3332, !3333, !3334, !3335, !3336, !3445, !3446, !3447, !3448, !3449}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3327, file: !401, line: 124, baseType: !708, size: 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3327, file: !401, line: 125, baseType: !708, size: 32, offset: 32)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3327, file: !401, line: 135, baseType: !3326, size: 64, offset: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3327, file: !401, line: 136, baseType: !167, size: 64, offset: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3327, file: !401, line: 138, baseType: !669, size: 192, align: 64, offset: 192)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3327, file: !401, line: 140, baseType: !2045, size: 64, offset: 384)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3327, file: !401, line: 141, baseType: !7, size: 32, offset: 448)
!3336 = !DIDerivedType(tag: DW_TAG_member, scope: !3327, file: !401, line: 142, baseType: !3337, size: 256, offset: 512)
!3337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3327, file: !401, line: 142, size: 256, elements: !3338)
!3338 = !{!3339, !3385, !3389}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3337, file: !401, line: 143, baseType: !3340, size: 192)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !401, line: 91, size: 192, elements: !3341)
!3341 = !{!3342, !3343, !3344}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3340, file: !401, line: 92, baseType: !157, size: 64)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3340, file: !401, line: 94, baseType: !686, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3340, file: !401, line: 100, baseType: !3345, size: 64, offset: 128)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !401, line: 180, size: 704, elements: !3347)
!3347 = !{!3348, !3349, !3350, !3357, !3358, !3359, !3383, !3384}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3346, file: !401, line: 182, baseType: !3326, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3346, file: !401, line: 183, baseType: !7, size: 32, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3346, file: !401, line: 186, baseType: !3351, size: 192, offset: 128)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3352, line: 19, size: 192, elements: !3353)
!3352 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3353 = !{!3354, !3355, !3356}
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3351, file: !3352, line: 20, baseType: !1544, size: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3351, file: !3352, line: 21, baseType: !7, size: 32, offset: 128)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3351, file: !3352, line: 22, baseType: !7, size: 32, offset: 160)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3346, file: !401, line: 187, baseType: !257, size: 32, offset: 320)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3346, file: !401, line: 188, baseType: !257, size: 32, offset: 352)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3346, file: !401, line: 189, baseType: !3360, size: 64, offset: 384)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !401, line: 168, size: 320, elements: !3362)
!3362 = !{!3363, !3367, !3371, !3375, !3379}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3361, file: !401, line: 169, baseType: !3364, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!190, !498, !3345}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3361, file: !401, line: 171, baseType: !3368, size: 64, offset: 64)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!190, !3326, !167, !195}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3361, file: !401, line: 173, baseType: !3372, size: 64, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = !DISubroutineType(types: !3374)
!3374 = !{!190, !3326}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3361, file: !401, line: 174, baseType: !3376, size: 64, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3377, size: 64)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!190, !3326, !3326, !167}
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3361, file: !401, line: 176, baseType: !3380, size: 64, offset: 256)
!3380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3381, size: 64)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{!190, !498, !3326, !3345}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3346, file: !401, line: 192, baseType: !375, size: 128, offset: 448)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3346, file: !401, line: 194, baseType: !1083, size: 128, offset: 576)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3337, file: !401, line: 144, baseType: !3386, size: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !401, line: 103, size: 64, elements: !3387)
!3387 = !{!3388}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3386, file: !401, line: 104, baseType: !3326, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3337, file: !401, line: 145, baseType: !3390, size: 256)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !401, line: 107, size: 256, elements: !3391)
!3391 = !{!3392, !3440, !3443, !3444}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3390, file: !401, line: 108, baseType: !3393, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3395)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !401, line: 217, size: 768, elements: !3396)
!3396 = !{!3397, !3417, !3421, !3422, !3423, !3424, !3425, !3429, !3430, !3431, !3432, !3436}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3395, file: !401, line: 222, baseType: !3398, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3399, size: 64)
!3399 = !DISubroutineType(types: !3400)
!3400 = !{!190, !3401}
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !401, line: 197, size: 1088, elements: !3403)
!3403 = !{!3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3402, file: !401, line: 199, baseType: !3326, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3402, file: !401, line: 200, baseType: !585, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3402, file: !401, line: 201, baseType: !498, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3402, file: !401, line: 202, baseType: !156, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3402, file: !401, line: 205, baseType: !513, size: 192, offset: 256)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3402, file: !401, line: 206, baseType: !513, size: 192, offset: 448)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3402, file: !401, line: 207, baseType: !190, size: 32, offset: 640)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3402, file: !401, line: 208, baseType: !375, size: 128, offset: 704)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3402, file: !401, line: 209, baseType: !343, size: 64, offset: 832)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3402, file: !401, line: 211, baseType: !504, size: 64, offset: 896)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3402, file: !401, line: 212, baseType: !362, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3402, file: !401, line: 213, baseType: !362, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3402, file: !401, line: 214, baseType: !2266, size: 64, offset: 1024)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3395, file: !401, line: 223, baseType: !3418, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{null, !3401}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3395, file: !401, line: 236, baseType: !546, size: 64, offset: 128)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3395, file: !401, line: 238, baseType: !533, size: 64, offset: 192)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3395, file: !401, line: 239, baseType: !542, size: 64, offset: 256)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3395, file: !401, line: 240, baseType: !538, size: 64, offset: 320)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3395, file: !401, line: 242, baseType: !3426, size: 64, offset: 384)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!590, !3401, !343, !504, !386}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3395, file: !401, line: 252, baseType: !504, size: 64, offset: 448)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3395, file: !401, line: 259, baseType: !362, size: 8, offset: 512)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3395, file: !401, line: 260, baseType: !3426, size: 64, offset: 576)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3395, file: !401, line: 263, baseType: !3433, size: 64, offset: 640)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!648, !3401, !649}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3395, file: !401, line: 266, baseType: !3437, size: 64, offset: 704)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!190, !3401, !660}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3390, file: !401, line: 109, baseType: !3441, size: 64, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !401, line: 31, flags: DIFlagFwdDecl)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3390, file: !401, line: 110, baseType: !386, size: 64, offset: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3390, file: !401, line: 111, baseType: !3326, size: 64, offset: 192)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3327, file: !401, line: 148, baseType: !156, size: 64, offset: 768)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3327, file: !401, line: 154, baseType: !261, size: 64, offset: 832)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3327, file: !401, line: 156, baseType: !163, size: 16, offset: 896)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3327, file: !401, line: 157, baseType: !195, size: 16, offset: 912)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3327, file: !401, line: 158, baseType: !3450, size: 64, offset: 960)
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !401, line: 32, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3178, file: !3179, line: 71, baseType: !3453, size: 32, offset: 448)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3454, line: 19, size: 32, elements: !3455)
!3454 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3455 = !{!3456}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3453, file: !3454, line: 20, baseType: !828, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3178, file: !3179, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3178, file: !3179, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3178, file: !3179, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3178, file: !3179, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3178, file: !3179, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3175, file: !73, line: 463, baseType: !3174, size: 64, offset: 512)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3175, file: !73, line: 465, baseType: !3464, size: 64, offset: 576)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3175, file: !73, line: 467, baseType: !167, size: 64, offset: 640)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3175, file: !73, line: 468, baseType: !3468, size: 64, offset: 704)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3470)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3471)
!3471 = !{!3472, !3473, !3474, !3478, !3483, !3487}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3470, file: !73, line: 88, baseType: !167, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3470, file: !73, line: 89, baseType: !3255, size: 64, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3470, file: !73, line: 90, baseType: !3475, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!190, !3174, !3212}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3470, file: !73, line: 91, baseType: !3479, size: 64, offset: 192)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!343, !3174, !3482, !3323, !3324}
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3470, file: !73, line: 93, baseType: !3484, size: 64, offset: 256)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{null, !3174}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3470, file: !73, line: 95, baseType: !3488, size: 64, offset: 320)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3490)
!3490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3491)
!3491 = !{!3492, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517}
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3490, file: !80, line: 279, baseType: !3493, size: 64)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DISubroutineType(types: !3495)
!3495 = !{!190, !3174}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3490, file: !80, line: 280, baseType: !3484, size: 64, offset: 64)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3490, file: !80, line: 281, baseType: !3493, size: 64, offset: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3490, file: !80, line: 282, baseType: !3493, size: 64, offset: 192)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3490, file: !80, line: 283, baseType: !3493, size: 64, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3490, file: !80, line: 284, baseType: !3493, size: 64, offset: 320)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3490, file: !80, line: 285, baseType: !3493, size: 64, offset: 384)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3490, file: !80, line: 286, baseType: !3493, size: 64, offset: 448)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3490, file: !80, line: 287, baseType: !3493, size: 64, offset: 512)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3490, file: !80, line: 288, baseType: !3493, size: 64, offset: 576)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3490, file: !80, line: 289, baseType: !3493, size: 64, offset: 640)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3490, file: !80, line: 290, baseType: !3493, size: 64, offset: 704)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3490, file: !80, line: 291, baseType: !3493, size: 64, offset: 768)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3490, file: !80, line: 292, baseType: !3493, size: 64, offset: 832)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3490, file: !80, line: 293, baseType: !3493, size: 64, offset: 896)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3490, file: !80, line: 294, baseType: !3493, size: 64, offset: 960)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3490, file: !80, line: 295, baseType: !3493, size: 64, offset: 1024)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3490, file: !80, line: 296, baseType: !3493, size: 64, offset: 1088)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3490, file: !80, line: 297, baseType: !3493, size: 64, offset: 1152)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3490, file: !80, line: 298, baseType: !3493, size: 64, offset: 1216)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3490, file: !80, line: 299, baseType: !3493, size: 64, offset: 1280)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3490, file: !80, line: 300, baseType: !3493, size: 64, offset: 1344)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3490, file: !80, line: 301, baseType: !3493, size: 64, offset: 1408)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3175, file: !73, line: 470, baseType: !3519, size: 64, offset: 768)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3520, size: 64)
!3520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3521, line: 82, size: 1408, elements: !3522)
!3521 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3522 = !{!3523, !3524, !3525, !3526, !3527, !3528, !3529, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3604, !3607, !3608}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3520, file: !3521, line: 83, baseType: !167, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3520, file: !3521, line: 84, baseType: !167, size: 64, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3520, file: !3521, line: 85, baseType: !3174, size: 64, offset: 128)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3520, file: !3521, line: 86, baseType: !3255, size: 64, offset: 192)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3520, file: !3521, line: 87, baseType: !3255, size: 64, offset: 256)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3520, file: !3521, line: 88, baseType: !3255, size: 64, offset: 320)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3520, file: !3521, line: 90, baseType: !3530, size: 64, offset: 384)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!190, !3174, !3533}
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3535)
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3541, !3542, !3555, !3568, !3569, !3570, !3571, !3572, !3580, !3581, !3582, !3583, !3584, !3585}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3534, file: !67, line: 96, baseType: !167, size: 64)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3534, file: !67, line: 97, baseType: !3519, size: 64, offset: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3534, file: !67, line: 99, baseType: !415, size: 64, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3534, file: !67, line: 100, baseType: !167, size: 64, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3534, file: !67, line: 102, baseType: !362, size: 8, offset: 256)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3534, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3534, file: !67, line: 105, baseType: !3543, size: 64, offset: 320)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3545)
!3545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3546, line: 262, size: 1600, elements: !3547)
!3546 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3547 = !{!3548, !3549, !3550, !3554}
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3545, file: !3546, line: 263, baseType: !2810, size: 256)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3545, file: !3546, line: 264, baseType: !2810, size: 256, offset: 256)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3545, file: !3546, line: 265, baseType: !3551, size: 1024, offset: 512)
!3551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 1024, elements: !3552)
!3552 = !{!3553}
!3553 = !DISubrange(count: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3545, file: !3546, line: 266, baseType: !2045, size: 64, offset: 1536)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3534, file: !67, line: 106, baseType: !3556, size: 64, offset: 384)
!3556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3557, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3558)
!3558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3546, line: 210, size: 256, elements: !3559)
!3559 = !{!3560, !3564, !3566, !3567}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3558, file: !3546, line: 211, baseType: !3561, size: 72)
!3561 = !DICompositeType(tag: DW_TAG_array_type, baseType: !955, size: 72, elements: !3562)
!3562 = !{!3563}
!3563 = !DISubrange(count: 9)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3558, file: !3546, line: 212, baseType: !3565, size: 64, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3546, line: 14, baseType: !157)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3558, file: !3546, line: 213, baseType: !166, size: 32, offset: 192)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3558, file: !3546, line: 214, baseType: !166, size: 32, offset: 224)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3534, file: !67, line: 108, baseType: !3493, size: 64, offset: 448)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3534, file: !67, line: 109, baseType: !3484, size: 64, offset: 512)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3534, file: !67, line: 110, baseType: !3493, size: 64, offset: 576)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3534, file: !67, line: 111, baseType: !3484, size: 64, offset: 640)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3534, file: !67, line: 112, baseType: !3573, size: 64, offset: 704)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DISubroutineType(types: !3575)
!3575 = !{!190, !3174, !3576}
!3576 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3577)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3578)
!3578 = !{!3579}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3577, file: !80, line: 51, baseType: !190, size: 32)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3534, file: !67, line: 113, baseType: !3493, size: 64, offset: 768)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3534, file: !67, line: 114, baseType: !3255, size: 64, offset: 832)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3534, file: !67, line: 115, baseType: !3255, size: 64, offset: 896)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3534, file: !67, line: 117, baseType: !3488, size: 64, offset: 960)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3534, file: !67, line: 118, baseType: !3484, size: 64, offset: 1024)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3534, file: !67, line: 120, baseType: !3586, size: 64, offset: 1088)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3520, file: !3521, line: 91, baseType: !3475, size: 64, offset: 448)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3520, file: !3521, line: 92, baseType: !3493, size: 64, offset: 512)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3520, file: !3521, line: 93, baseType: !3484, size: 64, offset: 576)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3520, file: !3521, line: 94, baseType: !3493, size: 64, offset: 640)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3520, file: !3521, line: 95, baseType: !3484, size: 64, offset: 704)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3520, file: !3521, line: 97, baseType: !3493, size: 64, offset: 768)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3520, file: !3521, line: 98, baseType: !3493, size: 64, offset: 832)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3520, file: !3521, line: 100, baseType: !3573, size: 64, offset: 896)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3520, file: !3521, line: 101, baseType: !3493, size: 64, offset: 960)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3520, file: !3521, line: 103, baseType: !3493, size: 64, offset: 1024)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3520, file: !3521, line: 105, baseType: !3493, size: 64, offset: 1088)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3520, file: !3521, line: 107, baseType: !3488, size: 64, offset: 1152)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3520, file: !3521, line: 109, baseType: !3601, size: 64, offset: 1216)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3603)
!3603 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3521, line: 109, flags: DIFlagFwdDecl)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3520, file: !3521, line: 111, baseType: !3605, size: 64, offset: 1280)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3521, line: 111, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3520, file: !3521, line: 112, baseType: !430, offset: 1344)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3520, file: !3521, line: 114, baseType: !362, size: 8, offset: 1344)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3175, file: !73, line: 471, baseType: !3533, size: 64, offset: 832)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3175, file: !73, line: 473, baseType: !156, size: 64, offset: 896)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3175, file: !73, line: 475, baseType: !156, size: 64, offset: 960)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3175, file: !73, line: 480, baseType: !513, size: 192, offset: 1024)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3175, file: !73, line: 484, baseType: !3614, size: 576, offset: 1216)
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3615)
!3615 = !{!3616, !3617, !3618, !3619, !3620, !3621}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3614, file: !73, line: 362, baseType: !375, size: 128)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3614, file: !73, line: 363, baseType: !375, size: 128, offset: 128)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3614, file: !73, line: 364, baseType: !375, size: 128, offset: 256)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3614, file: !73, line: 365, baseType: !375, size: 128, offset: 384)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3614, file: !73, line: 366, baseType: !362, size: 8, offset: 512)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3614, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3175, file: !73, line: 485, baseType: !3623, size: 2304, offset: 1792)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3720, !3724}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3623, file: !80, line: 566, baseType: !3576, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3623, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3623, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3623, file: !80, line: 569, baseType: !362, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3623, file: !80, line: 570, baseType: !362, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3623, file: !80, line: 571, baseType: !362, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3623, file: !80, line: 572, baseType: !362, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3623, file: !80, line: 573, baseType: !362, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3623, file: !80, line: 574, baseType: !362, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3623, file: !80, line: 575, baseType: !362, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3623, file: !80, line: 576, baseType: !362, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3623, file: !80, line: 577, baseType: !257, size: 32, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3623, file: !80, line: 578, baseType: !283, offset: 96)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3623, file: !80, line: 580, baseType: !375, size: 128, offset: 128)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3623, file: !80, line: 581, baseType: !1104, size: 192, offset: 256)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3623, file: !80, line: 582, baseType: !3641, size: 64, offset: 448)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3643, line: 43, size: 1472, elements: !3644)
!3643 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3644 = !{!3645, !3646, !3647, !3648, !3649, !3652, !3664, !3665, !3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3642, file: !3643, line: 44, baseType: !167, size: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3642, file: !3643, line: 45, baseType: !190, size: 32, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3642, file: !3643, line: 46, baseType: !375, size: 128, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3642, file: !3643, line: 47, baseType: !283, offset: 256)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3642, file: !3643, line: 48, baseType: !3650, size: 64, offset: 256)
!3650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3651, size: 64)
!3651 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3642, file: !3643, line: 49, baseType: !3653, size: 320, offset: 320)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3654, line: 11, size: 320, elements: !3655)
!3654 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3655 = !{!3656, !3657, !3658, !3663}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3653, file: !3654, line: 16, baseType: !424, size: 128)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3653, file: !3654, line: 17, baseType: !157, size: 64, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3653, file: !3654, line: 18, baseType: !3659, size: 64, offset: 192)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DISubroutineType(types: !3661)
!3661 = !{null, !3662}
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3653, file: !3654, line: 19, baseType: !257, size: 32, offset: 256)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3642, file: !3643, line: 50, baseType: !157, size: 64, offset: 640)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3642, file: !3643, line: 51, baseType: !898, size: 64, offset: 704)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3642, file: !3643, line: 52, baseType: !898, size: 64, offset: 768)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3642, file: !3643, line: 53, baseType: !898, size: 64, offset: 832)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3642, file: !3643, line: 54, baseType: !898, size: 64, offset: 896)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3642, file: !3643, line: 55, baseType: !898, size: 64, offset: 960)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3642, file: !3643, line: 56, baseType: !157, size: 64, offset: 1024)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3642, file: !3643, line: 57, baseType: !157, size: 64, offset: 1088)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3642, file: !3643, line: 58, baseType: !157, size: 64, offset: 1152)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3642, file: !3643, line: 59, baseType: !157, size: 64, offset: 1216)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3642, file: !3643, line: 60, baseType: !157, size: 64, offset: 1280)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3642, file: !3643, line: 61, baseType: !3174, size: 64, offset: 1344)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3642, file: !3643, line: 62, baseType: !362, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3642, file: !3643, line: 63, baseType: !362, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3623, file: !80, line: 583, baseType: !362, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3623, file: !80, line: 584, baseType: !362, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3623, file: !80, line: 585, baseType: !362, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3623, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3623, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3623, file: !80, line: 592, baseType: !890, size: 512, offset: 576)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3623, file: !80, line: 593, baseType: !261, size: 64, offset: 1088)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3623, file: !80, line: 594, baseType: !1573, size: 256, offset: 1152)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3623, file: !80, line: 595, baseType: !1083, size: 128, offset: 1408)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3623, file: !80, line: 596, baseType: !3650, size: 64, offset: 1536)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3623, file: !80, line: 597, baseType: !708, size: 32, offset: 1600)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3623, file: !80, line: 598, baseType: !708, size: 32, offset: 1632)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3623, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3623, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3623, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3623, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3623, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3623, file: !80, line: 604, baseType: !362, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3623, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3623, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3623, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3623, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3623, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3623, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3623, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3623, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3623, file: !80, line: 613, baseType: !190, size: 32, offset: 1792)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3623, file: !80, line: 614, baseType: !190, size: 32, offset: 1824)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3623, file: !80, line: 615, baseType: !261, size: 64, offset: 1856)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3623, file: !80, line: 616, baseType: !261, size: 64, offset: 1920)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3623, file: !80, line: 617, baseType: !261, size: 64, offset: 1984)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3623, file: !80, line: 618, baseType: !261, size: 64, offset: 2048)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3623, file: !80, line: 620, baseType: !3711, size: 64, offset: 2112)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3713)
!3713 = !{!3714, !3715, !3716, !3717}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3712, file: !80, line: 537, baseType: !283)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3712, file: !80, line: 538, baseType: !7, size: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3712, file: !80, line: 540, baseType: !375, size: 128, offset: 64)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3712, file: !80, line: 543, baseType: !3718, size: 64, offset: 192)
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3623, file: !80, line: 621, baseType: !3721, size: 64, offset: 2176)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !3174, !1046}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3623, file: !80, line: 622, baseType: !3725, size: 64, offset: 2240)
!3725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3726, size: 64)
!3726 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3175, file: !73, line: 486, baseType: !3728, size: 64, offset: 4096)
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3730)
!3730 = !{!3731, !3732, !3733, !3737, !3738, !3739}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3729, file: !80, line: 643, baseType: !3490, size: 1472)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3729, file: !80, line: 644, baseType: !3493, size: 64, offset: 1472)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3729, file: !80, line: 645, baseType: !3734, size: 64, offset: 1536)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{null, !3174, !362}
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3729, file: !80, line: 646, baseType: !3493, size: 64, offset: 1600)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3729, file: !80, line: 647, baseType: !3484, size: 64, offset: 1664)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3729, file: !80, line: 648, baseType: !3484, size: 64, offset: 1728)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3175, file: !73, line: 493, baseType: !3741, size: 64, offset: 4160)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !73, line: 493, flags: DIFlagFwdDecl)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3175, file: !73, line: 499, baseType: !375, size: 128, offset: 4224)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3175, file: !73, line: 502, baseType: !3745, size: 64, offset: 4352)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3747)
!3747 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3175, file: !73, line: 504, baseType: !3749, size: 64, offset: 4416)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3175, file: !73, line: 505, baseType: !261, size: 64, offset: 4480)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3175, file: !73, line: 510, baseType: !261, size: 64, offset: 4544)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3175, file: !73, line: 511, baseType: !3753, size: 64, offset: 4608)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3755)
!3755 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3175, file: !73, line: 513, baseType: !3757, size: 64, offset: 4672)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3759)
!3759 = !{!3760, !3761}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3758, file: !73, line: 293, baseType: !7, size: 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3758, file: !73, line: 294, baseType: !157, size: 64, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3175, file: !73, line: 515, baseType: !375, size: 128, offset: 4736)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3175, file: !73, line: 526, baseType: !3764, offset: 4864)
!3764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3765, line: 5, elements: !297)
!3765 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3175, file: !73, line: 528, baseType: !3767, size: 64, offset: 4864)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3769, line: 14, flags: DIFlagFwdDecl)
!3769 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3175, file: !73, line: 529, baseType: !3771, size: 64, offset: 4928)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3773, line: 17, size: 192, elements: !3774)
!3773 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3774 = !{!3775, !3776, !3859}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3772, file: !3773, line: 18, baseType: !3771, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3772, file: !3773, line: 19, baseType: !3777, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3779)
!3779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3773, line: 110, size: 1152, elements: !3780)
!3780 = !{!3781, !3785, !3789, !3795, !3801, !3805, !3809, !3814, !3818, !3819, !3823, !3827, !3831, !3842, !3843, !3844, !3845, !3855}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3779, file: !3773, line: 111, baseType: !3782, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{!3771, !3771}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3779, file: !3773, line: 112, baseType: !3786, size: 64, offset: 64)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{null, !3771}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3779, file: !3773, line: 113, baseType: !3790, size: 64, offset: 128)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!362, !3793}
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3772)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3779, file: !3773, line: 114, baseType: !3796, size: 64, offset: 192)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3797, size: 64)
!3797 = !DISubroutineType(types: !3798)
!3798 = !{!2045, !3793, !3799}
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3175)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3779, file: !3773, line: 116, baseType: !3802, size: 64, offset: 256)
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = !DISubroutineType(types: !3804)
!3804 = !{!362, !3793, !167}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3779, file: !3773, line: 118, baseType: !3806, size: 64, offset: 320)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DISubroutineType(types: !3808)
!3808 = !{!190, !3793, !167, !7, !156, !504}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3779, file: !3773, line: 123, baseType: !3810, size: 64, offset: 384)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!190, !3793, !167, !3813, !504}
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3779, file: !3773, line: 126, baseType: !3815, size: 64, offset: 448)
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3816, size: 64)
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!167, !3793}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3779, file: !3773, line: 127, baseType: !3815, size: 64, offset: 512)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3779, file: !3773, line: 128, baseType: !3820, size: 64, offset: 576)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!3771, !3793}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3779, file: !3773, line: 130, baseType: !3824, size: 64, offset: 640)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DISubroutineType(types: !3826)
!3826 = !{!3771, !3793, !3771}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3779, file: !3773, line: 133, baseType: !3828, size: 64, offset: 704)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!3771, !3793, !167}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3779, file: !3773, line: 135, baseType: !3832, size: 64, offset: 768)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!190, !3793, !167, !167, !7, !7, !3835}
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3773, line: 43, size: 640, elements: !3837)
!3837 = !{!3838, !3839, !3840}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3836, file: !3773, line: 44, baseType: !3771, size: 64)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3836, file: !3773, line: 45, baseType: !7, size: 32, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3836, file: !3773, line: 46, baseType: !3841, size: 512, offset: 128)
!3841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 512, elements: !928)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3779, file: !3773, line: 140, baseType: !3824, size: 64, offset: 832)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3779, file: !3773, line: 143, baseType: !3820, size: 64, offset: 896)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3779, file: !3773, line: 145, baseType: !3782, size: 64, offset: 960)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3779, file: !3773, line: 146, baseType: !3846, size: 64, offset: 1024)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!190, !3793, !3849}
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3773, line: 29, size: 128, elements: !3851)
!3851 = !{!3852, !3853, !3854}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3850, file: !3773, line: 30, baseType: !7, size: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3850, file: !3773, line: 31, baseType: !7, size: 32, offset: 32)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3850, file: !3773, line: 32, baseType: !3793, size: 64, offset: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3779, file: !3773, line: 148, baseType: !3856, size: 64, offset: 1088)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!190, !3793, !3174}
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3772, file: !3773, line: 20, baseType: !3174, size: 64, offset: 128)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3175, file: !73, line: 534, baseType: !381, size: 32, offset: 4992)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3175, file: !73, line: 535, baseType: !257, size: 32, offset: 5024)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3175, file: !73, line: 537, baseType: !283, offset: 5056)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3175, file: !73, line: 538, baseType: !375, size: 128, offset: 5056)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3175, file: !73, line: 540, baseType: !3865, size: 64, offset: 5184)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3867, line: 54, size: 960, elements: !3868)
!3867 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3868 = !{!3869, !3870, !3871, !3872, !3873, !3874, !3875, !3879, !3883, !3884, !3885, !3886, !3890, !3894, !3895}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3866, file: !3867, line: 55, baseType: !167, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3866, file: !3867, line: 56, baseType: !415, size: 64, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3866, file: !3867, line: 58, baseType: !3255, size: 64, offset: 128)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3866, file: !3867, line: 59, baseType: !3255, size: 64, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3866, file: !3867, line: 60, baseType: !3184, size: 64, offset: 256)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3866, file: !3867, line: 62, baseType: !3475, size: 64, offset: 320)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3866, file: !3867, line: 63, baseType: !3876, size: 64, offset: 384)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{!343, !3174, !3482}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3866, file: !3867, line: 65, baseType: !3880, size: 64, offset: 448)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DISubroutineType(types: !3882)
!3882 = !{null, !3865}
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3866, file: !3867, line: 66, baseType: !3484, size: 64, offset: 512)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3866, file: !3867, line: 68, baseType: !3493, size: 64, offset: 576)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3866, file: !3867, line: 70, baseType: !3291, size: 64, offset: 640)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3866, file: !3867, line: 71, baseType: !3887, size: 64, offset: 704)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!2045, !3174}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3866, file: !3867, line: 73, baseType: !3891, size: 64, offset: 768)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{null, !3174, !3323, !3324}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3866, file: !3867, line: 75, baseType: !3488, size: 64, offset: 832)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3866, file: !3867, line: 77, baseType: !3605, size: 64, offset: 896)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3175, file: !73, line: 541, baseType: !3255, size: 64, offset: 5248)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3175, file: !73, line: 543, baseType: !3484, size: 64, offset: 5312)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3175, file: !73, line: 544, baseType: !3899, size: 64, offset: 5376)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3175, file: !73, line: 545, baseType: !3902, size: 64, offset: 5440)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3175, file: !73, line: 547, baseType: !362, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3175, file: !73, line: 548, baseType: !362, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3175, file: !73, line: 549, baseType: !362, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3175, file: !73, line: 550, baseType: !362, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3108, file: !94, line: 635, baseType: !3175, size: 5568, offset: 2304)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_io", scope: !3108, file: !94, line: 636, baseType: !3269, size: 64, offset: 7872)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mem", scope: !3108, file: !94, line: 637, baseType: !3269, size: 64, offset: 7936)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "is_added", scope: !3108, file: !94, line: 638, baseType: !7, size: 1, offset: 8000, flags: DIFlagBitField, extraData: i64 8000)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "subordinate", scope: !3103, file: !94, line: 312, baseType: !3107, size: 64, offset: 192)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "sysdata", scope: !3103, file: !94, line: 314, baseType: !156, size: 64, offset: 256)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !3103, file: !94, line: 315, baseType: !176, size: 64, offset: 320)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3103, file: !94, line: 316, baseType: !3916, size: 64, offset: 384)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_slot", file: !94, line: 69, size: 832, elements: !3918)
!3918 = !{!3919, !3920, !3921, !3924, !3925}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3917, file: !94, line: 70, baseType: !3107, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3917, file: !94, line: 71, baseType: !375, size: 128, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3917, file: !94, line: 72, baseType: !3922, size: 64, offset: 192)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DICompositeType(tag: DW_TAG_structure_type, name: "hotplug_slot", file: !94, line: 72, flags: DIFlagFwdDecl)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !3917, file: !94, line: 73, baseType: !266, size: 8, offset: 256)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3917, file: !94, line: 74, baseType: !3178, size: 512, offset: 320)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "devfn", scope: !3103, file: !94, line: 318, baseType: !7, size: 32, offset: 448)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3103, file: !94, line: 319, baseType: !163, size: 16, offset: 480)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3103, file: !94, line: 320, baseType: !163, size: 16, offset: 496)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !3103, file: !94, line: 321, baseType: !163, size: 16, offset: 512)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !3103, file: !94, line: 322, baseType: !163, size: 16, offset: 528)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3103, file: !94, line: 323, baseType: !7, size: 32, offset: 544)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !3103, file: !94, line: 324, baseType: !954, size: 8, offset: 576)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !3103, file: !94, line: 325, baseType: !954, size: 8, offset: 584)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_cap", scope: !3103, file: !94, line: 330, baseType: !954, size: 8, offset: 592)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "msi_cap", scope: !3103, file: !94, line: 331, baseType: !954, size: 8, offset: 600)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "msix_cap", scope: !3103, file: !94, line: 332, baseType: !954, size: 8, offset: 608)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_mpss", scope: !3103, file: !94, line: 333, baseType: !954, size: 3, offset: 616, flags: DIFlagBitField, extraData: i64 616)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "rom_base_reg", scope: !3103, file: !94, line: 334, baseType: !954, size: 8, offset: 624)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !3103, file: !94, line: 335, baseType: !954, size: 8, offset: 632)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "pcie_flags_reg", scope: !3103, file: !94, line: 336, baseType: !614, size: 16, offset: 640)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alias_mask", scope: !3103, file: !94, line: 337, baseType: !3942, size: 64, offset: 704)
!3942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3103, file: !94, line: 339, baseType: !3944, size: 64, offset: 768)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_driver", file: !94, line: 858, size: 2048, elements: !3946)
!3946 = !{!3947, !3948, !3949, !3961, !3965, !3969, !3973, !3975, !3976, !3980, !3999, !4000, !4001}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3945, file: !94, line: 859, baseType: !375, size: 128)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3945, file: !94, line: 860, baseType: !167, size: 64, offset: 128)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3945, file: !94, line: 861, baseType: !3950, size: 64, offset: 192)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3952)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_device_id", file: !3546, line: 38, size: 256, elements: !3953)
!3953 = !{!3954, !3955, !3956, !3957, !3958, !3959, !3960}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3952, file: !3546, line: 39, baseType: !166, size: 32)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !3952, file: !3546, line: 39, baseType: !166, size: 32, offset: 32)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "subvendor", scope: !3952, file: !3546, line: 40, baseType: !166, size: 32, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "subdevice", scope: !3952, file: !3546, line: 40, baseType: !166, size: 32, offset: 96)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3952, file: !3546, line: 41, baseType: !166, size: 32, offset: 128)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "class_mask", scope: !3952, file: !3546, line: 41, baseType: !166, size: 32, offset: 160)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3952, file: !3546, line: 42, baseType: !3565, size: 64, offset: 192)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3945, file: !94, line: 862, baseType: !3962, size: 64, offset: 256)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!190, !3102, !3950}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3945, file: !94, line: 863, baseType: !3966, size: 64, offset: 320)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DISubroutineType(types: !3968)
!3968 = !{null, !3102}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3945, file: !94, line: 864, baseType: !3970, size: 64, offset: 384)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!190, !3102, !3576}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3945, file: !94, line: 865, baseType: !3974, size: 64, offset: 448)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3945, file: !94, line: 866, baseType: !3966, size: 64, offset: 512)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "sriov_configure", scope: !3945, file: !94, line: 867, baseType: !3977, size: 64, offset: 576)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!190, !3102, !190}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "err_handler", scope: !3945, file: !94, line: 868, baseType: !3981, size: 64, offset: 640)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3982, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3983)
!3983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_error_handlers", file: !94, line: 795, size: 384, elements: !3984)
!3984 = !{!3985, !3991, !3995, !3996, !3997, !3998}
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "error_detected", scope: !3983, file: !94, line: 797, baseType: !3986, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3987, size: 64)
!3987 = !DISubroutineType(types: !3988)
!3988 = !{!3989, !3102, !3990}
!3989 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_ers_result_t", file: !94, line: 772, baseType: !7)
!3990 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_channel_state_t", file: !94, line: 180, baseType: !7)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_enabled", scope: !3983, file: !94, line: 801, baseType: !3992, size: 64, offset: 64)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!3989, !3102}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "slot_reset", scope: !3983, file: !94, line: 804, baseType: !3992, size: 64, offset: 128)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "reset_prepare", scope: !3983, file: !94, line: 807, baseType: !3966, size: 64, offset: 192)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "reset_done", scope: !3983, file: !94, line: 808, baseType: !3966, size: 64, offset: 256)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3983, file: !94, line: 811, baseType: !3966, size: 64, offset: 320)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3945, file: !94, line: 869, baseType: !3255, size: 64, offset: 704)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3945, file: !94, line: 870, baseType: !3534, size: 1152, offset: 768)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "dynids", scope: !3945, file: !94, line: 871, baseType: !4002, size: 128, offset: 1920)
!4002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_dynids", file: !94, line: 759, size: 128, elements: !4003)
!4003 = !{!4004, !4005}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4002, file: !94, line: 760, baseType: !283)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4002, file: !94, line: 761, baseType: !375, size: 128)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3103, file: !94, line: 340, baseType: !261, size: 64, offset: 832)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3103, file: !94, line: 346, baseType: !3758, size: 128, offset: 896)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "current_state", scope: !3103, file: !94, line: 348, baseType: !4009, size: 32, offset: 1024)
!4009 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_power_t", file: !94, line: 155, baseType: !190)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "imm_ready", scope: !3103, file: !94, line: 351, baseType: !7, size: 1, offset: 1056, flags: DIFlagBitField, extraData: i64 1056)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "pm_cap", scope: !3103, file: !94, line: 352, baseType: !954, size: 8, offset: 1064)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "pme_support", scope: !3103, file: !94, line: 353, baseType: !7, size: 5, offset: 1072, flags: DIFlagBitField, extraData: i64 1072)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "pme_poll", scope: !3103, file: !94, line: 355, baseType: !7, size: 1, offset: 1077, flags: DIFlagBitField, extraData: i64 1072)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "d1_support", scope: !3103, file: !94, line: 356, baseType: !7, size: 1, offset: 1078, flags: DIFlagBitField, extraData: i64 1072)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "d2_support", scope: !3103, file: !94, line: 357, baseType: !7, size: 1, offset: 1079, flags: DIFlagBitField, extraData: i64 1072)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "no_d1d2", scope: !3103, file: !94, line: 358, baseType: !7, size: 1, offset: 1080, flags: DIFlagBitField, extraData: i64 1072)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "no_d3cold", scope: !3103, file: !94, line: 359, baseType: !7, size: 1, offset: 1081, flags: DIFlagBitField, extraData: i64 1072)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "bridge_d3", scope: !3103, file: !94, line: 360, baseType: !7, size: 1, offset: 1082, flags: DIFlagBitField, extraData: i64 1072)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_allowed", scope: !3103, file: !94, line: 361, baseType: !7, size: 1, offset: 1083, flags: DIFlagBitField, extraData: i64 1072)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "mmio_always_on", scope: !3103, file: !94, line: 362, baseType: !7, size: 1, offset: 1084, flags: DIFlagBitField, extraData: i64 1072)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_prepared", scope: !3103, file: !94, line: 364, baseType: !7, size: 1, offset: 1085, flags: DIFlagBitField, extraData: i64 1072)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_d3cold", scope: !3103, file: !94, line: 365, baseType: !7, size: 1, offset: 1086, flags: DIFlagBitField, extraData: i64 1072)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "skip_bus_pm", scope: !3103, file: !94, line: 369, baseType: !7, size: 1, offset: 1087, flags: DIFlagBitField, extraData: i64 1072)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_hotplug", scope: !3103, file: !94, line: 370, baseType: !7, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1072)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_user_indicators", scope: !3103, file: !94, line: 371, baseType: !7, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1072)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "clear_retrain_link", scope: !3103, file: !94, line: 374, baseType: !7, size: 1, offset: 1090, flags: DIFlagBitField, extraData: i64 1072)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "d3hot_delay", scope: !3103, file: !94, line: 376, baseType: !7, size: 32, offset: 1120)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "d3cold_delay", scope: !3103, file: !94, line: 377, baseType: !7, size: 32, offset: 1152)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "link_state", scope: !3103, file: !94, line: 380, baseType: !4030, size: 64, offset: 1216)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DICompositeType(tag: DW_TAG_structure_type, name: "pcie_link_state", file: !94, line: 303, flags: DIFlagFwdDecl)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "ltr_path", scope: !3103, file: !94, line: 381, baseType: !7, size: 1, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "l1ss", scope: !3103, file: !94, line: 383, baseType: !190, size: 32, offset: 1312)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "eetlp_prefix_path", scope: !3103, file: !94, line: 385, baseType: !7, size: 1, offset: 1344, flags: DIFlagBitField, extraData: i64 1344)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "error_state", scope: !3103, file: !94, line: 387, baseType: !3990, size: 32, offset: 1376)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3103, file: !94, line: 388, baseType: !3175, size: 5568, offset: 1408)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_size", scope: !3103, file: !94, line: 390, baseType: !190, size: 32, offset: 6976)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3103, file: !94, line: 396, baseType: !7, size: 32, offset: 7008)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !3103, file: !94, line: 397, baseType: !4040, size: 8704, offset: 7040)
!4040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3119, size: 8704, elements: !4041)
!4041 = !{!4042}
!4042 = !DISubrange(count: 17)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3103, file: !94, line: 399, baseType: !362, size: 8, offset: 15744)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "transparent", scope: !3103, file: !94, line: 401, baseType: !7, size: 1, offset: 15752, flags: DIFlagBitField, extraData: i64 15752)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "io_window", scope: !3103, file: !94, line: 402, baseType: !7, size: 1, offset: 15753, flags: DIFlagBitField, extraData: i64 15752)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "pref_window", scope: !3103, file: !94, line: 403, baseType: !7, size: 1, offset: 15754, flags: DIFlagBitField, extraData: i64 15752)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "pref_64_window", scope: !3103, file: !94, line: 404, baseType: !7, size: 1, offset: 15755, flags: DIFlagBitField, extraData: i64 15752)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "multifunction", scope: !3103, file: !94, line: 405, baseType: !7, size: 1, offset: 15756, flags: DIFlagBitField, extraData: i64 15752)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "is_busmaster", scope: !3103, file: !94, line: 407, baseType: !7, size: 1, offset: 15757, flags: DIFlagBitField, extraData: i64 15752)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "no_msi", scope: !3103, file: !94, line: 408, baseType: !7, size: 1, offset: 15758, flags: DIFlagBitField, extraData: i64 15752)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "no_64bit_msi", scope: !3103, file: !94, line: 409, baseType: !7, size: 1, offset: 15759, flags: DIFlagBitField, extraData: i64 15752)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "block_cfg_access", scope: !3103, file: !94, line: 410, baseType: !7, size: 1, offset: 15760, flags: DIFlagBitField, extraData: i64 15752)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "broken_parity_status", scope: !3103, file: !94, line: 411, baseType: !7, size: 1, offset: 15761, flags: DIFlagBitField, extraData: i64 15752)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "irq_reroute_variant", scope: !3103, file: !94, line: 412, baseType: !7, size: 2, offset: 15762, flags: DIFlagBitField, extraData: i64 15752)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !3103, file: !94, line: 413, baseType: !7, size: 1, offset: 15764, flags: DIFlagBitField, extraData: i64 15752)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !3103, file: !94, line: 414, baseType: !7, size: 1, offset: 15765, flags: DIFlagBitField, extraData: i64 15752)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "ari_enabled", scope: !3103, file: !94, line: 415, baseType: !7, size: 1, offset: 15766, flags: DIFlagBitField, extraData: i64 15752)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "ats_enabled", scope: !3103, file: !94, line: 416, baseType: !7, size: 1, offset: 15767, flags: DIFlagBitField, extraData: i64 15752)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "pasid_enabled", scope: !3103, file: !94, line: 417, baseType: !7, size: 1, offset: 15768, flags: DIFlagBitField, extraData: i64 15752)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "pri_enabled", scope: !3103, file: !94, line: 418, baseType: !7, size: 1, offset: 15769, flags: DIFlagBitField, extraData: i64 15752)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "is_managed", scope: !3103, file: !94, line: 419, baseType: !7, size: 1, offset: 15770, flags: DIFlagBitField, extraData: i64 15752)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "needs_freset", scope: !3103, file: !94, line: 420, baseType: !7, size: 1, offset: 15771, flags: DIFlagBitField, extraData: i64 15752)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "state_saved", scope: !3103, file: !94, line: 421, baseType: !7, size: 1, offset: 15772, flags: DIFlagBitField, extraData: i64 15752)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "is_physfn", scope: !3103, file: !94, line: 422, baseType: !7, size: 1, offset: 15773, flags: DIFlagBitField, extraData: i64 15752)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "is_virtfn", scope: !3103, file: !94, line: 423, baseType: !7, size: 1, offset: 15774, flags: DIFlagBitField, extraData: i64 15752)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "reset_fn", scope: !3103, file: !94, line: 424, baseType: !7, size: 1, offset: 15775, flags: DIFlagBitField, extraData: i64 15752)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "is_hotplug_bridge", scope: !3103, file: !94, line: 425, baseType: !7, size: 1, offset: 15776, flags: DIFlagBitField, extraData: i64 15752)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "shpc_managed", scope: !3103, file: !94, line: 426, baseType: !7, size: 1, offset: 15777, flags: DIFlagBitField, extraData: i64 15752)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunderbolt", scope: !3103, file: !94, line: 427, baseType: !7, size: 1, offset: 15778, flags: DIFlagBitField, extraData: i64 15752)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "untrusted", scope: !3103, file: !94, line: 435, baseType: !7, size: 1, offset: 15779, flags: DIFlagBitField, extraData: i64 15752)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "external_facing", scope: !3103, file: !94, line: 441, baseType: !7, size: 1, offset: 15780, flags: DIFlagBitField, extraData: i64 15752)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "broken_intx_masking", scope: !3103, file: !94, line: 442, baseType: !7, size: 1, offset: 15781, flags: DIFlagBitField, extraData: i64 15752)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "io_window_1k", scope: !3103, file: !94, line: 443, baseType: !7, size: 1, offset: 15782, flags: DIFlagBitField, extraData: i64 15752)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "irq_managed", scope: !3103, file: !94, line: 444, baseType: !7, size: 1, offset: 15783, flags: DIFlagBitField, extraData: i64 15752)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "non_compliant_bars", scope: !3103, file: !94, line: 445, baseType: !7, size: 1, offset: 15784, flags: DIFlagBitField, extraData: i64 15752)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "is_probed", scope: !3103, file: !94, line: 446, baseType: !7, size: 1, offset: 15785, flags: DIFlagBitField, extraData: i64 15752)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "link_active_reporting", scope: !3103, file: !94, line: 447, baseType: !7, size: 1, offset: 15786, flags: DIFlagBitField, extraData: i64 15752)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "no_vf_scan", scope: !3103, file: !94, line: 448, baseType: !7, size: 1, offset: 15787, flags: DIFlagBitField, extraData: i64 15752)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "no_command_memory", scope: !3103, file: !94, line: 449, baseType: !7, size: 1, offset: 15788, flags: DIFlagBitField, extraData: i64 15752)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "dev_flags", scope: !3103, file: !94, line: 450, baseType: !4081, size: 16, offset: 15792)
!4081 = !DIDerivedType(tag: DW_TAG_typedef, name: "pci_dev_flags_t", file: !94, line: 206, baseType: !163)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "enable_cnt", scope: !3103, file: !94, line: 451, baseType: !708, size: 32, offset: 15808)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "saved_config_space", scope: !3103, file: !94, line: 453, baseType: !4084, size: 512, offset: 15840)
!4084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 512, elements: !1340)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "saved_cap_space", scope: !3103, file: !94, line: 454, baseType: !420, size: 64, offset: 16384)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr", scope: !3103, file: !94, line: 455, baseType: !3269, size: 64, offset: 16448)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "rom_attr_enabled", scope: !3103, file: !94, line: 456, baseType: !190, size: 32, offset: 16512)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr", scope: !3103, file: !94, line: 457, baseType: !4089, size: 1088, offset: 16576)
!4089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3269, size: 1088, elements: !4041)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "res_attr_wc", scope: !3103, file: !94, line: 458, baseType: !4089, size: 1088, offset: 17664)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "msi_irq_groups", scope: !3103, file: !94, line: 469, baseType: !3255, size: 64, offset: 18752)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "vpd", scope: !3103, file: !94, line: 471, baseType: !4093, size: 64, offset: 18816)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DICompositeType(tag: DW_TAG_structure_type, name: "pci_vpd", file: !94, line: 304, flags: DIFlagFwdDecl)
!4095 = !DIDerivedType(tag: DW_TAG_member, scope: !3103, file: !94, line: 478, baseType: !4096, size: 64, offset: 18880)
!4096 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3103, file: !94, line: 478, size: 64, elements: !4097)
!4097 = !{!4098, !4125}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "sriov", scope: !4096, file: !94, line: 479, baseType: !4099, size: 64)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sriov", file: !138, line: 323, size: 1024, elements: !4101)
!4101 = !{!4102, !4103, !4104, !4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4124}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !4100, file: !138, line: 324, baseType: !190, size: 32)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !4100, file: !138, line: 325, baseType: !190, size: 32, offset: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !4100, file: !138, line: 326, baseType: !257, size: 32, offset: 64)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !4100, file: !138, line: 327, baseType: !614, size: 16, offset: 96)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "total_VFs", scope: !4100, file: !138, line: 328, baseType: !614, size: 16, offset: 112)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "initial_VFs", scope: !4100, file: !138, line: 329, baseType: !614, size: 16, offset: 128)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "num_VFs", scope: !4100, file: !138, line: 330, baseType: !614, size: 16, offset: 144)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4100, file: !138, line: 331, baseType: !614, size: 16, offset: 160)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !4100, file: !138, line: 332, baseType: !614, size: 16, offset: 176)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "vf_device", scope: !4100, file: !138, line: 333, baseType: !614, size: 16, offset: 192)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "pgsz", scope: !4100, file: !138, line: 334, baseType: !257, size: 32, offset: 224)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !4100, file: !138, line: 335, baseType: !954, size: 8, offset: 256)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "max_VF_buses", scope: !4100, file: !138, line: 336, baseType: !954, size: 8, offset: 264)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "driver_max_VFs", scope: !4100, file: !138, line: 337, baseType: !614, size: 16, offset: 272)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4100, file: !138, line: 338, baseType: !3102, size: 64, offset: 320)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4100, file: !138, line: 339, baseType: !3102, size: 64, offset: 384)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4100, file: !138, line: 340, baseType: !257, size: 32, offset: 448)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_type", scope: !4100, file: !138, line: 341, baseType: !954, size: 8, offset: 480)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_vendor", scope: !4100, file: !138, line: 342, baseType: !614, size: 16, offset: 496)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem_device", scope: !4100, file: !138, line: 343, baseType: !614, size: 16, offset: 512)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "barsz", scope: !4100, file: !138, line: 344, baseType: !4123, size: 384, offset: 576)
!4123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3123, size: 384, elements: !1230)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_autoprobe", scope: !4100, file: !138, line: 345, baseType: !362, size: 8, offset: 960)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "physfn", scope: !4096, file: !94, line: 480, baseType: !3102, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "ats_cap", scope: !3103, file: !94, line: 482, baseType: !614, size: 16, offset: 18944)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "ats_stu", scope: !3103, file: !94, line: 483, baseType: !954, size: 8, offset: 18960)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "acs_cap", scope: !3103, file: !94, line: 497, baseType: !614, size: 16, offset: 18976)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "rom", scope: !3103, file: !94, line: 498, baseType: !2043, size: 64, offset: 19008)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "romlen", scope: !3103, file: !94, line: 499, baseType: !504, size: 64, offset: 19072)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !3103, file: !94, line: 500, baseType: !343, size: 64, offset: 19136)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "priv_flags", scope: !3103, file: !94, line: 502, baseType: !157, size: 64, offset: 19200)
!4133 = !DILocalVariable(name: "dev", arg: 1, scope: !3099, file: !3, line: 405, type: !3102)
!4134 = !DILocation(line: 405, column: 44, scope: !3099)
!4135 = !DILocalVariable(name: "bus", scope: !3099, file: !3, line: 407, type: !3107)
!4136 = !DILocation(line: 407, column: 18, scope: !3099)
!4137 = !DILocation(line: 407, column: 24, scope: !3099)
!4138 = !DILocation(line: 407, column: 29, scope: !3099)
!4139 = !DILocalVariable(name: "e", scope: !3099, file: !3, line: 408, type: !176)
!4140 = !DILocation(line: 408, column: 25, scope: !3099)
!4141 = !DILocalVariable(name: "name", scope: !3099, file: !3, line: 409, type: !1339)
!4142 = !DILocation(line: 409, column: 7, scope: !3099)
!4143 = !DILocation(line: 411, column: 7, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 411, column: 6)
!4145 = !DILocation(line: 411, column: 6, scope: !3099)
!4146 = !DILocation(line: 412, column: 3, scope: !4144)
!4147 = !DILocation(line: 414, column: 7, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 414, column: 6)
!4149 = !DILocation(line: 414, column: 12, scope: !4148)
!4150 = !DILocation(line: 414, column: 6, scope: !3099)
!4151 = !DILocation(line: 415, column: 23, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 415, column: 7)
!4153 = distinct !DILexicalBlock(scope: !4148, file: !3, line: 414, column: 21)
!4154 = !DILocation(line: 415, column: 7, scope: !4152)
!4155 = !DILocation(line: 415, column: 7, scope: !4153)
!4156 = !DILocation(line: 416, column: 12, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 415, column: 29)
!4158 = !DILocation(line: 416, column: 45, scope: !4157)
!4159 = !DILocation(line: 416, column: 31, scope: !4157)
!4160 = !DILocation(line: 417, column: 6, scope: !4157)
!4161 = !DILocation(line: 417, column: 11, scope: !4157)
!4162 = !DILocation(line: 416, column: 4, scope: !4157)
!4163 = !DILocation(line: 418, column: 3, scope: !4157)
!4164 = !DILocation(line: 419, column: 12, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4152, file: !3, line: 418, column: 10)
!4166 = !DILocation(line: 419, column: 26, scope: !4165)
!4167 = !DILocation(line: 419, column: 31, scope: !4165)
!4168 = !DILocation(line: 419, column: 4, scope: !4165)
!4169 = !DILocation(line: 421, column: 29, scope: !4153)
!4170 = !DILocation(line: 421, column: 35, scope: !4153)
!4171 = !DILocation(line: 421, column: 18, scope: !4153)
!4172 = !DILocation(line: 421, column: 3, scope: !4153)
!4173 = !DILocation(line: 421, column: 8, scope: !4153)
!4174 = !DILocation(line: 421, column: 16, scope: !4153)
!4175 = !DILocation(line: 422, column: 8, scope: !4176)
!4176 = distinct !DILexicalBlock(scope: !4153, file: !3, line: 422, column: 7)
!4177 = !DILocation(line: 422, column: 13, scope: !4176)
!4178 = !DILocation(line: 422, column: 7, scope: !4153)
!4179 = !DILocation(line: 423, column: 4, scope: !4176)
!4180 = !DILocation(line: 424, column: 2, scope: !4153)
!4181 = !DILocation(line: 426, column: 10, scope: !3099)
!4182 = !DILocation(line: 426, column: 27, scope: !3099)
!4183 = !DILocation(line: 426, column: 49, scope: !3099)
!4184 = !DILocation(line: 426, column: 2, scope: !3099)
!4185 = !DILocation(line: 427, column: 23, scope: !3099)
!4186 = !DILocation(line: 427, column: 58, scope: !3099)
!4187 = !DILocation(line: 427, column: 63, scope: !3099)
!4188 = !DILocation(line: 428, column: 28, scope: !3099)
!4189 = !DILocation(line: 427, column: 6, scope: !3099)
!4190 = !DILocation(line: 427, column: 4, scope: !3099)
!4191 = !DILocation(line: 429, column: 7, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !3099, file: !3, line: 429, column: 6)
!4193 = !DILocation(line: 429, column: 6, scope: !3099)
!4194 = !DILocation(line: 430, column: 3, scope: !4192)
!4195 = !DILocation(line: 431, column: 16, scope: !3099)
!4196 = !DILocation(line: 431, column: 19, scope: !3099)
!4197 = !DILocation(line: 431, column: 24, scope: !3099)
!4198 = !DILocation(line: 431, column: 2, scope: !3099)
!4199 = !DILocation(line: 432, column: 17, scope: !3099)
!4200 = !DILocation(line: 432, column: 2, scope: !3099)
!4201 = !DILocation(line: 432, column: 7, scope: !3099)
!4202 = !DILocation(line: 432, column: 15, scope: !3099)
!4203 = !DILocation(line: 434, column: 2, scope: !3099)
!4204 = !DILocation(line: 435, column: 1, scope: !3099)
!4205 = distinct !DISubprogram(name: "pci_proc_domain", scope: !4206, file: !4206, line: 49, type: !3139, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4206 = !DIFile(filename: "./arch/x86/include/asm/pci.h", directory: "/home/lizy2001/genbc/linux")
!4207 = !DILocalVariable(name: "bus", arg: 1, scope: !4205, file: !4206, line: 49, type: !3107)
!4208 = !DILocation(line: 49, column: 51, scope: !4205)
!4209 = !DILocation(line: 51, column: 23, scope: !4205)
!4210 = !DILocation(line: 51, column: 9, scope: !4205)
!4211 = !DILocation(line: 51, column: 2, scope: !4205)
!4212 = distinct !DISubprogram(name: "pci_domain_nr", scope: !4206, file: !4206, line: 44, type: !3139, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4213 = !DILocalVariable(name: "bus", arg: 1, scope: !4212, file: !4206, line: 44, type: !3107)
!4214 = !DILocation(line: 44, column: 49, scope: !4212)
!4215 = !DILocation(line: 46, column: 24, scope: !4212)
!4216 = !DILocation(line: 46, column: 9, scope: !4212)
!4217 = !DILocation(line: 46, column: 30, scope: !4212)
!4218 = !DILocation(line: 46, column: 2, scope: !4212)
!4219 = distinct !DISubprogram(name: "pci_proc_detach_device", scope: !3, file: !3, line: 437, type: !3100, scopeLine: 438, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4220 = !DILocalVariable(name: "dev", arg: 1, scope: !4219, file: !3, line: 437, type: !3102)
!4221 = !DILocation(line: 437, column: 44, scope: !4219)
!4222 = !DILocation(line: 439, column: 14, scope: !4219)
!4223 = !DILocation(line: 439, column: 19, scope: !4219)
!4224 = !DILocation(line: 439, column: 2, scope: !4219)
!4225 = !DILocation(line: 440, column: 2, scope: !4219)
!4226 = !DILocation(line: 440, column: 7, scope: !4219)
!4227 = !DILocation(line: 440, column: 15, scope: !4219)
!4228 = !DILocation(line: 441, column: 2, scope: !4219)
!4229 = distinct !DISubprogram(name: "pci_proc_detach_bus", scope: !3, file: !3, line: 444, type: !3139, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4230 = !DILocalVariable(name: "bus", arg: 1, scope: !4229, file: !3, line: 444, type: !3107)
!4231 = !DILocation(line: 444, column: 41, scope: !4229)
!4232 = !DILocation(line: 446, column: 14, scope: !4229)
!4233 = !DILocation(line: 446, column: 19, scope: !4229)
!4234 = !DILocation(line: 446, column: 2, scope: !4229)
!4235 = !DILocation(line: 447, column: 2, scope: !4229)
!4236 = distinct !DISubprogram(name: "pci_proc_init", scope: !3, file: !3, line: 450, type: !4237, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!190}
!4239 = !DILocalVariable(name: "dev", scope: !4236, file: !3, line: 452, type: !3102)
!4240 = !DILocation(line: 452, column: 18, scope: !4236)
!4241 = !DILocation(line: 453, column: 21, scope: !4236)
!4242 = !DILocation(line: 453, column: 19, scope: !4236)
!4243 = !DILocation(line: 454, column: 2, scope: !4236)
!4244 = !DILocation(line: 456, column: 19, scope: !4236)
!4245 = !DILocation(line: 457, column: 2, scope: !4236)
!4246 = !DILocation(line: 458, column: 26, scope: !4236)
!4247 = !DILocation(line: 458, column: 3, scope: !4236)
!4248 = distinct !{!4248, !4245, !4249}
!4249 = !DILocation(line: 458, column: 29, scope: !4236)
!4250 = !DILocation(line: 460, column: 2, scope: !4236)
!4251 = distinct !DISubprogram(name: "to_pci_sysdata", scope: !4206, file: !4206, line: 36, type: !4252, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4252 = !DISubroutineType(types: !4253)
!4253 = !{!4254, !4265}
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_sysdata", file: !4206, line: 15, size: 320, elements: !4256)
!4256 = !{!4257, !4258, !4259, !4262, !4263, !4264}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4255, file: !4206, line: 16, baseType: !190, size: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4255, file: !4206, line: 17, baseType: !190, size: 32, offset: 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "companion", scope: !4255, file: !4206, line: 19, baseType: !4260, size: 64, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4261, size: 64)
!4261 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !3521, line: 228, flags: DIFlagFwdDecl)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4255, file: !4206, line: 22, baseType: !156, size: 64, offset: 128)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4255, file: !4206, line: 25, baseType: !156, size: 64, offset: 192)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "vmd_dev", scope: !4255, file: !4206, line: 28, baseType: !3102, size: 64, offset: 256)
!4265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4266, size: 64)
!4266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3108)
!4267 = !DILocalVariable(name: "bus", arg: 1, scope: !4251, file: !4206, line: 36, type: !4265)
!4268 = !DILocation(line: 36, column: 72, scope: !4251)
!4269 = !DILocation(line: 38, column: 9, scope: !4251)
!4270 = !DILocation(line: 38, column: 14, scope: !4251)
!4271 = !DILocation(line: 38, column: 2, scope: !4251)
!4272 = distinct !DISubprogram(name: "proc_bus_pci_open", scope: !3, file: !3, line: 285, type: !188, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4273 = !DILocalVariable(name: "s", arg: 1, scope: !4274, file: !99, line: 445, type: !1563)
!4274 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !99, file: !99, line: 445, type: !4275, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!156, !1563, !154, !504}
!4277 = !DILocation(line: 445, column: 72, scope: !4274, inlinedAt: !4278)
!4278 = distinct !DILocation(line: 552, column: 10, scope: !4279, inlinedAt: !4284)
!4279 = distinct !DILexicalBlock(scope: !4280, file: !99, line: 540, column: 34)
!4280 = distinct !DILexicalBlock(scope: !4281, file: !99, line: 540, column: 6)
!4281 = distinct !DISubprogram(name: "kmalloc", scope: !99, file: !99, line: 538, type: !4282, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{!156, !504, !154}
!4284 = distinct !DILocation(line: 287, column: 35, scope: !4272)
!4285 = !DILocalVariable(name: "flags", arg: 2, scope: !4274, file: !99, line: 446, type: !154)
!4286 = !DILocation(line: 446, column: 9, scope: !4274, inlinedAt: !4278)
!4287 = !DILocalVariable(name: "size", arg: 3, scope: !4274, file: !99, line: 446, type: !504)
!4288 = !DILocation(line: 446, column: 23, scope: !4274, inlinedAt: !4278)
!4289 = !DILocalVariable(name: "ret", scope: !4274, file: !99, line: 448, type: !156)
!4290 = !DILocation(line: 448, column: 8, scope: !4274, inlinedAt: !4278)
!4291 = !DILocalVariable(name: "flags", arg: 1, scope: !4292, file: !99, line: 318, type: !154)
!4292 = distinct !DISubprogram(name: "kmalloc_type", scope: !99, file: !99, line: 318, type: !4293, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{!98, !154}
!4295 = !DILocation(line: 318, column: 67, scope: !4292, inlinedAt: !4296)
!4296 = distinct !DILocation(line: 553, column: 20, scope: !4279, inlinedAt: !4284)
!4297 = !DILocalVariable(name: "size", arg: 1, scope: !4298, file: !99, line: 346, type: !504)
!4298 = distinct !DISubprogram(name: "kmalloc_index", scope: !99, file: !99, line: 346, type: !4299, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!7, !504}
!4301 = !DILocation(line: 346, column: 58, scope: !4298, inlinedAt: !4302)
!4302 = distinct !DILocation(line: 547, column: 11, scope: !4279, inlinedAt: !4284)
!4303 = !DILocalVariable(name: "size", arg: 1, scope: !4304, file: !99, line: 472, type: !504)
!4304 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !99, file: !99, line: 472, type: !4305, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!156, !504, !154, !7}
!4307 = !DILocation(line: 472, column: 28, scope: !4304, inlinedAt: !4308)
!4308 = distinct !DILocation(line: 481, column: 9, scope: !4309, inlinedAt: !4310)
!4309 = distinct !DISubprogram(name: "kmalloc_large", scope: !99, file: !99, line: 478, type: !4282, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4310 = distinct !DILocation(line: 545, column: 11, scope: !4311, inlinedAt: !4284)
!4311 = distinct !DILexicalBlock(scope: !4279, file: !99, line: 544, column: 7)
!4312 = !DILocalVariable(name: "flags", arg: 2, scope: !4304, file: !99, line: 472, type: !154)
!4313 = !DILocation(line: 472, column: 40, scope: !4304, inlinedAt: !4308)
!4314 = !DILocalVariable(name: "order", arg: 3, scope: !4304, file: !99, line: 472, type: !7)
!4315 = !DILocation(line: 472, column: 60, scope: !4304, inlinedAt: !4308)
!4316 = !DILocalVariable(name: "size", arg: 1, scope: !4309, file: !99, line: 478, type: !504)
!4317 = !DILocation(line: 478, column: 51, scope: !4309, inlinedAt: !4310)
!4318 = !DILocalVariable(name: "flags", arg: 2, scope: !4309, file: !99, line: 478, type: !154)
!4319 = !DILocation(line: 478, column: 63, scope: !4309, inlinedAt: !4310)
!4320 = !DILocalVariable(name: "order", scope: !4309, file: !99, line: 480, type: !7)
!4321 = !DILocation(line: 480, column: 15, scope: !4309, inlinedAt: !4310)
!4322 = !DILocalVariable(name: "size", arg: 1, scope: !4281, file: !99, line: 538, type: !504)
!4323 = !DILocation(line: 538, column: 45, scope: !4281, inlinedAt: !4284)
!4324 = !DILocalVariable(name: "flags", arg: 2, scope: !4281, file: !99, line: 538, type: !154)
!4325 = !DILocation(line: 538, column: 57, scope: !4281, inlinedAt: !4284)
!4326 = !DILocalVariable(name: "index", scope: !4279, file: !99, line: 542, type: !7)
!4327 = !DILocation(line: 542, column: 16, scope: !4279, inlinedAt: !4284)
!4328 = !DILocalVariable(name: "inode", arg: 1, scope: !4272, file: !3, line: 285, type: !191)
!4329 = !DILocation(line: 285, column: 44, scope: !4272)
!4330 = !DILocalVariable(name: "file", arg: 2, scope: !4272, file: !3, line: 285, type: !585)
!4331 = !DILocation(line: 285, column: 64, scope: !4272)
!4332 = !DILocalVariable(name: "fpriv", scope: !4272, file: !3, line: 287, type: !4333)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pci_filp_private", file: !3, line: 190, size: 64, elements: !4335)
!4335 = !{!4336, !4337}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_state", scope: !4334, file: !3, line: 191, baseType: !93, size: 32)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "write_combine", scope: !4334, file: !3, line: 192, baseType: !190, size: 32, offset: 32)
!4338 = !DILocation(line: 287, column: 27, scope: !4272)
!4339 = !DILocation(line: 540, column: 27, scope: !4280, inlinedAt: !4284)
!4340 = !DILocation(line: 540, column: 6, scope: !4280, inlinedAt: !4284)
!4341 = !DILocation(line: 540, column: 6, scope: !4281, inlinedAt: !4284)
!4342 = !DILocation(line: 544, column: 7, scope: !4311, inlinedAt: !4284)
!4343 = !DILocation(line: 544, column: 12, scope: !4311, inlinedAt: !4284)
!4344 = !DILocation(line: 544, column: 7, scope: !4279, inlinedAt: !4284)
!4345 = !DILocation(line: 545, column: 25, scope: !4311, inlinedAt: !4284)
!4346 = !DILocation(line: 545, column: 31, scope: !4311, inlinedAt: !4284)
!4347 = !DILocation(line: 480, column: 33, scope: !4309, inlinedAt: !4310)
!4348 = !DILocation(line: 480, column: 23, scope: !4309, inlinedAt: !4310)
!4349 = !DILocation(line: 481, column: 29, scope: !4309, inlinedAt: !4310)
!4350 = !DILocation(line: 481, column: 35, scope: !4309, inlinedAt: !4310)
!4351 = !DILocation(line: 481, column: 42, scope: !4309, inlinedAt: !4310)
!4352 = !DILocation(line: 474, column: 23, scope: !4304, inlinedAt: !4308)
!4353 = !DILocation(line: 474, column: 29, scope: !4304, inlinedAt: !4308)
!4354 = !DILocation(line: 474, column: 36, scope: !4304, inlinedAt: !4308)
!4355 = !DILocation(line: 474, column: 9, scope: !4304, inlinedAt: !4308)
!4356 = !DILocation(line: 545, column: 4, scope: !4311, inlinedAt: !4284)
!4357 = !DILocation(line: 547, column: 25, scope: !4279, inlinedAt: !4284)
!4358 = !DILocation(line: 348, column: 7, scope: !4359, inlinedAt: !4302)
!4359 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 348, column: 6)
!4360 = !DILocation(line: 348, column: 6, scope: !4298, inlinedAt: !4302)
!4361 = !DILocation(line: 349, column: 3, scope: !4359, inlinedAt: !4302)
!4362 = !DILocation(line: 351, column: 6, scope: !4363, inlinedAt: !4302)
!4363 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 351, column: 6)
!4364 = !DILocation(line: 351, column: 11, scope: !4363, inlinedAt: !4302)
!4365 = !DILocation(line: 351, column: 6, scope: !4298, inlinedAt: !4302)
!4366 = !DILocation(line: 352, column: 3, scope: !4363, inlinedAt: !4302)
!4367 = !DILocation(line: 354, column: 32, scope: !4368, inlinedAt: !4302)
!4368 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 354, column: 6)
!4369 = !DILocation(line: 354, column: 37, scope: !4368, inlinedAt: !4302)
!4370 = !DILocation(line: 354, column: 42, scope: !4368, inlinedAt: !4302)
!4371 = !DILocation(line: 354, column: 45, scope: !4368, inlinedAt: !4302)
!4372 = !DILocation(line: 354, column: 50, scope: !4368, inlinedAt: !4302)
!4373 = !DILocation(line: 354, column: 6, scope: !4298, inlinedAt: !4302)
!4374 = !DILocation(line: 355, column: 3, scope: !4368, inlinedAt: !4302)
!4375 = !DILocation(line: 356, column: 32, scope: !4376, inlinedAt: !4302)
!4376 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 356, column: 6)
!4377 = !DILocation(line: 356, column: 37, scope: !4376, inlinedAt: !4302)
!4378 = !DILocation(line: 356, column: 43, scope: !4376, inlinedAt: !4302)
!4379 = !DILocation(line: 356, column: 46, scope: !4376, inlinedAt: !4302)
!4380 = !DILocation(line: 356, column: 51, scope: !4376, inlinedAt: !4302)
!4381 = !DILocation(line: 356, column: 6, scope: !4298, inlinedAt: !4302)
!4382 = !DILocation(line: 357, column: 3, scope: !4376, inlinedAt: !4302)
!4383 = !DILocation(line: 358, column: 6, scope: !4384, inlinedAt: !4302)
!4384 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 358, column: 6)
!4385 = !DILocation(line: 358, column: 11, scope: !4384, inlinedAt: !4302)
!4386 = !DILocation(line: 358, column: 6, scope: !4298, inlinedAt: !4302)
!4387 = !DILocation(line: 358, column: 26, scope: !4384, inlinedAt: !4302)
!4388 = !DILocation(line: 359, column: 6, scope: !4389, inlinedAt: !4302)
!4389 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 359, column: 6)
!4390 = !DILocation(line: 359, column: 11, scope: !4389, inlinedAt: !4302)
!4391 = !DILocation(line: 359, column: 6, scope: !4298, inlinedAt: !4302)
!4392 = !DILocation(line: 359, column: 26, scope: !4389, inlinedAt: !4302)
!4393 = !DILocation(line: 360, column: 6, scope: !4394, inlinedAt: !4302)
!4394 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 360, column: 6)
!4395 = !DILocation(line: 360, column: 11, scope: !4394, inlinedAt: !4302)
!4396 = !DILocation(line: 360, column: 6, scope: !4298, inlinedAt: !4302)
!4397 = !DILocation(line: 360, column: 26, scope: !4394, inlinedAt: !4302)
!4398 = !DILocation(line: 361, column: 6, scope: !4399, inlinedAt: !4302)
!4399 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 361, column: 6)
!4400 = !DILocation(line: 361, column: 11, scope: !4399, inlinedAt: !4302)
!4401 = !DILocation(line: 361, column: 6, scope: !4298, inlinedAt: !4302)
!4402 = !DILocation(line: 361, column: 26, scope: !4399, inlinedAt: !4302)
!4403 = !DILocation(line: 362, column: 6, scope: !4404, inlinedAt: !4302)
!4404 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 362, column: 6)
!4405 = !DILocation(line: 362, column: 11, scope: !4404, inlinedAt: !4302)
!4406 = !DILocation(line: 362, column: 6, scope: !4298, inlinedAt: !4302)
!4407 = !DILocation(line: 362, column: 26, scope: !4404, inlinedAt: !4302)
!4408 = !DILocation(line: 363, column: 6, scope: !4409, inlinedAt: !4302)
!4409 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 363, column: 6)
!4410 = !DILocation(line: 363, column: 11, scope: !4409, inlinedAt: !4302)
!4411 = !DILocation(line: 363, column: 6, scope: !4298, inlinedAt: !4302)
!4412 = !DILocation(line: 363, column: 26, scope: !4409, inlinedAt: !4302)
!4413 = !DILocation(line: 364, column: 6, scope: !4414, inlinedAt: !4302)
!4414 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 364, column: 6)
!4415 = !DILocation(line: 364, column: 11, scope: !4414, inlinedAt: !4302)
!4416 = !DILocation(line: 364, column: 6, scope: !4298, inlinedAt: !4302)
!4417 = !DILocation(line: 364, column: 26, scope: !4414, inlinedAt: !4302)
!4418 = !DILocation(line: 365, column: 6, scope: !4419, inlinedAt: !4302)
!4419 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 365, column: 6)
!4420 = !DILocation(line: 365, column: 11, scope: !4419, inlinedAt: !4302)
!4421 = !DILocation(line: 365, column: 6, scope: !4298, inlinedAt: !4302)
!4422 = !DILocation(line: 365, column: 26, scope: !4419, inlinedAt: !4302)
!4423 = !DILocation(line: 366, column: 6, scope: !4424, inlinedAt: !4302)
!4424 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 366, column: 6)
!4425 = !DILocation(line: 366, column: 11, scope: !4424, inlinedAt: !4302)
!4426 = !DILocation(line: 366, column: 6, scope: !4298, inlinedAt: !4302)
!4427 = !DILocation(line: 366, column: 26, scope: !4424, inlinedAt: !4302)
!4428 = !DILocation(line: 367, column: 6, scope: !4429, inlinedAt: !4302)
!4429 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 367, column: 6)
!4430 = !DILocation(line: 367, column: 11, scope: !4429, inlinedAt: !4302)
!4431 = !DILocation(line: 367, column: 6, scope: !4298, inlinedAt: !4302)
!4432 = !DILocation(line: 367, column: 26, scope: !4429, inlinedAt: !4302)
!4433 = !DILocation(line: 368, column: 6, scope: !4434, inlinedAt: !4302)
!4434 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 368, column: 6)
!4435 = !DILocation(line: 368, column: 11, scope: !4434, inlinedAt: !4302)
!4436 = !DILocation(line: 368, column: 6, scope: !4298, inlinedAt: !4302)
!4437 = !DILocation(line: 368, column: 26, scope: !4434, inlinedAt: !4302)
!4438 = !DILocation(line: 369, column: 6, scope: !4439, inlinedAt: !4302)
!4439 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 369, column: 6)
!4440 = !DILocation(line: 369, column: 11, scope: !4439, inlinedAt: !4302)
!4441 = !DILocation(line: 369, column: 6, scope: !4298, inlinedAt: !4302)
!4442 = !DILocation(line: 369, column: 26, scope: !4439, inlinedAt: !4302)
!4443 = !DILocation(line: 370, column: 6, scope: !4444, inlinedAt: !4302)
!4444 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 370, column: 6)
!4445 = !DILocation(line: 370, column: 11, scope: !4444, inlinedAt: !4302)
!4446 = !DILocation(line: 370, column: 6, scope: !4298, inlinedAt: !4302)
!4447 = !DILocation(line: 370, column: 26, scope: !4444, inlinedAt: !4302)
!4448 = !DILocation(line: 371, column: 6, scope: !4449, inlinedAt: !4302)
!4449 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 371, column: 6)
!4450 = !DILocation(line: 371, column: 11, scope: !4449, inlinedAt: !4302)
!4451 = !DILocation(line: 371, column: 6, scope: !4298, inlinedAt: !4302)
!4452 = !DILocation(line: 371, column: 26, scope: !4449, inlinedAt: !4302)
!4453 = !DILocation(line: 372, column: 6, scope: !4454, inlinedAt: !4302)
!4454 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 372, column: 6)
!4455 = !DILocation(line: 372, column: 11, scope: !4454, inlinedAt: !4302)
!4456 = !DILocation(line: 372, column: 6, scope: !4298, inlinedAt: !4302)
!4457 = !DILocation(line: 372, column: 26, scope: !4454, inlinedAt: !4302)
!4458 = !DILocation(line: 373, column: 6, scope: !4459, inlinedAt: !4302)
!4459 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 373, column: 6)
!4460 = !DILocation(line: 373, column: 11, scope: !4459, inlinedAt: !4302)
!4461 = !DILocation(line: 373, column: 6, scope: !4298, inlinedAt: !4302)
!4462 = !DILocation(line: 373, column: 26, scope: !4459, inlinedAt: !4302)
!4463 = !DILocation(line: 374, column: 6, scope: !4464, inlinedAt: !4302)
!4464 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 374, column: 6)
!4465 = !DILocation(line: 374, column: 11, scope: !4464, inlinedAt: !4302)
!4466 = !DILocation(line: 374, column: 6, scope: !4298, inlinedAt: !4302)
!4467 = !DILocation(line: 374, column: 26, scope: !4464, inlinedAt: !4302)
!4468 = !DILocation(line: 375, column: 6, scope: !4469, inlinedAt: !4302)
!4469 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 375, column: 6)
!4470 = !DILocation(line: 375, column: 11, scope: !4469, inlinedAt: !4302)
!4471 = !DILocation(line: 375, column: 6, scope: !4298, inlinedAt: !4302)
!4472 = !DILocation(line: 375, column: 27, scope: !4469, inlinedAt: !4302)
!4473 = !DILocation(line: 376, column: 6, scope: !4474, inlinedAt: !4302)
!4474 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 376, column: 6)
!4475 = !DILocation(line: 376, column: 11, scope: !4474, inlinedAt: !4302)
!4476 = !DILocation(line: 376, column: 6, scope: !4298, inlinedAt: !4302)
!4477 = !DILocation(line: 376, column: 32, scope: !4474, inlinedAt: !4302)
!4478 = !DILocation(line: 377, column: 6, scope: !4479, inlinedAt: !4302)
!4479 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 377, column: 6)
!4480 = !DILocation(line: 377, column: 11, scope: !4479, inlinedAt: !4302)
!4481 = !DILocation(line: 377, column: 6, scope: !4298, inlinedAt: !4302)
!4482 = !DILocation(line: 377, column: 32, scope: !4479, inlinedAt: !4302)
!4483 = !DILocation(line: 378, column: 6, scope: !4484, inlinedAt: !4302)
!4484 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 378, column: 6)
!4485 = !DILocation(line: 378, column: 11, scope: !4484, inlinedAt: !4302)
!4486 = !DILocation(line: 378, column: 6, scope: !4298, inlinedAt: !4302)
!4487 = !DILocation(line: 378, column: 32, scope: !4484, inlinedAt: !4302)
!4488 = !DILocation(line: 379, column: 6, scope: !4489, inlinedAt: !4302)
!4489 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 379, column: 6)
!4490 = !DILocation(line: 379, column: 11, scope: !4489, inlinedAt: !4302)
!4491 = !DILocation(line: 379, column: 6, scope: !4298, inlinedAt: !4302)
!4492 = !DILocation(line: 379, column: 33, scope: !4489, inlinedAt: !4302)
!4493 = !DILocation(line: 380, column: 6, scope: !4494, inlinedAt: !4302)
!4494 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 380, column: 6)
!4495 = !DILocation(line: 380, column: 11, scope: !4494, inlinedAt: !4302)
!4496 = !DILocation(line: 380, column: 6, scope: !4298, inlinedAt: !4302)
!4497 = !DILocation(line: 380, column: 33, scope: !4494, inlinedAt: !4302)
!4498 = !DILocation(line: 381, column: 6, scope: !4499, inlinedAt: !4302)
!4499 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 381, column: 6)
!4500 = !DILocation(line: 381, column: 11, scope: !4499, inlinedAt: !4302)
!4501 = !DILocation(line: 381, column: 6, scope: !4298, inlinedAt: !4302)
!4502 = !DILocation(line: 381, column: 33, scope: !4499, inlinedAt: !4302)
!4503 = !DILocation(line: 382, column: 2, scope: !4504, inlinedAt: !4302)
!4504 = distinct !DILexicalBlock(scope: !4505, file: !99, line: 382, column: 2)
!4505 = distinct !DILexicalBlock(scope: !4298, file: !99, line: 382, column: 2)
!4506 = !{i32 -2143440766, i32 -2143440737, i32 -2143440691, i32 -2143440633, i32 -2143440579, i32 -2143440525, i32 -2143440470, i32 -2143440439}
!4507 = !DILocation(line: 382, column: 2, scope: !4508, inlinedAt: !4302)
!4508 = distinct !DILexicalBlock(scope: !4509, file: !99, line: 382, column: 2)
!4509 = distinct !DILexicalBlock(scope: !4505, file: !99, line: 382, column: 2)
!4510 = !{i32 -2143439996, i32 -2143439989, i32 -2143439935, i32 -2143439904, i32 -2143439874}
!4511 = !DILocation(line: 382, column: 2, scope: !4509, inlinedAt: !4302)
!4512 = !DILocation(line: 386, column: 1, scope: !4298, inlinedAt: !4302)
!4513 = !DILocation(line: 547, column: 9, scope: !4279, inlinedAt: !4284)
!4514 = !DILocation(line: 549, column: 8, scope: !4515, inlinedAt: !4284)
!4515 = distinct !DILexicalBlock(scope: !4279, file: !99, line: 549, column: 7)
!4516 = !DILocation(line: 549, column: 7, scope: !4279, inlinedAt: !4284)
!4517 = !DILocation(line: 550, column: 4, scope: !4515, inlinedAt: !4284)
!4518 = !DILocation(line: 553, column: 33, scope: !4279, inlinedAt: !4284)
!4519 = !DILocation(line: 325, column: 6, scope: !4520, inlinedAt: !4296)
!4520 = distinct !DILexicalBlock(scope: !4292, file: !99, line: 325, column: 6)
!4521 = !DILocation(line: 325, column: 6, scope: !4292, inlinedAt: !4296)
!4522 = !DILocation(line: 326, column: 3, scope: !4520, inlinedAt: !4296)
!4523 = !DILocation(line: 332, column: 9, scope: !4292, inlinedAt: !4296)
!4524 = !DILocation(line: 332, column: 15, scope: !4292, inlinedAt: !4296)
!4525 = !DILocation(line: 332, column: 2, scope: !4292, inlinedAt: !4296)
!4526 = !DILocation(line: 336, column: 1, scope: !4292, inlinedAt: !4296)
!4527 = !DILocation(line: 553, column: 5, scope: !4279, inlinedAt: !4284)
!4528 = !DILocation(line: 553, column: 41, scope: !4279, inlinedAt: !4284)
!4529 = !DILocation(line: 554, column: 5, scope: !4279, inlinedAt: !4284)
!4530 = !DILocation(line: 554, column: 12, scope: !4279, inlinedAt: !4284)
!4531 = !DILocation(line: 448, column: 31, scope: !4274, inlinedAt: !4278)
!4532 = !DILocation(line: 448, column: 34, scope: !4274, inlinedAt: !4278)
!4533 = !DILocation(line: 448, column: 14, scope: !4274, inlinedAt: !4278)
!4534 = !DILocation(line: 450, column: 22, scope: !4274, inlinedAt: !4278)
!4535 = !DILocation(line: 450, column: 25, scope: !4274, inlinedAt: !4278)
!4536 = !DILocation(line: 450, column: 30, scope: !4274, inlinedAt: !4278)
!4537 = !DILocation(line: 450, column: 36, scope: !4274, inlinedAt: !4278)
!4538 = !DILocation(line: 450, column: 8, scope: !4274, inlinedAt: !4278)
!4539 = !DILocation(line: 450, column: 6, scope: !4274, inlinedAt: !4278)
!4540 = !DILocation(line: 451, column: 9, scope: !4274, inlinedAt: !4278)
!4541 = !DILocation(line: 552, column: 3, scope: !4279, inlinedAt: !4284)
!4542 = !DILocation(line: 557, column: 19, scope: !4281, inlinedAt: !4284)
!4543 = !DILocation(line: 557, column: 25, scope: !4281, inlinedAt: !4284)
!4544 = !DILocation(line: 557, column: 9, scope: !4281, inlinedAt: !4284)
!4545 = !DILocation(line: 557, column: 2, scope: !4281, inlinedAt: !4284)
!4546 = !DILocation(line: 558, column: 1, scope: !4281, inlinedAt: !4284)
!4547 = !DILocation(line: 287, column: 35, scope: !4272)
!4548 = !DILocation(line: 289, column: 7, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4272, file: !3, line: 289, column: 6)
!4550 = !DILocation(line: 289, column: 6, scope: !4272)
!4551 = !DILocation(line: 290, column: 3, scope: !4549)
!4552 = !DILocation(line: 292, column: 2, scope: !4272)
!4553 = !DILocation(line: 292, column: 9, scope: !4272)
!4554 = !DILocation(line: 292, column: 20, scope: !4272)
!4555 = !DILocation(line: 293, column: 2, scope: !4272)
!4556 = !DILocation(line: 293, column: 9, scope: !4272)
!4557 = !DILocation(line: 293, column: 23, scope: !4272)
!4558 = !DILocation(line: 295, column: 23, scope: !4272)
!4559 = !DILocation(line: 295, column: 2, scope: !4272)
!4560 = !DILocation(line: 295, column: 8, scope: !4272)
!4561 = !DILocation(line: 295, column: 21, scope: !4272)
!4562 = !DILocation(line: 297, column: 2, scope: !4272)
!4563 = !DILocation(line: 298, column: 1, scope: !4272)
!4564 = distinct !DISubprogram(name: "proc_bus_pci_read", scope: !3, file: !3, line: 28, type: !588, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4565 = !DILocalVariable(name: "bit", arg: 1, scope: !4566, file: !4567, line: 173, type: !614)
!4566 = distinct !DISubprogram(name: "_static_cpu_has", scope: !4567, file: !4567, line: 173, type: !4568, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4567 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/lizy2001/genbc/linux")
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!362, !614}
!4570 = !DILocation(line: 173, column: 49, scope: !4566, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 56, column: 7, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 56, column: 7)
!4573 = distinct !DILexicalBlock(scope: !4574, file: !3, line: 56, column: 7)
!4574 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 56, column: 6)
!4575 = !DILocalVariable(name: "file", arg: 1, scope: !4564, file: !3, line: 28, type: !585)
!4576 = !DILocation(line: 28, column: 47, scope: !4564)
!4577 = !DILocalVariable(name: "buf", arg: 2, scope: !4564, file: !3, line: 28, type: !343)
!4578 = !DILocation(line: 28, column: 66, scope: !4564)
!4579 = !DILocalVariable(name: "nbytes", arg: 3, scope: !4564, file: !3, line: 29, type: !504)
!4580 = !DILocation(line: 29, column: 13, scope: !4564)
!4581 = !DILocalVariable(name: "ppos", arg: 4, scope: !4564, file: !3, line: 29, type: !536)
!4582 = !DILocation(line: 29, column: 29, scope: !4564)
!4583 = !DILocalVariable(name: "dev", scope: !4564, file: !3, line: 31, type: !3102)
!4584 = !DILocation(line: 31, column: 18, scope: !4564)
!4585 = !DILocation(line: 31, column: 44, scope: !4564)
!4586 = !DILocation(line: 31, column: 33, scope: !4564)
!4587 = !DILocation(line: 31, column: 24, scope: !4564)
!4588 = !DILocalVariable(name: "pos", scope: !4564, file: !3, line: 32, type: !7)
!4589 = !DILocation(line: 32, column: 15, scope: !4564)
!4590 = !DILocation(line: 32, column: 22, scope: !4564)
!4591 = !DILocation(line: 32, column: 21, scope: !4564)
!4592 = !DILocalVariable(name: "cnt", scope: !4564, file: !3, line: 33, type: !7)
!4593 = !DILocation(line: 33, column: 15, scope: !4564)
!4594 = !DILocalVariable(name: "size", scope: !4564, file: !3, line: 33, type: !7)
!4595 = !DILocation(line: 33, column: 20, scope: !4564)
!4596 = !DILocation(line: 41, column: 6, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 41, column: 6)
!4598 = !DILocation(line: 41, column: 6, scope: !4564)
!4599 = !DILocation(line: 42, column: 10, scope: !4597)
!4600 = !DILocation(line: 42, column: 15, scope: !4597)
!4601 = !DILocation(line: 42, column: 8, scope: !4597)
!4602 = !DILocation(line: 42, column: 3, scope: !4597)
!4603 = !DILocation(line: 43, column: 11, scope: !4604)
!4604 = distinct !DILexicalBlock(scope: !4597, file: !3, line: 43, column: 11)
!4605 = !DILocation(line: 43, column: 16, scope: !4604)
!4606 = !DILocation(line: 43, column: 25, scope: !4604)
!4607 = !DILocation(line: 43, column: 11, scope: !4597)
!4608 = !DILocation(line: 44, column: 8, scope: !4604)
!4609 = !DILocation(line: 44, column: 3, scope: !4604)
!4610 = !DILocation(line: 46, column: 8, scope: !4604)
!4611 = !DILocation(line: 48, column: 6, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 48, column: 6)
!4613 = !DILocation(line: 48, column: 13, scope: !4612)
!4614 = !DILocation(line: 48, column: 10, scope: !4612)
!4615 = !DILocation(line: 48, column: 6, scope: !4564)
!4616 = !DILocation(line: 49, column: 3, scope: !4612)
!4617 = !DILocation(line: 50, column: 6, scope: !4618)
!4618 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 50, column: 6)
!4619 = !DILocation(line: 50, column: 16, scope: !4618)
!4620 = !DILocation(line: 50, column: 13, scope: !4618)
!4621 = !DILocation(line: 50, column: 6, scope: !4564)
!4622 = !DILocation(line: 51, column: 12, scope: !4618)
!4623 = !DILocation(line: 51, column: 10, scope: !4618)
!4624 = !DILocation(line: 51, column: 3, scope: !4618)
!4625 = !DILocation(line: 52, column: 6, scope: !4626)
!4626 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 52, column: 6)
!4627 = !DILocation(line: 52, column: 12, scope: !4626)
!4628 = !DILocation(line: 52, column: 10, scope: !4626)
!4629 = !DILocation(line: 52, column: 21, scope: !4626)
!4630 = !DILocation(line: 52, column: 19, scope: !4626)
!4631 = !DILocation(line: 52, column: 6, scope: !4564)
!4632 = !DILocation(line: 53, column: 12, scope: !4626)
!4633 = !DILocation(line: 53, column: 19, scope: !4626)
!4634 = !DILocation(line: 53, column: 17, scope: !4626)
!4635 = !DILocation(line: 53, column: 10, scope: !4626)
!4636 = !DILocation(line: 53, column: 3, scope: !4626)
!4637 = !DILocation(line: 54, column: 8, scope: !4564)
!4638 = !DILocation(line: 54, column: 6, scope: !4564)
!4639 = !DILocation(line: 56, column: 7, scope: !4572)
!4640 = !DILocation(line: 175, column: 2, scope: !4566, inlinedAt: !4571)
!4641 = !{i32 -2145453409, i32 -2145453391, i32 -2145453381, i32 -2145453307, i32 -2145453297, i32 -2145453258, i32 -2145453219, i32 -2145453179, i32 -2145453132, i32 -2145453095, i32 -2145453057, i32 -2145453020, i32 -2145453003, i32 -2145452958, i32 -2145452935, i32 -2145452925, i32 -2145452908, i32 -2145452869, i32 -2145452830, i32 -2145452791, i32 -2145452746, i32 -2145452709, i32 -2145452676, i32 -2145452644, i32 -2145452627, i32 -2145452590, i32 -2145452580, i32 -2145452544, i32 -2145452522, i32 -2145452501}
!4642 = !DILabel(scope: !4566, name: "t_yes", file: !4567, line: 211)
!4643 = !DILocation(line: 211, column: 1, scope: !4566, inlinedAt: !4571)
!4644 = !DILocation(line: 212, column: 2, scope: !4566, inlinedAt: !4571)
!4645 = !DILabel(scope: !4566, name: "t_no", file: !4567, line: 213)
!4646 = !DILocation(line: 213, column: 1, scope: !4566, inlinedAt: !4571)
!4647 = !DILocation(line: 214, column: 2, scope: !4566, inlinedAt: !4571)
!4648 = !DILocation(line: 215, column: 1, scope: !4566, inlinedAt: !4571)
!4649 = !DILocation(line: 56, column: 7, scope: !4573)
!4650 = !DILocation(line: 56, column: 7, scope: !4574)
!4651 = !DILocation(line: 56, column: 6, scope: !4564)
!4652 = !DILocation(line: 57, column: 3, scope: !4574)
!4653 = !DILocation(line: 59, column: 28, scope: !4564)
!4654 = !DILocation(line: 59, column: 2, scope: !4564)
!4655 = !DILocation(line: 61, column: 7, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 61, column: 6)
!4657 = !DILocation(line: 61, column: 11, scope: !4656)
!4658 = !DILocation(line: 61, column: 16, scope: !4656)
!4659 = !DILocation(line: 61, column: 19, scope: !4656)
!4660 = !DILocation(line: 61, column: 6, scope: !4564)
!4661 = !DILocalVariable(name: "val", scope: !4662, file: !3, line: 62, type: !266)
!4662 = distinct !DILexicalBlock(scope: !4656, file: !3, line: 61, column: 24)
!4663 = !DILocation(line: 62, column: 17, scope: !4662)
!4664 = !DILocation(line: 63, column: 29, scope: !4662)
!4665 = !DILocation(line: 63, column: 34, scope: !4662)
!4666 = !DILocation(line: 63, column: 3, scope: !4662)
!4667 = !DILocalVariable(name: "__ret_pu", scope: !4668, file: !3, line: 64, type: !190)
!4668 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 64, column: 3)
!4669 = !DILocation(line: 64, column: 3, scope: !4668)
!4670 = !DILocalVariable(name: "__ptr_pu", scope: !4668, file: !3, line: 64, type: !156)
!4671 = !DILocalVariable(name: "__val_pu", scope: !4668, file: !3, line: 64, type: !169)
!4672 = !{i32 -2141565678}
!4673 = !DILocation(line: 65, column: 6, scope: !4662)
!4674 = !DILocation(line: 66, column: 6, scope: !4662)
!4675 = !DILocation(line: 67, column: 6, scope: !4662)
!4676 = !DILocation(line: 68, column: 2, scope: !4662)
!4677 = !DILocation(line: 70, column: 7, scope: !4678)
!4678 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 70, column: 6)
!4679 = !DILocation(line: 70, column: 11, scope: !4678)
!4680 = !DILocation(line: 70, column: 16, scope: !4678)
!4681 = !DILocation(line: 70, column: 19, scope: !4678)
!4682 = !DILocation(line: 70, column: 23, scope: !4678)
!4683 = !DILocation(line: 70, column: 6, scope: !4564)
!4684 = !DILocalVariable(name: "val", scope: !4685, file: !3, line: 71, type: !163)
!4685 = distinct !DILexicalBlock(scope: !4678, file: !3, line: 70, column: 28)
!4686 = !DILocation(line: 71, column: 18, scope: !4685)
!4687 = !DILocation(line: 72, column: 29, scope: !4685)
!4688 = !DILocation(line: 72, column: 34, scope: !4685)
!4689 = !DILocation(line: 72, column: 3, scope: !4685)
!4690 = !DILocalVariable(name: "__ret_pu", scope: !4691, file: !3, line: 73, type: !190)
!4691 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 73, column: 3)
!4692 = !DILocation(line: 73, column: 3, scope: !4691)
!4693 = !DILocalVariable(name: "__ptr_pu", scope: !4691, file: !3, line: 73, type: !156)
!4694 = !DILocalVariable(name: "__val_pu", scope: !4691, file: !3, line: 73, type: !159)
!4695 = !{i32 -2141564851}
!4696 = !DILocation(line: 74, column: 7, scope: !4685)
!4697 = !DILocation(line: 75, column: 7, scope: !4685)
!4698 = !DILocation(line: 76, column: 7, scope: !4685)
!4699 = !DILocation(line: 77, column: 2, scope: !4685)
!4700 = !DILocation(line: 79, column: 2, scope: !4564)
!4701 = !DILocation(line: 79, column: 9, scope: !4564)
!4702 = !DILocation(line: 79, column: 13, scope: !4564)
!4703 = !DILocalVariable(name: "val", scope: !4704, file: !3, line: 80, type: !7)
!4704 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 79, column: 19)
!4705 = !DILocation(line: 80, column: 16, scope: !4704)
!4706 = !DILocation(line: 81, column: 30, scope: !4704)
!4707 = !DILocation(line: 81, column: 35, scope: !4704)
!4708 = !DILocation(line: 81, column: 3, scope: !4704)
!4709 = !DILocalVariable(name: "__ret_pu", scope: !4710, file: !3, line: 82, type: !190)
!4710 = distinct !DILexicalBlock(scope: !4704, file: !3, line: 82, column: 3)
!4711 = !DILocation(line: 82, column: 3, scope: !4710)
!4712 = !DILocalVariable(name: "__ptr_pu", scope: !4710, file: !3, line: 82, type: !156)
!4713 = !DILocalVariable(name: "__val_pu", scope: !4710, file: !3, line: 82, type: !165)
!4714 = !{i32 -2141563923}
!4715 = !DILocation(line: 83, column: 7, scope: !4704)
!4716 = !DILocation(line: 84, column: 7, scope: !4704)
!4717 = !DILocation(line: 85, column: 7, scope: !4704)
!4718 = distinct !{!4718, !4700, !4719}
!4719 = !DILocation(line: 86, column: 2, scope: !4564)
!4720 = !DILocation(line: 88, column: 6, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 88, column: 6)
!4722 = !DILocation(line: 88, column: 10, scope: !4721)
!4723 = !DILocation(line: 88, column: 6, scope: !4564)
!4724 = !DILocalVariable(name: "val", scope: !4725, file: !3, line: 89, type: !163)
!4725 = distinct !DILexicalBlock(scope: !4721, file: !3, line: 88, column: 16)
!4726 = !DILocation(line: 89, column: 18, scope: !4725)
!4727 = !DILocation(line: 90, column: 29, scope: !4725)
!4728 = !DILocation(line: 90, column: 34, scope: !4725)
!4729 = !DILocation(line: 90, column: 3, scope: !4725)
!4730 = !DILocalVariable(name: "__ret_pu", scope: !4731, file: !3, line: 91, type: !190)
!4731 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 91, column: 3)
!4732 = !DILocation(line: 91, column: 3, scope: !4731)
!4733 = !DILocalVariable(name: "__ptr_pu", scope: !4731, file: !3, line: 91, type: !156)
!4734 = !DILocalVariable(name: "__val_pu", scope: !4731, file: !3, line: 91, type: !159)
!4735 = !{i32 -2141562995}
!4736 = !DILocation(line: 92, column: 7, scope: !4725)
!4737 = !DILocation(line: 93, column: 7, scope: !4725)
!4738 = !DILocation(line: 94, column: 7, scope: !4725)
!4739 = !DILocation(line: 95, column: 2, scope: !4725)
!4740 = !DILocation(line: 97, column: 6, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4564, file: !3, line: 97, column: 6)
!4742 = !DILocation(line: 97, column: 6, scope: !4564)
!4743 = !DILocalVariable(name: "val", scope: !4744, file: !3, line: 98, type: !266)
!4744 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 97, column: 11)
!4745 = !DILocation(line: 98, column: 17, scope: !4744)
!4746 = !DILocation(line: 99, column: 29, scope: !4744)
!4747 = !DILocation(line: 99, column: 34, scope: !4744)
!4748 = !DILocation(line: 99, column: 3, scope: !4744)
!4749 = !DILocalVariable(name: "__ret_pu", scope: !4750, file: !3, line: 100, type: !190)
!4750 = distinct !DILexicalBlock(scope: !4744, file: !3, line: 100, column: 3)
!4751 = !DILocation(line: 100, column: 3, scope: !4750)
!4752 = !DILocalVariable(name: "__ptr_pu", scope: !4750, file: !3, line: 100, type: !156)
!4753 = !DILocalVariable(name: "__val_pu", scope: !4750, file: !3, line: 100, type: !169)
!4754 = !{i32 -2141562161}
!4755 = !DILocation(line: 101, column: 6, scope: !4744)
!4756 = !DILocation(line: 102, column: 6, scope: !4744)
!4757 = !DILocation(line: 103, column: 6, scope: !4744)
!4758 = !DILocation(line: 104, column: 2, scope: !4744)
!4759 = !DILocation(line: 106, column: 28, scope: !4564)
!4760 = !DILocation(line: 106, column: 2, scope: !4564)
!4761 = !DILocation(line: 108, column: 10, scope: !4564)
!4762 = !DILocation(line: 108, column: 3, scope: !4564)
!4763 = !DILocation(line: 108, column: 8, scope: !4564)
!4764 = !DILocation(line: 109, column: 9, scope: !4564)
!4765 = !DILocation(line: 109, column: 2, scope: !4564)
!4766 = !DILocation(line: 110, column: 1, scope: !4564)
!4767 = distinct !DISubprogram(name: "proc_bus_pci_write", scope: !3, file: !3, line: 112, type: !596, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4768 = !DILocation(line: 173, column: 49, scope: !4566, inlinedAt: !4769)
!4769 = distinct !DILocation(line: 133, column: 7, scope: !4770)
!4770 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 133, column: 7)
!4771 = distinct !DILexicalBlock(scope: !4772, file: !3, line: 133, column: 7)
!4772 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 133, column: 6)
!4773 = !DILocalVariable(name: "file", arg: 1, scope: !4767, file: !3, line: 112, type: !585)
!4774 = !DILocation(line: 112, column: 48, scope: !4767)
!4775 = !DILocalVariable(name: "buf", arg: 2, scope: !4767, file: !3, line: 112, type: !167)
!4776 = !DILocation(line: 112, column: 73, scope: !4767)
!4777 = !DILocalVariable(name: "nbytes", arg: 3, scope: !4767, file: !3, line: 113, type: !504)
!4778 = !DILocation(line: 113, column: 14, scope: !4767)
!4779 = !DILocalVariable(name: "ppos", arg: 4, scope: !4767, file: !3, line: 113, type: !536)
!4780 = !DILocation(line: 113, column: 30, scope: !4767)
!4781 = !DILocalVariable(name: "ino", scope: !4767, file: !3, line: 115, type: !191)
!4782 = !DILocation(line: 115, column: 16, scope: !4767)
!4783 = !DILocation(line: 115, column: 33, scope: !4767)
!4784 = !DILocation(line: 115, column: 22, scope: !4767)
!4785 = !DILocalVariable(name: "dev", scope: !4767, file: !3, line: 116, type: !3102)
!4786 = !DILocation(line: 116, column: 18, scope: !4767)
!4787 = !DILocation(line: 116, column: 33, scope: !4767)
!4788 = !DILocation(line: 116, column: 24, scope: !4767)
!4789 = !DILocalVariable(name: "pos", scope: !4767, file: !3, line: 117, type: !190)
!4790 = !DILocation(line: 117, column: 6, scope: !4767)
!4791 = !DILocation(line: 117, column: 13, scope: !4767)
!4792 = !DILocation(line: 117, column: 12, scope: !4767)
!4793 = !DILocalVariable(name: "size", scope: !4767, file: !3, line: 118, type: !190)
!4794 = !DILocation(line: 118, column: 6, scope: !4767)
!4795 = !DILocation(line: 118, column: 13, scope: !4767)
!4796 = !DILocation(line: 118, column: 18, scope: !4767)
!4797 = !DILocalVariable(name: "cnt", scope: !4767, file: !3, line: 119, type: !190)
!4798 = !DILocation(line: 119, column: 6, scope: !4767)
!4799 = !DILocalVariable(name: "ret", scope: !4767, file: !3, line: 119, type: !190)
!4800 = !DILocation(line: 119, column: 11, scope: !4767)
!4801 = !DILocation(line: 121, column: 8, scope: !4767)
!4802 = !DILocation(line: 121, column: 6, scope: !4767)
!4803 = !DILocation(line: 122, column: 6, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 122, column: 6)
!4805 = !DILocation(line: 122, column: 6, scope: !4767)
!4806 = !DILocation(line: 123, column: 10, scope: !4804)
!4807 = !DILocation(line: 123, column: 3, scope: !4804)
!4808 = !DILocation(line: 125, column: 6, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 125, column: 6)
!4810 = !DILocation(line: 125, column: 13, scope: !4809)
!4811 = !DILocation(line: 125, column: 10, scope: !4809)
!4812 = !DILocation(line: 125, column: 6, scope: !4767)
!4813 = !DILocation(line: 126, column: 3, scope: !4809)
!4814 = !DILocation(line: 127, column: 6, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 127, column: 6)
!4816 = !DILocation(line: 127, column: 16, scope: !4815)
!4817 = !DILocation(line: 127, column: 13, scope: !4815)
!4818 = !DILocation(line: 127, column: 6, scope: !4767)
!4819 = !DILocation(line: 128, column: 12, scope: !4815)
!4820 = !DILocation(line: 128, column: 10, scope: !4815)
!4821 = !DILocation(line: 128, column: 3, scope: !4815)
!4822 = !DILocation(line: 129, column: 6, scope: !4823)
!4823 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 129, column: 6)
!4824 = !DILocation(line: 129, column: 12, scope: !4823)
!4825 = !DILocation(line: 129, column: 10, scope: !4823)
!4826 = !DILocation(line: 129, column: 21, scope: !4823)
!4827 = !DILocation(line: 129, column: 19, scope: !4823)
!4828 = !DILocation(line: 129, column: 6, scope: !4767)
!4829 = !DILocation(line: 130, column: 12, scope: !4823)
!4830 = !DILocation(line: 130, column: 19, scope: !4823)
!4831 = !DILocation(line: 130, column: 17, scope: !4823)
!4832 = !DILocation(line: 130, column: 10, scope: !4823)
!4833 = !DILocation(line: 130, column: 3, scope: !4823)
!4834 = !DILocation(line: 131, column: 8, scope: !4767)
!4835 = !DILocation(line: 131, column: 6, scope: !4767)
!4836 = !DILocation(line: 133, column: 7, scope: !4770)
!4837 = !DILocation(line: 175, column: 2, scope: !4566, inlinedAt: !4769)
!4838 = !DILocation(line: 211, column: 1, scope: !4566, inlinedAt: !4769)
!4839 = !DILocation(line: 212, column: 2, scope: !4566, inlinedAt: !4769)
!4840 = !DILocation(line: 213, column: 1, scope: !4566, inlinedAt: !4769)
!4841 = !DILocation(line: 214, column: 2, scope: !4566, inlinedAt: !4769)
!4842 = !DILocation(line: 215, column: 1, scope: !4566, inlinedAt: !4769)
!4843 = !DILocation(line: 133, column: 7, scope: !4771)
!4844 = !DILocation(line: 133, column: 7, scope: !4772)
!4845 = !DILocation(line: 133, column: 6, scope: !4767)
!4846 = !DILocation(line: 134, column: 3, scope: !4772)
!4847 = !DILocation(line: 136, column: 28, scope: !4767)
!4848 = !DILocation(line: 136, column: 2, scope: !4767)
!4849 = !DILocation(line: 138, column: 7, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 138, column: 6)
!4851 = !DILocation(line: 138, column: 11, scope: !4850)
!4852 = !DILocation(line: 138, column: 16, scope: !4850)
!4853 = !DILocation(line: 138, column: 19, scope: !4850)
!4854 = !DILocation(line: 138, column: 6, scope: !4767)
!4855 = !DILocalVariable(name: "val", scope: !4856, file: !3, line: 139, type: !266)
!4856 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 138, column: 24)
!4857 = !DILocation(line: 139, column: 17, scope: !4856)
!4858 = !DILocalVariable(name: "__ret_gu", scope: !4859, file: !3, line: 140, type: !190)
!4859 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 140, column: 3)
!4860 = !DILocation(line: 140, column: 3, scope: !4859)
!4861 = !DILocalVariable(name: "__val_gu", scope: !4859, file: !3, line: 140, type: !266)
!4862 = !{i32 -2141536428}
!4863 = !DILocation(line: 141, column: 30, scope: !4856)
!4864 = !DILocation(line: 141, column: 35, scope: !4856)
!4865 = !DILocation(line: 141, column: 40, scope: !4856)
!4866 = !DILocation(line: 141, column: 3, scope: !4856)
!4867 = !DILocation(line: 142, column: 6, scope: !4856)
!4868 = !DILocation(line: 143, column: 6, scope: !4856)
!4869 = !DILocation(line: 144, column: 6, scope: !4856)
!4870 = !DILocation(line: 145, column: 2, scope: !4856)
!4871 = !DILocation(line: 147, column: 7, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 147, column: 6)
!4873 = !DILocation(line: 147, column: 11, scope: !4872)
!4874 = !DILocation(line: 147, column: 16, scope: !4872)
!4875 = !DILocation(line: 147, column: 19, scope: !4872)
!4876 = !DILocation(line: 147, column: 23, scope: !4872)
!4877 = !DILocation(line: 147, column: 6, scope: !4767)
!4878 = !DILocalVariable(name: "val", scope: !4879, file: !3, line: 148, type: !159)
!4879 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 147, column: 28)
!4880 = !DILocation(line: 148, column: 10, scope: !4879)
!4881 = !DILocalVariable(name: "__ret_gu", scope: !4882, file: !3, line: 149, type: !190)
!4882 = distinct !DILexicalBlock(scope: !4879, file: !3, line: 149, column: 3)
!4883 = !DILocation(line: 149, column: 3, scope: !4882)
!4884 = !DILocalVariable(name: "__val_gu", scope: !4882, file: !3, line: 149, type: !163)
!4885 = !{i32 -2141534779}
!4886 = !DILocation(line: 150, column: 30, scope: !4879)
!4887 = !DILocation(line: 150, column: 35, scope: !4879)
!4888 = !DILocation(line: 150, column: 40, scope: !4879)
!4889 = !DILocation(line: 150, column: 3, scope: !4879)
!4890 = !DILocation(line: 151, column: 7, scope: !4879)
!4891 = !DILocation(line: 152, column: 7, scope: !4879)
!4892 = !DILocation(line: 153, column: 7, scope: !4879)
!4893 = !DILocation(line: 154, column: 2, scope: !4879)
!4894 = !DILocation(line: 156, column: 2, scope: !4767)
!4895 = !DILocation(line: 156, column: 9, scope: !4767)
!4896 = !DILocation(line: 156, column: 13, scope: !4767)
!4897 = !DILocalVariable(name: "val", scope: !4898, file: !3, line: 157, type: !165)
!4898 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 156, column: 19)
!4899 = !DILocation(line: 157, column: 10, scope: !4898)
!4900 = !DILocalVariable(name: "__ret_gu", scope: !4901, file: !3, line: 158, type: !190)
!4901 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 158, column: 3)
!4902 = !DILocation(line: 158, column: 3, scope: !4901)
!4903 = !DILocalVariable(name: "__val_gu", scope: !4901, file: !3, line: 158, type: !7)
!4904 = !{i32 -2141532741}
!4905 = !DILocation(line: 159, column: 31, scope: !4898)
!4906 = !DILocation(line: 159, column: 36, scope: !4898)
!4907 = !DILocation(line: 159, column: 41, scope: !4898)
!4908 = !DILocation(line: 159, column: 3, scope: !4898)
!4909 = !DILocation(line: 160, column: 7, scope: !4898)
!4910 = !DILocation(line: 161, column: 7, scope: !4898)
!4911 = !DILocation(line: 162, column: 7, scope: !4898)
!4912 = distinct !{!4912, !4894, !4913}
!4913 = !DILocation(line: 163, column: 2, scope: !4767)
!4914 = !DILocation(line: 165, column: 6, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 165, column: 6)
!4916 = !DILocation(line: 165, column: 10, scope: !4915)
!4917 = !DILocation(line: 165, column: 6, scope: !4767)
!4918 = !DILocalVariable(name: "val", scope: !4919, file: !3, line: 166, type: !159)
!4919 = distinct !DILexicalBlock(scope: !4915, file: !3, line: 165, column: 16)
!4920 = !DILocation(line: 166, column: 10, scope: !4919)
!4921 = !DILocalVariable(name: "__ret_gu", scope: !4922, file: !3, line: 167, type: !190)
!4922 = distinct !DILexicalBlock(scope: !4919, file: !3, line: 167, column: 3)
!4923 = !DILocation(line: 167, column: 3, scope: !4922)
!4924 = !DILocalVariable(name: "__val_gu", scope: !4922, file: !3, line: 167, type: !163)
!4925 = !{i32 -2141530703}
!4926 = !DILocation(line: 168, column: 30, scope: !4919)
!4927 = !DILocation(line: 168, column: 35, scope: !4919)
!4928 = !DILocation(line: 168, column: 40, scope: !4919)
!4929 = !DILocation(line: 168, column: 3, scope: !4919)
!4930 = !DILocation(line: 169, column: 7, scope: !4919)
!4931 = !DILocation(line: 170, column: 7, scope: !4919)
!4932 = !DILocation(line: 171, column: 7, scope: !4919)
!4933 = !DILocation(line: 172, column: 2, scope: !4919)
!4934 = !DILocation(line: 174, column: 6, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4767, file: !3, line: 174, column: 6)
!4936 = !DILocation(line: 174, column: 6, scope: !4767)
!4937 = !DILocalVariable(name: "val", scope: !4938, file: !3, line: 175, type: !266)
!4938 = distinct !DILexicalBlock(scope: !4935, file: !3, line: 174, column: 11)
!4939 = !DILocation(line: 175, column: 17, scope: !4938)
!4940 = !DILocalVariable(name: "__ret_gu", scope: !4941, file: !3, line: 176, type: !190)
!4941 = distinct !DILexicalBlock(scope: !4938, file: !3, line: 176, column: 3)
!4942 = !DILocation(line: 176, column: 3, scope: !4941)
!4943 = !DILocalVariable(name: "__val_gu", scope: !4941, file: !3, line: 176, type: !266)
!4944 = !{i32 -2141528683}
!4945 = !DILocation(line: 177, column: 30, scope: !4938)
!4946 = !DILocation(line: 177, column: 35, scope: !4938)
!4947 = !DILocation(line: 177, column: 40, scope: !4938)
!4948 = !DILocation(line: 177, column: 3, scope: !4938)
!4949 = !DILocation(line: 178, column: 6, scope: !4938)
!4950 = !DILocation(line: 179, column: 6, scope: !4938)
!4951 = !DILocation(line: 180, column: 6, scope: !4938)
!4952 = !DILocation(line: 181, column: 2, scope: !4938)
!4953 = !DILocation(line: 183, column: 28, scope: !4767)
!4954 = !DILocation(line: 183, column: 2, scope: !4767)
!4955 = !DILocation(line: 185, column: 10, scope: !4767)
!4956 = !DILocation(line: 185, column: 3, scope: !4767)
!4957 = !DILocation(line: 185, column: 8, scope: !4767)
!4958 = !DILocation(line: 186, column: 15, scope: !4767)
!4959 = !DILocation(line: 186, column: 20, scope: !4767)
!4960 = !DILocation(line: 186, column: 25, scope: !4767)
!4961 = !DILocation(line: 186, column: 2, scope: !4767)
!4962 = !DILocation(line: 187, column: 9, scope: !4767)
!4963 = !DILocation(line: 187, column: 2, scope: !4767)
!4964 = !DILocation(line: 188, column: 1, scope: !4767)
!4965 = distinct !DISubprogram(name: "proc_bus_pci_lseek", scope: !3, file: !3, line: 22, type: !583, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4966 = !DILocalVariable(name: "file", arg: 1, scope: !4965, file: !3, line: 22, type: !585)
!4967 = !DILocation(line: 22, column: 47, scope: !4965)
!4968 = !DILocalVariable(name: "off", arg: 2, scope: !4965, file: !3, line: 22, type: !386)
!4969 = !DILocation(line: 22, column: 60, scope: !4965)
!4970 = !DILocalVariable(name: "whence", arg: 3, scope: !4965, file: !3, line: 22, type: !190)
!4971 = !DILocation(line: 22, column: 69, scope: !4965)
!4972 = !DILocalVariable(name: "dev", scope: !4965, file: !3, line: 24, type: !3102)
!4973 = !DILocation(line: 24, column: 18, scope: !4965)
!4974 = !DILocation(line: 24, column: 44, scope: !4965)
!4975 = !DILocation(line: 24, column: 33, scope: !4965)
!4976 = !DILocation(line: 24, column: 24, scope: !4965)
!4977 = !DILocation(line: 25, column: 27, scope: !4965)
!4978 = !DILocation(line: 25, column: 33, scope: !4965)
!4979 = !DILocation(line: 25, column: 38, scope: !4965)
!4980 = !DILocation(line: 25, column: 46, scope: !4965)
!4981 = !DILocation(line: 25, column: 51, scope: !4965)
!4982 = !DILocation(line: 25, column: 9, scope: !4965)
!4983 = !DILocation(line: 25, column: 2, scope: !4965)
!4984 = distinct !DISubprogram(name: "proc_bus_pci_release", scope: !3, file: !3, line: 300, type: !188, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4985 = !DILocalVariable(name: "inode", arg: 1, scope: !4984, file: !3, line: 300, type: !191)
!4986 = !DILocation(line: 300, column: 47, scope: !4984)
!4987 = !DILocalVariable(name: "file", arg: 2, scope: !4984, file: !3, line: 300, type: !585)
!4988 = !DILocation(line: 300, column: 67, scope: !4984)
!4989 = !DILocation(line: 302, column: 8, scope: !4984)
!4990 = !DILocation(line: 302, column: 14, scope: !4984)
!4991 = !DILocation(line: 302, column: 2, scope: !4984)
!4992 = !DILocation(line: 303, column: 2, scope: !4984)
!4993 = !DILocation(line: 303, column: 8, scope: !4984)
!4994 = !DILocation(line: 303, column: 21, scope: !4984)
!4995 = !DILocation(line: 305, column: 2, scope: !4984)
!4996 = distinct !DISubprogram(name: "proc_bus_pci_ioctl", scope: !3, file: !3, line: 195, type: !653, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!4997 = !DILocalVariable(name: "file", arg: 1, scope: !4996, file: !3, line: 195, type: !585)
!4998 = !DILocation(line: 195, column: 45, scope: !4996)
!4999 = !DILocalVariable(name: "cmd", arg: 2, scope: !4996, file: !3, line: 195, type: !7)
!5000 = !DILocation(line: 195, column: 64, scope: !4996)
!5001 = !DILocalVariable(name: "arg", arg: 3, scope: !4996, file: !3, line: 196, type: !157)
!5002 = !DILocation(line: 196, column: 25, scope: !4996)
!5003 = !DILocalVariable(name: "dev", scope: !4996, file: !3, line: 198, type: !3102)
!5004 = !DILocation(line: 198, column: 18, scope: !4996)
!5005 = !DILocation(line: 198, column: 44, scope: !4996)
!5006 = !DILocation(line: 198, column: 33, scope: !4996)
!5007 = !DILocation(line: 198, column: 24, scope: !4996)
!5008 = !DILocalVariable(name: "fpriv", scope: !4996, file: !3, line: 200, type: !4333)
!5009 = !DILocation(line: 200, column: 27, scope: !4996)
!5010 = !DILocation(line: 200, column: 35, scope: !4996)
!5011 = !DILocation(line: 200, column: 41, scope: !4996)
!5012 = !DILocalVariable(name: "ret", scope: !4996, file: !3, line: 202, type: !190)
!5013 = !DILocation(line: 202, column: 6, scope: !4996)
!5014 = !DILocation(line: 204, column: 8, scope: !4996)
!5015 = !DILocation(line: 204, column: 6, scope: !4996)
!5016 = !DILocation(line: 205, column: 6, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 205, column: 6)
!5018 = !DILocation(line: 205, column: 6, scope: !4996)
!5019 = !DILocation(line: 206, column: 10, scope: !5017)
!5020 = !DILocation(line: 206, column: 3, scope: !5017)
!5021 = !DILocation(line: 208, column: 10, scope: !4996)
!5022 = !DILocation(line: 208, column: 2, scope: !4996)
!5023 = !DILocation(line: 210, column: 23, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !4996, file: !3, line: 208, column: 15)
!5025 = !DILocation(line: 210, column: 28, scope: !5024)
!5026 = !DILocation(line: 210, column: 9, scope: !5024)
!5027 = !DILocation(line: 210, column: 7, scope: !5024)
!5028 = !DILocation(line: 211, column: 3, scope: !5024)
!5029 = !DILocation(line: 216, column: 4, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 215, column: 7)
!5031 = !DILocation(line: 221, column: 3, scope: !5024)
!5032 = !DILocation(line: 221, column: 10, scope: !5024)
!5033 = !DILocation(line: 221, column: 21, scope: !5024)
!5034 = !DILocation(line: 222, column: 3, scope: !5024)
!5035 = !DILocation(line: 225, column: 7, scope: !5036)
!5036 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 225, column: 7)
!5037 = !DILocation(line: 225, column: 7, scope: !5024)
!5038 = !DILocation(line: 226, column: 8, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5040, file: !3, line: 226, column: 8)
!5040 = distinct !DILexicalBlock(scope: !5036, file: !3, line: 225, column: 31)
!5041 = !DILocation(line: 226, column: 8, scope: !5040)
!5042 = !DILocation(line: 227, column: 5, scope: !5039)
!5043 = !DILocation(line: 227, column: 12, scope: !5039)
!5044 = !DILocation(line: 227, column: 26, scope: !5039)
!5045 = !DILocation(line: 229, column: 5, scope: !5039)
!5046 = !DILocation(line: 229, column: 12, scope: !5039)
!5047 = !DILocation(line: 229, column: 26, scope: !5039)
!5048 = !DILocation(line: 230, column: 4, scope: !5040)
!5049 = !DILocation(line: 236, column: 7, scope: !5024)
!5050 = !DILocation(line: 237, column: 3, scope: !5024)
!5051 = !DILocation(line: 240, column: 9, scope: !4996)
!5052 = !DILocation(line: 240, column: 2, scope: !4996)
!5053 = !DILocation(line: 241, column: 1, scope: !4996)
!5054 = distinct !DISubprogram(name: "proc_bus_pci_mmap", scope: !3, file: !3, line: 244, type: !658, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5055 = !DILocalVariable(name: "file", arg: 1, scope: !5054, file: !3, line: 244, type: !585)
!5056 = !DILocation(line: 244, column: 43, scope: !5054)
!5057 = !DILocalVariable(name: "vma", arg: 2, scope: !5054, file: !3, line: 244, type: !660)
!5058 = !DILocation(line: 244, column: 72, scope: !5054)
!5059 = !DILocalVariable(name: "dev", scope: !5054, file: !3, line: 246, type: !3102)
!5060 = !DILocation(line: 246, column: 18, scope: !5054)
!5061 = !DILocation(line: 246, column: 44, scope: !5054)
!5062 = !DILocation(line: 246, column: 33, scope: !5054)
!5063 = !DILocation(line: 246, column: 24, scope: !5054)
!5064 = !DILocalVariable(name: "fpriv", scope: !5054, file: !3, line: 247, type: !4333)
!5065 = !DILocation(line: 247, column: 27, scope: !5054)
!5066 = !DILocation(line: 247, column: 35, scope: !5054)
!5067 = !DILocation(line: 247, column: 41, scope: !5054)
!5068 = !DILocalVariable(name: "i", scope: !5054, file: !3, line: 248, type: !190)
!5069 = !DILocation(line: 248, column: 6, scope: !5054)
!5070 = !DILocalVariable(name: "ret", scope: !5054, file: !3, line: 248, type: !190)
!5071 = !DILocation(line: 248, column: 9, scope: !5054)
!5072 = !DILocalVariable(name: "write_combine", scope: !5054, file: !3, line: 248, type: !190)
!5073 = !DILocation(line: 248, column: 14, scope: !5054)
!5074 = !DILocalVariable(name: "res_bit", scope: !5054, file: !3, line: 248, type: !190)
!5075 = !DILocation(line: 248, column: 33, scope: !5054)
!5076 = !DILocation(line: 250, column: 7, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 250, column: 6)
!5078 = !DILocation(line: 250, column: 30, scope: !5077)
!5079 = !DILocation(line: 251, column: 6, scope: !5077)
!5080 = !DILocation(line: 250, column: 6, scope: !5054)
!5081 = !DILocation(line: 252, column: 3, scope: !5077)
!5082 = !DILocation(line: 254, column: 6, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 254, column: 6)
!5084 = !DILocation(line: 254, column: 13, scope: !5083)
!5085 = !DILocation(line: 254, column: 24, scope: !5083)
!5086 = !DILocation(line: 254, column: 6, scope: !5054)
!5087 = !DILocation(line: 256, column: 4, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5089, file: !3, line: 255, column: 7)
!5089 = distinct !DILexicalBlock(scope: !5083, file: !3, line: 254, column: 40)
!5090 = !DILocation(line: 261, column: 9, scope: !5091)
!5091 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 261, column: 2)
!5092 = !DILocation(line: 261, column: 7, scope: !5091)
!5093 = !DILocation(line: 261, column: 14, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5091, file: !3, line: 261, column: 2)
!5095 = !DILocation(line: 261, column: 16, scope: !5094)
!5096 = !DILocation(line: 261, column: 2, scope: !5091)
!5097 = !DILocation(line: 262, column: 7, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5099, file: !3, line: 262, column: 7)
!5099 = distinct !DILexicalBlock(scope: !5094, file: !3, line: 261, column: 41)
!5100 = !DILocation(line: 262, column: 12, scope: !5098)
!5101 = !DILocation(line: 262, column: 21, scope: !5098)
!5102 = !DILocation(line: 262, column: 24, scope: !5098)
!5103 = !DILocation(line: 262, column: 32, scope: !5098)
!5104 = !DILocation(line: 262, column: 30, scope: !5098)
!5105 = !DILocation(line: 262, column: 40, scope: !5098)
!5106 = !DILocation(line: 263, column: 21, scope: !5098)
!5107 = !DILocation(line: 263, column: 26, scope: !5098)
!5108 = !DILocation(line: 263, column: 29, scope: !5098)
!5109 = !DILocation(line: 263, column: 7, scope: !5098)
!5110 = !DILocation(line: 262, column: 7, scope: !5099)
!5111 = !DILocation(line: 264, column: 4, scope: !5098)
!5112 = !DILocation(line: 265, column: 2, scope: !5099)
!5113 = !DILocation(line: 261, column: 37, scope: !5094)
!5114 = !DILocation(line: 261, column: 2, scope: !5094)
!5115 = distinct !{!5115, !5096, !5116}
!5116 = !DILocation(line: 265, column: 2, scope: !5091)
!5117 = !DILocation(line: 267, column: 6, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 267, column: 6)
!5119 = !DILocation(line: 267, column: 8, scope: !5118)
!5120 = !DILocation(line: 267, column: 6, scope: !5054)
!5121 = !DILocation(line: 268, column: 3, scope: !5118)
!5122 = !DILocation(line: 270, column: 6, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 270, column: 6)
!5124 = !DILocation(line: 270, column: 13, scope: !5123)
!5125 = !DILocation(line: 270, column: 24, scope: !5123)
!5126 = !DILocation(line: 270, column: 40, scope: !5123)
!5127 = !DILocation(line: 271, column: 6, scope: !5123)
!5128 = !DILocation(line: 271, column: 13, scope: !5123)
!5129 = !DILocation(line: 270, column: 6, scope: !5054)
!5130 = !DILocation(line: 272, column: 7, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5132, file: !3, line: 272, column: 7)
!5132 = distinct !DILexicalBlock(scope: !5123, file: !3, line: 271, column: 28)
!5133 = !DILocation(line: 272, column: 12, scope: !5131)
!5134 = !DILocation(line: 272, column: 21, scope: !5131)
!5135 = !DILocation(line: 272, column: 24, scope: !5131)
!5136 = !DILocation(line: 272, column: 30, scope: !5131)
!5137 = !DILocation(line: 272, column: 7, scope: !5132)
!5138 = !DILocation(line: 273, column: 18, scope: !5131)
!5139 = !DILocation(line: 273, column: 4, scope: !5131)
!5140 = !DILocation(line: 275, column: 4, scope: !5131)
!5141 = !DILocation(line: 276, column: 2, scope: !5132)
!5142 = !DILocation(line: 277, column: 28, scope: !5054)
!5143 = !DILocation(line: 277, column: 33, scope: !5054)
!5144 = !DILocation(line: 277, column: 36, scope: !5054)
!5145 = !DILocation(line: 278, column: 7, scope: !5054)
!5146 = !DILocation(line: 278, column: 14, scope: !5054)
!5147 = !DILocation(line: 278, column: 26, scope: !5054)
!5148 = !DILocation(line: 277, column: 8, scope: !5054)
!5149 = !DILocation(line: 277, column: 6, scope: !5054)
!5150 = !DILocation(line: 279, column: 6, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5054, file: !3, line: 279, column: 6)
!5152 = !DILocation(line: 279, column: 10, scope: !5151)
!5153 = !DILocation(line: 279, column: 6, scope: !5054)
!5154 = !DILocation(line: 280, column: 10, scope: !5151)
!5155 = !DILocation(line: 280, column: 3, scope: !5151)
!5156 = !DILocation(line: 282, column: 2, scope: !5054)
!5157 = !DILocation(line: 283, column: 1, scope: !5054)
!5158 = distinct !DISubprogram(name: "get_order", scope: !5159, file: !5159, line: 29, type: !5160, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5159 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5160 = !DISubroutineType(types: !5161)
!5161 = !{!190, !157}
!5162 = !DILocalVariable(name: "x", arg: 1, scope: !5163, file: !5164, line: 366, type: !262)
!5163 = distinct !DISubprogram(name: "fls64", scope: !5164, file: !5164, line: 366, type: !5165, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5164 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5165 = !DISubroutineType(types: !5166)
!5166 = !{!190, !262}
!5167 = !DILocation(line: 366, column: 40, scope: !5163, inlinedAt: !5168)
!5168 = distinct !DILocation(line: 46, column: 9, scope: !5158)
!5169 = !DILocalVariable(name: "bitpos", scope: !5163, file: !5164, line: 368, type: !190)
!5170 = !DILocation(line: 368, column: 6, scope: !5163, inlinedAt: !5168)
!5171 = !DILocalVariable(name: "size", arg: 1, scope: !5158, file: !5159, line: 29, type: !157)
!5172 = !DILocation(line: 29, column: 63, scope: !5158)
!5173 = !DILocation(line: 31, column: 27, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5158, file: !5159, line: 31, column: 6)
!5175 = !DILocation(line: 31, column: 6, scope: !5174)
!5176 = !DILocation(line: 31, column: 6, scope: !5158)
!5177 = !DILocation(line: 32, column: 8, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5179, file: !5159, line: 32, column: 7)
!5179 = distinct !DILexicalBlock(scope: !5174, file: !5159, line: 31, column: 34)
!5180 = !DILocation(line: 32, column: 7, scope: !5179)
!5181 = !DILocation(line: 33, column: 4, scope: !5178)
!5182 = !DILocation(line: 35, column: 7, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5179, file: !5159, line: 35, column: 7)
!5184 = !DILocation(line: 35, column: 12, scope: !5183)
!5185 = !DILocation(line: 35, column: 7, scope: !5179)
!5186 = !DILocation(line: 36, column: 4, scope: !5183)
!5187 = !DILocation(line: 38, column: 10, scope: !5179)
!5188 = !DILocation(line: 38, column: 28, scope: !5179)
!5189 = !DILocation(line: 38, column: 41, scope: !5179)
!5190 = !DILocation(line: 38, column: 3, scope: !5179)
!5191 = !DILocation(line: 41, column: 6, scope: !5158)
!5192 = !DILocation(line: 42, column: 7, scope: !5158)
!5193 = !DILocation(line: 46, column: 15, scope: !5158)
!5194 = !DILocation(line: 374, column: 2, scope: !5163, inlinedAt: !5168)
!5195 = !DILocation(line: 376, column: 14, scope: !5163, inlinedAt: !5168)
!5196 = !{i32 767101}
!5197 = !DILocation(line: 377, column: 9, scope: !5163, inlinedAt: !5168)
!5198 = !DILocation(line: 377, column: 16, scope: !5163, inlinedAt: !5168)
!5199 = !DILocation(line: 46, column: 2, scope: !5158)
!5200 = !DILocation(line: 48, column: 1, scope: !5158)
!5201 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5202, file: !5202, line: 30, type: !5203, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5202 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5203 = !DISubroutineType(types: !5204)
!5204 = !{!190, !261}
!5205 = !DILocation(line: 366, column: 40, scope: !5163, inlinedAt: !5206)
!5206 = distinct !DILocation(line: 32, column: 9, scope: !5201)
!5207 = !DILocation(line: 368, column: 6, scope: !5163, inlinedAt: !5206)
!5208 = !DILocalVariable(name: "n", arg: 1, scope: !5201, file: !5202, line: 30, type: !261)
!5209 = !DILocation(line: 30, column: 21, scope: !5201)
!5210 = !DILocation(line: 32, column: 15, scope: !5201)
!5211 = !DILocation(line: 374, column: 2, scope: !5163, inlinedAt: !5206)
!5212 = !DILocation(line: 376, column: 14, scope: !5163, inlinedAt: !5206)
!5213 = !DILocation(line: 377, column: 9, scope: !5163, inlinedAt: !5206)
!5214 = !DILocation(line: 377, column: 16, scope: !5163, inlinedAt: !5206)
!5215 = !DILocation(line: 32, column: 18, scope: !5201)
!5216 = !DILocation(line: 32, column: 2, scope: !5201)
!5217 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5218, file: !5218, line: 137, type: !5219, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5218 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5219 = !DISubroutineType(types: !5220)
!5220 = !{!156, !1563, !2045, !504, !154}
!5221 = !DILocalVariable(name: "s", arg: 1, scope: !5217, file: !5218, line: 137, type: !1563)
!5222 = !DILocation(line: 137, column: 54, scope: !5217)
!5223 = !DILocalVariable(name: "object", arg: 2, scope: !5217, file: !5218, line: 137, type: !2045)
!5224 = !DILocation(line: 137, column: 69, scope: !5217)
!5225 = !DILocalVariable(name: "size", arg: 3, scope: !5217, file: !5218, line: 138, type: !504)
!5226 = !DILocation(line: 138, column: 12, scope: !5217)
!5227 = !DILocalVariable(name: "flags", arg: 4, scope: !5217, file: !5218, line: 138, type: !154)
!5228 = !DILocation(line: 138, column: 24, scope: !5217)
!5229 = !DILocation(line: 140, column: 17, scope: !5217)
!5230 = !DILocation(line: 140, column: 2, scope: !5217)
!5231 = distinct !DISubprogram(name: "file_inode", scope: !44, file: !44, line: 1299, type: !5232, scopeLine: 1300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{!191, !551}
!5234 = !DILocalVariable(name: "f", arg: 1, scope: !5231, file: !44, line: 1299, type: !551)
!5235 = !DILocation(line: 1299, column: 59, scope: !5231)
!5236 = !DILocation(line: 1301, column: 9, scope: !5231)
!5237 = !DILocation(line: 1301, column: 12, scope: !5231)
!5238 = !DILocation(line: 1301, column: 2, scope: !5231)
!5239 = distinct !DISubprogram(name: "__chk_range_not_ok", scope: !5240, file: !5240, line: 19, type: !5241, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5240 = !DIFile(filename: "./arch/x86/include/asm/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!5241 = !DISubroutineType(types: !5242)
!5242 = !{!362, !157, !157, !157}
!5243 = !DILocalVariable(name: "addr", arg: 1, scope: !5239, file: !5240, line: 19, type: !157)
!5244 = !DILocation(line: 19, column: 53, scope: !5239)
!5245 = !DILocalVariable(name: "size", arg: 2, scope: !5239, file: !5240, line: 19, type: !157)
!5246 = !DILocation(line: 19, column: 73, scope: !5239)
!5247 = !DILocalVariable(name: "limit", arg: 3, scope: !5239, file: !5240, line: 19, type: !157)
!5248 = !DILocation(line: 19, column: 93, scope: !5239)
!5249 = !DILocation(line: 28, column: 27, scope: !5250)
!5250 = distinct !DILexicalBlock(scope: !5239, file: !5240, line: 28, column: 6)
!5251 = !DILocation(line: 28, column: 6, scope: !5250)
!5252 = !DILocation(line: 28, column: 6, scope: !5239)
!5253 = !DILocation(line: 29, column: 10, scope: !5250)
!5254 = !DILocation(line: 29, column: 3, scope: !5250)
!5255 = !DILocation(line: 32, column: 10, scope: !5239)
!5256 = !DILocation(line: 32, column: 7, scope: !5239)
!5257 = !DILocation(line: 33, column: 6, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5239, file: !5240, line: 33, column: 6)
!5259 = !DILocation(line: 33, column: 6, scope: !5239)
!5260 = !DILocation(line: 34, column: 3, scope: !5258)
!5261 = !DILocation(line: 35, column: 9, scope: !5239)
!5262 = !DILocation(line: 35, column: 2, scope: !5239)
!5263 = !DILocation(line: 36, column: 1, scope: !5239)
!5264 = distinct !DISubprogram(name: "security_locked_down", scope: !111, file: !111, line: 1303, type: !5265, scopeLine: 1304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{!190, !110}
!5267 = !DILocalVariable(name: "what", arg: 1, scope: !5264, file: !111, line: 1303, type: !110)
!5268 = !DILocation(line: 1303, column: 61, scope: !5264)
!5269 = !DILocation(line: 1305, column: 2, scope: !5264)
!5270 = distinct !DISubprogram(name: "i_size_write", scope: !44, file: !44, line: 858, type: !5271, scopeLine: 859, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5271 = !DISubroutineType(types: !5272)
!5272 = !{null, !191, !386}
!5273 = !DILocalVariable(name: "inode", arg: 1, scope: !5270, file: !44, line: 858, type: !191)
!5274 = !DILocation(line: 858, column: 47, scope: !5270)
!5275 = !DILocalVariable(name: "i_size", arg: 2, scope: !5270, file: !44, line: 858, type: !386)
!5276 = !DILocation(line: 858, column: 61, scope: !5270)
!5277 = !DILocation(line: 871, column: 18, scope: !5270)
!5278 = !DILocation(line: 871, column: 2, scope: !5270)
!5279 = !DILocation(line: 871, column: 9, scope: !5270)
!5280 = !DILocation(line: 871, column: 16, scope: !5270)
!5281 = !DILocation(line: 873, column: 1, scope: !5270)
!5282 = distinct !DISubprogram(name: "pci_seq_start", scope: !3, file: !3, line: 328, type: !534, scopeLine: 329, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5283 = !DILocalVariable(name: "m", arg: 1, scope: !5282, file: !3, line: 328, type: !498)
!5284 = !DILocation(line: 328, column: 45, scope: !5282)
!5285 = !DILocalVariable(name: "pos", arg: 2, scope: !5282, file: !3, line: 328, type: !536)
!5286 = !DILocation(line: 328, column: 56, scope: !5282)
!5287 = !DILocalVariable(name: "dev", scope: !5282, file: !3, line: 330, type: !3102)
!5288 = !DILocation(line: 330, column: 18, scope: !5282)
!5289 = !DILocalVariable(name: "n", scope: !5282, file: !3, line: 331, type: !386)
!5290 = !DILocation(line: 331, column: 9, scope: !5282)
!5291 = !DILocation(line: 331, column: 14, scope: !5282)
!5292 = !DILocation(line: 331, column: 13, scope: !5282)
!5293 = !DILocation(line: 333, column: 2, scope: !5282)
!5294 = !DILocation(line: 334, column: 9, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 334, column: 7)
!5296 = distinct !DILexicalBlock(scope: !5282, file: !3, line: 333, column: 24)
!5297 = !DILocation(line: 334, column: 7, scope: !5296)
!5298 = !DILocation(line: 335, column: 4, scope: !5295)
!5299 = distinct !{!5299, !5293, !5300}
!5300 = !DILocation(line: 336, column: 2, scope: !5282)
!5301 = !DILocation(line: 337, column: 9, scope: !5282)
!5302 = !DILocation(line: 337, column: 2, scope: !5282)
!5303 = distinct !DISubprogram(name: "pci_seq_stop", scope: !3, file: !3, line: 349, type: !539, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5304 = !DILocalVariable(name: "m", arg: 1, scope: !5303, file: !3, line: 349, type: !498)
!5305 = !DILocation(line: 349, column: 43, scope: !5303)
!5306 = !DILocalVariable(name: "v", arg: 2, scope: !5303, file: !3, line: 349, type: !156)
!5307 = !DILocation(line: 349, column: 52, scope: !5303)
!5308 = !DILocation(line: 351, column: 6, scope: !5309)
!5309 = distinct !DILexicalBlock(scope: !5303, file: !3, line: 351, column: 6)
!5310 = !DILocation(line: 351, column: 6, scope: !5303)
!5311 = !DILocalVariable(name: "dev", scope: !5312, file: !3, line: 352, type: !3102)
!5312 = distinct !DILexicalBlock(scope: !5309, file: !3, line: 351, column: 9)
!5313 = !DILocation(line: 352, column: 19, scope: !5312)
!5314 = !DILocation(line: 352, column: 25, scope: !5312)
!5315 = !DILocation(line: 353, column: 15, scope: !5312)
!5316 = !DILocation(line: 353, column: 3, scope: !5312)
!5317 = !DILocation(line: 354, column: 2, scope: !5312)
!5318 = !DILocation(line: 355, column: 1, scope: !5303)
!5319 = distinct !DISubprogram(name: "pci_seq_next", scope: !3, file: !3, line: 340, type: !543, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5320 = !DILocalVariable(name: "m", arg: 1, scope: !5319, file: !3, line: 340, type: !498)
!5321 = !DILocation(line: 340, column: 44, scope: !5319)
!5322 = !DILocalVariable(name: "v", arg: 2, scope: !5319, file: !3, line: 340, type: !156)
!5323 = !DILocation(line: 340, column: 53, scope: !5319)
!5324 = !DILocalVariable(name: "pos", arg: 3, scope: !5319, file: !3, line: 340, type: !536)
!5325 = !DILocation(line: 340, column: 64, scope: !5319)
!5326 = !DILocalVariable(name: "dev", scope: !5319, file: !3, line: 342, type: !3102)
!5327 = !DILocation(line: 342, column: 18, scope: !5319)
!5328 = !DILocation(line: 342, column: 24, scope: !5319)
!5329 = !DILocation(line: 344, column: 4, scope: !5319)
!5330 = !DILocation(line: 344, column: 8, scope: !5319)
!5331 = !DILocation(line: 345, column: 47, scope: !5319)
!5332 = !DILocation(line: 345, column: 8, scope: !5319)
!5333 = !DILocation(line: 345, column: 6, scope: !5319)
!5334 = !DILocation(line: 346, column: 9, scope: !5319)
!5335 = !DILocation(line: 346, column: 2, scope: !5319)
!5336 = distinct !DISubprogram(name: "show_device", scope: !3, file: !3, line: 357, type: !547, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !297)
!5337 = !DILocalVariable(name: "m", arg: 1, scope: !5336, file: !3, line: 357, type: !498)
!5338 = !DILocation(line: 357, column: 41, scope: !5336)
!5339 = !DILocalVariable(name: "v", arg: 2, scope: !5336, file: !3, line: 357, type: !156)
!5340 = !DILocation(line: 357, column: 50, scope: !5336)
!5341 = !DILocalVariable(name: "dev", scope: !5336, file: !3, line: 359, type: !5342)
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3103)
!5344 = !DILocation(line: 359, column: 24, scope: !5336)
!5345 = !DILocation(line: 359, column: 30, scope: !5336)
!5346 = !DILocalVariable(name: "drv", scope: !5336, file: !3, line: 360, type: !5347)
!5347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5348, size: 64)
!5348 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3945)
!5349 = !DILocation(line: 360, column: 27, scope: !5336)
!5350 = !DILocalVariable(name: "i", scope: !5336, file: !3, line: 361, type: !190)
!5351 = !DILocation(line: 361, column: 6, scope: !5336)
!5352 = !DILocation(line: 363, column: 6, scope: !5353)
!5353 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 363, column: 6)
!5354 = !DILocation(line: 363, column: 10, scope: !5353)
!5355 = !DILocation(line: 363, column: 6, scope: !5336)
!5356 = !DILocation(line: 364, column: 3, scope: !5353)
!5357 = !DILocation(line: 366, column: 23, scope: !5336)
!5358 = !DILocation(line: 366, column: 8, scope: !5336)
!5359 = !DILocation(line: 366, column: 6, scope: !5336)
!5360 = !DILocation(line: 367, column: 13, scope: !5336)
!5361 = !DILocation(line: 368, column: 4, scope: !5336)
!5362 = !DILocation(line: 368, column: 9, scope: !5336)
!5363 = !DILocation(line: 368, column: 14, scope: !5336)
!5364 = !DILocation(line: 369, column: 4, scope: !5336)
!5365 = !DILocation(line: 369, column: 9, scope: !5336)
!5366 = !DILocation(line: 370, column: 4, scope: !5336)
!5367 = !DILocation(line: 370, column: 9, scope: !5336)
!5368 = !DILocation(line: 371, column: 4, scope: !5336)
!5369 = !DILocation(line: 371, column: 9, scope: !5336)
!5370 = !DILocation(line: 372, column: 4, scope: !5336)
!5371 = !DILocation(line: 372, column: 9, scope: !5336)
!5372 = !DILocation(line: 367, column: 2, scope: !5336)
!5373 = !DILocation(line: 375, column: 9, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 375, column: 2)
!5375 = !DILocation(line: 375, column: 7, scope: !5374)
!5376 = !DILocation(line: 375, column: 14, scope: !5377)
!5377 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 375, column: 2)
!5378 = !DILocation(line: 375, column: 16, scope: !5377)
!5379 = !DILocation(line: 375, column: 2, scope: !5374)
!5380 = !DILocalVariable(name: "start", scope: !5381, file: !3, line: 376, type: !3123)
!5381 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 375, column: 42)
!5382 = !DILocation(line: 376, column: 19, scope: !5381)
!5383 = !DILocalVariable(name: "end", scope: !5381, file: !3, line: 376, type: !3123)
!5384 = !DILocation(line: 376, column: 26, scope: !5381)
!5385 = !DILocation(line: 377, column: 24, scope: !5381)
!5386 = !DILocation(line: 377, column: 29, scope: !5381)
!5387 = !DILocation(line: 377, column: 33, scope: !5381)
!5388 = !DILocation(line: 377, column: 38, scope: !5381)
!5389 = !DILocation(line: 377, column: 47, scope: !5381)
!5390 = !DILocation(line: 377, column: 3, scope: !5381)
!5391 = !DILocation(line: 378, column: 14, scope: !5381)
!5392 = !DILocation(line: 379, column: 25, scope: !5381)
!5393 = !DILocation(line: 380, column: 5, scope: !5381)
!5394 = !DILocation(line: 380, column: 10, scope: !5381)
!5395 = !DILocation(line: 380, column: 19, scope: !5381)
!5396 = !DILocation(line: 380, column: 22, scope: !5381)
!5397 = !DILocation(line: 380, column: 28, scope: !5381)
!5398 = !DILocation(line: 379, column: 31, scope: !5381)
!5399 = !DILocation(line: 378, column: 3, scope: !5381)
!5400 = !DILocation(line: 381, column: 2, scope: !5381)
!5401 = !DILocation(line: 375, column: 38, scope: !5377)
!5402 = !DILocation(line: 375, column: 2, scope: !5377)
!5403 = distinct !{!5403, !5379, !5404}
!5404 = !DILocation(line: 381, column: 2, scope: !5374)
!5405 = !DILocation(line: 382, column: 9, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 382, column: 2)
!5407 = !DILocation(line: 382, column: 7, scope: !5406)
!5408 = !DILocation(line: 382, column: 14, scope: !5409)
!5409 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 382, column: 2)
!5410 = !DILocation(line: 382, column: 16, scope: !5409)
!5411 = !DILocation(line: 382, column: 2, scope: !5406)
!5412 = !DILocalVariable(name: "start", scope: !5413, file: !3, line: 383, type: !3123)
!5413 = distinct !DILexicalBlock(scope: !5409, file: !3, line: 382, column: 42)
!5414 = !DILocation(line: 383, column: 19, scope: !5413)
!5415 = !DILocalVariable(name: "end", scope: !5413, file: !3, line: 383, type: !3123)
!5416 = !DILocation(line: 383, column: 26, scope: !5413)
!5417 = !DILocation(line: 384, column: 24, scope: !5413)
!5418 = !DILocation(line: 384, column: 29, scope: !5413)
!5419 = !DILocation(line: 384, column: 33, scope: !5413)
!5420 = !DILocation(line: 384, column: 38, scope: !5413)
!5421 = !DILocation(line: 384, column: 47, scope: !5413)
!5422 = !DILocation(line: 384, column: 3, scope: !5413)
!5423 = !DILocation(line: 385, column: 14, scope: !5413)
!5424 = !DILocation(line: 386, column: 4, scope: !5413)
!5425 = !DILocation(line: 386, column: 9, scope: !5413)
!5426 = !DILocation(line: 386, column: 18, scope: !5413)
!5427 = !DILocation(line: 386, column: 21, scope: !5413)
!5428 = !DILocation(line: 386, column: 29, scope: !5413)
!5429 = !DILocation(line: 386, column: 34, scope: !5413)
!5430 = !DILocation(line: 386, column: 43, scope: !5413)
!5431 = !DILocation(line: 386, column: 46, scope: !5413)
!5432 = !DILocation(line: 386, column: 27, scope: !5413)
!5433 = !DILocation(line: 387, column: 25, scope: !5413)
!5434 = !DILocation(line: 387, column: 31, scope: !5413)
!5435 = !DILocation(line: 387, column: 29, scope: !5413)
!5436 = !DILocation(line: 387, column: 38, scope: !5413)
!5437 = !DILocation(line: 385, column: 3, scope: !5413)
!5438 = !DILocation(line: 388, column: 2, scope: !5413)
!5439 = !DILocation(line: 382, column: 38, scope: !5409)
!5440 = !DILocation(line: 382, column: 2, scope: !5409)
!5441 = distinct !{!5441, !5411, !5442}
!5442 = !DILocation(line: 388, column: 2, scope: !5406)
!5443 = !DILocation(line: 389, column: 11, scope: !5336)
!5444 = !DILocation(line: 389, column: 2, scope: !5336)
!5445 = !DILocation(line: 390, column: 6, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5336, file: !3, line: 390, column: 6)
!5447 = !DILocation(line: 390, column: 6, scope: !5336)
!5448 = !DILocation(line: 391, column: 12, scope: !5446)
!5449 = !DILocation(line: 391, column: 15, scope: !5446)
!5450 = !DILocation(line: 391, column: 20, scope: !5446)
!5451 = !DILocation(line: 391, column: 3, scope: !5446)
!5452 = !DILocation(line: 392, column: 11, scope: !5336)
!5453 = !DILocation(line: 392, column: 2, scope: !5336)
!5454 = !DILocation(line: 393, column: 2, scope: !5336)
!5455 = !DILocation(line: 394, column: 1, scope: !5336)
