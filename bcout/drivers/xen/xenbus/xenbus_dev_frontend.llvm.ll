; ModuleID = '../bcout/drivers/xen/xenbus/xenbus_dev_frontend.llvm.bc'
source_filename = "drivers/xen/xenbus/xenbus_dev_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_xenbus_init6:\09\09\09"
module asm ".long\09xenbus_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.module = type opaque
%struct.file = type { %union.anon.1, %struct.path, %struct.inode*, %struct.file_operations*, %struct.spinlock, i32, %struct.atomic64_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, %struct.cred*, %struct.file_ra_state, i64, i8*, %struct.list_head, %struct.list_head, %struct.address_space*, i32, i32 }
%union.anon.1 = type { %struct.callback_head }
%struct.callback_head = type { %struct.callback_head*, void (%struct.callback_head*)* }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry*, %struct.super_block*, i32 }
%struct.super_block = type { %struct.list_head, i32, i8, i64, i64, %struct.file_system_type*, %struct.super_operations*, %struct.dquot_operations*, %struct.quotactl_ops*, %struct.export_operations*, i64, i64, i64, %struct.dentry*, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.xattr_handler**, %struct.hlist_bl_head, %struct.list_head, %struct.block_device*, %struct.backing_dev_info*, %struct.mtd_info*, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, i8*, i32, i64, i64, i32, %struct.fsnotify_mark_connector*, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, i8*, %struct.dentry_operations*, i32, %struct.shrinker, %struct.atomic64_t, %struct.atomic64_t, i32, i32, %struct.workqueue_struct*, %struct.hlist_head, %struct.user_namespace*, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.file_system_type = type { i8*, i32, i32 (%struct.fs_context*)*, %struct.fs_parameter_spec*, %struct.dentry* (%struct.file_system_type*, i32, i8*, i8*)*, void (%struct.super_block*)*, %struct.module*, %struct.file_system_type*, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.fs_context = type opaque
%struct.fs_parameter_spec = type opaque
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.page = type { i64, %union.anon.3, %union.anon.56, %struct.atomic_t, [8 x i8] }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%union.anon.56 = type { %struct.atomic_t }
%struct.shrink_control = type { i32, i32, i64, i64, %struct.mem_cgroup* }
%struct.mem_cgroup = type opaque
%struct.dquot_operations = type { i32 (%struct.dquot*)*, %struct.dquot* (%struct.super_block*, i32)*, void (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.dquot*)*, i32 (%struct.super_block*, i32)*, i64* (%struct.inode*)*, i32 (%struct.inode*, %struct.kprojid_t*)*, i32 (%struct.inode*, i64*)*, i32 (%struct.super_block*, %struct.kqid*)* }
%struct.dquot = type { %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.spinlock, %struct.atomic_t, %struct.super_block*, %struct.kqid, i64, i64, %struct.mem_dqblk }
%struct.kqid = type { %union.anon.57, i32 }
%union.anon.57 = type { %struct.kuid_t }
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
%struct.hlist_bl_node = type { %struct.hlist_bl_node*, %struct.hlist_bl_node** }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.49, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.mm_struct = type { %struct.anon.19, [0 x i64] }
%struct.anon.19 = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.20, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.20 = type { %struct.rb_node, i64 }
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
%struct.vdso_image = type opaque
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.21 }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.upid = type { i32, %struct.pid_namespace* }
%struct.pid_namespace = type opaque
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.posix_cputimers_work = type { %struct.callback_head, i32 }
%struct.key = type { %struct.refcount_struct, i32, %union.anon.26, %struct.rw_semaphore, %struct.key_user*, i8*, %union.anon.27, i64, %struct.kuid_t, %struct.kgid_t, i32, i16, i16, i16, i64, %union.anon.28, %union.anon.32, %struct.key_restriction* }
%union.anon.26 = type { %struct.rb_node }
%struct.key_user = type opaque
%union.anon.27 = type { i64 }
%struct.kgid_t = type { i32 }
%union.anon.28 = type { %struct.keyring_index_key }
%struct.keyring_index_key = type { i64, %union.anon.29, %struct.key_type*, %struct.key_tag*, i8* }
%union.anon.29 = type { i64 }
%struct.key_type = type opaque
%struct.key_tag = type { %struct.callback_head, %struct.refcount_struct, i8 }
%union.anon.32 = type { %union.key_payload }
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
%struct.seqcount_spinlock = type { %struct.seqcount }
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
%struct.io_cq = type { %struct.request_queue*, %struct.io_context*, %union.anon.35, %union.anon.36, i32 }
%struct.request_queue = type opaque
%union.anon.35 = type { %struct.list_head }
%union.anon.36 = type { %struct.hlist_node }
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.37 }
%struct.anon.37 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.41 }
%struct.anon.41 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.48, i32, [12 x i8] }
%union.anon.48 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.49 = type { %struct.callback_head }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.50, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.53 }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { i64, i64 }
%union.anon.53 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.fsnotify_mark_connector = type opaque
%struct.uuid_t = type { [16 x i8] }
%struct.dentry_operations = type { i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.qstr*)*, i32 (%struct.dentry*, i32, i8*, %struct.qstr*)*, i32 (%struct.dentry*)*, i32 (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*)*, void (%struct.dentry*, %struct.inode*)*, i8* (%struct.dentry*, i8*, i32)*, %struct.vfsmount* (%struct.path*)*, i32 (%struct.path*, i1)*, %struct.dentry* (%struct.dentry*, %struct.inode*)*, [24 x i8] }
%struct.qstr = type { %union.anon.2, i8* }
%union.anon.2 = type { i64 }
%struct.shrinker = type { i64 (%struct.shrinker*, %struct.shrink_control*)*, i64 (%struct.shrinker*, %struct.shrink_control*)*, i64, i32, i32, %struct.list_head, %struct.atomic64_t* }
%struct.workqueue_struct = type opaque
%struct.hlist_head = type { %struct.hlist_node* }
%struct.user_namespace = type opaque
%struct.list_lru = type { %struct.list_lru_node* }
%struct.list_lru_node = type { %struct.spinlock, %struct.list_lru_one, i64 }
%struct.list_lru_one = type { %struct.list_head, i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, %struct.dentry*, %struct.qstr, %struct.inode*, [32 x i8], %struct.lockref, %struct.dentry_operations*, %struct.super_block*, i64, i8*, %union.anon.66, %struct.list_head, %struct.list_head, %union.anon.67 }
%struct.lockref = type { %union.anon.64 }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { %struct.spinlock, i32 }
%union.anon.66 = type { %struct.list_head }
%union.anon.67 = type { %struct.hlist_node }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, %struct.inode_operations*, %struct.super_block*, %struct.address_space*, i64, %union.anon.58, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.59, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.60, %struct.file_lock_context*, %struct.address_space, %struct.list_head, %union.anon.63, i32, i32, %struct.fsnotify_mark_connector*, i8* }
%struct.inode_operations = type { %struct.dentry* (%struct.inode*, %struct.dentry*, i32)*, i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)*, i32 (%struct.inode*, i32)*, %struct.posix_acl* (%struct.inode*, i32)*, i32 (%struct.dentry*, i8*, i32)*, i32 (%struct.inode*, %struct.dentry*, i16, i1)*, i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i8*)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.dentry*)*, i32 (%struct.inode*, %struct.dentry*, i16, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*, i32)*, i32 (%struct.dentry*, %struct.iattr*)*, i32 (%struct.path*, %struct.kstat*, i32, i32)*, i64 (%struct.dentry*, i8*, i64)*, i32 (%struct.inode*, %struct.fiemap_extent_info*, i64, i64)*, i32 (%struct.inode*, %struct.timespec64*, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i16)*, i32 (%struct.inode*, %struct.dentry*, i16)*, i32 (%struct.inode*, %struct.posix_acl*, i32)*, [24 x i8] }
%struct.delayed_call = type { void (i8*)*, i8* }
%struct.posix_acl = type opaque
%struct.iattr = type { i32, i16, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.file* }
%struct.kstat = type { i32, i16, i32, i32, i64, i64, i64, i32, i32, %struct.kuid_t, %struct.kgid_t, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.timespec64, i64, i64 }
%struct.fiemap_extent_info = type opaque
%union.anon.58 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%union.anon.59 = type { %struct.callback_head }
%union.anon.60 = type { %struct.file_operations* }
%struct.file_lock_context = type { %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.address_space = type { %struct.inode*, %struct.xarray, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i64, i64, i64, %struct.address_space_operations*, i64, i32, %struct.spinlock, %struct.list_head, i8* }
%struct.address_space_operations = type { i32 (%struct.page*, %struct.writeback_control*)*, i32 (%struct.file*, %struct.page*)*, i32 (%struct.address_space*, %struct.writeback_control*)*, i32 (%struct.page*)*, i32 (%struct.file*, %struct.address_space*, %struct.list_head*, i32)*, void (%struct.readahead_control*)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page**, i8**)*, i32 (%struct.file*, %struct.address_space*, i64, i32, i32, %struct.page*, i8*)*, i64 (%struct.address_space*, i64)*, void (%struct.page*, i32, i32)*, i32 (%struct.page*, i32)*, void (%struct.page*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.address_space*, %struct.page*, %struct.page*, i32)*, i1 (%struct.page*, i32)*, void (%struct.page*)*, i32 (%struct.page*)*, i32 (%struct.page*, i64, i64)*, void (%struct.page*, i8*, i8*)*, i32 (%struct.address_space*, %struct.page*)*, i32 (%struct.swap_info_struct*, %struct.file*, i64*)*, void (%struct.file*)* }
%struct.readahead_control = type { %struct.file*, %struct.address_space*, i64, i32, i32 }
%struct.swap_info_struct = type opaque
%union.anon.63 = type { %struct.pipe_inode_info* }
%struct.file_operations = type { %struct.module*, {}*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic64_t = type { i64 }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.fown_struct = type { %struct.rwlock_t, %struct.pid*, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type {}
%struct.cred = type { %struct.atomic_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, %struct.key*, %struct.key*, %struct.key*, %struct.key*, %struct.user_struct*, %struct.user_namespace*, %struct.group_info*, %union.anon.34 }
%struct.kernel_cap_struct = type { [2 x i32] }
%struct.user_struct = type { %struct.refcount_struct, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i64, i64, %struct.atomic64_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic64_t, %struct.ratelimit_state }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i64, i64 }
%struct.group_info = type { %struct.atomic_t, i32, [0 x %struct.kgid_t] }
%union.anon.34 = type { %struct.callback_head }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.5 }
%union.anon.5 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type { %struct.page*, i32, %struct.wait_queue_entry }
%struct.wait_queue_entry = type { i32, i8*, i32 (%struct.wait_queue_entry*, i32, i32, i8*)*, %struct.list_head }
%struct.iov_iter = type { i32, i64, i64, %union.anon.6, %union.anon.7 }
%union.anon.6 = type { %struct.iovec* }
%struct.iovec = type { i8*, i64 }
%union.anon.7 = type { i64 }
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type { void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, i32 }
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.61 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.61 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.kmem_cache = type opaque
%struct.miscdevice = type { i32, i8*, %struct.file_operations*, %struct.list_head, %struct.device*, %struct.device*, %struct.attribute_group**, i8*, i16 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.70, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.70 = type { %struct.kernfs_elem_attr }
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
%struct.xb_req_data = type { %struct.list_head, %struct.wait_queue_head, %struct.xsd_sockmsg, i32, i32, i8*, %struct.kvec*, i32, i32, i32, i8, {}*, i8* }
%struct.xsd_sockmsg = type { i32, i32, i32, i32 }
%struct.kvec = type { i8*, i64 }
%struct.xenbus_file_priv = type { %struct.mutex, %struct.list_head, %struct.list_head, i32, %union.anon.0, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.kref, %struct.work_struct }
%union.anon.0 = type { %struct.xsd_sockmsg, [4080 x i8] }
%struct.xenbus_transaction_holder = type { %struct.list_head, %struct.xenbus_transaction, i32 }
%struct.xenbus_transaction = type { i32 }
%struct.read_buffer = type { %struct.list_head, i32, i32, [0 x i8] }
%struct.watch_adapter = type { %struct.list_head, %struct.xenbus_watch, %struct.xenbus_file_priv*, i8* }
%struct.xenbus_watch = type { %struct.list_head, i8*, void (%struct.xenbus_watch*, i8*, i8*)* }
%struct.anon.69 = type { %struct.xsd_sockmsg, [0 x i8] }
%struct.anon.68 = type { %struct.xsd_sockmsg, [16 x i8] }

@.str = private unnamed_addr constant [41 x i8] c"drivers/xen/xenbus/xenbus_dev_frontend.c\00", align 1
@xen_xenbus_fops = dso_local constant { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* } { %struct.module* null, i64 (%struct.file*, i64, i32)* @no_llseek, i64 (%struct.file*, i8*, i64, i64*)* @xenbus_file_read, i64 (%struct.file*, i8*, i64, i64*)* @xenbus_file_write, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* @xenbus_file_poll, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @xenbus_file_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @xenbus_file_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !0
@__UNIQUE_ID___addressable_xenbus_init265 = internal global i8* bitcast (i32 ()* @xenbus_init to i8*), section ".discard.addressable", align 8, !dbg !333
@xb_dev_generation_id = dso_local global i32 0, align 4, !dbg !335
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@system_wq = external dso_local global %struct.workqueue_struct*, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"EINVAL\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"ENOENT\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"EAGAIN\00", align 1
@xen_store_evtchn = external dso_local global i32, align 4
@xenbus_file_open.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !337
@.str.10 = private unnamed_addr constant [15 x i8] c"&u->read_waitq\00", align 1
@xenbus_file_open.__key.11 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3178
@.str.12 = private unnamed_addr constant [16 x i8] c"&u->reply_mutex\00", align 1
@xenbus_file_open.__key.13 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !3180
@.str.14 = private unnamed_addr constant [20 x i8] c"&u->msgbuffer_mutex\00", align 1
@xen_domain_type = external dso_local global i32, align 4
@xenbus_dev = internal global %struct.miscdevice { i32 255, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), %struct.file_operations* bitcast ({ %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }* @xen_xenbus_fops to %struct.file_operations*), %struct.list_head zeroinitializer, %struct.device* null, %struct.device* null, %struct.attribute_group** null, i8* null, i16 0 }, align 8, !dbg !3182
@.str.15 = private unnamed_addr constant [66 x i8] c"\013xenbus_dev_frontend: Could not register xenbus frontend device\0A\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"xen/xenbus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_xenbus_init265 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @xenbus_dev_queue_reply(%struct.xb_req_data* %req) #0 !dbg !3842 {
entry:
  %req.addr = alloca %struct.xb_req_data*, align 8
  %u = alloca %struct.xenbus_file_priv*, align 8
  %trans = alloca %struct.xenbus_transaction_holder*, align 8
  %rc = alloca i32, align 4
  %staging_q = alloca %struct.list_head, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on30 = alloca i32, align 4
  %tmp53 = alloca i64, align 8
  %__ret_warn_on71 = alloca i32, align 4
  %tmp96 = alloca i64, align 8
  store %struct.xb_req_data* %req, %struct.xb_req_data** %req.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xb_req_data** %req.addr, metadata !3862, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.declare(metadata %struct.xenbus_file_priv** %u, metadata !3864, metadata !DIExpression()), !dbg !3865
  %0 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !3866
  %par = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %0, i32 0, i32 12, !dbg !3867
  %1 = load i8*, i8** %par, align 8, !dbg !3867
  %2 = bitcast i8* %1 to %struct.xenbus_file_priv*, !dbg !3866
  store %struct.xenbus_file_priv* %2, %struct.xenbus_file_priv** %u, align 8, !dbg !3865
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction_holder** %trans, metadata !3868, metadata !DIExpression()), !dbg !3869
  store %struct.xenbus_transaction_holder* null, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !3869
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !3870, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.declare(metadata %struct.list_head* %staging_q, metadata !3872, metadata !DIExpression()), !dbg !3873
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %staging_q, i32 0, i32 0, !dbg !3873
  store %struct.list_head* %staging_q, %struct.list_head** %next, align 8, !dbg !3873
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %staging_q, i32 0, i32 1, !dbg !3873
  store %struct.list_head* %staging_q, %struct.list_head** %prev, align 8, !dbg !3873
  %3 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !3874
  call void @xs_request_exit(%struct.xb_req_data* %3) #9, !dbg !3875
  %4 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !3876
  %msgbuffer_mutex = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %4, i32 0, i32 0, !dbg !3877
  call void @mutex_lock(%struct.mutex* %msgbuffer_mutex) #9, !dbg !3878
  %5 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !3879
  %type = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %5, i32 0, i32 4, !dbg !3881
  %6 = load i32, i32* %type, align 4, !dbg !3881
  %cmp = icmp eq i32 %6, 6, !dbg !3882
  br i1 %cmp, label %if.then, label %if.else64, !dbg !3883

if.then:                                          ; preds = %entry
  %7 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !3884
  %call = call %struct.xenbus_transaction_holder* @xenbus_get_transaction(%struct.xenbus_file_priv* %7, i32 0) #9, !dbg !3886
  store %struct.xenbus_transaction_holder* %call, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !3887
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3888, metadata !DIExpression()), !dbg !3891
  %8 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !3891
  %tobool = icmp ne %struct.xenbus_transaction_holder* %8, null, !dbg !3891
  %lnot = xor i1 %tobool, true, !dbg !3891
  %lnot1 = xor i1 %lnot, true, !dbg !3891
  %lnot2 = xor i1 %lnot1, true, !dbg !3891
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3891
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3891
  %9 = load i32, i32* %__ret_warn_on, align 4, !dbg !3892
  %tobool3 = icmp ne i32 %9, 0, !dbg !3892
  %lnot4 = xor i1 %tobool3, true, !dbg !3892
  %lnot6 = xor i1 %lnot4, true, !dbg !3892
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !3892
  %conv = sext i32 %lnot.ext7 to i64, !dbg !3892
  %tobool8 = icmp ne i64 %conv, 0, !dbg !3892
  br i1 %tobool8, label %if.then9, label %if.end, !dbg !3891

if.then9:                                         ; preds = %if.then
  br label %do.body, !dbg !3892

do.body:                                          ; preds = %if.then9
  br label %do.body10, !dbg !3894

do.body10:                                        ; preds = %do.body
  br label %do.end, !dbg !3896

do.end:                                           ; preds = %do.body10
  br label %do.body11, !dbg !3894

do.body11:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 376, i32 2305, i64 12) #10, !dbg !3898, !srcloc !3900
  br label %do.end12, !dbg !3898

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 260) #10, !dbg !3901, !srcloc !3903
  br label %do.body13, !dbg !3894

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !3904

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !3894

do.end15:                                         ; preds = %do.end14
  br label %if.end, !dbg !3894

if.end:                                           ; preds = %do.end15, %if.then
  %10 = load i32, i32* %__ret_warn_on, align 4, !dbg !3891
  %tobool16 = icmp ne i32 %10, 0, !dbg !3891
  %lnot17 = xor i1 %tobool16, true, !dbg !3891
  %lnot19 = xor i1 %lnot17, true, !dbg !3891
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3891
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3891
  store i64 %conv21, i64* %tmp, align 8, !dbg !3892
  %11 = load i64, i64* %tmp, align 8, !dbg !3891
  %tobool22 = icmp ne i64 %11, 0, !dbg !3906
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !3907

if.then23:                                        ; preds = %if.end
  br label %out, !dbg !3908

if.end24:                                         ; preds = %if.end
  %12 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !3909
  %msg = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %12, i32 0, i32 2, !dbg !3911
  %type25 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg, i32 0, i32 0, !dbg !3912
  %13 = load i32, i32* %type25, align 8, !dbg !3912
  %cmp26 = icmp eq i32 %13, 16, !dbg !3913
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !3914

if.then28:                                        ; preds = %if.end24
  %14 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !3915
  %list = getelementptr inbounds %struct.xenbus_transaction_holder, %struct.xenbus_transaction_holder* %14, i32 0, i32 0, !dbg !3917
  call void @list_del(%struct.list_head* %list) #9, !dbg !3918
  %15 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !3919
  %16 = bitcast %struct.xenbus_transaction_holder* %15 to i8*, !dbg !3919
  call void @kfree(i8* %16) #9, !dbg !3920
  br label %if.end63, !dbg !3921

if.else:                                          ; preds = %if.end24
  %17 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !3922
  %body = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %17, i32 0, i32 5, !dbg !3924
  %18 = load i8*, i8** %body, align 8, !dbg !3924
  %19 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !3925
  %handle = getelementptr inbounds %struct.xenbus_transaction_holder, %struct.xenbus_transaction_holder* %19, i32 0, i32 1, !dbg !3926
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %handle, i32 0, i32 0, !dbg !3927
  %call29 = call i32 @kstrtou32(i8* %18, i32 10, i32* %id) #9, !dbg !3928
  store i32 %call29, i32* %rc, align 4, !dbg !3929
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on30, metadata !3930, metadata !DIExpression()), !dbg !3933
  %20 = load i32, i32* %rc, align 4, !dbg !3933
  %tobool31 = icmp ne i32 %20, 0, !dbg !3933
  %lnot32 = xor i1 %tobool31, true, !dbg !3933
  %lnot34 = xor i1 %lnot32, true, !dbg !3933
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !3933
  store i32 %lnot.ext35, i32* %__ret_warn_on30, align 4, !dbg !3933
  %21 = load i32, i32* %__ret_warn_on30, align 4, !dbg !3934
  %tobool36 = icmp ne i32 %21, 0, !dbg !3934
  %lnot37 = xor i1 %tobool36, true, !dbg !3934
  %lnot39 = xor i1 %lnot37, true, !dbg !3934
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !3934
  %conv41 = sext i32 %lnot.ext40 to i64, !dbg !3934
  %tobool42 = icmp ne i64 %conv41, 0, !dbg !3934
  br i1 %tobool42, label %if.then43, label %if.end52, !dbg !3933

if.then43:                                        ; preds = %if.else
  br label %do.body44, !dbg !3934

do.body44:                                        ; preds = %if.then43
  br label %do.body45, !dbg !3936

do.body45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !3938

do.end46:                                         ; preds = %do.body45
  br label %do.body47, !dbg !3936

do.body47:                                        ; preds = %do.end46
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 383, i32 2305, i64 12) #10, !dbg !3940, !srcloc !3942
  br label %do.end48, !dbg !3940

do.end48:                                         ; preds = %do.body47
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 261) #10, !dbg !3943, !srcloc !3945
  br label %do.body49, !dbg !3936

do.body49:                                        ; preds = %do.end48
  br label %do.end50, !dbg !3946

do.end50:                                         ; preds = %do.body49
  br label %do.end51, !dbg !3936

do.end51:                                         ; preds = %do.end50
  br label %if.end52, !dbg !3936

if.end52:                                         ; preds = %do.end51, %if.else
  %22 = load i32, i32* %__ret_warn_on30, align 4, !dbg !3933
  %tobool54 = icmp ne i32 %22, 0, !dbg !3933
  %lnot55 = xor i1 %tobool54, true, !dbg !3933
  %lnot57 = xor i1 %lnot55, true, !dbg !3933
  %lnot.ext58 = zext i1 %lnot57 to i32, !dbg !3933
  %conv59 = sext i32 %lnot.ext58 to i64, !dbg !3933
  store i64 %conv59, i64* %tmp53, align 8, !dbg !3934
  %23 = load i64, i64* %tmp53, align 8, !dbg !3933
  %tobool60 = icmp ne i64 %23, 0, !dbg !3948
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !3949

if.then61:                                        ; preds = %if.end52
  br label %out, !dbg !3950

if.end62:                                         ; preds = %if.end52
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then28
  br label %if.end108, !dbg !3951

if.else64:                                        ; preds = %entry
  %24 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !3952
  %type65 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %24, i32 0, i32 4, !dbg !3954
  %25 = load i32, i32* %type65, align 4, !dbg !3954
  %cmp66 = icmp eq i32 %25, 7, !dbg !3955
  br i1 %cmp66, label %if.then68, label %if.end107, !dbg !3956

if.then68:                                        ; preds = %if.else64
  %26 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !3957
  %27 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !3959
  %msg69 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %27, i32 0, i32 2, !dbg !3960
  %tx_id = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg69, i32 0, i32 2, !dbg !3961
  %28 = load i32, i32* %tx_id, align 8, !dbg !3961
  %call70 = call %struct.xenbus_transaction_holder* @xenbus_get_transaction(%struct.xenbus_file_priv* %26, i32 %28) #9, !dbg !3962
  store %struct.xenbus_transaction_holder* %call70, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !3963
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on71, metadata !3964, metadata !DIExpression()), !dbg !3967
  %29 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !3967
  %tobool72 = icmp ne %struct.xenbus_transaction_holder* %29, null, !dbg !3967
  %lnot73 = xor i1 %tobool72, true, !dbg !3967
  %lnot75 = xor i1 %lnot73, true, !dbg !3967
  %lnot77 = xor i1 %lnot75, true, !dbg !3967
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !3967
  store i32 %lnot.ext78, i32* %__ret_warn_on71, align 4, !dbg !3967
  %30 = load i32, i32* %__ret_warn_on71, align 4, !dbg !3968
  %tobool79 = icmp ne i32 %30, 0, !dbg !3968
  %lnot80 = xor i1 %tobool79, true, !dbg !3968
  %lnot82 = xor i1 %lnot80, true, !dbg !3968
  %lnot.ext83 = zext i1 %lnot82 to i32, !dbg !3968
  %conv84 = sext i32 %lnot.ext83 to i64, !dbg !3968
  %tobool85 = icmp ne i64 %conv84, 0, !dbg !3968
  br i1 %tobool85, label %if.then86, label %if.end95, !dbg !3967

if.then86:                                        ; preds = %if.then68
  br label %do.body87, !dbg !3968

do.body87:                                        ; preds = %if.then86
  br label %do.body88, !dbg !3970

do.body88:                                        ; preds = %do.body87
  br label %do.end89, !dbg !3972

do.end89:                                         ; preds = %do.body88
  br label %do.body90, !dbg !3970

do.body90:                                        ; preds = %do.end89
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 388, i32 2305, i64 12) #10, !dbg !3974, !srcloc !3976
  br label %do.end91, !dbg !3974

do.end91:                                         ; preds = %do.body90
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 262) #10, !dbg !3977, !srcloc !3979
  br label %do.body92, !dbg !3970

do.body92:                                        ; preds = %do.end91
  br label %do.end93, !dbg !3980

do.end93:                                         ; preds = %do.body92
  br label %do.end94, !dbg !3970

do.end94:                                         ; preds = %do.end93
  br label %if.end95, !dbg !3970

if.end95:                                         ; preds = %do.end94, %if.then68
  %31 = load i32, i32* %__ret_warn_on71, align 4, !dbg !3967
  %tobool97 = icmp ne i32 %31, 0, !dbg !3967
  %lnot98 = xor i1 %tobool97, true, !dbg !3967
  %lnot100 = xor i1 %lnot98, true, !dbg !3967
  %lnot.ext101 = zext i1 %lnot100 to i32, !dbg !3967
  %conv102 = sext i32 %lnot.ext101 to i64, !dbg !3967
  store i64 %conv102, i64* %tmp96, align 8, !dbg !3968
  %32 = load i64, i64* %tmp96, align 8, !dbg !3967
  %tobool103 = icmp ne i64 %32, 0, !dbg !3982
  br i1 %tobool103, label %if.then104, label %if.end105, !dbg !3983

if.then104:                                       ; preds = %if.end95
  br label %out, !dbg !3984

if.end105:                                        ; preds = %if.end95
  %33 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !3985
  %list106 = getelementptr inbounds %struct.xenbus_transaction_holder, %struct.xenbus_transaction_holder* %33, i32 0, i32 0, !dbg !3986
  call void @list_del(%struct.list_head* %list106) #9, !dbg !3987
  %34 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !3988
  %35 = bitcast %struct.xenbus_transaction_holder* %34 to i8*, !dbg !3988
  call void @kfree(i8* %35) #9, !dbg !3989
  br label %if.end107, !dbg !3990

if.end107:                                        ; preds = %if.end105, %if.else64
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %if.end63
  %36 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !3991
  %msgbuffer_mutex109 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %36, i32 0, i32 0, !dbg !3992
  call void @mutex_unlock(%struct.mutex* %msgbuffer_mutex109) #9, !dbg !3993
  %37 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !3994
  %reply_mutex = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %37, i32 0, i32 5, !dbg !3995
  call void @mutex_lock(%struct.mutex* %reply_mutex) #9, !dbg !3996
  %38 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !3997
  %msg110 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %38, i32 0, i32 2, !dbg !3998
  %39 = bitcast %struct.xsd_sockmsg* %msg110 to i8*, !dbg !3999
  %call111 = call i32 @queue_reply(%struct.list_head* %staging_q, i8* %39, i64 16) #9, !dbg !4000
  store i32 %call111, i32* %rc, align 4, !dbg !4001
  %40 = load i32, i32* %rc, align 4, !dbg !4002
  %tobool112 = icmp ne i32 %40, 0, !dbg !4002
  br i1 %tobool112, label %if.end118, label %if.then113, !dbg !4004

if.then113:                                       ; preds = %if.end108
  %41 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !4005
  %body114 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %41, i32 0, i32 5, !dbg !4006
  %42 = load i8*, i8** %body114, align 8, !dbg !4006
  %43 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !4007
  %msg115 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %43, i32 0, i32 2, !dbg !4008
  %len = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg115, i32 0, i32 3, !dbg !4009
  %44 = load i32, i32* %len, align 4, !dbg !4009
  %conv116 = zext i32 %44 to i64, !dbg !4007
  %call117 = call i32 @queue_reply(%struct.list_head* %staging_q, i8* %42, i64 %conv116) #9, !dbg !4010
  store i32 %call117, i32* %rc, align 4, !dbg !4011
  br label %if.end118, !dbg !4012

if.end118:                                        ; preds = %if.then113, %if.end108
  %45 = load i32, i32* %rc, align 4, !dbg !4013
  %tobool119 = icmp ne i32 %45, 0, !dbg !4013
  br i1 %tobool119, label %if.else121, label %if.then120, !dbg !4015

if.then120:                                       ; preds = %if.end118
  %46 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4016
  %read_buffers = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %46, i32 0, i32 6, !dbg !4018
  call void @list_splice_tail(%struct.list_head* %staging_q, %struct.list_head* %read_buffers) #9, !dbg !4019
  %47 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4020
  %read_waitq = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %47, i32 0, i32 7, !dbg !4020
  call void @__wake_up(%struct.wait_queue_head* %read_waitq, i32 3, i32 1, i8* null) #9, !dbg !4020
  br label %if.end122, !dbg !4021

if.else121:                                       ; preds = %if.end118
  call void @queue_cleanup(%struct.list_head* %staging_q) #9, !dbg !4022
  br label %if.end122

if.end122:                                        ; preds = %if.else121, %if.then120
  %48 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4024
  %reply_mutex123 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %48, i32 0, i32 5, !dbg !4025
  call void @mutex_unlock(%struct.mutex* %reply_mutex123) #9, !dbg !4026
  %49 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !4027
  %body124 = getelementptr inbounds %struct.xb_req_data, %struct.xb_req_data* %49, i32 0, i32 5, !dbg !4028
  %50 = load i8*, i8** %body124, align 8, !dbg !4028
  call void @kfree(i8* %50) #9, !dbg !4029
  %51 = load %struct.xb_req_data*, %struct.xb_req_data** %req.addr, align 8, !dbg !4030
  %52 = bitcast %struct.xb_req_data* %51 to i8*, !dbg !4030
  call void @kfree(i8* %52) #9, !dbg !4031
  %53 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4032
  %kref = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %53, i32 0, i32 8, !dbg !4033
  %call125 = call i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* @xenbus_file_free) #9, !dbg !4034
  br label %return, !dbg !4035

out:                                              ; preds = %if.then104, %if.then61, %if.then23
  call void @llvm.dbg.label(metadata !4036), !dbg !4037
  %54 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4038
  %msgbuffer_mutex126 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %54, i32 0, i32 0, !dbg !4039
  call void @mutex_unlock(%struct.mutex* %msgbuffer_mutex126) #9, !dbg !4040
  br label %return, !dbg !4041

return:                                           ; preds = %out, %if.end122
  ret void, !dbg !4041
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @xs_request_exit(%struct.xb_req_data*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.xenbus_transaction_holder* @xenbus_get_transaction(%struct.xenbus_file_priv* %u, i32 %tx_id) #0 !dbg !4042 {
entry:
  %retval = alloca %struct.xenbus_transaction_holder*, align 8
  %u.addr = alloca %struct.xenbus_file_priv*, align 8
  %tx_id.addr = alloca i32, align 4
  %trans = alloca %struct.xenbus_transaction_holder*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xenbus_transaction_holder*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp8 = alloca %struct.xenbus_transaction_holder*, align 8
  store %struct.xenbus_file_priv* %u, %struct.xenbus_file_priv** %u.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_file_priv** %u.addr, metadata !4045, metadata !DIExpression()), !dbg !4046
  store i32 %tx_id, i32* %tx_id.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %tx_id.addr, metadata !4047, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction_holder** %trans, metadata !4049, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4051, metadata !DIExpression()), !dbg !4054
  %0 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !4054
  %transactions = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %0, i32 0, i32 1, !dbg !4054
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %transactions, i32 0, i32 0, !dbg !4054
  %1 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4054
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !4054
  store i8* %2, i8** %__mptr, align 8, !dbg !4054
  br label %do.body, !dbg !4054

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4055

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !4054
  %add.ptr = getelementptr i8, i8* %3, i64 0, !dbg !4054
  %4 = bitcast i8* %add.ptr to %struct.xenbus_transaction_holder*, !dbg !4054
  store %struct.xenbus_transaction_holder* %4, %struct.xenbus_transaction_holder** %tmp, align 8, !dbg !4055
  %5 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %tmp, align 8, !dbg !4054
  store %struct.xenbus_transaction_holder* %5, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !4057
  br label %for.cond, !dbg !4057

for.cond:                                         ; preds = %do.end7, %do.end
  %6 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !4058
  %list = getelementptr inbounds %struct.xenbus_transaction_holder, %struct.xenbus_transaction_holder* %6, i32 0, i32 0, !dbg !4058
  %7 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !4058
  %transactions1 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %7, i32 0, i32 1, !dbg !4058
  %cmp = icmp eq %struct.list_head* %list, %transactions1, !dbg !4058
  %lnot = xor i1 %cmp, true, !dbg !4058
  br i1 %lnot, label %for.body, label %for.end, !dbg !4057

for.body:                                         ; preds = %for.cond
  %8 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !4060
  %handle = getelementptr inbounds %struct.xenbus_transaction_holder, %struct.xenbus_transaction_holder* %8, i32 0, i32 1, !dbg !4062
  %id = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %handle, i32 0, i32 0, !dbg !4063
  %9 = load i32, i32* %id, align 8, !dbg !4063
  %10 = load i32, i32* %tx_id.addr, align 4, !dbg !4064
  %cmp2 = icmp eq i32 %9, %10, !dbg !4065
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4066

if.then:                                          ; preds = %for.body
  %11 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !4067
  store %struct.xenbus_transaction_holder* %11, %struct.xenbus_transaction_holder** %retval, align 8, !dbg !4068
  br label %return, !dbg !4068

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4064

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !4069, metadata !DIExpression()), !dbg !4071
  %12 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !4071
  %list4 = getelementptr inbounds %struct.xenbus_transaction_holder, %struct.xenbus_transaction_holder* %12, i32 0, i32 0, !dbg !4071
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %list4, i32 0, i32 0, !dbg !4071
  %13 = load %struct.list_head*, %struct.list_head** %next5, align 8, !dbg !4071
  %14 = bitcast %struct.list_head* %13 to i8*, !dbg !4071
  store i8* %14, i8** %__mptr3, align 8, !dbg !4071
  br label %do.body6, !dbg !4071

do.body6:                                         ; preds = %for.inc
  br label %do.end7, !dbg !4072

do.end7:                                          ; preds = %do.body6
  %15 = load i8*, i8** %__mptr3, align 8, !dbg !4071
  %add.ptr9 = getelementptr i8, i8* %15, i64 0, !dbg !4071
  %16 = bitcast i8* %add.ptr9 to %struct.xenbus_transaction_holder*, !dbg !4071
  store %struct.xenbus_transaction_holder* %16, %struct.xenbus_transaction_holder** %tmp8, align 8, !dbg !4072
  %17 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %tmp8, align 8, !dbg !4071
  store %struct.xenbus_transaction_holder* %17, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !4058
  br label %for.cond, !dbg !4058, !llvm.loop !4074

for.end:                                          ; preds = %for.cond
  store %struct.xenbus_transaction_holder* null, %struct.xenbus_transaction_holder** %retval, align 8, !dbg !4076
  br label %return, !dbg !4076

return:                                           ; preds = %for.end, %if.then
  %18 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %retval, align 8, !dbg !4077
  ret %struct.xenbus_transaction_holder* %18, !dbg !4077
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !4078 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4082, metadata !DIExpression()), !dbg !4083
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4084
  call void @__list_del_entry(%struct.list_head* %0) #9, !dbg !4085
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4086
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4087
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !4088
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4089
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4090
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !4091
  ret void, !dbg !4092
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kstrtou32(i8* %s, i32 %base, i32* %res) #0 !dbg !4093 {
entry:
  %s.addr = alloca i8*, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca i32*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !4097, metadata !DIExpression()), !dbg !4098
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !4099, metadata !DIExpression()), !dbg !4100
  store i32* %res, i32** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %res.addr, metadata !4101, metadata !DIExpression()), !dbg !4102
  %0 = load i8*, i8** %s.addr, align 8, !dbg !4103
  %1 = load i32, i32* %base.addr, align 4, !dbg !4104
  %2 = load i32*, i32** %res.addr, align 8, !dbg !4105
  %call = call i32 @kstrtouint(i8* %0, i32 %1, i32* %2) #9, !dbg !4106
  ret i32 %call, !dbg !4107
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @queue_reply(%struct.list_head* %queue, i8* %data, i64 %len) #0 !dbg !4108 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4111, metadata !DIExpression()), !dbg !4115
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4123, metadata !DIExpression()), !dbg !4124
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4125, metadata !DIExpression()), !dbg !4126
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4127, metadata !DIExpression()), !dbg !4128
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4129, metadata !DIExpression()), !dbg !4133
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4135, metadata !DIExpression()), !dbg !4139
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4141, metadata !DIExpression()), !dbg !4145
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4150, metadata !DIExpression()), !dbg !4151
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4152, metadata !DIExpression()), !dbg !4153
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4154, metadata !DIExpression()), !dbg !4155
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4156, metadata !DIExpression()), !dbg !4157
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4158, metadata !DIExpression()), !dbg !4159
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4160, metadata !DIExpression()), !dbg !4161
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4162, metadata !DIExpression()), !dbg !4163
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4164, metadata !DIExpression()), !dbg !4165
  %retval = alloca i32, align 4
  %queue.addr = alloca %struct.list_head*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %rb = alloca %struct.read_buffer*, align 8
  store %struct.list_head* %queue, %struct.list_head** %queue.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %queue.addr, metadata !4166, metadata !DIExpression()), !dbg !4167
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !4168, metadata !DIExpression()), !dbg !4169
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4170, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.declare(metadata %struct.read_buffer** %rb, metadata !4172, metadata !DIExpression()), !dbg !4173
  %0 = load i64, i64* %len.addr, align 8, !dbg !4174
  %cmp = icmp eq i64 %0, 0, !dbg !4176
  br i1 %cmp, label %if.then, label %if.end, !dbg !4177

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4178
  br label %return, !dbg !4178

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %len.addr, align 8, !dbg !4179
  %cmp1 = icmp ugt i64 %1, 4096, !dbg !4181
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4182

if.then2:                                         ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !4183
  br label %return, !dbg !4183

if.end3:                                          ; preds = %if.end
  %2 = load i64, i64* %len.addr, align 8, !dbg !4184
  %add = add i64 24, %2, !dbg !4185
  store i64 %add, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !4186
  %4 = call i1 @llvm.is.constant.i64(i64 %3) #10, !dbg !4187
  br i1 %4, label %if.then.i, label %if.end9.i, !dbg !4188

if.then.i:                                        ; preds = %if.end3
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !4189
  %cmp.i = icmp ugt i64 %5, 8192, !dbg !4190
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4191

if.then1.i:                                       ; preds = %if.then.i
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4192
  %7 = load i32, i32* %flags.addr.i, align 4, !dbg !4193
  store i64 %6, i64* %size.addr.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i, align 4
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !4194
  %call.i.i = call i32 @get_order(i64 %8) #11, !dbg !4195
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4159
  %9 = load i64, i64* %size.addr.i.i, align 8, !dbg !4196
  %10 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4197
  %11 = load i32, i32* %order.i.i, align 4, !dbg !4198
  store i64 %9, i64* %size.addr.i.i.i, align 8
  store i32 %10, i32* %flags.addr.i.i.i, align 4
  store i32 %11, i32* %order.addr.i.i.i, align 4
  %12 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4199
  %13 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4200
  %14 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4201
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %12, i32 %13, i32 %14) #12, !dbg !4202
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4202
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4202
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4202
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !4202
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4203
  br label %kmalloc.exit, !dbg !4203

if.end.i:                                         ; preds = %if.then.i
  %15 = load i64, i64* %size.addr.i, align 8, !dbg !4204
  store i64 %15, i64* %size.addr.i11.i, align 8
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4205
  %tobool.i.i = icmp ne i64 %16, 0, !dbg !4205
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4207

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4208
  br label %kmalloc_index.exit.i, !dbg !4208

if.end.i.i:                                       ; preds = %if.end.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4209
  %cmp.i.i = icmp ule i64 %17, 8, !dbg !4211
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4212

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4213
  br label %kmalloc_index.exit.i, !dbg !4213

if.end2.i.i:                                      ; preds = %if.end.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4214
  %cmp3.i.i = icmp ugt i64 %18, 64, !dbg !4216
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4217

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4218
  %cmp4.i.i = icmp ule i64 %19, 96, !dbg !4219
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4220

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4221
  br label %kmalloc_index.exit.i, !dbg !4221

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4222
  %cmp7.i.i = icmp ugt i64 %20, 128, !dbg !4224
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4225

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4226
  %cmp9.i.i = icmp ule i64 %21, 192, !dbg !4227
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4228

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4229
  br label %kmalloc_index.exit.i, !dbg !4229

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4230
  %cmp12.i.i = icmp ule i64 %22, 8, !dbg !4232
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4233

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4234
  br label %kmalloc_index.exit.i, !dbg !4234

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4235
  %cmp15.i.i = icmp ule i64 %23, 16, !dbg !4237
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4238

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4239
  br label %kmalloc_index.exit.i, !dbg !4239

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4240
  %cmp18.i.i = icmp ule i64 %24, 32, !dbg !4242
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4243

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4244
  br label %kmalloc_index.exit.i, !dbg !4244

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4245
  %cmp21.i.i = icmp ule i64 %25, 64, !dbg !4247
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4248

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4249
  br label %kmalloc_index.exit.i, !dbg !4249

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4250
  %cmp24.i.i = icmp ule i64 %26, 128, !dbg !4252
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4253

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4254
  br label %kmalloc_index.exit.i, !dbg !4254

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4255
  %cmp27.i.i = icmp ule i64 %27, 256, !dbg !4257
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4258

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4259
  br label %kmalloc_index.exit.i, !dbg !4259

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4260
  %cmp30.i.i = icmp ule i64 %28, 512, !dbg !4262
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4263

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4264
  br label %kmalloc_index.exit.i, !dbg !4264

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4265
  %cmp33.i.i = icmp ule i64 %29, 1024, !dbg !4267
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4268

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4269
  br label %kmalloc_index.exit.i, !dbg !4269

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4270
  %cmp36.i.i = icmp ule i64 %30, 2048, !dbg !4272
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4273

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4274
  br label %kmalloc_index.exit.i, !dbg !4274

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4275
  %cmp39.i.i = icmp ule i64 %31, 4096, !dbg !4277
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4278

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4279
  br label %kmalloc_index.exit.i, !dbg !4279

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4280
  %cmp42.i.i = icmp ule i64 %32, 8192, !dbg !4282
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4283

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4284
  br label %kmalloc_index.exit.i, !dbg !4284

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4285
  %cmp45.i.i = icmp ule i64 %33, 16384, !dbg !4287
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4288

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4289
  br label %kmalloc_index.exit.i, !dbg !4289

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4290
  %cmp48.i.i = icmp ule i64 %34, 32768, !dbg !4292
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4293

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4294
  br label %kmalloc_index.exit.i, !dbg !4294

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4295
  %cmp51.i.i = icmp ule i64 %35, 65536, !dbg !4297
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4298

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4299
  br label %kmalloc_index.exit.i, !dbg !4299

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4300
  %cmp54.i.i = icmp ule i64 %36, 131072, !dbg !4302
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4303

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4304
  br label %kmalloc_index.exit.i, !dbg !4304

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4305
  %cmp57.i.i = icmp ule i64 %37, 262144, !dbg !4307
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4308

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4309
  br label %kmalloc_index.exit.i, !dbg !4309

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4310
  %cmp60.i.i = icmp ule i64 %38, 524288, !dbg !4312
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4313

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4314
  br label %kmalloc_index.exit.i, !dbg !4314

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4315
  %cmp63.i.i = icmp ule i64 %39, 1048576, !dbg !4317
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4318

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4319
  br label %kmalloc_index.exit.i, !dbg !4319

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4320
  %cmp66.i.i = icmp ule i64 %40, 2097152, !dbg !4322
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4323

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4324
  br label %kmalloc_index.exit.i, !dbg !4324

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4325
  %cmp69.i.i = icmp ule i64 %41, 4194304, !dbg !4327
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4328

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4329
  br label %kmalloc_index.exit.i, !dbg !4329

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4330
  %cmp72.i.i = icmp ule i64 %42, 8388608, !dbg !4332
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4333

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4334
  br label %kmalloc_index.exit.i, !dbg !4334

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4335
  %cmp75.i.i = icmp ule i64 %43, 16777216, !dbg !4337
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4338

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4339
  br label %kmalloc_index.exit.i, !dbg !4339

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4340
  %cmp78.i.i = icmp ule i64 %44, 33554432, !dbg !4342
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4343

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4344
  br label %kmalloc_index.exit.i, !dbg !4344

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4345
  %cmp81.i.i = icmp ule i64 %45, 67108864, !dbg !4347
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4348

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4349
  br label %kmalloc_index.exit.i, !dbg !4349

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4350, !srcloc !4353
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 230) #10, !dbg !4354, !srcloc !4357
  unreachable, !dbg !4358

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %46 = load i32, i32* %retval.i.i, align 4, !dbg !4359
  store i32 %46, i32* %index.i, align 4, !dbg !4360
  %47 = load i32, i32* %index.i, align 4, !dbg !4361
  %tobool.i = icmp ne i32 %47, 0, !dbg !4361
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4363

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4364
  br label %kmalloc.exit, !dbg !4364

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %48 = load i32, i32* %flags.addr.i, align 4, !dbg !4365
  store i32 %48, i32* %flags.addr.i13.i, align 4
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4366
  %and.i.i = and i32 %49, 17, !dbg !4366
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4366
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4366
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4366
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4366
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4368

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4369
  br label %kmalloc_type.exit.i, !dbg !4369

if.end.i16.i:                                     ; preds = %if.end4.i
  %50 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4370
  %and2.i.i = and i32 %50, 1, !dbg !4371
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4370
  %51 = zext i1 %tobool3.i.i to i64, !dbg !4370
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4370
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4372
  br label %kmalloc_type.exit.i, !dbg !4372

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %52 = load i32, i32* %retval.i12.i, align 4, !dbg !4373
  %idxprom.i = zext i32 %52 to i64, !dbg !4374
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4374
  %53 = load i32, i32* %index.i, align 4, !dbg !4375
  %idxprom6.i = zext i32 %53 to i64, !dbg !4374
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4374
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4374
  %55 = load i32, i32* %flags.addr.i, align 4, !dbg !4376
  %56 = load i64, i64* %size.addr.i, align 8, !dbg !4377
  store %struct.kmem_cache* %54, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %55, i32* %flags.addr.i17.i, align 4
  store i64 %56, i64* %size.addr.i18.i, align 8
  %57 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4378
  %58 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4379
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %57, i32 %58) #12, !dbg !4380
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4380
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4380
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4380
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4380
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4128
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4381
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !4382
  %61 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4383
  %62 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4384
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %59, i8* %60, i64 %61, i32 %62) #12, !dbg !4385
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4386
  %63 = load i8*, i8** %ret.i.i, align 8, !dbg !4387
  store i8* %63, i8** %retval.i, align 8, !dbg !4388
  br label %kmalloc.exit, !dbg !4388

if.end9.i:                                        ; preds = %if.end3
  %64 = load i64, i64* %size.addr.i, align 8, !dbg !4389
  %65 = load i32, i32* %flags.addr.i, align 4, !dbg !4390
  %call10.i = call noalias i8* @__kmalloc(i64 %64, i32 %65) #12, !dbg !4391
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4391
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4391
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4391
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4391
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4392
  br label %kmalloc.exit, !dbg !4392

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %66 = load i8*, i8** %retval.i, align 8, !dbg !4393
  %67 = bitcast i8* %66 to %struct.read_buffer*, !dbg !4394
  store %struct.read_buffer* %67, %struct.read_buffer** %rb, align 8, !dbg !4395
  %68 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !4396
  %cmp4 = icmp eq %struct.read_buffer* %68, null, !dbg !4398
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4399

if.then5:                                         ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !4400
  br label %return, !dbg !4400

if.end6:                                          ; preds = %kmalloc.exit
  %69 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !4401
  %cons = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %69, i32 0, i32 1, !dbg !4402
  store i32 0, i32* %cons, align 8, !dbg !4403
  %70 = load i64, i64* %len.addr, align 8, !dbg !4404
  %conv = trunc i64 %70 to i32, !dbg !4404
  %71 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !4405
  %len7 = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %71, i32 0, i32 2, !dbg !4406
  store i32 %conv, i32* %len7, align 4, !dbg !4407
  %72 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !4408
  %msg = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %72, i32 0, i32 3, !dbg !4409
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %msg, i64 0, i64 0, !dbg !4410
  %73 = load i8*, i8** %data.addr, align 8, !dbg !4411
  %74 = load i64, i64* %len.addr, align 8, !dbg !4412
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %arraydecay, i8* align 1 %73, i64 %74, i1 false), !dbg !4410
  %75 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !4413
  %list = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %75, i32 0, i32 0, !dbg !4414
  %76 = load %struct.list_head*, %struct.list_head** %queue.addr, align 8, !dbg !4415
  call void @list_add_tail(%struct.list_head* %list, %struct.list_head* %76) #9, !dbg !4416
  store i32 0, i32* %retval, align 4, !dbg !4417
  br label %return, !dbg !4417

return:                                           ; preds = %if.end6, %if.then5, %if.then2, %if.then
  %77 = load i32, i32* %retval, align 4, !dbg !4418
  ret i32 %77, !dbg !4418
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_splice_tail(%struct.list_head* %list, %struct.list_head* %head) #0 !dbg !4419 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4422, metadata !DIExpression()), !dbg !4423
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4424, metadata !DIExpression()), !dbg !4425
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4426
  %call = call i32 @list_empty(%struct.list_head* %0) #9, !dbg !4428
  %tobool = icmp ne i32 %call, 0, !dbg !4428
  br i1 %tobool, label %if.end, label %if.then, !dbg !4429

if.then:                                          ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4430
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4431
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !4432
  %3 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4432
  %4 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4433
  call void @__list_splice(%struct.list_head* %1, %struct.list_head* %3, %struct.list_head* %4) #9, !dbg !4434
  br label %if.end, !dbg !4434

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4435
}

; Function Attrs: noredzone
declare dso_local void @__wake_up(%struct.wait_queue_head*, i32, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @queue_cleanup(%struct.list_head* %list) #0 !dbg !4436 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %rb = alloca %struct.read_buffer*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.read_buffer*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4437, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.declare(metadata %struct.read_buffer** %rb, metadata !4439, metadata !DIExpression()), !dbg !4440
  br label %while.cond, !dbg !4441

while.cond:                                       ; preds = %do.end, %entry
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4442
  %call = call i32 @list_empty(%struct.list_head* %0) #9, !dbg !4443
  %tobool = icmp ne i32 %call, 0, !dbg !4444
  %lnot = xor i1 %tobool, true, !dbg !4444
  br i1 %lnot, label %while.body, label %while.end, !dbg !4441

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4445, metadata !DIExpression()), !dbg !4448
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4448
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4448
  %2 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4448
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !4448
  store i8* %3, i8** %__mptr, align 8, !dbg !4448
  br label %do.body, !dbg !4448

do.body:                                          ; preds = %while.body
  br label %do.end, !dbg !4449

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4448
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !4448
  %5 = bitcast i8* %add.ptr to %struct.read_buffer*, !dbg !4448
  store %struct.read_buffer* %5, %struct.read_buffer** %tmp, align 8, !dbg !4449
  %6 = load %struct.read_buffer*, %struct.read_buffer** %tmp, align 8, !dbg !4448
  store %struct.read_buffer* %6, %struct.read_buffer** %rb, align 8, !dbg !4451
  %7 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4452
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %7, i32 0, i32 0, !dbg !4453
  %8 = load %struct.list_head*, %struct.list_head** %next1, align 8, !dbg !4453
  call void @list_del(%struct.list_head* %8) #9, !dbg !4454
  %9 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !4455
  %10 = bitcast %struct.read_buffer* %9 to i8*, !dbg !4455
  call void @kfree(i8* %10) #9, !dbg !4456
  br label %while.cond, !dbg !4441, !llvm.loop !4457

while.end:                                        ; preds = %while.cond
  ret void, !dbg !4459
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* %release) #0 !dbg !4460 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca %struct.kref*, align 8
  %release.addr = alloca void (%struct.kref*)*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4467, metadata !DIExpression()), !dbg !4468
  store void (%struct.kref*)* %release, void (%struct.kref*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.kref*)** %release.addr, metadata !4469, metadata !DIExpression()), !dbg !4470
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4471
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !4473
  %call = call zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %refcount) #9, !dbg !4474
  br i1 %call, label %if.then, label %if.end, !dbg !4475

if.then:                                          ; preds = %entry
  %1 = load void (%struct.kref*)*, void (%struct.kref*)** %release.addr, align 8, !dbg !4476
  %2 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4478
  call void %1(%struct.kref* %2) #9, !dbg !4476
  store i32 1, i32* %retval, align 4, !dbg !4479
  br label %return, !dbg !4479

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4480
  br label %return, !dbg !4480

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !4481
  ret i32 %3, !dbg !4481
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenbus_file_free(%struct.kref* %kref) #0 !dbg !4482 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  %u = alloca %struct.xenbus_file_priv*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.xenbus_file_priv*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !4483, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.declare(metadata %struct.xenbus_file_priv** %u, metadata !4485, metadata !DIExpression()), !dbg !4486
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4487, metadata !DIExpression()), !dbg !4489
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !4489
  %1 = bitcast %struct.kref* %0 to i8*, !dbg !4489
  store i8* %1, i8** %__mptr, align 8, !dbg !4489
  br label %do.body, !dbg !4489

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4490

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4489
  %add.ptr = getelementptr i8, i8* %2, i64 -4216, !dbg !4489
  %3 = bitcast i8* %add.ptr to %struct.xenbus_file_priv*, !dbg !4489
  store %struct.xenbus_file_priv* %3, %struct.xenbus_file_priv** %tmp, align 8, !dbg !4490
  %4 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %tmp, align 8, !dbg !4489
  store %struct.xenbus_file_priv* %4, %struct.xenbus_file_priv** %u, align 8, !dbg !4492
  %5 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4493
  %wq = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %5, i32 0, i32 9, !dbg !4494
  %call = call zeroext i1 @schedule_work(%struct.work_struct* %wq) #9, !dbg !4495
  ret void, !dbg !4496
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i64 @no_llseek(%struct.file*, i64, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @xenbus_file_read(%struct.file* %filp, i8* %ubuf, i64 %len, i64* %ppos) #0 !dbg !4497 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4498, metadata !DIExpression()), !dbg !4503
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4512, metadata !DIExpression()), !dbg !4513
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4514, metadata !DIExpression()), !dbg !4515
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4516, metadata !DIExpression()), !dbg !4517
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4518, metadata !DIExpression()), !dbg !4521
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4522, metadata !DIExpression()), !dbg !4523
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4524, metadata !DIExpression()), !dbg !4525
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4526, metadata !DIExpression()), !dbg !4527
  %retval = alloca i64, align 8
  %filp.addr = alloca %struct.file*, align 8
  %ubuf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %u = alloca %struct.xenbus_file_priv*, align 8
  %rb = alloca %struct.read_buffer*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret9 = alloca i64, align 8
  %__int = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp21 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp30 = alloca %struct.read_buffer*, align 8
  %sz = alloca i32, align 4
  %__UNIQUE_ID___x242 = alloca i32, align 4
  %__UNIQUE_ID___y243 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %__mptr68 = alloca i8*, align 8
  %tmp73 = alloca %struct.read_buffer*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !4528, metadata !DIExpression()), !dbg !4529
  store i8* %ubuf, i8** %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ubuf.addr, metadata !4530, metadata !DIExpression()), !dbg !4531
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4532, metadata !DIExpression()), !dbg !4533
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !4534, metadata !DIExpression()), !dbg !4535
  call void @llvm.dbg.declare(metadata %struct.xenbus_file_priv** %u, metadata !4536, metadata !DIExpression()), !dbg !4537
  %0 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !4538
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !4539
  %1 = load i8*, i8** %private_data, align 8, !dbg !4539
  %2 = bitcast i8* %1 to %struct.xenbus_file_priv*, !dbg !4538
  store %struct.xenbus_file_priv* %2, %struct.xenbus_file_priv** %u, align 8, !dbg !4537
  call void @llvm.dbg.declare(metadata %struct.read_buffer** %rb, metadata !4540, metadata !DIExpression()), !dbg !4541
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4542, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4544, metadata !DIExpression()), !dbg !4545
  %3 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4546
  %reply_mutex = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %3, i32 0, i32 5, !dbg !4547
  call void @mutex_lock(%struct.mutex* %reply_mutex) #9, !dbg !4548
  br label %again, !dbg !4548

again:                                            ; preds = %if.then79, %entry
  call void @llvm.dbg.label(metadata !4549), !dbg !4550
  br label %while.cond, !dbg !4551

while.cond:                                       ; preds = %if.end25, %again
  %4 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4552
  %read_buffers = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %4, i32 0, i32 6, !dbg !4553
  %call = call i32 @list_empty(%struct.list_head* %read_buffers) #9, !dbg !4554
  %tobool = icmp ne i32 %call, 0, !dbg !4551
  br i1 %tobool, label %while.body, label %while.end, !dbg !4551

while.body:                                       ; preds = %while.cond
  %5 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4555
  %reply_mutex1 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %5, i32 0, i32 5, !dbg !4557
  call void @mutex_unlock(%struct.mutex* %reply_mutex1) #9, !dbg !4558
  %6 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !4559
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 7, !dbg !4561
  %7 = load i32, i32* %f_flags, align 8, !dbg !4561
  %and = and i32 %7, 2048, !dbg !4562
  %tobool2 = icmp ne i32 %and, 0, !dbg !4562
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4563

if.then:                                          ; preds = %while.body
  store i64 -11, i64* %retval, align 8, !dbg !4564
  br label %return, !dbg !4564

if.end:                                           ; preds = %while.body
  call void @llvm.dbg.declare(metadata i32* %__ret, metadata !4565, metadata !DIExpression()), !dbg !4567
  store i32 0, i32* %__ret, align 4, !dbg !4567
  br label %do.body, !dbg !4567

do.body:                                          ; preds = %if.end
  br label %do.body3, !dbg !4568

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !4570

do.end:                                           ; preds = %do.body3
  br label %do.end4, !dbg !4568

do.end4:                                          ; preds = %do.end
  %8 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4572
  %read_buffers5 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %8, i32 0, i32 6, !dbg !4572
  %call6 = call i32 @list_empty(%struct.list_head* %read_buffers5) #9, !dbg !4572
  %tobool7 = icmp ne i32 %call6, 0, !dbg !4572
  br i1 %tobool7, label %if.then8, label %if.end20, !dbg !4567

if.then8:                                         ; preds = %do.end4
  call void @llvm.dbg.declare(metadata %struct.wait_queue_entry* %__wq_entry, metadata !4574, metadata !DIExpression()), !dbg !4576
  call void @llvm.dbg.declare(metadata i64* %__ret9, metadata !4577, metadata !DIExpression()), !dbg !4576
  store i64 0, i64* %__ret9, align 8, !dbg !4576
  call void @init_wait_entry(%struct.wait_queue_entry* %__wq_entry, i32 0) #9, !dbg !4576
  br label %for.cond, !dbg !4576

for.cond:                                         ; preds = %if.end18, %if.then8
  call void @llvm.dbg.declare(metadata i64* %__int, metadata !4578, metadata !DIExpression()), !dbg !4582
  %9 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4582
  %read_waitq = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %9, i32 0, i32 7, !dbg !4582
  %call10 = call i64 @prepare_to_wait_event(%struct.wait_queue_head* %read_waitq, %struct.wait_queue_entry* %__wq_entry, i32 1) #9, !dbg !4582
  store i64 %call10, i64* %__int, align 8, !dbg !4582
  %10 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4583
  %read_buffers11 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %10, i32 0, i32 6, !dbg !4583
  %call12 = call i32 @list_empty(%struct.list_head* %read_buffers11) #9, !dbg !4583
  %tobool13 = icmp ne i32 %call12, 0, !dbg !4583
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !4582

if.then14:                                        ; preds = %for.cond
  br label %for.end, !dbg !4583

if.end15:                                         ; preds = %for.cond
  %11 = load i64, i64* %__int, align 8, !dbg !4585
  %tobool16 = icmp ne i64 %11, 0, !dbg !4585
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !4582

if.then17:                                        ; preds = %if.end15
  %12 = load i64, i64* %__int, align 8, !dbg !4587
  store i64 %12, i64* %__ret9, align 8, !dbg !4587
  br label %__out, !dbg !4587

if.end18:                                         ; preds = %if.end15
  call void @schedule() #9, !dbg !4582
  br label %for.cond, !dbg !4589, !llvm.loop !4590

for.end:                                          ; preds = %if.then14
  %13 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4576
  %read_waitq19 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %13, i32 0, i32 7, !dbg !4576
  call void @finish_wait(%struct.wait_queue_head* %read_waitq19, %struct.wait_queue_entry* %__wq_entry) #9, !dbg !4576
  br label %__out, !dbg !4576

__out:                                            ; preds = %for.end, %if.then17
  call void @llvm.dbg.label(metadata !4592), !dbg !4576
  %14 = load i64, i64* %__ret9, align 8, !dbg !4576
  store i64 %14, i64* %tmp, align 8, !dbg !4576
  %15 = load i64, i64* %tmp, align 8, !dbg !4576
  %conv = trunc i64 %15 to i32, !dbg !4572
  store i32 %conv, i32* %__ret, align 4, !dbg !4572
  br label %if.end20, !dbg !4572

if.end20:                                         ; preds = %__out, %do.end4
  %16 = load i32, i32* %__ret, align 4, !dbg !4567
  store i32 %16, i32* %tmp21, align 4, !dbg !4572
  %17 = load i32, i32* %tmp21, align 4, !dbg !4567
  store i32 %17, i32* %ret, align 4, !dbg !4593
  %18 = load i32, i32* %ret, align 4, !dbg !4594
  %tobool22 = icmp ne i32 %18, 0, !dbg !4594
  br i1 %tobool22, label %if.then23, label %if.end25, !dbg !4596

if.then23:                                        ; preds = %if.end20
  %19 = load i32, i32* %ret, align 4, !dbg !4597
  %conv24 = sext i32 %19 to i64, !dbg !4597
  store i64 %conv24, i64* %retval, align 8, !dbg !4598
  br label %return, !dbg !4598

if.end25:                                         ; preds = %if.end20
  %20 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4599
  %reply_mutex26 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %20, i32 0, i32 5, !dbg !4600
  call void @mutex_lock(%struct.mutex* %reply_mutex26) #9, !dbg !4601
  br label %while.cond, !dbg !4551, !llvm.loop !4602

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4604, metadata !DIExpression()), !dbg !4606
  %21 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4606
  %read_buffers27 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %21, i32 0, i32 6, !dbg !4606
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %read_buffers27, i32 0, i32 0, !dbg !4606
  %22 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4606
  %23 = bitcast %struct.list_head* %22 to i8*, !dbg !4606
  store i8* %23, i8** %__mptr, align 8, !dbg !4606
  br label %do.body28, !dbg !4606

do.body28:                                        ; preds = %while.end
  br label %do.end29, !dbg !4607

do.end29:                                         ; preds = %do.body28
  %24 = load i8*, i8** %__mptr, align 8, !dbg !4606
  %add.ptr = getelementptr i8, i8* %24, i64 0, !dbg !4606
  %25 = bitcast i8* %add.ptr to %struct.read_buffer*, !dbg !4606
  store %struct.read_buffer* %25, %struct.read_buffer** %tmp30, align 8, !dbg !4607
  %26 = load %struct.read_buffer*, %struct.read_buffer** %tmp30, align 8, !dbg !4606
  store %struct.read_buffer* %26, %struct.read_buffer** %rb, align 8, !dbg !4609
  store i32 0, i32* %i, align 4, !dbg !4610
  br label %while.cond31, !dbg !4611

while.cond31:                                     ; preds = %if.end75, %do.end29
  %27 = load i32, i32* %i, align 4, !dbg !4612
  %conv32 = zext i32 %27 to i64, !dbg !4612
  %28 = load i64, i64* %len.addr, align 8, !dbg !4613
  %cmp = icmp ult i64 %conv32, %28, !dbg !4614
  br i1 %cmp, label %while.body34, label %while.end76, !dbg !4611

while.body34:                                     ; preds = %while.cond31
  call void @llvm.dbg.declare(metadata i32* %sz, metadata !4615, metadata !DIExpression()), !dbg !4616
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x242, metadata !4617, metadata !DIExpression()), !dbg !4619
  %29 = load i64, i64* %len.addr, align 8, !dbg !4619
  %conv35 = trunc i64 %29 to i32, !dbg !4619
  %30 = load i32, i32* %i, align 4, !dbg !4619
  %sub = sub i32 %conv35, %30, !dbg !4619
  store i32 %sub, i32* %__UNIQUE_ID___x242, align 4, !dbg !4619
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y243, metadata !4620, metadata !DIExpression()), !dbg !4619
  %31 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !4619
  %len36 = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %31, i32 0, i32 2, !dbg !4619
  %32 = load i32, i32* %len36, align 4, !dbg !4619
  %33 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !4619
  %cons = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %33, i32 0, i32 1, !dbg !4619
  %34 = load i32, i32* %cons, align 8, !dbg !4619
  %sub37 = sub i32 %32, %34, !dbg !4619
  store i32 %sub37, i32* %__UNIQUE_ID___y243, align 4, !dbg !4619
  %35 = load i32, i32* %__UNIQUE_ID___x242, align 4, !dbg !4619
  %36 = load i32, i32* %__UNIQUE_ID___y243, align 4, !dbg !4619
  %cmp39 = icmp ult i32 %35, %36, !dbg !4619
  br i1 %cmp39, label %cond.true, label %cond.false, !dbg !4619

cond.true:                                        ; preds = %while.body34
  %37 = load i32, i32* %__UNIQUE_ID___x242, align 4, !dbg !4619
  br label %cond.end, !dbg !4619

cond.false:                                       ; preds = %while.body34
  %38 = load i32, i32* %__UNIQUE_ID___y243, align 4, !dbg !4619
  br label %cond.end, !dbg !4619

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %37, %cond.true ], [ %38, %cond.false ], !dbg !4619
  store i32 %cond, i32* %tmp38, align 4, !dbg !4619
  %39 = load i32, i32* %tmp38, align 4, !dbg !4619
  store i32 %39, i32* %sz, align 4, !dbg !4616
  %40 = load i8*, i8** %ubuf.addr, align 8, !dbg !4621
  %41 = load i32, i32* %i, align 4, !dbg !4622
  %idx.ext = zext i32 %41 to i64, !dbg !4623
  %add.ptr41 = getelementptr i8, i8* %40, i64 %idx.ext, !dbg !4623
  %42 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !4624
  %msg = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %42, i32 0, i32 3, !dbg !4625
  %43 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !4626
  %cons42 = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %43, i32 0, i32 1, !dbg !4627
  %44 = load i32, i32* %cons42, align 8, !dbg !4627
  %idxprom = zext i32 %44 to i64, !dbg !4624
  %arrayidx = getelementptr [0 x i8], [0 x i8]* %msg, i64 0, i64 %idxprom, !dbg !4624
  %45 = load i32, i32* %sz, align 4, !dbg !4628
  %conv43 = zext i32 %45 to i64, !dbg !4628
  store i8* %add.ptr41, i8** %to.addr.i, align 8
  store i8* %arrayidx, i8** %from.addr.i, align 8
  store i64 %conv43, i64* %n.addr.i, align 8
  %46 = load i8*, i8** %from.addr.i, align 8, !dbg !4629
  %47 = load i64, i64* %n.addr.i, align 8, !dbg !4629
  store i8* %46, i8** %addr.addr.i.i, align 8
  store i64 %47, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !4517
  %48 = load i32, i32* %sz.i.i, align 4, !dbg !4630
  %cmp.i.i = icmp sge i32 %48, 0, !dbg !4630
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !4630

land.rhs.i.i:                                     ; preds = %cond.end
  %49 = load i32, i32* %sz.i.i, align 4, !dbg !4630
  %conv.i.i = sext i32 %49 to i64, !dbg !4630
  %50 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4630
  %cmp1.i.i = icmp ult i64 %conv.i.i, %50, !dbg !4630
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %cond.end
  %51 = phi i1 [ false, %cond.end ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !4632
  %lnot.i.i = xor i1 %51, true, !dbg !4630
  %lnot.ext.i.i = zext i1 %51 to i32, !dbg !4630
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4630
  br i1 %51, label %if.then.i.i, label %if.end10.i.i, !dbg !4633

if.then.i.i:                                      ; preds = %land.end.i.i
  %52 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4634
  %53 = call i1 @llvm.is.constant.i64(i64 %52) #10, !dbg !4637
  br i1 %53, label %if.else.i.i, label %if.then5.i.i, !dbg !4638

if.then5.i.i:                                     ; preds = %if.then.i.i
  %54 = load i32, i32* %sz.i.i, align 4, !dbg !4639
  %55 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4640
  call void @copy_overflow(i32 %54, i64 %55) #12, !dbg !4641
  br label %if.end9.i.i, !dbg !4641

if.else.i.i:                                      ; preds = %if.then.i.i
  %56 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4642
  %tobool6.i.i = trunc i8 %56 to i1, !dbg !4642
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !4644

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #12, !dbg !4645
  br label %if.end.i.i, !dbg !4645

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #12, !dbg !4646
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4647
  br label %check_copy_size.exit.i, !dbg !4647

if.end10.i.i:                                     ; preds = %land.end.i.i
  %57 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4521
  %cmp11.i.i = icmp ugt i64 %57, 2147483647, !dbg !4521
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !4521
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !4521
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !4521
  %58 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4648
  %tobool17.i.i = icmp ne i32 %58, 0, !dbg !4648
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !4648
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !4648
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !4648
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !4521

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !4650, !srcloc !4653
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 15) #10, !dbg !4654, !srcloc !4656
  br label %if.end31.i.i, !dbg !4657

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %59 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4521
  %tobool32.i.i = icmp ne i32 %59, 0, !dbg !4521
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !4521
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !4521
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !4521
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !4648
  %60 = load i64, i64* %tmp.i.i, align 8, !dbg !4521
  %tobool38.i.i = icmp ne i64 %60, 0, !dbg !4658
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !4659

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4660
  br label %check_copy_size.exit.i, !dbg !4660

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %61 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !4661
  %62 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4662
  %63 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4663
  %tobool41.i.i = trunc i8 %63 to i1, !dbg !4663
  call void @check_object_size(i8* %61, i64 %62, i1 zeroext %tobool41.i.i) #12, !dbg !4664
  store i1 true, i1* %retval.i.i, align 1, !dbg !4665
  br label %check_copy_size.exit.i, !dbg !4665

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %64 = load i1, i1* %retval.i.i, align 1, !dbg !4666
  %lnot.i = xor i1 %64, true, !dbg !4629
  %lnot.ext.i = zext i1 %64 to i32, !dbg !4629
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !4629
  br i1 %64, label %if.then.i, label %copy_to_user.exit, !dbg !4667

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %65 = load i8*, i8** %to.addr.i, align 8, !dbg !4668
  %66 = load i8*, i8** %from.addr.i, align 8, !dbg !4669
  %67 = load i64, i64* %n.addr.i, align 8, !dbg !4670
  %call2.i = call i64 @_copy_to_user(i8* %65, i8* %66, i64 %67) #12, !dbg !4671
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !4672
  br label %copy_to_user.exit, !dbg !4673

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %68 = load i64, i64* %n.addr.i, align 8, !dbg !4674
  %conv45 = trunc i64 %68 to i32, !dbg !4675
  store i32 %conv45, i32* %ret, align 4, !dbg !4676
  %69 = load i32, i32* %sz, align 4, !dbg !4677
  %70 = load i32, i32* %ret, align 4, !dbg !4678
  %sub46 = sub i32 %69, %70, !dbg !4679
  %71 = load i32, i32* %i, align 4, !dbg !4680
  %add = add i32 %71, %sub46, !dbg !4680
  store i32 %add, i32* %i, align 4, !dbg !4680
  %72 = load i32, i32* %sz, align 4, !dbg !4681
  %73 = load i32, i32* %ret, align 4, !dbg !4682
  %sub47 = sub i32 %72, %73, !dbg !4683
  %74 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !4684
  %cons48 = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %74, i32 0, i32 1, !dbg !4685
  %75 = load i32, i32* %cons48, align 8, !dbg !4686
  %add49 = add i32 %75, %sub47, !dbg !4686
  store i32 %add49, i32* %cons48, align 8, !dbg !4686
  %76 = load i32, i32* %ret, align 4, !dbg !4687
  %cmp50 = icmp ne i32 %76, 0, !dbg !4689
  br i1 %cmp50, label %if.then52, label %if.end57, !dbg !4690

if.then52:                                        ; preds = %copy_to_user.exit
  %77 = load i32, i32* %i, align 4, !dbg !4691
  %cmp53 = icmp eq i32 %77, 0, !dbg !4694
  br i1 %cmp53, label %if.then55, label %if.end56, !dbg !4695

if.then55:                                        ; preds = %if.then52
  store i32 -14, i32* %i, align 4, !dbg !4696
  br label %if.end56, !dbg !4697

if.end56:                                         ; preds = %if.then55, %if.then52
  br label %out, !dbg !4698

if.end57:                                         ; preds = %copy_to_user.exit
  %78 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !4699
  %cons58 = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %78, i32 0, i32 1, !dbg !4701
  %79 = load i32, i32* %cons58, align 8, !dbg !4701
  %80 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !4702
  %len59 = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %80, i32 0, i32 2, !dbg !4703
  %81 = load i32, i32* %len59, align 4, !dbg !4703
  %cmp60 = icmp eq i32 %79, %81, !dbg !4704
  br i1 %cmp60, label %if.then62, label %if.end75, !dbg !4705

if.then62:                                        ; preds = %if.end57
  %82 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !4706
  %list = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %82, i32 0, i32 0, !dbg !4708
  call void @list_del(%struct.list_head* %list) #9, !dbg !4709
  %83 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !4710
  %84 = bitcast %struct.read_buffer* %83 to i8*, !dbg !4710
  call void @kfree(i8* %84) #9, !dbg !4711
  %85 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4712
  %read_buffers63 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %85, i32 0, i32 6, !dbg !4714
  %call64 = call i32 @list_empty(%struct.list_head* %read_buffers63) #9, !dbg !4715
  %tobool65 = icmp ne i32 %call64, 0, !dbg !4715
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !4716

if.then66:                                        ; preds = %if.then62
  br label %while.end76, !dbg !4717

if.end67:                                         ; preds = %if.then62
  call void @llvm.dbg.declare(metadata i8** %__mptr68, metadata !4718, metadata !DIExpression()), !dbg !4720
  %86 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4720
  %read_buffers69 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %86, i32 0, i32 6, !dbg !4720
  %next70 = getelementptr inbounds %struct.list_head, %struct.list_head* %read_buffers69, i32 0, i32 0, !dbg !4720
  %87 = load %struct.list_head*, %struct.list_head** %next70, align 8, !dbg !4720
  %88 = bitcast %struct.list_head* %87 to i8*, !dbg !4720
  store i8* %88, i8** %__mptr68, align 8, !dbg !4720
  br label %do.body71, !dbg !4720

do.body71:                                        ; preds = %if.end67
  br label %do.end72, !dbg !4721

do.end72:                                         ; preds = %do.body71
  %89 = load i8*, i8** %__mptr68, align 8, !dbg !4720
  %add.ptr74 = getelementptr i8, i8* %89, i64 0, !dbg !4720
  %90 = bitcast i8* %add.ptr74 to %struct.read_buffer*, !dbg !4720
  store %struct.read_buffer* %90, %struct.read_buffer** %tmp73, align 8, !dbg !4721
  %91 = load %struct.read_buffer*, %struct.read_buffer** %tmp73, align 8, !dbg !4720
  store %struct.read_buffer* %91, %struct.read_buffer** %rb, align 8, !dbg !4723
  br label %if.end75, !dbg !4724

if.end75:                                         ; preds = %do.end72, %if.end57
  br label %while.cond31, !dbg !4611, !llvm.loop !4725

while.end76:                                      ; preds = %if.then66, %while.cond31
  %92 = load i32, i32* %i, align 4, !dbg !4727
  %cmp77 = icmp eq i32 %92, 0, !dbg !4729
  br i1 %cmp77, label %if.then79, label %if.end80, !dbg !4730

if.then79:                                        ; preds = %while.end76
  br label %again, !dbg !4731

if.end80:                                         ; preds = %while.end76
  br label %out, !dbg !4732

out:                                              ; preds = %if.end80, %if.end56
  call void @llvm.dbg.label(metadata !4733), !dbg !4734
  %93 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4735
  %reply_mutex81 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %93, i32 0, i32 5, !dbg !4736
  call void @mutex_unlock(%struct.mutex* %reply_mutex81) #9, !dbg !4737
  %94 = load i32, i32* %i, align 4, !dbg !4738
  %conv82 = zext i32 %94 to i64, !dbg !4738
  store i64 %conv82, i64* %retval, align 8, !dbg !4739
  br label %return, !dbg !4739

return:                                           ; preds = %out, %if.then23, %if.then
  %95 = load i64, i64* %retval, align 8, !dbg !4740
  ret i64 %95, !dbg !4740
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @xenbus_file_write(%struct.file* %filp, i8* %ubuf, i64 %len, i64* %ppos) #0 !dbg !4741 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4498, metadata !DIExpression()), !dbg !4742
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4512, metadata !DIExpression()), !dbg !4747
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4514, metadata !DIExpression()), !dbg !4748
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4516, metadata !DIExpression()), !dbg !4749
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4518, metadata !DIExpression()), !dbg !4750
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4751, metadata !DIExpression()), !dbg !4752
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4753, metadata !DIExpression()), !dbg !4754
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4755, metadata !DIExpression()), !dbg !4756
  %filp.addr = alloca %struct.file*, align 8
  %ubuf.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %u = alloca %struct.xenbus_file_priv*, align 8
  %msg_type = alloca i32, align 4
  %rc = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !4757, metadata !DIExpression()), !dbg !4758
  store i8* %ubuf, i8** %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ubuf.addr, metadata !4759, metadata !DIExpression()), !dbg !4760
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !4761, metadata !DIExpression()), !dbg !4762
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !4763, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.declare(metadata %struct.xenbus_file_priv** %u, metadata !4765, metadata !DIExpression()), !dbg !4766
  %0 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !4767
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !4768
  %1 = load i8*, i8** %private_data, align 8, !dbg !4768
  %2 = bitcast i8* %1 to %struct.xenbus_file_priv*, !dbg !4767
  store %struct.xenbus_file_priv* %2, %struct.xenbus_file_priv** %u, align 8, !dbg !4766
  call void @llvm.dbg.declare(metadata i32* %msg_type, metadata !4769, metadata !DIExpression()), !dbg !4770
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !4771, metadata !DIExpression()), !dbg !4772
  %3 = load i64, i64* %len.addr, align 8, !dbg !4773
  %conv = trunc i64 %3 to i32, !dbg !4773
  store i32 %conv, i32* %rc, align 4, !dbg !4772
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4774, metadata !DIExpression()), !dbg !4775
  %4 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4776
  %msgbuffer_mutex = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %4, i32 0, i32 0, !dbg !4777
  call void @mutex_lock(%struct.mutex* %msgbuffer_mutex) #9, !dbg !4778
  %5 = load i64, i64* %len.addr, align 8, !dbg !4779
  %cmp = icmp eq i64 %5, 0, !dbg !4781
  br i1 %cmp, label %if.then, label %if.end, !dbg !4782

if.then:                                          ; preds = %entry
  br label %out, !dbg !4783

if.end:                                           ; preds = %entry
  %6 = load i64, i64* %len.addr, align 8, !dbg !4784
  %7 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4786
  %len2 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %7, i32 0, i32 3, !dbg !4787
  %8 = load i32, i32* %len2, align 8, !dbg !4787
  %conv3 = zext i32 %8 to i64, !dbg !4786
  %sub = sub i64 4096, %conv3, !dbg !4788
  %cmp4 = icmp ugt i64 %6, %sub, !dbg !4789
  br i1 %cmp4, label %if.then6, label %if.end8, !dbg !4790

if.then6:                                         ; preds = %if.end
  %9 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4791
  %len7 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %9, i32 0, i32 3, !dbg !4793
  store i32 0, i32* %len7, align 8, !dbg !4794
  store i32 -22, i32* %rc, align 4, !dbg !4795
  br label %out, !dbg !4796

if.end8:                                          ; preds = %if.end
  %10 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4797
  %u9 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %10, i32 0, i32 4, !dbg !4798
  %buffer = bitcast %union.anon.0* %u9 to [4096 x i8]*, !dbg !4799
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i64 0, i64 0, !dbg !4797
  %11 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4800
  %len10 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %11, i32 0, i32 3, !dbg !4801
  %12 = load i32, i32* %len10, align 8, !dbg !4801
  %idx.ext = zext i32 %12 to i64, !dbg !4802
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 %idx.ext, !dbg !4802
  %13 = load i8*, i8** %ubuf.addr, align 8, !dbg !4803
  %14 = load i64, i64* %len.addr, align 8, !dbg !4804
  store i8* %add.ptr, i8** %to.addr.i, align 8
  store i8* %13, i8** %from.addr.i, align 8
  store i64 %14, i64* %n.addr.i, align 8
  %15 = load i8*, i8** %to.addr.i, align 8, !dbg !4805
  %16 = load i64, i64* %n.addr.i, align 8, !dbg !4805
  store i8* %15, i8** %addr.addr.i.i, align 8
  store i64 %16, i64* %bytes.addr.i.i, align 8
  store i8 0, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !4749
  %17 = load i32, i32* %sz.i.i, align 4, !dbg !4806
  %cmp.i.i = icmp sge i32 %17, 0, !dbg !4806
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !4806

land.rhs.i.i:                                     ; preds = %if.end8
  %18 = load i32, i32* %sz.i.i, align 4, !dbg !4806
  %conv.i.i = sext i32 %18 to i64, !dbg !4806
  %19 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4806
  %cmp1.i.i = icmp ult i64 %conv.i.i, %19, !dbg !4806
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end8
  %20 = phi i1 [ false, %if.end8 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !4807
  %lnot.i.i = xor i1 %20, true, !dbg !4806
  %lnot.ext.i.i = zext i1 %20 to i32, !dbg !4806
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4806
  br i1 %20, label %if.then.i.i, label %if.end10.i.i, !dbg !4808

if.then.i.i:                                      ; preds = %land.end.i.i
  %21 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4809
  %22 = call i1 @llvm.is.constant.i64(i64 %21) #10, !dbg !4810
  br i1 %22, label %if.else.i.i, label %if.then5.i.i, !dbg !4811

if.then5.i.i:                                     ; preds = %if.then.i.i
  %23 = load i32, i32* %sz.i.i, align 4, !dbg !4812
  %24 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4813
  call void @copy_overflow(i32 %23, i64 %24) #12, !dbg !4814
  br label %if.end9.i.i, !dbg !4814

if.else.i.i:                                      ; preds = %if.then.i.i
  %25 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4815
  %tobool6.i.i = trunc i8 %25 to i1, !dbg !4815
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !4816

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #12, !dbg !4817
  br label %if.end.i.i, !dbg !4817

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #12, !dbg !4818
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4819
  br label %check_copy_size.exit.i, !dbg !4819

if.end10.i.i:                                     ; preds = %land.end.i.i
  %26 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4750
  %cmp11.i.i = icmp ugt i64 %26, 2147483647, !dbg !4750
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !4750
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !4750
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !4750
  %27 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4820
  %tobool17.i.i = icmp ne i32 %27, 0, !dbg !4820
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !4820
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !4820
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !4820
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !4750

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 150, i32 2307, i64 12) #10, !dbg !4821, !srcloc !4653
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 15) #10, !dbg !4822, !srcloc !4656
  br label %if.end31.i.i, !dbg !4823

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %28 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4750
  %tobool32.i.i = icmp ne i32 %28, 0, !dbg !4750
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !4750
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !4750
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !4750
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !4820
  %29 = load i64, i64* %tmp.i.i, align 8, !dbg !4750
  %tobool38.i.i = icmp ne i64 %29, 0, !dbg !4824
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !4825

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4826
  br label %check_copy_size.exit.i, !dbg !4826

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %30 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !4827
  %31 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4828
  %32 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4829
  %tobool41.i.i = trunc i8 %32 to i1, !dbg !4829
  call void @check_object_size(i8* %30, i64 %31, i1 zeroext %tobool41.i.i) #12, !dbg !4830
  store i1 true, i1* %retval.i.i, align 1, !dbg !4831
  br label %check_copy_size.exit.i, !dbg !4831

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %33 = load i1, i1* %retval.i.i, align 1, !dbg !4832
  %lnot.i = xor i1 %33, true, !dbg !4805
  %lnot.ext.i = zext i1 %33 to i32, !dbg !4805
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !4805
  br i1 %33, label %if.then.i, label %copy_from_user.exit, !dbg !4833

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %34 = load i8*, i8** %to.addr.i, align 8, !dbg !4834
  %35 = load i8*, i8** %from.addr.i, align 8, !dbg !4835
  %36 = load i64, i64* %n.addr.i, align 8, !dbg !4836
  %call2.i = call i64 @_copy_from_user(i8* %34, i8* %35, i64 %36) #12, !dbg !4837
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !4838
  br label %copy_from_user.exit, !dbg !4839

copy_from_user.exit:                              ; preds = %check_copy_size.exit.i, %if.then.i
  %37 = load i64, i64* %n.addr.i, align 8, !dbg !4840
  %conv11 = trunc i64 %37 to i32, !dbg !4841
  store i32 %conv11, i32* %ret, align 4, !dbg !4842
  %38 = load i32, i32* %ret, align 4, !dbg !4843
  %cmp12 = icmp ne i32 %38, 0, !dbg !4845
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !4846

if.then14:                                        ; preds = %copy_from_user.exit
  store i32 -14, i32* %rc, align 4, !dbg !4847
  br label %out, !dbg !4849

if.end15:                                         ; preds = %copy_from_user.exit
  %39 = load i32, i32* %ret, align 4, !dbg !4850
  %conv16 = sext i32 %39 to i64, !dbg !4850
  %40 = load i64, i64* %len.addr, align 8, !dbg !4851
  %sub17 = sub i64 %40, %conv16, !dbg !4851
  store i64 %sub17, i64* %len.addr, align 8, !dbg !4851
  %41 = load i64, i64* %len.addr, align 8, !dbg !4852
  %conv18 = trunc i64 %41 to i32, !dbg !4852
  store i32 %conv18, i32* %rc, align 4, !dbg !4853
  %42 = load i64, i64* %len.addr, align 8, !dbg !4854
  %43 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4855
  %len19 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %43, i32 0, i32 3, !dbg !4856
  %44 = load i32, i32* %len19, align 8, !dbg !4857
  %conv20 = zext i32 %44 to i64, !dbg !4857
  %add = add i64 %conv20, %42, !dbg !4857
  %conv21 = trunc i64 %add to i32, !dbg !4857
  store i32 %conv21, i32* %len19, align 8, !dbg !4857
  %45 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4858
  %len22 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %45, i32 0, i32 3, !dbg !4860
  %46 = load i32, i32* %len22, align 8, !dbg !4860
  %conv23 = zext i32 %46 to i64, !dbg !4858
  %cmp24 = icmp ult i64 %conv23, 16, !dbg !4861
  br i1 %cmp24, label %if.then26, label %if.end27, !dbg !4862

if.then26:                                        ; preds = %if.end15
  br label %out, !dbg !4863

if.end27:                                         ; preds = %if.end15
  %47 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4864
  %u28 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %47, i32 0, i32 4, !dbg !4866
  %msg = bitcast %union.anon.0* %u28 to %struct.xsd_sockmsg*, !dbg !4867
  %len29 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg, i32 0, i32 3, !dbg !4868
  %48 = load i32, i32* %len29, align 4, !dbg !4868
  %conv30 = zext i32 %48 to i64, !dbg !4864
  %add31 = add i64 16, %conv30, !dbg !4869
  %cmp32 = icmp ugt i64 %add31, 4096, !dbg !4870
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !4871

if.then34:                                        ; preds = %if.end27
  store i32 -7, i32* %rc, align 4, !dbg !4872
  %49 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4874
  %len35 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %49, i32 0, i32 3, !dbg !4875
  store i32 0, i32* %len35, align 8, !dbg !4876
  br label %out, !dbg !4877

if.end36:                                         ; preds = %if.end27
  %50 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4878
  %len37 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %50, i32 0, i32 3, !dbg !4880
  %51 = load i32, i32* %len37, align 8, !dbg !4880
  %conv38 = zext i32 %51 to i64, !dbg !4878
  %52 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4881
  %u39 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %52, i32 0, i32 4, !dbg !4882
  %msg40 = bitcast %union.anon.0* %u39 to %struct.xsd_sockmsg*, !dbg !4883
  %len41 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg40, i32 0, i32 3, !dbg !4884
  %53 = load i32, i32* %len41, align 4, !dbg !4884
  %conv42 = zext i32 %53 to i64, !dbg !4881
  %add43 = add i64 16, %conv42, !dbg !4885
  %cmp44 = icmp ult i64 %conv38, %add43, !dbg !4886
  br i1 %cmp44, label %if.then46, label %if.end47, !dbg !4887

if.then46:                                        ; preds = %if.end36
  br label %out, !dbg !4888

if.end47:                                         ; preds = %if.end36
  %54 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4889
  %kref = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %54, i32 0, i32 8, !dbg !4890
  call void @kref_get(%struct.kref* %kref) #9, !dbg !4891
  %55 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4892
  %u48 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %55, i32 0, i32 4, !dbg !4893
  %msg49 = bitcast %union.anon.0* %u48 to %struct.xsd_sockmsg*, !dbg !4894
  %type = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg49, i32 0, i32 0, !dbg !4895
  %56 = load i32, i32* %type, align 4, !dbg !4895
  store i32 %56, i32* %msg_type, align 4, !dbg !4896
  %57 = load i32, i32* %msg_type, align 4, !dbg !4897
  switch i32 %57, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb
  ], !dbg !4898

sw.bb:                                            ; preds = %if.end47, %if.end47
  %58 = load i32, i32* %msg_type, align 4, !dbg !4899
  %59 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4901
  %call50 = call i32 @xenbus_write_watch(i32 %58, %struct.xenbus_file_priv* %59) #9, !dbg !4902
  store i32 %call50, i32* %ret, align 4, !dbg !4903
  br label %sw.epilog, !dbg !4904

sw.default:                                       ; preds = %if.end47
  %60 = load i32, i32* %msg_type, align 4, !dbg !4905
  %61 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4906
  %call51 = call i32 @xenbus_write_transaction(i32 %60, %struct.xenbus_file_priv* %61) #9, !dbg !4907
  store i32 %call51, i32* %ret, align 4, !dbg !4908
  br label %sw.epilog, !dbg !4909

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %62 = load i32, i32* %ret, align 4, !dbg !4910
  %cmp52 = icmp ne i32 %62, 0, !dbg !4912
  br i1 %cmp52, label %if.then54, label %if.end57, !dbg !4913

if.then54:                                        ; preds = %sw.epilog
  %63 = load i32, i32* %ret, align 4, !dbg !4914
  store i32 %63, i32* %rc, align 4, !dbg !4916
  %64 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4917
  %kref55 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %64, i32 0, i32 8, !dbg !4918
  %call56 = call i32 @kref_put(%struct.kref* %kref55, void (%struct.kref*)* @xenbus_file_free) #9, !dbg !4919
  br label %if.end57, !dbg !4920

if.end57:                                         ; preds = %if.then54, %sw.epilog
  %65 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4921
  %len58 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %65, i32 0, i32 3, !dbg !4922
  store i32 0, i32* %len58, align 8, !dbg !4923
  br label %out, !dbg !4921

out:                                              ; preds = %if.end57, %if.then46, %if.then34, %if.then26, %if.then14, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !4924), !dbg !4925
  %66 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4926
  %msgbuffer_mutex59 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %66, i32 0, i32 0, !dbg !4927
  call void @mutex_unlock(%struct.mutex* %msgbuffer_mutex59) #9, !dbg !4928
  %67 = load i32, i32* %rc, align 4, !dbg !4929
  %conv60 = sext i32 %67 to i64, !dbg !4929
  ret i64 %conv60, !dbg !4930
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_file_poll(%struct.file* %file, %struct.poll_table_struct* %wait) #0 !dbg !4931 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct.file*, align 8
  %wait.addr = alloca %struct.poll_table_struct*, align 8
  %u = alloca %struct.xenbus_file_priv*, align 8
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4936, metadata !DIExpression()), !dbg !4937
  store %struct.poll_table_struct* %wait, %struct.poll_table_struct** %wait.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.poll_table_struct** %wait.addr, metadata !4938, metadata !DIExpression()), !dbg !4939
  call void @llvm.dbg.declare(metadata %struct.xenbus_file_priv** %u, metadata !4940, metadata !DIExpression()), !dbg !4941
  %0 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4942
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !4943
  %1 = load i8*, i8** %private_data, align 8, !dbg !4943
  %2 = bitcast i8* %1 to %struct.xenbus_file_priv*, !dbg !4942
  store %struct.xenbus_file_priv* %2, %struct.xenbus_file_priv** %u, align 8, !dbg !4941
  %3 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4944
  %4 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4945
  %read_waitq = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %4, i32 0, i32 7, !dbg !4946
  %5 = load %struct.poll_table_struct*, %struct.poll_table_struct** %wait.addr, align 8, !dbg !4947
  call void @poll_wait(%struct.file* %3, %struct.wait_queue_head* %read_waitq, %struct.poll_table_struct* %5) #9, !dbg !4948
  %6 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4949
  %read_buffers = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %6, i32 0, i32 6, !dbg !4951
  %call = call i32 @list_empty(%struct.list_head* %read_buffers) #9, !dbg !4952
  %tobool = icmp ne i32 %call, 0, !dbg !4952
  br i1 %tobool, label %if.end, label %if.then, !dbg !4953

if.then:                                          ; preds = %entry
  store i32 65, i32* %retval, align 4, !dbg !4954
  br label %return, !dbg !4954

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4955
  br label %return, !dbg !4955

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !4956
  ret i32 %7, !dbg !4956
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_file_open(%struct.inode* %inode, %struct.file* %filp) #0 !dbg !339 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %filp.addr = alloca %struct.file*, align 8
  %u = alloca %struct.xenbus_file_priv*, align 8
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4957, metadata !DIExpression()), !dbg !4958
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !4959, metadata !DIExpression()), !dbg !4960
  call void @llvm.dbg.declare(metadata %struct.xenbus_file_priv** %u, metadata !4961, metadata !DIExpression()), !dbg !4962
  %0 = load i32, i32* @xen_store_evtchn, align 4, !dbg !4963
  %cmp = icmp eq i32 %0, 0, !dbg !4965
  br i1 %cmp, label %if.then, label %if.end, !dbg !4966

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval, align 4, !dbg !4967
  br label %return, !dbg !4967

if.end:                                           ; preds = %entry
  %1 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !4968
  %2 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !4969
  %call = call i32 @stream_open(%struct.inode* %1, %struct.file* %2) #9, !dbg !4970
  %call1 = call i8* @kzalloc(i64 4256, i32 3264) #9, !dbg !4971
  %3 = bitcast i8* %call1 to %struct.xenbus_file_priv*, !dbg !4971
  store %struct.xenbus_file_priv* %3, %struct.xenbus_file_priv** %u, align 8, !dbg !4972
  %4 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4973
  %cmp2 = icmp eq %struct.xenbus_file_priv* %4, null, !dbg !4975
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !4976

if.then3:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4977
  br label %return, !dbg !4977

if.end4:                                          ; preds = %if.end
  %5 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4978
  %kref = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %5, i32 0, i32 8, !dbg !4979
  call void @kref_init(%struct.kref* %kref) #9, !dbg !4980
  %6 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4981
  %transactions = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %6, i32 0, i32 1, !dbg !4982
  call void @INIT_LIST_HEAD(%struct.list_head* %transactions) #9, !dbg !4983
  %7 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4984
  %watches = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %7, i32 0, i32 2, !dbg !4985
  call void @INIT_LIST_HEAD(%struct.list_head* %watches) #9, !dbg !4986
  %8 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4987
  %read_buffers = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %8, i32 0, i32 6, !dbg !4988
  call void @INIT_LIST_HEAD(%struct.list_head* %read_buffers) #9, !dbg !4989
  br label %do.body, !dbg !4990

do.body:                                          ; preds = %if.end4
  %9 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4991
  %read_waitq = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %9, i32 0, i32 7, !dbg !4991
  call void @__init_waitqueue_head(%struct.wait_queue_head* %read_waitq, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), %struct.lock_class_key* @xenbus_file_open.__key) #9, !dbg !4991
  br label %do.end, !dbg !4991

do.end:                                           ; preds = %do.body
  br label %do.body5, !dbg !4993

do.body5:                                         ; preds = %do.end
  %10 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4994
  %wq = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %10, i32 0, i32 9, !dbg !4994
  call void @__init_work(%struct.work_struct* %wq, i32 0) #9, !dbg !4994
  %11 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4994
  %wq6 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %11, i32 0, i32 9, !dbg !4994
  %data = getelementptr inbounds %struct.work_struct, %struct.work_struct* %wq6, i32 0, i32 0, !dbg !4994
  %counter = getelementptr inbounds %struct.atomic64_t, %struct.atomic64_t* %.compoundliteral, i32 0, i32 0, !dbg !4994
  store i64 68719476704, i64* %counter, align 8, !dbg !4994
  %12 = bitcast %struct.atomic64_t* %data to i8*, !dbg !4994
  %13 = bitcast %struct.atomic64_t* %.compoundliteral to i8*, !dbg !4994
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false), !dbg !4994
  %14 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4994
  %wq7 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %14, i32 0, i32 9, !dbg !4994
  %entry8 = getelementptr inbounds %struct.work_struct, %struct.work_struct* %wq7, i32 0, i32 1, !dbg !4994
  call void @INIT_LIST_HEAD(%struct.list_head* %entry8) #9, !dbg !4994
  %15 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4994
  %wq9 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %15, i32 0, i32 9, !dbg !4994
  %func = getelementptr inbounds %struct.work_struct, %struct.work_struct* %wq9, i32 0, i32 2, !dbg !4994
  store void (%struct.work_struct*)* @xenbus_worker, void (%struct.work_struct*)** %func, align 8, !dbg !4994
  br label %do.end10, !dbg !4994

do.end10:                                         ; preds = %do.body5
  br label %do.body11, !dbg !4996

do.body11:                                        ; preds = %do.end10
  %16 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !4997
  %reply_mutex = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %16, i32 0, i32 5, !dbg !4997
  call void @__mutex_init(%struct.mutex* %reply_mutex, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), %struct.lock_class_key* @xenbus_file_open.__key.11) #9, !dbg !4997
  br label %do.end12, !dbg !4997

do.end12:                                         ; preds = %do.body11
  br label %do.body13, !dbg !4999

do.body13:                                        ; preds = %do.end12
  %17 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !5000
  %msgbuffer_mutex = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %17, i32 0, i32 0, !dbg !5000
  call void @__mutex_init(%struct.mutex* %msgbuffer_mutex, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), %struct.lock_class_key* @xenbus_file_open.__key.13) #9, !dbg !5000
  br label %do.end14, !dbg !5000

do.end14:                                         ; preds = %do.body13
  %18 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !5002
  %19 = bitcast %struct.xenbus_file_priv* %18 to i8*, !dbg !5002
  %20 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !5003
  %private_data = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 15, !dbg !5004
  store i8* %19, i8** %private_data, align 8, !dbg !5005
  store i32 0, i32* %retval, align 4, !dbg !5006
  br label %return, !dbg !5006

return:                                           ; preds = %do.end14, %if.then3, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !5007
  ret i32 %21, !dbg !5007
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_file_release(%struct.inode* %inode, %struct.file* %filp) #0 !dbg !5008 {
entry:
  %inode.addr = alloca %struct.inode*, align 8
  %filp.addr = alloca %struct.file*, align 8
  %u = alloca %struct.xenbus_file_priv*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !5009, metadata !DIExpression()), !dbg !5010
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !5011, metadata !DIExpression()), !dbg !5012
  call void @llvm.dbg.declare(metadata %struct.xenbus_file_priv** %u, metadata !5013, metadata !DIExpression()), !dbg !5014
  %0 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !5015
  %private_data = getelementptr inbounds %struct.file, %struct.file* %0, i32 0, i32 15, !dbg !5016
  %1 = load i8*, i8** %private_data, align 8, !dbg !5016
  %2 = bitcast i8* %1 to %struct.xenbus_file_priv*, !dbg !5015
  store %struct.xenbus_file_priv* %2, %struct.xenbus_file_priv** %u, align 8, !dbg !5014
  %3 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !5017
  %kref = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %3, i32 0, i32 8, !dbg !5018
  %call = call i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* @xenbus_file_free) #9, !dbg !5019
  ret i32 0, !dbg !5020
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_init() #3 section ".init.text" !dbg !5021 {
entry:
  %retval = alloca i32, align 4
  %err = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5024, metadata !DIExpression()), !dbg !5025
  %0 = load i32, i32* @xen_domain_type, align 4, !dbg !5026
  %cmp = icmp ne i32 %0, 0, !dbg !5026
  br i1 %cmp, label %if.end, label %if.then, !dbg !5028

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !5029
  br label %return, !dbg !5029

if.end:                                           ; preds = %entry
  %call = call i32 @misc_register(%struct.miscdevice* @xenbus_dev) #9, !dbg !5030
  store i32 %call, i32* %err, align 4, !dbg !5031
  %1 = load i32, i32* %err, align 4, !dbg !5032
  %tobool = icmp ne i32 %1, 0, !dbg !5032
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !5034

if.then1:                                         ; preds = %if.end
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.15, i64 0, i64 0)) #13, !dbg !5035
  br label %if.end3, !dbg !5035

if.end3:                                          ; preds = %if.then1, %if.end
  %2 = load i32, i32* %err, align 4, !dbg !5036
  store i32 %2, i32* %retval, align 4, !dbg !5037
  br label %return, !dbg !5037

return:                                           ; preds = %if.end3, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !5038
  ret i32 %3, !dbg !5038
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !5039 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5040, metadata !DIExpression()), !dbg !5041
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5042
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #9, !dbg !5044
  br i1 %call, label %if.end, label %if.then, !dbg !5045

if.then:                                          ; preds = %entry
  br label %return, !dbg !5046

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5047
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5048
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5048
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !5049
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5050
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5050
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #9, !dbg !5051
  br label %return, !dbg !5052

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5052
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !5053 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !5056, metadata !DIExpression()), !dbg !5057
  ret i1 true, !dbg !5058
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5059 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5060, metadata !DIExpression()), !dbg !5061
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5062, metadata !DIExpression()), !dbg !5063
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5064
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5065
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5066
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !5067
  br label %do.body, !dbg !5068

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5069

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5071

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5069

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5073
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5073
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !5073
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !5073
  br label %do.end5, !dbg !5073

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5069

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5075
}

; Function Attrs: noredzone
declare dso_local i32 @kstrtouint(i8*, i32, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !5076 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5077, metadata !DIExpression()), !dbg !5078
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5079, metadata !DIExpression()), !dbg !5080
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5081
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5082
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !5083
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !5083
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5084
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #9, !dbg !5085
  ret void, !dbg !5086
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !5087 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5091, metadata !DIExpression()), !dbg !5096
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5098, metadata !DIExpression()), !dbg !5099
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5100, metadata !DIExpression()), !dbg !5101
  %0 = load i64, i64* %size.addr, align 8, !dbg !5102
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5104
  br i1 %1, label %if.then, label %if.end447, !dbg !5105

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !5106
  %tobool = icmp ne i64 %2, 0, !dbg !5106
  br i1 %tobool, label %if.end, label %if.then1, !dbg !5109

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !5110
  br label %return, !dbg !5110

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !5111
  %cmp = icmp ult i64 %3, 4096, !dbg !5113
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !5114

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !5115
  br label %return, !dbg !5115

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub = sub i64 %4, 1, !dbg !5116
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !5116
  br i1 %5, label %cond.true, label %cond.false442, !dbg !5116

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub4 = sub i64 %6, 1, !dbg !5116
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !5116
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !5116

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub6 = sub i64 %8, 1, !dbg !5116
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !5116
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !5116

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !5116

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub9 = sub i64 %9, 1, !dbg !5116
  %and = and i64 %sub9, -9223372036854775808, !dbg !5116
  %tobool10 = icmp ne i64 %and, 0, !dbg !5116
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !5116

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !5116

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub13 = sub i64 %10, 1, !dbg !5116
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !5116
  %tobool15 = icmp ne i64 %and14, 0, !dbg !5116
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !5116

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !5116

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub18 = sub i64 %11, 1, !dbg !5116
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !5116
  %tobool20 = icmp ne i64 %and19, 0, !dbg !5116
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !5116

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !5116

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub23 = sub i64 %12, 1, !dbg !5116
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !5116
  %tobool25 = icmp ne i64 %and24, 0, !dbg !5116
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !5116

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !5116

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub28 = sub i64 %13, 1, !dbg !5116
  %and29 = and i64 %sub28, 576460752303423488, !dbg !5116
  %tobool30 = icmp ne i64 %and29, 0, !dbg !5116
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !5116

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !5116

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub33 = sub i64 %14, 1, !dbg !5116
  %and34 = and i64 %sub33, 288230376151711744, !dbg !5116
  %tobool35 = icmp ne i64 %and34, 0, !dbg !5116
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !5116

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !5116

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub38 = sub i64 %15, 1, !dbg !5116
  %and39 = and i64 %sub38, 144115188075855872, !dbg !5116
  %tobool40 = icmp ne i64 %and39, 0, !dbg !5116
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !5116

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !5116

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub43 = sub i64 %16, 1, !dbg !5116
  %and44 = and i64 %sub43, 72057594037927936, !dbg !5116
  %tobool45 = icmp ne i64 %and44, 0, !dbg !5116
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !5116

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !5116

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub48 = sub i64 %17, 1, !dbg !5116
  %and49 = and i64 %sub48, 36028797018963968, !dbg !5116
  %tobool50 = icmp ne i64 %and49, 0, !dbg !5116
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !5116

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !5116

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub53 = sub i64 %18, 1, !dbg !5116
  %and54 = and i64 %sub53, 18014398509481984, !dbg !5116
  %tobool55 = icmp ne i64 %and54, 0, !dbg !5116
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !5116

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !5116

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub58 = sub i64 %19, 1, !dbg !5116
  %and59 = and i64 %sub58, 9007199254740992, !dbg !5116
  %tobool60 = icmp ne i64 %and59, 0, !dbg !5116
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !5116

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !5116

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub63 = sub i64 %20, 1, !dbg !5116
  %and64 = and i64 %sub63, 4503599627370496, !dbg !5116
  %tobool65 = icmp ne i64 %and64, 0, !dbg !5116
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !5116

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !5116

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub68 = sub i64 %21, 1, !dbg !5116
  %and69 = and i64 %sub68, 2251799813685248, !dbg !5116
  %tobool70 = icmp ne i64 %and69, 0, !dbg !5116
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !5116

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !5116

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub73 = sub i64 %22, 1, !dbg !5116
  %and74 = and i64 %sub73, 1125899906842624, !dbg !5116
  %tobool75 = icmp ne i64 %and74, 0, !dbg !5116
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !5116

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !5116

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub78 = sub i64 %23, 1, !dbg !5116
  %and79 = and i64 %sub78, 562949953421312, !dbg !5116
  %tobool80 = icmp ne i64 %and79, 0, !dbg !5116
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !5116

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !5116

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub83 = sub i64 %24, 1, !dbg !5116
  %and84 = and i64 %sub83, 281474976710656, !dbg !5116
  %tobool85 = icmp ne i64 %and84, 0, !dbg !5116
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !5116

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !5116

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub88 = sub i64 %25, 1, !dbg !5116
  %and89 = and i64 %sub88, 140737488355328, !dbg !5116
  %tobool90 = icmp ne i64 %and89, 0, !dbg !5116
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !5116

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !5116

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub93 = sub i64 %26, 1, !dbg !5116
  %and94 = and i64 %sub93, 70368744177664, !dbg !5116
  %tobool95 = icmp ne i64 %and94, 0, !dbg !5116
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !5116

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !5116

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub98 = sub i64 %27, 1, !dbg !5116
  %and99 = and i64 %sub98, 35184372088832, !dbg !5116
  %tobool100 = icmp ne i64 %and99, 0, !dbg !5116
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !5116

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !5116

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub103 = sub i64 %28, 1, !dbg !5116
  %and104 = and i64 %sub103, 17592186044416, !dbg !5116
  %tobool105 = icmp ne i64 %and104, 0, !dbg !5116
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !5116

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !5116

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub108 = sub i64 %29, 1, !dbg !5116
  %and109 = and i64 %sub108, 8796093022208, !dbg !5116
  %tobool110 = icmp ne i64 %and109, 0, !dbg !5116
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !5116

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !5116

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub113 = sub i64 %30, 1, !dbg !5116
  %and114 = and i64 %sub113, 4398046511104, !dbg !5116
  %tobool115 = icmp ne i64 %and114, 0, !dbg !5116
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !5116

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !5116

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub118 = sub i64 %31, 1, !dbg !5116
  %and119 = and i64 %sub118, 2199023255552, !dbg !5116
  %tobool120 = icmp ne i64 %and119, 0, !dbg !5116
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !5116

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !5116

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub123 = sub i64 %32, 1, !dbg !5116
  %and124 = and i64 %sub123, 1099511627776, !dbg !5116
  %tobool125 = icmp ne i64 %and124, 0, !dbg !5116
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !5116

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !5116

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub128 = sub i64 %33, 1, !dbg !5116
  %and129 = and i64 %sub128, 549755813888, !dbg !5116
  %tobool130 = icmp ne i64 %and129, 0, !dbg !5116
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !5116

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !5116

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub133 = sub i64 %34, 1, !dbg !5116
  %and134 = and i64 %sub133, 274877906944, !dbg !5116
  %tobool135 = icmp ne i64 %and134, 0, !dbg !5116
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !5116

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !5116

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub138 = sub i64 %35, 1, !dbg !5116
  %and139 = and i64 %sub138, 137438953472, !dbg !5116
  %tobool140 = icmp ne i64 %and139, 0, !dbg !5116
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !5116

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !5116

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub143 = sub i64 %36, 1, !dbg !5116
  %and144 = and i64 %sub143, 68719476736, !dbg !5116
  %tobool145 = icmp ne i64 %and144, 0, !dbg !5116
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !5116

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !5116

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub148 = sub i64 %37, 1, !dbg !5116
  %and149 = and i64 %sub148, 34359738368, !dbg !5116
  %tobool150 = icmp ne i64 %and149, 0, !dbg !5116
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !5116

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !5116

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub153 = sub i64 %38, 1, !dbg !5116
  %and154 = and i64 %sub153, 17179869184, !dbg !5116
  %tobool155 = icmp ne i64 %and154, 0, !dbg !5116
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !5116

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !5116

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub158 = sub i64 %39, 1, !dbg !5116
  %and159 = and i64 %sub158, 8589934592, !dbg !5116
  %tobool160 = icmp ne i64 %and159, 0, !dbg !5116
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !5116

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !5116

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub163 = sub i64 %40, 1, !dbg !5116
  %and164 = and i64 %sub163, 4294967296, !dbg !5116
  %tobool165 = icmp ne i64 %and164, 0, !dbg !5116
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !5116

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !5116

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub168 = sub i64 %41, 1, !dbg !5116
  %and169 = and i64 %sub168, 2147483648, !dbg !5116
  %tobool170 = icmp ne i64 %and169, 0, !dbg !5116
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !5116

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !5116

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub173 = sub i64 %42, 1, !dbg !5116
  %and174 = and i64 %sub173, 1073741824, !dbg !5116
  %tobool175 = icmp ne i64 %and174, 0, !dbg !5116
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !5116

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !5116

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub178 = sub i64 %43, 1, !dbg !5116
  %and179 = and i64 %sub178, 536870912, !dbg !5116
  %tobool180 = icmp ne i64 %and179, 0, !dbg !5116
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !5116

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !5116

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub183 = sub i64 %44, 1, !dbg !5116
  %and184 = and i64 %sub183, 268435456, !dbg !5116
  %tobool185 = icmp ne i64 %and184, 0, !dbg !5116
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !5116

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !5116

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub188 = sub i64 %45, 1, !dbg !5116
  %and189 = and i64 %sub188, 134217728, !dbg !5116
  %tobool190 = icmp ne i64 %and189, 0, !dbg !5116
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !5116

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !5116

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub193 = sub i64 %46, 1, !dbg !5116
  %and194 = and i64 %sub193, 67108864, !dbg !5116
  %tobool195 = icmp ne i64 %and194, 0, !dbg !5116
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !5116

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !5116

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub198 = sub i64 %47, 1, !dbg !5116
  %and199 = and i64 %sub198, 33554432, !dbg !5116
  %tobool200 = icmp ne i64 %and199, 0, !dbg !5116
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !5116

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !5116

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub203 = sub i64 %48, 1, !dbg !5116
  %and204 = and i64 %sub203, 16777216, !dbg !5116
  %tobool205 = icmp ne i64 %and204, 0, !dbg !5116
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !5116

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !5116

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub208 = sub i64 %49, 1, !dbg !5116
  %and209 = and i64 %sub208, 8388608, !dbg !5116
  %tobool210 = icmp ne i64 %and209, 0, !dbg !5116
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !5116

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !5116

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub213 = sub i64 %50, 1, !dbg !5116
  %and214 = and i64 %sub213, 4194304, !dbg !5116
  %tobool215 = icmp ne i64 %and214, 0, !dbg !5116
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !5116

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !5116

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub218 = sub i64 %51, 1, !dbg !5116
  %and219 = and i64 %sub218, 2097152, !dbg !5116
  %tobool220 = icmp ne i64 %and219, 0, !dbg !5116
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !5116

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !5116

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub223 = sub i64 %52, 1, !dbg !5116
  %and224 = and i64 %sub223, 1048576, !dbg !5116
  %tobool225 = icmp ne i64 %and224, 0, !dbg !5116
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !5116

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !5116

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub228 = sub i64 %53, 1, !dbg !5116
  %and229 = and i64 %sub228, 524288, !dbg !5116
  %tobool230 = icmp ne i64 %and229, 0, !dbg !5116
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !5116

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !5116

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub233 = sub i64 %54, 1, !dbg !5116
  %and234 = and i64 %sub233, 262144, !dbg !5116
  %tobool235 = icmp ne i64 %and234, 0, !dbg !5116
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !5116

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !5116

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub238 = sub i64 %55, 1, !dbg !5116
  %and239 = and i64 %sub238, 131072, !dbg !5116
  %tobool240 = icmp ne i64 %and239, 0, !dbg !5116
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !5116

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !5116

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub243 = sub i64 %56, 1, !dbg !5116
  %and244 = and i64 %sub243, 65536, !dbg !5116
  %tobool245 = icmp ne i64 %and244, 0, !dbg !5116
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !5116

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !5116

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub248 = sub i64 %57, 1, !dbg !5116
  %and249 = and i64 %sub248, 32768, !dbg !5116
  %tobool250 = icmp ne i64 %and249, 0, !dbg !5116
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !5116

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !5116

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub253 = sub i64 %58, 1, !dbg !5116
  %and254 = and i64 %sub253, 16384, !dbg !5116
  %tobool255 = icmp ne i64 %and254, 0, !dbg !5116
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !5116

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !5116

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub258 = sub i64 %59, 1, !dbg !5116
  %and259 = and i64 %sub258, 8192, !dbg !5116
  %tobool260 = icmp ne i64 %and259, 0, !dbg !5116
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !5116

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !5116

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub263 = sub i64 %60, 1, !dbg !5116
  %and264 = and i64 %sub263, 4096, !dbg !5116
  %tobool265 = icmp ne i64 %and264, 0, !dbg !5116
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !5116

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !5116

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub268 = sub i64 %61, 1, !dbg !5116
  %and269 = and i64 %sub268, 2048, !dbg !5116
  %tobool270 = icmp ne i64 %and269, 0, !dbg !5116
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !5116

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !5116

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub273 = sub i64 %62, 1, !dbg !5116
  %and274 = and i64 %sub273, 1024, !dbg !5116
  %tobool275 = icmp ne i64 %and274, 0, !dbg !5116
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !5116

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !5116

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub278 = sub i64 %63, 1, !dbg !5116
  %and279 = and i64 %sub278, 512, !dbg !5116
  %tobool280 = icmp ne i64 %and279, 0, !dbg !5116
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !5116

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !5116

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub283 = sub i64 %64, 1, !dbg !5116
  %and284 = and i64 %sub283, 256, !dbg !5116
  %tobool285 = icmp ne i64 %and284, 0, !dbg !5116
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !5116

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !5116

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub288 = sub i64 %65, 1, !dbg !5116
  %and289 = and i64 %sub288, 128, !dbg !5116
  %tobool290 = icmp ne i64 %and289, 0, !dbg !5116
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !5116

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !5116

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub293 = sub i64 %66, 1, !dbg !5116
  %and294 = and i64 %sub293, 64, !dbg !5116
  %tobool295 = icmp ne i64 %and294, 0, !dbg !5116
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !5116

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !5116

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub298 = sub i64 %67, 1, !dbg !5116
  %and299 = and i64 %sub298, 32, !dbg !5116
  %tobool300 = icmp ne i64 %and299, 0, !dbg !5116
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !5116

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !5116

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub303 = sub i64 %68, 1, !dbg !5116
  %and304 = and i64 %sub303, 16, !dbg !5116
  %tobool305 = icmp ne i64 %and304, 0, !dbg !5116
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !5116

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !5116

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub308 = sub i64 %69, 1, !dbg !5116
  %and309 = and i64 %sub308, 8, !dbg !5116
  %tobool310 = icmp ne i64 %and309, 0, !dbg !5116
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !5116

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !5116

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub313 = sub i64 %70, 1, !dbg !5116
  %and314 = and i64 %sub313, 4, !dbg !5116
  %tobool315 = icmp ne i64 %and314, 0, !dbg !5116
  %71 = zext i1 %tobool315 to i64, !dbg !5116
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !5116
  br label %cond.end, !dbg !5116

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !5116
  br label %cond.end317, !dbg !5116

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !5116
  br label %cond.end319, !dbg !5116

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !5116
  br label %cond.end321, !dbg !5116

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !5116
  br label %cond.end323, !dbg !5116

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !5116
  br label %cond.end325, !dbg !5116

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !5116
  br label %cond.end327, !dbg !5116

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !5116
  br label %cond.end329, !dbg !5116

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !5116
  br label %cond.end331, !dbg !5116

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !5116
  br label %cond.end333, !dbg !5116

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !5116
  br label %cond.end335, !dbg !5116

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !5116
  br label %cond.end337, !dbg !5116

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !5116
  br label %cond.end339, !dbg !5116

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !5116
  br label %cond.end341, !dbg !5116

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !5116
  br label %cond.end343, !dbg !5116

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !5116
  br label %cond.end345, !dbg !5116

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !5116
  br label %cond.end347, !dbg !5116

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !5116
  br label %cond.end349, !dbg !5116

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !5116
  br label %cond.end351, !dbg !5116

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !5116
  br label %cond.end353, !dbg !5116

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !5116
  br label %cond.end355, !dbg !5116

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !5116
  br label %cond.end357, !dbg !5116

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !5116
  br label %cond.end359, !dbg !5116

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !5116
  br label %cond.end361, !dbg !5116

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !5116
  br label %cond.end363, !dbg !5116

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !5116
  br label %cond.end365, !dbg !5116

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !5116
  br label %cond.end367, !dbg !5116

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !5116
  br label %cond.end369, !dbg !5116

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !5116
  br label %cond.end371, !dbg !5116

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !5116
  br label %cond.end373, !dbg !5116

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !5116
  br label %cond.end375, !dbg !5116

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !5116
  br label %cond.end377, !dbg !5116

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !5116
  br label %cond.end379, !dbg !5116

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !5116
  br label %cond.end381, !dbg !5116

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !5116
  br label %cond.end383, !dbg !5116

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !5116
  br label %cond.end385, !dbg !5116

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !5116
  br label %cond.end387, !dbg !5116

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !5116
  br label %cond.end389, !dbg !5116

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !5116
  br label %cond.end391, !dbg !5116

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !5116
  br label %cond.end393, !dbg !5116

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !5116
  br label %cond.end395, !dbg !5116

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !5116
  br label %cond.end397, !dbg !5116

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !5116
  br label %cond.end399, !dbg !5116

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !5116
  br label %cond.end401, !dbg !5116

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !5116
  br label %cond.end403, !dbg !5116

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !5116
  br label %cond.end405, !dbg !5116

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !5116
  br label %cond.end407, !dbg !5116

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !5116
  br label %cond.end409, !dbg !5116

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !5116
  br label %cond.end411, !dbg !5116

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !5116
  br label %cond.end413, !dbg !5116

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !5116
  br label %cond.end415, !dbg !5116

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !5116
  br label %cond.end417, !dbg !5116

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !5116
  br label %cond.end419, !dbg !5116

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !5116
  br label %cond.end421, !dbg !5116

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !5116
  br label %cond.end423, !dbg !5116

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !5116
  br label %cond.end425, !dbg !5116

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !5116
  br label %cond.end427, !dbg !5116

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !5116
  br label %cond.end429, !dbg !5116

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !5116
  br label %cond.end431, !dbg !5116

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !5116
  br label %cond.end433, !dbg !5116

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !5116
  br label %cond.end435, !dbg !5116

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !5116
  br label %cond.end437, !dbg !5116

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !5116
  br label %cond.end440, !dbg !5116

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !5116

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !5116
  br label %cond.end444, !dbg !5116

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !5116
  %sub443 = sub i64 %72, 1, !dbg !5116
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !5116
  br label %cond.end444, !dbg !5116

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !5116
  %sub446 = sub i32 %cond445, 12, !dbg !5117
  %add = add i32 %sub446, 1, !dbg !5118
  store i32 %add, i32* %retval, align 4, !dbg !5119
  br label %return, !dbg !5119

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !5120
  %dec = add i64 %73, -1, !dbg !5120
  store i64 %dec, i64* %size.addr, align 8, !dbg !5120
  %74 = load i64, i64* %size.addr, align 8, !dbg !5121
  %shr = lshr i64 %74, 12, !dbg !5121
  store i64 %shr, i64* %size.addr, align 8, !dbg !5121
  %75 = load i64, i64* %size.addr, align 8, !dbg !5122
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5099
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !5123
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !5124
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !5123, !srcloc !5125
  store i32 %78, i32* %bitpos.i, align 4, !dbg !5123
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !5126
  %add.i = add i32 %79, 1, !dbg !5127
  store i32 %add.i, i32* %retval, align 4, !dbg !5128
  br label %return, !dbg !5128

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !5129
  ret i32 %80, !dbg !5129
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !5130 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !5091, metadata !DIExpression()), !dbg !5134
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !5098, metadata !DIExpression()), !dbg !5136
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5137, metadata !DIExpression()), !dbg !5138
  %0 = load i64, i64* %n.addr, align 8, !dbg !5139
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !5136
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !5140
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !5141
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !5140, !srcloc !5125
  store i32 %3, i32* %bitpos.i, align 4, !dbg !5140
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !5142
  %add.i = add i32 %4, 1, !dbg !5143
  %sub = sub i32 %add.i, 1, !dbg !5144
  ret i32 %sub, !dbg !5145
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !5146 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5154, metadata !DIExpression()), !dbg !5155
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5156, metadata !DIExpression()), !dbg !5157
  %0 = load i8*, i8** %object.addr, align 8, !dbg !5158
  ret i8* %0, !dbg !5159
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5160 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5163, metadata !DIExpression()), !dbg !5164
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5165, metadata !DIExpression()), !dbg !5166
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5167, metadata !DIExpression()), !dbg !5168
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5169
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5171
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5172
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #9, !dbg !5173
  br i1 %call, label %if.end, label %if.then, !dbg !5174

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !5175

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5176
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5177
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !5178
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !5179
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5180
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5181
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !5182
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !5183
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5184
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5185
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !5186
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !5187
  br label %do.body, !dbg !5188

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !5189

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !5191

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !5189

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !5193
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5193
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !5193
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !5193
  br label %do.end7, !dbg !5193

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !5189

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !5195
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5196 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !5199, metadata !DIExpression()), !dbg !5200
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5201, metadata !DIExpression()), !dbg !5202
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5203, metadata !DIExpression()), !dbg !5204
  ret i1 true, !dbg !5205
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !5206 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !5211, metadata !DIExpression()), !dbg !5212
  br label %do.body, !dbg !5213

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5215

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5213
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !5213
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5213
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !5215
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !5213
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !5217
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !5218
  %conv = zext i1 %cmp to i32, !dbg !5218
  ret i32 %conv, !dbg !5219
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_splice(%struct.list_head* %list, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !5220 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  %first = alloca %struct.list_head*, align 8
  %last = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !5223, metadata !DIExpression()), !dbg !5224
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !5225, metadata !DIExpression()), !dbg !5226
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !5227, metadata !DIExpression()), !dbg !5228
  call void @llvm.dbg.declare(metadata %struct.list_head** %first, metadata !5229, metadata !DIExpression()), !dbg !5230
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5231
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !5232
  %1 = load %struct.list_head*, %struct.list_head** %next1, align 8, !dbg !5232
  store %struct.list_head* %1, %struct.list_head** %first, align 8, !dbg !5230
  call void @llvm.dbg.declare(metadata %struct.list_head** %last, metadata !5233, metadata !DIExpression()), !dbg !5234
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !5235
  %prev2 = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !5236
  %3 = load %struct.list_head*, %struct.list_head** %prev2, align 8, !dbg !5236
  store %struct.list_head* %3, %struct.list_head** %last, align 8, !dbg !5234
  %4 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5237
  %5 = load %struct.list_head*, %struct.list_head** %first, align 8, !dbg !5238
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %5, i32 0, i32 1, !dbg !5239
  store %struct.list_head* %4, %struct.list_head** %prev3, align 8, !dbg !5240
  %6 = load %struct.list_head*, %struct.list_head** %first, align 8, !dbg !5241
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !5242
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %7, i32 0, i32 0, !dbg !5243
  store %struct.list_head* %6, %struct.list_head** %next4, align 8, !dbg !5244
  %8 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5245
  %9 = load %struct.list_head*, %struct.list_head** %last, align 8, !dbg !5246
  %next5 = getelementptr inbounds %struct.list_head, %struct.list_head* %9, i32 0, i32 0, !dbg !5247
  store %struct.list_head* %8, %struct.list_head** %next5, align 8, !dbg !5248
  %10 = load %struct.list_head*, %struct.list_head** %last, align 8, !dbg !5249
  %11 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !5250
  %prev6 = getelementptr inbounds %struct.list_head, %struct.list_head* %11, i32 0, i32 1, !dbg !5251
  store %struct.list_head* %10, %struct.list_head** %prev6, align 8, !dbg !5252
  ret void, !dbg !5253
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @refcount_dec_and_test(%struct.refcount_struct* %r) #0 !dbg !5254 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5258, metadata !DIExpression()), !dbg !5259
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5260
  %call = call zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %0, i32* null) #9, !dbg !5261
  ret i1 %call, !dbg !5262
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_dec_and_test(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5263 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5266, metadata !DIExpression()), !dbg !5267
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5268, metadata !DIExpression()), !dbg !5269
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5270
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5271
  %call = call zeroext i1 @__refcount_sub_and_test(i32 1, %struct.refcount_struct* %0, i32* %1) #9, !dbg !5272
  ret i1 %call, !dbg !5273
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5274 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5277, metadata !DIExpression()), !dbg !5283
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5288, metadata !DIExpression()), !dbg !5289
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5290, metadata !DIExpression()), !dbg !5292
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5293, metadata !DIExpression()), !dbg !5301
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5303, metadata !DIExpression()), !dbg !5304
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5305, metadata !DIExpression()), !dbg !5306
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5307, metadata !DIExpression()), !dbg !5308
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5309, metadata !DIExpression()), !dbg !5310
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5311, metadata !DIExpression()), !dbg !5312
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5313, metadata !DIExpression()), !dbg !5314
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5315, metadata !DIExpression()), !dbg !5316
  %0 = load i32, i32* %i.addr, align 4, !dbg !5317
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5318
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5319
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5320
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5320
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5321
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5322
  %conv.i.i = trunc i64 %5 to i32, !dbg !5322
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !5323
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5324
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5324
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #12, !dbg !5324
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5325
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5326
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5292
  %sub.i.i = sub i32 0, %10, !dbg !5292
  store i32 %sub.i.i, i32* %__ret.i.i, align 4, !dbg !5292
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5292
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5292
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5292
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #10, !dbg !5292, !srcloc !5327
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5292
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5292
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5292
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5292
  store i32 %15, i32* %old, align 4, !dbg !5316
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5328
  %tobool = icmp ne i32* %16, null, !dbg !5328
  br i1 %tobool, label %if.then, label %if.end, !dbg !5330

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5331
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5332
  store i32 %17, i32* %18, align 4, !dbg !5333
  br label %if.end, !dbg !5334

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5335
  %20 = load i32, i32* %i.addr, align 4, !dbg !5337
  %cmp = icmp eq i32 %19, %20, !dbg !5338
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5339

if.then1:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !5340, !srcloc !5342
  store i1 true, i1* %retval, align 1, !dbg !5343
  br label %return, !dbg !5343

if.end2:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5344
  %cmp3 = icmp slt i32 %21, 0, !dbg !5344
  br i1 %cmp3, label %lor.end, label %lor.rhs, !dbg !5344

lor.rhs:                                          ; preds = %if.end2
  %22 = load i32, i32* %old, align 4, !dbg !5344
  %23 = load i32, i32* %i.addr, align 4, !dbg !5344
  %sub = sub i32 %22, %23, !dbg !5344
  %cmp4 = icmp slt i32 %sub, 0, !dbg !5344
  br label %lor.end, !dbg !5344

lor.end:                                          ; preds = %lor.rhs, %if.end2
  %24 = phi i1 [ true, %if.end2 ], [ %cmp4, %lor.rhs ]
  %lnot = xor i1 %24, true, !dbg !5344
  %lnot5 = xor i1 %lnot, true, !dbg !5344
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5344
  %conv = sext i32 %lnot.ext to i64, !dbg !5344
  %tobool6 = icmp ne i64 %conv, 0, !dbg !5344
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5346

if.then7:                                         ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5347
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 3) #9, !dbg !5348
  br label %if.end8, !dbg !5348

if.end8:                                          ; preds = %if.then7, %lor.end
  store i1 false, i1* %retval, align 1, !dbg !5349
  br label %return, !dbg !5349

return:                                           ; preds = %if.end8, %if.then1
  %26 = load i1, i1* %retval, align 1, !dbg !5350
  ret i1 %26, !dbg !5350
}

; Function Attrs: noredzone
declare dso_local void @refcount_warn_saturate(%struct.refcount_struct*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5351 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5355, metadata !DIExpression()), !dbg !5356
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5357, metadata !DIExpression()), !dbg !5358
  ret i1 true, !dbg !5359
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5360 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5364, metadata !DIExpression()), !dbg !5365
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5366, metadata !DIExpression()), !dbg !5367
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5368, metadata !DIExpression()), !dbg !5369
  ret void, !dbg !5370
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @schedule_work(%struct.work_struct* %work) #0 !dbg !5371 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5374, metadata !DIExpression()), !dbg !5375
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_wq, align 8, !dbg !5376
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !5377
  %call = call zeroext i1 @queue_work(%struct.workqueue_struct* %0, %struct.work_struct* %1) #9, !dbg !5378
  ret i1 %call, !dbg !5379
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #0 !dbg !5380 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !5383, metadata !DIExpression()), !dbg !5384
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !5385, metadata !DIExpression()), !dbg !5386
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !5387
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !5388
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #9, !dbg !5389
  ret i1 %call, !dbg !5390
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #2

; Function Attrs: noredzone
declare dso_local void @init_wait_entry(%struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local i64 @prepare_to_wait_event(%struct.wait_queue_head*, %struct.wait_queue_entry*, i32) #2

; Function Attrs: noredzone
declare dso_local void @schedule() #2

; Function Attrs: noredzone
declare dso_local void @finish_wait(%struct.wait_queue_head*, %struct.wait_queue_entry*) #2

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #0 !dbg !5391 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5394, metadata !DIExpression()), !dbg !5395
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5396, metadata !DIExpression()), !dbg !5397
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5398, metadata !DIExpression()), !dbg !5400
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5400
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !5401
  %tobool = icmp ne i32 %0, 0, !dbg !5401
  %lnot = xor i1 %tobool, true, !dbg !5401
  %lnot1 = xor i1 %lnot, true, !dbg !5401
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5401
  %conv = sext i32 %lnot.ext to i64, !dbg !5401
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5401
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5400

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5401

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !5403

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !5405

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !5403
  %2 = load i64, i64* %count.addr, align 8, !dbg !5403
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %1, i64 %2) #9, !dbg !5403
  br label %do.body4, !dbg !5403

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !5407

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5409

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !5407

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 134, i32 2313, i64 12) #10, !dbg !5411, !srcloc !5413
  br label %do.end8, !dbg !5411

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 14) #10, !dbg !5414, !srcloc !5416
  br label %do.body9, !dbg !5407

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5417

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !5407

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !5403

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5419

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5403

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !5403

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5400
  %tobool15 = icmp ne i32 %3, 0, !dbg !5400
  %lnot16 = xor i1 %tobool15, true, !dbg !5400
  %lnot18 = xor i1 %lnot16, true, !dbg !5400
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5400
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5400
  store i64 %conv20, i64* %tmp, align 8, !dbg !5401
  %4 = load i64, i64* %tmp, align 8, !dbg !5400
  ret void, !dbg !5421
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #2

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #0 !dbg !5422 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5425, metadata !DIExpression()), !dbg !5426
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5427, metadata !DIExpression()), !dbg !5428
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !5429, metadata !DIExpression()), !dbg !5430
  ret void, !dbg !5431
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_get(%struct.kref* %kref) #0 !dbg !5432 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !5433, metadata !DIExpression()), !dbg !5434
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !5435
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !5436
  call void @refcount_inc(%struct.refcount_struct* %refcount) #9, !dbg !5437
  ret void, !dbg !5438
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_write_watch(i32 %msg_type, %struct.xenbus_file_priv* %u) #0 !dbg !5439 {
entry:
  %msg_type.addr = alloca i32, align 4
  %u.addr = alloca %struct.xenbus_file_priv*, align 8
  %watch = alloca %struct.watch_adapter*, align 8
  %path = alloca i8*, align 8
  %token = alloca i8*, align 8
  %err = alloca i32, align 4
  %rc = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.watch_adapter*, align 8
  %__mptr44 = alloca i8*, align 8
  %tmp49 = alloca %struct.watch_adapter*, align 8
  store i32 %msg_type, i32* %msg_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msg_type.addr, metadata !5442, metadata !DIExpression()), !dbg !5443
  store %struct.xenbus_file_priv* %u, %struct.xenbus_file_priv** %u.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_file_priv** %u.addr, metadata !5444, metadata !DIExpression()), !dbg !5445
  call void @llvm.dbg.declare(metadata %struct.watch_adapter** %watch, metadata !5446, metadata !DIExpression()), !dbg !5447
  call void @llvm.dbg.declare(metadata i8** %path, metadata !5448, metadata !DIExpression()), !dbg !5449
  call void @llvm.dbg.declare(metadata i8** %token, metadata !5450, metadata !DIExpression()), !dbg !5451
  call void @llvm.dbg.declare(metadata i32* %err, metadata !5452, metadata !DIExpression()), !dbg !5453
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5454, metadata !DIExpression()), !dbg !5455
  %0 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5456
  %u1 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %0, i32 0, i32 4, !dbg !5457
  %buffer = bitcast %union.anon.0* %u1 to [4096 x i8]*, !dbg !5458
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i64 0, i64 0, !dbg !5456
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 16, !dbg !5459
  store i8* %add.ptr, i8** %path, align 8, !dbg !5460
  %1 = load i8*, i8** %path, align 8, !dbg !5461
  %2 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5462
  %u2 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %2, i32 0, i32 4, !dbg !5463
  %msg = bitcast %union.anon.0* %u2 to %struct.xsd_sockmsg*, !dbg !5464
  %len = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg, i32 0, i32 3, !dbg !5465
  %3 = load i32, i32* %len, align 4, !dbg !5465
  %conv = zext i32 %3 to i64, !dbg !5462
  %call = call i8* @memchr(i8* %1, i32 0, i64 %conv) #9, !dbg !5466
  store i8* %call, i8** %token, align 8, !dbg !5467
  %4 = load i8*, i8** %token, align 8, !dbg !5468
  %cmp = icmp eq i8* %4, null, !dbg !5470
  br i1 %cmp, label %if.then, label %if.end, !dbg !5471

if.then:                                          ; preds = %entry
  %5 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5472
  %call4 = call i32 @xenbus_command_reply(%struct.xenbus_file_priv* %5, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !5474
  store i32 %call4, i32* %rc, align 4, !dbg !5475
  br label %out, !dbg !5476

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %token, align 8, !dbg !5477
  %incdec.ptr = getelementptr i8, i8* %6, i32 1, !dbg !5477
  store i8* %incdec.ptr, i8** %token, align 8, !dbg !5477
  %7 = load i8*, i8** %token, align 8, !dbg !5478
  %8 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5480
  %u5 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %8, i32 0, i32 4, !dbg !5481
  %msg6 = bitcast %union.anon.0* %u5 to %struct.xsd_sockmsg*, !dbg !5482
  %len7 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %msg6, i32 0, i32 3, !dbg !5483
  %9 = load i32, i32* %len7, align 4, !dbg !5483
  %conv8 = zext i32 %9 to i64, !dbg !5480
  %10 = load i8*, i8** %token, align 8, !dbg !5484
  %11 = load i8*, i8** %path, align 8, !dbg !5485
  %sub.ptr.lhs.cast = ptrtoint i8* %10 to i64, !dbg !5486
  %sub.ptr.rhs.cast = ptrtoint i8* %11 to i64, !dbg !5486
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !5486
  %sub = sub i64 %conv8, %sub.ptr.sub, !dbg !5487
  %call9 = call i8* @memchr(i8* %7, i32 0, i64 %sub) #9, !dbg !5488
  %cmp10 = icmp eq i8* %call9, null, !dbg !5489
  br i1 %cmp10, label %if.then12, label %if.end14, !dbg !5490

if.then12:                                        ; preds = %if.end
  %12 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5491
  %call13 = call i32 @xenbus_command_reply(%struct.xenbus_file_priv* %12, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !5493
  store i32 %call13, i32* %rc, align 4, !dbg !5494
  br label %out, !dbg !5495

if.end14:                                         ; preds = %if.end
  %13 = load i32, i32* %msg_type.addr, align 4, !dbg !5496
  %cmp15 = icmp eq i32 %13, 4, !dbg !5498
  br i1 %cmp15, label %if.then17, label %if.else, !dbg !5499

if.then17:                                        ; preds = %if.end14
  %14 = load i8*, i8** %path, align 8, !dbg !5500
  %15 = load i8*, i8** %token, align 8, !dbg !5502
  %call18 = call %struct.watch_adapter* @alloc_watch_adapter(i8* %14, i8* %15) #9, !dbg !5503
  store %struct.watch_adapter* %call18, %struct.watch_adapter** %watch, align 8, !dbg !5504
  %16 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5505
  %cmp19 = icmp eq %struct.watch_adapter* %16, null, !dbg !5507
  br i1 %cmp19, label %if.then21, label %if.end22, !dbg !5508

if.then21:                                        ; preds = %if.then17
  store i32 -12, i32* %rc, align 4, !dbg !5509
  br label %out, !dbg !5511

if.end22:                                         ; preds = %if.then17
  %17 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5512
  %watch23 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %17, i32 0, i32 1, !dbg !5513
  %callback = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %watch23, i32 0, i32 2, !dbg !5514
  store void (%struct.xenbus_watch*, i8*, i8*)* @watch_fired, void (%struct.xenbus_watch*, i8*, i8*)** %callback, align 8, !dbg !5515
  %18 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5516
  %19 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5517
  %dev_data = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %19, i32 0, i32 2, !dbg !5518
  store %struct.xenbus_file_priv* %18, %struct.xenbus_file_priv** %dev_data, align 8, !dbg !5519
  %20 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5520
  %watch24 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %20, i32 0, i32 1, !dbg !5521
  %call25 = call i32 @register_xenbus_watch(%struct.xenbus_watch* %watch24) #9, !dbg !5522
  store i32 %call25, i32* %err, align 4, !dbg !5523
  %21 = load i32, i32* %err, align 4, !dbg !5524
  %tobool = icmp ne i32 %21, 0, !dbg !5524
  br i1 %tobool, label %if.then26, label %if.end27, !dbg !5526

if.then26:                                        ; preds = %if.end22
  %22 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5527
  call void @free_watch_adapter(%struct.watch_adapter* %22) #9, !dbg !5529
  %23 = load i32, i32* %err, align 4, !dbg !5530
  store i32 %23, i32* %rc, align 4, !dbg !5531
  br label %out, !dbg !5532

if.end27:                                         ; preds = %if.end22
  %24 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5533
  %list = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %24, i32 0, i32 0, !dbg !5534
  %25 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5535
  %watches = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %25, i32 0, i32 2, !dbg !5536
  call void @list_add(%struct.list_head* %list, %struct.list_head* %watches) #9, !dbg !5537
  br label %if.end51, !dbg !5538

if.else:                                          ; preds = %if.end14
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5539, metadata !DIExpression()), !dbg !5543
  %26 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5543
  %watches28 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %26, i32 0, i32 2, !dbg !5543
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %watches28, i32 0, i32 0, !dbg !5543
  %27 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !5543
  %28 = bitcast %struct.list_head* %27 to i8*, !dbg !5543
  store i8* %28, i8** %__mptr, align 8, !dbg !5543
  br label %do.body, !dbg !5543

do.body:                                          ; preds = %if.else
  br label %do.end, !dbg !5544

do.end:                                           ; preds = %do.body
  %29 = load i8*, i8** %__mptr, align 8, !dbg !5543
  %add.ptr29 = getelementptr i8, i8* %29, i64 0, !dbg !5543
  %30 = bitcast i8* %add.ptr29 to %struct.watch_adapter*, !dbg !5543
  store %struct.watch_adapter* %30, %struct.watch_adapter** %tmp, align 8, !dbg !5544
  %31 = load %struct.watch_adapter*, %struct.watch_adapter** %tmp, align 8, !dbg !5543
  store %struct.watch_adapter* %31, %struct.watch_adapter** %watch, align 8, !dbg !5546
  br label %for.cond, !dbg !5546

for.cond:                                         ; preds = %do.end48, %do.end
  %32 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5547
  %list30 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %32, i32 0, i32 0, !dbg !5547
  %33 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5547
  %watches31 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %33, i32 0, i32 2, !dbg !5547
  %cmp32 = icmp eq %struct.list_head* %list30, %watches31, !dbg !5547
  %lnot = xor i1 %cmp32, true, !dbg !5547
  br i1 %lnot, label %for.body, label %for.end, !dbg !5546

for.body:                                         ; preds = %for.cond
  %34 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5549
  %token34 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %34, i32 0, i32 3, !dbg !5552
  %35 = load i8*, i8** %token34, align 8, !dbg !5552
  %36 = load i8*, i8** %token, align 8, !dbg !5553
  %call35 = call i32 @strcmp(i8* %35, i8* %36) #9, !dbg !5554
  %tobool36 = icmp ne i32 %call35, 0, !dbg !5554
  br i1 %tobool36, label %if.end43, label %land.lhs.true, !dbg !5555

land.lhs.true:                                    ; preds = %for.body
  %37 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5556
  %watch37 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %37, i32 0, i32 1, !dbg !5557
  %node = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %watch37, i32 0, i32 1, !dbg !5558
  %38 = load i8*, i8** %node, align 8, !dbg !5558
  %39 = load i8*, i8** %path, align 8, !dbg !5559
  %call38 = call i32 @strcmp(i8* %38, i8* %39) #9, !dbg !5560
  %tobool39 = icmp ne i32 %call38, 0, !dbg !5560
  br i1 %tobool39, label %if.end43, label %if.then40, !dbg !5561

if.then40:                                        ; preds = %land.lhs.true
  %40 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5562
  %watch41 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %40, i32 0, i32 1, !dbg !5564
  call void @unregister_xenbus_watch(%struct.xenbus_watch* %watch41) #9, !dbg !5565
  %41 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5566
  %list42 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %41, i32 0, i32 0, !dbg !5567
  call void @list_del(%struct.list_head* %list42) #9, !dbg !5568
  %42 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5569
  call void @free_watch_adapter(%struct.watch_adapter* %42) #9, !dbg !5570
  br label %for.end, !dbg !5571

if.end43:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5572

for.inc:                                          ; preds = %if.end43
  call void @llvm.dbg.declare(metadata i8** %__mptr44, metadata !5573, metadata !DIExpression()), !dbg !5575
  %43 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5575
  %list45 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %43, i32 0, i32 0, !dbg !5575
  %next46 = getelementptr inbounds %struct.list_head, %struct.list_head* %list45, i32 0, i32 0, !dbg !5575
  %44 = load %struct.list_head*, %struct.list_head** %next46, align 8, !dbg !5575
  %45 = bitcast %struct.list_head* %44 to i8*, !dbg !5575
  store i8* %45, i8** %__mptr44, align 8, !dbg !5575
  br label %do.body47, !dbg !5575

do.body47:                                        ; preds = %for.inc
  br label %do.end48, !dbg !5576

do.end48:                                         ; preds = %do.body47
  %46 = load i8*, i8** %__mptr44, align 8, !dbg !5575
  %add.ptr50 = getelementptr i8, i8* %46, i64 0, !dbg !5575
  %47 = bitcast i8* %add.ptr50 to %struct.watch_adapter*, !dbg !5575
  store %struct.watch_adapter* %47, %struct.watch_adapter** %tmp49, align 8, !dbg !5576
  %48 = load %struct.watch_adapter*, %struct.watch_adapter** %tmp49, align 8, !dbg !5575
  store %struct.watch_adapter* %48, %struct.watch_adapter** %watch, align 8, !dbg !5547
  br label %for.cond, !dbg !5547, !llvm.loop !5578

for.end:                                          ; preds = %if.then40, %for.cond
  br label %if.end51

if.end51:                                         ; preds = %for.end, %if.end27
  %49 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5580
  %50 = load i32, i32* %msg_type.addr, align 4, !dbg !5581
  %call52 = call i32 @xenbus_command_reply(%struct.xenbus_file_priv* %49, i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !5582
  store i32 %call52, i32* %rc, align 4, !dbg !5583
  br label %out, !dbg !5584

out:                                              ; preds = %if.end51, %if.then26, %if.then21, %if.then12, %if.then
  call void @llvm.dbg.label(metadata !5585), !dbg !5586
  %51 = load i32, i32* %rc, align 4, !dbg !5587
  ret i32 %51, !dbg !5588
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_write_transaction(i32 %msg_type, %struct.xenbus_file_priv* %u) #0 !dbg !5589 {
entry:
  %retval = alloca i32, align 4
  %msg_type.addr = alloca i32, align 4
  %u.addr = alloca %struct.xenbus_file_priv*, align 8
  %rc = alloca i32, align 4
  %trans = alloca %struct.xenbus_transaction_holder*, align 8
  %msg = alloca %struct.anon.69*, align 8
  store i32 %msg_type, i32* %msg_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msg_type.addr, metadata !5590, metadata !DIExpression()), !dbg !5591
  store %struct.xenbus_file_priv* %u, %struct.xenbus_file_priv** %u.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_file_priv** %u.addr, metadata !5592, metadata !DIExpression()), !dbg !5593
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5594, metadata !DIExpression()), !dbg !5595
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction_holder** %trans, metadata !5596, metadata !DIExpression()), !dbg !5597
  store %struct.xenbus_transaction_holder* null, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !5597
  call void @llvm.dbg.declare(metadata %struct.anon.69** %msg, metadata !5598, metadata !DIExpression()), !dbg !5604
  %0 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5605
  %u1 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %0, i32 0, i32 4, !dbg !5606
  %buffer = bitcast %union.anon.0* %u1 to [4096 x i8]*, !dbg !5607
  %arraydecay = getelementptr inbounds [4096 x i8], [4096 x i8]* %buffer, i64 0, i64 0, !dbg !5605
  %1 = bitcast i8* %arraydecay to %struct.anon.69*, !dbg !5608
  store %struct.anon.69* %1, %struct.anon.69** %msg, align 8, !dbg !5604
  %2 = load i32, i32* %msg_type.addr, align 4, !dbg !5609
  %cmp = icmp eq i32 %2, 6, !dbg !5611
  br i1 %cmp, label %if.then, label %if.else, !dbg !5612

if.then:                                          ; preds = %entry
  %call = call i8* @kzalloc(i64 24, i32 3264) #9, !dbg !5613
  %3 = bitcast i8* %call to %struct.xenbus_transaction_holder*, !dbg !5613
  store %struct.xenbus_transaction_holder* %3, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !5615
  %4 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !5616
  %tobool = icmp ne %struct.xenbus_transaction_holder* %4, null, !dbg !5616
  br i1 %tobool, label %if.end, label %if.then2, !dbg !5618

if.then2:                                         ; preds = %if.then
  store i32 -12, i32* %rc, align 4, !dbg !5619
  br label %out, !dbg !5621

if.end:                                           ; preds = %if.then
  %5 = load i32, i32* @xb_dev_generation_id, align 4, !dbg !5622
  %6 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !5623
  %generation_id = getelementptr inbounds %struct.xenbus_transaction_holder, %struct.xenbus_transaction_holder* %6, i32 0, i32 2, !dbg !5624
  store i32 %5, i32* %generation_id, align 4, !dbg !5625
  %7 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !5626
  %list = getelementptr inbounds %struct.xenbus_transaction_holder, %struct.xenbus_transaction_holder* %7, i32 0, i32 0, !dbg !5627
  %8 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5628
  %transactions = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %8, i32 0, i32 1, !dbg !5629
  call void @list_add(%struct.list_head* %list, %struct.list_head* %transactions) #9, !dbg !5630
  br label %if.end49, !dbg !5631

if.else:                                          ; preds = %entry
  %9 = load %struct.anon.69*, %struct.anon.69** %msg, align 8, !dbg !5632
  %hdr = getelementptr inbounds %struct.anon.69, %struct.anon.69* %9, i32 0, i32 0, !dbg !5634
  %tx_id = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %hdr, i32 0, i32 2, !dbg !5635
  %10 = load i32, i32* %tx_id, align 4, !dbg !5635
  %cmp3 = icmp ne i32 %10, 0, !dbg !5636
  br i1 %cmp3, label %land.lhs.true, label %if.else10, !dbg !5637

land.lhs.true:                                    ; preds = %if.else
  %11 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5638
  %12 = load %struct.anon.69*, %struct.anon.69** %msg, align 8, !dbg !5639
  %hdr4 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %12, i32 0, i32 0, !dbg !5640
  %tx_id5 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %hdr4, i32 0, i32 2, !dbg !5641
  %13 = load i32, i32* %tx_id5, align 4, !dbg !5641
  %call6 = call %struct.xenbus_transaction_holder* @xenbus_get_transaction(%struct.xenbus_file_priv* %11, i32 %13) #9, !dbg !5642
  %tobool7 = icmp ne %struct.xenbus_transaction_holder* %call6, null, !dbg !5642
  br i1 %tobool7, label %if.else10, label %if.then8, !dbg !5643

if.then8:                                         ; preds = %land.lhs.true
  %14 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5644
  %call9 = call i32 @xenbus_command_reply(%struct.xenbus_file_priv* %14, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !5645
  store i32 %call9, i32* %retval, align 4, !dbg !5646
  br label %return, !dbg !5646

if.else10:                                        ; preds = %land.lhs.true, %if.else
  %15 = load i32, i32* %msg_type.addr, align 4, !dbg !5647
  %cmp11 = icmp eq i32 %15, 7, !dbg !5649
  br i1 %cmp11, label %land.lhs.true12, label %if.else25, !dbg !5650

land.lhs.true12:                                  ; preds = %if.else10
  %16 = load %struct.anon.69*, %struct.anon.69** %msg, align 8, !dbg !5651
  %hdr13 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %16, i32 0, i32 0, !dbg !5652
  %len = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %hdr13, i32 0, i32 3, !dbg !5653
  %17 = load i32, i32* %len, align 4, !dbg !5653
  %cmp14 = icmp eq i32 %17, 2, !dbg !5654
  br i1 %cmp14, label %land.lhs.true15, label %if.then23, !dbg !5655

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %18 = load %struct.anon.69*, %struct.anon.69** %msg, align 8, !dbg !5656
  %body = getelementptr inbounds %struct.anon.69, %struct.anon.69* %18, i32 0, i32 1, !dbg !5657
  %arraydecay16 = getelementptr inbounds [0 x i8], [0 x i8]* %body, i64 0, i64 0, !dbg !5656
  %call17 = call i32 @strcmp(i8* %arraydecay16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !5658
  %tobool18 = icmp ne i32 %call17, 0, !dbg !5658
  br i1 %tobool18, label %lor.lhs.false, label %if.else25, !dbg !5659

lor.lhs.false:                                    ; preds = %land.lhs.true15
  %19 = load %struct.anon.69*, %struct.anon.69** %msg, align 8, !dbg !5660
  %body19 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %19, i32 0, i32 1, !dbg !5661
  %arraydecay20 = getelementptr inbounds [0 x i8], [0 x i8]* %body19, i64 0, i64 0, !dbg !5660
  %call21 = call i32 @strcmp(i8* %arraydecay20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !5662
  %tobool22 = icmp ne i32 %call21, 0, !dbg !5662
  br i1 %tobool22, label %if.then23, label %if.else25, !dbg !5663

if.then23:                                        ; preds = %lor.lhs.false, %land.lhs.true12
  %20 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5664
  %call24 = call i32 @xenbus_command_reply(%struct.xenbus_file_priv* %20, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #9, !dbg !5665
  store i32 %call24, i32* %retval, align 4, !dbg !5666
  br label %return, !dbg !5666

if.else25:                                        ; preds = %lor.lhs.false, %land.lhs.true15, %if.else10
  %21 = load i32, i32* %msg_type.addr, align 4, !dbg !5667
  %cmp26 = icmp eq i32 %21, 7, !dbg !5669
  br i1 %cmp26, label %if.then27, label %if.end46, !dbg !5670

if.then27:                                        ; preds = %if.else25
  %22 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5671
  %23 = load %struct.anon.69*, %struct.anon.69** %msg, align 8, !dbg !5673
  %hdr28 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %23, i32 0, i32 0, !dbg !5674
  %tx_id29 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %hdr28, i32 0, i32 2, !dbg !5675
  %24 = load i32, i32* %tx_id29, align 4, !dbg !5675
  %call30 = call %struct.xenbus_transaction_holder* @xenbus_get_transaction(%struct.xenbus_file_priv* %22, i32 %24) #9, !dbg !5676
  store %struct.xenbus_transaction_holder* %call30, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !5677
  %25 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !5678
  %tobool31 = icmp ne %struct.xenbus_transaction_holder* %25, null, !dbg !5678
  br i1 %tobool31, label %land.lhs.true32, label %if.end45, !dbg !5680

land.lhs.true32:                                  ; preds = %if.then27
  %26 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !5681
  %generation_id33 = getelementptr inbounds %struct.xenbus_transaction_holder, %struct.xenbus_transaction_holder* %26, i32 0, i32 2, !dbg !5682
  %27 = load i32, i32* %generation_id33, align 4, !dbg !5682
  %28 = load i32, i32* @xb_dev_generation_id, align 4, !dbg !5683
  %cmp34 = icmp ne i32 %27, %28, !dbg !5684
  br i1 %cmp34, label %if.then35, label %if.end45, !dbg !5685

if.then35:                                        ; preds = %land.lhs.true32
  %29 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !5686
  %list36 = getelementptr inbounds %struct.xenbus_transaction_holder, %struct.xenbus_transaction_holder* %29, i32 0, i32 0, !dbg !5688
  call void @list_del(%struct.list_head* %list36) #9, !dbg !5689
  %30 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !5690
  %31 = bitcast %struct.xenbus_transaction_holder* %30 to i8*, !dbg !5690
  call void @kfree(i8* %31) #9, !dbg !5691
  %32 = load %struct.anon.69*, %struct.anon.69** %msg, align 8, !dbg !5692
  %body37 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %32, i32 0, i32 1, !dbg !5694
  %arraydecay38 = getelementptr inbounds [0 x i8], [0 x i8]* %body37, i64 0, i64 0, !dbg !5692
  %call39 = call i32 @strcmp(i8* %arraydecay38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !5695
  %tobool40 = icmp ne i32 %call39, 0, !dbg !5695
  br i1 %tobool40, label %if.else43, label %if.then41, !dbg !5696

if.then41:                                        ; preds = %if.then35
  %33 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5697
  %call42 = call i32 @xenbus_command_reply(%struct.xenbus_file_priv* %33, i32 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !5698
  store i32 %call42, i32* %retval, align 4, !dbg !5699
  br label %return, !dbg !5699

if.else43:                                        ; preds = %if.then35
  %34 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5700
  %call44 = call i32 @xenbus_command_reply(%struct.xenbus_file_priv* %34, i32 7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !5701
  store i32 %call44, i32* %retval, align 4, !dbg !5702
  br label %return, !dbg !5702

if.end45:                                         ; preds = %land.lhs.true32, %if.then27
  br label %if.end46, !dbg !5703

if.end46:                                         ; preds = %if.end45, %if.else25
  br label %if.end47

if.end47:                                         ; preds = %if.end46
  br label %if.end48

if.end48:                                         ; preds = %if.end47
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end
  %35 = load %struct.anon.69*, %struct.anon.69** %msg, align 8, !dbg !5704
  %hdr50 = getelementptr inbounds %struct.anon.69, %struct.anon.69* %35, i32 0, i32 0, !dbg !5705
  %36 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5706
  %37 = bitcast %struct.xenbus_file_priv* %36 to i8*, !dbg !5706
  %call51 = call i32 @xenbus_dev_request_and_reply(%struct.xsd_sockmsg* %hdr50, i8* %37) #9, !dbg !5707
  store i32 %call51, i32* %rc, align 4, !dbg !5708
  %38 = load i32, i32* %rc, align 4, !dbg !5709
  %tobool52 = icmp ne i32 %38, 0, !dbg !5709
  br i1 %tobool52, label %land.lhs.true53, label %if.end57, !dbg !5711

land.lhs.true53:                                  ; preds = %if.end49
  %39 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !5712
  %tobool54 = icmp ne %struct.xenbus_transaction_holder* %39, null, !dbg !5712
  br i1 %tobool54, label %if.then55, label %if.end57, !dbg !5713

if.then55:                                        ; preds = %land.lhs.true53
  %40 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !5714
  %list56 = getelementptr inbounds %struct.xenbus_transaction_holder, %struct.xenbus_transaction_holder* %40, i32 0, i32 0, !dbg !5716
  call void @list_del(%struct.list_head* %list56) #9, !dbg !5717
  %41 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !5718
  %42 = bitcast %struct.xenbus_transaction_holder* %41 to i8*, !dbg !5718
  call void @kfree(i8* %42) #9, !dbg !5719
  br label %if.end57, !dbg !5720

if.end57:                                         ; preds = %if.then55, %land.lhs.true53, %if.end49
  br label %out, !dbg !5712

out:                                              ; preds = %if.end57, %if.then2
  call void @llvm.dbg.label(metadata !5721), !dbg !5722
  %43 = load i32, i32* %rc, align 4, !dbg !5723
  store i32 %43, i32* %retval, align 4, !dbg !5724
  br label %return, !dbg !5724

return:                                           ; preds = %out, %if.else43, %if.then41, %if.then23, %if.then8
  %44 = load i32, i32* %retval, align 4, !dbg !5725
  ret i32 %44, !dbg !5725
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_from_user(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_inc(%struct.refcount_struct* %r) #0 !dbg !5726 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5729, metadata !DIExpression()), !dbg !5730
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5731
  call void @__refcount_inc(%struct.refcount_struct* %0, i32* null) #9, !dbg !5732
  ret void, !dbg !5733
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_inc(%struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5734 {
entry:
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5737, metadata !DIExpression()), !dbg !5738
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5739, metadata !DIExpression()), !dbg !5740
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5741
  %1 = load i32*, i32** %oldp.addr, align 8, !dbg !5742
  call void @__refcount_add(i32 1, %struct.refcount_struct* %0, i32* %1) #9, !dbg !5743
  ret void, !dbg !5744
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__refcount_add(i32 %i, %struct.refcount_struct* %r, i32* %oldp) #0 !dbg !5745 {
entry:
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !5748, metadata !DIExpression()), !dbg !5750
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !5754, metadata !DIExpression()), !dbg !5755
  %__ret.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i, metadata !5756, metadata !DIExpression()), !dbg !5758
  %tmp.i.i = alloca i32, align 4
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !5293, metadata !DIExpression()), !dbg !5759
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !5303, metadata !DIExpression()), !dbg !5761
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !5762, metadata !DIExpression()), !dbg !5763
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !5764, metadata !DIExpression()), !dbg !5765
  %i.addr = alloca i32, align 4
  %r.addr = alloca %struct.refcount_struct*, align 8
  %oldp.addr = alloca i32*, align 8
  %old = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !5766, metadata !DIExpression()), !dbg !5767
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !5768, metadata !DIExpression()), !dbg !5769
  store i32* %oldp, i32** %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %oldp.addr, metadata !5770, metadata !DIExpression()), !dbg !5771
  call void @llvm.dbg.declare(metadata i32* %old, metadata !5772, metadata !DIExpression()), !dbg !5773
  %0 = load i32, i32* %i.addr, align 4, !dbg !5774
  %1 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5775
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %1, i32 0, i32 0, !dbg !5776
  store i32 %0, i32* %i.addr.i, align 4
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5777
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !5777
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5778
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !5779
  %conv.i.i = trunc i64 %5 to i32, !dbg !5779
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !5780
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !5781
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5781
  call void @kcsan_check_access(i8* %6, i64 %7, i32 7) #12, !dbg !5781
  %8 = load i32, i32* %i.addr.i, align 4, !dbg !5782
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !5783
  store i32 %8, i32* %i.addr.i.i, align 4
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !5758
  store i32 %10, i32* %__ret.i.i, align 4, !dbg !5758
  %11 = load i32, i32* %__ret.i.i, align 4, !dbg !5758
  %12 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !5758
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %12, i32 0, i32 0, !dbg !5758
  %13 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i, i32 %11, i32* %counter.i.i) #10, !dbg !5758, !srcloc !5784
  store i32 %13, i32* %__ret.i.i, align 4, !dbg !5758
  %14 = load i32, i32* %__ret.i.i, align 4, !dbg !5758
  store i32 %14, i32* %tmp.i.i, align 4, !dbg !5758
  %15 = load i32, i32* %tmp.i.i, align 4, !dbg !5758
  store i32 %15, i32* %old, align 4, !dbg !5773
  %16 = load i32*, i32** %oldp.addr, align 8, !dbg !5785
  %tobool = icmp ne i32* %16, null, !dbg !5785
  br i1 %tobool, label %if.then, label %if.end, !dbg !5787

if.then:                                          ; preds = %entry
  %17 = load i32, i32* %old, align 4, !dbg !5788
  %18 = load i32*, i32** %oldp.addr, align 8, !dbg !5789
  store i32 %17, i32* %18, align 4, !dbg !5790
  br label %if.end, !dbg !5791

if.end:                                           ; preds = %if.then, %entry
  %19 = load i32, i32* %old, align 4, !dbg !5792
  %tobool1 = icmp ne i32 %19, 0, !dbg !5792
  %lnot = xor i1 %tobool1, true, !dbg !5792
  %lnot2 = xor i1 %lnot, true, !dbg !5792
  %lnot3 = xor i1 %lnot2, true, !dbg !5792
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5792
  %conv = sext i32 %lnot.ext to i64, !dbg !5792
  %tobool4 = icmp ne i64 %conv, 0, !dbg !5792
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !5794

if.then5:                                         ; preds = %if.end
  %20 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5795
  call void @refcount_warn_saturate(%struct.refcount_struct* %20, i32 2) #9, !dbg !5796
  br label %if.end17, !dbg !5796

if.else:                                          ; preds = %if.end
  %21 = load i32, i32* %old, align 4, !dbg !5797
  %cmp = icmp slt i32 %21, 0, !dbg !5797
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5797

lor.rhs:                                          ; preds = %if.else
  %22 = load i32, i32* %old, align 4, !dbg !5797
  %23 = load i32, i32* %i.addr, align 4, !dbg !5797
  %add = add i32 %22, %23, !dbg !5797
  %cmp7 = icmp slt i32 %add, 0, !dbg !5797
  br label %lor.end, !dbg !5797

lor.end:                                          ; preds = %lor.rhs, %if.else
  %24 = phi i1 [ true, %if.else ], [ %cmp7, %lor.rhs ]
  %lnot9 = xor i1 %24, true, !dbg !5797
  %lnot11 = xor i1 %lnot9, true, !dbg !5797
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5797
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5797
  %tobool14 = icmp ne i64 %conv13, 0, !dbg !5797
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5799

if.then15:                                        ; preds = %lor.end
  %25 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !5800
  call void @refcount_warn_saturate(%struct.refcount_struct* %25, i32 1) #9, !dbg !5801
  br label %if.end16, !dbg !5801

if.end16:                                         ; preds = %if.then15, %lor.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  ret void, !dbg !5802
}

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @xenbus_command_reply(%struct.xenbus_file_priv* %u, i32 %msg_type, i8* %reply) #0 !dbg !5803 {
entry:
  %retval = alloca i32, align 4
  %u.addr = alloca %struct.xenbus_file_priv*, align 8
  %msg_type.addr = alloca i32, align 4
  %reply.addr = alloca i8*, align 8
  %msg = alloca %struct.anon.68, align 4
  %rc = alloca i32, align 4
  store %struct.xenbus_file_priv* %u, %struct.xenbus_file_priv** %u.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_file_priv** %u.addr, metadata !5806, metadata !DIExpression()), !dbg !5807
  store i32 %msg_type, i32* %msg_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %msg_type.addr, metadata !5808, metadata !DIExpression()), !dbg !5809
  store i8* %reply, i8** %reply.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %reply.addr, metadata !5810, metadata !DIExpression()), !dbg !5811
  call void @llvm.dbg.declare(metadata %struct.anon.68* %msg, metadata !5812, metadata !DIExpression()), !dbg !5817
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !5818, metadata !DIExpression()), !dbg !5819
  %hdr = getelementptr inbounds %struct.anon.68, %struct.anon.68* %msg, i32 0, i32 0, !dbg !5820
  %0 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5821
  %u1 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %0, i32 0, i32 4, !dbg !5822
  %msg2 = bitcast %union.anon.0* %u1 to %struct.xsd_sockmsg*, !dbg !5823
  %1 = bitcast %struct.xsd_sockmsg* %hdr to i8*, !dbg !5823
  %2 = bitcast %struct.xsd_sockmsg* %msg2 to i8*, !dbg !5823
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 16, i1 false), !dbg !5823
  %3 = load i32, i32* %msg_type.addr, align 4, !dbg !5824
  %hdr3 = getelementptr inbounds %struct.anon.68, %struct.anon.68* %msg, i32 0, i32 0, !dbg !5825
  %type = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %hdr3, i32 0, i32 0, !dbg !5826
  store i32 %3, i32* %type, align 4, !dbg !5827
  %4 = load i8*, i8** %reply.addr, align 8, !dbg !5828
  %call = call i64 @strlen(i8* %4) #9, !dbg !5829
  %add = add i64 %call, 1, !dbg !5830
  %conv = trunc i64 %add to i32, !dbg !5829
  %hdr4 = getelementptr inbounds %struct.anon.68, %struct.anon.68* %msg, i32 0, i32 0, !dbg !5831
  %len = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %hdr4, i32 0, i32 3, !dbg !5832
  store i32 %conv, i32* %len, align 4, !dbg !5833
  %hdr5 = getelementptr inbounds %struct.anon.68, %struct.anon.68* %msg, i32 0, i32 0, !dbg !5834
  %len6 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %hdr5, i32 0, i32 3, !dbg !5836
  %5 = load i32, i32* %len6, align 4, !dbg !5836
  %conv7 = zext i32 %5 to i64, !dbg !5837
  %cmp = icmp ugt i64 %conv7, 16, !dbg !5838
  br i1 %cmp, label %if.then, label %if.end, !dbg !5839

if.then:                                          ; preds = %entry
  store i32 -7, i32* %retval, align 4, !dbg !5840
  br label %return, !dbg !5840

if.end:                                           ; preds = %entry
  %body = getelementptr inbounds %struct.anon.68, %struct.anon.68* %msg, i32 0, i32 1, !dbg !5841
  %6 = bitcast [16 x i8]* %body to i8*, !dbg !5842
  %7 = load i8*, i8** %reply.addr, align 8, !dbg !5843
  %hdr9 = getelementptr inbounds %struct.anon.68, %struct.anon.68* %msg, i32 0, i32 0, !dbg !5844
  %len10 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %hdr9, i32 0, i32 3, !dbg !5845
  %8 = load i32, i32* %len10, align 4, !dbg !5845
  %conv11 = zext i32 %8 to i64, !dbg !5846
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 1 %7, i64 %conv11, i1 false), !dbg !5842
  %9 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5847
  %reply_mutex = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %9, i32 0, i32 5, !dbg !5848
  call void @mutex_lock(%struct.mutex* %reply_mutex) #9, !dbg !5849
  %10 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5850
  %read_buffers = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %10, i32 0, i32 6, !dbg !5851
  %11 = bitcast %struct.anon.68* %msg to i8*, !dbg !5852
  %hdr12 = getelementptr inbounds %struct.anon.68, %struct.anon.68* %msg, i32 0, i32 0, !dbg !5853
  %len13 = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %hdr12, i32 0, i32 3, !dbg !5854
  %12 = load i32, i32* %len13, align 4, !dbg !5854
  %conv14 = zext i32 %12 to i64, !dbg !5855
  %add15 = add i64 16, %conv14, !dbg !5856
  %call16 = call i32 @queue_reply(%struct.list_head* %read_buffers, i8* %11, i64 %add15) #9, !dbg !5857
  store i32 %call16, i32* %rc, align 4, !dbg !5858
  %13 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5859
  %read_waitq = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %13, i32 0, i32 7, !dbg !5859
  call void @__wake_up(%struct.wait_queue_head* %read_waitq, i32 3, i32 1, i8* null) #9, !dbg !5859
  %14 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5860
  %reply_mutex17 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %14, i32 0, i32 5, !dbg !5861
  call void @mutex_unlock(%struct.mutex* %reply_mutex17) #9, !dbg !5862
  %15 = load i32, i32* %rc, align 4, !dbg !5863
  %tobool = icmp ne i32 %15, 0, !dbg !5863
  br i1 %tobool, label %if.end20, label %if.then18, !dbg !5865

if.then18:                                        ; preds = %if.end
  %16 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u.addr, align 8, !dbg !5866
  %kref = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %16, i32 0, i32 8, !dbg !5867
  %call19 = call i32 @kref_put(%struct.kref* %kref, void (%struct.kref*)* @xenbus_file_free) #9, !dbg !5868
  br label %if.end20, !dbg !5868

if.end20:                                         ; preds = %if.then18, %if.end
  %17 = load i32, i32* %rc, align 4, !dbg !5869
  store i32 %17, i32* %retval, align 4, !dbg !5870
  br label %return, !dbg !5870

return:                                           ; preds = %if.end20, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !5871
  ret i32 %18, !dbg !5871
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.watch_adapter* @alloc_watch_adapter(i8* %path, i8* %token) #0 !dbg !5872 {
entry:
  %retval = alloca %struct.watch_adapter*, align 8
  %path.addr = alloca i8*, align 8
  %token.addr = alloca i8*, align 8
  %watch = alloca %struct.watch_adapter*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !5875, metadata !DIExpression()), !dbg !5876
  store i8* %token, i8** %token.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %token.addr, metadata !5877, metadata !DIExpression()), !dbg !5878
  call void @llvm.dbg.declare(metadata %struct.watch_adapter** %watch, metadata !5879, metadata !DIExpression()), !dbg !5880
  %call = call i8* @kzalloc(i64 64, i32 3264) #9, !dbg !5881
  %0 = bitcast i8* %call to %struct.watch_adapter*, !dbg !5881
  store %struct.watch_adapter* %0, %struct.watch_adapter** %watch, align 8, !dbg !5882
  %1 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5883
  %cmp = icmp eq %struct.watch_adapter* %1, null, !dbg !5885
  br i1 %cmp, label %if.then, label %if.end, !dbg !5886

if.then:                                          ; preds = %entry
  br label %out_fail, !dbg !5887

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %path.addr, align 8, !dbg !5888
  %call1 = call noalias i8* @kstrdup(i8* %2, i32 3264) #9, !dbg !5889
  %3 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5890
  %watch2 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %3, i32 0, i32 1, !dbg !5891
  %node = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %watch2, i32 0, i32 1, !dbg !5892
  store i8* %call1, i8** %node, align 8, !dbg !5893
  %4 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5894
  %watch3 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %4, i32 0, i32 1, !dbg !5896
  %node4 = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %watch3, i32 0, i32 1, !dbg !5897
  %5 = load i8*, i8** %node4, align 8, !dbg !5897
  %cmp5 = icmp eq i8* %5, null, !dbg !5898
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !5899

if.then6:                                         ; preds = %if.end
  br label %out_free, !dbg !5900

if.end7:                                          ; preds = %if.end
  %6 = load i8*, i8** %token.addr, align 8, !dbg !5901
  %call8 = call noalias i8* @kstrdup(i8* %6, i32 3264) #9, !dbg !5902
  %7 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5903
  %token9 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %7, i32 0, i32 3, !dbg !5904
  store i8* %call8, i8** %token9, align 8, !dbg !5905
  %8 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5906
  %token10 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %8, i32 0, i32 3, !dbg !5908
  %9 = load i8*, i8** %token10, align 8, !dbg !5908
  %cmp11 = icmp eq i8* %9, null, !dbg !5909
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !5910

if.then12:                                        ; preds = %if.end7
  br label %out_free, !dbg !5911

if.end13:                                         ; preds = %if.end7
  %10 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5912
  store %struct.watch_adapter* %10, %struct.watch_adapter** %retval, align 8, !dbg !5913
  br label %return, !dbg !5913

out_free:                                         ; preds = %if.then12, %if.then6
  call void @llvm.dbg.label(metadata !5914), !dbg !5915
  %11 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !5916
  call void @free_watch_adapter(%struct.watch_adapter* %11) #9, !dbg !5917
  br label %out_fail, !dbg !5917

out_fail:                                         ; preds = %out_free, %if.then
  call void @llvm.dbg.label(metadata !5918), !dbg !5919
  store %struct.watch_adapter* null, %struct.watch_adapter** %retval, align 8, !dbg !5920
  br label %return, !dbg !5920

return:                                           ; preds = %out_fail, %if.end13
  %12 = load %struct.watch_adapter*, %struct.watch_adapter** %retval, align 8, !dbg !5921
  ret %struct.watch_adapter* %12, !dbg !5921
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @watch_fired(%struct.xenbus_watch* %watch, i8* %path, i8* %token) #0 !dbg !5922 {
entry:
  %watch.addr = alloca %struct.xenbus_watch*, align 8
  %path.addr = alloca i8*, align 8
  %token.addr = alloca i8*, align 8
  %adap = alloca %struct.watch_adapter*, align 8
  %hdr = alloca %struct.xsd_sockmsg, align 4
  %token_caller = alloca i8*, align 8
  %path_len = alloca i32, align 4
  %tok_len = alloca i32, align 4
  %body_len = alloca i32, align 4
  %ret = alloca i32, align 4
  %staging_q = alloca %struct.list_head, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.watch_adapter*, align 8
  store %struct.xenbus_watch* %watch, %struct.xenbus_watch** %watch.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.xenbus_watch** %watch.addr, metadata !5923, metadata !DIExpression()), !dbg !5924
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !5925, metadata !DIExpression()), !dbg !5926
  store i8* %token, i8** %token.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %token.addr, metadata !5927, metadata !DIExpression()), !dbg !5928
  call void @llvm.dbg.declare(metadata %struct.watch_adapter** %adap, metadata !5929, metadata !DIExpression()), !dbg !5930
  call void @llvm.dbg.declare(metadata %struct.xsd_sockmsg* %hdr, metadata !5931, metadata !DIExpression()), !dbg !5932
  call void @llvm.dbg.declare(metadata i8** %token_caller, metadata !5933, metadata !DIExpression()), !dbg !5934
  call void @llvm.dbg.declare(metadata i32* %path_len, metadata !5935, metadata !DIExpression()), !dbg !5936
  call void @llvm.dbg.declare(metadata i32* %tok_len, metadata !5937, metadata !DIExpression()), !dbg !5938
  call void @llvm.dbg.declare(metadata i32* %body_len, metadata !5939, metadata !DIExpression()), !dbg !5940
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5941, metadata !DIExpression()), !dbg !5942
  call void @llvm.dbg.declare(metadata %struct.list_head* %staging_q, metadata !5943, metadata !DIExpression()), !dbg !5944
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %staging_q, i32 0, i32 0, !dbg !5944
  store %struct.list_head* %staging_q, %struct.list_head** %next, align 8, !dbg !5944
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %staging_q, i32 0, i32 1, !dbg !5944
  store %struct.list_head* %staging_q, %struct.list_head** %prev, align 8, !dbg !5944
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !5945, metadata !DIExpression()), !dbg !5947
  %0 = load %struct.xenbus_watch*, %struct.xenbus_watch** %watch.addr, align 8, !dbg !5947
  %1 = bitcast %struct.xenbus_watch* %0 to i8*, !dbg !5947
  store i8* %1, i8** %__mptr, align 8, !dbg !5947
  br label %do.body, !dbg !5947

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5948

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !5947
  %add.ptr = getelementptr i8, i8* %2, i64 -16, !dbg !5947
  %3 = bitcast i8* %add.ptr to %struct.watch_adapter*, !dbg !5947
  store %struct.watch_adapter* %3, %struct.watch_adapter** %tmp, align 8, !dbg !5948
  %4 = load %struct.watch_adapter*, %struct.watch_adapter** %tmp, align 8, !dbg !5947
  store %struct.watch_adapter* %4, %struct.watch_adapter** %adap, align 8, !dbg !5950
  %5 = load %struct.watch_adapter*, %struct.watch_adapter** %adap, align 8, !dbg !5951
  %token1 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %5, i32 0, i32 3, !dbg !5952
  %6 = load i8*, i8** %token1, align 8, !dbg !5952
  store i8* %6, i8** %token_caller, align 8, !dbg !5953
  %7 = load i8*, i8** %path.addr, align 8, !dbg !5954
  %call = call i64 @strlen(i8* %7) #9, !dbg !5955
  %add = add i64 %call, 1, !dbg !5956
  %conv = trunc i64 %add to i32, !dbg !5955
  store i32 %conv, i32* %path_len, align 4, !dbg !5957
  %8 = load i8*, i8** %token_caller, align 8, !dbg !5958
  %call2 = call i64 @strlen(i8* %8) #9, !dbg !5959
  %add3 = add i64 %call2, 1, !dbg !5960
  %conv4 = trunc i64 %add3 to i32, !dbg !5959
  store i32 %conv4, i32* %tok_len, align 4, !dbg !5961
  %9 = load i32, i32* %path_len, align 4, !dbg !5962
  %10 = load i32, i32* %tok_len, align 4, !dbg !5963
  %add5 = add i32 %9, %10, !dbg !5964
  store i32 %add5, i32* %body_len, align 4, !dbg !5965
  %type = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %hdr, i32 0, i32 0, !dbg !5966
  store i32 15, i32* %type, align 4, !dbg !5967
  %11 = load i32, i32* %body_len, align 4, !dbg !5968
  %len = getelementptr inbounds %struct.xsd_sockmsg, %struct.xsd_sockmsg* %hdr, i32 0, i32 3, !dbg !5969
  store i32 %11, i32* %len, align 4, !dbg !5970
  %12 = load %struct.watch_adapter*, %struct.watch_adapter** %adap, align 8, !dbg !5971
  %dev_data = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %12, i32 0, i32 2, !dbg !5972
  %13 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %dev_data, align 8, !dbg !5972
  %reply_mutex = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %13, i32 0, i32 5, !dbg !5973
  call void @mutex_lock(%struct.mutex* %reply_mutex) #9, !dbg !5974
  %14 = bitcast %struct.xsd_sockmsg* %hdr to i8*, !dbg !5975
  %call6 = call i32 @queue_reply(%struct.list_head* %staging_q, i8* %14, i64 16) #9, !dbg !5976
  store i32 %call6, i32* %ret, align 4, !dbg !5977
  %15 = load i32, i32* %ret, align 4, !dbg !5978
  %tobool = icmp ne i32 %15, 0, !dbg !5978
  br i1 %tobool, label %if.end, label %if.then, !dbg !5980

if.then:                                          ; preds = %do.end
  %16 = load i8*, i8** %path.addr, align 8, !dbg !5981
  %17 = load i32, i32* %path_len, align 4, !dbg !5982
  %conv7 = sext i32 %17 to i64, !dbg !5982
  %call8 = call i32 @queue_reply(%struct.list_head* %staging_q, i8* %16, i64 %conv7) #9, !dbg !5983
  store i32 %call8, i32* %ret, align 4, !dbg !5984
  br label %if.end, !dbg !5985

if.end:                                           ; preds = %if.then, %do.end
  %18 = load i32, i32* %ret, align 4, !dbg !5986
  %tobool9 = icmp ne i32 %18, 0, !dbg !5986
  br i1 %tobool9, label %if.end13, label %if.then10, !dbg !5988

if.then10:                                        ; preds = %if.end
  %19 = load i8*, i8** %token_caller, align 8, !dbg !5989
  %20 = load i32, i32* %tok_len, align 4, !dbg !5990
  %conv11 = sext i32 %20 to i64, !dbg !5990
  %call12 = call i32 @queue_reply(%struct.list_head* %staging_q, i8* %19, i64 %conv11) #9, !dbg !5991
  store i32 %call12, i32* %ret, align 4, !dbg !5992
  br label %if.end13, !dbg !5993

if.end13:                                         ; preds = %if.then10, %if.end
  %21 = load i32, i32* %ret, align 4, !dbg !5994
  %tobool14 = icmp ne i32 %21, 0, !dbg !5994
  br i1 %tobool14, label %if.else, label %if.then15, !dbg !5996

if.then15:                                        ; preds = %if.end13
  %22 = load %struct.watch_adapter*, %struct.watch_adapter** %adap, align 8, !dbg !5997
  %dev_data16 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %22, i32 0, i32 2, !dbg !5999
  %23 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %dev_data16, align 8, !dbg !5999
  %read_buffers = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %23, i32 0, i32 6, !dbg !6000
  call void @list_splice_tail(%struct.list_head* %staging_q, %struct.list_head* %read_buffers) #9, !dbg !6001
  %24 = load %struct.watch_adapter*, %struct.watch_adapter** %adap, align 8, !dbg !6002
  %dev_data17 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %24, i32 0, i32 2, !dbg !6002
  %25 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %dev_data17, align 8, !dbg !6002
  %read_waitq = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %25, i32 0, i32 7, !dbg !6002
  call void @__wake_up(%struct.wait_queue_head* %read_waitq, i32 3, i32 1, i8* null) #9, !dbg !6002
  br label %if.end18, !dbg !6003

if.else:                                          ; preds = %if.end13
  call void @queue_cleanup(%struct.list_head* %staging_q) #9, !dbg !6004
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then15
  %26 = load %struct.watch_adapter*, %struct.watch_adapter** %adap, align 8, !dbg !6005
  %dev_data19 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %26, i32 0, i32 2, !dbg !6006
  %27 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %dev_data19, align 8, !dbg !6006
  %reply_mutex20 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %27, i32 0, i32 5, !dbg !6007
  call void @mutex_unlock(%struct.mutex* %reply_mutex20) #9, !dbg !6008
  ret void, !dbg !6009
}

; Function Attrs: noredzone
declare dso_local i32 @register_xenbus_watch(%struct.xenbus_watch*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @free_watch_adapter(%struct.watch_adapter* %watch) #0 !dbg !6010 {
entry:
  %watch.addr = alloca %struct.watch_adapter*, align 8
  store %struct.watch_adapter* %watch, %struct.watch_adapter** %watch.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.watch_adapter** %watch.addr, metadata !6013, metadata !DIExpression()), !dbg !6014
  %0 = load %struct.watch_adapter*, %struct.watch_adapter** %watch.addr, align 8, !dbg !6015
  %watch1 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %0, i32 0, i32 1, !dbg !6016
  %node = getelementptr inbounds %struct.xenbus_watch, %struct.xenbus_watch* %watch1, i32 0, i32 1, !dbg !6017
  %1 = load i8*, i8** %node, align 8, !dbg !6017
  call void @kfree(i8* %1) #9, !dbg !6018
  %2 = load %struct.watch_adapter*, %struct.watch_adapter** %watch.addr, align 8, !dbg !6019
  %token = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %2, i32 0, i32 3, !dbg !6020
  %3 = load i8*, i8** %token, align 8, !dbg !6020
  call void @kfree(i8* %3) #9, !dbg !6021
  %4 = load %struct.watch_adapter*, %struct.watch_adapter** %watch.addr, align 8, !dbg !6022
  %5 = bitcast %struct.watch_adapter* %4 to i8*, !dbg !6022
  call void @kfree(i8* %5) #9, !dbg !6023
  ret void, !dbg !6024
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !6025 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !6026, metadata !DIExpression()), !dbg !6027
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !6028, metadata !DIExpression()), !dbg !6029
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !6030
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6031
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !6032
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !6033
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6033
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #9, !dbg !6034
  ret void, !dbg !6035
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @unregister_xenbus_watch(%struct.xenbus_watch*) #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !6036 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4111, metadata !DIExpression()), !dbg !6037
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4123, metadata !DIExpression()), !dbg !6040
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4125, metadata !DIExpression()), !dbg !6041
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4127, metadata !DIExpression()), !dbg !6042
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4129, metadata !DIExpression()), !dbg !6043
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4135, metadata !DIExpression()), !dbg !6045
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4141, metadata !DIExpression()), !dbg !6047
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4150, metadata !DIExpression()), !dbg !6050
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4152, metadata !DIExpression()), !dbg !6051
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4154, metadata !DIExpression()), !dbg !6052
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4156, metadata !DIExpression()), !dbg !6053
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4158, metadata !DIExpression()), !dbg !6054
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4160, metadata !DIExpression()), !dbg !6055
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4162, metadata !DIExpression()), !dbg !6056
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4164, metadata !DIExpression()), !dbg !6057
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !6058, metadata !DIExpression()), !dbg !6059
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !6060, metadata !DIExpression()), !dbg !6061
  %0 = load i64, i64* %size.addr, align 8, !dbg !6062
  %1 = load i32, i32* %flags.addr, align 4, !dbg !6063
  %or = or i32 %1, 256, !dbg !6064
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !6065
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !6066
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !6067

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !6068
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !6069
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !6070

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !6071
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !6072
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6073
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !6074
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !6054
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !6075
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !6076
  %10 = load i32, i32* %order.i.i, align 4, !dbg !6077
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !6078
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !6079
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !6080
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !6081
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !6081
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !6081
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !6081
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !6081
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !6082
  br label %kmalloc.exit, !dbg !6082

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !6083
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6084
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !6084
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !6085

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !6086
  br label %kmalloc_index.exit.i, !dbg !6086

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6087
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !6088
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !6089

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6090
  br label %kmalloc_index.exit.i, !dbg !6090

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6091
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !6092
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !6093

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6094
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !6095
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !6096

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !6097
  br label %kmalloc_index.exit.i, !dbg !6097

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6098
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !6099
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !6100

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6101
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !6102
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !6103

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !6104
  br label %kmalloc_index.exit.i, !dbg !6104

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6105
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !6106
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !6107

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !6108
  br label %kmalloc_index.exit.i, !dbg !6108

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6109
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !6110
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !6111

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !6112
  br label %kmalloc_index.exit.i, !dbg !6112

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6113
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !6114
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !6115

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !6116
  br label %kmalloc_index.exit.i, !dbg !6116

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6117
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !6118
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !6119

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !6120
  br label %kmalloc_index.exit.i, !dbg !6120

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6121
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !6122
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !6123

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !6124
  br label %kmalloc_index.exit.i, !dbg !6124

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6125
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !6126
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !6127

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !6128
  br label %kmalloc_index.exit.i, !dbg !6128

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6129
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !6130
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !6131

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !6132
  br label %kmalloc_index.exit.i, !dbg !6132

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6133
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !6134
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !6135

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !6136
  br label %kmalloc_index.exit.i, !dbg !6136

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6137
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !6138
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !6139

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !6140
  br label %kmalloc_index.exit.i, !dbg !6140

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6141
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !6142
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !6143

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !6144
  br label %kmalloc_index.exit.i, !dbg !6144

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6145
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !6146
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !6147

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !6148
  br label %kmalloc_index.exit.i, !dbg !6148

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6149
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !6150
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !6151

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !6152
  br label %kmalloc_index.exit.i, !dbg !6152

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6153
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !6154
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !6155

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !6156
  br label %kmalloc_index.exit.i, !dbg !6156

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6157
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !6158
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !6159

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !6160
  br label %kmalloc_index.exit.i, !dbg !6160

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6161
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !6162
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !6163

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !6164
  br label %kmalloc_index.exit.i, !dbg !6164

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6165
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !6166
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !6167

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !6168
  br label %kmalloc_index.exit.i, !dbg !6168

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6169
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !6170
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !6171

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !6172
  br label %kmalloc_index.exit.i, !dbg !6172

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6173
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !6174
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !6175

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !6176
  br label %kmalloc_index.exit.i, !dbg !6176

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6177
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !6178
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !6179

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !6180
  br label %kmalloc_index.exit.i, !dbg !6180

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6181
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !6182
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !6183

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !6184
  br label %kmalloc_index.exit.i, !dbg !6184

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6185
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !6186
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !6187

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !6188
  br label %kmalloc_index.exit.i, !dbg !6188

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6189
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !6190
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !6191

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !6192
  br label %kmalloc_index.exit.i, !dbg !6192

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6193
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !6194
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !6195

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !6196
  br label %kmalloc_index.exit.i, !dbg !6196

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !6197
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !6198
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !6199

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !6200
  br label %kmalloc_index.exit.i, !dbg !6200

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !6201, !srcloc !4353
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 230) #10, !dbg !6202, !srcloc !4357
  unreachable, !dbg !6203

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !6204
  store i32 %45, i32* %index.i, align 4, !dbg !6205
  %46 = load i32, i32* %index.i, align 4, !dbg !6206
  %tobool.i = icmp ne i32 %46, 0, !dbg !6206
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !6207

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !6208
  br label %kmalloc.exit, !dbg !6208

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !6209
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6210
  %and.i.i = and i32 %48, 17, !dbg !6210
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !6210
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !6210
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !6210
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !6210
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !6211

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !6212
  br label %kmalloc_type.exit.i, !dbg !6212

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !6213
  %and2.i.i = and i32 %49, 1, !dbg !6214
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !6213
  %50 = zext i1 %tobool3.i.i to i64, !dbg !6213
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !6213
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !6215
  br label %kmalloc_type.exit.i, !dbg !6215

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !6216
  %idxprom.i = zext i32 %51 to i64, !dbg !6217
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !6217
  %52 = load i32, i32* %index.i, align 4, !dbg !6218
  %idxprom6.i = zext i32 %52 to i64, !dbg !6217
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !6217
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !6217
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !6219
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !6220
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6221
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6222
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !6223
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !6223
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !6223
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !6223
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !6223
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !6042
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !6224
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !6225
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !6226
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !6227
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !6228
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !6229
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !6230
  store i8* %62, i8** %retval.i, align 8, !dbg !6231
  br label %kmalloc.exit, !dbg !6231

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !6232
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !6233
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !6234
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !6234
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !6234
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !6234
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !6234
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !6235
  br label %kmalloc.exit, !dbg !6235

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !6236
  ret i8* %65, !dbg !6237
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kstrdup(i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @xenbus_dev_request_and_reply(%struct.xsd_sockmsg*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @poll_wait(%struct.file* %filp, %struct.wait_queue_head* %wait_address, %struct.poll_table_struct* %p) #0 !dbg !6238 {
entry:
  %filp.addr = alloca %struct.file*, align 8
  %wait_address.addr = alloca %struct.wait_queue_head*, align 8
  %p.addr = alloca %struct.poll_table_struct*, align 8
  store %struct.file* %filp, %struct.file** %filp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %filp.addr, metadata !6241, metadata !DIExpression()), !dbg !6242
  store %struct.wait_queue_head* %wait_address, %struct.wait_queue_head** %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.wait_queue_head** %wait_address.addr, metadata !6243, metadata !DIExpression()), !dbg !6244
  store %struct.poll_table_struct* %p, %struct.poll_table_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.poll_table_struct** %p.addr, metadata !6245, metadata !DIExpression()), !dbg !6246
  %0 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !6247
  %tobool = icmp ne %struct.poll_table_struct* %0, null, !dbg !6247
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !6249

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !6250
  %_qproc = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %1, i32 0, i32 0, !dbg !6251
  %2 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc, align 8, !dbg !6251
  %tobool1 = icmp ne void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)* %2, null, !dbg !6250
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !6252

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load %struct.wait_queue_head*, %struct.wait_queue_head** %wait_address.addr, align 8, !dbg !6253
  %tobool3 = icmp ne %struct.wait_queue_head* %3, null, !dbg !6253
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6254

if.then:                                          ; preds = %land.lhs.true2
  %4 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !6255
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, %struct.poll_table_struct* %4, i32 0, i32 0, !dbg !6256
  %5 = load void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)*, void (%struct.file*, %struct.wait_queue_head*, %struct.poll_table_struct*)** %_qproc4, align 8, !dbg !6256
  %6 = load %struct.file*, %struct.file** %filp.addr, align 8, !dbg !6257
  %7 = load %struct.wait_queue_head*, %struct.wait_queue_head** %wait_address.addr, align 8, !dbg !6258
  %8 = load %struct.poll_table_struct*, %struct.poll_table_struct** %p.addr, align 8, !dbg !6259
  call void %5(%struct.file* %6, %struct.wait_queue_head* %7, %struct.poll_table_struct* %8) #9, !dbg !6255
  br label %if.end, !dbg !6255

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !6260
}

; Function Attrs: noredzone
declare dso_local i32 @stream_open(%struct.inode*, %struct.file*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kref_init(%struct.kref* %kref) #0 !dbg !6261 {
entry:
  %kref.addr = alloca %struct.kref*, align 8
  store %struct.kref* %kref, %struct.kref** %kref.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kref** %kref.addr, metadata !6262, metadata !DIExpression()), !dbg !6263
  %0 = load %struct.kref*, %struct.kref** %kref.addr, align 8, !dbg !6264
  %refcount = getelementptr inbounds %struct.kref, %struct.kref* %0, i32 0, i32 0, !dbg !6265
  call void @refcount_set(%struct.refcount_struct* %refcount, i32 1) #9, !dbg !6266
  ret void, !dbg !6267
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !6268 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !6269, metadata !DIExpression()), !dbg !6270
  br label %do.body, !dbg !6271

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6272

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6274

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6272

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6276
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6276
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !6276
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !6276
  br label %do.end3, !dbg !6276

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6272

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6278
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !6279
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !6280
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !6281
  ret void, !dbg !6282
}

; Function Attrs: noredzone
declare dso_local void @__init_waitqueue_head(%struct.wait_queue_head*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_work(%struct.work_struct* %work, i32 %onstack) #0 !dbg !6283 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %onstack.addr = alloca i32, align 4
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !6286, metadata !DIExpression()), !dbg !6287
  store i32 %onstack, i32* %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onstack.addr, metadata !6288, metadata !DIExpression()), !dbg !6289
  ret void, !dbg !6290
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @xenbus_worker(%struct.work_struct* %wq) #0 !dbg !6291 {
entry:
  %wq.addr = alloca %struct.work_struct*, align 8
  %u = alloca %struct.xenbus_file_priv*, align 8
  %trans = alloca %struct.xenbus_transaction_holder*, align 8
  %tmp = alloca %struct.xenbus_transaction_holder*, align 8
  %watch = alloca %struct.watch_adapter*, align 8
  %tmp_watch = alloca %struct.watch_adapter*, align 8
  %rb = alloca %struct.read_buffer*, align 8
  %tmp_rb = alloca %struct.read_buffer*, align 8
  %__mptr = alloca i8*, align 8
  %tmp1 = alloca %struct.xenbus_file_priv*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp5 = alloca %struct.xenbus_transaction_holder*, align 8
  %__mptr7 = alloca i8*, align 8
  %tmp11 = alloca %struct.xenbus_transaction_holder*, align 8
  %__mptr16 = alloca i8*, align 8
  %tmp21 = alloca %struct.xenbus_transaction_holder*, align 8
  %__mptr23 = alloca i8*, align 8
  %tmp27 = alloca %struct.watch_adapter*, align 8
  %__mptr29 = alloca i8*, align 8
  %tmp34 = alloca %struct.watch_adapter*, align 8
  %__mptr45 = alloca i8*, align 8
  %tmp50 = alloca %struct.watch_adapter*, align 8
  %__mptr53 = alloca i8*, align 8
  %tmp57 = alloca %struct.read_buffer*, align 8
  %__mptr59 = alloca i8*, align 8
  %tmp64 = alloca %struct.read_buffer*, align 8
  %__mptr74 = alloca i8*, align 8
  %tmp79 = alloca %struct.read_buffer*, align 8
  store %struct.work_struct* %wq, %struct.work_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %wq.addr, metadata !6292, metadata !DIExpression()), !dbg !6293
  call void @llvm.dbg.declare(metadata %struct.xenbus_file_priv** %u, metadata !6294, metadata !DIExpression()), !dbg !6295
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction_holder** %trans, metadata !6296, metadata !DIExpression()), !dbg !6297
  call void @llvm.dbg.declare(metadata %struct.xenbus_transaction_holder** %tmp, metadata !6298, metadata !DIExpression()), !dbg !6299
  call void @llvm.dbg.declare(metadata %struct.watch_adapter** %watch, metadata !6300, metadata !DIExpression()), !dbg !6301
  call void @llvm.dbg.declare(metadata %struct.watch_adapter** %tmp_watch, metadata !6302, metadata !DIExpression()), !dbg !6303
  call void @llvm.dbg.declare(metadata %struct.read_buffer** %rb, metadata !6304, metadata !DIExpression()), !dbg !6305
  call void @llvm.dbg.declare(metadata %struct.read_buffer** %tmp_rb, metadata !6306, metadata !DIExpression()), !dbg !6307
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !6308, metadata !DIExpression()), !dbg !6310
  %0 = load %struct.work_struct*, %struct.work_struct** %wq.addr, align 8, !dbg !6310
  %1 = bitcast %struct.work_struct* %0 to i8*, !dbg !6310
  store i8* %1, i8** %__mptr, align 8, !dbg !6310
  br label %do.body, !dbg !6310

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6311

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !6310
  %add.ptr = getelementptr i8, i8* %2, i64 -4224, !dbg !6310
  %3 = bitcast i8* %add.ptr to %struct.xenbus_file_priv*, !dbg !6310
  store %struct.xenbus_file_priv* %3, %struct.xenbus_file_priv** %tmp1, align 8, !dbg !6311
  %4 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %tmp1, align 8, !dbg !6310
  store %struct.xenbus_file_priv* %4, %struct.xenbus_file_priv** %u, align 8, !dbg !6313
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !6314, metadata !DIExpression()), !dbg !6317
  %5 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !6317
  %transactions = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %5, i32 0, i32 1, !dbg !6317
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %transactions, i32 0, i32 0, !dbg !6317
  %6 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !6317
  %7 = bitcast %struct.list_head* %6 to i8*, !dbg !6317
  store i8* %7, i8** %__mptr2, align 8, !dbg !6317
  br label %do.body3, !dbg !6317

do.body3:                                         ; preds = %do.end
  br label %do.end4, !dbg !6318

do.end4:                                          ; preds = %do.body3
  %8 = load i8*, i8** %__mptr2, align 8, !dbg !6317
  %add.ptr6 = getelementptr i8, i8* %8, i64 0, !dbg !6317
  %9 = bitcast i8* %add.ptr6 to %struct.xenbus_transaction_holder*, !dbg !6317
  store %struct.xenbus_transaction_holder* %9, %struct.xenbus_transaction_holder** %tmp5, align 8, !dbg !6318
  %10 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %tmp5, align 8, !dbg !6317
  store %struct.xenbus_transaction_holder* %10, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !6320
  call void @llvm.dbg.declare(metadata i8** %__mptr7, metadata !6321, metadata !DIExpression()), !dbg !6323
  %11 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !6323
  %list = getelementptr inbounds %struct.xenbus_transaction_holder, %struct.xenbus_transaction_holder* %11, i32 0, i32 0, !dbg !6323
  %next8 = getelementptr inbounds %struct.list_head, %struct.list_head* %list, i32 0, i32 0, !dbg !6323
  %12 = load %struct.list_head*, %struct.list_head** %next8, align 8, !dbg !6323
  %13 = bitcast %struct.list_head* %12 to i8*, !dbg !6323
  store i8* %13, i8** %__mptr7, align 8, !dbg !6323
  br label %do.body9, !dbg !6323

do.body9:                                         ; preds = %do.end4
  br label %do.end10, !dbg !6324

do.end10:                                         ; preds = %do.body9
  %14 = load i8*, i8** %__mptr7, align 8, !dbg !6323
  %add.ptr12 = getelementptr i8, i8* %14, i64 0, !dbg !6323
  %15 = bitcast i8* %add.ptr12 to %struct.xenbus_transaction_holder*, !dbg !6323
  store %struct.xenbus_transaction_holder* %15, %struct.xenbus_transaction_holder** %tmp11, align 8, !dbg !6324
  %16 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %tmp11, align 8, !dbg !6323
  store %struct.xenbus_transaction_holder* %16, %struct.xenbus_transaction_holder** %tmp, align 8, !dbg !6320
  br label %for.cond, !dbg !6320

for.cond:                                         ; preds = %do.end20, %do.end10
  %17 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !6326
  %list13 = getelementptr inbounds %struct.xenbus_transaction_holder, %struct.xenbus_transaction_holder* %17, i32 0, i32 0, !dbg !6326
  %18 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !6326
  %transactions14 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %18, i32 0, i32 1, !dbg !6326
  %cmp = icmp eq %struct.list_head* %list13, %transactions14, !dbg !6326
  %lnot = xor i1 %cmp, true, !dbg !6326
  br i1 %lnot, label %for.body, label %for.end, !dbg !6320

for.body:                                         ; preds = %for.cond
  %19 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !6328
  %handle = getelementptr inbounds %struct.xenbus_transaction_holder, %struct.xenbus_transaction_holder* %19, i32 0, i32 1, !dbg !6330
  %coerce.dive = getelementptr inbounds %struct.xenbus_transaction, %struct.xenbus_transaction* %handle, i32 0, i32 0, !dbg !6331
  %20 = load i32, i32* %coerce.dive, align 8, !dbg !6331
  %call = call i32 @xenbus_transaction_end(i32 %20, i32 1) #9, !dbg !6331
  %21 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !6332
  %list15 = getelementptr inbounds %struct.xenbus_transaction_holder, %struct.xenbus_transaction_holder* %21, i32 0, i32 0, !dbg !6333
  call void @list_del(%struct.list_head* %list15) #9, !dbg !6334
  %22 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !6335
  %23 = bitcast %struct.xenbus_transaction_holder* %22 to i8*, !dbg !6335
  call void @kfree(i8* %23) #9, !dbg !6336
  br label %for.inc, !dbg !6337

for.inc:                                          ; preds = %for.body
  %24 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %tmp, align 8, !dbg !6326
  store %struct.xenbus_transaction_holder* %24, %struct.xenbus_transaction_holder** %trans, align 8, !dbg !6326
  call void @llvm.dbg.declare(metadata i8** %__mptr16, metadata !6338, metadata !DIExpression()), !dbg !6340
  %25 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %tmp, align 8, !dbg !6340
  %list17 = getelementptr inbounds %struct.xenbus_transaction_holder, %struct.xenbus_transaction_holder* %25, i32 0, i32 0, !dbg !6340
  %next18 = getelementptr inbounds %struct.list_head, %struct.list_head* %list17, i32 0, i32 0, !dbg !6340
  %26 = load %struct.list_head*, %struct.list_head** %next18, align 8, !dbg !6340
  %27 = bitcast %struct.list_head* %26 to i8*, !dbg !6340
  store i8* %27, i8** %__mptr16, align 8, !dbg !6340
  br label %do.body19, !dbg !6340

do.body19:                                        ; preds = %for.inc
  br label %do.end20, !dbg !6341

do.end20:                                         ; preds = %do.body19
  %28 = load i8*, i8** %__mptr16, align 8, !dbg !6340
  %add.ptr22 = getelementptr i8, i8* %28, i64 0, !dbg !6340
  %29 = bitcast i8* %add.ptr22 to %struct.xenbus_transaction_holder*, !dbg !6340
  store %struct.xenbus_transaction_holder* %29, %struct.xenbus_transaction_holder** %tmp21, align 8, !dbg !6341
  %30 = load %struct.xenbus_transaction_holder*, %struct.xenbus_transaction_holder** %tmp21, align 8, !dbg !6340
  store %struct.xenbus_transaction_holder* %30, %struct.xenbus_transaction_holder** %tmp, align 8, !dbg !6326
  br label %for.cond, !dbg !6326, !llvm.loop !6343

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8** %__mptr23, metadata !6345, metadata !DIExpression()), !dbg !6348
  %31 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !6348
  %watches = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %31, i32 0, i32 2, !dbg !6348
  %next24 = getelementptr inbounds %struct.list_head, %struct.list_head* %watches, i32 0, i32 0, !dbg !6348
  %32 = load %struct.list_head*, %struct.list_head** %next24, align 8, !dbg !6348
  %33 = bitcast %struct.list_head* %32 to i8*, !dbg !6348
  store i8* %33, i8** %__mptr23, align 8, !dbg !6348
  br label %do.body25, !dbg !6348

do.body25:                                        ; preds = %for.end
  br label %do.end26, !dbg !6349

do.end26:                                         ; preds = %do.body25
  %34 = load i8*, i8** %__mptr23, align 8, !dbg !6348
  %add.ptr28 = getelementptr i8, i8* %34, i64 0, !dbg !6348
  %35 = bitcast i8* %add.ptr28 to %struct.watch_adapter*, !dbg !6348
  store %struct.watch_adapter* %35, %struct.watch_adapter** %tmp27, align 8, !dbg !6349
  %36 = load %struct.watch_adapter*, %struct.watch_adapter** %tmp27, align 8, !dbg !6348
  store %struct.watch_adapter* %36, %struct.watch_adapter** %watch, align 8, !dbg !6351
  call void @llvm.dbg.declare(metadata i8** %__mptr29, metadata !6352, metadata !DIExpression()), !dbg !6354
  %37 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !6354
  %list30 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %37, i32 0, i32 0, !dbg !6354
  %next31 = getelementptr inbounds %struct.list_head, %struct.list_head* %list30, i32 0, i32 0, !dbg !6354
  %38 = load %struct.list_head*, %struct.list_head** %next31, align 8, !dbg !6354
  %39 = bitcast %struct.list_head* %38 to i8*, !dbg !6354
  store i8* %39, i8** %__mptr29, align 8, !dbg !6354
  br label %do.body32, !dbg !6354

do.body32:                                        ; preds = %do.end26
  br label %do.end33, !dbg !6355

do.end33:                                         ; preds = %do.body32
  %40 = load i8*, i8** %__mptr29, align 8, !dbg !6354
  %add.ptr35 = getelementptr i8, i8* %40, i64 0, !dbg !6354
  %41 = bitcast i8* %add.ptr35 to %struct.watch_adapter*, !dbg !6354
  store %struct.watch_adapter* %41, %struct.watch_adapter** %tmp34, align 8, !dbg !6355
  %42 = load %struct.watch_adapter*, %struct.watch_adapter** %tmp34, align 8, !dbg !6354
  store %struct.watch_adapter* %42, %struct.watch_adapter** %tmp_watch, align 8, !dbg !6351
  br label %for.cond36, !dbg !6351

for.cond36:                                       ; preds = %do.end49, %do.end33
  %43 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !6357
  %list37 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %43, i32 0, i32 0, !dbg !6357
  %44 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !6357
  %watches38 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %44, i32 0, i32 2, !dbg !6357
  %cmp39 = icmp eq %struct.list_head* %list37, %watches38, !dbg !6357
  %lnot40 = xor i1 %cmp39, true, !dbg !6357
  br i1 %lnot40, label %for.body41, label %for.end52, !dbg !6351

for.body41:                                       ; preds = %for.cond36
  %45 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !6359
  %watch42 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %45, i32 0, i32 1, !dbg !6361
  call void @unregister_xenbus_watch(%struct.xenbus_watch* %watch42) #9, !dbg !6362
  %46 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !6363
  %list43 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %46, i32 0, i32 0, !dbg !6364
  call void @list_del(%struct.list_head* %list43) #9, !dbg !6365
  %47 = load %struct.watch_adapter*, %struct.watch_adapter** %watch, align 8, !dbg !6366
  call void @free_watch_adapter(%struct.watch_adapter* %47) #9, !dbg !6367
  br label %for.inc44, !dbg !6368

for.inc44:                                        ; preds = %for.body41
  %48 = load %struct.watch_adapter*, %struct.watch_adapter** %tmp_watch, align 8, !dbg !6357
  store %struct.watch_adapter* %48, %struct.watch_adapter** %watch, align 8, !dbg !6357
  call void @llvm.dbg.declare(metadata i8** %__mptr45, metadata !6369, metadata !DIExpression()), !dbg !6371
  %49 = load %struct.watch_adapter*, %struct.watch_adapter** %tmp_watch, align 8, !dbg !6371
  %list46 = getelementptr inbounds %struct.watch_adapter, %struct.watch_adapter* %49, i32 0, i32 0, !dbg !6371
  %next47 = getelementptr inbounds %struct.list_head, %struct.list_head* %list46, i32 0, i32 0, !dbg !6371
  %50 = load %struct.list_head*, %struct.list_head** %next47, align 8, !dbg !6371
  %51 = bitcast %struct.list_head* %50 to i8*, !dbg !6371
  store i8* %51, i8** %__mptr45, align 8, !dbg !6371
  br label %do.body48, !dbg !6371

do.body48:                                        ; preds = %for.inc44
  br label %do.end49, !dbg !6372

do.end49:                                         ; preds = %do.body48
  %52 = load i8*, i8** %__mptr45, align 8, !dbg !6371
  %add.ptr51 = getelementptr i8, i8* %52, i64 0, !dbg !6371
  %53 = bitcast i8* %add.ptr51 to %struct.watch_adapter*, !dbg !6371
  store %struct.watch_adapter* %53, %struct.watch_adapter** %tmp50, align 8, !dbg !6372
  %54 = load %struct.watch_adapter*, %struct.watch_adapter** %tmp50, align 8, !dbg !6371
  store %struct.watch_adapter* %54, %struct.watch_adapter** %tmp_watch, align 8, !dbg !6357
  br label %for.cond36, !dbg !6357, !llvm.loop !6374

for.end52:                                        ; preds = %for.cond36
  call void @llvm.dbg.declare(metadata i8** %__mptr53, metadata !6376, metadata !DIExpression()), !dbg !6379
  %55 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !6379
  %read_buffers = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %55, i32 0, i32 6, !dbg !6379
  %next54 = getelementptr inbounds %struct.list_head, %struct.list_head* %read_buffers, i32 0, i32 0, !dbg !6379
  %56 = load %struct.list_head*, %struct.list_head** %next54, align 8, !dbg !6379
  %57 = bitcast %struct.list_head* %56 to i8*, !dbg !6379
  store i8* %57, i8** %__mptr53, align 8, !dbg !6379
  br label %do.body55, !dbg !6379

do.body55:                                        ; preds = %for.end52
  br label %do.end56, !dbg !6380

do.end56:                                         ; preds = %do.body55
  %58 = load i8*, i8** %__mptr53, align 8, !dbg !6379
  %add.ptr58 = getelementptr i8, i8* %58, i64 0, !dbg !6379
  %59 = bitcast i8* %add.ptr58 to %struct.read_buffer*, !dbg !6379
  store %struct.read_buffer* %59, %struct.read_buffer** %tmp57, align 8, !dbg !6380
  %60 = load %struct.read_buffer*, %struct.read_buffer** %tmp57, align 8, !dbg !6379
  store %struct.read_buffer* %60, %struct.read_buffer** %rb, align 8, !dbg !6382
  call void @llvm.dbg.declare(metadata i8** %__mptr59, metadata !6383, metadata !DIExpression()), !dbg !6385
  %61 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !6385
  %list60 = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %61, i32 0, i32 0, !dbg !6385
  %next61 = getelementptr inbounds %struct.list_head, %struct.list_head* %list60, i32 0, i32 0, !dbg !6385
  %62 = load %struct.list_head*, %struct.list_head** %next61, align 8, !dbg !6385
  %63 = bitcast %struct.list_head* %62 to i8*, !dbg !6385
  store i8* %63, i8** %__mptr59, align 8, !dbg !6385
  br label %do.body62, !dbg !6385

do.body62:                                        ; preds = %do.end56
  br label %do.end63, !dbg !6386

do.end63:                                         ; preds = %do.body62
  %64 = load i8*, i8** %__mptr59, align 8, !dbg !6385
  %add.ptr65 = getelementptr i8, i8* %64, i64 0, !dbg !6385
  %65 = bitcast i8* %add.ptr65 to %struct.read_buffer*, !dbg !6385
  store %struct.read_buffer* %65, %struct.read_buffer** %tmp64, align 8, !dbg !6386
  %66 = load %struct.read_buffer*, %struct.read_buffer** %tmp64, align 8, !dbg !6385
  store %struct.read_buffer* %66, %struct.read_buffer** %tmp_rb, align 8, !dbg !6382
  br label %for.cond66, !dbg !6382

for.cond66:                                       ; preds = %do.end78, %do.end63
  %67 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !6388
  %list67 = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %67, i32 0, i32 0, !dbg !6388
  %68 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !6388
  %read_buffers68 = getelementptr inbounds %struct.xenbus_file_priv, %struct.xenbus_file_priv* %68, i32 0, i32 6, !dbg !6388
  %cmp69 = icmp eq %struct.list_head* %list67, %read_buffers68, !dbg !6388
  %lnot70 = xor i1 %cmp69, true, !dbg !6388
  br i1 %lnot70, label %for.body71, label %for.end81, !dbg !6382

for.body71:                                       ; preds = %for.cond66
  %69 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !6390
  %list72 = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %69, i32 0, i32 0, !dbg !6392
  call void @list_del(%struct.list_head* %list72) #9, !dbg !6393
  %70 = load %struct.read_buffer*, %struct.read_buffer** %rb, align 8, !dbg !6394
  %71 = bitcast %struct.read_buffer* %70 to i8*, !dbg !6394
  call void @kfree(i8* %71) #9, !dbg !6395
  br label %for.inc73, !dbg !6396

for.inc73:                                        ; preds = %for.body71
  %72 = load %struct.read_buffer*, %struct.read_buffer** %tmp_rb, align 8, !dbg !6388
  store %struct.read_buffer* %72, %struct.read_buffer** %rb, align 8, !dbg !6388
  call void @llvm.dbg.declare(metadata i8** %__mptr74, metadata !6397, metadata !DIExpression()), !dbg !6399
  %73 = load %struct.read_buffer*, %struct.read_buffer** %tmp_rb, align 8, !dbg !6399
  %list75 = getelementptr inbounds %struct.read_buffer, %struct.read_buffer* %73, i32 0, i32 0, !dbg !6399
  %next76 = getelementptr inbounds %struct.list_head, %struct.list_head* %list75, i32 0, i32 0, !dbg !6399
  %74 = load %struct.list_head*, %struct.list_head** %next76, align 8, !dbg !6399
  %75 = bitcast %struct.list_head* %74 to i8*, !dbg !6399
  store i8* %75, i8** %__mptr74, align 8, !dbg !6399
  br label %do.body77, !dbg !6399

do.body77:                                        ; preds = %for.inc73
  br label %do.end78, !dbg !6400

do.end78:                                         ; preds = %do.body77
  %76 = load i8*, i8** %__mptr74, align 8, !dbg !6399
  %add.ptr80 = getelementptr i8, i8* %76, i64 0, !dbg !6399
  %77 = bitcast i8* %add.ptr80 to %struct.read_buffer*, !dbg !6399
  store %struct.read_buffer* %77, %struct.read_buffer** %tmp79, align 8, !dbg !6400
  %78 = load %struct.read_buffer*, %struct.read_buffer** %tmp79, align 8, !dbg !6399
  store %struct.read_buffer* %78, %struct.read_buffer** %tmp_rb, align 8, !dbg !6388
  br label %for.cond66, !dbg !6388, !llvm.loop !6402

for.end81:                                        ; preds = %for.cond66
  %79 = load %struct.xenbus_file_priv*, %struct.xenbus_file_priv** %u, align 8, !dbg !6404
  %80 = bitcast %struct.xenbus_file_priv* %79 to i8*, !dbg !6404
  call void @kfree(i8* %80) #9, !dbg !6405
  ret void, !dbg !6406
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @refcount_set(%struct.refcount_struct* %r, i32 %n) #0 !dbg !6407 {
entry:
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !6410, metadata !DIExpression()), !dbg !6414
  %i.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i, metadata !6418, metadata !DIExpression()), !dbg !6419
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !6420, metadata !DIExpression()), !dbg !6422
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !6424, metadata !DIExpression()), !dbg !6425
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !6426, metadata !DIExpression()), !dbg !6427
  %i.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i, metadata !6428, metadata !DIExpression()), !dbg !6429
  %r.addr = alloca %struct.refcount_struct*, align 8
  %n.addr = alloca i32, align 4
  store %struct.refcount_struct* %r, %struct.refcount_struct** %r.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.refcount_struct** %r.addr, metadata !6430, metadata !DIExpression()), !dbg !6431
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !6432, metadata !DIExpression()), !dbg !6433
  %0 = load %struct.refcount_struct*, %struct.refcount_struct** %r.addr, align 8, !dbg !6434
  %refs = getelementptr inbounds %struct.refcount_struct, %struct.refcount_struct* %0, i32 0, i32 0, !dbg !6435
  %1 = load i32, i32* %n.addr, align 4, !dbg !6436
  store %struct.atomic_t* %refs, %struct.atomic_t** %v.addr.i, align 8
  store i32 %1, i32* %i.addr.i, align 4
  %2 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6437
  %3 = bitcast %struct.atomic_t* %2 to i8*, !dbg !6437
  store i8* %3, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %4 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6438
  %5 = load i64, i64* %size.addr.i.i, align 8, !dbg !6439
  %conv.i.i = trunc i64 %5 to i32, !dbg !6439
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %4, i32 %conv.i.i) #12, !dbg !6440
  %6 = load i8*, i8** %v.addr.i.i, align 8, !dbg !6441
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !6441
  call void @kcsan_check_access(i8* %6, i64 %7, i32 5) #12, !dbg !6441
  %8 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !6442
  %9 = load i32, i32* %i.addr.i, align 4, !dbg !6443
  store %struct.atomic_t* %8, %struct.atomic_t** %v.addr.i1.i, align 8
  store i32 %9, i32* %i.addr.i.i, align 4
  %10 = load i32, i32* %i.addr.i.i, align 4, !dbg !6444
  %11 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !6444
  %counter.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %11, i32 0, i32 0, !dbg !6444
  store volatile i32 %10, i32* %counter.i.i, align 4, !dbg !6444
  ret void, !dbg !6446
}

; Function Attrs: noredzone
declare dso_local i32 @xenbus_transaction_end(i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @misc_register(%struct.miscdevice*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #8

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!3837, !3838, !3839, !3840}
!llvm.ident = !{!3841}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xen_xenbus_fops", scope: !2, file: !3, line: 697, type: !715, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !184, globals: !332, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/xen/xenbus/xenbus_dev_frontend.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !31, !38, !45, !51, !56, !62, !69, !75, !84, !92, !97, !104, !112, !145, !151, !157, !163, !170, !178}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xsd_sockmsg_type", file: !6, line: 11, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/xen/interface/io/xs_wire.h", directory: "/home/lizy2001/genbc/linux")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!9 = !DIEnumerator(name: "XS_DEBUG", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "XS_DIRECTORY", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "XS_READ", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "XS_GET_PERMS", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "XS_WATCH", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "XS_UNWATCH", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "XS_TRANSACTION_START", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "XS_TRANSACTION_END", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "XS_INTRODUCE", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "XS_RELEASE", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "XS_GET_DOMAIN_PATH", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "XS_WRITE", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "XS_MKDIR", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "XS_RM", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "XS_SET_PERMS", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "XS_WATCH_EVENT", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "XS_ERROR", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "XS_IS_DOMAIN_INTRODUCED", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "XS_RESUME", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "XS_SET_TARGET", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "XS_RESTRICT", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "XS_RESET_WATCHES", value: 21, isUnsigned: true)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xb_req_state", file: !32, line: 68, baseType: !7, size: 32, elements: !33)
!32 = !DIFile(filename: "drivers/xen/xenbus/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!33 = !{!34, !35, !36, !37}
!34 = !DIEnumerator(name: "xb_req_state_queued", value: 0, isUnsigned: true)
!35 = !DIEnumerator(name: "xb_req_state_wait_reply", value: 1, isUnsigned: true)
!36 = !DIEnumerator(name: "xb_req_state_got_reply", value: 2, isUnsigned: true)
!37 = !DIEnumerator(name: "xb_req_state_aborted", value: 3, isUnsigned: true)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !39, line: 15, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!40 = !{!41, !42, !43, !44}
!41 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!42 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!43 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!44 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "page_entry_size", file: !46, line: 546, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !49, !50}
!48 = !DIEnumerator(name: "PE_SIZE_PTE", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "PE_SIZE_PMD", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "PE_SIZE_PUD", value: 2, isUnsigned: true)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !52, line: 65, baseType: !7, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!53 = !{!54, !55}
!54 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!55 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !57, line: 16, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!58 = !{!59, !60, !61}
!59 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!60 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!61 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !63, line: 59, baseType: !7, size: 32, elements: !64)
!63 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/lizy2001/genbc/linux")
!64 = !{!65, !66, !67, !68}
!65 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1, isUnsigned: true)
!66 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 2, isUnsigned: true)
!67 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 3, isUnsigned: true)
!68 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 4, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !70, line: 54, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !76, line: 296, baseType: !7, size: 32, elements: !77)
!76 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!77 = !{!78, !79, !80, !81, !82, !83}
!78 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!79 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!80 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!81 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!82 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!83 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !85, line: 9, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!89 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!90 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!91 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !93, line: 10, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!94 = !{!95, !96}
!95 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!96 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !98, line: 305, baseType: !7, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!99 = !{!100, !101, !102, !103}
!100 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!101 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!102 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!103 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!104 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !105, line: 119, baseType: !7, size: 32, elements: !106)
!105 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!106 = !{!107, !108, !109, !110, !111}
!107 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0, isUnsigned: true)
!108 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1, isUnsigned: true)
!109 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2, isUnsigned: true)
!110 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3, isUnsigned: true)
!111 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4, isUnsigned: true)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 30, baseType: !114, size: 64, elements: !115)
!113 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!114 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!116 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!117 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!118 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!119 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!120 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!121 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!122 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!123 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!124 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!125 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!126 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!127 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!128 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!129 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!130 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!131 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!132 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!133 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!134 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!135 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!136 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!137 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!138 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!139 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!140 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!141 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!142 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!143 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!144 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xen_domain_type", file: !146, line: 5, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./include/xen/xen.h", directory: "/home/lizy2001/genbc/linux")
!147 = !{!148, !149, !150}
!148 = !DIEnumerator(name: "XEN_NATIVE", value: 0, isUnsigned: true)
!149 = !DIEnumerator(name: "XEN_PV_DOMAIN", value: 1, isUnsigned: true)
!150 = !DIEnumerator(name: "XEN_HVM_DOMAIN", value: 2, isUnsigned: true)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !152, line: 26, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!153 = !{!154, !155, !156}
!154 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!155 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!156 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!157 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !158, line: 44, baseType: !7, size: 32, elements: !159)
!158 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!159 = !{!160, !161, !162}
!160 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!161 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!162 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !164, line: 343, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !167, !168, !169}
!166 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!167 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!168 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!169 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !171, line: 524, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!172 = !{!173, !174, !175, !176, !177}
!173 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!174 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!175 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!176 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!177 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!178 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !171, line: 502, baseType: !7, size: 32, elements: !179)
!179 = !{!180, !181, !182, !183}
!180 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!181 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!182 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!183 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!184 = !{!185, !186, !206, !208, !209, !211, !222, !7, !296, !308, !327, !329, !330}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_transaction_holder", file: !3, line: 72, size: 192, elements: !188)
!188 = !{!189, !196, !205}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !187, file: !3, line: 73, baseType: !190, size: 128)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !191, line: 178, size: 128, elements: !192)
!191 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!192 = !{!193, !195}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !190, file: !191, line: 179, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !190, file: !191, line: 179, baseType: !194, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !187, file: !3, line: 74, baseType: !197, size: 32, offset: 128)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_transaction", file: !198, line: 133, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/xen/xenbus.h", directory: "/home/lizy2001/genbc/linux")
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !197, file: !198, line: 135, baseType: !201, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !202, line: 21, baseType: !203)
!202 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !204, line: 27, baseType: !7)
!204 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!205 = !DIDerivedType(tag: DW_TAG_member, name: "generation_id", scope: !187, file: !3, line: 75, baseType: !7, size: 32, offset: 160)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !194)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !191, line: 148, baseType: !7)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "read_buffer", file: !3, line: 81, size: 192, elements: !213)
!213 = !{!214, !215, !216, !217}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !212, file: !3, line: 82, baseType: !190, size: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "cons", scope: !212, file: !3, line: 83, baseType: !7, size: 32, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !212, file: !3, line: 84, baseType: !7, size: 32, offset: 160)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !212, file: !3, line: 85, baseType: !218, offset: 192)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, elements: !220)
!219 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!220 = !{!221}
!221 = !DISubrange(count: -1)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_file_priv", file: !3, line: 88, size: 34048, elements: !224)
!224 = !{!225, !256, !257, !258, !259, !274, !275, !276, !283, !297}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "msgbuffer_mutex", scope: !223, file: !3, line: 99, baseType: !226, size: 192)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !227, line: 53, size: 192, elements: !228)
!227 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!228 = !{!229, !239, !255}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !226, file: !227, line: 54, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !231, line: 13, baseType: !232)
!231 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !191, line: 175, baseType: !233)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !191, line: 173, size: 64, elements: !234)
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !233, file: !191, line: 174, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !202, line: 22, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !204, line: 30, baseType: !238)
!238 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !226, file: !227, line: 55, baseType: !240, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !241, line: 83, baseType: !242)
!241 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !241, line: 71, elements: !243)
!243 = !{!244}
!244 = !DIDerivedType(tag: DW_TAG_member, scope: !242, file: !241, line: 72, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !242, file: !241, line: 72, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !245, file: !241, line: 73, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !241, line: 20, elements: !249)
!249 = !{!250}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !248, file: !241, line: 21, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !252, line: 25, baseType: !253)
!252 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !252, line: 25, elements: !254)
!254 = !{}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !226, file: !227, line: 59, baseType: !190, size: 128, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "transactions", scope: !223, file: !3, line: 102, baseType: !190, size: 128, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "watches", scope: !223, file: !3, line: 105, baseType: !190, size: 128, offset: 320)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !223, file: !3, line: 108, baseType: !7, size: 32, offset: 448)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !223, file: !3, line: 112, baseType: !260, size: 32768, offset: 480)
!260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !223, file: !3, line: 109, size: 32768, elements: !261)
!261 = !{!262, !270}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !260, file: !3, line: 110, baseType: !263, size: 128)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xsd_sockmsg", file: !6, line: 65, size: 128, elements: !264)
!264 = !{!265, !267, !268, !269}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !263, file: !6, line: 67, baseType: !266, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !191, line: 104, baseType: !201)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "req_id", scope: !263, file: !6, line: 68, baseType: !266, size: 32, offset: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "tx_id", scope: !263, file: !6, line: 69, baseType: !266, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !263, file: !6, line: 70, baseType: !266, size: 32, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !260, file: !3, line: 111, baseType: !271, size: 32768)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 32768, elements: !272)
!272 = !{!273}
!273 = !DISubrange(count: 4096)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "reply_mutex", scope: !223, file: !3, line: 115, baseType: !226, size: 192, offset: 33280)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "read_buffers", scope: !223, file: !3, line: 116, baseType: !190, size: 128, offset: 33472)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "read_waitq", scope: !223, file: !3, line: 117, baseType: !277, size: 128, offset: 33600)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !278, line: 40, baseType: !279)
!278 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !278, line: 36, size: 128, elements: !280)
!280 = !{!281, !282}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !279, file: !278, line: 37, baseType: !240)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !279, file: !278, line: 38, baseType: !190, size: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !223, file: !3, line: 119, baseType: !284, size: 32, offset: 33728)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !285, line: 19, size: 32, elements: !286)
!285 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !284, file: !285, line: 20, baseType: !288, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !105, line: 113, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !105, line: 111, size: 32, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !289, file: !105, line: 112, baseType: !292, size: 32)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !191, line: 168, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !191, line: 166, size: 32, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !293, file: !191, line: 167, baseType: !296, size: 32)
!296 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !223, file: !3, line: 121, baseType: !298, size: 256, offset: 33792)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !113, line: 102, size: 256, elements: !299)
!299 = !{!300, !301, !302}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !298, file: !113, line: 103, baseType: !230, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !298, file: !113, line: 104, baseType: !190, size: 128, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !298, file: !113, line: 105, baseType: !303, size: 64, offset: 192)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !113, line: 21, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !307}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "watch_adapter", file: !3, line: 226, size: 512, elements: !310)
!310 = !{!311, !312, !324, !325}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !309, file: !3, line: 227, baseType: !190, size: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "watch", scope: !309, file: !3, line: 228, baseType: !313, size: 256, offset: 128)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xenbus_watch", file: !198, line: 57, size: 256, elements: !314)
!314 = !{!315, !316, !319}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !313, file: !198, line: 59, baseType: !190, size: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !313, file: !198, line: 62, baseType: !317, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !313, file: !198, line: 65, baseType: !320, size: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !323, !317, !317}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "dev_data", scope: !309, file: !3, line: 229, baseType: !222, size: 64, offset: 384)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !309, file: !3, line: 230, baseType: !326, size: 64, offset: 448)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !328, line: 52, baseType: !7)
!328 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!329 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !296)
!332 = !{!0, !333, !335, !337, !3178, !3180, !3182}
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_xenbus_init265", scope: !2, file: !3, line: 725, type: !185, isLocal: true, isDefinition: true)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(name: "xb_dev_generation_id", scope: !2, file: !3, line: 66, type: !7, isLocal: false, isDefinition: true)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "__key", scope: !339, file: !3, line: 667, type: !541, isLocal: true, isDefinition: true)
!339 = distinct !DISubprogram(name: "xenbus_file_open", scope: !3, file: !3, line: 649, type: !340, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!340 = !DISubroutineType(types: !341)
!341 = !{!296, !342, !685}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !76, line: 610, size: 4224, elements: !344)
!344 = !{!345, !348, !349, !358, !365, !366, !3110, !3111, !3112, !3113, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3154, !3162, !3163, !3164, !3174, !3175, !3176, !3177}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !343, file: !76, line: 611, baseType: !346, size: 16)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !191, line: 19, baseType: !347)
!347 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !343, file: !76, line: 612, baseType: !347, size: 16, offset: 16)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !343, file: !76, line: 613, baseType: !350, size: 32, offset: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !351, line: 23, baseType: !352)
!351 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 21, size: 32, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !352, file: !351, line: 22, baseType: !355, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !191, line: 32, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !357, line: 49, baseType: !7)
!357 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !343, file: !76, line: 614, baseType: !359, size: 32, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !351, line: 28, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !351, line: 26, size: 32, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !360, file: !351, line: 27, baseType: !363, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !191, line: 33, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !357, line: 50, baseType: !7)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !343, file: !76, line: 615, baseType: !7, size: 32, offset: 96)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !343, file: !76, line: 622, baseType: !367, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !76, line: 1864, size: 1536, align: 512, elements: !370)
!370 = !{!371, !2984, !2997, !3001, !3007, !3011, !3015, !3019, !3023, !3027, !3031, !3032, !3036, !3040, !3060, !3086, !3090, !3096, !3101, !3105, !3106}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !369, file: !76, line: 1865, baseType: !372, size: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{!375, !342, !375, !7}
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !377, line: 89, size: 1536, elements: !378)
!377 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!378 = !{!379, !380, !390, !398, !399, !418, !419, !423, !435, !2968, !2969, !2970, !2971, !2976, !2977, !2978}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !376, file: !377, line: 91, baseType: !7, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !376, file: !377, line: 92, baseType: !381, size: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !382, line: 277, baseType: !383)
!382 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !382, line: 277, size: 32, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !383, file: !382, line: 277, baseType: !386, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !382, line: 70, baseType: !387)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !382, line: 65, size: 32, elements: !388)
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !387, file: !382, line: 66, baseType: !7, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !376, file: !377, line: 93, baseType: !391, size: 128, offset: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !392, line: 38, size: 128, elements: !393)
!392 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!393 = !{!394, !396}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !391, file: !392, line: 39, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !391, file: !392, line: 39, baseType: !397, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !376, file: !377, line: 94, baseType: !375, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !376, file: !377, line: 95, baseType: !400, size: 128, offset: 256)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !377, line: 47, size: 128, elements: !401)
!401 = !{!402, !414}
!402 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !377, line: 48, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !377, line: 48, size: 64, elements: !404)
!404 = !{!405, !410}
!405 = !DIDerivedType(tag: DW_TAG_member, scope: !403, file: !377, line: 49, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !403, file: !377, line: 49, size: 64, elements: !407)
!407 = !{!408, !409}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !406, file: !377, line: 50, baseType: !201, size: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !406, file: !377, line: 50, baseType: !201, size: 32, offset: 32)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !403, file: !377, line: 52, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !202, line: 23, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !204, line: 31, baseType: !413)
!413 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !400, file: !377, line: 54, baseType: !415, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!417 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !376, file: !377, line: 96, baseType: !342, size: 64, offset: 384)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !376, file: !377, line: 98, baseType: !420, size: 256, offset: 448)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 256, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !376, file: !377, line: 101, baseType: !424, size: 32, offset: 704)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !425, line: 25, size: 32, elements: !426)
!425 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !425, line: 26, baseType: !428, size: 32)
!428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !425, line: 26, size: 32, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !425, line: 30, baseType: !431, size: 32)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !428, file: !425, line: 30, size: 32, elements: !432)
!432 = !{!433, !434}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !431, file: !425, line: 31, baseType: !240)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !431, file: !425, line: 32, baseType: !296, size: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !376, file: !377, line: 102, baseType: !436, size: 64, offset: 768)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !377, line: 135, size: 1024, align: 512, elements: !439)
!439 = !{!440, !444, !445, !452, !458, !462, !466, !470, !471, !475, !479, !2958, !2962}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !438, file: !377, line: 136, baseType: !441, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!296, !375, !7}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !438, file: !377, line: 137, baseType: !441, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !438, file: !377, line: 138, baseType: !446, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!296, !449, !451}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !376)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !438, file: !377, line: 139, baseType: !453, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!296, !449, !7, !317, !456}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !438, file: !377, line: 141, baseType: !459, size: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!296, !449}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !438, file: !377, line: 142, baseType: !463, size: 64, offset: 320)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!296, !375}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !438, file: !377, line: 143, baseType: !467, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{null, !375}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !438, file: !377, line: 144, baseType: !467, size: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !438, file: !377, line: 145, baseType: !472, size: 64, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !375, !342}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !438, file: !377, line: 146, baseType: !476, size: 64, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!326, !375, !326, !296}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !438, file: !377, line: 147, baseType: !480, size: 64, offset: 640)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!483, !2957}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !485, line: 71, size: 192, elements: !486)
!485 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/lizy2001/genbc/linux")
!486 = !{!487, !488, !2956}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !484, file: !485, line: 72, baseType: !375, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !484, file: !485, line: 73, baseType: !489, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !76, line: 1416, size: 9472, elements: !491)
!491 = !{!492, !493, !496, !497, !498, !501, !552, !2620, !2702, !2787, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2803, !2807, !2808, !2811, !2812, !2815, !2816, !2817, !2858, !2885, !2886, !2887, !2888, !2889, !2890, !2893, !2895, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2923, !2924, !2925, !2926, !2927, !2930, !2931, !2932, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !490, file: !76, line: 1417, baseType: !190, size: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !490, file: !76, line: 1418, baseType: !494, size: 32, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !191, line: 16, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !191, line: 13, baseType: !201)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !490, file: !76, line: 1419, baseType: !417, size: 8, offset: 160)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !490, file: !76, line: 1420, baseType: !329, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !490, file: !76, line: 1421, baseType: !499, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !191, line: 46, baseType: !500)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !357, line: 88, baseType: !238)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !490, file: !76, line: 1422, baseType: !502, size: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !76, line: 2228, size: 576, elements: !504)
!504 = !{!505, !506, !507, !513, !517, !521, !525, !529, !530, !540, !543, !544, !545, !549, !550, !551}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !503, file: !76, line: 2229, baseType: !317, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !503, file: !76, line: 2230, baseType: !296, size: 32, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !503, file: !76, line: 2238, baseType: !508, size: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!296, !511}
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !76, line: 69, flags: DIFlagFwdDecl)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !503, file: !76, line: 2239, baseType: !514, size: 64, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!516 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !76, line: 70, flags: DIFlagFwdDecl)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !503, file: !76, line: 2240, baseType: !518, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!375, !502, !296, !317, !185}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !503, file: !76, line: 2242, baseType: !522, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{null, !489}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !503, file: !76, line: 2243, baseType: !526, size: 64, offset: 384)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !528, line: 76, flags: DIFlagFwdDecl)
!528 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !503, file: !76, line: 2244, baseType: !502, size: 64, offset: 448)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !503, file: !76, line: 2245, baseType: !531, size: 64, offset: 512)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !191, line: 182, size: 64, elements: !532)
!532 = !{!533}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !531, file: !191, line: 183, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !191, line: 186, size: 128, elements: !536)
!536 = !{!537, !538}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !535, file: !191, line: 187, baseType: !534, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !535, file: !191, line: 187, baseType: !539, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !503, file: !76, line: 2247, baseType: !541, offset: 576)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !542, line: 187, elements: !254)
!542 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!543 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !503, file: !76, line: 2248, baseType: !541, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !503, file: !76, line: 2249, baseType: !541, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !503, file: !76, line: 2250, baseType: !546, offset: 576)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 3)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !503, file: !76, line: 2252, baseType: !541, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !503, file: !76, line: 2253, baseType: !541, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !503, file: !76, line: 2254, baseType: !541, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !490, file: !76, line: 1423, baseType: !553, size: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !76, line: 1935, size: 1472, elements: !556)
!556 = !{!557, !561, !565, !566, !570, !576, !580, !581, !582, !586, !590, !591, !592, !593, !599, !604, !605, !612, !613, !614, !615, !2604, !2619}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !555, file: !76, line: 1936, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!342, !489}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !555, file: !76, line: 1937, baseType: !562, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{null, !342}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !555, file: !76, line: 1938, baseType: !562, size: 64, offset: 128)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !555, file: !76, line: 1940, baseType: !567, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{null, !342, !296}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !555, file: !76, line: 1941, baseType: !571, size: 64, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DISubroutineType(types: !573)
!573 = !{!296, !342, !574}
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !76, line: 289, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !555, file: !76, line: 1942, baseType: !577, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!296, !342}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !555, file: !76, line: 1943, baseType: !562, size: 64, offset: 384)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !555, file: !76, line: 1944, baseType: !522, size: 64, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !555, file: !76, line: 1945, baseType: !583, size: 64, offset: 512)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!296, !489, !296}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !555, file: !76, line: 1946, baseType: !587, size: 64, offset: 576)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!296, !489}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !555, file: !76, line: 1947, baseType: !587, size: 64, offset: 640)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !555, file: !76, line: 1948, baseType: !587, size: 64, offset: 704)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !555, file: !76, line: 1949, baseType: !587, size: 64, offset: 768)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !555, file: !76, line: 1950, baseType: !594, size: 64, offset: 832)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!296, !375, !597}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !76, line: 57, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !555, file: !76, line: 1951, baseType: !600, size: 64, offset: 896)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{!296, !489, !603, !326}
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !555, file: !76, line: 1952, baseType: !522, size: 64, offset: 960)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !555, file: !76, line: 1954, baseType: !606, size: 64, offset: 1024)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!296, !609, !375}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !611, line: 539, flags: DIFlagFwdDecl)
!611 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!612 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !555, file: !76, line: 1955, baseType: !606, size: 64, offset: 1088)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !555, file: !76, line: 1956, baseType: !606, size: 64, offset: 1152)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !555, file: !76, line: 1957, baseType: !606, size: 64, offset: 1216)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !555, file: !76, line: 1963, baseType: !616, size: 64, offset: 1280)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!296, !489, !619, !208}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !621, line: 68, size: 512, align: 128, elements: !622)
!621 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!622 = !{!623, !624, !2596, !2603}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !620, file: !621, line: 69, baseType: !329, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, scope: !620, file: !621, line: 77, baseType: !625, size: 320, offset: 64)
!625 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !620, file: !621, line: 77, size: 320, elements: !626)
!626 = !{!627, !2470, !2475, !2501, !2509, !2515, !2527, !2595}
!627 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !621, line: 78, baseType: !628, size: 320)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !621, line: 78, size: 320, elements: !629)
!629 = !{!630, !631, !2468, !2469}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !628, file: !621, line: 84, baseType: !190, size: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !628, file: !621, line: 86, baseType: !632, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !76, line: 451, size: 1216, align: 64, elements: !634)
!634 = !{!635, !636, !643, !644, !645, !660, !669, !670, !671, !672, !2463, !2464, !2465, !2466, !2467}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !633, file: !76, line: 452, baseType: !342, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !633, file: !76, line: 453, baseType: !637, size: 128, offset: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !638, line: 292, size: 128, elements: !639)
!638 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!639 = !{!640, !641, !642}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !637, file: !638, line: 293, baseType: !240)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !637, file: !638, line: 295, baseType: !208, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !637, file: !638, line: 296, baseType: !185, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !633, file: !76, line: 454, baseType: !208, size: 32, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !633, file: !76, line: 455, baseType: !292, size: 32, offset: 224)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !633, file: !76, line: 460, baseType: !646, size: 128, offset: 256)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !647, line: 125, size: 128, elements: !648)
!647 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!648 = !{!649, !659}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !646, file: !647, line: 126, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !647, line: 31, size: 64, elements: !651)
!651 = !{!652}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !650, file: !647, line: 32, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !647, line: 24, size: 192, align: 64, elements: !655)
!655 = !{!656, !657, !658}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !654, file: !647, line: 25, baseType: !329, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !654, file: !647, line: 26, baseType: !653, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !654, file: !647, line: 27, baseType: !653, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !646, file: !647, line: 127, baseType: !653, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !633, file: !76, line: 461, baseType: !661, size: 256, offset: 384)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !662, line: 35, size: 256, elements: !663)
!662 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!663 = !{!664, !665, !666, !668}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !661, file: !662, line: 36, baseType: !230, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !661, file: !662, line: 42, baseType: !230, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !661, file: !662, line: 46, baseType: !667, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !241, line: 29, baseType: !248)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !661, file: !662, line: 47, baseType: !190, size: 128, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !633, file: !76, line: 462, baseType: !329, size: 64, offset: 640)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !633, file: !76, line: 463, baseType: !329, size: 64, offset: 704)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !633, file: !76, line: 464, baseType: !329, size: 64, offset: 768)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !633, file: !76, line: 465, baseType: !673, size: 64, offset: 832)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !675)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !76, line: 367, size: 1408, elements: !676)
!676 = !{!677, !681, !2376, !2380, !2384, !2388, !2400, !2405, !2409, !2414, !2418, !2422, !2426, !2427, !2431, !2437, !2438, !2439, !2443, !2448, !2452, !2459}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !675, file: !76, line: 368, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{!296, !619, !574}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !675, file: !76, line: 369, baseType: !682, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!296, !685, !619}
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !76, line: 916, size: 1856, align: 32, elements: !687)
!687 = !{!688, !706, !712, !713, !2340, !2341, !2342, !2343, !2344, !2346, !2347, !2348, !2357, !2358, !2367, !2368, !2369, !2370, !2371, !2372, !2375}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !686, file: !76, line: 920, baseType: !689, size: 128)
!689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !686, file: !76, line: 917, size: 128, elements: !690)
!690 = !{!691, !697}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !689, file: !76, line: 918, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !693, line: 58, size: 64, elements: !694)
!693 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!694 = !{!695}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !692, file: !693, line: 59, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !689, file: !76, line: 919, baseType: !698, size: 128, align: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !191, line: 216, size: 128, align: 64, elements: !699)
!699 = !{!700, !702}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !698, file: !191, line: 217, baseType: !701, size: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !698, file: !191, line: 218, baseType: !703, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{null, !701}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !686, file: !76, line: 921, baseType: !707, size: 128, offset: 128)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !708, line: 8, size: 128, elements: !709)
!708 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !707, file: !708, line: 9, baseType: !483, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !707, file: !708, line: 10, baseType: !375, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !686, file: !76, line: 922, baseType: !342, size: 64, offset: 256)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !686, file: !76, line: 923, baseType: !714, size: 64, offset: 320)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !76, line: 1822, size: 2048, elements: !717)
!717 = !{!718, !719, !723, !734, !738, !822, !823, !829, !842, !843, !858, !862, !863, !2174, !2175, !2177, !2182, !2183, !2187, !2191, !2300, !2304, !2305, !2309, !2310, !2314, !2318, !2323, !2327, !2331, !2335, !2339}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !716, file: !76, line: 1823, baseType: !526, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !716, file: !76, line: 1824, baseType: !720, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!499, !685, !499, !296}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !716, file: !76, line: 1825, baseType: !724, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DISubroutineType(types: !726)
!726 = !{!727, !685, !326, !730, !733}
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !191, line: 60, baseType: !728)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !357, line: 73, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !357, line: 15, baseType: !114)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !191, line: 55, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !357, line: 72, baseType: !732)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !357, line: 16, baseType: !329)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !716, file: !76, line: 1826, baseType: !735, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!727, !685, !317, !730, !733}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !716, file: !76, line: 1827, baseType: !739, size: 64, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!727, !742, !781}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !76, line: 320, size: 384, elements: !744)
!744 = !{!745, !746, !747, !751, !752, !753, !756, !757}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !743, file: !76, line: 321, baseType: !685, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !743, file: !76, line: 326, baseType: !499, size: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !743, file: !76, line: 327, baseType: !748, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !742, !114, !114}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !743, file: !76, line: 328, baseType: !185, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !743, file: !76, line: 329, baseType: !296, size: 32, offset: 256)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !743, file: !76, line: 330, baseType: !754, size: 16, offset: 288)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !202, line: 19, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !204, line: 24, baseType: !347)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !743, file: !76, line: 331, baseType: !754, size: 16, offset: 304)
!757 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !76, line: 332, baseType: !758, size: 64, offset: 320)
!758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !743, file: !76, line: 332, size: 64, elements: !759)
!759 = !{!760, !761}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !758, file: !76, line: 333, baseType: !7, size: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !758, file: !76, line: 334, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !764, line: 569, size: 448, elements: !765)
!764 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/lizy2001/genbc/linux")
!765 = !{!766, !767, !768}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !763, file: !764, line: 570, baseType: !619, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !763, file: !764, line: 571, baseType: !296, size: 32, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !763, file: !764, line: 572, baseType: !769, size: 320, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !278, line: 14, baseType: !770)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !278, line: 29, size: 320, elements: !771)
!771 = !{!772, !773, !774, !780}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !770, file: !278, line: 30, baseType: !7, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !770, file: !278, line: 31, baseType: !185, size: 64, offset: 64)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !770, file: !278, line: 32, baseType: !775, size: 64, offset: 128)
!775 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !278, line: 16, baseType: !776)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!296, !779, !7, !296, !185}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !770, file: !278, line: 33, baseType: !190, size: 128, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !783, line: 29, size: 320, elements: !784)
!783 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!784 = !{!785, !786, !787, !788, !813}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !782, file: !783, line: 35, baseType: !7, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !782, file: !783, line: 36, baseType: !730, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !782, file: !783, line: 37, baseType: !730, size: 64, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !783, line: 38, baseType: !789, size: 64, offset: 192)
!789 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !783, line: 38, size: 64, elements: !790)
!790 = !{!791, !799, !806, !810}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "iov", scope: !789, file: !783, line: 39, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !794)
!794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !795, line: 17, size: 128, elements: !796)
!795 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !794, file: !795, line: 19, baseType: !185, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !794, file: !795, line: 20, baseType: !731, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !789, file: !783, line: 40, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !802)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !783, line: 15, size: 128, elements: !803)
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !802, file: !783, line: 16, baseType: !185, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !802, file: !783, line: 17, baseType: !730, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !789, file: !783, line: 41, baseType: !807, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !809)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !783, line: 41, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !789, file: !783, line: 42, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !783, line: 13, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !783, line: 44, baseType: !814, size: 64, offset: 256)
!814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !783, line: 44, size: 64, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !814, file: !783, line: 45, baseType: !329, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, scope: !814, file: !783, line: 46, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !814, file: !783, line: 46, size: 64, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !818, file: !783, line: 47, baseType: !7, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "start_head", scope: !818, file: !783, line: 48, baseType: !7, size: 32, offset: 32)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !716, file: !76, line: 1828, baseType: !739, size: 64, offset: 320)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !716, file: !76, line: 1829, baseType: !824, size: 64, offset: 384)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!296, !742, !827}
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !191, line: 30, baseType: !828)
!828 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !716, file: !76, line: 1830, baseType: !830, size: 64, offset: 448)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!296, !685, !833}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !76, line: 1776, size: 128, elements: !835)
!835 = !{!836, !841}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !834, file: !76, line: 1777, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !76, line: 1773, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!296, !833, !317, !296, !499, !411, !7}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !834, file: !76, line: 1778, baseType: !499, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !716, file: !76, line: 1831, baseType: !830, size: 64, offset: 512)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !716, file: !76, line: 1832, baseType: !844, size: 64, offset: 576)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{!327, !685, !847}
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !849, line: 43, size: 128, elements: !850)
!849 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/lizy2001/genbc/linux")
!850 = !{!851, !857}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !848, file: !849, line: 44, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !849, line: 37, baseType: !853)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{null, !685, !856, !847}
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !848, file: !849, line: 45, baseType: !327, size: 32, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !716, file: !76, line: 1833, baseType: !859, size: 64, offset: 640)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DISubroutineType(types: !861)
!861 = !{!114, !685, !7, !329}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !716, file: !76, line: 1834, baseType: !859, size: 64, offset: 704)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !716, file: !76, line: 1835, baseType: !864, size: 64, offset: 768)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!296, !685, !867}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !621, line: 305, size: 1472, elements: !869)
!869 = !{!870, !871, !872, !873, !874, !875, !876, !2067, !2073, !2074, !2079, !2080, !2083, !2168, !2169, !2170, !2171, !2172}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !868, file: !621, line: 308, baseType: !329, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !868, file: !621, line: 309, baseType: !329, size: 64, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !868, file: !621, line: 313, baseType: !867, size: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !868, file: !621, line: 313, baseType: !867, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !868, file: !621, line: 315, baseType: !654, size: 192, align: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !868, file: !621, line: 323, baseType: !329, size: 64, offset: 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !868, file: !621, line: 327, baseType: !877, size: 64, offset: 512)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !621, line: 388, size: 7296, elements: !879)
!879 = !{!880, !2065}
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !878, file: !621, line: 389, baseType: !881, size: 7296)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !878, file: !621, line: 389, size: 7296, elements: !882)
!882 = !{!883, !884, !885, !886, !890, !891, !892, !893, !894, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !936, !944, !947, !971, !972, !2049, !2050, !2053, !2054, !2055, !2058, !2059, !2060, !2063, !2064}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !881, file: !621, line: 390, baseType: !867, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !881, file: !621, line: 391, baseType: !650, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !881, file: !621, line: 392, baseType: !411, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !881, file: !621, line: 394, baseType: !887, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!329, !685, !329, !329, !329, !329}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !881, file: !621, line: 398, baseType: !329, size: 64, offset: 256)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !881, file: !621, line: 399, baseType: !329, size: 64, offset: 320)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !881, file: !621, line: 405, baseType: !329, size: 64, offset: 384)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !881, file: !621, line: 406, baseType: !329, size: 64, offset: 448)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !881, file: !621, line: 407, baseType: !895, size: 64, offset: 512)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !611, line: 286, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !611, line: 286, size: 64, elements: !898)
!898 = !{!899}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !897, file: !611, line: 286, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !901, line: 18, baseType: !329)
!901 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!902 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !881, file: !621, line: 416, baseType: !292, size: 32, offset: 576)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !881, file: !621, line: 428, baseType: !292, size: 32, offset: 608)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !881, file: !621, line: 437, baseType: !292, size: 32, offset: 640)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !881, file: !621, line: 447, baseType: !292, size: 32, offset: 672)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !881, file: !621, line: 450, baseType: !230, size: 64, offset: 704)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !881, file: !621, line: 452, baseType: !296, size: 32, offset: 768)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !881, file: !621, line: 454, baseType: !240, offset: 800)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !881, file: !621, line: 457, baseType: !661, size: 256, offset: 832)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !881, file: !621, line: 459, baseType: !190, size: 128, offset: 1088)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !881, file: !621, line: 466, baseType: !329, size: 64, offset: 1216)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !881, file: !621, line: 467, baseType: !329, size: 64, offset: 1280)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !881, file: !621, line: 469, baseType: !329, size: 64, offset: 1344)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !881, file: !621, line: 470, baseType: !329, size: 64, offset: 1408)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !881, file: !621, line: 471, baseType: !232, size: 64, offset: 1472)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !881, file: !621, line: 472, baseType: !329, size: 64, offset: 1536)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !881, file: !621, line: 473, baseType: !329, size: 64, offset: 1600)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !881, file: !621, line: 474, baseType: !329, size: 64, offset: 1664)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !881, file: !621, line: 475, baseType: !329, size: 64, offset: 1728)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !881, file: !621, line: 477, baseType: !240, offset: 1792)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !881, file: !621, line: 478, baseType: !329, size: 64, offset: 1792)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !881, file: !621, line: 478, baseType: !329, size: 64, offset: 1856)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !881, file: !621, line: 478, baseType: !329, size: 64, offset: 1920)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !881, file: !621, line: 478, baseType: !329, size: 64, offset: 1984)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !881, file: !621, line: 479, baseType: !329, size: 64, offset: 2048)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !881, file: !621, line: 479, baseType: !329, size: 64, offset: 2112)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !881, file: !621, line: 479, baseType: !329, size: 64, offset: 2176)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !881, file: !621, line: 480, baseType: !329, size: 64, offset: 2240)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !881, file: !621, line: 480, baseType: !329, size: 64, offset: 2304)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !881, file: !621, line: 480, baseType: !329, size: 64, offset: 2368)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !881, file: !621, line: 480, baseType: !329, size: 64, offset: 2432)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !881, file: !621, line: 482, baseType: !933, size: 2816, offset: 2496)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 2816, elements: !934)
!934 = !{!935}
!935 = !DISubrange(count: 44)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !881, file: !621, line: 488, baseType: !937, size: 256, offset: 5312)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !938, line: 60, size: 256, elements: !939)
!938 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!939 = !{!940}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !937, file: !938, line: 61, baseType: !941, size: 256)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 256, elements: !942)
!942 = !{!943}
!943 = !DISubrange(count: 4)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !881, file: !621, line: 490, baseType: !945, size: 64, offset: 5568)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !621, line: 490, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !881, file: !621, line: 493, baseType: !948, size: 896, offset: 5632)
!948 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !949, line: 53, baseType: !950)
!949 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !949, line: 13, size: 896, elements: !951)
!951 = !{!952, !953, !954, !955, !958, !959, !960, !961, !965, !966, !967}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !950, file: !949, line: 18, baseType: !411, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !950, file: !949, line: 28, baseType: !232, size: 64, offset: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !950, file: !949, line: 31, baseType: !661, size: 256, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !950, file: !949, line: 32, baseType: !956, size: 64, offset: 384)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !949, line: 32, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !950, file: !949, line: 37, baseType: !347, size: 16, offset: 448)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !950, file: !949, line: 40, baseType: !226, size: 192, offset: 512)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !950, file: !949, line: 41, baseType: !185, size: 64, offset: 704)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !950, file: !949, line: 42, baseType: !962, size: 64, offset: 768)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !964)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !949, line: 42, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !950, file: !949, line: 44, baseType: !292, size: 32, offset: 832)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !950, file: !949, line: 50, baseType: !754, size: 16, offset: 864)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !950, file: !949, line: 51, baseType: !968, size: 16, offset: 880)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !202, line: 18, baseType: !969)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !204, line: 23, baseType: !970)
!970 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !881, file: !621, line: 495, baseType: !329, size: 64, offset: 6528)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !881, file: !621, line: 497, baseType: !973, size: 64, offset: 6592)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !621, line: 381, size: 384, elements: !975)
!975 = !{!976, !977, !2048}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !974, file: !621, line: 382, baseType: !292, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !974, file: !621, line: 383, baseType: !978, size: 128, offset: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !621, line: 376, size: 128, elements: !979)
!979 = !{!980, !2046}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !978, file: !621, line: 377, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !983, line: 640, size: 48640, elements: !984)
!983 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!984 = !{!985, !991, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1006, !1024, !1035, !1120, !1121, !1122, !1133, !1134, !1136, !1137, !1138, !1139, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1223, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1255, !1257, !1258, !1259, !1271, !1272, !1273, !1274, !1275, !1276, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1300, !1305, !1491, !1492, !1493, !1494, !1498, !1501, !1504, !1507, !1510, !1513, !1614, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1662, !1663, !1664, !1665, !1666, !1671, !1672, !1673, !1676, !1677, !1680, !1683, !1686, !1689, !1723, !1726, !1727, !1806, !1807, !1810, !1811, !1814, !1815, !1816, !1820, !1821, !1822, !1835, !1836, !1837, !1847, !1852, !1853, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !982, file: !983, line: 646, baseType: !986, size: 128)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !987, line: 56, size: 128, elements: !988)
!987 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!988 = !{!989, !990}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !986, file: !987, line: 57, baseType: !329, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !986, file: !987, line: 58, baseType: !201, size: 32, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !982, file: !983, line: 649, baseType: !992, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !114)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !982, file: !983, line: 657, baseType: !185, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !982, file: !983, line: 658, baseType: !288, size: 32, offset: 256)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !982, file: !983, line: 660, baseType: !7, size: 32, offset: 288)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !982, file: !983, line: 661, baseType: !7, size: 32, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !982, file: !983, line: 684, baseType: !296, size: 32, offset: 352)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !982, file: !983, line: 686, baseType: !296, size: 32, offset: 384)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !982, file: !983, line: 687, baseType: !296, size: 32, offset: 416)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !982, file: !983, line: 688, baseType: !296, size: 32, offset: 448)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !982, file: !983, line: 689, baseType: !7, size: 32, offset: 480)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !982, file: !983, line: 691, baseType: !1003, size: 64, offset: 512)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1005)
!1005 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !983, line: 691, flags: DIFlagFwdDecl)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !982, file: !983, line: 692, baseType: !1007, size: 832, offset: 576)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !983, line: 451, size: 832, elements: !1008)
!1008 = !{!1009, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1007, file: !983, line: 453, baseType: !1010, size: 128)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !983, line: 325, size: 128, elements: !1011)
!1011 = !{!1012, !1013}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1010, file: !983, line: 326, baseType: !329, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1010, file: !983, line: 327, baseType: !201, size: 32, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1007, file: !983, line: 454, baseType: !654, size: 192, align: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1007, file: !983, line: 455, baseType: !190, size: 128, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1007, file: !983, line: 456, baseType: !7, size: 32, offset: 448)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1007, file: !983, line: 458, baseType: !411, size: 64, offset: 512)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1007, file: !983, line: 459, baseType: !411, size: 64, offset: 576)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1007, file: !983, line: 460, baseType: !411, size: 64, offset: 640)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1007, file: !983, line: 461, baseType: !411, size: 64, offset: 704)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1007, file: !983, line: 463, baseType: !411, size: 64, offset: 768)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1007, file: !983, line: 465, baseType: !1023, offset: 832)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !983, line: 415, elements: !254)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !982, file: !983, line: 693, baseType: !1025, size: 384, offset: 1408)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !983, line: 489, size: 384, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1030, !1031, !1032, !1033}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1025, file: !983, line: 490, baseType: !190, size: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1025, file: !983, line: 491, baseType: !329, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1025, file: !983, line: 492, baseType: !329, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1025, file: !983, line: 493, baseType: !7, size: 32, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1025, file: !983, line: 494, baseType: !347, size: 16, offset: 288)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1025, file: !983, line: 495, baseType: !347, size: 16, offset: 304)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1025, file: !983, line: 497, baseType: !1034, size: 64, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !982, file: !983, line: 697, baseType: !1036, size: 1792, offset: 1792)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !983, line: 507, size: 1792, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1117, !1118}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1036, file: !983, line: 508, baseType: !654, size: 192, align: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1036, file: !983, line: 515, baseType: !411, size: 64, offset: 192)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1036, file: !983, line: 516, baseType: !411, size: 64, offset: 256)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1036, file: !983, line: 517, baseType: !411, size: 64, offset: 320)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1036, file: !983, line: 518, baseType: !411, size: 64, offset: 384)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1036, file: !983, line: 519, baseType: !411, size: 64, offset: 448)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1036, file: !983, line: 526, baseType: !236, size: 64, offset: 512)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1036, file: !983, line: 527, baseType: !411, size: 64, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1036, file: !983, line: 528, baseType: !7, size: 32, offset: 640)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1036, file: !983, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1036, file: !983, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1036, file: !983, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1036, file: !983, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1036, file: !983, line: 563, baseType: !1052, size: 512, offset: 704)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !52, line: 118, size: 512, elements: !1053)
!1053 = !{!1054, !1062, !1063, !1068, !1111, !1114, !1115, !1116}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1052, file: !52, line: 119, baseType: !1055, size: 256)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1056, line: 9, size: 256, elements: !1057)
!1056 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1055, file: !1056, line: 10, baseType: !654, size: 192, align: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1055, file: !1056, line: 11, baseType: !1060, size: 64, offset: 192)
!1060 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1061, line: 29, baseType: !236)
!1061 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1052, file: !52, line: 120, baseType: !1060, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1052, file: !52, line: 121, baseType: !1064, size: 64, offset: 320)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!51, !1067}
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1052, file: !52, line: 122, baseType: !1069, size: 64, offset: 384)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !52, line: 159, size: 512, align: 512, elements: !1071)
!1071 = !{!1072, !1092, !1093, !1096, !1101, !1102, !1106, !1110}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1070, file: !52, line: 160, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !52, line: 214, size: 4608, align: 512, elements: !1075)
!1075 = !{!1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1074, file: !52, line: 215, baseType: !667)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1074, file: !52, line: 216, baseType: !7, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1074, file: !52, line: 217, baseType: !7, size: 32, offset: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1074, file: !52, line: 218, baseType: !7, size: 32, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1074, file: !52, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1074, file: !52, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1074, file: !52, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1074, file: !52, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1074, file: !52, line: 233, baseType: !1060, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1074, file: !52, line: 234, baseType: !1067, size: 64, offset: 192)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1074, file: !52, line: 235, baseType: !1060, size: 64, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1074, file: !52, line: 236, baseType: !1067, size: 64, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1074, file: !52, line: 237, baseType: !1089, size: 4096, offset: 512)
!1089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1070, size: 4096, elements: !1090)
!1090 = !{!1091}
!1091 = !DISubrange(count: 8)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1070, file: !52, line: 161, baseType: !7, size: 32, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1070, file: !52, line: 162, baseType: !1094, size: 32, offset: 96)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !191, line: 27, baseType: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !357, line: 96, baseType: !296)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1070, file: !52, line: 163, baseType: !1097, size: 32, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !382, line: 276, baseType: !1098)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !382, line: 276, size: 32, elements: !1099)
!1099 = !{!1100}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1098, file: !382, line: 276, baseType: !386, size: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1070, file: !52, line: 164, baseType: !1067, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1070, file: !52, line: 165, baseType: !1103, size: 128, offset: 256)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1056, line: 14, size: 128, elements: !1104)
!1104 = !{!1105}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1103, file: !1056, line: 15, baseType: !646, size: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1070, file: !52, line: 166, baseType: !1107, size: 64, offset: 384)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{!1060}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1070, file: !52, line: 167, baseType: !1060, size: 64, offset: 448)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1052, file: !52, line: 123, baseType: !1112, size: 8, offset: 448)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !202, line: 17, baseType: !1113)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !204, line: 21, baseType: !417)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1052, file: !52, line: 124, baseType: !1112, size: 8, offset: 456)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1052, file: !52, line: 125, baseType: !1112, size: 8, offset: 464)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1052, file: !52, line: 126, baseType: !1112, size: 8, offset: 472)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1036, file: !983, line: 572, baseType: !1052, size: 512, offset: 1216)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1036, file: !983, line: 580, baseType: !1119, size: 64, offset: 1728)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !982, file: !983, line: 721, baseType: !7, size: 32, offset: 3584)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !982, file: !983, line: 722, baseType: !296, size: 32, offset: 3616)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !982, file: !983, line: 723, baseType: !1123, size: 64, offset: 3648)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1126, line: 17, baseType: !1127)
!1126 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1126, line: 17, size: 64, elements: !1128)
!1128 = !{!1129}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1127, file: !1126, line: 17, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 64, elements: !1131)
!1131 = !{!1132}
!1132 = !DISubrange(count: 1)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !982, file: !983, line: 724, baseType: !1125, size: 64, offset: 3712)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !982, file: !983, line: 749, baseType: !1135, offset: 3776)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !983, line: 290, elements: !254)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !982, file: !983, line: 751, baseType: !190, size: 128, offset: 3776)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !982, file: !983, line: 757, baseType: !877, size: 64, offset: 3904)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !982, file: !983, line: 758, baseType: !877, size: 64, offset: 3968)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !982, file: !983, line: 761, baseType: !1140, size: 320, offset: 4032)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !938, line: 34, size: 320, elements: !1141)
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1140, file: !938, line: 35, baseType: !411, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1140, file: !938, line: 36, baseType: !1144, size: 256, offset: 64)
!1144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !867, size: 256, elements: !942)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !982, file: !983, line: 766, baseType: !296, size: 32, offset: 4352)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !982, file: !983, line: 767, baseType: !296, size: 32, offset: 4384)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !982, file: !983, line: 768, baseType: !296, size: 32, offset: 4416)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !982, file: !983, line: 770, baseType: !296, size: 32, offset: 4448)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !982, file: !983, line: 772, baseType: !329, size: 64, offset: 4480)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !982, file: !983, line: 775, baseType: !7, size: 32, offset: 4544)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !982, file: !983, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !982, file: !983, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !982, file: !983, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !982, file: !983, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !982, file: !983, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !982, file: !983, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !982, file: !983, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !982, file: !983, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !982, file: !983, line: 831, baseType: !329, size: 64, offset: 4672)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !982, file: !983, line: 833, baseType: !1161, size: 384, offset: 4736)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !57, line: 25, size: 384, elements: !1162)
!1162 = !{!1163, !1168}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1161, file: !57, line: 26, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!114, !1167}
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !57, line: 27, baseType: !1169, size: 320, offset: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !57, line: 27, size: 320, elements: !1170)
!1170 = !{!1171, !1181, !1208}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1169, file: !57, line: 36, baseType: !1172, size: 320)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1169, file: !57, line: 29, size: 320, elements: !1173)
!1173 = !{!1174, !1176, !1177, !1178, !1179, !1180}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1172, file: !57, line: 30, baseType: !1175, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1172, file: !57, line: 31, baseType: !201, size: 32, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1172, file: !57, line: 32, baseType: !201, size: 32, offset: 96)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1172, file: !57, line: 33, baseType: !201, size: 32, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1172, file: !57, line: 34, baseType: !411, size: 64, offset: 192)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1172, file: !57, line: 35, baseType: !1175, size: 64, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1169, file: !57, line: 46, baseType: !1182, size: 192)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1169, file: !57, line: 38, size: 192, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1207}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1182, file: !57, line: 39, baseType: !1094, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1182, file: !57, line: 40, baseType: !56, size: 32, offset: 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1182, file: !57, line: 41, baseType: !1187, size: 64, offset: 64)
!1187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1182, file: !57, line: 41, size: 64, elements: !1188)
!1188 = !{!1189, !1197}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1187, file: !57, line: 42, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1192, line: 7, size: 128, elements: !1193)
!1192 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1193 = !{!1194, !1196}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1191, file: !1192, line: 8, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !357, line: 93, baseType: !238)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1191, file: !1192, line: 9, baseType: !238, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1187, file: !57, line: 43, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1200, line: 7, size: 64, elements: !1201)
!1200 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1201 = !{!1202, !1206}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1199, file: !1200, line: 8, baseType: !1203, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1200, line: 5, baseType: !1204)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !202, line: 20, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !204, line: 26, baseType: !296)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1199, file: !1200, line: 9, baseType: !1204, size: 32, offset: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1182, file: !57, line: 45, baseType: !411, size: 64, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1169, file: !57, line: 54, baseType: !1209, size: 256)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1169, file: !57, line: 48, size: 256, elements: !1210)
!1210 = !{!1211, !1219, !1220, !1221, !1222}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1209, file: !57, line: 49, baseType: !1212, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1214, line: 36, size: 64, elements: !1215)
!1214 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/lizy2001/genbc/linux")
!1215 = !{!1216, !1217, !1218}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1213, file: !1214, line: 37, baseType: !296, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1213, file: !1214, line: 38, baseType: !970, size: 16, offset: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1213, file: !1214, line: 39, baseType: !970, size: 16, offset: 48)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1209, file: !57, line: 50, baseType: !296, size: 32, offset: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1209, file: !57, line: 51, baseType: !296, size: 32, offset: 96)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1209, file: !57, line: 52, baseType: !329, size: 64, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1209, file: !57, line: 53, baseType: !329, size: 64, offset: 192)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !982, file: !983, line: 835, baseType: !1224, size: 32, offset: 5120)
!1224 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !191, line: 22, baseType: !1225)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !357, line: 28, baseType: !296)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !982, file: !983, line: 836, baseType: !1224, size: 32, offset: 5152)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !982, file: !983, line: 840, baseType: !329, size: 64, offset: 5184)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !982, file: !983, line: 849, baseType: !981, size: 64, offset: 5248)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !982, file: !983, line: 852, baseType: !981, size: 64, offset: 5312)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !982, file: !983, line: 857, baseType: !190, size: 128, offset: 5376)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !982, file: !983, line: 858, baseType: !190, size: 128, offset: 5504)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !982, file: !983, line: 859, baseType: !981, size: 64, offset: 5632)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !982, file: !983, line: 867, baseType: !190, size: 128, offset: 5696)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !982, file: !983, line: 868, baseType: !190, size: 128, offset: 5824)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !982, file: !983, line: 871, baseType: !1236, size: 64, offset: 5952)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !85, line: 59, size: 768, elements: !1238)
!1238 = !{!1239, !1240, !1241, !1242, !1244, !1245, !1246, !1247}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1237, file: !85, line: 61, baseType: !288, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1237, file: !85, line: 62, baseType: !7, size: 32, offset: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1237, file: !85, line: 63, baseType: !240, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1237, file: !85, line: 65, baseType: !1243, size: 256, offset: 64)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 256, elements: !942)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1237, file: !85, line: 66, baseType: !531, size: 64, offset: 320)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1237, file: !85, line: 68, baseType: !277, size: 128, offset: 384)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1237, file: !85, line: 69, baseType: !698, size: 128, align: 64, offset: 512)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1237, file: !85, line: 70, baseType: !1248, size: 128, offset: 640)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1249, size: 128, elements: !1131)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !85, line: 54, size: 128, elements: !1250)
!1250 = !{!1251, !1252}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1249, file: !85, line: 55, baseType: !296, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1249, file: !85, line: 56, baseType: !1253, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !85, line: 56, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !982, file: !983, line: 872, baseType: !1256, size: 512, offset: 6016)
!1256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !535, size: 512, elements: !942)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !982, file: !983, line: 873, baseType: !190, size: 128, offset: 6528)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !982, file: !983, line: 874, baseType: !190, size: 128, offset: 6656)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !982, file: !983, line: 876, baseType: !1260, size: 64, offset: 6784)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1262, line: 26, size: 192, elements: !1263)
!1262 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1261, file: !1262, line: 27, baseType: !7, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1261, file: !1262, line: 28, baseType: !1266, size: 128, offset: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1267, line: 43, size: 128, elements: !1268)
!1267 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1266, file: !1267, line: 44, baseType: !667)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1266, file: !1267, line: 45, baseType: !190, size: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !982, file: !983, line: 879, baseType: !603, size: 64, offset: 6848)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !982, file: !983, line: 882, baseType: !603, size: 64, offset: 6912)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !982, file: !983, line: 884, baseType: !411, size: 64, offset: 6976)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !982, file: !983, line: 885, baseType: !411, size: 64, offset: 7040)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !982, file: !983, line: 890, baseType: !411, size: 64, offset: 7104)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !982, file: !983, line: 891, baseType: !1277, size: 128, offset: 7168)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !983, line: 242, size: 128, elements: !1278)
!1278 = !{!1279, !1280, !1281}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1277, file: !983, line: 244, baseType: !411, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1277, file: !983, line: 245, baseType: !411, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1277, file: !983, line: 246, baseType: !667, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !982, file: !983, line: 900, baseType: !329, size: 64, offset: 7296)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !982, file: !983, line: 901, baseType: !329, size: 64, offset: 7360)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !982, file: !983, line: 904, baseType: !411, size: 64, offset: 7424)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !982, file: !983, line: 907, baseType: !411, size: 64, offset: 7488)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !982, file: !983, line: 910, baseType: !329, size: 64, offset: 7552)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !982, file: !983, line: 911, baseType: !329, size: 64, offset: 7616)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !982, file: !983, line: 914, baseType: !1289, size: 640, offset: 7680)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1290, line: 123, size: 640, elements: !1291)
!1290 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1291 = !{!1292, !1298, !1299}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1289, file: !1290, line: 124, baseType: !1293, size: 576)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1294, size: 576, elements: !547)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1290, line: 108, size: 192, elements: !1295)
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1294, file: !1290, line: 109, baseType: !411, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1294, file: !1290, line: 110, baseType: !1103, size: 128, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1289, file: !1290, line: 125, baseType: !7, size: 32, offset: 576)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1289, file: !1290, line: 126, baseType: !7, size: 32, offset: 608)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !982, file: !983, line: 917, baseType: !1301, size: 192, offset: 8320)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1290, line: 134, size: 192, elements: !1302)
!1302 = !{!1303, !1304}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1301, file: !1290, line: 135, baseType: !698, size: 128, align: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1301, file: !1290, line: 136, baseType: !7, size: 32, offset: 128)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !982, file: !983, line: 923, baseType: !1306, size: 64, offset: 8512)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1308)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1309, line: 111, size: 1280, elements: !1310)
!1309 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1310 = !{!1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1330, !1331, !1332, !1333, !1334, !1335, !1444, !1445, !1446, !1447, !1473, !1476, !1486}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1308, file: !1309, line: 112, baseType: !292, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1308, file: !1309, line: 120, baseType: !350, size: 32, offset: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1308, file: !1309, line: 121, baseType: !359, size: 32, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1308, file: !1309, line: 122, baseType: !350, size: 32, offset: 96)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1308, file: !1309, line: 123, baseType: !359, size: 32, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1308, file: !1309, line: 124, baseType: !350, size: 32, offset: 160)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1308, file: !1309, line: 125, baseType: !359, size: 32, offset: 192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1308, file: !1309, line: 126, baseType: !350, size: 32, offset: 224)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1308, file: !1309, line: 127, baseType: !359, size: 32, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1308, file: !1309, line: 128, baseType: !7, size: 32, offset: 288)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1308, file: !1309, line: 129, baseType: !1322, size: 64, offset: 320)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1323, line: 26, baseType: !1324)
!1323 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1323, line: 24, size: 64, elements: !1325)
!1325 = !{!1326}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1324, file: !1323, line: 25, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 64, elements: !1328)
!1328 = !{!1329}
!1329 = !DISubrange(count: 2)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1308, file: !1309, line: 130, baseType: !1322, size: 64, offset: 384)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1308, file: !1309, line: 131, baseType: !1322, size: 64, offset: 448)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1308, file: !1309, line: 132, baseType: !1322, size: 64, offset: 512)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1308, file: !1309, line: 133, baseType: !1322, size: 64, offset: 576)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1308, file: !1309, line: 135, baseType: !417, size: 8, offset: 640)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1308, file: !1309, line: 137, baseType: !1336, size: 64, offset: 704)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1338, line: 189, size: 1664, elements: !1339)
!1338 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1339 = !{!1340, !1341, !1344, !1349, !1350, !1353, !1354, !1361, !1362, !1363, !1364, !1366, !1367, !1368, !1369, !1370, !1408, !1429}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1337, file: !1338, line: 190, baseType: !288, size: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1337, file: !1338, line: 191, baseType: !1342, size: 32, offset: 32)
!1342 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1338, line: 28, baseType: !1343)
!1343 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !191, line: 98, baseType: !1204)
!1344 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !1338, line: 192, baseType: !1345, size: 192, offset: 64)
!1345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1337, file: !1338, line: 192, size: 192, elements: !1346)
!1346 = !{!1347, !1348}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1345, file: !1338, line: 193, baseType: !190, size: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1345, file: !1338, line: 194, baseType: !654, size: 192, align: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1337, file: !1338, line: 199, baseType: !661, size: 256, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1337, file: !1338, line: 200, baseType: !1351, size: 64, offset: 512)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1338, line: 200, flags: DIFlagFwdDecl)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1337, file: !1338, line: 201, baseType: !185, size: 64, offset: 576)
!1354 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !1338, line: 202, baseType: !1355, size: 64, offset: 640)
!1355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1337, file: !1338, line: 202, size: 64, elements: !1356)
!1356 = !{!1357, !1360}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1355, file: !1338, line: 203, baseType: !1358, size: 64)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1359, line: 8, baseType: !237)
!1359 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1355, file: !1338, line: 204, baseType: !1358, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1337, file: !1338, line: 206, baseType: !1358, size: 64, offset: 704)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1337, file: !1338, line: 207, baseType: !350, size: 32, offset: 768)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1337, file: !1338, line: 208, baseType: !359, size: 32, offset: 800)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1337, file: !1338, line: 209, baseType: !1365, size: 32, offset: 832)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1338, line: 31, baseType: !266)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1337, file: !1338, line: 210, baseType: !347, size: 16, offset: 864)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1337, file: !1338, line: 211, baseType: !347, size: 16, offset: 880)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1337, file: !1338, line: 215, baseType: !970, size: 16, offset: 896)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1337, file: !1338, line: 222, baseType: !329, size: 64, offset: 960)
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !1338, line: 239, baseType: !1371, size: 320, offset: 1024)
!1371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1337, file: !1338, line: 239, size: 320, elements: !1372)
!1372 = !{!1373, !1400}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1371, file: !1338, line: 240, baseType: !1374, size: 320)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1338, line: 108, size: 320, elements: !1375)
!1375 = !{!1376, !1377, !1389, !1392, !1399}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1374, file: !1338, line: 110, baseType: !329, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !1338, line: 111, baseType: !1378, size: 64, offset: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1374, file: !1338, line: 111, size: 64, elements: !1379)
!1379 = !{!1380, !1388}
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !1338, line: 112, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1378, file: !1338, line: 112, size: 64, elements: !1382)
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1381, file: !1338, line: 114, baseType: !754, size: 16)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1381, file: !1338, line: 115, baseType: !1385, size: 48, offset: 16)
!1385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 48, elements: !1386)
!1386 = !{!1387}
!1387 = !DISubrange(count: 6)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1378, file: !1338, line: 121, baseType: !329, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1374, file: !1338, line: 123, baseType: !1390, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1338, line: 96, flags: DIFlagFwdDecl)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1374, file: !1338, line: 124, baseType: !1393, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1338, line: 102, size: 192, elements: !1395)
!1395 = !{!1396, !1397, !1398}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1394, file: !1338, line: 103, baseType: !698, size: 128, align: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1394, file: !1338, line: 104, baseType: !288, size: 32, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1394, file: !1338, line: 105, baseType: !827, size: 8, offset: 160)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1374, file: !1338, line: 125, baseType: !317, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !1338, line: 241, baseType: !1401, size: 320)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !1338, line: 241, size: 320, elements: !1402)
!1402 = !{!1403, !1404, !1405, !1406, !1407}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1401, file: !1338, line: 242, baseType: !329, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1401, file: !1338, line: 243, baseType: !329, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1401, file: !1338, line: 244, baseType: !1390, size: 64, offset: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1401, file: !1338, line: 245, baseType: !1393, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1401, file: !1338, line: 246, baseType: !326, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !1338, line: 254, baseType: !1409, size: 256, offset: 1344)
!1409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1337, file: !1338, line: 254, size: 256, elements: !1410)
!1410 = !{!1411, !1417}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1409, file: !1338, line: 255, baseType: !1412, size: 256)
!1412 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1338, line: 128, size: 256, elements: !1413)
!1413 = !{!1414, !1415}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1412, file: !1338, line: 129, baseType: !185, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1412, file: !1338, line: 130, baseType: !1416, size: 256)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 256, elements: !942)
!1417 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !1338, line: 256, baseType: !1418, size: 256)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1409, file: !1338, line: 256, size: 256, elements: !1419)
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1418, file: !1338, line: 258, baseType: !190, size: 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1418, file: !1338, line: 259, baseType: !1422, size: 128, offset: 128)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1423, line: 22, size: 128, elements: !1424)
!1423 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1424 = !{!1425, !1428}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1422, file: !1423, line: 23, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1423, line: 23, flags: DIFlagFwdDecl)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1422, file: !1423, line: 24, baseType: !329, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1337, file: !1338, line: 274, baseType: !1430, size: 64, offset: 1600)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1338, line: 170, size: 192, elements: !1432)
!1432 = !{!1433, !1442, !1443}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1431, file: !1338, line: 171, baseType: !1434, size: 64)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1338, line: 165, baseType: !1435)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!296, !1336, !1438, !1440, !1336}
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1391)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1431, file: !1338, line: 172, baseType: !1336, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1431, file: !1338, line: 173, baseType: !1390, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1308, file: !1309, line: 138, baseType: !1336, size: 64, offset: 768)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1308, file: !1309, line: 139, baseType: !1336, size: 64, offset: 832)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1308, file: !1309, line: 140, baseType: !1336, size: 64, offset: 896)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1308, file: !1309, line: 145, baseType: !1448, size: 64, offset: 960)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1450, line: 13, size: 896, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1451 = !{!1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1449, file: !1450, line: 14, baseType: !288, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1449, file: !1450, line: 15, baseType: !292, size: 32, offset: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1449, file: !1450, line: 16, baseType: !292, size: 32, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1449, file: !1450, line: 21, baseType: !230, size: 64, offset: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1449, file: !1450, line: 27, baseType: !329, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1449, file: !1450, line: 28, baseType: !329, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1449, file: !1450, line: 29, baseType: !230, size: 64, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1449, file: !1450, line: 32, baseType: !535, size: 128, offset: 384)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1449, file: !1450, line: 33, baseType: !350, size: 32, offset: 512)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1449, file: !1450, line: 37, baseType: !230, size: 64, offset: 576)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1449, file: !1450, line: 44, baseType: !1463, size: 256, offset: 640)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1464, line: 15, size: 256, elements: !1465)
!1464 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1465 = !{!1466, !1467, !1468, !1469, !1470, !1471, !1472}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1463, file: !1464, line: 16, baseType: !667)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1463, file: !1464, line: 18, baseType: !296, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1463, file: !1464, line: 19, baseType: !296, size: 32, offset: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1463, file: !1464, line: 20, baseType: !296, size: 32, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1463, file: !1464, line: 21, baseType: !296, size: 32, offset: 96)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1463, file: !1464, line: 22, baseType: !329, size: 64, offset: 128)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1463, file: !1464, line: 23, baseType: !329, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1308, file: !1309, line: 146, baseType: !1474, size: 64, offset: 1024)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !351, line: 18, flags: DIFlagFwdDecl)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1308, file: !1309, line: 147, baseType: !1477, size: 64, offset: 1088)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1309, line: 25, size: 64, elements: !1479)
!1479 = !{!1480, !1481, !1482}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1478, file: !1309, line: 26, baseType: !292, size: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1478, file: !1309, line: 27, baseType: !296, size: 32, offset: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1478, file: !1309, line: 28, baseType: !1483, offset: 64)
!1483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !359, elements: !1484)
!1484 = !{!1485}
!1485 = !DISubrange(count: 0)
!1486 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !1309, line: 149, baseType: !1487, size: 128, offset: 1152)
!1487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1308, file: !1309, line: 149, size: 128, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1487, file: !1309, line: 150, baseType: !296, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1487, file: !1309, line: 151, baseType: !698, size: 128, align: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !982, file: !983, line: 926, baseType: !1306, size: 64, offset: 8576)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !982, file: !983, line: 929, baseType: !1306, size: 64, offset: 8640)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !982, file: !983, line: 933, baseType: !1336, size: 64, offset: 8704)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !982, file: !983, line: 943, baseType: !1495, size: 128, offset: 8768)
!1495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 128, elements: !1496)
!1496 = !{!1497}
!1497 = !DISubrange(count: 16)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !982, file: !983, line: 945, baseType: !1499, size: 64, offset: 8896)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !983, line: 49, flags: DIFlagFwdDecl)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !982, file: !983, line: 956, baseType: !1502, size: 64, offset: 8960)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !983, line: 45, flags: DIFlagFwdDecl)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !982, file: !983, line: 959, baseType: !1505, size: 64, offset: 9024)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !983, line: 959, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !982, file: !983, line: 962, baseType: !1508, size: 64, offset: 9088)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !983, line: 66, flags: DIFlagFwdDecl)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !982, file: !983, line: 966, baseType: !1511, size: 64, offset: 9152)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !983, line: 50, flags: DIFlagFwdDecl)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !982, file: !983, line: 969, baseType: !1514, size: 64, offset: 9216)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1516, line: 82, size: 7296, elements: !1517)
!1516 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1517 = !{!1518, !1519, !1520, !1521, !1522, !1523, !1524, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1553, !1562, !1563, !1565, !1566, !1567, !1570, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1600, !1601, !1608, !1609, !1610, !1611, !1612, !1613}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1515, file: !1516, line: 83, baseType: !288, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1515, file: !1516, line: 84, baseType: !292, size: 32, offset: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1515, file: !1516, line: 85, baseType: !296, size: 32, offset: 64)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1515, file: !1516, line: 86, baseType: !190, size: 128, offset: 128)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1515, file: !1516, line: 88, baseType: !277, size: 128, offset: 256)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1515, file: !1516, line: 91, baseType: !981, size: 64, offset: 384)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1515, file: !1516, line: 94, baseType: !1525, size: 192, offset: 448)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1526, line: 30, size: 192, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1527 = !{!1528, !1529}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1525, file: !1526, line: 31, baseType: !190, size: 128)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1525, file: !1526, line: 32, baseType: !1530, size: 64, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1531, line: 25, baseType: !1532)
!1531 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1531, line: 23, size: 64, elements: !1533)
!1533 = !{!1534}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1532, file: !1531, line: 24, baseType: !1130, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1515, file: !1516, line: 97, baseType: !531, size: 64, offset: 640)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1515, file: !1516, line: 100, baseType: !296, size: 32, offset: 704)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1515, file: !1516, line: 106, baseType: !296, size: 32, offset: 736)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1515, file: !1516, line: 107, baseType: !981, size: 64, offset: 768)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1515, file: !1516, line: 110, baseType: !296, size: 32, offset: 832)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1515, file: !1516, line: 111, baseType: !7, size: 32, offset: 864)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1515, file: !1516, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1515, file: !1516, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1515, file: !1516, line: 128, baseType: !296, size: 32, offset: 928)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1515, file: !1516, line: 129, baseType: !190, size: 128, offset: 960)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1515, file: !1516, line: 132, baseType: !1052, size: 512, offset: 1088)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1515, file: !1516, line: 133, baseType: !1060, size: 64, offset: 1600)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1515, file: !1516, line: 140, baseType: !1548, size: 256, offset: 1664)
!1548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1549, size: 256, elements: !1328)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1516, line: 38, size: 128, elements: !1550)
!1550 = !{!1551, !1552}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1549, file: !1516, line: 39, baseType: !411, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1549, file: !1516, line: 40, baseType: !411, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1515, file: !1516, line: 146, baseType: !1554, size: 192, offset: 1920)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1516, line: 66, size: 192, elements: !1555)
!1555 = !{!1556}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1554, file: !1516, line: 67, baseType: !1557, size: 192)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1516, line: 47, size: 192, elements: !1558)
!1558 = !{!1559, !1560, !1561}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1557, file: !1516, line: 48, baseType: !232, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1557, file: !1516, line: 49, baseType: !232, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1557, file: !1516, line: 50, baseType: !232, size: 64, offset: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1515, file: !1516, line: 150, baseType: !1289, size: 640, offset: 2112)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1515, file: !1516, line: 153, baseType: !1564, size: 256, offset: 2752)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1236, size: 256, elements: !942)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1515, file: !1516, line: 159, baseType: !1236, size: 64, offset: 3008)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1515, file: !1516, line: 162, baseType: !296, size: 32, offset: 3072)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1515, file: !1516, line: 164, baseType: !1568, size: 64, offset: 3136)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1516, line: 164, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1515, file: !1516, line: 175, baseType: !1571, size: 32, offset: 3200)
!1571 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !382, line: 805, baseType: !1572)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 798, size: 32, elements: !1573)
!1573 = !{!1574, !1575}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1572, file: !382, line: 803, baseType: !381, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1572, file: !382, line: 804, baseType: !240, offset: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1515, file: !1516, line: 176, baseType: !411, size: 64, offset: 3264)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1515, file: !1516, line: 176, baseType: !411, size: 64, offset: 3328)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1515, file: !1516, line: 176, baseType: !411, size: 64, offset: 3392)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1515, file: !1516, line: 176, baseType: !411, size: 64, offset: 3456)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1515, file: !1516, line: 177, baseType: !411, size: 64, offset: 3520)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1515, file: !1516, line: 178, baseType: !411, size: 64, offset: 3584)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1515, file: !1516, line: 179, baseType: !1277, size: 128, offset: 3648)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1515, file: !1516, line: 180, baseType: !329, size: 64, offset: 3776)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1515, file: !1516, line: 180, baseType: !329, size: 64, offset: 3840)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1515, file: !1516, line: 180, baseType: !329, size: 64, offset: 3904)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1515, file: !1516, line: 180, baseType: !329, size: 64, offset: 3968)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1515, file: !1516, line: 181, baseType: !329, size: 64, offset: 4032)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1515, file: !1516, line: 181, baseType: !329, size: 64, offset: 4096)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1515, file: !1516, line: 181, baseType: !329, size: 64, offset: 4160)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1515, file: !1516, line: 181, baseType: !329, size: 64, offset: 4224)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1515, file: !1516, line: 182, baseType: !329, size: 64, offset: 4288)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1515, file: !1516, line: 182, baseType: !329, size: 64, offset: 4352)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1515, file: !1516, line: 182, baseType: !329, size: 64, offset: 4416)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1515, file: !1516, line: 182, baseType: !329, size: 64, offset: 4480)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1515, file: !1516, line: 183, baseType: !329, size: 64, offset: 4544)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1515, file: !1516, line: 183, baseType: !329, size: 64, offset: 4608)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1515, file: !1516, line: 184, baseType: !1598, offset: 4672)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1599, line: 12, elements: !254)
!1599 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1515, file: !1516, line: 192, baseType: !413, size: 64, offset: 4672)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1515, file: !1516, line: 203, baseType: !1602, size: 2048, offset: 4736)
!1602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1603, size: 2048, elements: !1496)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1604, line: 43, size: 128, elements: !1605)
!1604 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1605 = !{!1606, !1607}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1603, file: !1604, line: 44, baseType: !732, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1603, file: !1604, line: 45, baseType: !732, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1515, file: !1516, line: 220, baseType: !827, size: 8, offset: 6784)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1515, file: !1516, line: 221, baseType: !970, size: 16, offset: 6800)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1515, file: !1516, line: 222, baseType: !970, size: 16, offset: 6816)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1515, file: !1516, line: 224, baseType: !877, size: 64, offset: 6848)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1515, file: !1516, line: 227, baseType: !226, size: 192, offset: 6912)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1515, file: !1516, line: 233, baseType: !226, size: 192, offset: 7104)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !982, file: !983, line: 970, baseType: !1615, size: 64, offset: 9280)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1516, line: 20, size: 16576, elements: !1617)
!1617 = !{!1618, !1619, !1620, !1621}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1616, file: !1516, line: 21, baseType: !240)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1616, file: !1516, line: 22, baseType: !288, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1616, file: !1516, line: 23, baseType: !277, size: 128, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1616, file: !1516, line: 24, baseType: !1622, size: 16384, offset: 192)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1623, size: 16384, elements: !1643)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1526, line: 49, size: 256, elements: !1624)
!1624 = !{!1625}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1623, file: !1526, line: 50, baseType: !1626, size: 256)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1526, line: 35, size: 256, elements: !1627)
!1627 = !{!1628, !1635, !1636, !1642}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1626, file: !1526, line: 37, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1630, line: 19, baseType: !1631)
!1630 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1630, line: 18, baseType: !1633)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{null, !296}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1626, file: !1526, line: 38, baseType: !329, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1626, file: !1526, line: 44, baseType: !1637, size: 64, offset: 128)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1630, line: 22, baseType: !1638)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1630, line: 21, baseType: !1640)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{null}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1626, file: !1526, line: 46, baseType: !1530, size: 64, offset: 192)
!1643 = !{!1644}
!1644 = !DISubrange(count: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !982, file: !983, line: 971, baseType: !1530, size: 64, offset: 9344)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !982, file: !983, line: 972, baseType: !1530, size: 64, offset: 9408)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !982, file: !983, line: 974, baseType: !1530, size: 64, offset: 9472)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !982, file: !983, line: 975, baseType: !1525, size: 192, offset: 9536)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !982, file: !983, line: 976, baseType: !329, size: 64, offset: 9728)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !982, file: !983, line: 977, baseType: !730, size: 64, offset: 9792)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !982, file: !983, line: 978, baseType: !7, size: 32, offset: 9856)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !982, file: !983, line: 980, baseType: !701, size: 64, offset: 9920)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !982, file: !983, line: 989, baseType: !1654, size: 128, offset: 9984)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1655, line: 35, size: 128, elements: !1656)
!1655 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1656 = !{!1657, !1658, !1659}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1654, file: !1655, line: 36, baseType: !296, size: 32)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1654, file: !1655, line: 37, baseType: !292, size: 32, offset: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1654, file: !1655, line: 38, baseType: !1660, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1655, line: 23, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !982, file: !983, line: 992, baseType: !411, size: 64, offset: 10112)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !982, file: !983, line: 993, baseType: !411, size: 64, offset: 10176)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !982, file: !983, line: 996, baseType: !240, offset: 10240)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !982, file: !983, line: 999, baseType: !667, offset: 10240)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !982, file: !983, line: 1001, baseType: !1667, size: 64, offset: 10240)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !983, line: 636, size: 64, elements: !1668)
!1668 = !{!1669}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1667, file: !983, line: 637, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !982, file: !983, line: 1005, baseType: !646, size: 128, offset: 10304)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !982, file: !983, line: 1007, baseType: !981, size: 64, offset: 10432)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !982, file: !983, line: 1009, baseType: !1674, size: 64, offset: 10496)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !983, line: 1009, flags: DIFlagFwdDecl)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !982, file: !983, line: 1043, baseType: !185, size: 64, offset: 10560)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !982, file: !983, line: 1046, baseType: !1678, size: 64, offset: 10624)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !983, line: 41, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !982, file: !983, line: 1050, baseType: !1681, size: 64, offset: 10688)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !983, line: 42, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !982, file: !983, line: 1054, baseType: !1684, size: 64, offset: 10752)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !983, line: 55, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !982, file: !983, line: 1056, baseType: !1687, size: 64, offset: 10816)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !983, line: 40, flags: DIFlagFwdDecl)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !982, file: !983, line: 1058, baseType: !1690, size: 64, offset: 10880)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1692, line: 99, size: 704, elements: !1693)
!1692 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1693 = !{!1694, !1695, !1696, !1697, !1698, !1699, !1700, !1721, !1722}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1691, file: !1692, line: 100, baseType: !230, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1691, file: !1692, line: 101, baseType: !292, size: 32, offset: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1691, file: !1692, line: 102, baseType: !292, size: 32, offset: 96)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1691, file: !1692, line: 105, baseType: !240, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1691, file: !1692, line: 107, baseType: !347, size: 16, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1691, file: !1692, line: 109, baseType: !637, size: 128, offset: 192)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1691, file: !1692, line: 110, baseType: !1701, size: 64, offset: 320)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1692, line: 73, size: 448, elements: !1703)
!1703 = !{!1704, !1707, !1708, !1715, !1720}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1702, file: !1692, line: 74, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1692, line: 74, flags: DIFlagFwdDecl)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1702, file: !1692, line: 75, baseType: !1690, size: 64, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !1692, line: 83, baseType: !1709, size: 128, offset: 128)
!1709 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1702, file: !1692, line: 83, size: 128, elements: !1710)
!1710 = !{!1711, !1712}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1709, file: !1692, line: 84, baseType: !190, size: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1709, file: !1692, line: 85, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !621, line: 117, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, scope: !1702, file: !1692, line: 87, baseType: !1716, size: 128, offset: 256)
!1716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1702, file: !1692, line: 87, size: 128, elements: !1717)
!1717 = !{!1718, !1719}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1716, file: !1692, line: 88, baseType: !535, size: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1716, file: !1692, line: 89, baseType: !698, size: 128, align: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1702, file: !1692, line: 92, baseType: !7, size: 32, offset: 384)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1691, file: !1692, line: 111, baseType: !531, size: 64, offset: 384)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1691, file: !1692, line: 113, baseType: !298, size: 256, offset: 448)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !982, file: !983, line: 1061, baseType: !1724, size: 64, offset: 10944)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !983, line: 43, flags: DIFlagFwdDecl)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !982, file: !983, line: 1064, baseType: !329, size: 64, offset: 11008)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !982, file: !983, line: 1065, baseType: !1728, size: 64, offset: 11072)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1526, line: 14, baseType: !1730)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1526, line: 12, size: 384, elements: !1731)
!1731 = !{!1732}
!1732 = !DIDerivedType(tag: DW_TAG_member, scope: !1730, file: !1526, line: 13, baseType: !1733, size: 384)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1730, file: !1526, line: 13, size: 384, elements: !1734)
!1734 = !{!1735, !1736, !1737, !1738}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1733, file: !1526, line: 13, baseType: !296, size: 32)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1733, file: !1526, line: 13, baseType: !296, size: 32, offset: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1733, file: !1526, line: 13, baseType: !296, size: 32, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1733, file: !1526, line: 13, baseType: !1739, size: 256, offset: 128)
!1739 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1740, line: 32, size: 256, elements: !1741)
!1740 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1741 = !{!1742, !1747, !1760, !1766, !1775, !1795, !1800}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1739, file: !1740, line: 37, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1739, file: !1740, line: 34, size: 64, elements: !1744)
!1744 = !{!1745, !1746}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1743, file: !1740, line: 35, baseType: !1225, size: 32)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1743, file: !1740, line: 36, baseType: !356, size: 32, offset: 32)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1739, file: !1740, line: 45, baseType: !1748, size: 192)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1739, file: !1740, line: 40, size: 192, elements: !1749)
!1749 = !{!1750, !1752, !1753, !1759}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1748, file: !1740, line: 41, baseType: !1751, size: 32)
!1751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !357, line: 95, baseType: !296)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1748, file: !1740, line: 42, baseType: !296, size: 32, offset: 32)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1748, file: !1740, line: 43, baseType: !1754, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1740, line: 11, baseType: !1755)
!1755 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1740, line: 8, size: 64, elements: !1756)
!1756 = !{!1757, !1758}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1755, file: !1740, line: 9, baseType: !296, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1755, file: !1740, line: 10, baseType: !185, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1748, file: !1740, line: 44, baseType: !296, size: 32, offset: 128)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1739, file: !1740, line: 52, baseType: !1761, size: 128)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1739, file: !1740, line: 48, size: 128, elements: !1762)
!1762 = !{!1763, !1764, !1765}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1761, file: !1740, line: 49, baseType: !1225, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1761, file: !1740, line: 50, baseType: !356, size: 32, offset: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1761, file: !1740, line: 51, baseType: !1754, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1739, file: !1740, line: 61, baseType: !1767, size: 256)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1739, file: !1740, line: 55, size: 256, elements: !1768)
!1768 = !{!1769, !1770, !1771, !1772, !1774}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1767, file: !1740, line: 56, baseType: !1225, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1767, file: !1740, line: 57, baseType: !356, size: 32, offset: 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1767, file: !1740, line: 58, baseType: !296, size: 32, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1767, file: !1740, line: 59, baseType: !1773, size: 64, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !357, line: 94, baseType: !729)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1767, file: !1740, line: 60, baseType: !1773, size: 64, offset: 192)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1739, file: !1740, line: 95, baseType: !1776, size: 256)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1739, file: !1740, line: 64, size: 256, elements: !1777)
!1777 = !{!1778, !1779}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1776, file: !1740, line: 65, baseType: !185, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, scope: !1776, file: !1740, line: 77, baseType: !1780, size: 192, offset: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1776, file: !1740, line: 77, size: 192, elements: !1781)
!1781 = !{!1782, !1783, !1790}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1780, file: !1740, line: 82, baseType: !970, size: 16)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1780, file: !1740, line: 88, baseType: !1784, size: 192)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1780, file: !1740, line: 84, size: 192, elements: !1785)
!1785 = !{!1786, !1788, !1789}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1784, file: !1740, line: 85, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 64, elements: !1090)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1784, file: !1740, line: 86, baseType: !185, size: 64, offset: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1784, file: !1740, line: 87, baseType: !185, size: 64, offset: 128)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1780, file: !1740, line: 93, baseType: !1791, size: 96)
!1791 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1780, file: !1740, line: 90, size: 96, elements: !1792)
!1792 = !{!1793, !1794}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1791, file: !1740, line: 91, baseType: !1787, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1791, file: !1740, line: 92, baseType: !203, size: 32, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1739, file: !1740, line: 101, baseType: !1796, size: 128)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1739, file: !1740, line: 98, size: 128, elements: !1797)
!1797 = !{!1798, !1799}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1796, file: !1740, line: 99, baseType: !114, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1796, file: !1740, line: 100, baseType: !296, size: 32, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1739, file: !1740, line: 108, baseType: !1801, size: 128)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1739, file: !1740, line: 104, size: 128, elements: !1802)
!1802 = !{!1803, !1804, !1805}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1801, file: !1740, line: 105, baseType: !185, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1801, file: !1740, line: 106, baseType: !296, size: 32, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1801, file: !1740, line: 107, baseType: !7, size: 32, offset: 96)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !982, file: !983, line: 1067, baseType: !1598, offset: 11136)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !982, file: !983, line: 1099, baseType: !1808, size: 64, offset: 11136)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !983, line: 56, flags: DIFlagFwdDecl)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !982, file: !983, line: 1103, baseType: !190, size: 128, offset: 11200)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !982, file: !983, line: 1104, baseType: !1812, size: 64, offset: 11328)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !983, line: 46, flags: DIFlagFwdDecl)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !982, file: !983, line: 1105, baseType: !226, size: 192, offset: 11392)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !982, file: !983, line: 1106, baseType: !7, size: 32, offset: 11584)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !982, file: !983, line: 1109, baseType: !1817, size: 128, offset: 11648)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1818, size: 128, elements: !1328)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !983, line: 51, flags: DIFlagFwdDecl)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !982, file: !983, line: 1110, baseType: !226, size: 192, offset: 11776)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !982, file: !983, line: 1111, baseType: !190, size: 128, offset: 11968)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !982, file: !983, line: 1173, baseType: !1823, size: 64, offset: 12096)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1825, line: 62, size: 256, align: 256, elements: !1826)
!1825 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1826 = !{!1827, !1828, !1829, !1834}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1824, file: !1825, line: 75, baseType: !203, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1824, file: !1825, line: 90, baseType: !203, size: 32, offset: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1824, file: !1825, line: 124, baseType: !1830, size: 64, offset: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1824, file: !1825, line: 109, size: 64, elements: !1831)
!1831 = !{!1832, !1833}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1830, file: !1825, line: 110, baseType: !412, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1830, file: !1825, line: 112, baseType: !412, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1824, file: !1825, line: 144, baseType: !203, size: 32, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !982, file: !983, line: 1174, baseType: !201, size: 32, offset: 12160)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !982, file: !983, line: 1179, baseType: !329, size: 64, offset: 12224)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !982, file: !983, line: 1182, baseType: !1838, size: 128, offset: 12288)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !938, line: 76, size: 128, elements: !1839)
!1839 = !{!1840, !1845, !1846}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1838, file: !938, line: 85, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1842, line: 7, size: 64, elements: !1843)
!1842 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1843 = !{!1844}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1841, file: !1842, line: 12, baseType: !1127, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1838, file: !938, line: 88, baseType: !827, size: 8, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1838, file: !938, line: 95, baseType: !827, size: 8, offset: 72)
!1847 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !983, line: 1184, baseType: !1848, size: 128, offset: 12416)
!1848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !983, line: 1184, size: 128, elements: !1849)
!1849 = !{!1850, !1851}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1848, file: !983, line: 1185, baseType: !288, size: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1848, file: !983, line: 1186, baseType: !698, size: 128, align: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !982, file: !983, line: 1190, baseType: !811, size: 64, offset: 12544)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !982, file: !983, line: 1192, baseType: !1854, size: 128, offset: 12608)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !938, line: 64, size: 128, elements: !1855)
!1855 = !{!1856, !1857, !1858}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1854, file: !938, line: 65, baseType: !619, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1854, file: !938, line: 67, baseType: !203, size: 32, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1854, file: !938, line: 68, baseType: !203, size: 32, offset: 96)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !982, file: !983, line: 1206, baseType: !296, size: 32, offset: 12736)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !982, file: !983, line: 1207, baseType: !296, size: 32, offset: 12768)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !982, file: !983, line: 1209, baseType: !329, size: 64, offset: 12800)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !982, file: !983, line: 1219, baseType: !411, size: 64, offset: 12864)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !982, file: !983, line: 1220, baseType: !411, size: 64, offset: 12928)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !982, file: !983, line: 1317, baseType: !296, size: 32, offset: 12992)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !982, file: !983, line: 1319, baseType: !981, size: 64, offset: 13056)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !982, file: !983, line: 1322, baseType: !1867, size: 64, offset: 13120)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !983, line: 1322, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !982, file: !983, line: 1326, baseType: !288, size: 32, offset: 13184)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !982, file: !983, line: 1342, baseType: !185, size: 64, offset: 13248)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !982, file: !983, line: 1343, baseType: !412, size: 64, offset: 13312)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !982, file: !983, line: 1344, baseType: !411, size: 64, offset: 13376)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !982, file: !983, line: 1345, baseType: !412, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !982, file: !983, line: 1346, baseType: !412, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !982, file: !983, line: 1347, baseType: !412, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !982, file: !983, line: 1348, baseType: !698, size: 128, align: 64, offset: 13504)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !982, file: !983, line: 1358, baseType: !1878, size: 34816, offset: 13824)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1879, line: 485, size: 34816, elements: !1880)
!1879 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1880 = !{!1881, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1910, !1911, !1912, !1913, !1914, !1915, !1918, !1919, !1920}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1878, file: !1879, line: 487, baseType: !1882, size: 192)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1883, size: 192, elements: !547)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1884, line: 16, size: 64, elements: !1885)
!1884 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1885 = !{!1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1883, file: !1884, line: 17, baseType: !754, size: 16)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1883, file: !1884, line: 18, baseType: !754, size: 16, offset: 16)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1883, file: !1884, line: 19, baseType: !754, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1883, file: !1884, line: 19, baseType: !754, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1883, file: !1884, line: 19, baseType: !754, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1883, file: !1884, line: 19, baseType: !754, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1883, file: !1884, line: 19, baseType: !754, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1883, file: !1884, line: 20, baseType: !754, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1883, file: !1884, line: 20, baseType: !754, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1883, file: !1884, line: 20, baseType: !754, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1883, file: !1884, line: 20, baseType: !754, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1883, file: !1884, line: 20, baseType: !754, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1883, file: !1884, line: 20, baseType: !754, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1878, file: !1879, line: 491, baseType: !329, size: 64, offset: 192)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1878, file: !1879, line: 495, baseType: !347, size: 16, offset: 256)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1878, file: !1879, line: 496, baseType: !347, size: 16, offset: 272)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1878, file: !1879, line: 497, baseType: !347, size: 16, offset: 288)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1878, file: !1879, line: 498, baseType: !347, size: 16, offset: 304)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1878, file: !1879, line: 502, baseType: !329, size: 64, offset: 320)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1878, file: !1879, line: 503, baseType: !329, size: 64, offset: 384)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1878, file: !1879, line: 514, baseType: !1907, size: 256, offset: 448)
!1907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1908, size: 256, elements: !942)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1879, line: 483, flags: DIFlagFwdDecl)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1878, file: !1879, line: 516, baseType: !329, size: 64, offset: 704)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1878, file: !1879, line: 518, baseType: !329, size: 64, offset: 768)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1878, file: !1879, line: 520, baseType: !329, size: 64, offset: 832)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1878, file: !1879, line: 521, baseType: !329, size: 64, offset: 896)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1878, file: !1879, line: 522, baseType: !329, size: 64, offset: 960)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1878, file: !1879, line: 528, baseType: !1916, size: 64, offset: 1024)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1879, line: 10, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1878, file: !1879, line: 535, baseType: !329, size: 64, offset: 1088)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1878, file: !1879, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1878, file: !1879, line: 540, baseType: !1921, size: 33280, offset: 1536)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1922, line: 317, size: 33280, elements: !1923)
!1922 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1923 = !{!1924, !1925, !1926}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1921, file: !1922, line: 330, baseType: !7, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1921, file: !1922, line: 337, baseType: !329, size: 64, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1921, file: !1922, line: 348, baseType: !1927, size: 32768, offset: 512)
!1927 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1922, line: 304, size: 32768, elements: !1928)
!1928 = !{!1929, !1944, !1981, !2031, !2044}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1927, file: !1922, line: 305, baseType: !1930, size: 896)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1922, line: 12, size: 896, elements: !1931)
!1931 = !{!1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1943}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1930, file: !1922, line: 13, baseType: !201, size: 32)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1930, file: !1922, line: 14, baseType: !201, size: 32, offset: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1930, file: !1922, line: 15, baseType: !201, size: 32, offset: 64)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1930, file: !1922, line: 16, baseType: !201, size: 32, offset: 96)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1930, file: !1922, line: 17, baseType: !201, size: 32, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1930, file: !1922, line: 18, baseType: !201, size: 32, offset: 160)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1930, file: !1922, line: 19, baseType: !201, size: 32, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1930, file: !1922, line: 22, baseType: !1940, size: 640, offset: 224)
!1940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 640, elements: !1941)
!1941 = !{!1942}
!1942 = !DISubrange(count: 20)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1930, file: !1922, line: 25, baseType: !201, size: 32, offset: 864)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1927, file: !1922, line: 306, baseType: !1945, size: 4096, align: 128)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1922, line: 34, size: 4096, align: 128, elements: !1946)
!1946 = !{!1947, !1948, !1949, !1950, !1951, !1966, !1967, !1968, !1970, !1972, !1976}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1945, file: !1922, line: 35, baseType: !754, size: 16)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1945, file: !1922, line: 36, baseType: !754, size: 16, offset: 16)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1945, file: !1922, line: 37, baseType: !754, size: 16, offset: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1945, file: !1922, line: 38, baseType: !754, size: 16, offset: 48)
!1951 = !DIDerivedType(tag: DW_TAG_member, scope: !1945, file: !1922, line: 39, baseType: !1952, size: 128, offset: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1945, file: !1922, line: 39, size: 128, elements: !1953)
!1953 = !{!1954, !1959}
!1954 = !DIDerivedType(tag: DW_TAG_member, scope: !1952, file: !1922, line: 40, baseType: !1955, size: 128)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1952, file: !1922, line: 40, size: 128, elements: !1956)
!1956 = !{!1957, !1958}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1955, file: !1922, line: 41, baseType: !411, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1955, file: !1922, line: 42, baseType: !411, size: 64, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, scope: !1952, file: !1922, line: 44, baseType: !1960, size: 128)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1952, file: !1922, line: 44, size: 128, elements: !1961)
!1961 = !{!1962, !1963, !1964, !1965}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1960, file: !1922, line: 45, baseType: !201, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1960, file: !1922, line: 46, baseType: !201, size: 32, offset: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1960, file: !1922, line: 47, baseType: !201, size: 32, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1960, file: !1922, line: 48, baseType: !201, size: 32, offset: 96)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1945, file: !1922, line: 51, baseType: !201, size: 32, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1945, file: !1922, line: 52, baseType: !201, size: 32, offset: 224)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1945, file: !1922, line: 55, baseType: !1969, size: 1024, offset: 256)
!1969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 1024, elements: !421)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1945, file: !1922, line: 58, baseType: !1971, size: 2048, offset: 1280)
!1971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 2048, elements: !1643)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1945, file: !1922, line: 60, baseType: !1973, size: 384, offset: 3328)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 384, elements: !1974)
!1974 = !{!1975}
!1975 = !DISubrange(count: 12)
!1976 = !DIDerivedType(tag: DW_TAG_member, scope: !1945, file: !1922, line: 62, baseType: !1977, size: 384, offset: 3712)
!1977 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1945, file: !1922, line: 62, size: 384, elements: !1978)
!1978 = !{!1979, !1980}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1977, file: !1922, line: 63, baseType: !1973, size: 384)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1977, file: !1922, line: 64, baseType: !1973, size: 384)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1927, file: !1922, line: 307, baseType: !1982, size: 1088)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1922, line: 79, size: 1088, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !2030}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1982, file: !1922, line: 80, baseType: !201, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1982, file: !1922, line: 81, baseType: !201, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1982, file: !1922, line: 82, baseType: !201, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1982, file: !1922, line: 83, baseType: !201, size: 32, offset: 96)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1982, file: !1922, line: 84, baseType: !201, size: 32, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1982, file: !1922, line: 85, baseType: !201, size: 32, offset: 160)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1982, file: !1922, line: 86, baseType: !201, size: 32, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1982, file: !1922, line: 88, baseType: !1940, size: 640, offset: 224)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1982, file: !1922, line: 89, baseType: !1112, size: 8, offset: 864)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1982, file: !1922, line: 90, baseType: !1112, size: 8, offset: 872)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1982, file: !1922, line: 91, baseType: !1112, size: 8, offset: 880)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1982, file: !1922, line: 92, baseType: !1112, size: 8, offset: 888)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1982, file: !1922, line: 93, baseType: !1112, size: 8, offset: 896)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1982, file: !1922, line: 94, baseType: !1112, size: 8, offset: 904)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1982, file: !1922, line: 95, baseType: !1999, size: 64, offset: 960)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2001, line: 11, size: 128, elements: !2002)
!2001 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2002 = !{!2003, !2004}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2000, file: !2001, line: 12, baseType: !114, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2000, file: !2001, line: 13, baseType: !2005, size: 64, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2007, line: 56, size: 1344, elements: !2008)
!2007 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2008 = !{!2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2006, file: !2007, line: 61, baseType: !329, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2006, file: !2007, line: 62, baseType: !329, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2006, file: !2007, line: 63, baseType: !329, size: 64, offset: 128)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2006, file: !2007, line: 64, baseType: !329, size: 64, offset: 192)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2006, file: !2007, line: 65, baseType: !329, size: 64, offset: 256)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2006, file: !2007, line: 66, baseType: !329, size: 64, offset: 320)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2006, file: !2007, line: 68, baseType: !329, size: 64, offset: 384)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2006, file: !2007, line: 69, baseType: !329, size: 64, offset: 448)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2006, file: !2007, line: 70, baseType: !329, size: 64, offset: 512)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2006, file: !2007, line: 71, baseType: !329, size: 64, offset: 576)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2006, file: !2007, line: 72, baseType: !329, size: 64, offset: 640)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2006, file: !2007, line: 73, baseType: !329, size: 64, offset: 704)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2006, file: !2007, line: 74, baseType: !329, size: 64, offset: 768)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2006, file: !2007, line: 75, baseType: !329, size: 64, offset: 832)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2006, file: !2007, line: 76, baseType: !329, size: 64, offset: 896)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2006, file: !2007, line: 81, baseType: !329, size: 64, offset: 960)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2006, file: !2007, line: 83, baseType: !329, size: 64, offset: 1024)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2006, file: !2007, line: 84, baseType: !329, size: 64, offset: 1088)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2006, file: !2007, line: 85, baseType: !329, size: 64, offset: 1152)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2006, file: !2007, line: 86, baseType: !329, size: 64, offset: 1216)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2006, file: !2007, line: 87, baseType: !329, size: 64, offset: 1280)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1982, file: !1922, line: 96, baseType: !201, size: 32, offset: 1024)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1927, file: !1922, line: 308, baseType: !2032, size: 4608, align: 512)
!2032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1922, line: 289, size: 4608, align: 512, elements: !2033)
!2033 = !{!2034, !2035, !2042}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2032, file: !1922, line: 290, baseType: !1945, size: 4096, align: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2032, file: !1922, line: 291, baseType: !2036, size: 512, offset: 4096)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1922, line: 268, size: 512, elements: !2037)
!2037 = !{!2038, !2039, !2040}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2036, file: !1922, line: 269, baseType: !411, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2036, file: !1922, line: 270, baseType: !411, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2036, file: !1922, line: 271, baseType: !2041, size: 384, offset: 128)
!2041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 384, elements: !1386)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2032, file: !1922, line: 292, baseType: !2043, offset: 4608)
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1112, elements: !1484)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1927, file: !1922, line: 309, baseType: !2045, size: 32768)
!2045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1112, size: 32768, elements: !272)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !978, file: !621, line: 378, baseType: !2047, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !974, file: !621, line: 384, baseType: !1261, size: 192, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !881, file: !621, line: 500, baseType: !240, offset: 6656)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !881, file: !621, line: 501, baseType: !2051, size: 64, offset: 6656)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !621, line: 387, flags: DIFlagFwdDecl)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !881, file: !621, line: 516, baseType: !1474, size: 64, offset: 6720)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !881, file: !621, line: 519, baseType: !685, size: 64, offset: 6784)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !881, file: !621, line: 521, baseType: !2056, size: 64, offset: 6848)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !621, line: 521, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !881, file: !621, line: 545, baseType: !292, size: 32, offset: 6912)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !881, file: !621, line: 548, baseType: !827, size: 8, offset: 6944)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !881, file: !621, line: 550, baseType: !2061, offset: 6952)
!2061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2062, line: 142, elements: !254)
!2062 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !881, file: !621, line: 554, baseType: !298, size: 256, offset: 6976)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !881, file: !621, line: 557, baseType: !201, size: 32, offset: 7232)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !878, file: !621, line: 565, baseType: !2066, offset: 7296)
!2066 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, elements: !220)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !868, file: !621, line: 333, baseType: !2068, size: 64, offset: 576)
!2068 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !611, line: 284, baseType: !2069)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !611, line: 284, size: 64, elements: !2070)
!2070 = !{!2071}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2069, file: !611, line: 284, baseType: !2072, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !901, line: 19, baseType: !329)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !868, file: !621, line: 334, baseType: !329, size: 64, offset: 640)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !868, file: !621, line: 343, baseType: !2075, size: 256, offset: 704)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !868, file: !621, line: 340, size: 256, elements: !2076)
!2076 = !{!2077, !2078}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2075, file: !621, line: 341, baseType: !654, size: 192, align: 64)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2075, file: !621, line: 342, baseType: !329, size: 64, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !868, file: !621, line: 351, baseType: !190, size: 128, offset: 960)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !868, file: !621, line: 353, baseType: !2081, size: 64, offset: 1088)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !621, line: 353, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !868, file: !621, line: 356, baseType: !2084, size: 64, offset: 1152)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2086)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !46, line: 557, size: 832, elements: !2087)
!2087 = !{!2088, !2092, !2093, !2097, !2101, !2142, !2146, !2150, !2154, !2155, !2156, !2160, !2164}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2086, file: !46, line: 558, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{null, !867}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2086, file: !46, line: 559, baseType: !2089, size: 64, offset: 64)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !2086, file: !46, line: 560, baseType: !2094, size: 64, offset: 128)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!296, !867, !329}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2086, file: !46, line: 561, baseType: !2098, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!296, !867}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2086, file: !46, line: 562, baseType: !2102, size: 64, offset: 256)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!2105, !2106}
!2105 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !621, line: 682, baseType: !7)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !46, line: 508, size: 768, elements: !2108)
!2108 = !{!2109, !2110, !2111, !2112, !2113, !2114, !2121, !2128, !2134, !2135, !2136, !2138, !2140}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2107, file: !46, line: 509, baseType: !867, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2107, file: !46, line: 510, baseType: !7, size: 32, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2107, file: !46, line: 511, baseType: !208, size: 32, offset: 96)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2107, file: !46, line: 512, baseType: !329, size: 64, offset: 128)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2107, file: !46, line: 513, baseType: !329, size: 64, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2107, file: !46, line: 514, baseType: !2115, size: 64, offset: 256)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !611, line: 385, baseType: !2117)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !611, line: 385, size: 64, elements: !2118)
!2118 = !{!2119}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2117, file: !611, line: 385, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !901, line: 15, baseType: !329)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2107, file: !46, line: 516, baseType: !2122, size: 64, offset: 320)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !611, line: 359, baseType: !2124)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !611, line: 359, size: 64, elements: !2125)
!2125 = !{!2126}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2124, file: !611, line: 359, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !901, line: 16, baseType: !329)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2107, file: !46, line: 519, baseType: !2129, size: 64, offset: 384)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !901, line: 21, baseType: !2130)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !901, line: 21, size: 64, elements: !2131)
!2131 = !{!2132}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2130, file: !901, line: 21, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !901, line: 14, baseType: !329)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2107, file: !46, line: 521, baseType: !619, size: 64, offset: 448)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2107, file: !46, line: 522, baseType: !619, size: 64, offset: 512)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2107, file: !46, line: 528, baseType: !2137, size: 64, offset: 576)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2107, file: !46, line: 532, baseType: !2139, size: 64, offset: 640)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2107, file: !46, line: 536, baseType: !2141, size: 64, offset: 704)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !611, line: 509, baseType: !619)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2086, file: !46, line: 563, baseType: !2143, size: 64, offset: 320)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!2105, !2106, !45}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2086, file: !46, line: 565, baseType: !2147, size: 64, offset: 384)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{null, !2106, !329, !329}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2086, file: !46, line: 567, baseType: !2151, size: 64, offset: 448)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!329, !867}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2086, file: !46, line: 571, baseType: !2102, size: 64, offset: 512)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2086, file: !46, line: 574, baseType: !2102, size: 64, offset: 576)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2086, file: !46, line: 579, baseType: !2157, size: 64, offset: 640)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!296, !867, !329, !185, !296, !296}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2086, file: !46, line: 585, baseType: !2161, size: 64, offset: 704)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!317, !867}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2086, file: !46, line: 615, baseType: !2165, size: 64, offset: 768)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!619, !867, !329}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !868, file: !621, line: 359, baseType: !329, size: 64, offset: 1216)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !868, file: !621, line: 361, baseType: !685, size: 64, offset: 1280)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !868, file: !621, line: 362, baseType: !185, size: 64, offset: 1344)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !868, file: !621, line: 365, baseType: !230, size: 64, offset: 1408)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !868, file: !621, line: 373, baseType: !2173, offset: 1472)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !621, line: 296, elements: !254)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !716, file: !76, line: 1836, baseType: !329, size: 64, offset: 832)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !716, file: !76, line: 1837, baseType: !2176, size: 64, offset: 896)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !716, file: !76, line: 1838, baseType: !2178, size: 64, offset: 960)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!296, !685, !2181}
!2181 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !76, line: 1007, baseType: !185)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !716, file: !76, line: 1839, baseType: !2176, size: 64, offset: 1024)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !716, file: !76, line: 1840, baseType: !2184, size: 64, offset: 1088)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!296, !685, !499, !499, !296}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !716, file: !76, line: 1841, baseType: !2188, size: 64, offset: 1152)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{!296, !296, !685, !296}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !716, file: !76, line: 1842, baseType: !2192, size: 64, offset: 1216)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!296, !685, !296, !2195}
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !76, line: 1062, size: 1664, elements: !2197)
!2197 = !{!2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2229, !2230, !2231, !2244, !2276}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2196, file: !76, line: 1063, baseType: !2195, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2196, file: !76, line: 1064, baseType: !190, size: 128, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2196, file: !76, line: 1065, baseType: !535, size: 128, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2196, file: !76, line: 1066, baseType: !190, size: 128, offset: 320)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2196, file: !76, line: 1069, baseType: !190, size: 128, offset: 448)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2196, file: !76, line: 1072, baseType: !2181, size: 64, offset: 576)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2196, file: !76, line: 1073, baseType: !7, size: 32, offset: 640)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2196, file: !76, line: 1074, baseType: !417, size: 8, offset: 672)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2196, file: !76, line: 1075, baseType: !7, size: 32, offset: 704)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2196, file: !76, line: 1076, baseType: !296, size: 32, offset: 736)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2196, file: !76, line: 1077, baseType: !277, size: 128, offset: 768)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2196, file: !76, line: 1078, baseType: !685, size: 64, offset: 896)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2196, file: !76, line: 1079, baseType: !499, size: 64, offset: 960)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2196, file: !76, line: 1080, baseType: !499, size: 64, offset: 1024)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2196, file: !76, line: 1082, baseType: !2213, size: 64, offset: 1088)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !76, line: 1314, size: 320, elements: !2215)
!2215 = !{!2216, !2224, !2225, !2226, !2227, !2228}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2214, file: !76, line: 1315, baseType: !2217)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2218, line: 20, baseType: !2219)
!2218 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2218, line: 11, elements: !2220)
!2220 = !{!2221}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2219, file: !2218, line: 12, baseType: !2222)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !252, line: 33, baseType: !2223)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !252, line: 31, elements: !254)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2214, file: !76, line: 1316, baseType: !296, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2214, file: !76, line: 1317, baseType: !296, size: 32, offset: 32)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2214, file: !76, line: 1318, baseType: !2213, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2214, file: !76, line: 1319, baseType: !685, size: 64, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2214, file: !76, line: 1320, baseType: !698, size: 128, align: 64, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2196, file: !76, line: 1084, baseType: !329, size: 64, offset: 1152)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2196, file: !76, line: 1085, baseType: !329, size: 64, offset: 1216)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2196, file: !76, line: 1087, baseType: !2232, size: 64, offset: 1280)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2234)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !76, line: 1011, size: 128, elements: !2235)
!2235 = !{!2236, !2240}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2234, file: !76, line: 1012, baseType: !2237, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{null, !2195, !2195}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2234, file: !76, line: 1013, baseType: !2241, size: 64, offset: 64)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{null, !2195}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2196, file: !76, line: 1088, baseType: !2245, size: 64, offset: 1344)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2247)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !76, line: 1016, size: 512, elements: !2248)
!2248 = !{!2249, !2253, !2257, !2258, !2262, !2266, !2270, !2275}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2247, file: !76, line: 1017, baseType: !2250, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!2181, !2181}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2247, file: !76, line: 1018, baseType: !2254, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !2181}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2247, file: !76, line: 1019, baseType: !2241, size: 64, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2247, file: !76, line: 1020, baseType: !2259, size: 64, offset: 192)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!296, !2195, !296}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2247, file: !76, line: 1021, baseType: !2263, size: 64, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!827, !2195}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2247, file: !76, line: 1022, baseType: !2267, size: 64, offset: 320)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DISubroutineType(types: !2269)
!2269 = !{!296, !2195, !296, !194}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2247, file: !76, line: 1023, baseType: !2271, size: 64, offset: 384)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{null, !2195, !2274}
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2247, file: !76, line: 1024, baseType: !2263, size: 64, offset: 448)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2196, file: !76, line: 1097, baseType: !2277, size: 256, offset: 1408)
!2277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2196, file: !76, line: 1089, size: 256, elements: !2278)
!2278 = !{!2279, !2288, !2294}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2277, file: !76, line: 1090, baseType: !2280, size: 256)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2281, line: 10, size: 256, elements: !2282)
!2281 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2282 = !{!2283, !2284, !2287}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2280, file: !2281, line: 11, baseType: !201, size: 32)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2280, file: !2281, line: 12, baseType: !2285, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2281, line: 5, flags: DIFlagFwdDecl)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2280, file: !2281, line: 13, baseType: !190, size: 128, offset: 128)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2277, file: !76, line: 1091, baseType: !2289, size: 64)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2281, line: 17, size: 64, elements: !2290)
!2290 = !{!2291}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2289, file: !2281, line: 18, baseType: !2292, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2281, line: 16, flags: DIFlagFwdDecl)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2277, file: !76, line: 1096, baseType: !2295, size: 192)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2277, file: !76, line: 1092, size: 192, elements: !2296)
!2296 = !{!2297, !2298, !2299}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2295, file: !76, line: 1093, baseType: !190, size: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2295, file: !76, line: 1094, baseType: !296, size: 32, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2295, file: !76, line: 1095, baseType: !7, size: 32, offset: 160)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !716, file: !76, line: 1843, baseType: !2301, size: 64, offset: 1280)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!727, !685, !619, !296, !730, !733, !296}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !716, file: !76, line: 1844, baseType: !887, size: 64, offset: 1344)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !716, file: !76, line: 1845, baseType: !2306, size: 64, offset: 1408)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!296, !296}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !716, file: !76, line: 1846, baseType: !2192, size: 64, offset: 1472)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !716, file: !76, line: 1847, baseType: !2311, size: 64, offset: 1536)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!727, !811, !685, !733, !730, !7}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !716, file: !76, line: 1848, baseType: !2315, size: 64, offset: 1600)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!727, !685, !733, !811, !730, !7}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !716, file: !76, line: 1849, baseType: !2319, size: 64, offset: 1664)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!296, !685, !114, !2322, !2274}
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !716, file: !76, line: 1850, baseType: !2324, size: 64, offset: 1728)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!114, !685, !296, !499, !499}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !716, file: !76, line: 1852, baseType: !2328, size: 64, offset: 1792)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{null, !609, !685}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !716, file: !76, line: 1856, baseType: !2332, size: 64, offset: 1856)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!727, !685, !499, !685, !499, !730, !7}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !716, file: !76, line: 1858, baseType: !2336, size: 64, offset: 1920)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!499, !685, !499, !685, !499, !499, !7}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !716, file: !76, line: 1861, baseType: !2184, size: 64, offset: 1984)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !686, file: !76, line: 929, baseType: !240, offset: 384)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !686, file: !76, line: 930, baseType: !75, size: 32, offset: 384)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !686, file: !76, line: 931, baseType: !230, size: 64, offset: 448)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !686, file: !76, line: 932, baseType: !7, size: 32, offset: 512)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !686, file: !76, line: 933, baseType: !2345, size: 32, offset: 544)
!2345 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !191, line: 150, baseType: !7)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !686, file: !76, line: 934, baseType: !226, size: 192, offset: 576)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !686, file: !76, line: 935, baseType: !499, size: 64, offset: 768)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !686, file: !76, line: 936, baseType: !2349, size: 192, offset: 832)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !76, line: 885, size: 192, elements: !2350)
!2350 = !{!2351, !2352, !2353, !2354, !2355, !2356}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2349, file: !76, line: 886, baseType: !2217)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2349, file: !76, line: 887, baseType: !1236, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2349, file: !76, line: 888, baseType: !84, size: 32, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2349, file: !76, line: 889, baseType: !350, size: 32, offset: 96)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2349, file: !76, line: 889, baseType: !350, size: 32, offset: 128)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2349, file: !76, line: 890, baseType: !296, size: 32, offset: 160)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !686, file: !76, line: 937, baseType: !1306, size: 64, offset: 1024)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !686, file: !76, line: 938, baseType: !2359, size: 256, offset: 1088)
!2359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !76, line: 896, size: 256, elements: !2360)
!2360 = !{!2361, !2362, !2363, !2364, !2365, !2366}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2359, file: !76, line: 897, baseType: !329, size: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2359, file: !76, line: 898, baseType: !7, size: 32, offset: 64)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2359, file: !76, line: 899, baseType: !7, size: 32, offset: 96)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2359, file: !76, line: 902, baseType: !7, size: 32, offset: 128)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2359, file: !76, line: 903, baseType: !7, size: 32, offset: 160)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2359, file: !76, line: 904, baseType: !499, size: 64, offset: 192)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !686, file: !76, line: 940, baseType: !411, size: 64, offset: 1344)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !686, file: !76, line: 945, baseType: !185, size: 64, offset: 1408)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !686, file: !76, line: 949, baseType: !190, size: 128, offset: 1472)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !686, file: !76, line: 950, baseType: !190, size: 128, offset: 1600)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !686, file: !76, line: 952, baseType: !632, size: 64, offset: 1728)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !686, file: !76, line: 953, baseType: !2373, size: 32, offset: 1792)
!2373 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2374, line: 8, baseType: !201)
!2374 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !686, file: !76, line: 954, baseType: !2373, size: 32, offset: 1824)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !675, file: !76, line: 372, baseType: !2377, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!296, !632, !574}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !675, file: !76, line: 375, baseType: !2381, size: 64, offset: 192)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!296, !619}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !675, file: !76, line: 381, baseType: !2385, size: 64, offset: 256)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!296, !685, !632, !194, !7}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !675, file: !76, line: 383, baseType: !2389, size: 64, offset: 320)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2390, size: 64)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{null, !2392}
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !764, line: 795, size: 256, elements: !2394)
!2394 = !{!2395, !2396, !2397, !2398, !2399}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2393, file: !764, line: 796, baseType: !685, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2393, file: !764, line: 797, baseType: !632, size: 64, offset: 64)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !2393, file: !764, line: 799, baseType: !329, size: 64, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !2393, file: !764, line: 800, baseType: !7, size: 32, offset: 192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !2393, file: !764, line: 801, baseType: !7, size: 32, offset: 224)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !675, file: !76, line: 385, baseType: !2401, size: 64, offset: 384)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!296, !685, !632, !499, !7, !7, !2404, !2274}
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !675, file: !76, line: 388, baseType: !2406, size: 64, offset: 448)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!296, !685, !632, !499, !7, !7, !619, !185}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !675, file: !76, line: 393, baseType: !2410, size: 64, offset: 512)
!2410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2411, size: 64)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!2413, !632, !2413}
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !191, line: 125, baseType: !411)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !675, file: !76, line: 394, baseType: !2415, size: 64, offset: 576)
!2415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{null, !619, !7, !7}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !675, file: !76, line: 395, baseType: !2419, size: 64, offset: 640)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{!296, !619, !208}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !675, file: !76, line: 396, baseType: !2423, size: 64, offset: 704)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !619}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !675, file: !76, line: 397, baseType: !739, size: 64, offset: 768)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !675, file: !76, line: 402, baseType: !2428, size: 64, offset: 832)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!296, !632, !619, !619, !38}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !675, file: !76, line: 404, baseType: !2432, size: 64, offset: 896)
!2432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2433, size: 64)
!2433 = !DISubroutineType(types: !2434)
!2434 = !{!827, !619, !2435}
!2435 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !2436, line: 305, baseType: !7)
!2436 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !675, file: !76, line: 405, baseType: !2423, size: 64, offset: 960)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !675, file: !76, line: 406, baseType: !2381, size: 64, offset: 1024)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !675, file: !76, line: 407, baseType: !2440, size: 64, offset: 1088)
!2440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2441 = !DISubroutineType(types: !2442)
!2442 = !{!296, !619, !329, !329}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !675, file: !76, line: 409, baseType: !2444, size: 64, offset: 1152)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{null, !619, !2447, !2447}
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !675, file: !76, line: 410, baseType: !2449, size: 64, offset: 1216)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!296, !632, !619}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !675, file: !76, line: 413, baseType: !2453, size: 64, offset: 1280)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DISubroutineType(types: !2455)
!2455 = !{!296, !2456, !685, !2458}
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !76, line: 61, flags: DIFlagFwdDecl)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !675, file: !76, line: 415, baseType: !2460, size: 64, offset: 1344)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{null, !685}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !76, line: 466, baseType: !329, size: 64, offset: 896)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !633, file: !76, line: 467, baseType: !2373, size: 32, offset: 960)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !633, file: !76, line: 468, baseType: !240, offset: 992)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !633, file: !76, line: 469, baseType: !190, size: 128, offset: 1024)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !633, file: !76, line: 470, baseType: !185, size: 64, offset: 1152)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !628, file: !621, line: 87, baseType: !329, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !628, file: !621, line: 94, baseType: !329, size: 64, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !621, line: 96, baseType: !2471, size: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !621, line: 96, size: 64, elements: !2472)
!2472 = !{!2473}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2471, file: !621, line: 101, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !191, line: 143, baseType: !411)
!2475 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !621, line: 103, baseType: !2476, size: 320)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !621, line: 103, size: 320, elements: !2477)
!2477 = !{!2478, !2488, !2489, !2490}
!2478 = !DIDerivedType(tag: DW_TAG_member, scope: !2476, file: !621, line: 104, baseType: !2479, size: 128)
!2479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2476, file: !621, line: 104, size: 128, elements: !2480)
!2480 = !{!2481, !2482}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !2479, file: !621, line: 105, baseType: !190, size: 128)
!2482 = !DIDerivedType(tag: DW_TAG_member, scope: !2479, file: !621, line: 106, baseType: !2483, size: 128)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2479, file: !621, line: 106, size: 128, elements: !2484)
!2484 = !{!2485, !2486, !2487}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2483, file: !621, line: 107, baseType: !619, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2483, file: !621, line: 109, baseType: !296, size: 32, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !2483, file: !621, line: 110, baseType: !296, size: 32, offset: 96)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !2476, file: !621, line: 117, baseType: !1713, size: 64, offset: 128)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !2476, file: !621, line: 119, baseType: !185, size: 64, offset: 192)
!2490 = !DIDerivedType(tag: DW_TAG_member, scope: !2476, file: !621, line: 120, baseType: !2491, size: 64, offset: 256)
!2491 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2476, file: !621, line: 120, size: 64, elements: !2492)
!2492 = !{!2493, !2494, !2495}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !2491, file: !621, line: 121, baseType: !185, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !2491, file: !621, line: 122, baseType: !329, size: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, scope: !2491, file: !621, line: 123, baseType: !2496, size: 32)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2491, file: !621, line: 123, size: 32, elements: !2497)
!2497 = !{!2498, !2499, !2500}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !2496, file: !621, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !2496, file: !621, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2496, file: !621, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2501 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !621, line: 130, baseType: !2502, size: 192)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !621, line: 130, size: 192, elements: !2503)
!2503 = !{!2504, !2505, !2506, !2507, !2508}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2502, file: !621, line: 131, baseType: !329, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !2502, file: !621, line: 134, baseType: !417, size: 8, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !2502, file: !621, line: 135, baseType: !417, size: 8, offset: 72)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !2502, file: !621, line: 136, baseType: !292, size: 32, offset: 96)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !2502, file: !621, line: 137, baseType: !7, size: 32, offset: 128)
!2509 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !621, line: 139, baseType: !2510, size: 256)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !621, line: 139, size: 256, elements: !2511)
!2511 = !{!2512, !2513, !2514}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !2510, file: !621, line: 140, baseType: !329, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !2510, file: !621, line: 141, baseType: !292, size: 32, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !2510, file: !621, line: 143, baseType: !190, size: 128, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !621, line: 145, baseType: !2516, size: 256)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !621, line: 145, size: 256, elements: !2517)
!2517 = !{!2518, !2519, !2520, !2521, !2526}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !2516, file: !621, line: 146, baseType: !329, size: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !2516, file: !621, line: 147, baseType: !2141, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !2516, file: !621, line: 148, baseType: !329, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, scope: !2516, file: !621, line: 149, baseType: !2522, size: 64, offset: 192)
!2522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2516, file: !621, line: 149, size: 64, elements: !2523)
!2523 = !{!2524, !2525}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !2522, file: !621, line: 150, baseType: !877, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !2522, file: !621, line: 151, baseType: !292, size: 32)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2516, file: !621, line: 156, baseType: !240, offset: 256)
!2527 = !DIDerivedType(tag: DW_TAG_member, scope: !625, file: !621, line: 159, baseType: !2528, size: 128)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !625, file: !621, line: 159, size: 128, elements: !2529)
!2529 = !{!2530, !2594}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2528, file: !621, line: 161, baseType: !2531, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !63, line: 110, size: 1152, elements: !2533)
!2533 = !{!2534, !2544, !2565, !2566, !2567, !2568, !2569, !2581, !2582, !2583}
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2532, file: !63, line: 111, baseType: !2535, size: 384)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !63, line: 19, size: 384, elements: !2536)
!2536 = !{!2537, !2539, !2540, !2541, !2542, !2543}
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2535, file: !63, line: 20, baseType: !2538, size: 64)
!2538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2535, file: !63, line: 21, baseType: !2538, size: 64, offset: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2535, file: !63, line: 22, baseType: !2538, size: 64, offset: 128)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2535, file: !63, line: 23, baseType: !329, size: 64, offset: 192)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2535, file: !63, line: 24, baseType: !329, size: 64, offset: 256)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2535, file: !63, line: 25, baseType: !329, size: 64, offset: 320)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2532, file: !63, line: 112, baseType: !2545, size: 64, offset: 384)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2547, line: 105, size: 128, elements: !2548)
!2547 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2548 = !{!2549, !2550}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2546, file: !2547, line: 110, baseType: !329, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2546, file: !2547, line: 118, baseType: !2551, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2547, line: 95, size: 448, elements: !2553)
!2553 = !{!2554, !2555, !2560, !2561, !2562, !2563, !2564}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2552, file: !2547, line: 96, baseType: !230, size: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2552, file: !2547, line: 97, baseType: !2556, size: 64, offset: 64)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2547, line: 60, baseType: !2558)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{null, !2545}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2552, file: !2547, line: 98, baseType: !2556, size: 64, offset: 128)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2552, file: !2547, line: 99, baseType: !827, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2552, file: !2547, line: 100, baseType: !827, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2552, file: !2547, line: 101, baseType: !698, size: 128, align: 64, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2552, file: !2547, line: 102, baseType: !2545, size: 64, offset: 384)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2532, file: !63, line: 113, baseType: !2546, size: 128, offset: 448)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2532, file: !63, line: 114, baseType: !1261, size: 192, offset: 576)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2532, file: !63, line: 115, baseType: !62, size: 32, offset: 768)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2532, file: !63, line: 116, baseType: !7, size: 32, offset: 800)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2532, file: !63, line: 117, baseType: !2570, size: 64, offset: 832)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2572)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !63, line: 67, size: 256, elements: !2573)
!2573 = !{!2574, !2575, !2579, !2580}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2572, file: !63, line: 73, baseType: !2423, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2572, file: !63, line: 78, baseType: !2576, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{null, !2531}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2572, file: !63, line: 83, baseType: !2576, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2572, file: !63, line: 89, baseType: !2102, size: 64, offset: 192)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2532, file: !63, line: 118, baseType: !185, size: 64, offset: 896)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2532, file: !63, line: 119, baseType: !296, size: 32, offset: 960)
!2583 = !DIDerivedType(tag: DW_TAG_member, scope: !2532, file: !63, line: 120, baseType: !2584, size: 128, offset: 1024)
!2584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2532, file: !63, line: 120, size: 128, elements: !2585)
!2585 = !{!2586, !2592}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2584, file: !63, line: 121, baseType: !2587, size: 128)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2588, line: 6, size: 128, elements: !2589)
!2588 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2589 = !{!2590, !2591}
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2587, file: !2588, line: 7, baseType: !411, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2587, file: !2588, line: 8, baseType: !411, size: 64, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2584, file: !63, line: 122, baseType: !2593)
!2593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2587, elements: !1484)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2528, file: !621, line: 162, baseType: !185, size: 64, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !625, file: !621, line: 176, baseType: !698, size: 128, align: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, scope: !620, file: !621, line: 179, baseType: !2597, size: 32, offset: 384)
!2597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !620, file: !621, line: 179, size: 32, elements: !2598)
!2598 = !{!2599, !2600, !2601, !2602}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2597, file: !621, line: 184, baseType: !292, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2597, file: !621, line: 192, baseType: !7, size: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2597, file: !621, line: 194, baseType: !7, size: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2597, file: !621, line: 195, baseType: !296, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !620, file: !621, line: 199, baseType: !292, size: 32, offset: 416)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !555, file: !76, line: 1964, baseType: !2605, size: 64, offset: 1344)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!114, !489, !2608}
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2610, line: 12, size: 256, elements: !2611)
!2610 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2611 = !{!2612, !2613, !2614, !2615, !2616}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2609, file: !2610, line: 13, baseType: !208, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2609, file: !2610, line: 16, baseType: !296, size: 32, offset: 32)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2609, file: !2610, line: 23, baseType: !329, size: 64, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2609, file: !2610, line: 30, baseType: !329, size: 64, offset: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2609, file: !2610, line: 33, baseType: !2617, size: 64, offset: 192)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2610, line: 33, flags: DIFlagFwdDecl)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !555, file: !76, line: 1966, baseType: !2605, size: 64, offset: 1408)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !490, file: !76, line: 1424, baseType: !2621, size: 64, offset: 448)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2623)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !70, line: 322, size: 704, elements: !2624)
!2624 = !{!2625, !2671, !2675, !2679, !2680, !2681, !2682, !2683, !2688, !2693, !2697}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2623, file: !70, line: 323, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2627, size: 64)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!296, !2629}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !70, line: 294, size: 1600, elements: !2631)
!2631 = !{!2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2656, !2657, !2658}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2630, file: !70, line: 295, baseType: !535, size: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2630, file: !70, line: 296, baseType: !190, size: 128, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2630, file: !70, line: 297, baseType: !190, size: 128, offset: 256)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2630, file: !70, line: 298, baseType: !190, size: 128, offset: 384)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2630, file: !70, line: 299, baseType: !226, size: 192, offset: 512)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2630, file: !70, line: 300, baseType: !240, offset: 704)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2630, file: !70, line: 301, baseType: !292, size: 32, offset: 704)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2630, file: !70, line: 302, baseType: !489, size: 64, offset: 768)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2630, file: !70, line: 303, baseType: !2641, size: 64, offset: 832)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !70, line: 68, size: 64, elements: !2642)
!2642 = !{!2643, !2655}
!2643 = !DIDerivedType(tag: DW_TAG_member, scope: !2641, file: !70, line: 69, baseType: !2644, size: 32)
!2644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2641, file: !70, line: 69, size: 32, elements: !2645)
!2645 = !{!2646, !2647, !2648}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2644, file: !70, line: 70, baseType: !350, size: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2644, file: !70, line: 71, baseType: !359, size: 32)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2644, file: !70, line: 72, baseType: !2649, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2650, line: 24, baseType: !2651)
!2650 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2650, line: 22, size: 32, elements: !2652)
!2652 = !{!2653}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2651, file: !2650, line: 23, baseType: !2654, size: 32)
!2654 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2650, line: 20, baseType: !356)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2641, file: !70, line: 74, baseType: !69, size: 32, offset: 32)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2630, file: !70, line: 304, baseType: !499, size: 64, offset: 896)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2630, file: !70, line: 305, baseType: !329, size: 64, offset: 960)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2630, file: !70, line: 306, baseType: !2659, size: 576, offset: 1024)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !70, line: 205, size: 576, elements: !2660)
!2660 = !{!2661, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2659, file: !70, line: 206, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !70, line: 66, baseType: !238)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2659, file: !70, line: 207, baseType: !2662, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2659, file: !70, line: 208, baseType: !2662, size: 64, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2659, file: !70, line: 209, baseType: !2662, size: 64, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2659, file: !70, line: 210, baseType: !2662, size: 64, offset: 256)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2659, file: !70, line: 211, baseType: !2662, size: 64, offset: 320)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2659, file: !70, line: 212, baseType: !2662, size: 64, offset: 384)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2659, file: !70, line: 213, baseType: !1358, size: 64, offset: 448)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2659, file: !70, line: 214, baseType: !1358, size: 64, offset: 512)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2623, file: !70, line: 324, baseType: !2672, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!2629, !489, !296}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2623, file: !70, line: 325, baseType: !2676, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{null, !2629}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2623, file: !70, line: 326, baseType: !2626, size: 64, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2623, file: !70, line: 327, baseType: !2626, size: 64, offset: 256)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2623, file: !70, line: 328, baseType: !2626, size: 64, offset: 320)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2623, file: !70, line: 329, baseType: !583, size: 64, offset: 384)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2623, file: !70, line: 332, baseType: !2684, size: 64, offset: 448)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!2687, !342}
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2623, file: !70, line: 333, baseType: !2689, size: 64, offset: 512)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!296, !342, !2692}
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2623, file: !70, line: 335, baseType: !2694, size: 64, offset: 576)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!296, !342, !2687}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2623, file: !70, line: 337, baseType: !2698, size: 64, offset: 640)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!296, !489, !2701}
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2641, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !490, file: !76, line: 1425, baseType: !2703, size: 64, offset: 512)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2705)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !70, line: 428, size: 704, elements: !2706)
!2706 = !{!2707, !2713, !2714, !2718, !2719, !2720, !2735, !2758, !2762, !2763, !2786}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2705, file: !70, line: 429, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!296, !489, !296, !296, !2711}
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !707)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2705, file: !70, line: 430, baseType: !583, size: 64, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2705, file: !70, line: 431, baseType: !2715, size: 64, offset: 128)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!296, !489, !7}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2705, file: !70, line: 432, baseType: !2715, size: 64, offset: 192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2705, file: !70, line: 433, baseType: !583, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2705, file: !70, line: 434, baseType: !2721, size: 64, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!296, !489, !296, !2724}
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !70, line: 415, size: 256, elements: !2726)
!2726 = !{!2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2725, file: !70, line: 416, baseType: !296, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2725, file: !70, line: 417, baseType: !7, size: 32, offset: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2725, file: !70, line: 418, baseType: !7, size: 32, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2725, file: !70, line: 420, baseType: !7, size: 32, offset: 96)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2725, file: !70, line: 421, baseType: !7, size: 32, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2725, file: !70, line: 422, baseType: !7, size: 32, offset: 160)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2725, file: !70, line: 423, baseType: !7, size: 32, offset: 192)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2725, file: !70, line: 424, baseType: !7, size: 32, offset: 224)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2705, file: !70, line: 435, baseType: !2736, size: 64, offset: 384)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!296, !489, !2641, !2739}
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !70, line: 343, size: 960, elements: !2741)
!2741 = !{!2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2740, file: !70, line: 344, baseType: !296, size: 32)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2740, file: !70, line: 345, baseType: !411, size: 64, offset: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2740, file: !70, line: 346, baseType: !411, size: 64, offset: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2740, file: !70, line: 347, baseType: !411, size: 64, offset: 192)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2740, file: !70, line: 348, baseType: !411, size: 64, offset: 256)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2740, file: !70, line: 349, baseType: !411, size: 64, offset: 320)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2740, file: !70, line: 350, baseType: !411, size: 64, offset: 384)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2740, file: !70, line: 351, baseType: !236, size: 64, offset: 448)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2740, file: !70, line: 353, baseType: !236, size: 64, offset: 512)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2740, file: !70, line: 354, baseType: !296, size: 32, offset: 576)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2740, file: !70, line: 355, baseType: !296, size: 32, offset: 608)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2740, file: !70, line: 356, baseType: !411, size: 64, offset: 640)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2740, file: !70, line: 357, baseType: !411, size: 64, offset: 704)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2740, file: !70, line: 358, baseType: !411, size: 64, offset: 768)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2740, file: !70, line: 359, baseType: !236, size: 64, offset: 832)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2740, file: !70, line: 360, baseType: !296, size: 32, offset: 896)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2705, file: !70, line: 436, baseType: !2759, size: 64, offset: 448)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2760, size: 64)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{!296, !489, !2701, !2739}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2705, file: !70, line: 438, baseType: !2736, size: 64, offset: 512)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2705, file: !70, line: 439, baseType: !2764, size: 64, offset: 576)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{!296, !489, !2767}
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !70, line: 409, size: 1408, elements: !2769)
!2769 = !{!2770, !2771}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2768, file: !70, line: 410, baseType: !7, size: 32)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2768, file: !70, line: 411, baseType: !2772, size: 1344, offset: 64)
!2772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2773, size: 1344, elements: !547)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !70, line: 395, size: 448, elements: !2774)
!2774 = !{!2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2785}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2773, file: !70, line: 396, baseType: !7, size: 32)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2773, file: !70, line: 397, baseType: !7, size: 32, offset: 32)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2773, file: !70, line: 399, baseType: !7, size: 32, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2773, file: !70, line: 400, baseType: !7, size: 32, offset: 96)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2773, file: !70, line: 401, baseType: !7, size: 32, offset: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2773, file: !70, line: 402, baseType: !7, size: 32, offset: 160)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2773, file: !70, line: 403, baseType: !7, size: 32, offset: 192)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2773, file: !70, line: 404, baseType: !413, size: 64, offset: 256)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2773, file: !70, line: 405, baseType: !2784, size: 64, offset: 320)
!2784 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !191, line: 126, baseType: !411)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2773, file: !70, line: 406, baseType: !2784, size: 64, offset: 384)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2705, file: !70, line: 440, baseType: !2715, size: 64, offset: 640)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !490, file: !76, line: 1426, baseType: !2788, size: 64, offset: 576)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2790)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !76, line: 49, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !490, file: !76, line: 1427, baseType: !329, size: 64, offset: 640)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !490, file: !76, line: 1428, baseType: !329, size: 64, offset: 704)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !490, file: !76, line: 1429, baseType: !329, size: 64, offset: 768)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !490, file: !76, line: 1430, baseType: !375, size: 64, offset: 832)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !490, file: !76, line: 1431, baseType: !661, size: 256, offset: 896)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !490, file: !76, line: 1432, baseType: !296, size: 32, offset: 1152)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !490, file: !76, line: 1433, baseType: !292, size: 32, offset: 1184)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !490, file: !76, line: 1437, baseType: !2799, size: 64, offset: 1216)
!2799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2800, size: 64)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2802)
!2802 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !76, line: 1437, flags: DIFlagFwdDecl)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !490, file: !76, line: 1449, baseType: !2804, size: 64, offset: 1280)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !392, line: 34, size: 64, elements: !2805)
!2805 = !{!2806}
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2804, file: !392, line: 35, baseType: !395, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !490, file: !76, line: 1450, baseType: !190, size: 128, offset: 1344)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !490, file: !76, line: 1451, baseType: !2809, size: 64, offset: 1472)
!2809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2810, size: 64)
!2810 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !76, line: 699, flags: DIFlagFwdDecl)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !490, file: !76, line: 1452, baseType: !1687, size: 64, offset: 1536)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !490, file: !76, line: 1453, baseType: !2813, size: 64, offset: 1600)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !76, line: 1453, flags: DIFlagFwdDecl)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !490, file: !76, line: 1454, baseType: !535, size: 128, offset: 1664)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !490, file: !76, line: 1455, baseType: !7, size: 32, offset: 1792)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !490, file: !76, line: 1456, baseType: !2818, size: 2432, offset: 1856)
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !70, line: 518, size: 2432, elements: !2819)
!2819 = !{!2820, !2821, !2822, !2824, !2856}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2818, file: !70, line: 519, baseType: !7, size: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2818, file: !70, line: 520, baseType: !661, size: 256, offset: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2818, file: !70, line: 521, baseType: !2823, size: 192, offset: 320)
!2823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 192, elements: !547)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2818, file: !70, line: 522, baseType: !2825, size: 1728, offset: 512)
!2825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2826, size: 1728, elements: !547)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !70, line: 222, size: 576, elements: !2827)
!2827 = !{!2828, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2826, file: !70, line: 223, baseType: !2829, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !70, line: 443, size: 256, elements: !2831)
!2831 = !{!2832, !2833, !2846, !2847}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2830, file: !70, line: 444, baseType: !296, size: 32)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2830, file: !70, line: 445, baseType: !2834, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2836)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !70, line: 310, size: 512, elements: !2837)
!2837 = !{!2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2836, file: !70, line: 311, baseType: !583, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2836, file: !70, line: 312, baseType: !583, size: 64, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2836, file: !70, line: 313, baseType: !583, size: 64, offset: 128)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2836, file: !70, line: 314, baseType: !583, size: 64, offset: 192)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2836, file: !70, line: 315, baseType: !2626, size: 64, offset: 256)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2836, file: !70, line: 316, baseType: !2626, size: 64, offset: 320)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2836, file: !70, line: 317, baseType: !2626, size: 64, offset: 384)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2836, file: !70, line: 318, baseType: !2698, size: 64, offset: 448)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2830, file: !70, line: 446, baseType: !526, size: 64, offset: 128)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2830, file: !70, line: 447, baseType: !2829, size: 64, offset: 192)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2826, file: !70, line: 224, baseType: !296, size: 32, offset: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2826, file: !70, line: 226, baseType: !190, size: 128, offset: 128)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2826, file: !70, line: 227, baseType: !329, size: 64, offset: 256)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2826, file: !70, line: 228, baseType: !7, size: 32, offset: 320)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2826, file: !70, line: 229, baseType: !7, size: 32, offset: 352)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2826, file: !70, line: 230, baseType: !2662, size: 64, offset: 384)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2826, file: !70, line: 231, baseType: !2662, size: 64, offset: 448)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2826, file: !70, line: 232, baseType: !185, size: 64, offset: 512)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2818, file: !70, line: 523, baseType: !2857, size: 192, offset: 2240)
!2857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2834, size: 192, elements: !547)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !490, file: !76, line: 1458, baseType: !2859, size: 2112, offset: 4288)
!2859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !76, line: 1410, size: 2112, elements: !2860)
!2860 = !{!2861, !2862, !2863}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2859, file: !76, line: 1411, baseType: !296, size: 32)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2859, file: !76, line: 1412, baseType: !277, size: 128, offset: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2859, file: !76, line: 1413, baseType: !2864, size: 1920, offset: 192)
!2864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2865, size: 1920, elements: !547)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2866, line: 12, size: 640, elements: !2867)
!2866 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2867 = !{!2868, !2876, !2878, !2883, !2884}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2865, file: !2866, line: 13, baseType: !2869, size: 320)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2870, line: 17, size: 320, elements: !2871)
!2870 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2871 = !{!2872, !2873, !2874, !2875}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2869, file: !2870, line: 18, baseType: !296, size: 32)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2869, file: !2870, line: 19, baseType: !296, size: 32, offset: 32)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2869, file: !2870, line: 20, baseType: !277, size: 128, offset: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2869, file: !2870, line: 22, baseType: !698, size: 128, align: 64, offset: 192)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2865, file: !2866, line: 14, baseType: !2877, size: 64, offset: 320)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2865, file: !2866, line: 15, baseType: !2879, size: 64, offset: 384)
!2879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2880, line: 16, size: 64, elements: !2881)
!2880 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2881 = !{!2882}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2879, file: !2880, line: 17, baseType: !981, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2865, file: !2866, line: 16, baseType: !277, size: 128, offset: 448)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2865, file: !2866, line: 17, baseType: !292, size: 32, offset: 576)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !490, file: !76, line: 1465, baseType: !185, size: 64, offset: 6400)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !490, file: !76, line: 1468, baseType: !201, size: 32, offset: 6464)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !490, file: !76, line: 1470, baseType: !1358, size: 64, offset: 6528)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !490, file: !76, line: 1471, baseType: !1358, size: 64, offset: 6592)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !490, file: !76, line: 1473, baseType: !203, size: 32, offset: 6656)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !490, file: !76, line: 1474, baseType: !2891, size: 64, offset: 6720)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !76, line: 603, flags: DIFlagFwdDecl)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !490, file: !76, line: 1477, baseType: !2894, size: 256, offset: 6784)
!2894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 256, elements: !421)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !490, file: !76, line: 1478, baseType: !2896, size: 128, offset: 7040)
!2896 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2897, line: 18, baseType: !2898)
!2897 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2898 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2897, line: 16, size: 128, elements: !2899)
!2899 = !{!2900}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2898, file: !2897, line: 17, baseType: !2901, size: 128)
!2901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1113, size: 128, elements: !1496)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !490, file: !76, line: 1480, baseType: !7, size: 32, offset: 7168)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !490, file: !76, line: 1481, baseType: !2345, size: 32, offset: 7200)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !490, file: !76, line: 1487, baseType: !226, size: 192, offset: 7232)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !490, file: !76, line: 1493, baseType: !317, size: 64, offset: 7424)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !490, file: !76, line: 1495, baseType: !436, size: 64, offset: 7488)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !490, file: !76, line: 1500, baseType: !296, size: 32, offset: 7552)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !490, file: !76, line: 1502, baseType: !2909, size: 448, offset: 7616)
!2909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2610, line: 60, size: 448, elements: !2910)
!2910 = !{!2911, !2916, !2917, !2918, !2919, !2920, !2921}
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2909, file: !2610, line: 61, baseType: !2912, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DISubroutineType(types: !2914)
!2914 = !{!329, !2915, !2608}
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2909, file: !2610, line: 63, baseType: !2912, size: 64, offset: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2909, file: !2610, line: 66, baseType: !114, size: 64, offset: 128)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2909, file: !2610, line: 67, baseType: !296, size: 32, offset: 192)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2909, file: !2610, line: 68, baseType: !7, size: 32, offset: 224)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2909, file: !2610, line: 71, baseType: !190, size: 128, offset: 256)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2909, file: !2610, line: 77, baseType: !2922, size: 64, offset: 384)
!2922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !490, file: !76, line: 1505, baseType: !230, size: 64, offset: 8064)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !490, file: !76, line: 1508, baseType: !230, size: 64, offset: 8128)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !490, file: !76, line: 1511, baseType: !296, size: 32, offset: 8192)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !490, file: !76, line: 1514, baseType: !2373, size: 32, offset: 8224)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !490, file: !76, line: 1517, baseType: !2928, size: 64, offset: 8256)
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !113, line: 18, flags: DIFlagFwdDecl)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !490, file: !76, line: 1518, baseType: !531, size: 64, offset: 8320)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !490, file: !76, line: 1525, baseType: !1474, size: 64, offset: 8384)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !490, file: !76, line: 1532, baseType: !2933, size: 64, offset: 8448)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2934, line: 52, size: 64, elements: !2935)
!2934 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2935 = !{!2936}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2933, file: !2934, line: 53, baseType: !2937, size: 64)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2934, line: 40, size: 256, elements: !2939)
!2939 = !{!2940, !2941, !2946}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2938, file: !2934, line: 42, baseType: !240)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2938, file: !2934, line: 44, baseType: !2942, size: 192)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2934, line: 28, size: 192, elements: !2943)
!2943 = !{!2944, !2945}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2942, file: !2934, line: 29, baseType: !190, size: 128)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2942, file: !2934, line: 31, baseType: !114, size: 64, offset: 128)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2938, file: !2934, line: 49, baseType: !114, size: 64, offset: 192)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !490, file: !76, line: 1533, baseType: !2933, size: 64, offset: 8512)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !490, file: !76, line: 1534, baseType: !698, size: 128, align: 64, offset: 8576)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !490, file: !76, line: 1535, baseType: !298, size: 256, offset: 8704)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !490, file: !76, line: 1537, baseType: !226, size: 192, offset: 8960)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !490, file: !76, line: 1542, baseType: !296, size: 32, offset: 9152)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !490, file: !76, line: 1545, baseType: !240, offset: 9184)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !490, file: !76, line: 1546, baseType: !190, size: 128, offset: 9216)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !490, file: !76, line: 1548, baseType: !240, offset: 9344)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !490, file: !76, line: 1549, baseType: !190, size: 128, offset: 9344)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !484, file: !485, line: 74, baseType: !296, size: 32, offset: 128)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !438, file: !377, line: 148, baseType: !2959, size: 64, offset: 704)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2960, size: 64)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!296, !2711, !827}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !438, file: !377, line: 149, baseType: !2963, size: 64, offset: 768)
!2963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2964, size: 64)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!375, !375, !2966}
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !376, file: !377, line: 103, baseType: !489, size: 64, offset: 832)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !376, file: !377, line: 104, baseType: !329, size: 64, offset: 896)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !376, file: !377, line: 105, baseType: !185, size: 64, offset: 960)
!2971 = !DIDerivedType(tag: DW_TAG_member, scope: !376, file: !377, line: 107, baseType: !2972, size: 128, offset: 1024)
!2972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !376, file: !377, line: 107, size: 128, elements: !2973)
!2973 = !{!2974, !2975}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2972, file: !377, line: 108, baseType: !190, size: 128)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2972, file: !377, line: 109, baseType: !856, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !376, file: !377, line: 111, baseType: !190, size: 128, offset: 1152)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !376, file: !377, line: 112, baseType: !190, size: 128, offset: 1280)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !376, file: !377, line: 120, baseType: !2979, size: 128, offset: 1408)
!2979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !376, file: !377, line: 116, size: 128, elements: !2980)
!2980 = !{!2981, !2982, !2983}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2979, file: !377, line: 117, baseType: !535, size: 128)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2979, file: !377, line: 118, baseType: !391, size: 128)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2979, file: !377, line: 119, baseType: !698, size: 128, align: 64)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !369, file: !76, line: 1866, baseType: !2985, size: 64, offset: 64)
!2985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2986, size: 64)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!317, !375, !342, !2988}
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !2990, line: 10, size: 128, elements: !2991)
!2990 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!2991 = !{!2992, !2996}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2989, file: !2990, line: 11, baseType: !2993, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !185}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2989, file: !2990, line: 12, baseType: !185, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !369, file: !76, line: 1867, baseType: !2998, size: 64, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DISubroutineType(types: !3000)
!3000 = !{!296, !342, !296}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !369, file: !76, line: 1868, baseType: !3002, size: 64, offset: 192)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!3005, !342, !296}
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !76, line: 581, flags: DIFlagFwdDecl)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !369, file: !76, line: 1870, baseType: !3008, size: 64, offset: 256)
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DISubroutineType(types: !3010)
!3010 = !{!296, !375, !326, !296}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !369, file: !76, line: 1872, baseType: !3012, size: 64, offset: 320)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!296, !342, !375, !346, !827}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !369, file: !76, line: 1873, baseType: !3016, size: 64, offset: 384)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!296, !375, !342, !375}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !369, file: !76, line: 1874, baseType: !3020, size: 64, offset: 448)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!296, !342, !375}
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !369, file: !76, line: 1875, baseType: !3024, size: 64, offset: 512)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3025, size: 64)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!296, !342, !375, !317}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !369, file: !76, line: 1876, baseType: !3028, size: 64, offset: 576)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!296, !342, !375, !346}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !369, file: !76, line: 1877, baseType: !3020, size: 64, offset: 640)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !369, file: !76, line: 1878, baseType: !3033, size: 64, offset: 704)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!296, !342, !375, !346, !494}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !369, file: !76, line: 1879, baseType: !3037, size: 64, offset: 768)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!296, !342, !375, !342, !375, !7}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !369, file: !76, line: 1881, baseType: !3041, size: 64, offset: 832)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{!296, !375, !3044}
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !76, line: 219, size: 640, elements: !3046)
!3046 = !{!3047, !3048, !3049, !3050, !3051, !3052, !3057, !3058, !3059}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3045, file: !76, line: 220, baseType: !7, size: 32)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3045, file: !76, line: 221, baseType: !346, size: 16, offset: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3045, file: !76, line: 222, baseType: !350, size: 32, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3045, file: !76, line: 223, baseType: !359, size: 32, offset: 96)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3045, file: !76, line: 224, baseType: !499, size: 64, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3045, file: !76, line: 225, baseType: !3053, size: 128, offset: 192)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1359, line: 13, size: 128, elements: !3054)
!3054 = !{!3055, !3056}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3053, file: !1359, line: 14, baseType: !1358, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3053, file: !1359, line: 15, baseType: !114, size: 64, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3045, file: !76, line: 226, baseType: !3053, size: 128, offset: 320)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3045, file: !76, line: 227, baseType: !3053, size: 128, offset: 448)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3045, file: !76, line: 234, baseType: !685, size: 64, offset: 576)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !369, file: !76, line: 1882, baseType: !3061, size: 64, offset: 896)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!296, !2711, !3064, !201, !7}
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3066, line: 22, size: 1152, elements: !3067)
!3066 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!3067 = !{!3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085}
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3065, file: !3066, line: 23, baseType: !201, size: 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3065, file: !3066, line: 24, baseType: !346, size: 16, offset: 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3065, file: !3066, line: 25, baseType: !7, size: 32, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3065, file: !3066, line: 26, baseType: !266, size: 32, offset: 96)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3065, file: !3066, line: 27, baseType: !411, size: 64, offset: 128)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3065, file: !3066, line: 28, baseType: !411, size: 64, offset: 192)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3065, file: !3066, line: 37, baseType: !411, size: 64, offset: 256)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3065, file: !3066, line: 38, baseType: !494, size: 32, offset: 320)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3065, file: !3066, line: 39, baseType: !494, size: 32, offset: 352)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3065, file: !3066, line: 40, baseType: !350, size: 32, offset: 384)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3065, file: !3066, line: 41, baseType: !359, size: 32, offset: 416)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3065, file: !3066, line: 42, baseType: !499, size: 64, offset: 448)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3065, file: !3066, line: 43, baseType: !3053, size: 128, offset: 512)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3065, file: !3066, line: 44, baseType: !3053, size: 128, offset: 640)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3065, file: !3066, line: 45, baseType: !3053, size: 128, offset: 768)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3065, file: !3066, line: 46, baseType: !3053, size: 128, offset: 896)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3065, file: !3066, line: 47, baseType: !411, size: 64, offset: 1024)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3065, file: !3066, line: 48, baseType: !411, size: 64, offset: 1088)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !369, file: !76, line: 1883, baseType: !3087, size: 64, offset: 960)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3088, size: 64)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!727, !375, !326, !730}
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !369, file: !76, line: 1884, baseType: !3091, size: 64, offset: 1024)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{!296, !342, !3094, !411, !411}
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !76, line: 50, flags: DIFlagFwdDecl)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !369, file: !76, line: 1886, baseType: !3097, size: 64, offset: 1088)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!296, !342, !3100, !296}
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !369, file: !76, line: 1887, baseType: !3102, size: 64, offset: 1152)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!296, !342, !375, !685, !7, !346}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !369, file: !76, line: 1890, baseType: !3028, size: 64, offset: 1216)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !369, file: !76, line: 1891, baseType: !3107, size: 64, offset: 1280)
!3107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3108, size: 64)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!296, !342, !3005, !296}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !343, file: !76, line: 623, baseType: !489, size: 64, offset: 192)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !343, file: !76, line: 624, baseType: !632, size: 64, offset: 256)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !343, file: !76, line: 631, baseType: !329, size: 64, offset: 320)
!3113 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !76, line: 639, baseType: !3114, size: 32, offset: 384)
!3114 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !76, line: 639, size: 32, elements: !3115)
!3115 = !{!3116, !3118}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3114, file: !76, line: 640, baseType: !3117, size: 32)
!3117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3114, file: !76, line: 641, baseType: !7, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !343, file: !76, line: 643, baseType: !494, size: 32, offset: 416)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !343, file: !76, line: 644, baseType: !499, size: 64, offset: 448)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !343, file: !76, line: 645, baseType: !3053, size: 128, offset: 512)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !343, file: !76, line: 646, baseType: !3053, size: 128, offset: 640)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !343, file: !76, line: 647, baseType: !3053, size: 128, offset: 768)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !343, file: !76, line: 648, baseType: !240, offset: 896)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !343, file: !76, line: 649, baseType: !347, size: 16, offset: 896)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !343, file: !76, line: 650, baseType: !1112, size: 8, offset: 912)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !343, file: !76, line: 651, baseType: !1112, size: 8, offset: 920)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !343, file: !76, line: 652, baseType: !2784, size: 64, offset: 960)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !343, file: !76, line: 659, baseType: !329, size: 64, offset: 1024)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !343, file: !76, line: 660, baseType: !661, size: 256, offset: 1088)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !343, file: !76, line: 662, baseType: !329, size: 64, offset: 1344)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !343, file: !76, line: 663, baseType: !329, size: 64, offset: 1408)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !343, file: !76, line: 665, baseType: !535, size: 128, offset: 1472)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !343, file: !76, line: 666, baseType: !190, size: 128, offset: 1600)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !343, file: !76, line: 675, baseType: !190, size: 128, offset: 1728)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !343, file: !76, line: 676, baseType: !190, size: 128, offset: 1856)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !343, file: !76, line: 677, baseType: !190, size: 128, offset: 1984)
!3138 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !76, line: 678, baseType: !3139, size: 128, offset: 2112)
!3139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !76, line: 678, size: 128, elements: !3140)
!3140 = !{!3141, !3142}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3139, file: !76, line: 679, baseType: !531, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3139, file: !76, line: 680, baseType: !698, size: 128, align: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !343, file: !76, line: 682, baseType: !232, size: 64, offset: 2240)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !343, file: !76, line: 683, baseType: !232, size: 64, offset: 2304)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !343, file: !76, line: 684, baseType: !292, size: 32, offset: 2368)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !343, file: !76, line: 685, baseType: !292, size: 32, offset: 2400)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !343, file: !76, line: 686, baseType: !292, size: 32, offset: 2432)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !343, file: !76, line: 688, baseType: !292, size: 32, offset: 2464)
!3149 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !76, line: 690, baseType: !3150, size: 64, offset: 2496)
!3150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !76, line: 690, size: 64, elements: !3151)
!3151 = !{!3152, !3153}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3150, file: !76, line: 691, baseType: !714, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3150, file: !76, line: 692, baseType: !562, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !343, file: !76, line: 694, baseType: !3155, size: 64, offset: 2560)
!3155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3156, size: 64)
!3156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !76, line: 1100, size: 384, elements: !3157)
!3157 = !{!3158, !3159, !3160, !3161}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3156, file: !76, line: 1101, baseType: !240)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3156, file: !76, line: 1102, baseType: !190, size: 128)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3156, file: !76, line: 1103, baseType: !190, size: 128, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3156, file: !76, line: 1104, baseType: !190, size: 128, offset: 256)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !343, file: !76, line: 695, baseType: !633, size: 1216, align: 64, offset: 2624)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !343, file: !76, line: 696, baseType: !190, size: 128, offset: 3840)
!3164 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !76, line: 697, baseType: !3165, size: 64, offset: 3968)
!3165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !343, file: !76, line: 697, size: 64, elements: !3166)
!3166 = !{!3167, !3168, !3169, !3172, !3173}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3165, file: !76, line: 698, baseType: !811, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3165, file: !76, line: 699, baseType: !2809, size: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3165, file: !76, line: 700, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !76, line: 700, flags: DIFlagFwdDecl)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3165, file: !76, line: 701, baseType: !326, size: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3165, file: !76, line: 702, baseType: !7, size: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !343, file: !76, line: 705, baseType: !203, size: 32, offset: 4032)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !343, file: !76, line: 708, baseType: !203, size: 32, offset: 4064)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !343, file: !76, line: 709, baseType: !2891, size: 64, offset: 4096)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !343, file: !76, line: 720, baseType: !185, size: 64, offset: 4160)
!3178 = !DIGlobalVariableExpression(var: !3179, expr: !DIExpression())
!3179 = distinct !DIGlobalVariable(name: "__key", scope: !339, file: !3, line: 670, type: !541, isLocal: true, isDefinition: true)
!3180 = !DIGlobalVariableExpression(var: !3181, expr: !DIExpression())
!3181 = distinct !DIGlobalVariable(name: "__key", scope: !339, file: !3, line: 671, type: !541, isLocal: true, isDefinition: true)
!3182 = !DIGlobalVariableExpression(var: !3183, expr: !DIExpression())
!3183 = distinct !DIGlobalVariable(name: "xenbus_dev", scope: !2, file: !3, line: 707, type: !3184, isLocal: true, isDefinition: true)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "miscdevice", file: !3185, line: 79, size: 640, elements: !3186)
!3185 = !DIFile(filename: "./include/linux/miscdevice.h", directory: "/home/lizy2001/genbc/linux")
!3186 = !{!3187, !3188, !3189, !3190, !3191, !3833, !3834, !3835, !3836}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3184, file: !3185, line: 80, baseType: !296, size: 32)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3184, file: !3185, line: 81, baseType: !317, size: 64, offset: 64)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !3184, file: !3185, line: 82, baseType: !714, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3184, file: !3185, line: 83, baseType: !190, size: 128, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3184, file: !3185, line: 84, baseType: !3192, size: 64, offset: 320)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !164, line: 461, size: 5568, elements: !3194)
!3194 = !{!3195, !3491, !3492, !3495, !3496, !3547, !3620, !3621, !3622, !3623, !3624, !3633, !3738, !3751, !3755, !3756, !3760, !3762, !3763, !3764, !3768, !3774, !3775, !3778, !3782, !3785, !3786, !3787, !3788, !3789, !3821, !3822, !3823, !3826, !3829, !3830, !3831, !3832}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3193, file: !164, line: 462, baseType: !3196, size: 512)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3197, line: 64, size: 512, elements: !3198)
!3197 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3198 = !{!3199, !3200, !3201, !3203, !3243, !3345, !3485, !3486, !3487, !3488, !3489, !3490}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3196, file: !3197, line: 65, baseType: !317, size: 64)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3196, file: !3197, line: 66, baseType: !190, size: 128, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3196, file: !3197, line: 67, baseType: !3202, size: 64, offset: 192)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3196, file: !3197, line: 68, baseType: !3204, size: 64, offset: 256)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3197, line: 192, size: 704, elements: !3206)
!3206 = !{!3207, !3208, !3209, !3210}
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3205, file: !3197, line: 193, baseType: !190, size: 128)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3205, file: !3197, line: 194, baseType: !240, offset: 128)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3205, file: !3197, line: 195, baseType: !3196, size: 512, offset: 128)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3205, file: !3197, line: 196, baseType: !3211, size: 64, offset: 640)
!3211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3212, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3213)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3197, line: 156, size: 192, elements: !3214)
!3214 = !{!3215, !3220, !3225}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3213, file: !3197, line: 157, baseType: !3216, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3217)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!296, !3204, !3202}
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3213, file: !3197, line: 158, baseType: !3221, size: 64, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3222)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!317, !3204, !3202}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3213, file: !3197, line: 159, baseType: !3226, size: 64, offset: 128)
!3226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3227)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!296, !3204, !3202, !3230}
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3197, line: 148, size: 20736, elements: !3232)
!3232 = !{!3233, !3235, !3237, !3238, !3242}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3231, file: !3197, line: 149, baseType: !3234, size: 192)
!3234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 192, elements: !547)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3231, file: !3197, line: 150, baseType: !3236, size: 4096, offset: 192)
!3236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 4096, elements: !1643)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3231, file: !3197, line: 151, baseType: !296, size: 32, offset: 4288)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3231, file: !3197, line: 152, baseType: !3239, size: 16384, offset: 4320)
!3239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 16384, elements: !3240)
!3240 = !{!3241}
!3241 = !DISubrange(count: 2048)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3231, file: !3197, line: 153, baseType: !296, size: 32, offset: 20704)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3196, file: !3197, line: 69, baseType: !3244, size: 64, offset: 320)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3197, line: 138, size: 448, elements: !3246)
!3246 = !{!3247, !3251, !3270, !3272, !3305, !3335, !3339}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3245, file: !3197, line: 139, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DISubroutineType(types: !3250)
!3250 = !{null, !3202}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3245, file: !3197, line: 140, baseType: !3252, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3254)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3255, line: 230, size: 128, elements: !3256)
!3255 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3256 = !{!3257, !3266}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3254, file: !3255, line: 231, baseType: !3258, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!727, !3202, !3261, !326}
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3255, line: 30, size: 128, elements: !3263)
!3263 = !{!3264, !3265}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3262, file: !3255, line: 31, baseType: !317, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3262, file: !3255, line: 32, baseType: !346, size: 16, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3254, file: !3255, line: 232, baseType: !3267, size: 64, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!727, !3202, !3261, !317, !730}
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3245, file: !3197, line: 141, baseType: !3271, size: 64, offset: 128)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3245, file: !3197, line: 142, baseType: !3273, size: 64, offset: 192)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3276)
!3276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3255, line: 84, size: 320, elements: !3277)
!3277 = !{!3278, !3279, !3283, !3302, !3303}
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3276, file: !3255, line: 85, baseType: !317, size: 64)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3276, file: !3255, line: 86, baseType: !3280, size: 64, offset: 64)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!346, !3202, !3261, !296}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3276, file: !3255, line: 88, baseType: !3284, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DISubroutineType(types: !3286)
!3286 = !{!346, !3202, !3287, !296}
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3255, line: 168, size: 448, elements: !3289)
!3289 = !{!3290, !3291, !3292, !3293, !3297, !3298}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3288, file: !3255, line: 169, baseType: !3262, size: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3288, file: !3255, line: 170, baseType: !730, size: 64, offset: 128)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3288, file: !3255, line: 171, baseType: !185, size: 64, offset: 192)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3288, file: !3255, line: 172, baseType: !3294, size: 64, offset: 256)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!727, !685, !3202, !3287, !326, !499, !730}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3288, file: !3255, line: 174, baseType: !3294, size: 64, offset: 320)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3288, file: !3255, line: 176, baseType: !3299, size: 64, offset: 384)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!296, !685, !3202, !3287, !867}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3276, file: !3255, line: 90, baseType: !3271, size: 64, offset: 192)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3276, file: !3255, line: 91, baseType: !3304, size: 64, offset: 256)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3245, file: !3197, line: 143, baseType: !3306, size: 64, offset: 256)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!3309, !3202}
!3309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3310, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3311)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !152, line: 39, size: 384, elements: !3312)
!3312 = !{!3313, !3314, !3318, !3322, !3330, !3334}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3311, file: !152, line: 40, baseType: !151, size: 32)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3311, file: !152, line: 41, baseType: !3315, size: 64, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3316, size: 64)
!3316 = !DISubroutineType(types: !3317)
!3317 = !{!827}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3311, file: !152, line: 42, baseType: !3319, size: 64, offset: 128)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DISubroutineType(types: !3321)
!3321 = !{!185}
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3311, file: !152, line: 43, baseType: !3323, size: 64, offset: 192)
!3323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3324, size: 64)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!3326, !3328}
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !152, line: 19, flags: DIFlagFwdDecl)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3311, file: !152, line: 44, baseType: !3331, size: 64, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DISubroutineType(types: !3333)
!3333 = !{!3326}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3311, file: !152, line: 45, baseType: !2993, size: 64, offset: 320)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3245, file: !3197, line: 144, baseType: !3336, size: 64, offset: 320)
!3336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!3326, !3202}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3245, file: !3197, line: 145, baseType: !3340, size: 64, offset: 384)
!3340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3341, size: 64)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{null, !3202, !3343, !3344}
!3343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3196, file: !3197, line: 70, baseType: !3346, size: 64, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3348, line: 123, size: 1024, elements: !3349)
!3348 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3349 = !{!3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3478, !3479, !3480, !3481, !3482}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3347, file: !3348, line: 124, baseType: !292, size: 32)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3347, file: !3348, line: 125, baseType: !292, size: 32, offset: 32)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3347, file: !3348, line: 135, baseType: !3346, size: 64, offset: 64)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3347, file: !3348, line: 136, baseType: !317, size: 64, offset: 128)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3347, file: !3348, line: 138, baseType: !654, size: 192, align: 64, offset: 192)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3347, file: !3348, line: 140, baseType: !3326, size: 64, offset: 384)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3347, file: !3348, line: 141, baseType: !7, size: 32, offset: 448)
!3357 = !DIDerivedType(tag: DW_TAG_member, scope: !3347, file: !3348, line: 142, baseType: !3358, size: 256, offset: 512)
!3358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3347, file: !3348, line: 142, size: 256, elements: !3359)
!3359 = !{!3360, !3406, !3410}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3358, file: !3348, line: 143, baseType: !3361, size: 192)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3348, line: 91, size: 192, elements: !3362)
!3362 = !{!3363, !3364, !3365}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3361, file: !3348, line: 92, baseType: !329, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3361, file: !3348, line: 94, baseType: !650, size: 64, offset: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3361, file: !3348, line: 100, baseType: !3366, size: 64, offset: 128)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3348, line: 180, size: 704, elements: !3368)
!3368 = !{!3369, !3370, !3371, !3378, !3379, !3380, !3404, !3405}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3367, file: !3348, line: 182, baseType: !3346, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3367, file: !3348, line: 183, baseType: !7, size: 32, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3367, file: !3348, line: 186, baseType: !3372, size: 192, offset: 128)
!3372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3373, line: 19, size: 192, elements: !3374)
!3373 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3374 = !{!3375, !3376, !3377}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3372, file: !3373, line: 20, baseType: !637, size: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3372, file: !3373, line: 21, baseType: !7, size: 32, offset: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3372, file: !3373, line: 22, baseType: !7, size: 32, offset: 160)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3367, file: !3348, line: 187, baseType: !201, size: 32, offset: 320)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3367, file: !3348, line: 188, baseType: !201, size: 32, offset: 352)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3367, file: !3348, line: 189, baseType: !3381, size: 64, offset: 384)
!3381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3382, size: 64)
!3382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3348, line: 168, size: 320, elements: !3383)
!3383 = !{!3384, !3388, !3392, !3396, !3400}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3382, file: !3348, line: 169, baseType: !3385, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DISubroutineType(types: !3387)
!3387 = !{!296, !609, !3366}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3382, file: !3348, line: 171, baseType: !3389, size: 64, offset: 64)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!296, !3346, !317, !346}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3382, file: !3348, line: 173, baseType: !3393, size: 64, offset: 128)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!296, !3346}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3382, file: !3348, line: 174, baseType: !3397, size: 64, offset: 192)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!296, !3346, !3346, !317}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3382, file: !3348, line: 176, baseType: !3401, size: 64, offset: 256)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!296, !609, !3346, !3366}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3367, file: !3348, line: 192, baseType: !190, size: 128, offset: 448)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3367, file: !3348, line: 194, baseType: !277, size: 128, offset: 576)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3358, file: !3348, line: 144, baseType: !3407, size: 64)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3348, line: 103, size: 64, elements: !3408)
!3408 = !{!3409}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3407, file: !3348, line: 104, baseType: !3346, size: 64)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3358, file: !3348, line: 145, baseType: !3411, size: 256)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3348, line: 107, size: 256, elements: !3412)
!3412 = !{!3413, !3473, !3476, !3477}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3411, file: !3348, line: 108, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3416)
!3416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3348, line: 217, size: 768, elements: !3417)
!3417 = !{!3418, !3438, !3442, !3446, !3450, !3454, !3458, !3462, !3463, !3464, !3465, !3469}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3416, file: !3348, line: 222, baseType: !3419, size: 64)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!296, !3422}
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3348, line: 197, size: 1088, elements: !3424)
!3424 = !{!3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3423, file: !3348, line: 199, baseType: !3346, size: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3423, file: !3348, line: 200, baseType: !685, size: 64, offset: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3423, file: !3348, line: 201, baseType: !609, size: 64, offset: 128)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3423, file: !3348, line: 202, baseType: !185, size: 64, offset: 192)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3423, file: !3348, line: 205, baseType: !226, size: 192, offset: 256)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3423, file: !3348, line: 206, baseType: !226, size: 192, offset: 448)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3423, file: !3348, line: 207, baseType: !296, size: 32, offset: 640)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3423, file: !3348, line: 208, baseType: !190, size: 128, offset: 704)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3423, file: !3348, line: 209, baseType: !326, size: 64, offset: 832)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3423, file: !3348, line: 211, baseType: !730, size: 64, offset: 896)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3423, file: !3348, line: 212, baseType: !827, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3423, file: !3348, line: 213, baseType: !827, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3423, file: !3348, line: 214, baseType: !2084, size: 64, offset: 1024)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3416, file: !3348, line: 223, baseType: !3439, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{null, !3422}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3416, file: !3348, line: 236, baseType: !3443, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!296, !609, !185}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3416, file: !3348, line: 238, baseType: !3447, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!185, !609, !733}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3416, file: !3348, line: 239, baseType: !3451, size: 64, offset: 256)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!185, !609, !185, !733}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3416, file: !3348, line: 240, baseType: !3455, size: 64, offset: 320)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{null, !609, !185}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3416, file: !3348, line: 242, baseType: !3459, size: 64, offset: 384)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!727, !3422, !326, !730, !499}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3416, file: !3348, line: 252, baseType: !730, size: 64, offset: 448)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3416, file: !3348, line: 259, baseType: !827, size: 8, offset: 512)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3416, file: !3348, line: 260, baseType: !3459, size: 64, offset: 576)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3416, file: !3348, line: 263, baseType: !3466, size: 64, offset: 640)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3467, size: 64)
!3467 = !DISubroutineType(types: !3468)
!3468 = !{!327, !3422, !847}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3416, file: !3348, line: 266, baseType: !3470, size: 64, offset: 704)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!296, !3422, !867}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3411, file: !3348, line: 109, baseType: !3474, size: 64, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3348, line: 31, flags: DIFlagFwdDecl)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3411, file: !3348, line: 110, baseType: !499, size: 64, offset: 128)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3411, file: !3348, line: 111, baseType: !3346, size: 64, offset: 192)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3347, file: !3348, line: 148, baseType: !185, size: 64, offset: 768)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3347, file: !3348, line: 154, baseType: !411, size: 64, offset: 832)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3347, file: !3348, line: 156, baseType: !347, size: 16, offset: 896)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3347, file: !3348, line: 157, baseType: !346, size: 16, offset: 912)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3347, file: !3348, line: 158, baseType: !3483, size: 64, offset: 960)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3348, line: 32, flags: DIFlagFwdDecl)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3196, file: !3197, line: 71, baseType: !284, size: 32, offset: 448)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3196, file: !3197, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3196, file: !3197, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3196, file: !3197, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3196, file: !3197, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3196, file: !3197, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3193, file: !164, line: 463, baseType: !3192, size: 64, offset: 512)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3193, file: !164, line: 465, baseType: !3493, size: 64, offset: 576)
!3493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3494, size: 64)
!3494 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !164, line: 36, flags: DIFlagFwdDecl)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3193, file: !164, line: 467, baseType: !317, size: 64, offset: 640)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3193, file: !164, line: 468, baseType: !3497, size: 64, offset: 704)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3499)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !164, line: 87, size: 384, elements: !3500)
!3500 = !{!3501, !3502, !3503, !3507, !3512, !3516}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3499, file: !164, line: 88, baseType: !317, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3499, file: !164, line: 89, baseType: !3273, size: 64, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3499, file: !164, line: 90, baseType: !3504, size: 64, offset: 128)
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DISubroutineType(types: !3506)
!3506 = !{!296, !3192, !3230}
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3499, file: !164, line: 91, baseType: !3508, size: 64, offset: 192)
!3508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3509, size: 64)
!3509 = !DISubroutineType(types: !3510)
!3510 = !{!326, !3192, !3511, !3343, !3344}
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3499, file: !164, line: 93, baseType: !3513, size: 64, offset: 256)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{null, !3192}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3499, file: !164, line: 95, baseType: !3517, size: 64, offset: 320)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3519)
!3519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !171, line: 278, size: 1472, elements: !3520)
!3520 = !{!3521, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3519, file: !171, line: 279, baseType: !3522, size: 64)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!296, !3192}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3519, file: !171, line: 280, baseType: !3513, size: 64, offset: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3519, file: !171, line: 281, baseType: !3522, size: 64, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3519, file: !171, line: 282, baseType: !3522, size: 64, offset: 192)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3519, file: !171, line: 283, baseType: !3522, size: 64, offset: 256)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3519, file: !171, line: 284, baseType: !3522, size: 64, offset: 320)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3519, file: !171, line: 285, baseType: !3522, size: 64, offset: 384)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3519, file: !171, line: 286, baseType: !3522, size: 64, offset: 448)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3519, file: !171, line: 287, baseType: !3522, size: 64, offset: 512)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3519, file: !171, line: 288, baseType: !3522, size: 64, offset: 576)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3519, file: !171, line: 289, baseType: !3522, size: 64, offset: 640)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3519, file: !171, line: 290, baseType: !3522, size: 64, offset: 704)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3519, file: !171, line: 291, baseType: !3522, size: 64, offset: 768)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3519, file: !171, line: 292, baseType: !3522, size: 64, offset: 832)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3519, file: !171, line: 293, baseType: !3522, size: 64, offset: 896)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3519, file: !171, line: 294, baseType: !3522, size: 64, offset: 960)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3519, file: !171, line: 295, baseType: !3522, size: 64, offset: 1024)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3519, file: !171, line: 296, baseType: !3522, size: 64, offset: 1088)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3519, file: !171, line: 297, baseType: !3522, size: 64, offset: 1152)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3519, file: !171, line: 298, baseType: !3522, size: 64, offset: 1216)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3519, file: !171, line: 299, baseType: !3522, size: 64, offset: 1280)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3519, file: !171, line: 300, baseType: !3522, size: 64, offset: 1344)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3519, file: !171, line: 301, baseType: !3522, size: 64, offset: 1408)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3193, file: !164, line: 470, baseType: !3548, size: 64, offset: 768)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3550, line: 82, size: 1408, elements: !3551)
!3550 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3551 = !{!3552, !3553, !3554, !3555, !3556, !3557, !3558, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3615, !3618, !3619}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3549, file: !3550, line: 83, baseType: !317, size: 64)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3549, file: !3550, line: 84, baseType: !317, size: 64, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3549, file: !3550, line: 85, baseType: !3192, size: 64, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3549, file: !3550, line: 86, baseType: !3273, size: 64, offset: 192)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3549, file: !3550, line: 87, baseType: !3273, size: 64, offset: 256)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3549, file: !3550, line: 88, baseType: !3273, size: 64, offset: 320)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3549, file: !3550, line: 90, baseType: !3559, size: 64, offset: 384)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!296, !3192, !3562}
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !158, line: 95, size: 1152, elements: !3564)
!3564 = !{!3565, !3566, !3567, !3568, !3569, !3570, !3571, !3575, !3579, !3580, !3581, !3582, !3583, !3591, !3592, !3593, !3594, !3595, !3596}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3563, file: !158, line: 96, baseType: !317, size: 64)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3563, file: !158, line: 97, baseType: !3548, size: 64, offset: 64)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3563, file: !158, line: 99, baseType: !526, size: 64, offset: 128)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3563, file: !158, line: 100, baseType: !317, size: 64, offset: 192)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3563, file: !158, line: 102, baseType: !827, size: 8, offset: 256)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3563, file: !158, line: 103, baseType: !157, size: 32, offset: 288)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3563, file: !158, line: 105, baseType: !3572, size: 64, offset: 320)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3574)
!3574 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !158, line: 105, flags: DIFlagFwdDecl)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3563, file: !158, line: 106, baseType: !3576, size: 64, offset: 384)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3578)
!3578 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !158, line: 106, flags: DIFlagFwdDecl)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3563, file: !158, line: 108, baseType: !3522, size: 64, offset: 448)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3563, file: !158, line: 109, baseType: !3513, size: 64, offset: 512)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3563, file: !158, line: 110, baseType: !3522, size: 64, offset: 576)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3563, file: !158, line: 111, baseType: !3513, size: 64, offset: 640)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3563, file: !158, line: 112, baseType: !3584, size: 64, offset: 704)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!296, !3192, !3587}
!3587 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !171, line: 52, baseType: !3588)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !171, line: 50, size: 32, elements: !3589)
!3589 = !{!3590}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3588, file: !171, line: 51, baseType: !296, size: 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3563, file: !158, line: 113, baseType: !3522, size: 64, offset: 768)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3563, file: !158, line: 114, baseType: !3273, size: 64, offset: 832)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3563, file: !158, line: 115, baseType: !3273, size: 64, offset: 896)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3563, file: !158, line: 117, baseType: !3517, size: 64, offset: 960)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3563, file: !158, line: 118, baseType: !3513, size: 64, offset: 1024)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3563, file: !158, line: 120, baseType: !3597, size: 64, offset: 1088)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !158, line: 120, flags: DIFlagFwdDecl)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3549, file: !3550, line: 91, baseType: !3504, size: 64, offset: 448)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3549, file: !3550, line: 92, baseType: !3522, size: 64, offset: 512)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3549, file: !3550, line: 93, baseType: !3513, size: 64, offset: 576)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3549, file: !3550, line: 94, baseType: !3522, size: 64, offset: 640)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3549, file: !3550, line: 95, baseType: !3513, size: 64, offset: 704)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3549, file: !3550, line: 97, baseType: !3522, size: 64, offset: 768)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3549, file: !3550, line: 98, baseType: !3522, size: 64, offset: 832)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3549, file: !3550, line: 100, baseType: !3584, size: 64, offset: 896)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3549, file: !3550, line: 101, baseType: !3522, size: 64, offset: 960)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3549, file: !3550, line: 103, baseType: !3522, size: 64, offset: 1024)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3549, file: !3550, line: 105, baseType: !3522, size: 64, offset: 1088)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3549, file: !3550, line: 107, baseType: !3517, size: 64, offset: 1152)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3549, file: !3550, line: 109, baseType: !3612, size: 64, offset: 1216)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3614)
!3614 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3550, line: 109, flags: DIFlagFwdDecl)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3549, file: !3550, line: 111, baseType: !3616, size: 64, offset: 1280)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3550, line: 111, flags: DIFlagFwdDecl)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3549, file: !3550, line: 112, baseType: !541, offset: 1344)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3549, file: !3550, line: 114, baseType: !827, size: 8, offset: 1344)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3193, file: !164, line: 471, baseType: !3562, size: 64, offset: 832)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3193, file: !164, line: 473, baseType: !185, size: 64, offset: 896)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3193, file: !164, line: 475, baseType: !185, size: 64, offset: 960)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3193, file: !164, line: 480, baseType: !226, size: 192, offset: 1024)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3193, file: !164, line: 484, baseType: !3625, size: 576, offset: 1216)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !164, line: 361, size: 576, elements: !3626)
!3626 = !{!3627, !3628, !3629, !3630, !3631, !3632}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3625, file: !164, line: 362, baseType: !190, size: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3625, file: !164, line: 363, baseType: !190, size: 128, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3625, file: !164, line: 364, baseType: !190, size: 128, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3625, file: !164, line: 365, baseType: !190, size: 128, offset: 384)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3625, file: !164, line: 366, baseType: !827, size: 8, offset: 512)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3625, file: !164, line: 367, baseType: !163, size: 32, offset: 544)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3193, file: !164, line: 485, baseType: !3634, size: 2304, offset: 1792)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !171, line: 565, size: 2304, elements: !3635)
!3635 = !{!3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3689, !3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3731, !3735}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3634, file: !171, line: 566, baseType: !3587, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3634, file: !171, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3634, file: !171, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3634, file: !171, line: 569, baseType: !827, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3634, file: !171, line: 570, baseType: !827, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3634, file: !171, line: 571, baseType: !827, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3634, file: !171, line: 572, baseType: !827, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3634, file: !171, line: 573, baseType: !827, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3634, file: !171, line: 574, baseType: !827, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3634, file: !171, line: 575, baseType: !827, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3634, file: !171, line: 576, baseType: !827, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3634, file: !171, line: 577, baseType: !201, size: 32, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3634, file: !171, line: 578, baseType: !240, offset: 96)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3634, file: !171, line: 580, baseType: !190, size: 128, offset: 128)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3634, file: !171, line: 581, baseType: !1261, size: 192, offset: 256)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3634, file: !171, line: 582, baseType: !3652, size: 64, offset: 448)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3654, line: 43, size: 1472, elements: !3655)
!3654 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3655 = !{!3656, !3657, !3658, !3659, !3660, !3663, !3675, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3653, file: !3654, line: 44, baseType: !317, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3653, file: !3654, line: 45, baseType: !296, size: 32, offset: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3653, file: !3654, line: 46, baseType: !190, size: 128, offset: 128)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3653, file: !3654, line: 47, baseType: !240, offset: 256)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3653, file: !3654, line: 48, baseType: !3661, size: 64, offset: 256)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !171, line: 533, flags: DIFlagFwdDecl)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3653, file: !3654, line: 49, baseType: !3664, size: 320, offset: 320)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3665, line: 11, size: 320, elements: !3666)
!3665 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3666 = !{!3667, !3668, !3669, !3674}
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3664, file: !3665, line: 16, baseType: !535, size: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3664, file: !3665, line: 17, baseType: !329, size: 64, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3664, file: !3665, line: 18, baseType: !3670, size: 64, offset: 192)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{null, !3673}
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3664, file: !3665, line: 19, baseType: !201, size: 32, offset: 256)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3653, file: !3654, line: 50, baseType: !329, size: 64, offset: 640)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3653, file: !3654, line: 51, baseType: !1060, size: 64, offset: 704)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3653, file: !3654, line: 52, baseType: !1060, size: 64, offset: 768)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3653, file: !3654, line: 53, baseType: !1060, size: 64, offset: 832)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3653, file: !3654, line: 54, baseType: !1060, size: 64, offset: 896)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3653, file: !3654, line: 55, baseType: !1060, size: 64, offset: 960)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3653, file: !3654, line: 56, baseType: !329, size: 64, offset: 1024)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3653, file: !3654, line: 57, baseType: !329, size: 64, offset: 1088)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3653, file: !3654, line: 58, baseType: !329, size: 64, offset: 1152)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3653, file: !3654, line: 59, baseType: !329, size: 64, offset: 1216)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3653, file: !3654, line: 60, baseType: !329, size: 64, offset: 1280)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3653, file: !3654, line: 61, baseType: !3192, size: 64, offset: 1344)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3653, file: !3654, line: 62, baseType: !827, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3653, file: !3654, line: 63, baseType: !827, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3634, file: !171, line: 583, baseType: !827, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3634, file: !171, line: 584, baseType: !827, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3634, file: !171, line: 585, baseType: !827, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3634, file: !171, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3634, file: !171, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3634, file: !171, line: 592, baseType: !1052, size: 512, offset: 576)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3634, file: !171, line: 593, baseType: !411, size: 64, offset: 1088)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3634, file: !171, line: 594, baseType: !298, size: 256, offset: 1152)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3634, file: !171, line: 595, baseType: !277, size: 128, offset: 1408)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3634, file: !171, line: 596, baseType: !3661, size: 64, offset: 1536)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3634, file: !171, line: 597, baseType: !292, size: 32, offset: 1600)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3634, file: !171, line: 598, baseType: !292, size: 32, offset: 1632)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3634, file: !171, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3634, file: !171, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3634, file: !171, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3634, file: !171, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3634, file: !171, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3634, file: !171, line: 604, baseType: !827, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3634, file: !171, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3634, file: !171, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3634, file: !171, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3634, file: !171, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3634, file: !171, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3634, file: !171, line: 610, baseType: !7, size: 32, offset: 1696)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3634, file: !171, line: 611, baseType: !170, size: 32, offset: 1728)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3634, file: !171, line: 612, baseType: !178, size: 32, offset: 1760)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3634, file: !171, line: 613, baseType: !296, size: 32, offset: 1792)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3634, file: !171, line: 614, baseType: !296, size: 32, offset: 1824)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3634, file: !171, line: 615, baseType: !411, size: 64, offset: 1856)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3634, file: !171, line: 616, baseType: !411, size: 64, offset: 1920)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3634, file: !171, line: 617, baseType: !411, size: 64, offset: 1984)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3634, file: !171, line: 618, baseType: !411, size: 64, offset: 2048)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3634, file: !171, line: 620, baseType: !3722, size: 64, offset: 2112)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !171, line: 536, size: 256, elements: !3724)
!3724 = !{!3725, !3726, !3727, !3728}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3723, file: !171, line: 537, baseType: !240)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3723, file: !171, line: 538, baseType: !7, size: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3723, file: !171, line: 540, baseType: !190, size: 128, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3723, file: !171, line: 543, baseType: !3729, size: 64, offset: 192)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !171, line: 534, flags: DIFlagFwdDecl)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3634, file: !171, line: 621, baseType: !3732, size: 64, offset: 2176)
!3732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3733 = !DISubroutineType(types: !3734)
!3734 = !{null, !3192, !1204}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3634, file: !171, line: 622, baseType: !3736, size: 64, offset: 2240)
!3736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3737, size: 64)
!3737 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !171, line: 622, flags: DIFlagFwdDecl)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3193, file: !164, line: 486, baseType: !3739, size: 64, offset: 4096)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !171, line: 642, size: 1792, elements: !3741)
!3741 = !{!3742, !3743, !3744, !3748, !3749, !3750}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3740, file: !171, line: 643, baseType: !3519, size: 1472)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3740, file: !171, line: 644, baseType: !3522, size: 64, offset: 1472)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3740, file: !171, line: 645, baseType: !3745, size: 64, offset: 1536)
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DISubroutineType(types: !3747)
!3747 = !{null, !3192, !827}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3740, file: !171, line: 646, baseType: !3522, size: 64, offset: 1600)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3740, file: !171, line: 647, baseType: !3513, size: 64, offset: 1664)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3740, file: !171, line: 648, baseType: !3513, size: 64, offset: 1728)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3193, file: !164, line: 493, baseType: !3752, size: 64, offset: 4160)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !3754, line: 13, flags: DIFlagFwdDecl)
!3754 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/lizy2001/genbc/linux")
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3193, file: !164, line: 499, baseType: !190, size: 128, offset: 4224)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3193, file: !164, line: 502, baseType: !3757, size: 64, offset: 4352)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3759)
!3759 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !164, line: 502, flags: DIFlagFwdDecl)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3193, file: !164, line: 504, baseType: !3761, size: 64, offset: 4416)
!3761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3193, file: !164, line: 505, baseType: !411, size: 64, offset: 4480)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3193, file: !164, line: 510, baseType: !411, size: 64, offset: 4544)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3193, file: !164, line: 511, baseType: !3765, size: 64, offset: 4608)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3767)
!3767 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !164, line: 511, flags: DIFlagFwdDecl)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3193, file: !164, line: 513, baseType: !3769, size: 64, offset: 4672)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !164, line: 288, size: 128, elements: !3771)
!3771 = !{!3772, !3773}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3770, file: !164, line: 293, baseType: !7, size: 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3770, file: !164, line: 294, baseType: !329, size: 64, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3193, file: !164, line: 515, baseType: !190, size: 128, offset: 4736)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3193, file: !164, line: 526, baseType: !3776, offset: 4864)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3777, line: 5, elements: !254)
!3777 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3193, file: !164, line: 528, baseType: !3779, size: 64, offset: 4864)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3781, line: 14, flags: DIFlagFwdDecl)
!3781 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3193, file: !164, line: 529, baseType: !3783, size: 64, offset: 4928)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3550, line: 22, flags: DIFlagFwdDecl)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3193, file: !164, line: 534, baseType: !494, size: 32, offset: 4992)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3193, file: !164, line: 535, baseType: !201, size: 32, offset: 5024)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3193, file: !164, line: 537, baseType: !240, offset: 5056)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3193, file: !164, line: 538, baseType: !190, size: 128, offset: 5056)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3193, file: !164, line: 540, baseType: !3790, size: 64, offset: 5184)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3792, line: 54, size: 960, elements: !3793)
!3792 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3793 = !{!3794, !3795, !3796, !3797, !3798, !3799, !3800, !3804, !3808, !3809, !3810, !3811, !3815, !3819, !3820}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3791, file: !3792, line: 55, baseType: !317, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3791, file: !3792, line: 56, baseType: !526, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3791, file: !3792, line: 58, baseType: !3273, size: 64, offset: 128)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3791, file: !3792, line: 59, baseType: !3273, size: 64, offset: 192)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3791, file: !3792, line: 60, baseType: !3202, size: 64, offset: 256)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3791, file: !3792, line: 62, baseType: !3504, size: 64, offset: 320)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3791, file: !3792, line: 63, baseType: !3801, size: 64, offset: 384)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!326, !3192, !3511}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3791, file: !3792, line: 65, baseType: !3805, size: 64, offset: 448)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{null, !3790}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3791, file: !3792, line: 66, baseType: !3513, size: 64, offset: 512)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3791, file: !3792, line: 68, baseType: !3522, size: 64, offset: 576)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3791, file: !3792, line: 70, baseType: !3309, size: 64, offset: 640)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3791, file: !3792, line: 71, baseType: !3812, size: 64, offset: 704)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!3326, !3192}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3791, file: !3792, line: 73, baseType: !3816, size: 64, offset: 768)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DISubroutineType(types: !3818)
!3818 = !{null, !3192, !3343, !3344}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3791, file: !3792, line: 75, baseType: !3517, size: 64, offset: 832)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3791, file: !3792, line: 77, baseType: !3616, size: 64, offset: 896)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3193, file: !164, line: 541, baseType: !3273, size: 64, offset: 5248)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3193, file: !164, line: 543, baseType: !3513, size: 64, offset: 5312)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3193, file: !164, line: 544, baseType: !3824, size: 64, offset: 5376)
!3824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3825, size: 64)
!3825 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !164, line: 45, flags: DIFlagFwdDecl)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3193, file: !164, line: 545, baseType: !3827, size: 64, offset: 5440)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !164, line: 47, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3193, file: !164, line: 547, baseType: !827, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3193, file: !164, line: 548, baseType: !827, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3193, file: !164, line: 549, baseType: !827, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3193, file: !164, line: 550, baseType: !827, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "this_device", scope: !3184, file: !3185, line: 85, baseType: !3192, size: 64, offset: 384)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3184, file: !3185, line: 86, baseType: !3273, size: 64, offset: 448)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !3184, file: !3185, line: 87, baseType: !317, size: 64, offset: 512)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3184, file: !3185, line: 88, baseType: !346, size: 16, offset: 576)
!3837 = !{i32 7, !"Dwarf Version", i32 4}
!3838 = !{i32 2, !"Debug Info Version", i32 3}
!3839 = !{i32 1, !"wchar_size", i32 2}
!3840 = !{i32 1, !"Code Model", i32 2}
!3841 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3842 = distinct !DISubprogram(name: "xenbus_dev_queue_reply", scope: !3, file: !3, line: 363, type: !3843, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !254)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{null, !3845}
!3845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3846, size: 64)
!3846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xb_req_data", file: !32, line: 75, size: 832, elements: !3847)
!3847 = !{!3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3861}
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3846, file: !32, line: 76, baseType: !190, size: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3846, file: !32, line: 77, baseType: !277, size: 128, offset: 128)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !3846, file: !32, line: 78, baseType: !263, size: 128, offset: 256)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "caller_req_id", scope: !3846, file: !32, line: 79, baseType: !266, size: 32, offset: 384)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3846, file: !32, line: 80, baseType: !5, size: 32, offset: 416)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !3846, file: !32, line: 81, baseType: !326, size: 64, offset: 448)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !3846, file: !32, line: 82, baseType: !800, size: 64, offset: 512)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "num_vecs", scope: !3846, file: !32, line: 83, baseType: !296, size: 32, offset: 576)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !3846, file: !32, line: 84, baseType: !296, size: 32, offset: 608)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3846, file: !32, line: 85, baseType: !31, size: 32, offset: 640)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "user_req", scope: !3846, file: !32, line: 86, baseType: !827, size: 8, offset: 672)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !3846, file: !32, line: 87, baseType: !3860, size: 64, offset: 704)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !3846, file: !32, line: 88, baseType: !185, size: 64, offset: 768)
!3862 = !DILocalVariable(name: "req", arg: 1, scope: !3842, file: !3, line: 363, type: !3845)
!3863 = !DILocation(line: 363, column: 49, scope: !3842)
!3864 = !DILocalVariable(name: "u", scope: !3842, file: !3, line: 365, type: !222)
!3865 = !DILocation(line: 365, column: 27, scope: !3842)
!3866 = !DILocation(line: 365, column: 31, scope: !3842)
!3867 = !DILocation(line: 365, column: 36, scope: !3842)
!3868 = !DILocalVariable(name: "trans", scope: !3842, file: !3, line: 366, type: !186)
!3869 = !DILocation(line: 366, column: 36, scope: !3842)
!3870 = !DILocalVariable(name: "rc", scope: !3842, file: !3, line: 367, type: !296)
!3871 = !DILocation(line: 367, column: 6, scope: !3842)
!3872 = !DILocalVariable(name: "staging_q", scope: !3842, file: !3, line: 368, type: !190)
!3873 = !DILocation(line: 368, column: 2, scope: !3842)
!3874 = !DILocation(line: 370, column: 18, scope: !3842)
!3875 = !DILocation(line: 370, column: 2, scope: !3842)
!3876 = !DILocation(line: 372, column: 14, scope: !3842)
!3877 = !DILocation(line: 372, column: 17, scope: !3842)
!3878 = !DILocation(line: 372, column: 2, scope: !3842)
!3879 = !DILocation(line: 374, column: 6, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 374, column: 6)
!3881 = !DILocation(line: 374, column: 11, scope: !3880)
!3882 = !DILocation(line: 374, column: 16, scope: !3880)
!3883 = !DILocation(line: 374, column: 6, scope: !3842)
!3884 = !DILocation(line: 375, column: 34, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 374, column: 41)
!3886 = !DILocation(line: 375, column: 11, scope: !3885)
!3887 = !DILocation(line: 375, column: 9, scope: !3885)
!3888 = !DILocalVariable(name: "__ret_warn_on", scope: !3889, file: !3, line: 376, type: !296)
!3889 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 376, column: 7)
!3890 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 376, column: 7)
!3891 = !DILocation(line: 376, column: 7, scope: !3889)
!3892 = !DILocation(line: 376, column: 7, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3889, file: !3, line: 376, column: 7)
!3894 = !DILocation(line: 376, column: 7, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3893, file: !3, line: 376, column: 7)
!3896 = !DILocation(line: 376, column: 7, scope: !3897)
!3897 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 376, column: 7)
!3898 = !DILocation(line: 376, column: 7, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 376, column: 7)
!3900 = !{i32 -2142084815, i32 -2142084786, i32 -2142084740, i32 -2142084682, i32 -2142084628, i32 -2142084574, i32 -2142084519, i32 -2142084488}
!3901 = !DILocation(line: 376, column: 7, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 376, column: 7)
!3903 = !{i32 -2142084066, i32 -2142084059, i32 -2142084007, i32 -2142083976, i32 -2142083946}
!3904 = !DILocation(line: 376, column: 7, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3895, file: !3, line: 376, column: 7)
!3906 = !DILocation(line: 376, column: 7, scope: !3890)
!3907 = !DILocation(line: 376, column: 7, scope: !3885)
!3908 = !DILocation(line: 377, column: 4, scope: !3890)
!3909 = !DILocation(line: 378, column: 7, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3885, file: !3, line: 378, column: 7)
!3911 = !DILocation(line: 378, column: 12, scope: !3910)
!3912 = !DILocation(line: 378, column: 16, scope: !3910)
!3913 = !DILocation(line: 378, column: 21, scope: !3910)
!3914 = !DILocation(line: 378, column: 7, scope: !3885)
!3915 = !DILocation(line: 379, column: 14, scope: !3916)
!3916 = distinct !DILexicalBlock(scope: !3910, file: !3, line: 378, column: 34)
!3917 = !DILocation(line: 379, column: 21, scope: !3916)
!3918 = !DILocation(line: 379, column: 4, scope: !3916)
!3919 = !DILocation(line: 380, column: 10, scope: !3916)
!3920 = !DILocation(line: 380, column: 4, scope: !3916)
!3921 = !DILocation(line: 381, column: 3, scope: !3916)
!3922 = !DILocation(line: 382, column: 19, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3910, file: !3, line: 381, column: 10)
!3924 = !DILocation(line: 382, column: 24, scope: !3923)
!3925 = !DILocation(line: 382, column: 35, scope: !3923)
!3926 = !DILocation(line: 382, column: 42, scope: !3923)
!3927 = !DILocation(line: 382, column: 49, scope: !3923)
!3928 = !DILocation(line: 382, column: 9, scope: !3923)
!3929 = !DILocation(line: 382, column: 7, scope: !3923)
!3930 = !DILocalVariable(name: "__ret_warn_on", scope: !3931, file: !3, line: 383, type: !296)
!3931 = distinct !DILexicalBlock(scope: !3932, file: !3, line: 383, column: 8)
!3932 = distinct !DILexicalBlock(scope: !3923, file: !3, line: 383, column: 8)
!3933 = !DILocation(line: 383, column: 8, scope: !3931)
!3934 = !DILocation(line: 383, column: 8, scope: !3935)
!3935 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 383, column: 8)
!3936 = !DILocation(line: 383, column: 8, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3935, file: !3, line: 383, column: 8)
!3938 = !DILocation(line: 383, column: 8, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3937, file: !3, line: 383, column: 8)
!3940 = !DILocation(line: 383, column: 8, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3937, file: !3, line: 383, column: 8)
!3942 = !{i32 -2142083372, i32 -2142083343, i32 -2142083297, i32 -2142083239, i32 -2142083185, i32 -2142083131, i32 -2142083076, i32 -2142083045}
!3943 = !DILocation(line: 383, column: 8, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3937, file: !3, line: 383, column: 8)
!3945 = !{i32 -2142082623, i32 -2142082616, i32 -2142082564, i32 -2142082533, i32 -2142082503}
!3946 = !DILocation(line: 383, column: 8, scope: !3947)
!3947 = distinct !DILexicalBlock(scope: !3937, file: !3, line: 383, column: 8)
!3948 = !DILocation(line: 383, column: 8, scope: !3932)
!3949 = !DILocation(line: 383, column: 8, scope: !3923)
!3950 = !DILocation(line: 384, column: 5, scope: !3932)
!3951 = !DILocation(line: 386, column: 2, scope: !3885)
!3952 = !DILocation(line: 386, column: 13, scope: !3953)
!3953 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 386, column: 13)
!3954 = !DILocation(line: 386, column: 18, scope: !3953)
!3955 = !DILocation(line: 386, column: 23, scope: !3953)
!3956 = !DILocation(line: 386, column: 13, scope: !3880)
!3957 = !DILocation(line: 387, column: 34, scope: !3958)
!3958 = distinct !DILexicalBlock(scope: !3953, file: !3, line: 386, column: 46)
!3959 = !DILocation(line: 387, column: 37, scope: !3958)
!3960 = !DILocation(line: 387, column: 42, scope: !3958)
!3961 = !DILocation(line: 387, column: 46, scope: !3958)
!3962 = !DILocation(line: 387, column: 11, scope: !3958)
!3963 = !DILocation(line: 387, column: 9, scope: !3958)
!3964 = !DILocalVariable(name: "__ret_warn_on", scope: !3965, file: !3, line: 388, type: !296)
!3965 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 388, column: 7)
!3966 = distinct !DILexicalBlock(scope: !3958, file: !3, line: 388, column: 7)
!3967 = !DILocation(line: 388, column: 7, scope: !3965)
!3968 = !DILocation(line: 388, column: 7, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3965, file: !3, line: 388, column: 7)
!3970 = !DILocation(line: 388, column: 7, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3969, file: !3, line: 388, column: 7)
!3972 = !DILocation(line: 388, column: 7, scope: !3973)
!3973 = distinct !DILexicalBlock(scope: !3971, file: !3, line: 388, column: 7)
!3974 = !DILocation(line: 388, column: 7, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3971, file: !3, line: 388, column: 7)
!3976 = !{i32 -2142081925, i32 -2142081896, i32 -2142081850, i32 -2142081792, i32 -2142081738, i32 -2142081684, i32 -2142081629, i32 -2142081598}
!3977 = !DILocation(line: 388, column: 7, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3971, file: !3, line: 388, column: 7)
!3979 = !{i32 -2142081176, i32 -2142081169, i32 -2142081117, i32 -2142081086, i32 -2142081056}
!3980 = !DILocation(line: 388, column: 7, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3971, file: !3, line: 388, column: 7)
!3982 = !DILocation(line: 388, column: 7, scope: !3966)
!3983 = !DILocation(line: 388, column: 7, scope: !3958)
!3984 = !DILocation(line: 389, column: 4, scope: !3966)
!3985 = !DILocation(line: 390, column: 13, scope: !3958)
!3986 = !DILocation(line: 390, column: 20, scope: !3958)
!3987 = !DILocation(line: 390, column: 3, scope: !3958)
!3988 = !DILocation(line: 391, column: 9, scope: !3958)
!3989 = !DILocation(line: 391, column: 3, scope: !3958)
!3990 = !DILocation(line: 392, column: 2, scope: !3958)
!3991 = !DILocation(line: 394, column: 16, scope: !3842)
!3992 = !DILocation(line: 394, column: 19, scope: !3842)
!3993 = !DILocation(line: 394, column: 2, scope: !3842)
!3994 = !DILocation(line: 396, column: 14, scope: !3842)
!3995 = !DILocation(line: 396, column: 17, scope: !3842)
!3996 = !DILocation(line: 396, column: 2, scope: !3842)
!3997 = !DILocation(line: 397, column: 32, scope: !3842)
!3998 = !DILocation(line: 397, column: 37, scope: !3842)
!3999 = !DILocation(line: 397, column: 31, scope: !3842)
!4000 = !DILocation(line: 397, column: 7, scope: !3842)
!4001 = !DILocation(line: 397, column: 5, scope: !3842)
!4002 = !DILocation(line: 398, column: 7, scope: !4003)
!4003 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 398, column: 6)
!4004 = !DILocation(line: 398, column: 6, scope: !3842)
!4005 = !DILocation(line: 399, column: 32, scope: !4003)
!4006 = !DILocation(line: 399, column: 37, scope: !4003)
!4007 = !DILocation(line: 399, column: 43, scope: !4003)
!4008 = !DILocation(line: 399, column: 48, scope: !4003)
!4009 = !DILocation(line: 399, column: 52, scope: !4003)
!4010 = !DILocation(line: 399, column: 8, scope: !4003)
!4011 = !DILocation(line: 399, column: 6, scope: !4003)
!4012 = !DILocation(line: 399, column: 3, scope: !4003)
!4013 = !DILocation(line: 400, column: 7, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !3842, file: !3, line: 400, column: 6)
!4015 = !DILocation(line: 400, column: 6, scope: !3842)
!4016 = !DILocation(line: 401, column: 33, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4014, file: !3, line: 400, column: 11)
!4018 = !DILocation(line: 401, column: 36, scope: !4017)
!4019 = !DILocation(line: 401, column: 3, scope: !4017)
!4020 = !DILocation(line: 402, column: 3, scope: !4017)
!4021 = !DILocation(line: 403, column: 2, scope: !4017)
!4022 = !DILocation(line: 404, column: 3, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4014, file: !3, line: 403, column: 9)
!4024 = !DILocation(line: 406, column: 16, scope: !3842)
!4025 = !DILocation(line: 406, column: 19, scope: !3842)
!4026 = !DILocation(line: 406, column: 2, scope: !3842)
!4027 = !DILocation(line: 408, column: 8, scope: !3842)
!4028 = !DILocation(line: 408, column: 13, scope: !3842)
!4029 = !DILocation(line: 408, column: 2, scope: !3842)
!4030 = !DILocation(line: 409, column: 8, scope: !3842)
!4031 = !DILocation(line: 409, column: 2, scope: !3842)
!4032 = !DILocation(line: 411, column: 12, scope: !3842)
!4033 = !DILocation(line: 411, column: 15, scope: !3842)
!4034 = !DILocation(line: 411, column: 2, scope: !3842)
!4035 = !DILocation(line: 413, column: 2, scope: !3842)
!4036 = !DILabel(scope: !3842, name: "out", file: !3, line: 415)
!4037 = !DILocation(line: 415, column: 2, scope: !3842)
!4038 = !DILocation(line: 416, column: 16, scope: !3842)
!4039 = !DILocation(line: 416, column: 19, scope: !3842)
!4040 = !DILocation(line: 416, column: 2, scope: !3842)
!4041 = !DILocation(line: 417, column: 1, scope: !3842)
!4042 = distinct !DISubprogram(name: "xenbus_get_transaction", scope: !3, file: !3, line: 351, type: !4043, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!186, !222, !266}
!4045 = !DILocalVariable(name: "u", arg: 1, scope: !4042, file: !3, line: 352, type: !222)
!4046 = !DILocation(line: 352, column: 27, scope: !4042)
!4047 = !DILocalVariable(name: "tx_id", arg: 2, scope: !4042, file: !3, line: 352, type: !266)
!4048 = !DILocation(line: 352, column: 39, scope: !4042)
!4049 = !DILocalVariable(name: "trans", scope: !4042, file: !3, line: 354, type: !186)
!4050 = !DILocation(line: 354, column: 36, scope: !4042)
!4051 = !DILocalVariable(name: "__mptr", scope: !4052, file: !3, line: 356, type: !185)
!4052 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 356, column: 2)
!4053 = distinct !DILexicalBlock(scope: !4042, file: !3, line: 356, column: 2)
!4054 = !DILocation(line: 356, column: 2, scope: !4052)
!4055 = !DILocation(line: 356, column: 2, scope: !4056)
!4056 = distinct !DILexicalBlock(scope: !4052, file: !3, line: 356, column: 2)
!4057 = !DILocation(line: 356, column: 2, scope: !4053)
!4058 = !DILocation(line: 356, column: 2, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4053, file: !3, line: 356, column: 2)
!4060 = !DILocation(line: 357, column: 7, scope: !4061)
!4061 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 357, column: 7)
!4062 = !DILocation(line: 357, column: 14, scope: !4061)
!4063 = !DILocation(line: 357, column: 21, scope: !4061)
!4064 = !DILocation(line: 357, column: 27, scope: !4061)
!4065 = !DILocation(line: 357, column: 24, scope: !4061)
!4066 = !DILocation(line: 357, column: 7, scope: !4059)
!4067 = !DILocation(line: 358, column: 11, scope: !4061)
!4068 = !DILocation(line: 358, column: 4, scope: !4061)
!4069 = !DILocalVariable(name: "__mptr", scope: !4070, file: !3, line: 356, type: !185)
!4070 = distinct !DILexicalBlock(scope: !4059, file: !3, line: 356, column: 2)
!4071 = !DILocation(line: 356, column: 2, scope: !4070)
!4072 = !DILocation(line: 356, column: 2, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4070, file: !3, line: 356, column: 2)
!4074 = distinct !{!4074, !4057, !4075}
!4075 = !DILocation(line: 358, column: 11, scope: !4053)
!4076 = !DILocation(line: 360, column: 2, scope: !4042)
!4077 = !DILocation(line: 361, column: 1, scope: !4042)
!4078 = distinct !DISubprogram(name: "list_del", scope: !4079, file: !4079, line: 144, type: !4080, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4079 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!4080 = !DISubroutineType(types: !4081)
!4081 = !{null, !194}
!4082 = !DILocalVariable(name: "entry", arg: 1, scope: !4078, file: !4079, line: 144, type: !194)
!4083 = !DILocation(line: 144, column: 47, scope: !4078)
!4084 = !DILocation(line: 146, column: 19, scope: !4078)
!4085 = !DILocation(line: 146, column: 2, scope: !4078)
!4086 = !DILocation(line: 147, column: 2, scope: !4078)
!4087 = !DILocation(line: 147, column: 9, scope: !4078)
!4088 = !DILocation(line: 147, column: 14, scope: !4078)
!4089 = !DILocation(line: 148, column: 2, scope: !4078)
!4090 = !DILocation(line: 148, column: 9, scope: !4078)
!4091 = !DILocation(line: 148, column: 14, scope: !4078)
!4092 = !DILocation(line: 149, column: 1, scope: !4078)
!4093 = distinct !DISubprogram(name: "kstrtou32", scope: !4094, file: !4094, line: 405, type: !4095, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4094 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!296, !317, !7, !1175}
!4097 = !DILocalVariable(name: "s", arg: 1, scope: !4093, file: !4094, line: 405, type: !317)
!4098 = !DILocation(line: 405, column: 54, scope: !4093)
!4099 = !DILocalVariable(name: "base", arg: 2, scope: !4093, file: !4094, line: 405, type: !7)
!4100 = !DILocation(line: 405, column: 70, scope: !4093)
!4101 = !DILocalVariable(name: "res", arg: 3, scope: !4093, file: !4094, line: 405, type: !1175)
!4102 = !DILocation(line: 405, column: 81, scope: !4093)
!4103 = !DILocation(line: 407, column: 20, scope: !4093)
!4104 = !DILocation(line: 407, column: 23, scope: !4093)
!4105 = !DILocation(line: 407, column: 29, scope: !4093)
!4106 = !DILocation(line: 407, column: 9, scope: !4093)
!4107 = !DILocation(line: 407, column: 2, scope: !4093)
!4108 = distinct !DISubprogram(name: "queue_reply", scope: !3, file: !3, line: 189, type: !4109, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!296, !194, !3326, !730}
!4111 = !DILocalVariable(name: "s", arg: 1, scope: !4112, file: !98, line: 445, type: !1713)
!4112 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !98, file: !98, line: 445, type: !4113, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4113 = !DISubroutineType(types: !4114)
!4114 = !{!185, !1713, !208, !730}
!4115 = !DILocation(line: 445, column: 72, scope: !4112, inlinedAt: !4116)
!4116 = distinct !DILocation(line: 552, column: 10, scope: !4117, inlinedAt: !4122)
!4117 = distinct !DILexicalBlock(scope: !4118, file: !98, line: 540, column: 34)
!4118 = distinct !DILexicalBlock(scope: !4119, file: !98, line: 540, column: 6)
!4119 = distinct !DISubprogram(name: "kmalloc", scope: !98, file: !98, line: 538, type: !4120, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!185, !730, !208}
!4122 = distinct !DILocation(line: 198, column: 7, scope: !4108)
!4123 = !DILocalVariable(name: "flags", arg: 2, scope: !4112, file: !98, line: 446, type: !208)
!4124 = !DILocation(line: 446, column: 9, scope: !4112, inlinedAt: !4116)
!4125 = !DILocalVariable(name: "size", arg: 3, scope: !4112, file: !98, line: 446, type: !730)
!4126 = !DILocation(line: 446, column: 23, scope: !4112, inlinedAt: !4116)
!4127 = !DILocalVariable(name: "ret", scope: !4112, file: !98, line: 448, type: !185)
!4128 = !DILocation(line: 448, column: 8, scope: !4112, inlinedAt: !4116)
!4129 = !DILocalVariable(name: "flags", arg: 1, scope: !4130, file: !98, line: 318, type: !208)
!4130 = distinct !DISubprogram(name: "kmalloc_type", scope: !98, file: !98, line: 318, type: !4131, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{!97, !208}
!4133 = !DILocation(line: 318, column: 67, scope: !4130, inlinedAt: !4134)
!4134 = distinct !DILocation(line: 553, column: 20, scope: !4117, inlinedAt: !4122)
!4135 = !DILocalVariable(name: "size", arg: 1, scope: !4136, file: !98, line: 346, type: !730)
!4136 = distinct !DISubprogram(name: "kmalloc_index", scope: !98, file: !98, line: 346, type: !4137, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!7, !730}
!4139 = !DILocation(line: 346, column: 58, scope: !4136, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 547, column: 11, scope: !4117, inlinedAt: !4122)
!4141 = !DILocalVariable(name: "size", arg: 1, scope: !4142, file: !98, line: 472, type: !730)
!4142 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !98, file: !98, line: 472, type: !4143, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{!185, !730, !208, !7}
!4145 = !DILocation(line: 472, column: 28, scope: !4142, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 481, column: 9, scope: !4147, inlinedAt: !4148)
!4147 = distinct !DISubprogram(name: "kmalloc_large", scope: !98, file: !98, line: 478, type: !4120, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4148 = distinct !DILocation(line: 545, column: 11, scope: !4149, inlinedAt: !4122)
!4149 = distinct !DILexicalBlock(scope: !4117, file: !98, line: 544, column: 7)
!4150 = !DILocalVariable(name: "flags", arg: 2, scope: !4142, file: !98, line: 472, type: !208)
!4151 = !DILocation(line: 472, column: 40, scope: !4142, inlinedAt: !4146)
!4152 = !DILocalVariable(name: "order", arg: 3, scope: !4142, file: !98, line: 472, type: !7)
!4153 = !DILocation(line: 472, column: 60, scope: !4142, inlinedAt: !4146)
!4154 = !DILocalVariable(name: "size", arg: 1, scope: !4147, file: !98, line: 478, type: !730)
!4155 = !DILocation(line: 478, column: 51, scope: !4147, inlinedAt: !4148)
!4156 = !DILocalVariable(name: "flags", arg: 2, scope: !4147, file: !98, line: 478, type: !208)
!4157 = !DILocation(line: 478, column: 63, scope: !4147, inlinedAt: !4148)
!4158 = !DILocalVariable(name: "order", scope: !4147, file: !98, line: 480, type: !7)
!4159 = !DILocation(line: 480, column: 15, scope: !4147, inlinedAt: !4148)
!4160 = !DILocalVariable(name: "size", arg: 1, scope: !4119, file: !98, line: 538, type: !730)
!4161 = !DILocation(line: 538, column: 45, scope: !4119, inlinedAt: !4122)
!4162 = !DILocalVariable(name: "flags", arg: 2, scope: !4119, file: !98, line: 538, type: !208)
!4163 = !DILocation(line: 538, column: 57, scope: !4119, inlinedAt: !4122)
!4164 = !DILocalVariable(name: "index", scope: !4117, file: !98, line: 542, type: !7)
!4165 = !DILocation(line: 542, column: 16, scope: !4117, inlinedAt: !4122)
!4166 = !DILocalVariable(name: "queue", arg: 1, scope: !4108, file: !3, line: 189, type: !194)
!4167 = !DILocation(line: 189, column: 42, scope: !4108)
!4168 = !DILocalVariable(name: "data", arg: 2, scope: !4108, file: !3, line: 189, type: !3326)
!4169 = !DILocation(line: 189, column: 61, scope: !4108)
!4170 = !DILocalVariable(name: "len", arg: 3, scope: !4108, file: !3, line: 189, type: !730)
!4171 = !DILocation(line: 189, column: 74, scope: !4108)
!4172 = !DILocalVariable(name: "rb", scope: !4108, file: !3, line: 191, type: !211)
!4173 = !DILocation(line: 191, column: 22, scope: !4108)
!4174 = !DILocation(line: 193, column: 6, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 193, column: 6)
!4176 = !DILocation(line: 193, column: 10, scope: !4175)
!4177 = !DILocation(line: 193, column: 6, scope: !4108)
!4178 = !DILocation(line: 194, column: 3, scope: !4175)
!4179 = !DILocation(line: 195, column: 6, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 195, column: 6)
!4181 = !DILocation(line: 195, column: 10, scope: !4180)
!4182 = !DILocation(line: 195, column: 6, scope: !4108)
!4183 = !DILocation(line: 196, column: 3, scope: !4180)
!4184 = !DILocation(line: 198, column: 29, scope: !4108)
!4185 = !DILocation(line: 198, column: 27, scope: !4108)
!4186 = !DILocation(line: 540, column: 27, scope: !4118, inlinedAt: !4122)
!4187 = !DILocation(line: 540, column: 6, scope: !4118, inlinedAt: !4122)
!4188 = !DILocation(line: 540, column: 6, scope: !4119, inlinedAt: !4122)
!4189 = !DILocation(line: 544, column: 7, scope: !4149, inlinedAt: !4122)
!4190 = !DILocation(line: 544, column: 12, scope: !4149, inlinedAt: !4122)
!4191 = !DILocation(line: 544, column: 7, scope: !4117, inlinedAt: !4122)
!4192 = !DILocation(line: 545, column: 25, scope: !4149, inlinedAt: !4122)
!4193 = !DILocation(line: 545, column: 31, scope: !4149, inlinedAt: !4122)
!4194 = !DILocation(line: 480, column: 33, scope: !4147, inlinedAt: !4148)
!4195 = !DILocation(line: 480, column: 23, scope: !4147, inlinedAt: !4148)
!4196 = !DILocation(line: 481, column: 29, scope: !4147, inlinedAt: !4148)
!4197 = !DILocation(line: 481, column: 35, scope: !4147, inlinedAt: !4148)
!4198 = !DILocation(line: 481, column: 42, scope: !4147, inlinedAt: !4148)
!4199 = !DILocation(line: 474, column: 23, scope: !4142, inlinedAt: !4146)
!4200 = !DILocation(line: 474, column: 29, scope: !4142, inlinedAt: !4146)
!4201 = !DILocation(line: 474, column: 36, scope: !4142, inlinedAt: !4146)
!4202 = !DILocation(line: 474, column: 9, scope: !4142, inlinedAt: !4146)
!4203 = !DILocation(line: 545, column: 4, scope: !4149, inlinedAt: !4122)
!4204 = !DILocation(line: 547, column: 25, scope: !4117, inlinedAt: !4122)
!4205 = !DILocation(line: 348, column: 7, scope: !4206, inlinedAt: !4140)
!4206 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 348, column: 6)
!4207 = !DILocation(line: 348, column: 6, scope: !4136, inlinedAt: !4140)
!4208 = !DILocation(line: 349, column: 3, scope: !4206, inlinedAt: !4140)
!4209 = !DILocation(line: 351, column: 6, scope: !4210, inlinedAt: !4140)
!4210 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 351, column: 6)
!4211 = !DILocation(line: 351, column: 11, scope: !4210, inlinedAt: !4140)
!4212 = !DILocation(line: 351, column: 6, scope: !4136, inlinedAt: !4140)
!4213 = !DILocation(line: 352, column: 3, scope: !4210, inlinedAt: !4140)
!4214 = !DILocation(line: 354, column: 32, scope: !4215, inlinedAt: !4140)
!4215 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 354, column: 6)
!4216 = !DILocation(line: 354, column: 37, scope: !4215, inlinedAt: !4140)
!4217 = !DILocation(line: 354, column: 42, scope: !4215, inlinedAt: !4140)
!4218 = !DILocation(line: 354, column: 45, scope: !4215, inlinedAt: !4140)
!4219 = !DILocation(line: 354, column: 50, scope: !4215, inlinedAt: !4140)
!4220 = !DILocation(line: 354, column: 6, scope: !4136, inlinedAt: !4140)
!4221 = !DILocation(line: 355, column: 3, scope: !4215, inlinedAt: !4140)
!4222 = !DILocation(line: 356, column: 32, scope: !4223, inlinedAt: !4140)
!4223 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 356, column: 6)
!4224 = !DILocation(line: 356, column: 37, scope: !4223, inlinedAt: !4140)
!4225 = !DILocation(line: 356, column: 43, scope: !4223, inlinedAt: !4140)
!4226 = !DILocation(line: 356, column: 46, scope: !4223, inlinedAt: !4140)
!4227 = !DILocation(line: 356, column: 51, scope: !4223, inlinedAt: !4140)
!4228 = !DILocation(line: 356, column: 6, scope: !4136, inlinedAt: !4140)
!4229 = !DILocation(line: 357, column: 3, scope: !4223, inlinedAt: !4140)
!4230 = !DILocation(line: 358, column: 6, scope: !4231, inlinedAt: !4140)
!4231 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 358, column: 6)
!4232 = !DILocation(line: 358, column: 11, scope: !4231, inlinedAt: !4140)
!4233 = !DILocation(line: 358, column: 6, scope: !4136, inlinedAt: !4140)
!4234 = !DILocation(line: 358, column: 26, scope: !4231, inlinedAt: !4140)
!4235 = !DILocation(line: 359, column: 6, scope: !4236, inlinedAt: !4140)
!4236 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 359, column: 6)
!4237 = !DILocation(line: 359, column: 11, scope: !4236, inlinedAt: !4140)
!4238 = !DILocation(line: 359, column: 6, scope: !4136, inlinedAt: !4140)
!4239 = !DILocation(line: 359, column: 26, scope: !4236, inlinedAt: !4140)
!4240 = !DILocation(line: 360, column: 6, scope: !4241, inlinedAt: !4140)
!4241 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 360, column: 6)
!4242 = !DILocation(line: 360, column: 11, scope: !4241, inlinedAt: !4140)
!4243 = !DILocation(line: 360, column: 6, scope: !4136, inlinedAt: !4140)
!4244 = !DILocation(line: 360, column: 26, scope: !4241, inlinedAt: !4140)
!4245 = !DILocation(line: 361, column: 6, scope: !4246, inlinedAt: !4140)
!4246 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 361, column: 6)
!4247 = !DILocation(line: 361, column: 11, scope: !4246, inlinedAt: !4140)
!4248 = !DILocation(line: 361, column: 6, scope: !4136, inlinedAt: !4140)
!4249 = !DILocation(line: 361, column: 26, scope: !4246, inlinedAt: !4140)
!4250 = !DILocation(line: 362, column: 6, scope: !4251, inlinedAt: !4140)
!4251 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 362, column: 6)
!4252 = !DILocation(line: 362, column: 11, scope: !4251, inlinedAt: !4140)
!4253 = !DILocation(line: 362, column: 6, scope: !4136, inlinedAt: !4140)
!4254 = !DILocation(line: 362, column: 26, scope: !4251, inlinedAt: !4140)
!4255 = !DILocation(line: 363, column: 6, scope: !4256, inlinedAt: !4140)
!4256 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 363, column: 6)
!4257 = !DILocation(line: 363, column: 11, scope: !4256, inlinedAt: !4140)
!4258 = !DILocation(line: 363, column: 6, scope: !4136, inlinedAt: !4140)
!4259 = !DILocation(line: 363, column: 26, scope: !4256, inlinedAt: !4140)
!4260 = !DILocation(line: 364, column: 6, scope: !4261, inlinedAt: !4140)
!4261 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 364, column: 6)
!4262 = !DILocation(line: 364, column: 11, scope: !4261, inlinedAt: !4140)
!4263 = !DILocation(line: 364, column: 6, scope: !4136, inlinedAt: !4140)
!4264 = !DILocation(line: 364, column: 26, scope: !4261, inlinedAt: !4140)
!4265 = !DILocation(line: 365, column: 6, scope: !4266, inlinedAt: !4140)
!4266 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 365, column: 6)
!4267 = !DILocation(line: 365, column: 11, scope: !4266, inlinedAt: !4140)
!4268 = !DILocation(line: 365, column: 6, scope: !4136, inlinedAt: !4140)
!4269 = !DILocation(line: 365, column: 26, scope: !4266, inlinedAt: !4140)
!4270 = !DILocation(line: 366, column: 6, scope: !4271, inlinedAt: !4140)
!4271 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 366, column: 6)
!4272 = !DILocation(line: 366, column: 11, scope: !4271, inlinedAt: !4140)
!4273 = !DILocation(line: 366, column: 6, scope: !4136, inlinedAt: !4140)
!4274 = !DILocation(line: 366, column: 26, scope: !4271, inlinedAt: !4140)
!4275 = !DILocation(line: 367, column: 6, scope: !4276, inlinedAt: !4140)
!4276 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 367, column: 6)
!4277 = !DILocation(line: 367, column: 11, scope: !4276, inlinedAt: !4140)
!4278 = !DILocation(line: 367, column: 6, scope: !4136, inlinedAt: !4140)
!4279 = !DILocation(line: 367, column: 26, scope: !4276, inlinedAt: !4140)
!4280 = !DILocation(line: 368, column: 6, scope: !4281, inlinedAt: !4140)
!4281 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 368, column: 6)
!4282 = !DILocation(line: 368, column: 11, scope: !4281, inlinedAt: !4140)
!4283 = !DILocation(line: 368, column: 6, scope: !4136, inlinedAt: !4140)
!4284 = !DILocation(line: 368, column: 26, scope: !4281, inlinedAt: !4140)
!4285 = !DILocation(line: 369, column: 6, scope: !4286, inlinedAt: !4140)
!4286 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 369, column: 6)
!4287 = !DILocation(line: 369, column: 11, scope: !4286, inlinedAt: !4140)
!4288 = !DILocation(line: 369, column: 6, scope: !4136, inlinedAt: !4140)
!4289 = !DILocation(line: 369, column: 26, scope: !4286, inlinedAt: !4140)
!4290 = !DILocation(line: 370, column: 6, scope: !4291, inlinedAt: !4140)
!4291 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 370, column: 6)
!4292 = !DILocation(line: 370, column: 11, scope: !4291, inlinedAt: !4140)
!4293 = !DILocation(line: 370, column: 6, scope: !4136, inlinedAt: !4140)
!4294 = !DILocation(line: 370, column: 26, scope: !4291, inlinedAt: !4140)
!4295 = !DILocation(line: 371, column: 6, scope: !4296, inlinedAt: !4140)
!4296 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 371, column: 6)
!4297 = !DILocation(line: 371, column: 11, scope: !4296, inlinedAt: !4140)
!4298 = !DILocation(line: 371, column: 6, scope: !4136, inlinedAt: !4140)
!4299 = !DILocation(line: 371, column: 26, scope: !4296, inlinedAt: !4140)
!4300 = !DILocation(line: 372, column: 6, scope: !4301, inlinedAt: !4140)
!4301 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 372, column: 6)
!4302 = !DILocation(line: 372, column: 11, scope: !4301, inlinedAt: !4140)
!4303 = !DILocation(line: 372, column: 6, scope: !4136, inlinedAt: !4140)
!4304 = !DILocation(line: 372, column: 26, scope: !4301, inlinedAt: !4140)
!4305 = !DILocation(line: 373, column: 6, scope: !4306, inlinedAt: !4140)
!4306 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 373, column: 6)
!4307 = !DILocation(line: 373, column: 11, scope: !4306, inlinedAt: !4140)
!4308 = !DILocation(line: 373, column: 6, scope: !4136, inlinedAt: !4140)
!4309 = !DILocation(line: 373, column: 26, scope: !4306, inlinedAt: !4140)
!4310 = !DILocation(line: 374, column: 6, scope: !4311, inlinedAt: !4140)
!4311 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 374, column: 6)
!4312 = !DILocation(line: 374, column: 11, scope: !4311, inlinedAt: !4140)
!4313 = !DILocation(line: 374, column: 6, scope: !4136, inlinedAt: !4140)
!4314 = !DILocation(line: 374, column: 26, scope: !4311, inlinedAt: !4140)
!4315 = !DILocation(line: 375, column: 6, scope: !4316, inlinedAt: !4140)
!4316 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 375, column: 6)
!4317 = !DILocation(line: 375, column: 11, scope: !4316, inlinedAt: !4140)
!4318 = !DILocation(line: 375, column: 6, scope: !4136, inlinedAt: !4140)
!4319 = !DILocation(line: 375, column: 27, scope: !4316, inlinedAt: !4140)
!4320 = !DILocation(line: 376, column: 6, scope: !4321, inlinedAt: !4140)
!4321 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 376, column: 6)
!4322 = !DILocation(line: 376, column: 11, scope: !4321, inlinedAt: !4140)
!4323 = !DILocation(line: 376, column: 6, scope: !4136, inlinedAt: !4140)
!4324 = !DILocation(line: 376, column: 32, scope: !4321, inlinedAt: !4140)
!4325 = !DILocation(line: 377, column: 6, scope: !4326, inlinedAt: !4140)
!4326 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 377, column: 6)
!4327 = !DILocation(line: 377, column: 11, scope: !4326, inlinedAt: !4140)
!4328 = !DILocation(line: 377, column: 6, scope: !4136, inlinedAt: !4140)
!4329 = !DILocation(line: 377, column: 32, scope: !4326, inlinedAt: !4140)
!4330 = !DILocation(line: 378, column: 6, scope: !4331, inlinedAt: !4140)
!4331 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 378, column: 6)
!4332 = !DILocation(line: 378, column: 11, scope: !4331, inlinedAt: !4140)
!4333 = !DILocation(line: 378, column: 6, scope: !4136, inlinedAt: !4140)
!4334 = !DILocation(line: 378, column: 32, scope: !4331, inlinedAt: !4140)
!4335 = !DILocation(line: 379, column: 6, scope: !4336, inlinedAt: !4140)
!4336 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 379, column: 6)
!4337 = !DILocation(line: 379, column: 11, scope: !4336, inlinedAt: !4140)
!4338 = !DILocation(line: 379, column: 6, scope: !4136, inlinedAt: !4140)
!4339 = !DILocation(line: 379, column: 33, scope: !4336, inlinedAt: !4140)
!4340 = !DILocation(line: 380, column: 6, scope: !4341, inlinedAt: !4140)
!4341 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 380, column: 6)
!4342 = !DILocation(line: 380, column: 11, scope: !4341, inlinedAt: !4140)
!4343 = !DILocation(line: 380, column: 6, scope: !4136, inlinedAt: !4140)
!4344 = !DILocation(line: 380, column: 33, scope: !4341, inlinedAt: !4140)
!4345 = !DILocation(line: 381, column: 6, scope: !4346, inlinedAt: !4140)
!4346 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 381, column: 6)
!4347 = !DILocation(line: 381, column: 11, scope: !4346, inlinedAt: !4140)
!4348 = !DILocation(line: 381, column: 6, scope: !4136, inlinedAt: !4140)
!4349 = !DILocation(line: 381, column: 33, scope: !4346, inlinedAt: !4140)
!4350 = !DILocation(line: 382, column: 2, scope: !4351, inlinedAt: !4140)
!4351 = distinct !DILexicalBlock(scope: !4352, file: !98, line: 382, column: 2)
!4352 = distinct !DILexicalBlock(scope: !4136, file: !98, line: 382, column: 2)
!4353 = !{i32 -2142520527, i32 -2142520498, i32 -2142520452, i32 -2142520394, i32 -2142520340, i32 -2142520286, i32 -2142520231, i32 -2142520200}
!4354 = !DILocation(line: 382, column: 2, scope: !4355, inlinedAt: !4140)
!4355 = distinct !DILexicalBlock(scope: !4356, file: !98, line: 382, column: 2)
!4356 = distinct !DILexicalBlock(scope: !4352, file: !98, line: 382, column: 2)
!4357 = !{i32 -2142519757, i32 -2142519750, i32 -2142519696, i32 -2142519665, i32 -2142519635}
!4358 = !DILocation(line: 382, column: 2, scope: !4356, inlinedAt: !4140)
!4359 = !DILocation(line: 386, column: 1, scope: !4136, inlinedAt: !4140)
!4360 = !DILocation(line: 547, column: 9, scope: !4117, inlinedAt: !4122)
!4361 = !DILocation(line: 549, column: 8, scope: !4362, inlinedAt: !4122)
!4362 = distinct !DILexicalBlock(scope: !4117, file: !98, line: 549, column: 7)
!4363 = !DILocation(line: 549, column: 7, scope: !4117, inlinedAt: !4122)
!4364 = !DILocation(line: 550, column: 4, scope: !4362, inlinedAt: !4122)
!4365 = !DILocation(line: 553, column: 33, scope: !4117, inlinedAt: !4122)
!4366 = !DILocation(line: 325, column: 6, scope: !4367, inlinedAt: !4134)
!4367 = distinct !DILexicalBlock(scope: !4130, file: !98, line: 325, column: 6)
!4368 = !DILocation(line: 325, column: 6, scope: !4130, inlinedAt: !4134)
!4369 = !DILocation(line: 326, column: 3, scope: !4367, inlinedAt: !4134)
!4370 = !DILocation(line: 332, column: 9, scope: !4130, inlinedAt: !4134)
!4371 = !DILocation(line: 332, column: 15, scope: !4130, inlinedAt: !4134)
!4372 = !DILocation(line: 332, column: 2, scope: !4130, inlinedAt: !4134)
!4373 = !DILocation(line: 336, column: 1, scope: !4130, inlinedAt: !4134)
!4374 = !DILocation(line: 553, column: 5, scope: !4117, inlinedAt: !4122)
!4375 = !DILocation(line: 553, column: 41, scope: !4117, inlinedAt: !4122)
!4376 = !DILocation(line: 554, column: 5, scope: !4117, inlinedAt: !4122)
!4377 = !DILocation(line: 554, column: 12, scope: !4117, inlinedAt: !4122)
!4378 = !DILocation(line: 448, column: 31, scope: !4112, inlinedAt: !4116)
!4379 = !DILocation(line: 448, column: 34, scope: !4112, inlinedAt: !4116)
!4380 = !DILocation(line: 448, column: 14, scope: !4112, inlinedAt: !4116)
!4381 = !DILocation(line: 450, column: 22, scope: !4112, inlinedAt: !4116)
!4382 = !DILocation(line: 450, column: 25, scope: !4112, inlinedAt: !4116)
!4383 = !DILocation(line: 450, column: 30, scope: !4112, inlinedAt: !4116)
!4384 = !DILocation(line: 450, column: 36, scope: !4112, inlinedAt: !4116)
!4385 = !DILocation(line: 450, column: 8, scope: !4112, inlinedAt: !4116)
!4386 = !DILocation(line: 450, column: 6, scope: !4112, inlinedAt: !4116)
!4387 = !DILocation(line: 451, column: 9, scope: !4112, inlinedAt: !4116)
!4388 = !DILocation(line: 552, column: 3, scope: !4117, inlinedAt: !4122)
!4389 = !DILocation(line: 557, column: 19, scope: !4119, inlinedAt: !4122)
!4390 = !DILocation(line: 557, column: 25, scope: !4119, inlinedAt: !4122)
!4391 = !DILocation(line: 557, column: 9, scope: !4119, inlinedAt: !4122)
!4392 = !DILocation(line: 557, column: 2, scope: !4119, inlinedAt: !4122)
!4393 = !DILocation(line: 558, column: 1, scope: !4119, inlinedAt: !4122)
!4394 = !DILocation(line: 198, column: 7, scope: !4108)
!4395 = !DILocation(line: 198, column: 5, scope: !4108)
!4396 = !DILocation(line: 199, column: 6, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4108, file: !3, line: 199, column: 6)
!4398 = !DILocation(line: 199, column: 9, scope: !4397)
!4399 = !DILocation(line: 199, column: 6, scope: !4108)
!4400 = !DILocation(line: 200, column: 3, scope: !4397)
!4401 = !DILocation(line: 202, column: 2, scope: !4108)
!4402 = !DILocation(line: 202, column: 6, scope: !4108)
!4403 = !DILocation(line: 202, column: 11, scope: !4108)
!4404 = !DILocation(line: 203, column: 12, scope: !4108)
!4405 = !DILocation(line: 203, column: 2, scope: !4108)
!4406 = !DILocation(line: 203, column: 6, scope: !4108)
!4407 = !DILocation(line: 203, column: 10, scope: !4108)
!4408 = !DILocation(line: 205, column: 9, scope: !4108)
!4409 = !DILocation(line: 205, column: 13, scope: !4108)
!4410 = !DILocation(line: 205, column: 2, scope: !4108)
!4411 = !DILocation(line: 205, column: 18, scope: !4108)
!4412 = !DILocation(line: 205, column: 24, scope: !4108)
!4413 = !DILocation(line: 207, column: 17, scope: !4108)
!4414 = !DILocation(line: 207, column: 21, scope: !4108)
!4415 = !DILocation(line: 207, column: 27, scope: !4108)
!4416 = !DILocation(line: 207, column: 2, scope: !4108)
!4417 = !DILocation(line: 208, column: 2, scope: !4108)
!4418 = !DILocation(line: 209, column: 1, scope: !4108)
!4419 = distinct !DISubprogram(name: "list_splice_tail", scope: !4079, file: !4079, line: 464, type: !4420, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{null, !194, !194}
!4422 = !DILocalVariable(name: "list", arg: 1, scope: !4419, file: !4079, line: 464, type: !194)
!4423 = !DILocation(line: 464, column: 55, scope: !4419)
!4424 = !DILocalVariable(name: "head", arg: 2, scope: !4419, file: !4079, line: 465, type: !194)
!4425 = !DILocation(line: 465, column: 23, scope: !4419)
!4426 = !DILocation(line: 467, column: 18, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4419, file: !4079, line: 467, column: 6)
!4428 = !DILocation(line: 467, column: 7, scope: !4427)
!4429 = !DILocation(line: 467, column: 6, scope: !4419)
!4430 = !DILocation(line: 468, column: 17, scope: !4427)
!4431 = !DILocation(line: 468, column: 23, scope: !4427)
!4432 = !DILocation(line: 468, column: 29, scope: !4427)
!4433 = !DILocation(line: 468, column: 35, scope: !4427)
!4434 = !DILocation(line: 468, column: 3, scope: !4427)
!4435 = !DILocation(line: 469, column: 1, scope: !4419)
!4436 = distinct !DISubprogram(name: "queue_cleanup", scope: !3, file: !3, line: 215, type: !4080, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4437 = !DILocalVariable(name: "list", arg: 1, scope: !4436, file: !3, line: 215, type: !194)
!4438 = !DILocation(line: 215, column: 45, scope: !4436)
!4439 = !DILocalVariable(name: "rb", scope: !4436, file: !3, line: 217, type: !211)
!4440 = !DILocation(line: 217, column: 22, scope: !4436)
!4441 = !DILocation(line: 219, column: 2, scope: !4436)
!4442 = !DILocation(line: 219, column: 21, scope: !4436)
!4443 = !DILocation(line: 219, column: 10, scope: !4436)
!4444 = !DILocation(line: 219, column: 9, scope: !4436)
!4445 = !DILocalVariable(name: "__mptr", scope: !4446, file: !3, line: 220, type: !185)
!4446 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 220, column: 8)
!4447 = distinct !DILexicalBlock(scope: !4436, file: !3, line: 219, column: 28)
!4448 = !DILocation(line: 220, column: 8, scope: !4446)
!4449 = !DILocation(line: 220, column: 8, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4446, file: !3, line: 220, column: 8)
!4451 = !DILocation(line: 220, column: 6, scope: !4447)
!4452 = !DILocation(line: 221, column: 12, scope: !4447)
!4453 = !DILocation(line: 221, column: 18, scope: !4447)
!4454 = !DILocation(line: 221, column: 3, scope: !4447)
!4455 = !DILocation(line: 222, column: 9, scope: !4447)
!4456 = !DILocation(line: 222, column: 3, scope: !4447)
!4457 = distinct !{!4457, !4441, !4458}
!4458 = !DILocation(line: 223, column: 2, scope: !4436)
!4459 = !DILocation(line: 224, column: 1, scope: !4436)
!4460 = distinct !DISubprogram(name: "kref_put", scope: !285, file: !285, line: 62, type: !4461, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4461 = !DISubroutineType(types: !4462)
!4462 = !{!296, !4463, !4464}
!4463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{null, !4463}
!4467 = !DILocalVariable(name: "kref", arg: 1, scope: !4460, file: !285, line: 62, type: !4463)
!4468 = !DILocation(line: 62, column: 41, scope: !4460)
!4469 = !DILocalVariable(name: "release", arg: 2, scope: !4460, file: !285, line: 62, type: !4464)
!4470 = !DILocation(line: 62, column: 54, scope: !4460)
!4471 = !DILocation(line: 64, column: 29, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4460, file: !285, line: 64, column: 6)
!4473 = !DILocation(line: 64, column: 35, scope: !4472)
!4474 = !DILocation(line: 64, column: 6, scope: !4472)
!4475 = !DILocation(line: 64, column: 6, scope: !4460)
!4476 = !DILocation(line: 65, column: 3, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4472, file: !285, line: 64, column: 46)
!4478 = !DILocation(line: 65, column: 11, scope: !4477)
!4479 = !DILocation(line: 66, column: 3, scope: !4477)
!4480 = !DILocation(line: 68, column: 2, scope: !4460)
!4481 = !DILocation(line: 69, column: 1, scope: !4460)
!4482 = distinct !DISubprogram(name: "xenbus_file_free", scope: !3, file: !3, line: 339, type: !4465, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4483 = !DILocalVariable(name: "kref", arg: 1, scope: !4482, file: !3, line: 339, type: !4463)
!4484 = !DILocation(line: 339, column: 43, scope: !4482)
!4485 = !DILocalVariable(name: "u", scope: !4482, file: !3, line: 341, type: !222)
!4486 = !DILocation(line: 341, column: 27, scope: !4482)
!4487 = !DILocalVariable(name: "__mptr", scope: !4488, file: !3, line: 347, type: !185)
!4488 = distinct !DILexicalBlock(scope: !4482, file: !3, line: 347, column: 6)
!4489 = !DILocation(line: 347, column: 6, scope: !4488)
!4490 = !DILocation(line: 347, column: 6, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4488, file: !3, line: 347, column: 6)
!4492 = !DILocation(line: 347, column: 4, scope: !4482)
!4493 = !DILocation(line: 348, column: 17, scope: !4482)
!4494 = !DILocation(line: 348, column: 20, scope: !4482)
!4495 = !DILocation(line: 348, column: 2, scope: !4482)
!4496 = !DILocation(line: 349, column: 1, scope: !4482)
!4497 = distinct !DISubprogram(name: "xenbus_file_read", scope: !3, file: !3, line: 125, type: !725, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4498 = !DILocalVariable(name: "addr", arg: 1, scope: !4499, file: !4500, line: 138, type: !3326)
!4499 = distinct !DISubprogram(name: "check_copy_size", scope: !4500, file: !4500, line: 138, type: !4501, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4500 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!827, !3326, !730, !827}
!4503 = !DILocation(line: 138, column: 29, scope: !4499, inlinedAt: !4504)
!4504 = distinct !DILocation(line: 199, column: 6, scope: !4505, inlinedAt: !4510)
!4505 = distinct !DILexicalBlock(scope: !4507, file: !4506, line: 199, column: 6)
!4506 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!4507 = distinct !DISubprogram(name: "copy_to_user", scope: !4506, file: !4506, line: 197, type: !4508, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!329, !185, !3326, !329}
!4510 = distinct !DILocation(line: 153, column: 9, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 150, column: 18)
!4512 = !DILocalVariable(name: "bytes", arg: 2, scope: !4499, file: !4500, line: 138, type: !730)
!4513 = !DILocation(line: 138, column: 42, scope: !4499, inlinedAt: !4504)
!4514 = !DILocalVariable(name: "is_source", arg: 3, scope: !4499, file: !4500, line: 138, type: !827)
!4515 = !DILocation(line: 138, column: 54, scope: !4499, inlinedAt: !4504)
!4516 = !DILocalVariable(name: "sz", scope: !4499, file: !4500, line: 140, type: !296)
!4517 = !DILocation(line: 140, column: 6, scope: !4499, inlinedAt: !4504)
!4518 = !DILocalVariable(name: "__ret_warn_on", scope: !4519, file: !4500, line: 150, type: !296)
!4519 = distinct !DILexicalBlock(scope: !4520, file: !4500, line: 150, column: 6)
!4520 = distinct !DILexicalBlock(scope: !4499, file: !4500, line: 150, column: 6)
!4521 = !DILocation(line: 150, column: 6, scope: !4519, inlinedAt: !4504)
!4522 = !DILocalVariable(name: "to", arg: 1, scope: !4507, file: !4506, line: 197, type: !185)
!4523 = !DILocation(line: 197, column: 27, scope: !4507, inlinedAt: !4510)
!4524 = !DILocalVariable(name: "from", arg: 2, scope: !4507, file: !4506, line: 197, type: !3326)
!4525 = !DILocation(line: 197, column: 43, scope: !4507, inlinedAt: !4510)
!4526 = !DILocalVariable(name: "n", arg: 3, scope: !4507, file: !4506, line: 197, type: !329)
!4527 = !DILocation(line: 197, column: 63, scope: !4507, inlinedAt: !4510)
!4528 = !DILocalVariable(name: "filp", arg: 1, scope: !4497, file: !3, line: 125, type: !685)
!4529 = !DILocation(line: 125, column: 46, scope: !4497)
!4530 = !DILocalVariable(name: "ubuf", arg: 2, scope: !4497, file: !3, line: 126, type: !326)
!4531 = !DILocation(line: 126, column: 24, scope: !4497)
!4532 = !DILocalVariable(name: "len", arg: 3, scope: !4497, file: !3, line: 127, type: !730)
!4533 = !DILocation(line: 127, column: 18, scope: !4497)
!4534 = !DILocalVariable(name: "ppos", arg: 4, scope: !4497, file: !3, line: 127, type: !733)
!4535 = !DILocation(line: 127, column: 31, scope: !4497)
!4536 = !DILocalVariable(name: "u", scope: !4497, file: !3, line: 129, type: !222)
!4537 = !DILocation(line: 129, column: 27, scope: !4497)
!4538 = !DILocation(line: 129, column: 31, scope: !4497)
!4539 = !DILocation(line: 129, column: 37, scope: !4497)
!4540 = !DILocalVariable(name: "rb", scope: !4497, file: !3, line: 130, type: !211)
!4541 = !DILocation(line: 130, column: 22, scope: !4497)
!4542 = !DILocalVariable(name: "i", scope: !4497, file: !3, line: 131, type: !7)
!4543 = !DILocation(line: 131, column: 11, scope: !4497)
!4544 = !DILocalVariable(name: "ret", scope: !4497, file: !3, line: 132, type: !296)
!4545 = !DILocation(line: 132, column: 6, scope: !4497)
!4546 = !DILocation(line: 134, column: 14, scope: !4497)
!4547 = !DILocation(line: 134, column: 17, scope: !4497)
!4548 = !DILocation(line: 134, column: 2, scope: !4497)
!4549 = !DILabel(scope: !4497, name: "again", file: !3, line: 135)
!4550 = !DILocation(line: 135, column: 1, scope: !4497)
!4551 = !DILocation(line: 136, column: 2, scope: !4497)
!4552 = !DILocation(line: 136, column: 21, scope: !4497)
!4553 = !DILocation(line: 136, column: 24, scope: !4497)
!4554 = !DILocation(line: 136, column: 9, scope: !4497)
!4555 = !DILocation(line: 137, column: 17, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 136, column: 39)
!4557 = !DILocation(line: 137, column: 20, scope: !4556)
!4558 = !DILocation(line: 137, column: 3, scope: !4556)
!4559 = !DILocation(line: 138, column: 7, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 138, column: 7)
!4561 = !DILocation(line: 138, column: 13, scope: !4560)
!4562 = !DILocation(line: 138, column: 21, scope: !4560)
!4563 = !DILocation(line: 138, column: 7, scope: !4556)
!4564 = !DILocation(line: 139, column: 4, scope: !4560)
!4565 = !DILocalVariable(name: "__ret", scope: !4566, file: !3, line: 141, type: !296)
!4566 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 141, column: 9)
!4567 = !DILocation(line: 141, column: 9, scope: !4566)
!4568 = !DILocation(line: 141, column: 9, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 141, column: 9)
!4570 = !DILocation(line: 141, column: 9, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4569, file: !3, line: 141, column: 9)
!4572 = !DILocation(line: 141, column: 9, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 141, column: 9)
!4574 = !DILocalVariable(name: "__wq_entry", scope: !4575, file: !3, line: 141, type: !770)
!4575 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 141, column: 9)
!4576 = !DILocation(line: 141, column: 9, scope: !4575)
!4577 = !DILocalVariable(name: "__ret", scope: !4575, file: !3, line: 141, type: !114)
!4578 = !DILocalVariable(name: "__int", scope: !4579, file: !3, line: 141, type: !114)
!4579 = distinct !DILexicalBlock(scope: !4580, file: !3, line: 141, column: 9)
!4580 = distinct !DILexicalBlock(scope: !4581, file: !3, line: 141, column: 9)
!4581 = distinct !DILexicalBlock(scope: !4575, file: !3, line: 141, column: 9)
!4582 = !DILocation(line: 141, column: 9, scope: !4579)
!4583 = !DILocation(line: 141, column: 9, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 141, column: 9)
!4585 = !DILocation(line: 141, column: 9, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4579, file: !3, line: 141, column: 9)
!4587 = !DILocation(line: 141, column: 9, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4586, file: !3, line: 141, column: 9)
!4589 = !DILocation(line: 141, column: 9, scope: !4580)
!4590 = distinct !{!4590, !4591, !4591}
!4591 = !DILocation(line: 141, column: 9, scope: !4581)
!4592 = !DILabel(scope: !4575, name: "__out", file: !3, line: 141)
!4593 = !DILocation(line: 141, column: 7, scope: !4556)
!4594 = !DILocation(line: 143, column: 7, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 143, column: 7)
!4596 = !DILocation(line: 143, column: 7, scope: !4556)
!4597 = !DILocation(line: 144, column: 11, scope: !4595)
!4598 = !DILocation(line: 144, column: 4, scope: !4595)
!4599 = !DILocation(line: 145, column: 15, scope: !4556)
!4600 = !DILocation(line: 145, column: 18, scope: !4556)
!4601 = !DILocation(line: 145, column: 3, scope: !4556)
!4602 = distinct !{!4602, !4551, !4603}
!4603 = !DILocation(line: 146, column: 2, scope: !4497)
!4604 = !DILocalVariable(name: "__mptr", scope: !4605, file: !3, line: 148, type: !185)
!4605 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 148, column: 7)
!4606 = !DILocation(line: 148, column: 7, scope: !4605)
!4607 = !DILocation(line: 148, column: 7, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4605, file: !3, line: 148, column: 7)
!4609 = !DILocation(line: 148, column: 5, scope: !4497)
!4610 = !DILocation(line: 149, column: 4, scope: !4497)
!4611 = !DILocation(line: 150, column: 2, scope: !4497)
!4612 = !DILocation(line: 150, column: 9, scope: !4497)
!4613 = !DILocation(line: 150, column: 13, scope: !4497)
!4614 = !DILocation(line: 150, column: 11, scope: !4497)
!4615 = !DILocalVariable(name: "sz", scope: !4511, file: !3, line: 151, type: !7)
!4616 = !DILocation(line: 151, column: 12, scope: !4511)
!4617 = !DILocalVariable(name: "__UNIQUE_ID___x242", scope: !4618, file: !3, line: 151, type: !7)
!4618 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 151, column: 17)
!4619 = !DILocation(line: 151, column: 17, scope: !4618)
!4620 = !DILocalVariable(name: "__UNIQUE_ID___y243", scope: !4618, file: !3, line: 151, type: !7)
!4621 = !DILocation(line: 153, column: 22, scope: !4511)
!4622 = !DILocation(line: 153, column: 29, scope: !4511)
!4623 = !DILocation(line: 153, column: 27, scope: !4511)
!4624 = !DILocation(line: 153, column: 33, scope: !4511)
!4625 = !DILocation(line: 153, column: 37, scope: !4511)
!4626 = !DILocation(line: 153, column: 41, scope: !4511)
!4627 = !DILocation(line: 153, column: 45, scope: !4511)
!4628 = !DILocation(line: 153, column: 52, scope: !4511)
!4629 = !DILocation(line: 199, column: 6, scope: !4505, inlinedAt: !4510)
!4630 = !DILocation(line: 141, column: 6, scope: !4631, inlinedAt: !4504)
!4631 = distinct !DILexicalBlock(scope: !4499, file: !4500, line: 141, column: 6)
!4632 = !DILocation(line: 0, scope: !4631, inlinedAt: !4504)
!4633 = !DILocation(line: 141, column: 6, scope: !4499, inlinedAt: !4504)
!4634 = !DILocation(line: 142, column: 29, scope: !4635, inlinedAt: !4504)
!4635 = distinct !DILexicalBlock(scope: !4636, file: !4500, line: 142, column: 7)
!4636 = distinct !DILexicalBlock(scope: !4631, file: !4500, line: 141, column: 39)
!4637 = !DILocation(line: 142, column: 8, scope: !4635, inlinedAt: !4504)
!4638 = !DILocation(line: 142, column: 7, scope: !4636, inlinedAt: !4504)
!4639 = !DILocation(line: 143, column: 18, scope: !4635, inlinedAt: !4504)
!4640 = !DILocation(line: 143, column: 22, scope: !4635, inlinedAt: !4504)
!4641 = !DILocation(line: 143, column: 4, scope: !4635, inlinedAt: !4504)
!4642 = !DILocation(line: 144, column: 12, scope: !4643, inlinedAt: !4504)
!4643 = distinct !DILexicalBlock(scope: !4635, file: !4500, line: 144, column: 12)
!4644 = !DILocation(line: 144, column: 12, scope: !4635, inlinedAt: !4504)
!4645 = !DILocation(line: 145, column: 4, scope: !4643, inlinedAt: !4504)
!4646 = !DILocation(line: 147, column: 4, scope: !4643, inlinedAt: !4504)
!4647 = !DILocation(line: 148, column: 3, scope: !4636, inlinedAt: !4504)
!4648 = !DILocation(line: 150, column: 6, scope: !4649, inlinedAt: !4504)
!4649 = distinct !DILexicalBlock(scope: !4519, file: !4500, line: 150, column: 6)
!4650 = !DILocation(line: 150, column: 6, scope: !4651, inlinedAt: !4504)
!4651 = distinct !DILexicalBlock(scope: !4652, file: !4500, line: 150, column: 6)
!4652 = distinct !DILexicalBlock(scope: !4649, file: !4500, line: 150, column: 6)
!4653 = !{i32 -2145784665, i32 -2145784636, i32 -2145784590, i32 -2145784532, i32 -2145784478, i32 -2145784424, i32 -2145784369, i32 -2145784338}
!4654 = !DILocation(line: 150, column: 6, scope: !4655, inlinedAt: !4504)
!4655 = distinct !DILexicalBlock(scope: !4652, file: !4500, line: 150, column: 6)
!4656 = !{i32 -2145783918, i32 -2145783911, i32 -2145783859, i32 -2145783828, i32 -2145783798}
!4657 = !DILocation(line: 150, column: 6, scope: !4652, inlinedAt: !4504)
!4658 = !DILocation(line: 150, column: 6, scope: !4520, inlinedAt: !4504)
!4659 = !DILocation(line: 150, column: 6, scope: !4499, inlinedAt: !4504)
!4660 = !DILocation(line: 151, column: 3, scope: !4520, inlinedAt: !4504)
!4661 = !DILocation(line: 152, column: 20, scope: !4499, inlinedAt: !4504)
!4662 = !DILocation(line: 152, column: 26, scope: !4499, inlinedAt: !4504)
!4663 = !DILocation(line: 152, column: 33, scope: !4499, inlinedAt: !4504)
!4664 = !DILocation(line: 152, column: 2, scope: !4499, inlinedAt: !4504)
!4665 = !DILocation(line: 153, column: 2, scope: !4499, inlinedAt: !4504)
!4666 = !DILocation(line: 154, column: 1, scope: !4499, inlinedAt: !4504)
!4667 = !DILocation(line: 199, column: 6, scope: !4507, inlinedAt: !4510)
!4668 = !DILocation(line: 200, column: 21, scope: !4505, inlinedAt: !4510)
!4669 = !DILocation(line: 200, column: 25, scope: !4505, inlinedAt: !4510)
!4670 = !DILocation(line: 200, column: 31, scope: !4505, inlinedAt: !4510)
!4671 = !DILocation(line: 200, column: 7, scope: !4505, inlinedAt: !4510)
!4672 = !DILocation(line: 200, column: 5, scope: !4505, inlinedAt: !4510)
!4673 = !DILocation(line: 200, column: 3, scope: !4505, inlinedAt: !4510)
!4674 = !DILocation(line: 201, column: 9, scope: !4507, inlinedAt: !4510)
!4675 = !DILocation(line: 153, column: 9, scope: !4511)
!4676 = !DILocation(line: 153, column: 7, scope: !4511)
!4677 = !DILocation(line: 155, column: 8, scope: !4511)
!4678 = !DILocation(line: 155, column: 13, scope: !4511)
!4679 = !DILocation(line: 155, column: 11, scope: !4511)
!4680 = !DILocation(line: 155, column: 5, scope: !4511)
!4681 = !DILocation(line: 156, column: 15, scope: !4511)
!4682 = !DILocation(line: 156, column: 20, scope: !4511)
!4683 = !DILocation(line: 156, column: 18, scope: !4511)
!4684 = !DILocation(line: 156, column: 3, scope: !4511)
!4685 = !DILocation(line: 156, column: 7, scope: !4511)
!4686 = !DILocation(line: 156, column: 12, scope: !4511)
!4687 = !DILocation(line: 158, column: 7, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 158, column: 7)
!4689 = !DILocation(line: 158, column: 11, scope: !4688)
!4690 = !DILocation(line: 158, column: 7, scope: !4511)
!4691 = !DILocation(line: 159, column: 8, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4693, file: !3, line: 159, column: 8)
!4693 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 158, column: 17)
!4694 = !DILocation(line: 159, column: 10, scope: !4692)
!4695 = !DILocation(line: 159, column: 8, scope: !4693)
!4696 = !DILocation(line: 160, column: 7, scope: !4692)
!4697 = !DILocation(line: 160, column: 5, scope: !4692)
!4698 = !DILocation(line: 161, column: 4, scope: !4693)
!4699 = !DILocation(line: 165, column: 7, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4511, file: !3, line: 165, column: 7)
!4701 = !DILocation(line: 165, column: 11, scope: !4700)
!4702 = !DILocation(line: 165, column: 19, scope: !4700)
!4703 = !DILocation(line: 165, column: 23, scope: !4700)
!4704 = !DILocation(line: 165, column: 16, scope: !4700)
!4705 = !DILocation(line: 165, column: 7, scope: !4511)
!4706 = !DILocation(line: 166, column: 14, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 165, column: 28)
!4708 = !DILocation(line: 166, column: 18, scope: !4707)
!4709 = !DILocation(line: 166, column: 4, scope: !4707)
!4710 = !DILocation(line: 167, column: 10, scope: !4707)
!4711 = !DILocation(line: 167, column: 4, scope: !4707)
!4712 = !DILocation(line: 168, column: 20, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4707, file: !3, line: 168, column: 8)
!4714 = !DILocation(line: 168, column: 23, scope: !4713)
!4715 = !DILocation(line: 168, column: 8, scope: !4713)
!4716 = !DILocation(line: 168, column: 8, scope: !4707)
!4717 = !DILocation(line: 169, column: 5, scope: !4713)
!4718 = !DILocalVariable(name: "__mptr", scope: !4719, file: !3, line: 170, type: !185)
!4719 = distinct !DILexicalBlock(scope: !4707, file: !3, line: 170, column: 9)
!4720 = !DILocation(line: 170, column: 9, scope: !4719)
!4721 = !DILocation(line: 170, column: 9, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 170, column: 9)
!4723 = !DILocation(line: 170, column: 7, scope: !4707)
!4724 = !DILocation(line: 172, column: 3, scope: !4707)
!4725 = distinct !{!4725, !4611, !4726}
!4726 = !DILocation(line: 173, column: 2, scope: !4497)
!4727 = !DILocation(line: 174, column: 6, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4497, file: !3, line: 174, column: 6)
!4729 = !DILocation(line: 174, column: 8, scope: !4728)
!4730 = !DILocation(line: 174, column: 6, scope: !4497)
!4731 = !DILocation(line: 175, column: 3, scope: !4728)
!4732 = !DILocation(line: 174, column: 11, scope: !4728)
!4733 = !DILabel(scope: !4497, name: "out", file: !3, line: 177)
!4734 = !DILocation(line: 177, column: 1, scope: !4497)
!4735 = !DILocation(line: 178, column: 16, scope: !4497)
!4736 = !DILocation(line: 178, column: 19, scope: !4497)
!4737 = !DILocation(line: 178, column: 2, scope: !4497)
!4738 = !DILocation(line: 179, column: 9, scope: !4497)
!4739 = !DILocation(line: 179, column: 2, scope: !4497)
!4740 = !DILocation(line: 180, column: 1, scope: !4497)
!4741 = distinct !DISubprogram(name: "xenbus_file_write", scope: !3, file: !3, line: 550, type: !736, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4742 = !DILocation(line: 138, column: 29, scope: !4499, inlinedAt: !4743)
!4743 = distinct !DILocation(line: 191, column: 6, scope: !4744, inlinedAt: !4746)
!4744 = distinct !DILexicalBlock(scope: !4745, file: !4506, line: 191, column: 6)
!4745 = distinct !DISubprogram(name: "copy_from_user", scope: !4506, file: !4506, line: 189, type: !4508, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4746 = distinct !DILocation(line: 588, column: 8, scope: !4741)
!4747 = !DILocation(line: 138, column: 42, scope: !4499, inlinedAt: !4743)
!4748 = !DILocation(line: 138, column: 54, scope: !4499, inlinedAt: !4743)
!4749 = !DILocation(line: 140, column: 6, scope: !4499, inlinedAt: !4743)
!4750 = !DILocation(line: 150, column: 6, scope: !4519, inlinedAt: !4743)
!4751 = !DILocalVariable(name: "to", arg: 1, scope: !4745, file: !4506, line: 189, type: !185)
!4752 = !DILocation(line: 189, column: 22, scope: !4745, inlinedAt: !4746)
!4753 = !DILocalVariable(name: "from", arg: 2, scope: !4745, file: !4506, line: 189, type: !3326)
!4754 = !DILocation(line: 189, column: 45, scope: !4745, inlinedAt: !4746)
!4755 = !DILocalVariable(name: "n", arg: 3, scope: !4745, file: !4506, line: 189, type: !329)
!4756 = !DILocation(line: 189, column: 65, scope: !4745, inlinedAt: !4746)
!4757 = !DILocalVariable(name: "filp", arg: 1, scope: !4741, file: !3, line: 550, type: !685)
!4758 = !DILocation(line: 550, column: 47, scope: !4741)
!4759 = !DILocalVariable(name: "ubuf", arg: 2, scope: !4741, file: !3, line: 551, type: !317)
!4760 = !DILocation(line: 551, column: 24, scope: !4741)
!4761 = !DILocalVariable(name: "len", arg: 3, scope: !4741, file: !3, line: 552, type: !730)
!4762 = !DILocation(line: 552, column: 12, scope: !4741)
!4763 = !DILocalVariable(name: "ppos", arg: 4, scope: !4741, file: !3, line: 552, type: !733)
!4764 = !DILocation(line: 552, column: 25, scope: !4741)
!4765 = !DILocalVariable(name: "u", scope: !4741, file: !3, line: 554, type: !222)
!4766 = !DILocation(line: 554, column: 27, scope: !4741)
!4767 = !DILocation(line: 554, column: 31, scope: !4741)
!4768 = !DILocation(line: 554, column: 37, scope: !4741)
!4769 = !DILocalVariable(name: "msg_type", scope: !4741, file: !3, line: 555, type: !266)
!4770 = !DILocation(line: 555, column: 11, scope: !4741)
!4771 = !DILocalVariable(name: "rc", scope: !4741, file: !3, line: 556, type: !296)
!4772 = !DILocation(line: 556, column: 6, scope: !4741)
!4773 = !DILocation(line: 556, column: 11, scope: !4741)
!4774 = !DILocalVariable(name: "ret", scope: !4741, file: !3, line: 557, type: !296)
!4775 = !DILocation(line: 557, column: 6, scope: !4741)
!4776 = !DILocation(line: 574, column: 14, scope: !4741)
!4777 = !DILocation(line: 574, column: 17, scope: !4741)
!4778 = !DILocation(line: 574, column: 2, scope: !4741)
!4779 = !DILocation(line: 577, column: 6, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 577, column: 6)
!4781 = !DILocation(line: 577, column: 10, scope: !4780)
!4782 = !DILocation(line: 577, column: 6, scope: !4741)
!4783 = !DILocation(line: 578, column: 3, scope: !4780)
!4784 = !DILocation(line: 581, column: 6, scope: !4785)
!4785 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 581, column: 6)
!4786 = !DILocation(line: 581, column: 34, scope: !4785)
!4787 = !DILocation(line: 581, column: 37, scope: !4785)
!4788 = !DILocation(line: 581, column: 32, scope: !4785)
!4789 = !DILocation(line: 581, column: 10, scope: !4785)
!4790 = !DILocation(line: 581, column: 6, scope: !4741)
!4791 = !DILocation(line: 583, column: 3, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4785, file: !3, line: 581, column: 42)
!4793 = !DILocation(line: 583, column: 6, scope: !4792)
!4794 = !DILocation(line: 583, column: 10, scope: !4792)
!4795 = !DILocation(line: 584, column: 6, scope: !4792)
!4796 = !DILocation(line: 585, column: 3, scope: !4792)
!4797 = !DILocation(line: 588, column: 23, scope: !4741)
!4798 = !DILocation(line: 588, column: 26, scope: !4741)
!4799 = !DILocation(line: 588, column: 28, scope: !4741)
!4800 = !DILocation(line: 588, column: 37, scope: !4741)
!4801 = !DILocation(line: 588, column: 40, scope: !4741)
!4802 = !DILocation(line: 588, column: 35, scope: !4741)
!4803 = !DILocation(line: 588, column: 45, scope: !4741)
!4804 = !DILocation(line: 588, column: 51, scope: !4741)
!4805 = !DILocation(line: 191, column: 6, scope: !4744, inlinedAt: !4746)
!4806 = !DILocation(line: 141, column: 6, scope: !4631, inlinedAt: !4743)
!4807 = !DILocation(line: 0, scope: !4631, inlinedAt: !4743)
!4808 = !DILocation(line: 141, column: 6, scope: !4499, inlinedAt: !4743)
!4809 = !DILocation(line: 142, column: 29, scope: !4635, inlinedAt: !4743)
!4810 = !DILocation(line: 142, column: 8, scope: !4635, inlinedAt: !4743)
!4811 = !DILocation(line: 142, column: 7, scope: !4636, inlinedAt: !4743)
!4812 = !DILocation(line: 143, column: 18, scope: !4635, inlinedAt: !4743)
!4813 = !DILocation(line: 143, column: 22, scope: !4635, inlinedAt: !4743)
!4814 = !DILocation(line: 143, column: 4, scope: !4635, inlinedAt: !4743)
!4815 = !DILocation(line: 144, column: 12, scope: !4643, inlinedAt: !4743)
!4816 = !DILocation(line: 144, column: 12, scope: !4635, inlinedAt: !4743)
!4817 = !DILocation(line: 145, column: 4, scope: !4643, inlinedAt: !4743)
!4818 = !DILocation(line: 147, column: 4, scope: !4643, inlinedAt: !4743)
!4819 = !DILocation(line: 148, column: 3, scope: !4636, inlinedAt: !4743)
!4820 = !DILocation(line: 150, column: 6, scope: !4649, inlinedAt: !4743)
!4821 = !DILocation(line: 150, column: 6, scope: !4651, inlinedAt: !4743)
!4822 = !DILocation(line: 150, column: 6, scope: !4655, inlinedAt: !4743)
!4823 = !DILocation(line: 150, column: 6, scope: !4652, inlinedAt: !4743)
!4824 = !DILocation(line: 150, column: 6, scope: !4520, inlinedAt: !4743)
!4825 = !DILocation(line: 150, column: 6, scope: !4499, inlinedAt: !4743)
!4826 = !DILocation(line: 151, column: 3, scope: !4520, inlinedAt: !4743)
!4827 = !DILocation(line: 152, column: 20, scope: !4499, inlinedAt: !4743)
!4828 = !DILocation(line: 152, column: 26, scope: !4499, inlinedAt: !4743)
!4829 = !DILocation(line: 152, column: 33, scope: !4499, inlinedAt: !4743)
!4830 = !DILocation(line: 152, column: 2, scope: !4499, inlinedAt: !4743)
!4831 = !DILocation(line: 153, column: 2, scope: !4499, inlinedAt: !4743)
!4832 = !DILocation(line: 154, column: 1, scope: !4499, inlinedAt: !4743)
!4833 = !DILocation(line: 191, column: 6, scope: !4745, inlinedAt: !4746)
!4834 = !DILocation(line: 192, column: 23, scope: !4744, inlinedAt: !4746)
!4835 = !DILocation(line: 192, column: 27, scope: !4744, inlinedAt: !4746)
!4836 = !DILocation(line: 192, column: 33, scope: !4744, inlinedAt: !4746)
!4837 = !DILocation(line: 192, column: 7, scope: !4744, inlinedAt: !4746)
!4838 = !DILocation(line: 192, column: 5, scope: !4744, inlinedAt: !4746)
!4839 = !DILocation(line: 192, column: 3, scope: !4744, inlinedAt: !4746)
!4840 = !DILocation(line: 193, column: 9, scope: !4745, inlinedAt: !4746)
!4841 = !DILocation(line: 588, column: 8, scope: !4741)
!4842 = !DILocation(line: 588, column: 6, scope: !4741)
!4843 = !DILocation(line: 590, column: 6, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 590, column: 6)
!4845 = !DILocation(line: 590, column: 10, scope: !4844)
!4846 = !DILocation(line: 590, column: 6, scope: !4741)
!4847 = !DILocation(line: 591, column: 6, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4844, file: !3, line: 590, column: 16)
!4849 = !DILocation(line: 592, column: 3, scope: !4848)
!4850 = !DILocation(line: 596, column: 9, scope: !4741)
!4851 = !DILocation(line: 596, column: 6, scope: !4741)
!4852 = !DILocation(line: 597, column: 7, scope: !4741)
!4853 = !DILocation(line: 597, column: 5, scope: !4741)
!4854 = !DILocation(line: 599, column: 12, scope: !4741)
!4855 = !DILocation(line: 599, column: 2, scope: !4741)
!4856 = !DILocation(line: 599, column: 5, scope: !4741)
!4857 = !DILocation(line: 599, column: 9, scope: !4741)
!4858 = !DILocation(line: 602, column: 6, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 602, column: 6)
!4860 = !DILocation(line: 602, column: 9, scope: !4859)
!4861 = !DILocation(line: 602, column: 13, scope: !4859)
!4862 = !DILocation(line: 602, column: 6, scope: !4741)
!4863 = !DILocation(line: 603, column: 3, scope: !4859)
!4864 = !DILocation(line: 607, column: 26, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 607, column: 6)
!4866 = !DILocation(line: 607, column: 29, scope: !4865)
!4867 = !DILocation(line: 607, column: 31, scope: !4865)
!4868 = !DILocation(line: 607, column: 35, scope: !4865)
!4869 = !DILocation(line: 607, column: 24, scope: !4865)
!4870 = !DILocation(line: 607, column: 40, scope: !4865)
!4871 = !DILocation(line: 607, column: 6, scope: !4741)
!4872 = !DILocation(line: 608, column: 6, scope: !4873)
!4873 = distinct !DILexicalBlock(scope: !4865, file: !3, line: 607, column: 63)
!4874 = !DILocation(line: 609, column: 3, scope: !4873)
!4875 = !DILocation(line: 609, column: 6, scope: !4873)
!4876 = !DILocation(line: 609, column: 10, scope: !4873)
!4877 = !DILocation(line: 610, column: 3, scope: !4873)
!4878 = !DILocation(line: 613, column: 6, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 613, column: 6)
!4880 = !DILocation(line: 613, column: 9, scope: !4879)
!4881 = !DILocation(line: 613, column: 35, scope: !4879)
!4882 = !DILocation(line: 613, column: 38, scope: !4879)
!4883 = !DILocation(line: 613, column: 40, scope: !4879)
!4884 = !DILocation(line: 613, column: 44, scope: !4879)
!4885 = !DILocation(line: 613, column: 33, scope: !4879)
!4886 = !DILocation(line: 613, column: 13, scope: !4879)
!4887 = !DILocation(line: 613, column: 6, scope: !4741)
!4888 = !DILocation(line: 614, column: 3, scope: !4879)
!4889 = !DILocation(line: 620, column: 12, scope: !4741)
!4890 = !DILocation(line: 620, column: 15, scope: !4741)
!4891 = !DILocation(line: 620, column: 2, scope: !4741)
!4892 = !DILocation(line: 622, column: 13, scope: !4741)
!4893 = !DILocation(line: 622, column: 16, scope: !4741)
!4894 = !DILocation(line: 622, column: 18, scope: !4741)
!4895 = !DILocation(line: 622, column: 22, scope: !4741)
!4896 = !DILocation(line: 622, column: 11, scope: !4741)
!4897 = !DILocation(line: 624, column: 10, scope: !4741)
!4898 = !DILocation(line: 624, column: 2, scope: !4741)
!4899 = !DILocation(line: 628, column: 28, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 624, column: 20)
!4901 = !DILocation(line: 628, column: 38, scope: !4900)
!4902 = !DILocation(line: 628, column: 9, scope: !4900)
!4903 = !DILocation(line: 628, column: 7, scope: !4900)
!4904 = !DILocation(line: 629, column: 3, scope: !4900)
!4905 = !DILocation(line: 633, column: 34, scope: !4900)
!4906 = !DILocation(line: 633, column: 44, scope: !4900)
!4907 = !DILocation(line: 633, column: 9, scope: !4900)
!4908 = !DILocation(line: 633, column: 7, scope: !4900)
!4909 = !DILocation(line: 634, column: 3, scope: !4900)
!4910 = !DILocation(line: 636, column: 6, scope: !4911)
!4911 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 636, column: 6)
!4912 = !DILocation(line: 636, column: 10, scope: !4911)
!4913 = !DILocation(line: 636, column: 6, scope: !4741)
!4914 = !DILocation(line: 637, column: 8, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4911, file: !3, line: 636, column: 16)
!4916 = !DILocation(line: 637, column: 6, scope: !4915)
!4917 = !DILocation(line: 638, column: 13, scope: !4915)
!4918 = !DILocation(line: 638, column: 16, scope: !4915)
!4919 = !DILocation(line: 638, column: 3, scope: !4915)
!4920 = !DILocation(line: 639, column: 2, scope: !4915)
!4921 = !DILocation(line: 642, column: 2, scope: !4741)
!4922 = !DILocation(line: 642, column: 5, scope: !4741)
!4923 = !DILocation(line: 642, column: 9, scope: !4741)
!4924 = !DILabel(scope: !4741, name: "out", file: !3, line: 644)
!4925 = !DILocation(line: 644, column: 2, scope: !4741)
!4926 = !DILocation(line: 645, column: 16, scope: !4741)
!4927 = !DILocation(line: 645, column: 19, scope: !4741)
!4928 = !DILocation(line: 645, column: 2, scope: !4741)
!4929 = !DILocation(line: 646, column: 9, scope: !4741)
!4930 = !DILocation(line: 646, column: 2, scope: !4741)
!4931 = distinct !DISubprogram(name: "xenbus_file_poll", scope: !3, file: !3, line: 687, type: !4932, scopeLine: 688, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!327, !685, !4934}
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !849, line: 46, baseType: !848)
!4936 = !DILocalVariable(name: "file", arg: 1, scope: !4931, file: !3, line: 687, type: !685)
!4937 = !DILocation(line: 687, column: 47, scope: !4931)
!4938 = !DILocalVariable(name: "wait", arg: 2, scope: !4931, file: !3, line: 687, type: !4934)
!4939 = !DILocation(line: 687, column: 65, scope: !4931)
!4940 = !DILocalVariable(name: "u", scope: !4931, file: !3, line: 689, type: !222)
!4941 = !DILocation(line: 689, column: 27, scope: !4931)
!4942 = !DILocation(line: 689, column: 31, scope: !4931)
!4943 = !DILocation(line: 689, column: 37, scope: !4931)
!4944 = !DILocation(line: 691, column: 12, scope: !4931)
!4945 = !DILocation(line: 691, column: 19, scope: !4931)
!4946 = !DILocation(line: 691, column: 22, scope: !4931)
!4947 = !DILocation(line: 691, column: 34, scope: !4931)
!4948 = !DILocation(line: 691, column: 2, scope: !4931)
!4949 = !DILocation(line: 692, column: 19, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4931, file: !3, line: 692, column: 6)
!4951 = !DILocation(line: 692, column: 22, scope: !4950)
!4952 = !DILocation(line: 692, column: 7, scope: !4950)
!4953 = !DILocation(line: 692, column: 6, scope: !4931)
!4954 = !DILocation(line: 693, column: 3, scope: !4950)
!4955 = !DILocation(line: 694, column: 2, scope: !4931)
!4956 = !DILocation(line: 695, column: 1, scope: !4931)
!4957 = !DILocalVariable(name: "inode", arg: 1, scope: !339, file: !3, line: 649, type: !342)
!4958 = !DILocation(line: 649, column: 43, scope: !339)
!4959 = !DILocalVariable(name: "filp", arg: 2, scope: !339, file: !3, line: 649, type: !685)
!4960 = !DILocation(line: 649, column: 63, scope: !339)
!4961 = !DILocalVariable(name: "u", scope: !339, file: !3, line: 651, type: !222)
!4962 = !DILocation(line: 651, column: 27, scope: !339)
!4963 = !DILocation(line: 653, column: 6, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !339, file: !3, line: 653, column: 6)
!4965 = !DILocation(line: 653, column: 23, scope: !4964)
!4966 = !DILocation(line: 653, column: 6, scope: !339)
!4967 = !DILocation(line: 654, column: 3, scope: !4964)
!4968 = !DILocation(line: 656, column: 14, scope: !339)
!4969 = !DILocation(line: 656, column: 21, scope: !339)
!4970 = !DILocation(line: 656, column: 2, scope: !339)
!4971 = !DILocation(line: 658, column: 6, scope: !339)
!4972 = !DILocation(line: 658, column: 4, scope: !339)
!4973 = !DILocation(line: 659, column: 6, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !339, file: !3, line: 659, column: 6)
!4975 = !DILocation(line: 659, column: 8, scope: !4974)
!4976 = !DILocation(line: 659, column: 6, scope: !339)
!4977 = !DILocation(line: 660, column: 3, scope: !4974)
!4978 = !DILocation(line: 662, column: 13, scope: !339)
!4979 = !DILocation(line: 662, column: 16, scope: !339)
!4980 = !DILocation(line: 662, column: 2, scope: !339)
!4981 = !DILocation(line: 664, column: 18, scope: !339)
!4982 = !DILocation(line: 664, column: 21, scope: !339)
!4983 = !DILocation(line: 664, column: 2, scope: !339)
!4984 = !DILocation(line: 665, column: 18, scope: !339)
!4985 = !DILocation(line: 665, column: 21, scope: !339)
!4986 = !DILocation(line: 665, column: 2, scope: !339)
!4987 = !DILocation(line: 666, column: 18, scope: !339)
!4988 = !DILocation(line: 666, column: 21, scope: !339)
!4989 = !DILocation(line: 666, column: 2, scope: !339)
!4990 = !DILocation(line: 667, column: 2, scope: !339)
!4991 = !DILocation(line: 667, column: 2, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !339, file: !3, line: 667, column: 2)
!4993 = !DILocation(line: 668, column: 2, scope: !339)
!4994 = !DILocation(line: 668, column: 2, scope: !4995)
!4995 = distinct !DILexicalBlock(scope: !339, file: !3, line: 668, column: 2)
!4996 = !DILocation(line: 670, column: 2, scope: !339)
!4997 = !DILocation(line: 670, column: 2, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !339, file: !3, line: 670, column: 2)
!4999 = !DILocation(line: 671, column: 2, scope: !339)
!5000 = !DILocation(line: 671, column: 2, scope: !5001)
!5001 = distinct !DILexicalBlock(scope: !339, file: !3, line: 671, column: 2)
!5002 = !DILocation(line: 673, column: 23, scope: !339)
!5003 = !DILocation(line: 673, column: 2, scope: !339)
!5004 = !DILocation(line: 673, column: 8, scope: !339)
!5005 = !DILocation(line: 673, column: 21, scope: !339)
!5006 = !DILocation(line: 675, column: 2, scope: !339)
!5007 = !DILocation(line: 676, column: 1, scope: !339)
!5008 = distinct !DISubprogram(name: "xenbus_file_release", scope: !3, file: !3, line: 678, type: !340, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5009 = !DILocalVariable(name: "inode", arg: 1, scope: !5008, file: !3, line: 678, type: !342)
!5010 = !DILocation(line: 678, column: 46, scope: !5008)
!5011 = !DILocalVariable(name: "filp", arg: 2, scope: !5008, file: !3, line: 678, type: !685)
!5012 = !DILocation(line: 678, column: 66, scope: !5008)
!5013 = !DILocalVariable(name: "u", scope: !5008, file: !3, line: 680, type: !222)
!5014 = !DILocation(line: 680, column: 27, scope: !5008)
!5015 = !DILocation(line: 680, column: 31, scope: !5008)
!5016 = !DILocation(line: 680, column: 37, scope: !5008)
!5017 = !DILocation(line: 682, column: 12, scope: !5008)
!5018 = !DILocation(line: 682, column: 15, scope: !5008)
!5019 = !DILocation(line: 682, column: 2, scope: !5008)
!5020 = !DILocation(line: 684, column: 2, scope: !5008)
!5021 = distinct !DISubprogram(name: "xenbus_init", scope: !3, file: !3, line: 713, type: !5022, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{!296}
!5024 = !DILocalVariable(name: "err", scope: !5021, file: !3, line: 715, type: !296)
!5025 = !DILocation(line: 715, column: 6, scope: !5021)
!5026 = !DILocation(line: 717, column: 7, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 717, column: 6)
!5028 = !DILocation(line: 717, column: 6, scope: !5021)
!5029 = !DILocation(line: 718, column: 3, scope: !5027)
!5030 = !DILocation(line: 720, column: 8, scope: !5021)
!5031 = !DILocation(line: 720, column: 6, scope: !5021)
!5032 = !DILocation(line: 721, column: 6, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 721, column: 6)
!5034 = !DILocation(line: 721, column: 6, scope: !5021)
!5035 = !DILocation(line: 722, column: 3, scope: !5033)
!5036 = !DILocation(line: 723, column: 9, scope: !5021)
!5037 = !DILocation(line: 723, column: 2, scope: !5021)
!5038 = !DILocation(line: 724, column: 1, scope: !5021)
!5039 = distinct !DISubprogram(name: "__list_del_entry", scope: !4079, file: !4079, line: 130, type: !4080, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5040 = !DILocalVariable(name: "entry", arg: 1, scope: !5039, file: !4079, line: 130, type: !194)
!5041 = !DILocation(line: 130, column: 55, scope: !5039)
!5042 = !DILocation(line: 132, column: 30, scope: !5043)
!5043 = distinct !DILexicalBlock(scope: !5039, file: !4079, line: 132, column: 6)
!5044 = !DILocation(line: 132, column: 7, scope: !5043)
!5045 = !DILocation(line: 132, column: 6, scope: !5039)
!5046 = !DILocation(line: 133, column: 3, scope: !5043)
!5047 = !DILocation(line: 135, column: 13, scope: !5039)
!5048 = !DILocation(line: 135, column: 20, scope: !5039)
!5049 = !DILocation(line: 135, column: 26, scope: !5039)
!5050 = !DILocation(line: 135, column: 33, scope: !5039)
!5051 = !DILocation(line: 135, column: 2, scope: !5039)
!5052 = !DILocation(line: 136, column: 1, scope: !5039)
!5053 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !4079, file: !4079, line: 51, type: !5054, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!827, !194}
!5056 = !DILocalVariable(name: "entry", arg: 1, scope: !5053, file: !4079, line: 51, type: !194)
!5057 = !DILocation(line: 51, column: 61, scope: !5053)
!5058 = !DILocation(line: 53, column: 2, scope: !5053)
!5059 = distinct !DISubprogram(name: "__list_del", scope: !4079, file: !4079, line: 110, type: !4420, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5060 = !DILocalVariable(name: "prev", arg: 1, scope: !5059, file: !4079, line: 110, type: !194)
!5061 = !DILocation(line: 110, column: 50, scope: !5059)
!5062 = !DILocalVariable(name: "next", arg: 2, scope: !5059, file: !4079, line: 110, type: !194)
!5063 = !DILocation(line: 110, column: 75, scope: !5059)
!5064 = !DILocation(line: 112, column: 15, scope: !5059)
!5065 = !DILocation(line: 112, column: 2, scope: !5059)
!5066 = !DILocation(line: 112, column: 8, scope: !5059)
!5067 = !DILocation(line: 112, column: 13, scope: !5059)
!5068 = !DILocation(line: 113, column: 2, scope: !5059)
!5069 = !DILocation(line: 113, column: 2, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5059, file: !4079, line: 113, column: 2)
!5071 = !DILocation(line: 113, column: 2, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5070, file: !4079, line: 113, column: 2)
!5073 = !DILocation(line: 113, column: 2, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5070, file: !4079, line: 113, column: 2)
!5075 = !DILocation(line: 114, column: 1, scope: !5059)
!5076 = distinct !DISubprogram(name: "list_add_tail", scope: !4079, file: !4079, line: 98, type: !4420, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5077 = !DILocalVariable(name: "new", arg: 1, scope: !5076, file: !4079, line: 98, type: !194)
!5078 = !DILocation(line: 98, column: 52, scope: !5076)
!5079 = !DILocalVariable(name: "head", arg: 2, scope: !5076, file: !4079, line: 98, type: !194)
!5080 = !DILocation(line: 98, column: 75, scope: !5076)
!5081 = !DILocation(line: 100, column: 13, scope: !5076)
!5082 = !DILocation(line: 100, column: 18, scope: !5076)
!5083 = !DILocation(line: 100, column: 24, scope: !5076)
!5084 = !DILocation(line: 100, column: 30, scope: !5076)
!5085 = !DILocation(line: 100, column: 2, scope: !5076)
!5086 = !DILocation(line: 101, column: 1, scope: !5076)
!5087 = distinct !DISubprogram(name: "get_order", scope: !5088, file: !5088, line: 29, type: !5089, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5088 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!5089 = !DISubroutineType(types: !5090)
!5090 = !{!296, !329}
!5091 = !DILocalVariable(name: "x", arg: 1, scope: !5092, file: !5093, line: 366, type: !412)
!5092 = distinct !DISubprogram(name: "fls64", scope: !5093, file: !5093, line: 366, type: !5094, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5093 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!296, !412}
!5096 = !DILocation(line: 366, column: 40, scope: !5092, inlinedAt: !5097)
!5097 = distinct !DILocation(line: 46, column: 9, scope: !5087)
!5098 = !DILocalVariable(name: "bitpos", scope: !5092, file: !5093, line: 368, type: !296)
!5099 = !DILocation(line: 368, column: 6, scope: !5092, inlinedAt: !5097)
!5100 = !DILocalVariable(name: "size", arg: 1, scope: !5087, file: !5088, line: 29, type: !329)
!5101 = !DILocation(line: 29, column: 63, scope: !5087)
!5102 = !DILocation(line: 31, column: 27, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5087, file: !5088, line: 31, column: 6)
!5104 = !DILocation(line: 31, column: 6, scope: !5103)
!5105 = !DILocation(line: 31, column: 6, scope: !5087)
!5106 = !DILocation(line: 32, column: 8, scope: !5107)
!5107 = distinct !DILexicalBlock(scope: !5108, file: !5088, line: 32, column: 7)
!5108 = distinct !DILexicalBlock(scope: !5103, file: !5088, line: 31, column: 34)
!5109 = !DILocation(line: 32, column: 7, scope: !5108)
!5110 = !DILocation(line: 33, column: 4, scope: !5107)
!5111 = !DILocation(line: 35, column: 7, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5108, file: !5088, line: 35, column: 7)
!5113 = !DILocation(line: 35, column: 12, scope: !5112)
!5114 = !DILocation(line: 35, column: 7, scope: !5108)
!5115 = !DILocation(line: 36, column: 4, scope: !5112)
!5116 = !DILocation(line: 38, column: 10, scope: !5108)
!5117 = !DILocation(line: 38, column: 28, scope: !5108)
!5118 = !DILocation(line: 38, column: 41, scope: !5108)
!5119 = !DILocation(line: 38, column: 3, scope: !5108)
!5120 = !DILocation(line: 41, column: 6, scope: !5087)
!5121 = !DILocation(line: 42, column: 7, scope: !5087)
!5122 = !DILocation(line: 46, column: 15, scope: !5087)
!5123 = !DILocation(line: 374, column: 2, scope: !5092, inlinedAt: !5097)
!5124 = !DILocation(line: 376, column: 14, scope: !5092, inlinedAt: !5097)
!5125 = !{i32 256115}
!5126 = !DILocation(line: 377, column: 9, scope: !5092, inlinedAt: !5097)
!5127 = !DILocation(line: 377, column: 16, scope: !5092, inlinedAt: !5097)
!5128 = !DILocation(line: 46, column: 2, scope: !5087)
!5129 = !DILocation(line: 48, column: 1, scope: !5087)
!5130 = distinct !DISubprogram(name: "__ilog2_u64", scope: !5131, file: !5131, line: 30, type: !5132, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5131 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!5132 = !DISubroutineType(types: !5133)
!5133 = !{!296, !411}
!5134 = !DILocation(line: 366, column: 40, scope: !5092, inlinedAt: !5135)
!5135 = distinct !DILocation(line: 32, column: 9, scope: !5130)
!5136 = !DILocation(line: 368, column: 6, scope: !5092, inlinedAt: !5135)
!5137 = !DILocalVariable(name: "n", arg: 1, scope: !5130, file: !5131, line: 30, type: !411)
!5138 = !DILocation(line: 30, column: 21, scope: !5130)
!5139 = !DILocation(line: 32, column: 15, scope: !5130)
!5140 = !DILocation(line: 374, column: 2, scope: !5092, inlinedAt: !5135)
!5141 = !DILocation(line: 376, column: 14, scope: !5092, inlinedAt: !5135)
!5142 = !DILocation(line: 377, column: 9, scope: !5092, inlinedAt: !5135)
!5143 = !DILocation(line: 377, column: 16, scope: !5092, inlinedAt: !5135)
!5144 = !DILocation(line: 32, column: 18, scope: !5130)
!5145 = !DILocation(line: 32, column: 2, scope: !5130)
!5146 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !5147, file: !5147, line: 137, type: !5148, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5147 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!5148 = !DISubroutineType(types: !5149)
!5149 = !{!185, !1713, !3326, !730, !208}
!5150 = !DILocalVariable(name: "s", arg: 1, scope: !5146, file: !5147, line: 137, type: !1713)
!5151 = !DILocation(line: 137, column: 54, scope: !5146)
!5152 = !DILocalVariable(name: "object", arg: 2, scope: !5146, file: !5147, line: 137, type: !3326)
!5153 = !DILocation(line: 137, column: 69, scope: !5146)
!5154 = !DILocalVariable(name: "size", arg: 3, scope: !5146, file: !5147, line: 138, type: !730)
!5155 = !DILocation(line: 138, column: 12, scope: !5146)
!5156 = !DILocalVariable(name: "flags", arg: 4, scope: !5146, file: !5147, line: 138, type: !208)
!5157 = !DILocation(line: 138, column: 24, scope: !5146)
!5158 = !DILocation(line: 140, column: 17, scope: !5146)
!5159 = !DILocation(line: 140, column: 2, scope: !5146)
!5160 = distinct !DISubprogram(name: "__list_add", scope: !4079, file: !4079, line: 63, type: !5161, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{null, !194, !194, !194}
!5163 = !DILocalVariable(name: "new", arg: 1, scope: !5160, file: !4079, line: 63, type: !194)
!5164 = !DILocation(line: 63, column: 49, scope: !5160)
!5165 = !DILocalVariable(name: "prev", arg: 2, scope: !5160, file: !4079, line: 64, type: !194)
!5166 = !DILocation(line: 64, column: 28, scope: !5160)
!5167 = !DILocalVariable(name: "next", arg: 3, scope: !5160, file: !4079, line: 65, type: !194)
!5168 = !DILocation(line: 65, column: 28, scope: !5160)
!5169 = !DILocation(line: 67, column: 24, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5160, file: !4079, line: 67, column: 6)
!5171 = !DILocation(line: 67, column: 29, scope: !5170)
!5172 = !DILocation(line: 67, column: 35, scope: !5170)
!5173 = !DILocation(line: 67, column: 7, scope: !5170)
!5174 = !DILocation(line: 67, column: 6, scope: !5160)
!5175 = !DILocation(line: 68, column: 3, scope: !5170)
!5176 = !DILocation(line: 70, column: 15, scope: !5160)
!5177 = !DILocation(line: 70, column: 2, scope: !5160)
!5178 = !DILocation(line: 70, column: 8, scope: !5160)
!5179 = !DILocation(line: 70, column: 13, scope: !5160)
!5180 = !DILocation(line: 71, column: 14, scope: !5160)
!5181 = !DILocation(line: 71, column: 2, scope: !5160)
!5182 = !DILocation(line: 71, column: 7, scope: !5160)
!5183 = !DILocation(line: 71, column: 12, scope: !5160)
!5184 = !DILocation(line: 72, column: 14, scope: !5160)
!5185 = !DILocation(line: 72, column: 2, scope: !5160)
!5186 = !DILocation(line: 72, column: 7, scope: !5160)
!5187 = !DILocation(line: 72, column: 12, scope: !5160)
!5188 = !DILocation(line: 73, column: 2, scope: !5160)
!5189 = !DILocation(line: 73, column: 2, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5160, file: !4079, line: 73, column: 2)
!5191 = !DILocation(line: 73, column: 2, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5190, file: !4079, line: 73, column: 2)
!5193 = !DILocation(line: 73, column: 2, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5190, file: !4079, line: 73, column: 2)
!5195 = !DILocation(line: 74, column: 1, scope: !5160)
!5196 = distinct !DISubprogram(name: "__list_add_valid", scope: !4079, file: !4079, line: 45, type: !5197, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5197 = !DISubroutineType(types: !5198)
!5198 = !{!827, !194, !194, !194}
!5199 = !DILocalVariable(name: "new", arg: 1, scope: !5196, file: !4079, line: 45, type: !194)
!5200 = !DILocation(line: 45, column: 55, scope: !5196)
!5201 = !DILocalVariable(name: "prev", arg: 2, scope: !5196, file: !4079, line: 46, type: !194)
!5202 = !DILocation(line: 46, column: 23, scope: !5196)
!5203 = !DILocalVariable(name: "next", arg: 3, scope: !5196, file: !4079, line: 47, type: !194)
!5204 = !DILocation(line: 47, column: 23, scope: !5196)
!5205 = !DILocation(line: 49, column: 2, scope: !5196)
!5206 = distinct !DISubprogram(name: "list_empty", scope: !4079, file: !4079, line: 280, type: !5207, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{!296, !5209}
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 64)
!5210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!5211 = !DILocalVariable(name: "head", arg: 1, scope: !5206, file: !4079, line: 280, type: !5209)
!5212 = !DILocation(line: 280, column: 54, scope: !5206)
!5213 = !DILocation(line: 282, column: 9, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5206, file: !4079, line: 282, column: 9)
!5215 = !DILocation(line: 282, column: 9, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5214, file: !4079, line: 282, column: 9)
!5217 = !DILocation(line: 282, column: 34, scope: !5206)
!5218 = !DILocation(line: 282, column: 31, scope: !5206)
!5219 = !DILocation(line: 282, column: 2, scope: !5206)
!5220 = distinct !DISubprogram(name: "__list_splice", scope: !4079, file: !4079, line: 433, type: !5221, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5221 = !DISubroutineType(types: !5222)
!5222 = !{null, !5209, !194, !194}
!5223 = !DILocalVariable(name: "list", arg: 1, scope: !5220, file: !4079, line: 433, type: !5209)
!5224 = !DILocation(line: 433, column: 58, scope: !5220)
!5225 = !DILocalVariable(name: "prev", arg: 2, scope: !5220, file: !4079, line: 434, type: !194)
!5226 = !DILocation(line: 434, column: 24, scope: !5220)
!5227 = !DILocalVariable(name: "next", arg: 3, scope: !5220, file: !4079, line: 435, type: !194)
!5228 = !DILocation(line: 435, column: 24, scope: !5220)
!5229 = !DILocalVariable(name: "first", scope: !5220, file: !4079, line: 437, type: !194)
!5230 = !DILocation(line: 437, column: 20, scope: !5220)
!5231 = !DILocation(line: 437, column: 28, scope: !5220)
!5232 = !DILocation(line: 437, column: 34, scope: !5220)
!5233 = !DILocalVariable(name: "last", scope: !5220, file: !4079, line: 438, type: !194)
!5234 = !DILocation(line: 438, column: 20, scope: !5220)
!5235 = !DILocation(line: 438, column: 27, scope: !5220)
!5236 = !DILocation(line: 438, column: 33, scope: !5220)
!5237 = !DILocation(line: 440, column: 16, scope: !5220)
!5238 = !DILocation(line: 440, column: 2, scope: !5220)
!5239 = !DILocation(line: 440, column: 9, scope: !5220)
!5240 = !DILocation(line: 440, column: 14, scope: !5220)
!5241 = !DILocation(line: 441, column: 15, scope: !5220)
!5242 = !DILocation(line: 441, column: 2, scope: !5220)
!5243 = !DILocation(line: 441, column: 8, scope: !5220)
!5244 = !DILocation(line: 441, column: 13, scope: !5220)
!5245 = !DILocation(line: 443, column: 15, scope: !5220)
!5246 = !DILocation(line: 443, column: 2, scope: !5220)
!5247 = !DILocation(line: 443, column: 8, scope: !5220)
!5248 = !DILocation(line: 443, column: 13, scope: !5220)
!5249 = !DILocation(line: 444, column: 15, scope: !5220)
!5250 = !DILocation(line: 444, column: 2, scope: !5220)
!5251 = !DILocation(line: 444, column: 8, scope: !5220)
!5252 = !DILocation(line: 444, column: 13, scope: !5220)
!5253 = !DILocation(line: 445, column: 1, scope: !5220)
!5254 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !105, file: !105, line: 331, type: !5255, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{!827, !5257}
!5257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!5258 = !DILocalVariable(name: "r", arg: 1, scope: !5254, file: !105, line: 331, type: !5257)
!5259 = !DILocation(line: 331, column: 67, scope: !5254)
!5260 = !DILocation(line: 333, column: 33, scope: !5254)
!5261 = !DILocation(line: 333, column: 9, scope: !5254)
!5262 = !DILocation(line: 333, column: 2, scope: !5254)
!5263 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !105, file: !105, line: 313, type: !5264, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5264 = !DISubroutineType(types: !5265)
!5265 = !{!827, !5257, !603}
!5266 = !DILocalVariable(name: "r", arg: 1, scope: !5263, file: !105, line: 313, type: !5257)
!5267 = !DILocation(line: 313, column: 69, scope: !5263)
!5268 = !DILocalVariable(name: "oldp", arg: 2, scope: !5263, file: !105, line: 313, type: !603)
!5269 = !DILocation(line: 313, column: 77, scope: !5263)
!5270 = !DILocation(line: 315, column: 36, scope: !5263)
!5271 = !DILocation(line: 315, column: 39, scope: !5263)
!5272 = !DILocation(line: 315, column: 9, scope: !5263)
!5273 = !DILocation(line: 315, column: 2, scope: !5263)
!5274 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !105, file: !105, line: 270, type: !5275, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5275 = !DISubroutineType(types: !5276)
!5276 = !{!827, !296, !5257, !603}
!5277 = !DILocalVariable(name: "i", arg: 1, scope: !5278, file: !5279, line: 188, type: !296)
!5278 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !5279, file: !5279, line: 188, type: !5280, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5279 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!5280 = !DISubroutineType(types: !5281)
!5281 = !{!296, !296, !5282}
!5282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!5283 = !DILocation(line: 188, column: 54, scope: !5278, inlinedAt: !5284)
!5284 = distinct !DILocation(line: 221, column: 9, scope: !5285, inlinedAt: !5287)
!5285 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !5286, file: !5286, line: 218, type: !5280, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5286 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5287 = distinct !DILocation(line: 272, column: 12, scope: !5274)
!5288 = !DILocalVariable(name: "v", arg: 2, scope: !5278, file: !5279, line: 188, type: !5282)
!5289 = !DILocation(line: 188, column: 67, scope: !5278, inlinedAt: !5284)
!5290 = !DILocalVariable(name: "__ret", scope: !5291, file: !5279, line: 190, type: !296)
!5291 = distinct !DILexicalBlock(scope: !5278, file: !5279, line: 190, column: 9)
!5292 = !DILocation(line: 190, column: 9, scope: !5291, inlinedAt: !5284)
!5293 = !DILocalVariable(name: "v", arg: 1, scope: !5294, file: !5295, line: 99, type: !5298)
!5294 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !5295, file: !5295, line: 99, type: !5296, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5295 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5296 = !DISubroutineType(types: !5297)
!5297 = !{null, !5298, !730}
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5299, size: 64)
!5299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5300)
!5300 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5301 = !DILocation(line: 99, column: 79, scope: !5294, inlinedAt: !5302)
!5302 = distinct !DILocation(line: 220, column: 2, scope: !5285, inlinedAt: !5287)
!5303 = !DILocalVariable(name: "size", arg: 2, scope: !5294, file: !5295, line: 99, type: !730)
!5304 = !DILocation(line: 99, column: 89, scope: !5294, inlinedAt: !5302)
!5305 = !DILocalVariable(name: "i", arg: 1, scope: !5285, file: !5286, line: 218, type: !296)
!5306 = !DILocation(line: 218, column: 30, scope: !5285, inlinedAt: !5287)
!5307 = !DILocalVariable(name: "v", arg: 2, scope: !5285, file: !5286, line: 218, type: !5282)
!5308 = !DILocation(line: 218, column: 43, scope: !5285, inlinedAt: !5287)
!5309 = !DILocalVariable(name: "i", arg: 1, scope: !5274, file: !105, line: 270, type: !296)
!5310 = !DILocation(line: 270, column: 61, scope: !5274)
!5311 = !DILocalVariable(name: "r", arg: 2, scope: !5274, file: !105, line: 270, type: !5257)
!5312 = !DILocation(line: 270, column: 76, scope: !5274)
!5313 = !DILocalVariable(name: "oldp", arg: 3, scope: !5274, file: !105, line: 270, type: !603)
!5314 = !DILocation(line: 270, column: 84, scope: !5274)
!5315 = !DILocalVariable(name: "old", scope: !5274, file: !105, line: 272, type: !296)
!5316 = !DILocation(line: 272, column: 6, scope: !5274)
!5317 = !DILocation(line: 272, column: 37, scope: !5274)
!5318 = !DILocation(line: 272, column: 41, scope: !5274)
!5319 = !DILocation(line: 272, column: 44, scope: !5274)
!5320 = !DILocation(line: 220, column: 31, scope: !5285, inlinedAt: !5287)
!5321 = !DILocation(line: 101, column: 20, scope: !5294, inlinedAt: !5302)
!5322 = !DILocation(line: 101, column: 23, scope: !5294, inlinedAt: !5302)
!5323 = !DILocation(line: 101, column: 2, scope: !5294, inlinedAt: !5302)
!5324 = !DILocation(line: 102, column: 2, scope: !5294, inlinedAt: !5302)
!5325 = !DILocation(line: 221, column: 39, scope: !5285, inlinedAt: !5287)
!5326 = !DILocation(line: 221, column: 42, scope: !5285, inlinedAt: !5287)
!5327 = !{i32 -2146616729}
!5328 = !DILocation(line: 274, column: 6, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5274, file: !105, line: 274, column: 6)
!5330 = !DILocation(line: 274, column: 6, scope: !5274)
!5331 = !DILocation(line: 275, column: 11, scope: !5329)
!5332 = !DILocation(line: 275, column: 4, scope: !5329)
!5333 = !DILocation(line: 275, column: 9, scope: !5329)
!5334 = !DILocation(line: 275, column: 3, scope: !5329)
!5335 = !DILocation(line: 277, column: 6, scope: !5336)
!5336 = distinct !DILexicalBlock(scope: !5274, file: !105, line: 277, column: 6)
!5337 = !DILocation(line: 277, column: 13, scope: !5336)
!5338 = !DILocation(line: 277, column: 10, scope: !5336)
!5339 = !DILocation(line: 277, column: 6, scope: !5274)
!5340 = !DILocation(line: 278, column: 3, scope: !5341)
!5341 = distinct !DILexicalBlock(scope: !5336, file: !105, line: 277, column: 16)
!5342 = !{i32 -2144229829}
!5343 = !DILocation(line: 279, column: 3, scope: !5341)
!5344 = !DILocation(line: 282, column: 6, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5274, file: !105, line: 282, column: 6)
!5346 = !DILocation(line: 282, column: 6, scope: !5274)
!5347 = !DILocation(line: 283, column: 26, scope: !5345)
!5348 = !DILocation(line: 283, column: 3, scope: !5345)
!5349 = !DILocation(line: 285, column: 2, scope: !5274)
!5350 = !DILocation(line: 286, column: 1, scope: !5274)
!5351 = distinct !DISubprogram(name: "kasan_check_write", scope: !5352, file: !5352, line: 38, type: !5353, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5352 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5353 = !DISubroutineType(types: !5354)
!5354 = !{!827, !5298, !7}
!5355 = !DILocalVariable(name: "p", arg: 1, scope: !5351, file: !5352, line: 38, type: !5298)
!5356 = !DILocation(line: 38, column: 59, scope: !5351)
!5357 = !DILocalVariable(name: "size", arg: 2, scope: !5351, file: !5352, line: 38, type: !7)
!5358 = !DILocation(line: 38, column: 75, scope: !5351)
!5359 = !DILocation(line: 40, column: 2, scope: !5351)
!5360 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5361, file: !5361, line: 178, type: !5362, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5361 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5362 = !DISubroutineType(types: !5363)
!5363 = !{null, !5298, !730, !296}
!5364 = !DILocalVariable(name: "ptr", arg: 1, scope: !5360, file: !5361, line: 178, type: !5298)
!5365 = !DILocation(line: 178, column: 60, scope: !5360)
!5366 = !DILocalVariable(name: "size", arg: 2, scope: !5360, file: !5361, line: 178, type: !730)
!5367 = !DILocation(line: 178, column: 72, scope: !5360)
!5368 = !DILocalVariable(name: "type", arg: 3, scope: !5360, file: !5361, line: 179, type: !296)
!5369 = !DILocation(line: 179, column: 15, scope: !5360)
!5370 = !DILocation(line: 179, column: 23, scope: !5360)
!5371 = distinct !DISubprogram(name: "schedule_work", scope: !113, file: !113, line: 566, type: !5372, scopeLine: 567, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5372 = !DISubroutineType(types: !5373)
!5373 = !{!827, !307}
!5374 = !DILocalVariable(name: "work", arg: 1, scope: !5371, file: !113, line: 566, type: !307)
!5375 = !DILocation(line: 566, column: 54, scope: !5371)
!5376 = !DILocation(line: 568, column: 20, scope: !5371)
!5377 = !DILocation(line: 568, column: 31, scope: !5371)
!5378 = !DILocation(line: 568, column: 9, scope: !5371)
!5379 = !DILocation(line: 568, column: 2, scope: !5371)
!5380 = distinct !DISubprogram(name: "queue_work", scope: !113, file: !113, line: 504, type: !5381, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5381 = !DISubroutineType(types: !5382)
!5382 = !{!827, !2928, !307}
!5383 = !DILocalVariable(name: "wq", arg: 1, scope: !5380, file: !113, line: 504, type: !2928)
!5384 = !DILocation(line: 504, column: 56, scope: !5380)
!5385 = !DILocalVariable(name: "work", arg: 2, scope: !5380, file: !113, line: 505, type: !307)
!5386 = !DILocation(line: 505, column: 30, scope: !5380)
!5387 = !DILocation(line: 507, column: 41, scope: !5380)
!5388 = !DILocation(line: 507, column: 45, scope: !5380)
!5389 = !DILocation(line: 507, column: 9, scope: !5380)
!5390 = !DILocation(line: 507, column: 2, scope: !5380)
!5391 = distinct !DISubprogram(name: "copy_overflow", scope: !4500, file: !4500, line: 132, type: !5392, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5392 = !DISubroutineType(types: !5393)
!5393 = !{null, !296, !329}
!5394 = !DILocalVariable(name: "size", arg: 1, scope: !5391, file: !4500, line: 132, type: !296)
!5395 = !DILocation(line: 132, column: 38, scope: !5391)
!5396 = !DILocalVariable(name: "count", arg: 2, scope: !5391, file: !4500, line: 132, type: !329)
!5397 = !DILocation(line: 132, column: 58, scope: !5391)
!5398 = !DILocalVariable(name: "__ret_warn_on", scope: !5399, file: !4500, line: 134, type: !296)
!5399 = distinct !DILexicalBlock(scope: !5391, file: !4500, line: 134, column: 2)
!5400 = !DILocation(line: 134, column: 2, scope: !5399)
!5401 = !DILocation(line: 134, column: 2, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5399, file: !4500, line: 134, column: 2)
!5403 = !DILocation(line: 134, column: 2, scope: !5404)
!5404 = distinct !DILexicalBlock(scope: !5402, file: !4500, line: 134, column: 2)
!5405 = !DILocation(line: 134, column: 2, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5404, file: !4500, line: 134, column: 2)
!5407 = !DILocation(line: 134, column: 2, scope: !5408)
!5408 = distinct !DILexicalBlock(scope: !5404, file: !4500, line: 134, column: 2)
!5409 = !DILocation(line: 134, column: 2, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5408, file: !4500, line: 134, column: 2)
!5411 = !DILocation(line: 134, column: 2, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5408, file: !4500, line: 134, column: 2)
!5413 = !{i32 -2145786489, i32 -2145786460, i32 -2145786414, i32 -2145786356, i32 -2145786302, i32 -2145786248, i32 -2145786193, i32 -2145786162}
!5414 = !DILocation(line: 134, column: 2, scope: !5415)
!5415 = distinct !DILexicalBlock(scope: !5408, file: !4500, line: 134, column: 2)
!5416 = !{i32 -2145785742, i32 -2145785735, i32 -2145785683, i32 -2145785652, i32 -2145785622}
!5417 = !DILocation(line: 134, column: 2, scope: !5418)
!5418 = distinct !DILexicalBlock(scope: !5408, file: !4500, line: 134, column: 2)
!5419 = !DILocation(line: 134, column: 2, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5404, file: !4500, line: 134, column: 2)
!5421 = !DILocation(line: 135, column: 1, scope: !5391)
!5422 = distinct !DISubprogram(name: "check_object_size", scope: !4500, file: !4500, line: 122, type: !5423, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5423 = !DISubroutineType(types: !5424)
!5424 = !{null, !3326, !329, !827}
!5425 = !DILocalVariable(name: "ptr", arg: 1, scope: !5422, file: !4500, line: 122, type: !3326)
!5426 = !DILocation(line: 122, column: 50, scope: !5422)
!5427 = !DILocalVariable(name: "n", arg: 2, scope: !5422, file: !4500, line: 122, type: !329)
!5428 = !DILocation(line: 122, column: 69, scope: !5422)
!5429 = !DILocalVariable(name: "to_user", arg: 3, scope: !5422, file: !4500, line: 123, type: !827)
!5430 = !DILocation(line: 123, column: 15, scope: !5422)
!5431 = !DILocation(line: 124, column: 3, scope: !5422)
!5432 = distinct !DISubprogram(name: "kref_get", scope: !285, file: !285, line: 43, type: !4465, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5433 = !DILocalVariable(name: "kref", arg: 1, scope: !5432, file: !285, line: 43, type: !4463)
!5434 = !DILocation(line: 43, column: 42, scope: !5432)
!5435 = !DILocation(line: 45, column: 16, scope: !5432)
!5436 = !DILocation(line: 45, column: 22, scope: !5432)
!5437 = !DILocation(line: 45, column: 2, scope: !5432)
!5438 = !DILocation(line: 46, column: 1, scope: !5432)
!5439 = distinct !DISubprogram(name: "xenbus_write_watch", scope: !3, file: !3, line: 496, type: !5440, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5440 = !DISubroutineType(types: !5441)
!5441 = !{!296, !7, !222}
!5442 = !DILocalVariable(name: "msg_type", arg: 1, scope: !5439, file: !3, line: 496, type: !7)
!5443 = !DILocation(line: 496, column: 40, scope: !5439)
!5444 = !DILocalVariable(name: "u", arg: 2, scope: !5439, file: !3, line: 496, type: !222)
!5445 = !DILocation(line: 496, column: 75, scope: !5439)
!5446 = !DILocalVariable(name: "watch", scope: !5439, file: !3, line: 498, type: !308)
!5447 = !DILocation(line: 498, column: 24, scope: !5439)
!5448 = !DILocalVariable(name: "path", scope: !5439, file: !3, line: 499, type: !326)
!5449 = !DILocation(line: 499, column: 8, scope: !5439)
!5450 = !DILocalVariable(name: "token", scope: !5439, file: !3, line: 499, type: !326)
!5451 = !DILocation(line: 499, column: 15, scope: !5439)
!5452 = !DILocalVariable(name: "err", scope: !5439, file: !3, line: 500, type: !296)
!5453 = !DILocation(line: 500, column: 6, scope: !5439)
!5454 = !DILocalVariable(name: "rc", scope: !5439, file: !3, line: 500, type: !296)
!5455 = !DILocation(line: 500, column: 11, scope: !5439)
!5456 = !DILocation(line: 502, column: 9, scope: !5439)
!5457 = !DILocation(line: 502, column: 12, scope: !5439)
!5458 = !DILocation(line: 502, column: 14, scope: !5439)
!5459 = !DILocation(line: 502, column: 21, scope: !5439)
!5460 = !DILocation(line: 502, column: 7, scope: !5439)
!5461 = !DILocation(line: 503, column: 17, scope: !5439)
!5462 = !DILocation(line: 503, column: 26, scope: !5439)
!5463 = !DILocation(line: 503, column: 29, scope: !5439)
!5464 = !DILocation(line: 503, column: 31, scope: !5439)
!5465 = !DILocation(line: 503, column: 35, scope: !5439)
!5466 = !DILocation(line: 503, column: 10, scope: !5439)
!5467 = !DILocation(line: 503, column: 8, scope: !5439)
!5468 = !DILocation(line: 504, column: 6, scope: !5469)
!5469 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 504, column: 6)
!5470 = !DILocation(line: 504, column: 12, scope: !5469)
!5471 = !DILocation(line: 504, column: 6, scope: !5439)
!5472 = !DILocation(line: 505, column: 29, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5469, file: !3, line: 504, column: 21)
!5474 = !DILocation(line: 505, column: 8, scope: !5473)
!5475 = !DILocation(line: 505, column: 6, scope: !5473)
!5476 = !DILocation(line: 506, column: 3, scope: !5473)
!5477 = !DILocation(line: 508, column: 7, scope: !5439)
!5478 = !DILocation(line: 509, column: 13, scope: !5479)
!5479 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 509, column: 6)
!5480 = !DILocation(line: 509, column: 23, scope: !5479)
!5481 = !DILocation(line: 509, column: 26, scope: !5479)
!5482 = !DILocation(line: 509, column: 28, scope: !5479)
!5483 = !DILocation(line: 509, column: 32, scope: !5479)
!5484 = !DILocation(line: 509, column: 39, scope: !5479)
!5485 = !DILocation(line: 509, column: 47, scope: !5479)
!5486 = !DILocation(line: 509, column: 45, scope: !5479)
!5487 = !DILocation(line: 509, column: 36, scope: !5479)
!5488 = !DILocation(line: 509, column: 6, scope: !5479)
!5489 = !DILocation(line: 509, column: 54, scope: !5479)
!5490 = !DILocation(line: 509, column: 6, scope: !5439)
!5491 = !DILocation(line: 510, column: 29, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5479, file: !3, line: 509, column: 63)
!5493 = !DILocation(line: 510, column: 8, scope: !5492)
!5494 = !DILocation(line: 510, column: 6, scope: !5492)
!5495 = !DILocation(line: 511, column: 3, scope: !5492)
!5496 = !DILocation(line: 514, column: 6, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5439, file: !3, line: 514, column: 6)
!5498 = !DILocation(line: 514, column: 15, scope: !5497)
!5499 = !DILocation(line: 514, column: 6, scope: !5439)
!5500 = !DILocation(line: 515, column: 31, scope: !5501)
!5501 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 514, column: 28)
!5502 = !DILocation(line: 515, column: 37, scope: !5501)
!5503 = !DILocation(line: 515, column: 11, scope: !5501)
!5504 = !DILocation(line: 515, column: 9, scope: !5501)
!5505 = !DILocation(line: 516, column: 7, scope: !5506)
!5506 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 516, column: 7)
!5507 = !DILocation(line: 516, column: 13, scope: !5506)
!5508 = !DILocation(line: 516, column: 7, scope: !5501)
!5509 = !DILocation(line: 517, column: 7, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5506, file: !3, line: 516, column: 22)
!5511 = !DILocation(line: 518, column: 4, scope: !5510)
!5512 = !DILocation(line: 521, column: 3, scope: !5501)
!5513 = !DILocation(line: 521, column: 10, scope: !5501)
!5514 = !DILocation(line: 521, column: 16, scope: !5501)
!5515 = !DILocation(line: 521, column: 25, scope: !5501)
!5516 = !DILocation(line: 522, column: 21, scope: !5501)
!5517 = !DILocation(line: 522, column: 3, scope: !5501)
!5518 = !DILocation(line: 522, column: 10, scope: !5501)
!5519 = !DILocation(line: 522, column: 19, scope: !5501)
!5520 = !DILocation(line: 524, column: 32, scope: !5501)
!5521 = !DILocation(line: 524, column: 39, scope: !5501)
!5522 = !DILocation(line: 524, column: 9, scope: !5501)
!5523 = !DILocation(line: 524, column: 7, scope: !5501)
!5524 = !DILocation(line: 525, column: 7, scope: !5525)
!5525 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 525, column: 7)
!5526 = !DILocation(line: 525, column: 7, scope: !5501)
!5527 = !DILocation(line: 526, column: 23, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5525, file: !3, line: 525, column: 12)
!5529 = !DILocation(line: 526, column: 4, scope: !5528)
!5530 = !DILocation(line: 527, column: 9, scope: !5528)
!5531 = !DILocation(line: 527, column: 7, scope: !5528)
!5532 = !DILocation(line: 528, column: 4, scope: !5528)
!5533 = !DILocation(line: 530, column: 13, scope: !5501)
!5534 = !DILocation(line: 530, column: 20, scope: !5501)
!5535 = !DILocation(line: 530, column: 27, scope: !5501)
!5536 = !DILocation(line: 530, column: 30, scope: !5501)
!5537 = !DILocation(line: 530, column: 3, scope: !5501)
!5538 = !DILocation(line: 531, column: 2, scope: !5501)
!5539 = !DILocalVariable(name: "__mptr", scope: !5540, file: !3, line: 532, type: !185)
!5540 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 532, column: 3)
!5541 = distinct !DILexicalBlock(scope: !5542, file: !3, line: 532, column: 3)
!5542 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 531, column: 9)
!5543 = !DILocation(line: 532, column: 3, scope: !5540)
!5544 = !DILocation(line: 532, column: 3, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5540, file: !3, line: 532, column: 3)
!5546 = !DILocation(line: 532, column: 3, scope: !5541)
!5547 = !DILocation(line: 532, column: 3, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 532, column: 3)
!5549 = !DILocation(line: 533, column: 16, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5551, file: !3, line: 533, column: 8)
!5551 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 532, column: 49)
!5552 = !DILocation(line: 533, column: 23, scope: !5550)
!5553 = !DILocation(line: 533, column: 30, scope: !5550)
!5554 = !DILocation(line: 533, column: 9, scope: !5550)
!5555 = !DILocation(line: 533, column: 37, scope: !5550)
!5556 = !DILocation(line: 534, column: 16, scope: !5550)
!5557 = !DILocation(line: 534, column: 23, scope: !5550)
!5558 = !DILocation(line: 534, column: 29, scope: !5550)
!5559 = !DILocation(line: 534, column: 35, scope: !5550)
!5560 = !DILocation(line: 534, column: 9, scope: !5550)
!5561 = !DILocation(line: 533, column: 8, scope: !5551)
!5562 = !DILocation(line: 535, column: 30, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5550, file: !3, line: 534, column: 42)
!5564 = !DILocation(line: 535, column: 37, scope: !5563)
!5565 = !DILocation(line: 535, column: 5, scope: !5563)
!5566 = !DILocation(line: 536, column: 15, scope: !5563)
!5567 = !DILocation(line: 536, column: 22, scope: !5563)
!5568 = !DILocation(line: 536, column: 5, scope: !5563)
!5569 = !DILocation(line: 537, column: 24, scope: !5563)
!5570 = !DILocation(line: 537, column: 5, scope: !5563)
!5571 = !DILocation(line: 538, column: 5, scope: !5563)
!5572 = !DILocation(line: 540, column: 3, scope: !5551)
!5573 = !DILocalVariable(name: "__mptr", scope: !5574, file: !3, line: 532, type: !185)
!5574 = distinct !DILexicalBlock(scope: !5548, file: !3, line: 532, column: 3)
!5575 = !DILocation(line: 532, column: 3, scope: !5574)
!5576 = !DILocation(line: 532, column: 3, scope: !5577)
!5577 = distinct !DILexicalBlock(scope: !5574, file: !3, line: 532, column: 3)
!5578 = distinct !{!5578, !5546, !5579}
!5579 = !DILocation(line: 540, column: 3, scope: !5541)
!5580 = !DILocation(line: 544, column: 28, scope: !5439)
!5581 = !DILocation(line: 544, column: 31, scope: !5439)
!5582 = !DILocation(line: 544, column: 7, scope: !5439)
!5583 = !DILocation(line: 544, column: 5, scope: !5439)
!5584 = !DILocation(line: 544, column: 2, scope: !5439)
!5585 = !DILabel(scope: !5439, name: "out", file: !3, line: 546)
!5586 = !DILocation(line: 546, column: 1, scope: !5439)
!5587 = !DILocation(line: 547, column: 9, scope: !5439)
!5588 = !DILocation(line: 547, column: 2, scope: !5439)
!5589 = distinct !DISubprogram(name: "xenbus_write_transaction", scope: !3, file: !3, line: 446, type: !5440, scopeLine: 448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5590 = !DILocalVariable(name: "msg_type", arg: 1, scope: !5589, file: !3, line: 446, type: !7)
!5591 = !DILocation(line: 446, column: 46, scope: !5589)
!5592 = !DILocalVariable(name: "u", arg: 2, scope: !5589, file: !3, line: 447, type: !222)
!5593 = !DILocation(line: 447, column: 34, scope: !5589)
!5594 = !DILocalVariable(name: "rc", scope: !5589, file: !3, line: 449, type: !296)
!5595 = !DILocation(line: 449, column: 6, scope: !5589)
!5596 = !DILocalVariable(name: "trans", scope: !5589, file: !3, line: 450, type: !186)
!5597 = !DILocation(line: 450, column: 36, scope: !5589)
!5598 = !DILocalVariable(name: "msg", scope: !5589, file: !3, line: 454, type: !5599)
!5599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5600, size: 64)
!5600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5589, file: !3, line: 451, size: 128, elements: !5601)
!5601 = !{!5602, !5603}
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !5600, file: !3, line: 452, baseType: !263, size: 128)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !5600, file: !3, line: 453, baseType: !218, offset: 128)
!5604 = !DILocation(line: 454, column: 5, scope: !5589)
!5605 = !DILocation(line: 454, column: 19, scope: !5589)
!5606 = !DILocation(line: 454, column: 22, scope: !5589)
!5607 = !DILocation(line: 454, column: 24, scope: !5589)
!5608 = !DILocation(line: 454, column: 11, scope: !5589)
!5609 = !DILocation(line: 456, column: 6, scope: !5610)
!5610 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 456, column: 6)
!5611 = !DILocation(line: 456, column: 15, scope: !5610)
!5612 = !DILocation(line: 456, column: 6, scope: !5589)
!5613 = !DILocation(line: 457, column: 11, scope: !5614)
!5614 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 456, column: 40)
!5615 = !DILocation(line: 457, column: 9, scope: !5614)
!5616 = !DILocation(line: 458, column: 8, scope: !5617)
!5617 = distinct !DILexicalBlock(scope: !5614, file: !3, line: 458, column: 7)
!5618 = !DILocation(line: 458, column: 7, scope: !5614)
!5619 = !DILocation(line: 459, column: 7, scope: !5620)
!5620 = distinct !DILexicalBlock(scope: !5617, file: !3, line: 458, column: 15)
!5621 = !DILocation(line: 460, column: 4, scope: !5620)
!5622 = !DILocation(line: 462, column: 26, scope: !5614)
!5623 = !DILocation(line: 462, column: 3, scope: !5614)
!5624 = !DILocation(line: 462, column: 10, scope: !5614)
!5625 = !DILocation(line: 462, column: 24, scope: !5614)
!5626 = !DILocation(line: 463, column: 13, scope: !5614)
!5627 = !DILocation(line: 463, column: 20, scope: !5614)
!5628 = !DILocation(line: 463, column: 27, scope: !5614)
!5629 = !DILocation(line: 463, column: 30, scope: !5614)
!5630 = !DILocation(line: 463, column: 3, scope: !5614)
!5631 = !DILocation(line: 464, column: 2, scope: !5614)
!5632 = !DILocation(line: 464, column: 13, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5610, file: !3, line: 464, column: 13)
!5634 = !DILocation(line: 464, column: 18, scope: !5633)
!5635 = !DILocation(line: 464, column: 22, scope: !5633)
!5636 = !DILocation(line: 464, column: 28, scope: !5633)
!5637 = !DILocation(line: 464, column: 33, scope: !5633)
!5638 = !DILocation(line: 465, column: 30, scope: !5633)
!5639 = !DILocation(line: 465, column: 33, scope: !5633)
!5640 = !DILocation(line: 465, column: 38, scope: !5633)
!5641 = !DILocation(line: 465, column: 42, scope: !5633)
!5642 = !DILocation(line: 465, column: 7, scope: !5633)
!5643 = !DILocation(line: 464, column: 13, scope: !5610)
!5644 = !DILocation(line: 466, column: 31, scope: !5633)
!5645 = !DILocation(line: 466, column: 10, scope: !5633)
!5646 = !DILocation(line: 466, column: 3, scope: !5633)
!5647 = !DILocation(line: 467, column: 11, scope: !5648)
!5648 = distinct !DILexicalBlock(scope: !5633, file: !3, line: 467, column: 11)
!5649 = !DILocation(line: 467, column: 20, scope: !5648)
!5650 = !DILocation(line: 467, column: 42, scope: !5648)
!5651 = !DILocation(line: 468, column: 6, scope: !5648)
!5652 = !DILocation(line: 468, column: 11, scope: !5648)
!5653 = !DILocation(line: 468, column: 15, scope: !5648)
!5654 = !DILocation(line: 468, column: 19, scope: !5648)
!5655 = !DILocation(line: 468, column: 24, scope: !5648)
!5656 = !DILocation(line: 469, column: 15, scope: !5648)
!5657 = !DILocation(line: 469, column: 20, scope: !5648)
!5658 = !DILocation(line: 469, column: 8, scope: !5648)
!5659 = !DILocation(line: 469, column: 31, scope: !5648)
!5660 = !DILocation(line: 469, column: 42, scope: !5648)
!5661 = !DILocation(line: 469, column: 47, scope: !5648)
!5662 = !DILocation(line: 469, column: 35, scope: !5648)
!5663 = !DILocation(line: 467, column: 11, scope: !5633)
!5664 = !DILocation(line: 470, column: 31, scope: !5648)
!5665 = !DILocation(line: 470, column: 10, scope: !5648)
!5666 = !DILocation(line: 470, column: 3, scope: !5648)
!5667 = !DILocation(line: 471, column: 11, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5648, file: !3, line: 471, column: 11)
!5669 = !DILocation(line: 471, column: 20, scope: !5668)
!5670 = !DILocation(line: 471, column: 11, scope: !5648)
!5671 = !DILocation(line: 472, column: 34, scope: !5672)
!5672 = distinct !DILexicalBlock(scope: !5668, file: !3, line: 471, column: 43)
!5673 = !DILocation(line: 472, column: 37, scope: !5672)
!5674 = !DILocation(line: 472, column: 42, scope: !5672)
!5675 = !DILocation(line: 472, column: 46, scope: !5672)
!5676 = !DILocation(line: 472, column: 11, scope: !5672)
!5677 = !DILocation(line: 472, column: 9, scope: !5672)
!5678 = !DILocation(line: 473, column: 7, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5672, file: !3, line: 473, column: 7)
!5680 = !DILocation(line: 473, column: 13, scope: !5679)
!5681 = !DILocation(line: 473, column: 16, scope: !5679)
!5682 = !DILocation(line: 473, column: 23, scope: !5679)
!5683 = !DILocation(line: 473, column: 40, scope: !5679)
!5684 = !DILocation(line: 473, column: 37, scope: !5679)
!5685 = !DILocation(line: 473, column: 7, scope: !5672)
!5686 = !DILocation(line: 474, column: 14, scope: !5687)
!5687 = distinct !DILexicalBlock(scope: !5679, file: !3, line: 473, column: 62)
!5688 = !DILocation(line: 474, column: 21, scope: !5687)
!5689 = !DILocation(line: 474, column: 4, scope: !5687)
!5690 = !DILocation(line: 475, column: 10, scope: !5687)
!5691 = !DILocation(line: 475, column: 4, scope: !5687)
!5692 = !DILocation(line: 476, column: 16, scope: !5693)
!5693 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 476, column: 8)
!5694 = !DILocation(line: 476, column: 21, scope: !5693)
!5695 = !DILocation(line: 476, column: 9, scope: !5693)
!5696 = !DILocation(line: 476, column: 8, scope: !5687)
!5697 = !DILocation(line: 477, column: 33, scope: !5693)
!5698 = !DILocation(line: 477, column: 12, scope: !5693)
!5699 = !DILocation(line: 477, column: 5, scope: !5693)
!5700 = !DILocation(line: 480, column: 33, scope: !5693)
!5701 = !DILocation(line: 480, column: 12, scope: !5693)
!5702 = !DILocation(line: 480, column: 5, scope: !5693)
!5703 = !DILocation(line: 484, column: 2, scope: !5672)
!5704 = !DILocation(line: 486, column: 37, scope: !5589)
!5705 = !DILocation(line: 486, column: 42, scope: !5589)
!5706 = !DILocation(line: 486, column: 47, scope: !5589)
!5707 = !DILocation(line: 486, column: 7, scope: !5589)
!5708 = !DILocation(line: 486, column: 5, scope: !5589)
!5709 = !DILocation(line: 487, column: 6, scope: !5710)
!5710 = distinct !DILexicalBlock(scope: !5589, file: !3, line: 487, column: 6)
!5711 = !DILocation(line: 487, column: 9, scope: !5710)
!5712 = !DILocation(line: 487, column: 12, scope: !5710)
!5713 = !DILocation(line: 487, column: 6, scope: !5589)
!5714 = !DILocation(line: 488, column: 13, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5710, file: !3, line: 487, column: 19)
!5716 = !DILocation(line: 488, column: 20, scope: !5715)
!5717 = !DILocation(line: 488, column: 3, scope: !5715)
!5718 = !DILocation(line: 489, column: 9, scope: !5715)
!5719 = !DILocation(line: 489, column: 3, scope: !5715)
!5720 = !DILocation(line: 490, column: 2, scope: !5715)
!5721 = !DILabel(scope: !5589, name: "out", file: !3, line: 492)
!5722 = !DILocation(line: 492, column: 1, scope: !5589)
!5723 = !DILocation(line: 493, column: 9, scope: !5589)
!5724 = !DILocation(line: 493, column: 2, scope: !5589)
!5725 = !DILocation(line: 494, column: 1, scope: !5589)
!5726 = distinct !DISubprogram(name: "refcount_inc", scope: !105, file: !105, line: 265, type: !5727, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5727 = !DISubroutineType(types: !5728)
!5728 = !{null, !5257}
!5729 = !DILocalVariable(name: "r", arg: 1, scope: !5726, file: !105, line: 265, type: !5257)
!5730 = !DILocation(line: 265, column: 45, scope: !5726)
!5731 = !DILocation(line: 267, column: 17, scope: !5726)
!5732 = !DILocation(line: 267, column: 2, scope: !5726)
!5733 = !DILocation(line: 268, column: 1, scope: !5726)
!5734 = distinct !DISubprogram(name: "__refcount_inc", scope: !105, file: !105, line: 248, type: !5735, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5735 = !DISubroutineType(types: !5736)
!5736 = !{null, !5257, !603}
!5737 = !DILocalVariable(name: "r", arg: 1, scope: !5734, file: !105, line: 248, type: !5257)
!5738 = !DILocation(line: 248, column: 47, scope: !5734)
!5739 = !DILocalVariable(name: "oldp", arg: 2, scope: !5734, file: !105, line: 248, type: !603)
!5740 = !DILocation(line: 248, column: 55, scope: !5734)
!5741 = !DILocation(line: 250, column: 20, scope: !5734)
!5742 = !DILocation(line: 250, column: 23, scope: !5734)
!5743 = !DILocation(line: 250, column: 2, scope: !5734)
!5744 = !DILocation(line: 251, column: 1, scope: !5734)
!5745 = distinct !DISubprogram(name: "__refcount_add", scope: !105, file: !105, line: 191, type: !5746, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5746 = !DISubroutineType(types: !5747)
!5747 = !{null, !296, !5257, !603}
!5748 = !DILocalVariable(name: "i", arg: 1, scope: !5749, file: !5279, line: 182, type: !296)
!5749 = distinct !DISubprogram(name: "arch_atomic_fetch_add", scope: !5279, file: !5279, line: 182, type: !5280, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5750 = !DILocation(line: 182, column: 54, scope: !5749, inlinedAt: !5751)
!5751 = distinct !DILocation(line: 143, column: 9, scope: !5752, inlinedAt: !5753)
!5752 = distinct !DISubprogram(name: "atomic_fetch_add_relaxed", scope: !5286, file: !5286, line: 140, type: !5280, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5753 = distinct !DILocation(line: 193, column: 12, scope: !5745)
!5754 = !DILocalVariable(name: "v", arg: 2, scope: !5749, file: !5279, line: 182, type: !5282)
!5755 = !DILocation(line: 182, column: 67, scope: !5749, inlinedAt: !5751)
!5756 = !DILocalVariable(name: "__ret", scope: !5757, file: !5279, line: 184, type: !296)
!5757 = distinct !DILexicalBlock(scope: !5749, file: !5279, line: 184, column: 9)
!5758 = !DILocation(line: 184, column: 9, scope: !5757, inlinedAt: !5751)
!5759 = !DILocation(line: 99, column: 79, scope: !5294, inlinedAt: !5760)
!5760 = distinct !DILocation(line: 142, column: 2, scope: !5752, inlinedAt: !5753)
!5761 = !DILocation(line: 99, column: 89, scope: !5294, inlinedAt: !5760)
!5762 = !DILocalVariable(name: "i", arg: 1, scope: !5752, file: !5286, line: 140, type: !296)
!5763 = !DILocation(line: 140, column: 30, scope: !5752, inlinedAt: !5753)
!5764 = !DILocalVariable(name: "v", arg: 2, scope: !5752, file: !5286, line: 140, type: !5282)
!5765 = !DILocation(line: 140, column: 43, scope: !5752, inlinedAt: !5753)
!5766 = !DILocalVariable(name: "i", arg: 1, scope: !5745, file: !105, line: 191, type: !296)
!5767 = !DILocation(line: 191, column: 39, scope: !5745)
!5768 = !DILocalVariable(name: "r", arg: 2, scope: !5745, file: !105, line: 191, type: !5257)
!5769 = !DILocation(line: 191, column: 54, scope: !5745)
!5770 = !DILocalVariable(name: "oldp", arg: 3, scope: !5745, file: !105, line: 191, type: !603)
!5771 = !DILocation(line: 191, column: 62, scope: !5745)
!5772 = !DILocalVariable(name: "old", scope: !5745, file: !105, line: 193, type: !296)
!5773 = !DILocation(line: 193, column: 6, scope: !5745)
!5774 = !DILocation(line: 193, column: 37, scope: !5745)
!5775 = !DILocation(line: 193, column: 41, scope: !5745)
!5776 = !DILocation(line: 193, column: 44, scope: !5745)
!5777 = !DILocation(line: 142, column: 31, scope: !5752, inlinedAt: !5753)
!5778 = !DILocation(line: 101, column: 20, scope: !5294, inlinedAt: !5760)
!5779 = !DILocation(line: 101, column: 23, scope: !5294, inlinedAt: !5760)
!5780 = !DILocation(line: 101, column: 2, scope: !5294, inlinedAt: !5760)
!5781 = !DILocation(line: 102, column: 2, scope: !5294, inlinedAt: !5760)
!5782 = !DILocation(line: 143, column: 39, scope: !5752, inlinedAt: !5753)
!5783 = !DILocation(line: 143, column: 42, scope: !5752, inlinedAt: !5753)
!5784 = !{i32 -2146618081}
!5785 = !DILocation(line: 195, column: 6, scope: !5786)
!5786 = distinct !DILexicalBlock(scope: !5745, file: !105, line: 195, column: 6)
!5787 = !DILocation(line: 195, column: 6, scope: !5745)
!5788 = !DILocation(line: 196, column: 11, scope: !5786)
!5789 = !DILocation(line: 196, column: 4, scope: !5786)
!5790 = !DILocation(line: 196, column: 9, scope: !5786)
!5791 = !DILocation(line: 196, column: 3, scope: !5786)
!5792 = !DILocation(line: 198, column: 6, scope: !5793)
!5793 = distinct !DILexicalBlock(scope: !5745, file: !105, line: 198, column: 6)
!5794 = !DILocation(line: 198, column: 6, scope: !5745)
!5795 = !DILocation(line: 199, column: 26, scope: !5793)
!5796 = !DILocation(line: 199, column: 3, scope: !5793)
!5797 = !DILocation(line: 200, column: 11, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5793, file: !105, line: 200, column: 11)
!5799 = !DILocation(line: 200, column: 11, scope: !5793)
!5800 = !DILocation(line: 201, column: 26, scope: !5798)
!5801 = !DILocation(line: 201, column: 3, scope: !5798)
!5802 = !DILocation(line: 202, column: 1, scope: !5745)
!5803 = distinct !DISubprogram(name: "xenbus_command_reply", scope: !3, file: !3, line: 419, type: !5804, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5804 = !DISubroutineType(types: !5805)
!5805 = !{!296, !222, !7, !317}
!5806 = !DILocalVariable(name: "u", arg: 1, scope: !5803, file: !3, line: 419, type: !222)
!5807 = !DILocation(line: 419, column: 58, scope: !5803)
!5808 = !DILocalVariable(name: "msg_type", arg: 2, scope: !5803, file: !3, line: 420, type: !7)
!5809 = !DILocation(line: 420, column: 18, scope: !5803)
!5810 = !DILocalVariable(name: "reply", arg: 3, scope: !5803, file: !3, line: 420, type: !317)
!5811 = !DILocation(line: 420, column: 40, scope: !5803)
!5812 = !DILocalVariable(name: "msg", scope: !5803, file: !3, line: 425, type: !5813)
!5813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5803, file: !3, line: 422, size: 256, elements: !5814)
!5814 = !{!5815, !5816}
!5815 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !5813, file: !3, line: 423, baseType: !263, size: 128)
!5816 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !5813, file: !3, line: 424, baseType: !1495, size: 128, offset: 128)
!5817 = !DILocation(line: 425, column: 4, scope: !5803)
!5818 = !DILocalVariable(name: "rc", scope: !5803, file: !3, line: 426, type: !296)
!5819 = !DILocation(line: 426, column: 6, scope: !5803)
!5820 = !DILocation(line: 428, column: 6, scope: !5803)
!5821 = !DILocation(line: 428, column: 12, scope: !5803)
!5822 = !DILocation(line: 428, column: 15, scope: !5803)
!5823 = !DILocation(line: 428, column: 17, scope: !5803)
!5824 = !DILocation(line: 429, column: 17, scope: !5803)
!5825 = !DILocation(line: 429, column: 6, scope: !5803)
!5826 = !DILocation(line: 429, column: 10, scope: !5803)
!5827 = !DILocation(line: 429, column: 15, scope: !5803)
!5828 = !DILocation(line: 430, column: 23, scope: !5803)
!5829 = !DILocation(line: 430, column: 16, scope: !5803)
!5830 = !DILocation(line: 430, column: 30, scope: !5803)
!5831 = !DILocation(line: 430, column: 6, scope: !5803)
!5832 = !DILocation(line: 430, column: 10, scope: !5803)
!5833 = !DILocation(line: 430, column: 14, scope: !5803)
!5834 = !DILocation(line: 431, column: 10, scope: !5835)
!5835 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 431, column: 6)
!5836 = !DILocation(line: 431, column: 14, scope: !5835)
!5837 = !DILocation(line: 431, column: 6, scope: !5835)
!5838 = !DILocation(line: 431, column: 18, scope: !5835)
!5839 = !DILocation(line: 431, column: 6, scope: !5803)
!5840 = !DILocation(line: 432, column: 3, scope: !5835)
!5841 = !DILocation(line: 433, column: 14, scope: !5803)
!5842 = !DILocation(line: 433, column: 2, scope: !5803)
!5843 = !DILocation(line: 433, column: 20, scope: !5803)
!5844 = !DILocation(line: 433, column: 31, scope: !5803)
!5845 = !DILocation(line: 433, column: 35, scope: !5803)
!5846 = !DILocation(line: 433, column: 27, scope: !5803)
!5847 = !DILocation(line: 435, column: 14, scope: !5803)
!5848 = !DILocation(line: 435, column: 17, scope: !5803)
!5849 = !DILocation(line: 435, column: 2, scope: !5803)
!5850 = !DILocation(line: 436, column: 20, scope: !5803)
!5851 = !DILocation(line: 436, column: 23, scope: !5803)
!5852 = !DILocation(line: 436, column: 37, scope: !5803)
!5853 = !DILocation(line: 436, column: 65, scope: !5803)
!5854 = !DILocation(line: 436, column: 69, scope: !5803)
!5855 = !DILocation(line: 436, column: 61, scope: !5803)
!5856 = !DILocation(line: 436, column: 59, scope: !5803)
!5857 = !DILocation(line: 436, column: 7, scope: !5803)
!5858 = !DILocation(line: 436, column: 5, scope: !5803)
!5859 = !DILocation(line: 437, column: 2, scope: !5803)
!5860 = !DILocation(line: 438, column: 16, scope: !5803)
!5861 = !DILocation(line: 438, column: 19, scope: !5803)
!5862 = !DILocation(line: 438, column: 2, scope: !5803)
!5863 = !DILocation(line: 440, column: 7, scope: !5864)
!5864 = distinct !DILexicalBlock(scope: !5803, file: !3, line: 440, column: 6)
!5865 = !DILocation(line: 440, column: 6, scope: !5803)
!5866 = !DILocation(line: 441, column: 13, scope: !5864)
!5867 = !DILocation(line: 441, column: 16, scope: !5864)
!5868 = !DILocation(line: 441, column: 3, scope: !5864)
!5869 = !DILocation(line: 443, column: 9, scope: !5803)
!5870 = !DILocation(line: 443, column: 2, scope: !5803)
!5871 = !DILocation(line: 444, column: 1, scope: !5803)
!5872 = distinct !DISubprogram(name: "alloc_watch_adapter", scope: !3, file: !3, line: 240, type: !5873, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5873 = !DISubroutineType(types: !5874)
!5874 = !{!308, !317, !317}
!5875 = !DILocalVariable(name: "path", arg: 1, scope: !5872, file: !3, line: 240, type: !317)
!5876 = !DILocation(line: 240, column: 62, scope: !5872)
!5877 = !DILocalVariable(name: "token", arg: 2, scope: !5872, file: !3, line: 241, type: !317)
!5878 = !DILocation(line: 241, column: 20, scope: !5872)
!5879 = !DILocalVariable(name: "watch", scope: !5872, file: !3, line: 243, type: !308)
!5880 = !DILocation(line: 243, column: 24, scope: !5872)
!5881 = !DILocation(line: 245, column: 10, scope: !5872)
!5882 = !DILocation(line: 245, column: 8, scope: !5872)
!5883 = !DILocation(line: 246, column: 6, scope: !5884)
!5884 = distinct !DILexicalBlock(scope: !5872, file: !3, line: 246, column: 6)
!5885 = !DILocation(line: 246, column: 12, scope: !5884)
!5886 = !DILocation(line: 246, column: 6, scope: !5872)
!5887 = !DILocation(line: 247, column: 3, scope: !5884)
!5888 = !DILocation(line: 249, column: 30, scope: !5872)
!5889 = !DILocation(line: 249, column: 22, scope: !5872)
!5890 = !DILocation(line: 249, column: 2, scope: !5872)
!5891 = !DILocation(line: 249, column: 9, scope: !5872)
!5892 = !DILocation(line: 249, column: 15, scope: !5872)
!5893 = !DILocation(line: 249, column: 20, scope: !5872)
!5894 = !DILocation(line: 250, column: 6, scope: !5895)
!5895 = distinct !DILexicalBlock(scope: !5872, file: !3, line: 250, column: 6)
!5896 = !DILocation(line: 250, column: 13, scope: !5895)
!5897 = !DILocation(line: 250, column: 19, scope: !5895)
!5898 = !DILocation(line: 250, column: 24, scope: !5895)
!5899 = !DILocation(line: 250, column: 6, scope: !5872)
!5900 = !DILocation(line: 251, column: 3, scope: !5895)
!5901 = !DILocation(line: 253, column: 25, scope: !5872)
!5902 = !DILocation(line: 253, column: 17, scope: !5872)
!5903 = !DILocation(line: 253, column: 2, scope: !5872)
!5904 = !DILocation(line: 253, column: 9, scope: !5872)
!5905 = !DILocation(line: 253, column: 15, scope: !5872)
!5906 = !DILocation(line: 254, column: 6, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5872, file: !3, line: 254, column: 6)
!5908 = !DILocation(line: 254, column: 13, scope: !5907)
!5909 = !DILocation(line: 254, column: 19, scope: !5907)
!5910 = !DILocation(line: 254, column: 6, scope: !5872)
!5911 = !DILocation(line: 255, column: 3, scope: !5907)
!5912 = !DILocation(line: 257, column: 9, scope: !5872)
!5913 = !DILocation(line: 257, column: 2, scope: !5872)
!5914 = !DILabel(scope: !5872, name: "out_free", file: !3, line: 259)
!5915 = !DILocation(line: 259, column: 1, scope: !5872)
!5916 = !DILocation(line: 260, column: 21, scope: !5872)
!5917 = !DILocation(line: 260, column: 2, scope: !5872)
!5918 = !DILabel(scope: !5872, name: "out_fail", file: !3, line: 262)
!5919 = !DILocation(line: 262, column: 1, scope: !5872)
!5920 = !DILocation(line: 263, column: 2, scope: !5872)
!5921 = !DILocation(line: 264, column: 1, scope: !5872)
!5922 = distinct !DISubprogram(name: "watch_fired", scope: !3, file: !3, line: 266, type: !321, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!5923 = !DILocalVariable(name: "watch", arg: 1, scope: !5922, file: !3, line: 266, type: !323)
!5924 = !DILocation(line: 266, column: 46, scope: !5922)
!5925 = !DILocalVariable(name: "path", arg: 2, scope: !5922, file: !3, line: 267, type: !317)
!5926 = !DILocation(line: 267, column: 16, scope: !5922)
!5927 = !DILocalVariable(name: "token", arg: 3, scope: !5922, file: !3, line: 268, type: !317)
!5928 = !DILocation(line: 268, column: 16, scope: !5922)
!5929 = !DILocalVariable(name: "adap", scope: !5922, file: !3, line: 270, type: !308)
!5930 = !DILocation(line: 270, column: 24, scope: !5922)
!5931 = !DILocalVariable(name: "hdr", scope: !5922, file: !3, line: 271, type: !263)
!5932 = !DILocation(line: 271, column: 21, scope: !5922)
!5933 = !DILocalVariable(name: "token_caller", scope: !5922, file: !3, line: 272, type: !317)
!5934 = !DILocation(line: 272, column: 14, scope: !5922)
!5935 = !DILocalVariable(name: "path_len", scope: !5922, file: !3, line: 273, type: !296)
!5936 = !DILocation(line: 273, column: 6, scope: !5922)
!5937 = !DILocalVariable(name: "tok_len", scope: !5922, file: !3, line: 273, type: !296)
!5938 = !DILocation(line: 273, column: 16, scope: !5922)
!5939 = !DILocalVariable(name: "body_len", scope: !5922, file: !3, line: 273, type: !296)
!5940 = !DILocation(line: 273, column: 25, scope: !5922)
!5941 = !DILocalVariable(name: "ret", scope: !5922, file: !3, line: 274, type: !296)
!5942 = !DILocation(line: 274, column: 6, scope: !5922)
!5943 = !DILocalVariable(name: "staging_q", scope: !5922, file: !3, line: 275, type: !190)
!5944 = !DILocation(line: 275, column: 2, scope: !5922)
!5945 = !DILocalVariable(name: "__mptr", scope: !5946, file: !3, line: 277, type: !185)
!5946 = distinct !DILexicalBlock(scope: !5922, file: !3, line: 277, column: 9)
!5947 = !DILocation(line: 277, column: 9, scope: !5946)
!5948 = !DILocation(line: 277, column: 9, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5946, file: !3, line: 277, column: 9)
!5950 = !DILocation(line: 277, column: 7, scope: !5922)
!5951 = !DILocation(line: 279, column: 17, scope: !5922)
!5952 = !DILocation(line: 279, column: 23, scope: !5922)
!5953 = !DILocation(line: 279, column: 15, scope: !5922)
!5954 = !DILocation(line: 281, column: 20, scope: !5922)
!5955 = !DILocation(line: 281, column: 13, scope: !5922)
!5956 = !DILocation(line: 281, column: 26, scope: !5922)
!5957 = !DILocation(line: 281, column: 11, scope: !5922)
!5958 = !DILocation(line: 282, column: 19, scope: !5922)
!5959 = !DILocation(line: 282, column: 12, scope: !5922)
!5960 = !DILocation(line: 282, column: 33, scope: !5922)
!5961 = !DILocation(line: 282, column: 10, scope: !5922)
!5962 = !DILocation(line: 283, column: 13, scope: !5922)
!5963 = !DILocation(line: 283, column: 24, scope: !5922)
!5964 = !DILocation(line: 283, column: 22, scope: !5922)
!5965 = !DILocation(line: 283, column: 11, scope: !5922)
!5966 = !DILocation(line: 285, column: 6, scope: !5922)
!5967 = !DILocation(line: 285, column: 11, scope: !5922)
!5968 = !DILocation(line: 286, column: 12, scope: !5922)
!5969 = !DILocation(line: 286, column: 6, scope: !5922)
!5970 = !DILocation(line: 286, column: 10, scope: !5922)
!5971 = !DILocation(line: 288, column: 14, scope: !5922)
!5972 = !DILocation(line: 288, column: 20, scope: !5922)
!5973 = !DILocation(line: 288, column: 30, scope: !5922)
!5974 = !DILocation(line: 288, column: 2, scope: !5922)
!5975 = !DILocation(line: 290, column: 32, scope: !5922)
!5976 = !DILocation(line: 290, column: 8, scope: !5922)
!5977 = !DILocation(line: 290, column: 6, scope: !5922)
!5978 = !DILocation(line: 291, column: 7, scope: !5979)
!5979 = distinct !DILexicalBlock(scope: !5922, file: !3, line: 291, column: 6)
!5980 = !DILocation(line: 291, column: 6, scope: !5922)
!5981 = !DILocation(line: 292, column: 33, scope: !5979)
!5982 = !DILocation(line: 292, column: 39, scope: !5979)
!5983 = !DILocation(line: 292, column: 9, scope: !5979)
!5984 = !DILocation(line: 292, column: 7, scope: !5979)
!5985 = !DILocation(line: 292, column: 3, scope: !5979)
!5986 = !DILocation(line: 293, column: 7, scope: !5987)
!5987 = distinct !DILexicalBlock(scope: !5922, file: !3, line: 293, column: 6)
!5988 = !DILocation(line: 293, column: 6, scope: !5922)
!5989 = !DILocation(line: 294, column: 33, scope: !5987)
!5990 = !DILocation(line: 294, column: 47, scope: !5987)
!5991 = !DILocation(line: 294, column: 9, scope: !5987)
!5992 = !DILocation(line: 294, column: 7, scope: !5987)
!5993 = !DILocation(line: 294, column: 3, scope: !5987)
!5994 = !DILocation(line: 296, column: 7, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5922, file: !3, line: 296, column: 6)
!5996 = !DILocation(line: 296, column: 6, scope: !5922)
!5997 = !DILocation(line: 298, column: 33, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5995, file: !3, line: 296, column: 12)
!5999 = !DILocation(line: 298, column: 39, scope: !5998)
!6000 = !DILocation(line: 298, column: 49, scope: !5998)
!6001 = !DILocation(line: 298, column: 3, scope: !5998)
!6002 = !DILocation(line: 299, column: 3, scope: !5998)
!6003 = !DILocation(line: 300, column: 2, scope: !5998)
!6004 = !DILocation(line: 301, column: 3, scope: !5995)
!6005 = !DILocation(line: 303, column: 16, scope: !5922)
!6006 = !DILocation(line: 303, column: 22, scope: !5922)
!6007 = !DILocation(line: 303, column: 32, scope: !5922)
!6008 = !DILocation(line: 303, column: 2, scope: !5922)
!6009 = !DILocation(line: 304, column: 1, scope: !5922)
!6010 = distinct !DISubprogram(name: "free_watch_adapter", scope: !3, file: !3, line: 233, type: !6011, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!6011 = !DISubroutineType(types: !6012)
!6012 = !{null, !308}
!6013 = !DILocalVariable(name: "watch", arg: 1, scope: !6010, file: !3, line: 233, type: !308)
!6014 = !DILocation(line: 233, column: 54, scope: !6010)
!6015 = !DILocation(line: 235, column: 8, scope: !6010)
!6016 = !DILocation(line: 235, column: 15, scope: !6010)
!6017 = !DILocation(line: 235, column: 21, scope: !6010)
!6018 = !DILocation(line: 235, column: 2, scope: !6010)
!6019 = !DILocation(line: 236, column: 8, scope: !6010)
!6020 = !DILocation(line: 236, column: 15, scope: !6010)
!6021 = !DILocation(line: 236, column: 2, scope: !6010)
!6022 = !DILocation(line: 237, column: 8, scope: !6010)
!6023 = !DILocation(line: 237, column: 2, scope: !6010)
!6024 = !DILocation(line: 238, column: 1, scope: !6010)
!6025 = distinct !DISubprogram(name: "list_add", scope: !4079, file: !4079, line: 84, type: !4420, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!6026 = !DILocalVariable(name: "new", arg: 1, scope: !6025, file: !4079, line: 84, type: !194)
!6027 = !DILocation(line: 84, column: 47, scope: !6025)
!6028 = !DILocalVariable(name: "head", arg: 2, scope: !6025, file: !4079, line: 84, type: !194)
!6029 = !DILocation(line: 84, column: 70, scope: !6025)
!6030 = !DILocation(line: 86, column: 13, scope: !6025)
!6031 = !DILocation(line: 86, column: 18, scope: !6025)
!6032 = !DILocation(line: 86, column: 24, scope: !6025)
!6033 = !DILocation(line: 86, column: 30, scope: !6025)
!6034 = !DILocation(line: 86, column: 2, scope: !6025)
!6035 = !DILocation(line: 87, column: 1, scope: !6025)
!6036 = distinct !DISubprogram(name: "kzalloc", scope: !98, file: !98, line: 662, type: !4120, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!6037 = !DILocation(line: 445, column: 72, scope: !4112, inlinedAt: !6038)
!6038 = distinct !DILocation(line: 552, column: 10, scope: !4117, inlinedAt: !6039)
!6039 = distinct !DILocation(line: 664, column: 9, scope: !6036)
!6040 = !DILocation(line: 446, column: 9, scope: !4112, inlinedAt: !6038)
!6041 = !DILocation(line: 446, column: 23, scope: !4112, inlinedAt: !6038)
!6042 = !DILocation(line: 448, column: 8, scope: !4112, inlinedAt: !6038)
!6043 = !DILocation(line: 318, column: 67, scope: !4130, inlinedAt: !6044)
!6044 = distinct !DILocation(line: 553, column: 20, scope: !4117, inlinedAt: !6039)
!6045 = !DILocation(line: 346, column: 58, scope: !4136, inlinedAt: !6046)
!6046 = distinct !DILocation(line: 547, column: 11, scope: !4117, inlinedAt: !6039)
!6047 = !DILocation(line: 472, column: 28, scope: !4142, inlinedAt: !6048)
!6048 = distinct !DILocation(line: 481, column: 9, scope: !4147, inlinedAt: !6049)
!6049 = distinct !DILocation(line: 545, column: 11, scope: !4149, inlinedAt: !6039)
!6050 = !DILocation(line: 472, column: 40, scope: !4142, inlinedAt: !6048)
!6051 = !DILocation(line: 472, column: 60, scope: !4142, inlinedAt: !6048)
!6052 = !DILocation(line: 478, column: 51, scope: !4147, inlinedAt: !6049)
!6053 = !DILocation(line: 478, column: 63, scope: !4147, inlinedAt: !6049)
!6054 = !DILocation(line: 480, column: 15, scope: !4147, inlinedAt: !6049)
!6055 = !DILocation(line: 538, column: 45, scope: !4119, inlinedAt: !6039)
!6056 = !DILocation(line: 538, column: 57, scope: !4119, inlinedAt: !6039)
!6057 = !DILocation(line: 542, column: 16, scope: !4117, inlinedAt: !6039)
!6058 = !DILocalVariable(name: "size", arg: 1, scope: !6036, file: !98, line: 662, type: !730)
!6059 = !DILocation(line: 662, column: 36, scope: !6036)
!6060 = !DILocalVariable(name: "flags", arg: 2, scope: !6036, file: !98, line: 662, type: !208)
!6061 = !DILocation(line: 662, column: 48, scope: !6036)
!6062 = !DILocation(line: 664, column: 17, scope: !6036)
!6063 = !DILocation(line: 664, column: 23, scope: !6036)
!6064 = !DILocation(line: 664, column: 29, scope: !6036)
!6065 = !DILocation(line: 540, column: 27, scope: !4118, inlinedAt: !6039)
!6066 = !DILocation(line: 540, column: 6, scope: !4118, inlinedAt: !6039)
!6067 = !DILocation(line: 540, column: 6, scope: !4119, inlinedAt: !6039)
!6068 = !DILocation(line: 544, column: 7, scope: !4149, inlinedAt: !6039)
!6069 = !DILocation(line: 544, column: 12, scope: !4149, inlinedAt: !6039)
!6070 = !DILocation(line: 544, column: 7, scope: !4117, inlinedAt: !6039)
!6071 = !DILocation(line: 545, column: 25, scope: !4149, inlinedAt: !6039)
!6072 = !DILocation(line: 545, column: 31, scope: !4149, inlinedAt: !6039)
!6073 = !DILocation(line: 480, column: 33, scope: !4147, inlinedAt: !6049)
!6074 = !DILocation(line: 480, column: 23, scope: !4147, inlinedAt: !6049)
!6075 = !DILocation(line: 481, column: 29, scope: !4147, inlinedAt: !6049)
!6076 = !DILocation(line: 481, column: 35, scope: !4147, inlinedAt: !6049)
!6077 = !DILocation(line: 481, column: 42, scope: !4147, inlinedAt: !6049)
!6078 = !DILocation(line: 474, column: 23, scope: !4142, inlinedAt: !6048)
!6079 = !DILocation(line: 474, column: 29, scope: !4142, inlinedAt: !6048)
!6080 = !DILocation(line: 474, column: 36, scope: !4142, inlinedAt: !6048)
!6081 = !DILocation(line: 474, column: 9, scope: !4142, inlinedAt: !6048)
!6082 = !DILocation(line: 545, column: 4, scope: !4149, inlinedAt: !6039)
!6083 = !DILocation(line: 547, column: 25, scope: !4117, inlinedAt: !6039)
!6084 = !DILocation(line: 348, column: 7, scope: !4206, inlinedAt: !6046)
!6085 = !DILocation(line: 348, column: 6, scope: !4136, inlinedAt: !6046)
!6086 = !DILocation(line: 349, column: 3, scope: !4206, inlinedAt: !6046)
!6087 = !DILocation(line: 351, column: 6, scope: !4210, inlinedAt: !6046)
!6088 = !DILocation(line: 351, column: 11, scope: !4210, inlinedAt: !6046)
!6089 = !DILocation(line: 351, column: 6, scope: !4136, inlinedAt: !6046)
!6090 = !DILocation(line: 352, column: 3, scope: !4210, inlinedAt: !6046)
!6091 = !DILocation(line: 354, column: 32, scope: !4215, inlinedAt: !6046)
!6092 = !DILocation(line: 354, column: 37, scope: !4215, inlinedAt: !6046)
!6093 = !DILocation(line: 354, column: 42, scope: !4215, inlinedAt: !6046)
!6094 = !DILocation(line: 354, column: 45, scope: !4215, inlinedAt: !6046)
!6095 = !DILocation(line: 354, column: 50, scope: !4215, inlinedAt: !6046)
!6096 = !DILocation(line: 354, column: 6, scope: !4136, inlinedAt: !6046)
!6097 = !DILocation(line: 355, column: 3, scope: !4215, inlinedAt: !6046)
!6098 = !DILocation(line: 356, column: 32, scope: !4223, inlinedAt: !6046)
!6099 = !DILocation(line: 356, column: 37, scope: !4223, inlinedAt: !6046)
!6100 = !DILocation(line: 356, column: 43, scope: !4223, inlinedAt: !6046)
!6101 = !DILocation(line: 356, column: 46, scope: !4223, inlinedAt: !6046)
!6102 = !DILocation(line: 356, column: 51, scope: !4223, inlinedAt: !6046)
!6103 = !DILocation(line: 356, column: 6, scope: !4136, inlinedAt: !6046)
!6104 = !DILocation(line: 357, column: 3, scope: !4223, inlinedAt: !6046)
!6105 = !DILocation(line: 358, column: 6, scope: !4231, inlinedAt: !6046)
!6106 = !DILocation(line: 358, column: 11, scope: !4231, inlinedAt: !6046)
!6107 = !DILocation(line: 358, column: 6, scope: !4136, inlinedAt: !6046)
!6108 = !DILocation(line: 358, column: 26, scope: !4231, inlinedAt: !6046)
!6109 = !DILocation(line: 359, column: 6, scope: !4236, inlinedAt: !6046)
!6110 = !DILocation(line: 359, column: 11, scope: !4236, inlinedAt: !6046)
!6111 = !DILocation(line: 359, column: 6, scope: !4136, inlinedAt: !6046)
!6112 = !DILocation(line: 359, column: 26, scope: !4236, inlinedAt: !6046)
!6113 = !DILocation(line: 360, column: 6, scope: !4241, inlinedAt: !6046)
!6114 = !DILocation(line: 360, column: 11, scope: !4241, inlinedAt: !6046)
!6115 = !DILocation(line: 360, column: 6, scope: !4136, inlinedAt: !6046)
!6116 = !DILocation(line: 360, column: 26, scope: !4241, inlinedAt: !6046)
!6117 = !DILocation(line: 361, column: 6, scope: !4246, inlinedAt: !6046)
!6118 = !DILocation(line: 361, column: 11, scope: !4246, inlinedAt: !6046)
!6119 = !DILocation(line: 361, column: 6, scope: !4136, inlinedAt: !6046)
!6120 = !DILocation(line: 361, column: 26, scope: !4246, inlinedAt: !6046)
!6121 = !DILocation(line: 362, column: 6, scope: !4251, inlinedAt: !6046)
!6122 = !DILocation(line: 362, column: 11, scope: !4251, inlinedAt: !6046)
!6123 = !DILocation(line: 362, column: 6, scope: !4136, inlinedAt: !6046)
!6124 = !DILocation(line: 362, column: 26, scope: !4251, inlinedAt: !6046)
!6125 = !DILocation(line: 363, column: 6, scope: !4256, inlinedAt: !6046)
!6126 = !DILocation(line: 363, column: 11, scope: !4256, inlinedAt: !6046)
!6127 = !DILocation(line: 363, column: 6, scope: !4136, inlinedAt: !6046)
!6128 = !DILocation(line: 363, column: 26, scope: !4256, inlinedAt: !6046)
!6129 = !DILocation(line: 364, column: 6, scope: !4261, inlinedAt: !6046)
!6130 = !DILocation(line: 364, column: 11, scope: !4261, inlinedAt: !6046)
!6131 = !DILocation(line: 364, column: 6, scope: !4136, inlinedAt: !6046)
!6132 = !DILocation(line: 364, column: 26, scope: !4261, inlinedAt: !6046)
!6133 = !DILocation(line: 365, column: 6, scope: !4266, inlinedAt: !6046)
!6134 = !DILocation(line: 365, column: 11, scope: !4266, inlinedAt: !6046)
!6135 = !DILocation(line: 365, column: 6, scope: !4136, inlinedAt: !6046)
!6136 = !DILocation(line: 365, column: 26, scope: !4266, inlinedAt: !6046)
!6137 = !DILocation(line: 366, column: 6, scope: !4271, inlinedAt: !6046)
!6138 = !DILocation(line: 366, column: 11, scope: !4271, inlinedAt: !6046)
!6139 = !DILocation(line: 366, column: 6, scope: !4136, inlinedAt: !6046)
!6140 = !DILocation(line: 366, column: 26, scope: !4271, inlinedAt: !6046)
!6141 = !DILocation(line: 367, column: 6, scope: !4276, inlinedAt: !6046)
!6142 = !DILocation(line: 367, column: 11, scope: !4276, inlinedAt: !6046)
!6143 = !DILocation(line: 367, column: 6, scope: !4136, inlinedAt: !6046)
!6144 = !DILocation(line: 367, column: 26, scope: !4276, inlinedAt: !6046)
!6145 = !DILocation(line: 368, column: 6, scope: !4281, inlinedAt: !6046)
!6146 = !DILocation(line: 368, column: 11, scope: !4281, inlinedAt: !6046)
!6147 = !DILocation(line: 368, column: 6, scope: !4136, inlinedAt: !6046)
!6148 = !DILocation(line: 368, column: 26, scope: !4281, inlinedAt: !6046)
!6149 = !DILocation(line: 369, column: 6, scope: !4286, inlinedAt: !6046)
!6150 = !DILocation(line: 369, column: 11, scope: !4286, inlinedAt: !6046)
!6151 = !DILocation(line: 369, column: 6, scope: !4136, inlinedAt: !6046)
!6152 = !DILocation(line: 369, column: 26, scope: !4286, inlinedAt: !6046)
!6153 = !DILocation(line: 370, column: 6, scope: !4291, inlinedAt: !6046)
!6154 = !DILocation(line: 370, column: 11, scope: !4291, inlinedAt: !6046)
!6155 = !DILocation(line: 370, column: 6, scope: !4136, inlinedAt: !6046)
!6156 = !DILocation(line: 370, column: 26, scope: !4291, inlinedAt: !6046)
!6157 = !DILocation(line: 371, column: 6, scope: !4296, inlinedAt: !6046)
!6158 = !DILocation(line: 371, column: 11, scope: !4296, inlinedAt: !6046)
!6159 = !DILocation(line: 371, column: 6, scope: !4136, inlinedAt: !6046)
!6160 = !DILocation(line: 371, column: 26, scope: !4296, inlinedAt: !6046)
!6161 = !DILocation(line: 372, column: 6, scope: !4301, inlinedAt: !6046)
!6162 = !DILocation(line: 372, column: 11, scope: !4301, inlinedAt: !6046)
!6163 = !DILocation(line: 372, column: 6, scope: !4136, inlinedAt: !6046)
!6164 = !DILocation(line: 372, column: 26, scope: !4301, inlinedAt: !6046)
!6165 = !DILocation(line: 373, column: 6, scope: !4306, inlinedAt: !6046)
!6166 = !DILocation(line: 373, column: 11, scope: !4306, inlinedAt: !6046)
!6167 = !DILocation(line: 373, column: 6, scope: !4136, inlinedAt: !6046)
!6168 = !DILocation(line: 373, column: 26, scope: !4306, inlinedAt: !6046)
!6169 = !DILocation(line: 374, column: 6, scope: !4311, inlinedAt: !6046)
!6170 = !DILocation(line: 374, column: 11, scope: !4311, inlinedAt: !6046)
!6171 = !DILocation(line: 374, column: 6, scope: !4136, inlinedAt: !6046)
!6172 = !DILocation(line: 374, column: 26, scope: !4311, inlinedAt: !6046)
!6173 = !DILocation(line: 375, column: 6, scope: !4316, inlinedAt: !6046)
!6174 = !DILocation(line: 375, column: 11, scope: !4316, inlinedAt: !6046)
!6175 = !DILocation(line: 375, column: 6, scope: !4136, inlinedAt: !6046)
!6176 = !DILocation(line: 375, column: 27, scope: !4316, inlinedAt: !6046)
!6177 = !DILocation(line: 376, column: 6, scope: !4321, inlinedAt: !6046)
!6178 = !DILocation(line: 376, column: 11, scope: !4321, inlinedAt: !6046)
!6179 = !DILocation(line: 376, column: 6, scope: !4136, inlinedAt: !6046)
!6180 = !DILocation(line: 376, column: 32, scope: !4321, inlinedAt: !6046)
!6181 = !DILocation(line: 377, column: 6, scope: !4326, inlinedAt: !6046)
!6182 = !DILocation(line: 377, column: 11, scope: !4326, inlinedAt: !6046)
!6183 = !DILocation(line: 377, column: 6, scope: !4136, inlinedAt: !6046)
!6184 = !DILocation(line: 377, column: 32, scope: !4326, inlinedAt: !6046)
!6185 = !DILocation(line: 378, column: 6, scope: !4331, inlinedAt: !6046)
!6186 = !DILocation(line: 378, column: 11, scope: !4331, inlinedAt: !6046)
!6187 = !DILocation(line: 378, column: 6, scope: !4136, inlinedAt: !6046)
!6188 = !DILocation(line: 378, column: 32, scope: !4331, inlinedAt: !6046)
!6189 = !DILocation(line: 379, column: 6, scope: !4336, inlinedAt: !6046)
!6190 = !DILocation(line: 379, column: 11, scope: !4336, inlinedAt: !6046)
!6191 = !DILocation(line: 379, column: 6, scope: !4136, inlinedAt: !6046)
!6192 = !DILocation(line: 379, column: 33, scope: !4336, inlinedAt: !6046)
!6193 = !DILocation(line: 380, column: 6, scope: !4341, inlinedAt: !6046)
!6194 = !DILocation(line: 380, column: 11, scope: !4341, inlinedAt: !6046)
!6195 = !DILocation(line: 380, column: 6, scope: !4136, inlinedAt: !6046)
!6196 = !DILocation(line: 380, column: 33, scope: !4341, inlinedAt: !6046)
!6197 = !DILocation(line: 381, column: 6, scope: !4346, inlinedAt: !6046)
!6198 = !DILocation(line: 381, column: 11, scope: !4346, inlinedAt: !6046)
!6199 = !DILocation(line: 381, column: 6, scope: !4136, inlinedAt: !6046)
!6200 = !DILocation(line: 381, column: 33, scope: !4346, inlinedAt: !6046)
!6201 = !DILocation(line: 382, column: 2, scope: !4351, inlinedAt: !6046)
!6202 = !DILocation(line: 382, column: 2, scope: !4355, inlinedAt: !6046)
!6203 = !DILocation(line: 382, column: 2, scope: !4356, inlinedAt: !6046)
!6204 = !DILocation(line: 386, column: 1, scope: !4136, inlinedAt: !6046)
!6205 = !DILocation(line: 547, column: 9, scope: !4117, inlinedAt: !6039)
!6206 = !DILocation(line: 549, column: 8, scope: !4362, inlinedAt: !6039)
!6207 = !DILocation(line: 549, column: 7, scope: !4117, inlinedAt: !6039)
!6208 = !DILocation(line: 550, column: 4, scope: !4362, inlinedAt: !6039)
!6209 = !DILocation(line: 553, column: 33, scope: !4117, inlinedAt: !6039)
!6210 = !DILocation(line: 325, column: 6, scope: !4367, inlinedAt: !6044)
!6211 = !DILocation(line: 325, column: 6, scope: !4130, inlinedAt: !6044)
!6212 = !DILocation(line: 326, column: 3, scope: !4367, inlinedAt: !6044)
!6213 = !DILocation(line: 332, column: 9, scope: !4130, inlinedAt: !6044)
!6214 = !DILocation(line: 332, column: 15, scope: !4130, inlinedAt: !6044)
!6215 = !DILocation(line: 332, column: 2, scope: !4130, inlinedAt: !6044)
!6216 = !DILocation(line: 336, column: 1, scope: !4130, inlinedAt: !6044)
!6217 = !DILocation(line: 553, column: 5, scope: !4117, inlinedAt: !6039)
!6218 = !DILocation(line: 553, column: 41, scope: !4117, inlinedAt: !6039)
!6219 = !DILocation(line: 554, column: 5, scope: !4117, inlinedAt: !6039)
!6220 = !DILocation(line: 554, column: 12, scope: !4117, inlinedAt: !6039)
!6221 = !DILocation(line: 448, column: 31, scope: !4112, inlinedAt: !6038)
!6222 = !DILocation(line: 448, column: 34, scope: !4112, inlinedAt: !6038)
!6223 = !DILocation(line: 448, column: 14, scope: !4112, inlinedAt: !6038)
!6224 = !DILocation(line: 450, column: 22, scope: !4112, inlinedAt: !6038)
!6225 = !DILocation(line: 450, column: 25, scope: !4112, inlinedAt: !6038)
!6226 = !DILocation(line: 450, column: 30, scope: !4112, inlinedAt: !6038)
!6227 = !DILocation(line: 450, column: 36, scope: !4112, inlinedAt: !6038)
!6228 = !DILocation(line: 450, column: 8, scope: !4112, inlinedAt: !6038)
!6229 = !DILocation(line: 450, column: 6, scope: !4112, inlinedAt: !6038)
!6230 = !DILocation(line: 451, column: 9, scope: !4112, inlinedAt: !6038)
!6231 = !DILocation(line: 552, column: 3, scope: !4117, inlinedAt: !6039)
!6232 = !DILocation(line: 557, column: 19, scope: !4119, inlinedAt: !6039)
!6233 = !DILocation(line: 557, column: 25, scope: !4119, inlinedAt: !6039)
!6234 = !DILocation(line: 557, column: 9, scope: !4119, inlinedAt: !6039)
!6235 = !DILocation(line: 557, column: 2, scope: !4119, inlinedAt: !6039)
!6236 = !DILocation(line: 558, column: 1, scope: !4119, inlinedAt: !6039)
!6237 = !DILocation(line: 664, column: 2, scope: !6036)
!6238 = distinct !DISubprogram(name: "poll_wait", scope: !849, file: !849, line: 48, type: !6239, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!6239 = !DISubroutineType(types: !6240)
!6240 = !{null, !685, !856, !4934}
!6241 = !DILocalVariable(name: "filp", arg: 1, scope: !6238, file: !849, line: 48, type: !685)
!6242 = !DILocation(line: 48, column: 44, scope: !6238)
!6243 = !DILocalVariable(name: "wait_address", arg: 2, scope: !6238, file: !849, line: 48, type: !856)
!6244 = !DILocation(line: 48, column: 70, scope: !6238)
!6245 = !DILocalVariable(name: "p", arg: 3, scope: !6238, file: !849, line: 48, type: !4934)
!6246 = !DILocation(line: 48, column: 96, scope: !6238)
!6247 = !DILocation(line: 50, column: 6, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6238, file: !849, line: 50, column: 6)
!6249 = !DILocation(line: 50, column: 8, scope: !6248)
!6250 = !DILocation(line: 50, column: 11, scope: !6248)
!6251 = !DILocation(line: 50, column: 14, scope: !6248)
!6252 = !DILocation(line: 50, column: 21, scope: !6248)
!6253 = !DILocation(line: 50, column: 24, scope: !6248)
!6254 = !DILocation(line: 50, column: 6, scope: !6238)
!6255 = !DILocation(line: 51, column: 3, scope: !6248)
!6256 = !DILocation(line: 51, column: 6, scope: !6248)
!6257 = !DILocation(line: 51, column: 13, scope: !6248)
!6258 = !DILocation(line: 51, column: 19, scope: !6248)
!6259 = !DILocation(line: 51, column: 33, scope: !6248)
!6260 = !DILocation(line: 52, column: 1, scope: !6238)
!6261 = distinct !DISubprogram(name: "kref_init", scope: !285, file: !285, line: 29, type: !4465, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!6262 = !DILocalVariable(name: "kref", arg: 1, scope: !6261, file: !285, line: 29, type: !4463)
!6263 = !DILocation(line: 29, column: 43, scope: !6261)
!6264 = !DILocation(line: 31, column: 16, scope: !6261)
!6265 = !DILocation(line: 31, column: 22, scope: !6261)
!6266 = !DILocation(line: 31, column: 2, scope: !6261)
!6267 = !DILocation(line: 32, column: 1, scope: !6261)
!6268 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4079, file: !4079, line: 33, type: !4080, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!6269 = !DILocalVariable(name: "list", arg: 1, scope: !6268, file: !4079, line: 33, type: !194)
!6270 = !DILocation(line: 33, column: 53, scope: !6268)
!6271 = !DILocation(line: 35, column: 2, scope: !6268)
!6272 = !DILocation(line: 35, column: 2, scope: !6273)
!6273 = distinct !DILexicalBlock(scope: !6268, file: !4079, line: 35, column: 2)
!6274 = !DILocation(line: 35, column: 2, scope: !6275)
!6275 = distinct !DILexicalBlock(scope: !6273, file: !4079, line: 35, column: 2)
!6276 = !DILocation(line: 35, column: 2, scope: !6277)
!6277 = distinct !DILexicalBlock(scope: !6273, file: !4079, line: 35, column: 2)
!6278 = !DILocation(line: 36, column: 15, scope: !6268)
!6279 = !DILocation(line: 36, column: 2, scope: !6268)
!6280 = !DILocation(line: 36, column: 8, scope: !6268)
!6281 = !DILocation(line: 36, column: 13, scope: !6268)
!6282 = !DILocation(line: 37, column: 1, scope: !6268)
!6283 = distinct !DISubprogram(name: "__init_work", scope: !113, file: !113, line: 215, type: !6284, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!6284 = !DISubroutineType(types: !6285)
!6285 = !{null, !307, !296}
!6286 = !DILocalVariable(name: "work", arg: 1, scope: !6283, file: !113, line: 215, type: !307)
!6287 = !DILocation(line: 215, column: 52, scope: !6283)
!6288 = !DILocalVariable(name: "onstack", arg: 2, scope: !6283, file: !113, line: 215, type: !296)
!6289 = !DILocation(line: 215, column: 62, scope: !6283)
!6290 = !DILocation(line: 215, column: 73, scope: !6283)
!6291 = distinct !DISubprogram(name: "xenbus_worker", scope: !3, file: !3, line: 306, type: !305, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!6292 = !DILocalVariable(name: "wq", arg: 1, scope: !6291, file: !3, line: 306, type: !307)
!6293 = !DILocation(line: 306, column: 47, scope: !6291)
!6294 = !DILocalVariable(name: "u", scope: !6291, file: !3, line: 308, type: !222)
!6295 = !DILocation(line: 308, column: 27, scope: !6291)
!6296 = !DILocalVariable(name: "trans", scope: !6291, file: !3, line: 309, type: !186)
!6297 = !DILocation(line: 309, column: 36, scope: !6291)
!6298 = !DILocalVariable(name: "tmp", scope: !6291, file: !3, line: 309, type: !186)
!6299 = !DILocation(line: 309, column: 44, scope: !6291)
!6300 = !DILocalVariable(name: "watch", scope: !6291, file: !3, line: 310, type: !308)
!6301 = !DILocation(line: 310, column: 24, scope: !6291)
!6302 = !DILocalVariable(name: "tmp_watch", scope: !6291, file: !3, line: 310, type: !308)
!6303 = !DILocation(line: 310, column: 32, scope: !6291)
!6304 = !DILocalVariable(name: "rb", scope: !6291, file: !3, line: 311, type: !211)
!6305 = !DILocation(line: 311, column: 22, scope: !6291)
!6306 = !DILocalVariable(name: "tmp_rb", scope: !6291, file: !3, line: 311, type: !211)
!6307 = !DILocation(line: 311, column: 27, scope: !6291)
!6308 = !DILocalVariable(name: "__mptr", scope: !6309, file: !3, line: 313, type: !185)
!6309 = distinct !DILexicalBlock(scope: !6291, file: !3, line: 313, column: 6)
!6310 = !DILocation(line: 313, column: 6, scope: !6309)
!6311 = !DILocation(line: 313, column: 6, scope: !6312)
!6312 = distinct !DILexicalBlock(scope: !6309, file: !3, line: 313, column: 6)
!6313 = !DILocation(line: 313, column: 4, scope: !6291)
!6314 = !DILocalVariable(name: "__mptr", scope: !6315, file: !3, line: 320, type: !185)
!6315 = distinct !DILexicalBlock(scope: !6316, file: !3, line: 320, column: 2)
!6316 = distinct !DILexicalBlock(scope: !6291, file: !3, line: 320, column: 2)
!6317 = !DILocation(line: 320, column: 2, scope: !6315)
!6318 = !DILocation(line: 320, column: 2, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6315, file: !3, line: 320, column: 2)
!6320 = !DILocation(line: 320, column: 2, scope: !6316)
!6321 = !DILocalVariable(name: "__mptr", scope: !6322, file: !3, line: 320, type: !185)
!6322 = distinct !DILexicalBlock(scope: !6316, file: !3, line: 320, column: 2)
!6323 = !DILocation(line: 320, column: 2, scope: !6322)
!6324 = !DILocation(line: 320, column: 2, scope: !6325)
!6325 = distinct !DILexicalBlock(scope: !6322, file: !3, line: 320, column: 2)
!6326 = !DILocation(line: 320, column: 2, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6316, file: !3, line: 320, column: 2)
!6328 = !DILocation(line: 321, column: 26, scope: !6329)
!6329 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 320, column: 63)
!6330 = !DILocation(line: 321, column: 33, scope: !6329)
!6331 = !DILocation(line: 321, column: 3, scope: !6329)
!6332 = !DILocation(line: 322, column: 13, scope: !6329)
!6333 = !DILocation(line: 322, column: 20, scope: !6329)
!6334 = !DILocation(line: 322, column: 3, scope: !6329)
!6335 = !DILocation(line: 323, column: 9, scope: !6329)
!6336 = !DILocation(line: 323, column: 3, scope: !6329)
!6337 = !DILocation(line: 324, column: 2, scope: !6329)
!6338 = !DILocalVariable(name: "__mptr", scope: !6339, file: !3, line: 320, type: !185)
!6339 = distinct !DILexicalBlock(scope: !6327, file: !3, line: 320, column: 2)
!6340 = !DILocation(line: 320, column: 2, scope: !6339)
!6341 = !DILocation(line: 320, column: 2, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6339, file: !3, line: 320, column: 2)
!6343 = distinct !{!6343, !6320, !6344}
!6344 = !DILocation(line: 324, column: 2, scope: !6316)
!6345 = !DILocalVariable(name: "__mptr", scope: !6346, file: !3, line: 326, type: !185)
!6346 = distinct !DILexicalBlock(scope: !6347, file: !3, line: 326, column: 2)
!6347 = distinct !DILexicalBlock(scope: !6291, file: !3, line: 326, column: 2)
!6348 = !DILocation(line: 326, column: 2, scope: !6346)
!6349 = !DILocation(line: 326, column: 2, scope: !6350)
!6350 = distinct !DILexicalBlock(scope: !6346, file: !3, line: 326, column: 2)
!6351 = !DILocation(line: 326, column: 2, scope: !6347)
!6352 = !DILocalVariable(name: "__mptr", scope: !6353, file: !3, line: 326, type: !185)
!6353 = distinct !DILexicalBlock(scope: !6347, file: !3, line: 326, column: 2)
!6354 = !DILocation(line: 326, column: 2, scope: !6353)
!6355 = !DILocation(line: 326, column: 2, scope: !6356)
!6356 = distinct !DILexicalBlock(scope: !6353, file: !3, line: 326, column: 2)
!6357 = !DILocation(line: 326, column: 2, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6347, file: !3, line: 326, column: 2)
!6359 = !DILocation(line: 327, column: 28, scope: !6360)
!6360 = distinct !DILexicalBlock(scope: !6358, file: !3, line: 326, column: 64)
!6361 = !DILocation(line: 327, column: 35, scope: !6360)
!6362 = !DILocation(line: 327, column: 3, scope: !6360)
!6363 = !DILocation(line: 328, column: 13, scope: !6360)
!6364 = !DILocation(line: 328, column: 20, scope: !6360)
!6365 = !DILocation(line: 328, column: 3, scope: !6360)
!6366 = !DILocation(line: 329, column: 22, scope: !6360)
!6367 = !DILocation(line: 329, column: 3, scope: !6360)
!6368 = !DILocation(line: 330, column: 2, scope: !6360)
!6369 = !DILocalVariable(name: "__mptr", scope: !6370, file: !3, line: 326, type: !185)
!6370 = distinct !DILexicalBlock(scope: !6358, file: !3, line: 326, column: 2)
!6371 = !DILocation(line: 326, column: 2, scope: !6370)
!6372 = !DILocation(line: 326, column: 2, scope: !6373)
!6373 = distinct !DILexicalBlock(scope: !6370, file: !3, line: 326, column: 2)
!6374 = distinct !{!6374, !6351, !6375}
!6375 = !DILocation(line: 330, column: 2, scope: !6347)
!6376 = !DILocalVariable(name: "__mptr", scope: !6377, file: !3, line: 332, type: !185)
!6377 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 332, column: 2)
!6378 = distinct !DILexicalBlock(scope: !6291, file: !3, line: 332, column: 2)
!6379 = !DILocation(line: 332, column: 2, scope: !6377)
!6380 = !DILocation(line: 332, column: 2, scope: !6381)
!6381 = distinct !DILexicalBlock(scope: !6377, file: !3, line: 332, column: 2)
!6382 = !DILocation(line: 332, column: 2, scope: !6378)
!6383 = !DILocalVariable(name: "__mptr", scope: !6384, file: !3, line: 332, type: !185)
!6384 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 332, column: 2)
!6385 = !DILocation(line: 332, column: 2, scope: !6384)
!6386 = !DILocation(line: 332, column: 2, scope: !6387)
!6387 = distinct !DILexicalBlock(scope: !6384, file: !3, line: 332, column: 2)
!6388 = !DILocation(line: 332, column: 2, scope: !6389)
!6389 = distinct !DILexicalBlock(scope: !6378, file: !3, line: 332, column: 2)
!6390 = !DILocation(line: 333, column: 13, scope: !6391)
!6391 = distinct !DILexicalBlock(scope: !6389, file: !3, line: 332, column: 63)
!6392 = !DILocation(line: 333, column: 17, scope: !6391)
!6393 = !DILocation(line: 333, column: 3, scope: !6391)
!6394 = !DILocation(line: 334, column: 9, scope: !6391)
!6395 = !DILocation(line: 334, column: 3, scope: !6391)
!6396 = !DILocation(line: 335, column: 2, scope: !6391)
!6397 = !DILocalVariable(name: "__mptr", scope: !6398, file: !3, line: 332, type: !185)
!6398 = distinct !DILexicalBlock(scope: !6389, file: !3, line: 332, column: 2)
!6399 = !DILocation(line: 332, column: 2, scope: !6398)
!6400 = !DILocation(line: 332, column: 2, scope: !6401)
!6401 = distinct !DILexicalBlock(scope: !6398, file: !3, line: 332, column: 2)
!6402 = distinct !{!6402, !6382, !6403}
!6403 = !DILocation(line: 335, column: 2, scope: !6378)
!6404 = !DILocation(line: 336, column: 8, scope: !6291)
!6405 = !DILocation(line: 336, column: 2, scope: !6291)
!6406 = !DILocation(line: 337, column: 1, scope: !6291)
!6407 = distinct !DISubprogram(name: "refcount_set", scope: !105, file: !105, line: 134, type: !6408, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!6408 = !DISubroutineType(types: !6409)
!6409 = !{null, !5257, !296}
!6410 = !DILocalVariable(name: "v", arg: 1, scope: !6411, file: !5279, line: 39, type: !5282)
!6411 = distinct !DISubprogram(name: "arch_atomic_set", scope: !5279, file: !5279, line: 39, type: !6412, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!6412 = !DISubroutineType(types: !6413)
!6413 = !{null, !5282, !296}
!6414 = !DILocation(line: 39, column: 55, scope: !6411, inlinedAt: !6415)
!6415 = distinct !DILocation(line: 46, column: 2, scope: !6416, inlinedAt: !6417)
!6416 = distinct !DISubprogram(name: "atomic_set", scope: !5286, file: !5286, line: 43, type: !6412, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!6417 = distinct !DILocation(line: 136, column: 2, scope: !6407)
!6418 = !DILocalVariable(name: "i", arg: 2, scope: !6411, file: !5279, line: 39, type: !296)
!6419 = !DILocation(line: 39, column: 62, scope: !6411, inlinedAt: !6415)
!6420 = !DILocalVariable(name: "v", arg: 1, scope: !6421, file: !5295, line: 84, type: !5298)
!6421 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5295, file: !5295, line: 84, type: !5296, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !254)
!6422 = !DILocation(line: 84, column: 74, scope: !6421, inlinedAt: !6423)
!6423 = distinct !DILocation(line: 45, column: 2, scope: !6416, inlinedAt: !6417)
!6424 = !DILocalVariable(name: "size", arg: 2, scope: !6421, file: !5295, line: 84, type: !730)
!6425 = !DILocation(line: 84, column: 84, scope: !6421, inlinedAt: !6423)
!6426 = !DILocalVariable(name: "v", arg: 1, scope: !6416, file: !5286, line: 43, type: !5282)
!6427 = !DILocation(line: 43, column: 22, scope: !6416, inlinedAt: !6417)
!6428 = !DILocalVariable(name: "i", arg: 2, scope: !6416, file: !5286, line: 43, type: !296)
!6429 = !DILocation(line: 43, column: 29, scope: !6416, inlinedAt: !6417)
!6430 = !DILocalVariable(name: "r", arg: 1, scope: !6407, file: !105, line: 134, type: !5257)
!6431 = !DILocation(line: 134, column: 45, scope: !6407)
!6432 = !DILocalVariable(name: "n", arg: 2, scope: !6407, file: !105, line: 134, type: !296)
!6433 = !DILocation(line: 134, column: 52, scope: !6407)
!6434 = !DILocation(line: 136, column: 14, scope: !6407)
!6435 = !DILocation(line: 136, column: 17, scope: !6407)
!6436 = !DILocation(line: 136, column: 23, scope: !6407)
!6437 = !DILocation(line: 45, column: 26, scope: !6416, inlinedAt: !6417)
!6438 = !DILocation(line: 86, column: 20, scope: !6421, inlinedAt: !6423)
!6439 = !DILocation(line: 86, column: 23, scope: !6421, inlinedAt: !6423)
!6440 = !DILocation(line: 86, column: 2, scope: !6421, inlinedAt: !6423)
!6441 = !DILocation(line: 87, column: 2, scope: !6421, inlinedAt: !6423)
!6442 = !DILocation(line: 46, column: 18, scope: !6416, inlinedAt: !6417)
!6443 = !DILocation(line: 46, column: 21, scope: !6416, inlinedAt: !6417)
!6444 = !DILocation(line: 41, column: 2, scope: !6445, inlinedAt: !6415)
!6445 = distinct !DILexicalBlock(scope: !6411, file: !5279, line: 41, column: 2)
!6446 = !DILocation(line: 137, column: 1, scope: !6407)
