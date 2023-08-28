; ModuleID = '../bcout/drivers/usb/core/devices.llvm.bc'
source_filename = "drivers/usb/core/devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.module = type opaque
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
%struct.lock_class_key = type {}
%struct.super_operations = type { %struct.inode* (%struct.super_block*)*, void (%struct.inode*)*, void (%struct.inode*)*, void (%struct.inode*, i32)*, i32 (%struct.inode*, %struct.writeback_control*)*, i32 (%struct.inode*)*, void (%struct.inode*)*, void (%struct.super_block*)*, i32 (%struct.super_block*, i32)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.super_block*)*, i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.super_block*, i32*, i8*)*, void (%struct.super_block*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.seq_file*, %struct.dentry*)*, i32 (%struct.super_block*, %struct.page*, i32)*, i64 (%struct.super_block*, %struct.shrink_control*)*, i64 (%struct.super_block*, %struct.shrink_control*)* }
%struct.writeback_control = type opaque
%struct.kstatfs = type opaque
%struct.seq_file = type opaque
%struct.page = type { i64, %union.anon.1, %union.anon.52, %struct.atomic_t, [8 x i8] }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct.list_head, %struct.address_space*, i64, i64 }
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
%struct.file_operations = type { %struct.module*, {}*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* }
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
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.57 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.57 = type { %struct.nfs_lock_info }
%struct.nfs_lock_info = type { i32, %struct.nlm_lockowner*, %struct.list_head }
%struct.nlm_lockowner = type opaque
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.class_info = type { i32, i8* }
%struct.usb_bus = type { %struct.device*, %struct.device*, i32, i8*, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, %struct.usb_device*, %struct.usb_bus*, i32, i32, i32, i32 }
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
%struct.usb_devmap = type { [2 x i64] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, %struct.usb_tt*, i32, [2 x i32], [4 x i8], %struct.usb_device*, %struct.usb_bus*, %struct.usb_host_endpoint, %struct.device, %struct.usb_device_descriptor, [6 x i8], %struct.usb_host_bos*, %struct.usb_host_config*, %struct.usb_host_config*, [16 x %struct.usb_host_endpoint*], [16 x %struct.usb_host_endpoint*], i8**, i16, i8, i8, i8, i16, i8, i32, [4 x i8], i8*, i8*, i8*, %struct.list_head, i32, i32, %struct.atomic_t, [4 x i8], i64, i64, i8, [7 x i8], %struct.wusb_dev*, i32, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, i8 }>
%struct.usb_tt = type { %struct.usb_device*, i32, i32, i8*, %struct.spinlock, %struct.list_head, %struct.work_struct }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, i8*, %struct.ep_device*, i8*, i32, i32, i32, [4 x i8] }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.ep_device = type opaque
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
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, i8*, i32, [24 x i8], %struct.timer_list, %struct.urb*, %struct.work_struct, %struct.work_struct, %struct.hc_driver*, %struct.usb_phy*, %struct.usb_phy_roothub*, i64, i32, i16, i32, i8*, i64, i64, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, %struct.mutex*, %struct.mutex*, %struct.usb_hcd*, %struct.usb_hcd*, [4 x %struct.dma_pool*], i32, %struct.gen_pool*, [0 x i64] }
%struct.urb = type { %struct.kref, i32, i8*, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.usb_anchor*, %struct.usb_device*, %struct.usb_host_endpoint*, i32, i32, i32, i32, i8*, i64, %struct.scatterlist*, i32, i32, i32, i32, i8*, i64, i32, i32, i32, i32, i8*, void (%struct.urb*)*, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_anchor = type { %struct.list_head, %struct.wait_queue_head, %struct.spinlock, %struct.atomic_t, i8 }
%struct.scatterlist = type opaque
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.hc_driver = type { i8*, i8*, i64, i32 (%struct.usb_hcd*)*, i32, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i1)*, i32 (%struct.usb_hcd*, i1)*, void (%struct.usb_hcd*)*, void (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, i32 (%struct.usb_hcd*, %struct.urb*, i32)*, void (%struct.usb_hcd*, %struct.urb*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, i8*)*, i32 (%struct.usb_hcd*, i16, i16, i16, i8*, i16)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*, i32)*, i64 (%struct.usb_hcd*)*, void (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32)*, void (%struct.usb_hcd*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint**, i32, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_host_endpoint*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, void (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, %struct.usb_tt*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, %struct.usb_device*, i32)*, i32 (%struct.usb_hcd*, i32)*, i32 (%struct.usb_hcd*, i32, i1)* }
%struct.usb_phy = type opaque
%struct.usb_phy_roothub = type opaque
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, %struct.usb_host_endpoint* }
%struct.tasklet_struct = type { %struct.tasklet_struct*, i64, %struct.atomic_t, i8, %union.anon.65, i64 }
%union.anon.65 = type { void (i64)* }
%struct.dma_pool = type opaque
%struct.gen_pool = type opaque

@usbfs_devices_fops = dso_local constant { %struct.module*, i64 (%struct.file*, i64, i32)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.file*, i8*, i64, i64*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i64 (%struct.kiocb*, %struct.iov_iter*)*, i32 (%struct.kiocb*, i1)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.dir_context*)*, i32 (%struct.file*, %struct.poll_table_struct*)*, i64 (%struct.file*, i32, i64)*, i64 (%struct.file*, i32, i64)*, i32 (%struct.file*, %struct.vm_area_struct*)*, i64, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i8*)*, i32 (%struct.inode*, %struct.file*)*, i32 (%struct.file*, i64, i64, i32)*, i32 (i32, %struct.file*, i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)*, i64 (%struct.file*, i64, i64, i64, i64)*, i32 (i32)*, i32 (%struct.file*, i32, %struct.file_lock*)*, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)*, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)*, i32 (%struct.file*, i64, %struct.file_lock**, i8**)*, i64 (%struct.file*, i32, i64, i64)*, void (%struct.seq_file*, %struct.file*)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)*, i32 (%struct.file*, i64, i64, i32)* } { %struct.module* null, i64 (%struct.file*, i64, i32)* @no_seek_end_llseek, i64 (%struct.file*, i8*, i64, i64*)* @usb_device_read, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* null, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* null, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !0
@usb_bus_idr_lock = external dso_local global %struct.mutex, align 8
@usb_bus_idr = external dso_local global %struct.idr, align 8
@.str = private unnamed_addr constant [4 x i8] c"1.5\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"12\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"480\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"5000\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"10000\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@format_topo = internal constant [85 x i8] c"\0AT:  Bus=%2.2d Lev=%2.2d Prnt=%2.2d Port=%2.2d Cnt=%2.2d Dev#=%3d Spd=%-4s MxCh=%2d\0A\00", align 16, !dbg !4454
@format_bandwidth = internal constant [50 x i8] c"B:  Alloc=%3d/%3d us (%2d%%), #Int=%3d, #Iso=%3d\0A\00", align 16, !dbg !4459
@.str.6 = private unnamed_addr constant [13 x i8] c"(truncated)\0A\00", align 1
@format_device1 = internal constant [71 x i8] c"D:  Ver=%2x.%02x Cls=%02x(%-5s) Sub=%02x Prot=%02x MxPS=%2d #Cfgs=%3d\0A\00", align 16, !dbg !4464
@format_device2 = internal constant [42 x i8] c"P:  Vendor=%04x ProdID=%04x Rev=%2x.%02x\0A\00", align 16, !dbg !4479
@clas_info = internal constant [22 x %struct.class_info] [%struct.class_info { i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0) }, %struct.class_info { i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0) }, %struct.class_info { i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0) }, %struct.class_info { i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0) }, %struct.class_info { i32 5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0) }, %struct.class_info { i32 6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0) }, %struct.class_info { i32 7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0) }, %struct.class_info { i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0) }, %struct.class_info { i32 9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0) }, %struct.class_info { i32 10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0) }, %struct.class_info { i32 11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0) }, %struct.class_info { i32 13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0) }, %struct.class_info { i32 14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0) }, %struct.class_info { i32 15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0) }, %struct.class_info { i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.21, i32 0, i32 0) }, %struct.class_info { i32 17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0) }, %struct.class_info { i32 18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0) }, %struct.class_info { i32 224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0) }, %struct.class_info { i32 239, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0) }, %struct.class_info { i32 254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0) }, %struct.class_info { i32 255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0) }, %struct.class_info { i32 -1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0) }], align 16, !dbg !4469
@.str.7 = private unnamed_addr constant [5 x i8] c">ifc\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"audio\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"comm.\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"HID\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"PID\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"still\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"stor.\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"hub\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"scard\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"c-sec\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"perhc\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"av\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"blbrd\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"bridg\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"wlcon\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"app.\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"vend.\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"unk.\00", align 1
@format_string_manufacturer = internal constant [25 x i8] c"S:  Manufacturer=%.100s\0A\00", align 16, !dbg !4484
@format_string_product = internal constant [20 x i8] c"S:  Product=%.100s\0A\00", align 16, !dbg !4489
@format_string_serialnumber = internal constant [25 x i8] c"S:  SerialNumber=%.100s\0A\00", align 16, !dbg !4492
@.str.29 = private unnamed_addr constant [19 x i8] c"(null Cfg. desc.)\0A\00", align 1
@format_config = internal constant [45 x i8] c"C:%c #Ifs=%2d Cfg#=%2d Atr=%02x MxPwr=%3dmA\0A\00", align 16, !dbg !4494
@format_iad = internal constant [64 x i8] c"A:  FirstIf#=%2d IfCount=%2d Cls=%02x(%-5s) Sub=%02x Prot=%02x\0A\00", align 16, !dbg !4499
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@format_iface = internal constant [75 x i8] c"I:%c If#=%2d Alt=%2d #EPs=%2d Cls=%02x(%-5s) Sub=%02x Prot=%02x Driver=%s\0A\00", align 16, !dbg !4502
@.str.32 = private unnamed_addr constant [5 x i8] c"Ctrl\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Isoc\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"Bulk\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"Int.\00", align 1
@format_endpt = internal constant [51 x i8] c"E:  Ad=%02x(%c) Atr=%02x(%-4s) MxPS=%4d Ivl=%d%cs\0A\00", align 16, !dbg !4507
@.str.36 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1

; Function Attrs: noredzone
declare dso_local i64 @no_seek_end_llseek(%struct.file*, i64, i32) #0

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @usb_device_read(%struct.file* %file, i8* %buf, i64 %nbytes, i64* %ppos) #1 !dbg !4517 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca %struct.file*, align 8
  %buf.addr = alloca i8*, align 8
  %nbytes.addr = alloca i64, align 8
  %ppos.addr = alloca i64*, align 8
  %bus = alloca %struct.usb_bus*, align 8
  %ret = alloca i64, align 8
  %total_written = alloca i64, align 8
  %skip_bytes = alloca i64, align 8
  %id = alloca i32, align 4
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4518, metadata !DIExpression()), !dbg !4519
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4520, metadata !DIExpression()), !dbg !4521
  store i64 %nbytes, i64* %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nbytes.addr, metadata !4522, metadata !DIExpression()), !dbg !4523
  store i64* %ppos, i64** %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %ppos.addr, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.declare(metadata %struct.usb_bus** %bus, metadata !4526, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.declare(metadata i64* %ret, metadata !4528, metadata !DIExpression()), !dbg !4529
  call void @llvm.dbg.declare(metadata i64* %total_written, metadata !4530, metadata !DIExpression()), !dbg !4531
  store i64 0, i64* %total_written, align 8, !dbg !4531
  call void @llvm.dbg.declare(metadata i64* %skip_bytes, metadata !4532, metadata !DIExpression()), !dbg !4533
  %0 = load i64*, i64** %ppos.addr, align 8, !dbg !4534
  %1 = load i64, i64* %0, align 8, !dbg !4535
  store i64 %1, i64* %skip_bytes, align 8, !dbg !4533
  call void @llvm.dbg.declare(metadata i32* %id, metadata !4536, metadata !DIExpression()), !dbg !4537
  %2 = load i64*, i64** %ppos.addr, align 8, !dbg !4538
  %3 = load i64, i64* %2, align 8, !dbg !4540
  %cmp = icmp slt i64 %3, 0, !dbg !4541
  br i1 %cmp, label %if.then, label %if.end, !dbg !4542

if.then:                                          ; preds = %entry
  store i64 -22, i64* %retval, align 8, !dbg !4543
  br label %return, !dbg !4543

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %nbytes.addr, align 8, !dbg !4544
  %cmp1 = icmp ule i64 %4, 0, !dbg !4546
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4547

if.then2:                                         ; preds = %if.end
  store i64 0, i64* %retval, align 8, !dbg !4548
  br label %return, !dbg !4548

if.end3:                                          ; preds = %if.end
  call void @mutex_lock(%struct.mutex* @usb_bus_idr_lock) #4, !dbg !4549
  store i32 0, i32* %id, align 4, !dbg !4550
  br label %for.cond, !dbg !4550

for.cond:                                         ; preds = %for.inc, %if.end3
  %call = call i8* @idr_get_next(%struct.idr* @usb_bus_idr, i32* %id) #4, !dbg !4552
  %5 = bitcast i8* %call to %struct.usb_bus*, !dbg !4552
  store %struct.usb_bus* %5, %struct.usb_bus** %bus, align 8, !dbg !4552
  %cmp4 = icmp ne %struct.usb_bus* %5, null, !dbg !4552
  br i1 %cmp4, label %for.body, label %for.end, !dbg !4550

for.body:                                         ; preds = %for.cond
  %6 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !4554
  %call5 = call %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %6) #4, !dbg !4557
  %rh_registered = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %call5, i32 0, i32 14, !dbg !4558
  %bf.load = load i16, i16* %rh_registered, align 4, !dbg !4558
  %bf.clear = and i16 %bf.load, 1, !dbg !4558
  %bf.cast = zext i16 %bf.clear to i32, !dbg !4558
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4557
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !4559

if.then6:                                         ; preds = %for.body
  br label %for.inc, !dbg !4560

if.end7:                                          ; preds = %for.body
  %7 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !4561
  %root_hub = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %7, i32 0, i32 11, !dbg !4561
  %8 = load %struct.usb_device*, %struct.usb_device** %root_hub, align 8, !dbg !4561
  %dev = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 14, !dbg !4561
  call void @device_lock(%struct.device* %dev) #4, !dbg !4561
  %9 = load i64*, i64** %ppos.addr, align 8, !dbg !4562
  %10 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !4563
  %root_hub8 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %10, i32 0, i32 11, !dbg !4564
  %11 = load %struct.usb_device*, %struct.usb_device** %root_hub8, align 8, !dbg !4564
  %12 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !4565
  %call9 = call i64 @usb_device_dump(i8** %buf.addr, i64* %nbytes.addr, i64* %skip_bytes, i64* %9, %struct.usb_device* %11, %struct.usb_bus* %12, i32 0, i32 0, i32 0) #4, !dbg !4566
  store i64 %call9, i64* %ret, align 8, !dbg !4567
  %13 = load %struct.usb_bus*, %struct.usb_bus** %bus, align 8, !dbg !4568
  %root_hub10 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %13, i32 0, i32 11, !dbg !4568
  %14 = load %struct.usb_device*, %struct.usb_device** %root_hub10, align 8, !dbg !4568
  %dev11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 14, !dbg !4568
  call void @device_unlock(%struct.device* %dev11) #4, !dbg !4568
  %15 = load i64, i64* %ret, align 8, !dbg !4569
  %cmp12 = icmp slt i64 %15, 0, !dbg !4571
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4572

if.then13:                                        ; preds = %if.end7
  call void @mutex_unlock(%struct.mutex* @usb_bus_idr_lock) #4, !dbg !4573
  %16 = load i64, i64* %ret, align 8, !dbg !4575
  store i64 %16, i64* %retval, align 8, !dbg !4576
  br label %return, !dbg !4576

if.end14:                                         ; preds = %if.end7
  %17 = load i64, i64* %ret, align 8, !dbg !4577
  %18 = load i64, i64* %total_written, align 8, !dbg !4578
  %add = add i64 %18, %17, !dbg !4578
  store i64 %add, i64* %total_written, align 8, !dbg !4578
  br label %for.inc, !dbg !4579

for.inc:                                          ; preds = %if.end14, %if.then6
  %19 = load i32, i32* %id, align 4, !dbg !4552
  %add15 = add i32 %19, 1, !dbg !4552
  store i32 %add15, i32* %id, align 4, !dbg !4552
  br label %for.cond, !dbg !4552, !llvm.loop !4580

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(%struct.mutex* @usb_bus_idr_lock) #4, !dbg !4582
  %20 = load i64, i64* %total_written, align 8, !dbg !4583
  store i64 %20, i64* %retval, align 8, !dbg !4584
  br label %return, !dbg !4584

return:                                           ; preds = %for.end, %if.then13, %if.then2, %if.then
  %21 = load i64, i64* %retval, align 8, !dbg !4585
  ret i64 %21, !dbg !4585
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #0

; Function Attrs: noredzone
declare dso_local i8* @idr_get_next(%struct.idr*, i32*) #0

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.usb_hcd* @bus_to_hcd(%struct.usb_bus* %bus) #1 !dbg !4586 {
entry:
  %bus.addr = alloca %struct.usb_bus*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.usb_hcd*, align 8
  store %struct.usb_bus* %bus, %struct.usb_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_bus** %bus.addr, metadata !4589, metadata !DIExpression()), !dbg !4590
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4591, metadata !DIExpression()), !dbg !4593
  %0 = load %struct.usb_bus*, %struct.usb_bus** %bus.addr, align 8, !dbg !4593
  %1 = bitcast %struct.usb_bus* %0 to i8*, !dbg !4593
  store i8* %1, i8** %__mptr, align 8, !dbg !4593
  br label %do.body, !dbg !4593

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4594

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4593
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4593
  %3 = bitcast i8* %add.ptr to %struct.usb_hcd*, !dbg !4593
  store %struct.usb_hcd* %3, %struct.usb_hcd** %tmp, align 8, !dbg !4594
  %4 = load %struct.usb_hcd*, %struct.usb_hcd** %tmp, align 8, !dbg !4593
  ret %struct.usb_hcd* %4, !dbg !4596
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_lock(%struct.device* %dev) #1 !dbg !4597 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4598, metadata !DIExpression()), !dbg !4599
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4600
  %mutex = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 9, !dbg !4601
  call void @mutex_lock(%struct.mutex* %mutex) #4, !dbg !4602
  ret void, !dbg !4603
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @usb_device_dump(i8** %buffer, i64* %nbytes, i64* %skip_bytes, i64* %file_offset, %struct.usb_device* %usbdev, %struct.usb_bus* %bus, i32 %level, i32 %index, i32 %count) #1 !dbg !4604 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4608, metadata !DIExpression()), !dbg !4613
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4624, metadata !DIExpression()), !dbg !4625
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4626, metadata !DIExpression()), !dbg !4627
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4628, metadata !DIExpression()), !dbg !4629
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4630, metadata !DIExpression()), !dbg !4633
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4634, metadata !DIExpression()), !dbg !4635
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4636, metadata !DIExpression()), !dbg !4637
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4638, metadata !DIExpression()), !dbg !4639
  %retval = alloca i64, align 8
  %buffer.addr = alloca i8**, align 8
  %nbytes.addr = alloca i64*, align 8
  %skip_bytes.addr = alloca i64*, align 8
  %file_offset.addr = alloca i64*, align 8
  %usbdev.addr = alloca %struct.usb_device*, align 8
  %bus.addr = alloca %struct.usb_bus*, align 8
  %level.addr = alloca i32, align 4
  %index.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %chix = alloca i32, align 4
  %ret = alloca i32, align 4
  %cnt = alloca i32, align 4
  %parent_devnum = alloca i32, align 4
  %pages_start = alloca i8*, align 8
  %data_end = alloca i8*, align 8
  %speed = alloca i8*, align 8
  %length = alloca i32, align 4
  %total_written = alloca i64, align 8
  %childdev = alloca %struct.usb_device*, align 8
  %max = alloca i32, align 4
  store i8** %buffer, i8*** %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %buffer.addr, metadata !4640, metadata !DIExpression()), !dbg !4641
  store i64* %nbytes, i64** %nbytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %nbytes.addr, metadata !4642, metadata !DIExpression()), !dbg !4643
  store i64* %skip_bytes, i64** %skip_bytes.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %skip_bytes.addr, metadata !4644, metadata !DIExpression()), !dbg !4645
  store i64* %file_offset, i64** %file_offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %file_offset.addr, metadata !4646, metadata !DIExpression()), !dbg !4647
  store %struct.usb_device* %usbdev, %struct.usb_device** %usbdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %usbdev.addr, metadata !4648, metadata !DIExpression()), !dbg !4649
  store %struct.usb_bus* %bus, %struct.usb_bus** %bus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_bus** %bus.addr, metadata !4650, metadata !DIExpression()), !dbg !4651
  store i32 %level, i32* %level.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %level.addr, metadata !4652, metadata !DIExpression()), !dbg !4653
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !4654, metadata !DIExpression()), !dbg !4655
  store i32 %count, i32* %count.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %count.addr, metadata !4656, metadata !DIExpression()), !dbg !4657
  call void @llvm.dbg.declare(metadata i32* %chix, metadata !4658, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4660, metadata !DIExpression()), !dbg !4661
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !4662, metadata !DIExpression()), !dbg !4663
  store i32 0, i32* %cnt, align 4, !dbg !4663
  call void @llvm.dbg.declare(metadata i32* %parent_devnum, metadata !4664, metadata !DIExpression()), !dbg !4665
  store i32 0, i32* %parent_devnum, align 4, !dbg !4665
  call void @llvm.dbg.declare(metadata i8** %pages_start, metadata !4666, metadata !DIExpression()), !dbg !4667
  call void @llvm.dbg.declare(metadata i8** %data_end, metadata !4668, metadata !DIExpression()), !dbg !4669
  call void @llvm.dbg.declare(metadata i8** %speed, metadata !4670, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.declare(metadata i32* %length, metadata !4672, metadata !DIExpression()), !dbg !4673
  call void @llvm.dbg.declare(metadata i64* %total_written, metadata !4674, metadata !DIExpression()), !dbg !4675
  store i64 0, i64* %total_written, align 8, !dbg !4675
  call void @llvm.dbg.declare(metadata %struct.usb_device** %childdev, metadata !4676, metadata !DIExpression()), !dbg !4677
  store %struct.usb_device* null, %struct.usb_device** %childdev, align 8, !dbg !4677
  %0 = load i64*, i64** %nbytes.addr, align 8, !dbg !4678
  %1 = load i64, i64* %0, align 8, !dbg !4680
  %cmp = icmp ule i64 %1, 0, !dbg !4681
  br i1 %cmp, label %if.then, label %if.end, !dbg !4682

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval, align 8, !dbg !4683
  br label %return, !dbg !4683

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %level.addr, align 4, !dbg !4684
  %cmp1 = icmp sgt i32 %2, 6, !dbg !4686
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4687

if.then2:                                         ; preds = %if.end
  store i64 0, i64* %retval, align 8, !dbg !4688
  br label %return, !dbg !4688

if.end3:                                          ; preds = %if.end
  %call = call i64 @__get_free_pages(i32 3072, i32 1) #4, !dbg !4689
  %3 = inttoptr i64 %call to i8*, !dbg !4690
  store i8* %3, i8** %pages_start, align 8, !dbg !4691
  %4 = load i8*, i8** %pages_start, align 8, !dbg !4692
  %tobool = icmp ne i8* %4, null, !dbg !4692
  br i1 %tobool, label %if.end5, label %if.then4, !dbg !4694

if.then4:                                         ; preds = %if.end3
  store i64 -12, i64* %retval, align 8, !dbg !4695
  br label %return, !dbg !4695

if.end5:                                          ; preds = %if.end3
  %5 = load %struct.usb_device*, %struct.usb_device** %usbdev.addr, align 8, !dbg !4696
  %parent = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 11, !dbg !4698
  %6 = load %struct.usb_device*, %struct.usb_device** %parent, align 8, !dbg !4698
  %tobool6 = icmp ne %struct.usb_device* %6, null, !dbg !4696
  br i1 %tobool6, label %land.lhs.true, label %if.end12, !dbg !4699

land.lhs.true:                                    ; preds = %if.end5
  %7 = load %struct.usb_device*, %struct.usb_device** %usbdev.addr, align 8, !dbg !4700
  %parent7 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %7, i32 0, i32 11, !dbg !4701
  %8 = load %struct.usb_device*, %struct.usb_device** %parent7, align 8, !dbg !4701
  %devnum = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 0, !dbg !4702
  %9 = load i32, i32* %devnum, align 8, !dbg !4702
  %cmp8 = icmp ne i32 %9, -1, !dbg !4703
  br i1 %cmp8, label %if.then9, label %if.end12, !dbg !4704

if.then9:                                         ; preds = %land.lhs.true
  %10 = load %struct.usb_device*, %struct.usb_device** %usbdev.addr, align 8, !dbg !4705
  %parent10 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 11, !dbg !4706
  %11 = load %struct.usb_device*, %struct.usb_device** %parent10, align 8, !dbg !4706
  %devnum11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 0, !dbg !4707
  %12 = load i32, i32* %devnum11, align 8, !dbg !4707
  store i32 %12, i32* %parent_devnum, align 4, !dbg !4708
  br label %if.end12, !dbg !4709

if.end12:                                         ; preds = %if.then9, %land.lhs.true, %if.end5
  %13 = load %struct.usb_device*, %struct.usb_device** %usbdev.addr, align 8, !dbg !4710
  %speed13 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 4, !dbg !4711
  %14 = load i32, i32* %speed13, align 4, !dbg !4711
  switch i32 %14, label %sw.default [
    i32 1, label %sw.bb
    i32 0, label %sw.bb14
    i32 2, label %sw.bb14
    i32 4, label %sw.bb15
    i32 3, label %sw.bb15
    i32 5, label %sw.bb16
    i32 6, label %sw.bb17
  ], !dbg !4712

sw.bb:                                            ; preds = %if.end12
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %speed, align 8, !dbg !4713
  br label %sw.epilog, !dbg !4715

sw.bb14:                                          ; preds = %if.end12, %if.end12
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %speed, align 8, !dbg !4716
  br label %sw.epilog, !dbg !4717

sw.bb15:                                          ; preds = %if.end12, %if.end12
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %speed, align 8, !dbg !4718
  br label %sw.epilog, !dbg !4719

sw.bb16:                                          ; preds = %if.end12
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %speed, align 8, !dbg !4720
  br label %sw.epilog, !dbg !4721

sw.bb17:                                          ; preds = %if.end12
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %speed, align 8, !dbg !4722
  br label %sw.epilog, !dbg !4723

sw.default:                                       ; preds = %if.end12
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %speed, align 8, !dbg !4724
  br label %sw.epilog, !dbg !4725

sw.epilog:                                        ; preds = %sw.default, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb
  %15 = load i8*, i8** %pages_start, align 8, !dbg !4726
  %16 = load i8*, i8** %pages_start, align 8, !dbg !4727
  %17 = load %struct.usb_bus*, %struct.usb_bus** %bus.addr, align 8, !dbg !4728
  %busnum = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %17, i32 0, i32 2, !dbg !4729
  %18 = load i32, i32* %busnum, align 8, !dbg !4729
  %19 = load i32, i32* %level.addr, align 4, !dbg !4730
  %20 = load i32, i32* %parent_devnum, align 4, !dbg !4731
  %21 = load i32, i32* %index.addr, align 4, !dbg !4732
  %22 = load i32, i32* %count.addr, align 4, !dbg !4733
  %23 = load %struct.usb_device*, %struct.usb_device** %usbdev.addr, align 8, !dbg !4734
  %devnum18 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %23, i32 0, i32 0, !dbg !4735
  %24 = load i32, i32* %devnum18, align 8, !dbg !4735
  %25 = load i8*, i8** %speed, align 8, !dbg !4736
  %26 = load %struct.usb_device*, %struct.usb_device** %usbdev.addr, align 8, !dbg !4737
  %maxchild = getelementptr inbounds %struct.usb_device, %struct.usb_device* %26, i32 0, i32 35, !dbg !4738
  %27 = load i32, i32* %maxchild, align 8, !dbg !4738
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @format_topo, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %24, i8* %25, i32 %27) #4, !dbg !4739
  %idx.ext = sext i32 %call19 to i64, !dbg !4740
  %add.ptr = getelementptr i8, i8* %15, i64 %idx.ext, !dbg !4740
  store i8* %add.ptr, i8** %data_end, align 8, !dbg !4741
  %28 = load i32, i32* %level.addr, align 4, !dbg !4742
  %cmp20 = icmp eq i32 %28, 0, !dbg !4744
  br i1 %cmp20, label %if.then21, label %if.end33, !dbg !4745

if.then21:                                        ; preds = %sw.epilog
  call void @llvm.dbg.declare(metadata i32* %max, metadata !4746, metadata !DIExpression()), !dbg !4748
  %29 = load %struct.usb_device*, %struct.usb_device** %usbdev.addr, align 8, !dbg !4749
  %speed22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %29, i32 0, i32 4, !dbg !4751
  %30 = load i32, i32* %speed22, align 4, !dbg !4751
  %cmp23 = icmp eq i32 %30, 3, !dbg !4752
  br i1 %cmp23, label %if.then26, label %lor.lhs.false, !dbg !4753

lor.lhs.false:                                    ; preds = %if.then21
  %31 = load %struct.usb_device*, %struct.usb_device** %usbdev.addr, align 8, !dbg !4754
  %speed24 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 4, !dbg !4755
  %32 = load i32, i32* %speed24, align 4, !dbg !4755
  %cmp25 = icmp uge i32 %32, 5, !dbg !4756
  br i1 %cmp25, label %if.then26, label %if.else, !dbg !4757

if.then26:                                        ; preds = %lor.lhs.false, %if.then21
  store i32 800, i32* %max, align 4, !dbg !4758
  br label %if.end27, !dbg !4759

if.else:                                          ; preds = %lor.lhs.false
  store i32 900, i32* %max, align 4, !dbg !4760
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then26
  %33 = load i8*, i8** %data_end, align 8, !dbg !4761
  %34 = load %struct.usb_bus*, %struct.usb_bus** %bus.addr, align 8, !dbg !4762
  %bandwidth_allocated = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %34, i32 0, i32 13, !dbg !4763
  %35 = load i32, i32* %bandwidth_allocated, align 8, !dbg !4763
  %36 = load i32, i32* %max, align 4, !dbg !4764
  %37 = load %struct.usb_bus*, %struct.usb_bus** %bus.addr, align 8, !dbg !4765
  %bandwidth_allocated28 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %37, i32 0, i32 13, !dbg !4766
  %38 = load i32, i32* %bandwidth_allocated28, align 8, !dbg !4766
  %mul = mul i32 100, %38, !dbg !4767
  %39 = load i32, i32* %max, align 4, !dbg !4768
  %div = sdiv i32 %39, 2, !dbg !4769
  %add = add i32 %mul, %div, !dbg !4770
  %40 = load i32, i32* %max, align 4, !dbg !4771
  %div29 = sdiv i32 %add, %40, !dbg !4772
  %41 = load %struct.usb_bus*, %struct.usb_bus** %bus.addr, align 8, !dbg !4773
  %bandwidth_int_reqs = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %41, i32 0, i32 14, !dbg !4774
  %42 = load i32, i32* %bandwidth_int_reqs, align 4, !dbg !4774
  %43 = load %struct.usb_bus*, %struct.usb_bus** %bus.addr, align 8, !dbg !4775
  %bandwidth_isoc_reqs = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %43, i32 0, i32 15, !dbg !4776
  %44 = load i32, i32* %bandwidth_isoc_reqs, align 8, !dbg !4776
  %call30 = call i32 (i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @format_bandwidth, i64 0, i64 0), i32 %35, i32 %36, i32 %div29, i32 %42, i32 %44) #4, !dbg !4777
  %45 = load i8*, i8** %data_end, align 8, !dbg !4778
  %idx.ext31 = sext i32 %call30 to i64, !dbg !4778
  %add.ptr32 = getelementptr i8, i8* %45, i64 %idx.ext31, !dbg !4778
  store i8* %add.ptr32, i8** %data_end, align 8, !dbg !4778
  br label %if.end33, !dbg !4779

if.end33:                                         ; preds = %if.end27, %sw.epilog
  %46 = load i8*, i8** %data_end, align 8, !dbg !4780
  %47 = load i8*, i8** %pages_start, align 8, !dbg !4781
  %add.ptr34 = getelementptr i8, i8* %47, i64 8192, !dbg !4782
  %add.ptr35 = getelementptr i8, i8* %add.ptr34, i64 -256, !dbg !4783
  %48 = load %struct.usb_device*, %struct.usb_device** %usbdev.addr, align 8, !dbg !4784
  %call36 = call i8* @usb_dump_desc(i8* %46, i8* %add.ptr35, %struct.usb_device* %48) #4, !dbg !4785
  store i8* %call36, i8** %data_end, align 8, !dbg !4786
  %49 = load i8*, i8** %data_end, align 8, !dbg !4787
  %50 = load i8*, i8** %pages_start, align 8, !dbg !4789
  %add.ptr37 = getelementptr i8, i8* %50, i64 8192, !dbg !4790
  %add.ptr38 = getelementptr i8, i8* %add.ptr37, i64 -256, !dbg !4791
  %cmp39 = icmp ugt i8* %49, %add.ptr38, !dbg !4792
  br i1 %cmp39, label %if.then40, label %if.end44, !dbg !4793

if.then40:                                        ; preds = %if.end33
  %51 = load i8*, i8** %data_end, align 8, !dbg !4794
  %call41 = call i32 (i8*, i8*, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0)) #4, !dbg !4795
  %52 = load i8*, i8** %data_end, align 8, !dbg !4796
  %idx.ext42 = sext i32 %call41 to i64, !dbg !4796
  %add.ptr43 = getelementptr i8, i8* %52, i64 %idx.ext42, !dbg !4796
  store i8* %add.ptr43, i8** %data_end, align 8, !dbg !4796
  br label %if.end44, !dbg !4797

if.end44:                                         ; preds = %if.then40, %if.end33
  %53 = load i8*, i8** %data_end, align 8, !dbg !4798
  %54 = load i8*, i8** %pages_start, align 8, !dbg !4799
  %sub.ptr.lhs.cast = ptrtoint i8* %53 to i64, !dbg !4800
  %sub.ptr.rhs.cast = ptrtoint i8* %54 to i64, !dbg !4800
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4800
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !4798
  store i32 %conv, i32* %length, align 4, !dbg !4801
  %55 = load i32, i32* %length, align 4, !dbg !4802
  %conv45 = zext i32 %55 to i64, !dbg !4802
  %56 = load i64*, i64** %skip_bytes.addr, align 8, !dbg !4803
  %57 = load i64, i64* %56, align 8, !dbg !4804
  %cmp46 = icmp sgt i64 %conv45, %57, !dbg !4805
  br i1 %cmp46, label %if.then48, label %if.else71, !dbg !4806

if.then48:                                        ; preds = %if.end44
  %58 = load i64*, i64** %skip_bytes.addr, align 8, !dbg !4807
  %59 = load i64, i64* %58, align 8, !dbg !4808
  %60 = load i32, i32* %length, align 4, !dbg !4809
  %conv49 = zext i32 %60 to i64, !dbg !4809
  %sub = sub i64 %conv49, %59, !dbg !4809
  %conv50 = trunc i64 %sub to i32, !dbg !4809
  store i32 %conv50, i32* %length, align 4, !dbg !4809
  %61 = load i32, i32* %length, align 4, !dbg !4810
  %conv51 = zext i32 %61 to i64, !dbg !4810
  %62 = load i64*, i64** %nbytes.addr, align 8, !dbg !4812
  %63 = load i64, i64* %62, align 8, !dbg !4813
  %cmp52 = icmp ugt i64 %conv51, %63, !dbg !4814
  br i1 %cmp52, label %if.then54, label %if.end56, !dbg !4815

if.then54:                                        ; preds = %if.then48
  %64 = load i64*, i64** %nbytes.addr, align 8, !dbg !4816
  %65 = load i64, i64* %64, align 8, !dbg !4817
  %conv55 = trunc i64 %65 to i32, !dbg !4817
  store i32 %conv55, i32* %length, align 4, !dbg !4818
  br label %if.end56, !dbg !4819

if.end56:                                         ; preds = %if.then54, %if.then48
  %66 = load i8**, i8*** %buffer.addr, align 8, !dbg !4820
  %67 = load i8*, i8** %66, align 8, !dbg !4821
  %68 = load i8*, i8** %pages_start, align 8, !dbg !4822
  %69 = load i64*, i64** %skip_bytes.addr, align 8, !dbg !4823
  %70 = load i64, i64* %69, align 8, !dbg !4824
  %add.ptr57 = getelementptr i8, i8* %68, i64 %70, !dbg !4825
  %71 = load i32, i32* %length, align 4, !dbg !4826
  %conv58 = zext i32 %71 to i64, !dbg !4826
  store i8* %67, i8** %to.addr.i, align 8
  store i8* %add.ptr57, i8** %from.addr.i, align 8
  store i64 %conv58, i64* %n.addr.i, align 8
  %72 = load i8*, i8** %from.addr.i, align 8, !dbg !4827
  %73 = load i64, i64* %n.addr.i, align 8, !dbg !4827
  store i8* %72, i8** %addr.addr.i.i, align 8
  store i64 %73, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !4629
  %74 = load i32, i32* %sz.i.i, align 4, !dbg !4828
  %cmp.i.i = icmp sge i32 %74, 0, !dbg !4828
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !4828

land.rhs.i.i:                                     ; preds = %if.end56
  %75 = load i32, i32* %sz.i.i, align 4, !dbg !4828
  %conv.i.i = sext i32 %75 to i64, !dbg !4828
  %76 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4828
  %cmp1.i.i = icmp ult i64 %conv.i.i, %76, !dbg !4828
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %if.end56
  %77 = phi i1 [ false, %if.end56 ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !4830
  %lnot.i.i = xor i1 %77, true, !dbg !4828
  %lnot.ext.i.i = zext i1 %77 to i32, !dbg !4828
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4828
  br i1 %77, label %if.then.i.i, label %if.end10.i.i, !dbg !4831

if.then.i.i:                                      ; preds = %land.end.i.i
  %78 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4832
  %79 = call i1 @llvm.is.constant.i64(i64 %78) #5, !dbg !4835
  br i1 %79, label %if.else.i.i, label %if.then5.i.i, !dbg !4836

if.then5.i.i:                                     ; preds = %if.then.i.i
  %80 = load i32, i32* %sz.i.i, align 4, !dbg !4837
  %81 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4838
  call void @copy_overflow(i32 %80, i64 %81) #6, !dbg !4839
  br label %if.end9.i.i, !dbg !4839

if.else.i.i:                                      ; preds = %if.then.i.i
  %82 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4840
  %tobool6.i.i = trunc i8 %82 to i1, !dbg !4840
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !4842

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #6, !dbg !4843
  br label %if.end.i.i, !dbg !4843

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #6, !dbg !4844
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4845
  br label %check_copy_size.exit.i, !dbg !4845

if.end10.i.i:                                     ; preds = %land.end.i.i
  %83 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4633
  %cmp11.i.i = icmp ugt i64 %83, 2147483647, !dbg !4633
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !4633
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !4633
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !4633
  %84 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4846
  %tobool17.i.i = icmp ne i32 %84, 0, !dbg !4846
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !4846
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !4846
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !4846
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !4633

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i64 0, i64 0), i32 150, i32 2307, i64 12) #5, !dbg !4848, !srcloc !4851
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #5, !dbg !4852, !srcloc !4854
  br label %if.end31.i.i, !dbg !4855

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %85 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4633
  %tobool32.i.i = icmp ne i32 %85, 0, !dbg !4633
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !4633
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !4633
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !4633
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !4846
  %86 = load i64, i64* %tmp.i.i, align 8, !dbg !4633
  %tobool38.i.i = icmp ne i64 %86, 0, !dbg !4856
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !4857

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !4858
  br label %check_copy_size.exit.i, !dbg !4858

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %87 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !4859
  %88 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4860
  %89 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !4861
  %tobool41.i.i = trunc i8 %89 to i1, !dbg !4861
  call void @check_object_size(i8* %87, i64 %88, i1 zeroext %tobool41.i.i) #6, !dbg !4862
  store i1 true, i1* %retval.i.i, align 1, !dbg !4863
  br label %check_copy_size.exit.i, !dbg !4863

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %90 = load i1, i1* %retval.i.i, align 1, !dbg !4864
  %lnot.i = xor i1 %90, true, !dbg !4827
  %lnot.ext.i = zext i1 %90 to i32, !dbg !4827
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !4827
  br i1 %90, label %if.then.i, label %copy_to_user.exit, !dbg !4865

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %91 = load i8*, i8** %to.addr.i, align 8, !dbg !4866
  %92 = load i8*, i8** %from.addr.i, align 8, !dbg !4867
  %93 = load i64, i64* %n.addr.i, align 8, !dbg !4868
  %call2.i = call i64 @_copy_to_user(i8* %91, i8* %92, i64 %93) #6, !dbg !4869
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !4870
  br label %copy_to_user.exit, !dbg !4871

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %94 = load i64, i64* %n.addr.i, align 8, !dbg !4872
  %tobool60 = icmp ne i64 %94, 0, !dbg !4873
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !4874

if.then61:                                        ; preds = %copy_to_user.exit
  %95 = load i8*, i8** %pages_start, align 8, !dbg !4875
  %96 = ptrtoint i8* %95 to i64, !dbg !4877
  call void @free_pages(i64 %96, i32 1) #4, !dbg !4878
  store i64 -14, i64* %retval, align 8, !dbg !4879
  br label %return, !dbg !4879

if.end62:                                         ; preds = %copy_to_user.exit
  %97 = load i32, i32* %length, align 4, !dbg !4880
  %conv63 = zext i32 %97 to i64, !dbg !4880
  %98 = load i64*, i64** %nbytes.addr, align 8, !dbg !4881
  %99 = load i64, i64* %98, align 8, !dbg !4882
  %sub64 = sub i64 %99, %conv63, !dbg !4882
  store i64 %sub64, i64* %98, align 8, !dbg !4882
  %100 = load i32, i32* %length, align 4, !dbg !4883
  %conv65 = zext i32 %100 to i64, !dbg !4883
  %101 = load i64*, i64** %file_offset.addr, align 8, !dbg !4884
  %102 = load i64, i64* %101, align 8, !dbg !4885
  %add66 = add i64 %102, %conv65, !dbg !4885
  store i64 %add66, i64* %101, align 8, !dbg !4885
  %103 = load i32, i32* %length, align 4, !dbg !4886
  %conv67 = zext i32 %103 to i64, !dbg !4886
  %104 = load i64, i64* %total_written, align 8, !dbg !4887
  %add68 = add i64 %104, %conv67, !dbg !4887
  store i64 %add68, i64* %total_written, align 8, !dbg !4887
  %105 = load i32, i32* %length, align 4, !dbg !4888
  %106 = load i8**, i8*** %buffer.addr, align 8, !dbg !4889
  %107 = load i8*, i8** %106, align 8, !dbg !4890
  %idx.ext69 = zext i32 %105 to i64, !dbg !4890
  %add.ptr70 = getelementptr i8, i8* %107, i64 %idx.ext69, !dbg !4890
  store i8* %add.ptr70, i8** %106, align 8, !dbg !4890
  %108 = load i64*, i64** %skip_bytes.addr, align 8, !dbg !4891
  store i64 0, i64* %108, align 8, !dbg !4892
  br label %if.end74, !dbg !4893

if.else71:                                        ; preds = %if.end44
  %109 = load i32, i32* %length, align 4, !dbg !4894
  %conv72 = zext i32 %109 to i64, !dbg !4894
  %110 = load i64*, i64** %skip_bytes.addr, align 8, !dbg !4895
  %111 = load i64, i64* %110, align 8, !dbg !4896
  %sub73 = sub i64 %111, %conv72, !dbg !4896
  store i64 %sub73, i64* %110, align 8, !dbg !4896
  br label %if.end74

if.end74:                                         ; preds = %if.else71, %if.end62
  %112 = load i8*, i8** %pages_start, align 8, !dbg !4897
  %113 = ptrtoint i8* %112 to i64, !dbg !4898
  call void @free_pages(i64 %113, i32 1) #4, !dbg !4899
  store i32 1, i32* %chix, align 4, !dbg !4900
  %114 = load %struct.usb_device*, %struct.usb_device** %usbdev.addr, align 8, !dbg !4900
  %115 = load i32, i32* %chix, align 4, !dbg !4900
  %call75 = call %struct.usb_device* @usb_hub_find_child(%struct.usb_device* %114, i32 %115) #4, !dbg !4900
  store %struct.usb_device* %call75, %struct.usb_device** %childdev, align 8, !dbg !4900
  br label %for.cond, !dbg !4900

for.cond:                                         ; preds = %for.inc, %if.end74
  %116 = load i32, i32* %chix, align 4, !dbg !4902
  %117 = load %struct.usb_device*, %struct.usb_device** %usbdev.addr, align 8, !dbg !4902
  %maxchild76 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %117, i32 0, i32 35, !dbg !4902
  %118 = load i32, i32* %maxchild76, align 8, !dbg !4902
  %cmp77 = icmp sle i32 %116, %118, !dbg !4902
  br i1 %cmp77, label %for.body, label %for.end, !dbg !4900

for.body:                                         ; preds = %for.cond
  %119 = load %struct.usb_device*, %struct.usb_device** %childdev, align 8, !dbg !4904
  %tobool79 = icmp ne %struct.usb_device* %119, null, !dbg !4904
  br i1 %tobool79, label %if.else81, label %if.then80, !dbg !4902

if.then80:                                        ; preds = %for.body
  br label %for.inc, !dbg !4904

if.else81:                                        ; preds = %for.body
  %120 = load %struct.usb_device*, %struct.usb_device** %childdev, align 8, !dbg !4906
  %dev = getelementptr inbounds %struct.usb_device, %struct.usb_device* %120, i32 0, i32 14, !dbg !4906
  call void @device_lock(%struct.device* %dev) #4, !dbg !4906
  %121 = load i8**, i8*** %buffer.addr, align 8, !dbg !4908
  %122 = load i64*, i64** %nbytes.addr, align 8, !dbg !4909
  %123 = load i64*, i64** %skip_bytes.addr, align 8, !dbg !4910
  %124 = load i64*, i64** %file_offset.addr, align 8, !dbg !4911
  %125 = load %struct.usb_device*, %struct.usb_device** %childdev, align 8, !dbg !4912
  %126 = load %struct.usb_bus*, %struct.usb_bus** %bus.addr, align 8, !dbg !4913
  %127 = load i32, i32* %level.addr, align 4, !dbg !4914
  %add82 = add i32 %127, 1, !dbg !4915
  %128 = load i32, i32* %chix, align 4, !dbg !4916
  %sub83 = sub i32 %128, 1, !dbg !4917
  %129 = load i32, i32* %cnt, align 4, !dbg !4918
  %inc = add i32 %129, 1, !dbg !4918
  store i32 %inc, i32* %cnt, align 4, !dbg !4918
  %call84 = call i64 @usb_device_dump(i8** %121, i64* %122, i64* %123, i64* %124, %struct.usb_device* %125, %struct.usb_bus* %126, i32 %add82, i32 %sub83, i32 %inc) #4, !dbg !4919
  %conv85 = trunc i64 %call84 to i32, !dbg !4919
  store i32 %conv85, i32* %ret, align 4, !dbg !4920
  %130 = load %struct.usb_device*, %struct.usb_device** %childdev, align 8, !dbg !4921
  %dev86 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %130, i32 0, i32 14, !dbg !4921
  call void @device_unlock(%struct.device* %dev86) #4, !dbg !4921
  %131 = load i32, i32* %ret, align 4, !dbg !4922
  %cmp87 = icmp eq i32 %131, -14, !dbg !4924
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !4925

if.then89:                                        ; preds = %if.else81
  %132 = load i64, i64* %total_written, align 8, !dbg !4926
  store i64 %132, i64* %retval, align 8, !dbg !4927
  br label %return, !dbg !4927

if.end90:                                         ; preds = %if.else81
  %133 = load i32, i32* %ret, align 4, !dbg !4928
  %conv91 = sext i32 %133 to i64, !dbg !4928
  %134 = load i64, i64* %total_written, align 8, !dbg !4929
  %add92 = add i64 %134, %conv91, !dbg !4929
  store i64 %add92, i64* %total_written, align 8, !dbg !4929
  br label %if.end93

if.end93:                                         ; preds = %if.end90
  br label %for.inc, !dbg !4904

for.inc:                                          ; preds = %if.end93, %if.then80
  %135 = load %struct.usb_device*, %struct.usb_device** %usbdev.addr, align 8, !dbg !4902
  %136 = load i32, i32* %chix, align 4, !dbg !4902
  %inc94 = add i32 %136, 1, !dbg !4902
  store i32 %inc94, i32* %chix, align 4, !dbg !4902
  %call95 = call %struct.usb_device* @usb_hub_find_child(%struct.usb_device* %135, i32 %inc94) #4, !dbg !4902
  store %struct.usb_device* %call95, %struct.usb_device** %childdev, align 8, !dbg !4902
  br label %for.cond, !dbg !4902, !llvm.loop !4930

for.end:                                          ; preds = %for.cond
  %137 = load i64, i64* %total_written, align 8, !dbg !4932
  store i64 %137, i64* %retval, align 8, !dbg !4933
  br label %return, !dbg !4933

return:                                           ; preds = %for.end, %if.then89, %if.then61, %if.then4, %if.then2, %if.then
  %138 = load i64, i64* %retval, align 8, !dbg !4934
  ret i64 %138, !dbg !4934
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @device_unlock(%struct.device* %dev) #1 !dbg !4935 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4936, metadata !DIExpression()), !dbg !4937
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4938
  %mutex = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 9, !dbg !4939
  call void @mutex_unlock(%struct.mutex* %mutex) #4, !dbg !4940
  ret void, !dbg !4941
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #0

; Function Attrs: noredzone
declare dso_local i64 @__get_free_pages(i32, i32) #0

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #0

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_dump_desc(i8* %start, i8* %end, %struct.usb_device* %dev) #1 !dbg !4942 {
entry:
  %retval = alloca i8*, align 8
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.usb_device*, align 8
  %i = alloca i32, align 4
  store i8* %start, i8** %start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %start.addr, metadata !4945, metadata !DIExpression()), !dbg !4946
  store i8* %end, i8** %end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !4947, metadata !DIExpression()), !dbg !4948
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !4949, metadata !DIExpression()), !dbg !4950
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4951, metadata !DIExpression()), !dbg !4952
  %0 = load i8*, i8** %start.addr, align 8, !dbg !4953
  %1 = load i8*, i8** %end.addr, align 8, !dbg !4955
  %cmp = icmp ugt i8* %0, %1, !dbg !4956
  br i1 %cmp, label %if.then, label %if.end, !dbg !4957

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %start.addr, align 8, !dbg !4958
  store i8* %2, i8** %retval, align 8, !dbg !4959
  br label %return, !dbg !4959

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %start.addr, align 8, !dbg !4960
  %4 = load i8*, i8** %end.addr, align 8, !dbg !4961
  %5 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4962
  %descriptor = getelementptr inbounds %struct.usb_device, %struct.usb_device* %5, i32 0, i32 15, !dbg !4963
  %call = call i8* @usb_dump_device_descriptor(i8* %3, i8* %4, %struct.usb_device_descriptor* %descriptor) #4, !dbg !4964
  store i8* %call, i8** %start.addr, align 8, !dbg !4965
  %6 = load i8*, i8** %start.addr, align 8, !dbg !4966
  %7 = load i8*, i8** %end.addr, align 8, !dbg !4968
  %cmp1 = icmp ugt i8* %6, %7, !dbg !4969
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !4970

if.then2:                                         ; preds = %if.end
  %8 = load i8*, i8** %start.addr, align 8, !dbg !4971
  store i8* %8, i8** %retval, align 8, !dbg !4972
  br label %return, !dbg !4972

if.end3:                                          ; preds = %if.end
  %9 = load i8*, i8** %start.addr, align 8, !dbg !4973
  %10 = load i8*, i8** %end.addr, align 8, !dbg !4974
  %11 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4975
  %call4 = call i8* @usb_dump_device_strings(i8* %9, i8* %10, %struct.usb_device* %11) #4, !dbg !4976
  store i8* %call4, i8** %start.addr, align 8, !dbg !4977
  store i32 0, i32* %i, align 4, !dbg !4978
  br label %for.cond, !dbg !4980

for.cond:                                         ; preds = %for.inc, %if.end3
  %12 = load i32, i32* %i, align 4, !dbg !4981
  %13 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4983
  %descriptor5 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %13, i32 0, i32 15, !dbg !4984
  %bNumConfigurations = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %descriptor5, i32 0, i32 13, !dbg !4985
  %14 = load i8, i8* %bNumConfigurations, align 1, !dbg !4985
  %conv = zext i8 %14 to i32, !dbg !4983
  %cmp6 = icmp slt i32 %12, %conv, !dbg !4986
  br i1 %cmp6, label %for.body, label %for.end, !dbg !4987

for.body:                                         ; preds = %for.cond
  %15 = load i8*, i8** %start.addr, align 8, !dbg !4988
  %16 = load i8*, i8** %end.addr, align 8, !dbg !4991
  %cmp8 = icmp ugt i8* %15, %16, !dbg !4992
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !4993

if.then10:                                        ; preds = %for.body
  %17 = load i8*, i8** %start.addr, align 8, !dbg !4994
  store i8* %17, i8** %retval, align 8, !dbg !4995
  br label %return, !dbg !4995

if.end11:                                         ; preds = %for.body
  %18 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !4996
  %speed = getelementptr inbounds %struct.usb_device, %struct.usb_device* %18, i32 0, i32 4, !dbg !4997
  %19 = load i32, i32* %speed, align 4, !dbg !4997
  %20 = load i8*, i8** %start.addr, align 8, !dbg !4998
  %21 = load i8*, i8** %end.addr, align 8, !dbg !4999
  %22 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5000
  %config = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 18, !dbg !5001
  %23 = load %struct.usb_host_config*, %struct.usb_host_config** %config, align 8, !dbg !5001
  %24 = load i32, i32* %i, align 4, !dbg !5002
  %idx.ext = sext i32 %24 to i64, !dbg !5003
  %add.ptr = getelementptr %struct.usb_host_config, %struct.usb_host_config* %23, i64 %idx.ext, !dbg !5003
  %25 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5004
  %config12 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 18, !dbg !5005
  %26 = load %struct.usb_host_config*, %struct.usb_host_config** %config12, align 8, !dbg !5005
  %27 = load i32, i32* %i, align 4, !dbg !5006
  %idx.ext13 = sext i32 %27 to i64, !dbg !5007
  %add.ptr14 = getelementptr %struct.usb_host_config, %struct.usb_host_config* %26, i64 %idx.ext13, !dbg !5007
  %28 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5008
  %actconfig = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 19, !dbg !5009
  %29 = load %struct.usb_host_config*, %struct.usb_host_config** %actconfig, align 8, !dbg !5009
  %cmp15 = icmp eq %struct.usb_host_config* %add.ptr14, %29, !dbg !5010
  %conv16 = zext i1 %cmp15 to i32, !dbg !5010
  %call17 = call i8* @usb_dump_config(i32 %19, i8* %20, i8* %21, %struct.usb_host_config* %add.ptr, i32 %conv16) #4, !dbg !5011
  store i8* %call17, i8** %start.addr, align 8, !dbg !5012
  br label %for.inc, !dbg !5013

for.inc:                                          ; preds = %if.end11
  %30 = load i32, i32* %i, align 4, !dbg !5014
  %inc = add i32 %30, 1, !dbg !5014
  store i32 %inc, i32* %i, align 4, !dbg !5014
  br label %for.cond, !dbg !5015, !llvm.loop !5016

for.end:                                          ; preds = %for.cond
  %31 = load i8*, i8** %start.addr, align 8, !dbg !5018
  store i8* %31, i8** %retval, align 8, !dbg !5019
  br label %return, !dbg !5019

return:                                           ; preds = %for.end, %if.then10, %if.then2, %if.then
  %32 = load i8*, i8** %retval, align 8, !dbg !5020
  ret i8* %32, !dbg !5020
}

; Function Attrs: noredzone
declare dso_local void @free_pages(i64, i32) #0

; Function Attrs: noredzone
declare dso_local %struct.usb_device* @usb_hub_find_child(%struct.usb_device*, i32) #0

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_dump_device_descriptor(i8* %start, i8* %end, %struct.usb_device_descriptor* %desc) #1 !dbg !5021 {
entry:
  %retval = alloca i8*, align 8
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %desc.addr = alloca %struct.usb_device_descriptor*, align 8
  %bcdUSB = alloca i16, align 2
  %bcdDevice = alloca i16, align 2
  store i8* %start, i8** %start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %start.addr, metadata !5026, metadata !DIExpression()), !dbg !5027
  store i8* %end, i8** %end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !5028, metadata !DIExpression()), !dbg !5029
  store %struct.usb_device_descriptor* %desc, %struct.usb_device_descriptor** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device_descriptor** %desc.addr, metadata !5030, metadata !DIExpression()), !dbg !5031
  call void @llvm.dbg.declare(metadata i16* %bcdUSB, metadata !5032, metadata !DIExpression()), !dbg !5033
  %0 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %desc.addr, align 8, !dbg !5034
  %bcdUSB1 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %0, i32 0, i32 2, !dbg !5034
  %1 = load i16, i16* %bcdUSB1, align 1, !dbg !5034
  store i16 %1, i16* %bcdUSB, align 2, !dbg !5033
  call void @llvm.dbg.declare(metadata i16* %bcdDevice, metadata !5035, metadata !DIExpression()), !dbg !5036
  %2 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %desc.addr, align 8, !dbg !5037
  %bcdDevice2 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %2, i32 0, i32 9, !dbg !5037
  %3 = load i16, i16* %bcdDevice2, align 1, !dbg !5037
  store i16 %3, i16* %bcdDevice, align 2, !dbg !5036
  %4 = load i8*, i8** %start.addr, align 8, !dbg !5038
  %5 = load i8*, i8** %end.addr, align 8, !dbg !5040
  %cmp = icmp ugt i8* %4, %5, !dbg !5041
  br i1 %cmp, label %if.then, label %if.end, !dbg !5042

if.then:                                          ; preds = %entry
  %6 = load i8*, i8** %start.addr, align 8, !dbg !5043
  store i8* %6, i8** %retval, align 8, !dbg !5044
  br label %return, !dbg !5044

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %start.addr, align 8, !dbg !5045
  %8 = load i16, i16* %bcdUSB, align 2, !dbg !5046
  %conv = zext i16 %8 to i32, !dbg !5046
  %shr = ashr i32 %conv, 8, !dbg !5047
  %9 = load i16, i16* %bcdUSB, align 2, !dbg !5048
  %conv3 = zext i16 %9 to i32, !dbg !5048
  %and = and i32 %conv3, 255, !dbg !5049
  %10 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %desc.addr, align 8, !dbg !5050
  %bDeviceClass = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %10, i32 0, i32 3, !dbg !5051
  %11 = load i8, i8* %bDeviceClass, align 1, !dbg !5051
  %conv4 = zext i8 %11 to i32, !dbg !5050
  %12 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %desc.addr, align 8, !dbg !5052
  %bDeviceClass5 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %12, i32 0, i32 3, !dbg !5053
  %13 = load i8, i8* %bDeviceClass5, align 1, !dbg !5053
  %conv6 = zext i8 %13 to i32, !dbg !5052
  %call = call i8* @class_decode(i32 %conv6) #4, !dbg !5054
  %14 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %desc.addr, align 8, !dbg !5055
  %bDeviceSubClass = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %14, i32 0, i32 4, !dbg !5056
  %15 = load i8, i8* %bDeviceSubClass, align 1, !dbg !5056
  %conv7 = zext i8 %15 to i32, !dbg !5055
  %16 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %desc.addr, align 8, !dbg !5057
  %bDeviceProtocol = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %16, i32 0, i32 5, !dbg !5058
  %17 = load i8, i8* %bDeviceProtocol, align 1, !dbg !5058
  %conv8 = zext i8 %17 to i32, !dbg !5057
  %18 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %desc.addr, align 8, !dbg !5059
  %bMaxPacketSize0 = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %18, i32 0, i32 6, !dbg !5060
  %19 = load i8, i8* %bMaxPacketSize0, align 1, !dbg !5060
  %conv9 = zext i8 %19 to i32, !dbg !5059
  %20 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %desc.addr, align 8, !dbg !5061
  %bNumConfigurations = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %20, i32 0, i32 13, !dbg !5062
  %21 = load i8, i8* %bNumConfigurations, align 1, !dbg !5062
  %conv10 = zext i8 %21 to i32, !dbg !5061
  %call11 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @format_device1, i64 0, i64 0), i32 %shr, i32 %and, i32 %conv4, i8* %call, i32 %conv7, i32 %conv8, i32 %conv9, i32 %conv10) #4, !dbg !5063
  %22 = load i8*, i8** %start.addr, align 8, !dbg !5064
  %idx.ext = sext i32 %call11 to i64, !dbg !5064
  %add.ptr = getelementptr i8, i8* %22, i64 %idx.ext, !dbg !5064
  store i8* %add.ptr, i8** %start.addr, align 8, !dbg !5064
  %23 = load i8*, i8** %start.addr, align 8, !dbg !5065
  %24 = load i8*, i8** %end.addr, align 8, !dbg !5067
  %cmp12 = icmp ugt i8* %23, %24, !dbg !5068
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !5069

if.then14:                                        ; preds = %if.end
  %25 = load i8*, i8** %start.addr, align 8, !dbg !5070
  store i8* %25, i8** %retval, align 8, !dbg !5071
  br label %return, !dbg !5071

if.end15:                                         ; preds = %if.end
  %26 = load i8*, i8** %start.addr, align 8, !dbg !5072
  %27 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %desc.addr, align 8, !dbg !5073
  %idVendor = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %27, i32 0, i32 7, !dbg !5073
  %28 = load i16, i16* %idVendor, align 1, !dbg !5073
  %conv16 = zext i16 %28 to i32, !dbg !5073
  %29 = load %struct.usb_device_descriptor*, %struct.usb_device_descriptor** %desc.addr, align 8, !dbg !5074
  %idProduct = getelementptr inbounds %struct.usb_device_descriptor, %struct.usb_device_descriptor* %29, i32 0, i32 8, !dbg !5074
  %30 = load i16, i16* %idProduct, align 1, !dbg !5074
  %conv17 = zext i16 %30 to i32, !dbg !5074
  %31 = load i16, i16* %bcdDevice, align 2, !dbg !5075
  %conv18 = zext i16 %31 to i32, !dbg !5075
  %shr19 = ashr i32 %conv18, 8, !dbg !5076
  %32 = load i16, i16* %bcdDevice, align 2, !dbg !5077
  %conv20 = zext i16 %32 to i32, !dbg !5077
  %and21 = and i32 %conv20, 255, !dbg !5078
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @format_device2, i64 0, i64 0), i32 %conv16, i32 %conv17, i32 %shr19, i32 %and21) #4, !dbg !5079
  %33 = load i8*, i8** %start.addr, align 8, !dbg !5080
  %idx.ext23 = sext i32 %call22 to i64, !dbg !5080
  %add.ptr24 = getelementptr i8, i8* %33, i64 %idx.ext23, !dbg !5080
  store i8* %add.ptr24, i8** %start.addr, align 8, !dbg !5080
  %34 = load i8*, i8** %start.addr, align 8, !dbg !5081
  store i8* %34, i8** %retval, align 8, !dbg !5082
  br label %return, !dbg !5082

return:                                           ; preds = %if.end15, %if.then14, %if.then
  %35 = load i8*, i8** %retval, align 8, !dbg !5083
  ret i8* %35, !dbg !5083
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_dump_device_strings(i8* %start, i8* %end, %struct.usb_device* %dev) #1 !dbg !5084 {
entry:
  %retval = alloca i8*, align 8
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.usb_device*, align 8
  store i8* %start, i8** %start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %start.addr, metadata !5085, metadata !DIExpression()), !dbg !5086
  store i8* %end, i8** %end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  store %struct.usb_device* %dev, %struct.usb_device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_device** %dev.addr, metadata !5089, metadata !DIExpression()), !dbg !5090
  %0 = load i8*, i8** %start.addr, align 8, !dbg !5091
  %1 = load i8*, i8** %end.addr, align 8, !dbg !5093
  %cmp = icmp ugt i8* %0, %1, !dbg !5094
  br i1 %cmp, label %if.then, label %if.end, !dbg !5095

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %start.addr, align 8, !dbg !5096
  store i8* %2, i8** %retval, align 8, !dbg !5097
  br label %return, !dbg !5097

if.end:                                           ; preds = %entry
  %3 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5098
  %manufacturer = getelementptr inbounds %struct.usb_device, %struct.usb_device* %3, i32 0, i32 32, !dbg !5100
  %4 = load i8*, i8** %manufacturer, align 8, !dbg !5100
  %tobool = icmp ne i8* %4, null, !dbg !5098
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !5101

if.then1:                                         ; preds = %if.end
  %5 = load i8*, i8** %start.addr, align 8, !dbg !5102
  %6 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5103
  %manufacturer2 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %6, i32 0, i32 32, !dbg !5104
  %7 = load i8*, i8** %manufacturer2, align 8, !dbg !5104
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @format_string_manufacturer, i64 0, i64 0), i8* %7) #4, !dbg !5105
  %8 = load i8*, i8** %start.addr, align 8, !dbg !5106
  %idx.ext = sext i32 %call to i64, !dbg !5106
  %add.ptr = getelementptr i8, i8* %8, i64 %idx.ext, !dbg !5106
  store i8* %add.ptr, i8** %start.addr, align 8, !dbg !5106
  br label %if.end3, !dbg !5107

if.end3:                                          ; preds = %if.then1, %if.end
  %9 = load i8*, i8** %start.addr, align 8, !dbg !5108
  %10 = load i8*, i8** %end.addr, align 8, !dbg !5110
  %cmp4 = icmp ugt i8* %9, %10, !dbg !5111
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5112

if.then5:                                         ; preds = %if.end3
  br label %out, !dbg !5113

if.end6:                                          ; preds = %if.end3
  %11 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5114
  %product = getelementptr inbounds %struct.usb_device, %struct.usb_device* %11, i32 0, i32 31, !dbg !5116
  %12 = load i8*, i8** %product, align 8, !dbg !5116
  %tobool7 = icmp ne i8* %12, null, !dbg !5114
  br i1 %tobool7, label %if.then8, label %if.end13, !dbg !5117

if.then8:                                         ; preds = %if.end6
  %13 = load i8*, i8** %start.addr, align 8, !dbg !5118
  %14 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5119
  %product9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %14, i32 0, i32 31, !dbg !5120
  %15 = load i8*, i8** %product9, align 8, !dbg !5120
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @format_string_product, i64 0, i64 0), i8* %15) #4, !dbg !5121
  %16 = load i8*, i8** %start.addr, align 8, !dbg !5122
  %idx.ext11 = sext i32 %call10 to i64, !dbg !5122
  %add.ptr12 = getelementptr i8, i8* %16, i64 %idx.ext11, !dbg !5122
  store i8* %add.ptr12, i8** %start.addr, align 8, !dbg !5122
  br label %if.end13, !dbg !5123

if.end13:                                         ; preds = %if.then8, %if.end6
  %17 = load i8*, i8** %start.addr, align 8, !dbg !5124
  %18 = load i8*, i8** %end.addr, align 8, !dbg !5126
  %cmp14 = icmp ugt i8* %17, %18, !dbg !5127
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !5128

if.then15:                                        ; preds = %if.end13
  br label %out, !dbg !5129

if.end16:                                         ; preds = %if.end13
  %19 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5130
  %serial = getelementptr inbounds %struct.usb_device, %struct.usb_device* %19, i32 0, i32 33, !dbg !5132
  %20 = load i8*, i8** %serial, align 8, !dbg !5132
  %tobool17 = icmp ne i8* %20, null, !dbg !5130
  br i1 %tobool17, label %if.then18, label %if.end23, !dbg !5133

if.then18:                                        ; preds = %if.end16
  %21 = load i8*, i8** %start.addr, align 8, !dbg !5134
  %22 = load %struct.usb_device*, %struct.usb_device** %dev.addr, align 8, !dbg !5135
  %serial19 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 33, !dbg !5136
  %23 = load i8*, i8** %serial19, align 8, !dbg !5136
  %call20 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @format_string_serialnumber, i64 0, i64 0), i8* %23) #4, !dbg !5137
  %24 = load i8*, i8** %start.addr, align 8, !dbg !5138
  %idx.ext21 = sext i32 %call20 to i64, !dbg !5138
  %add.ptr22 = getelementptr i8, i8* %24, i64 %idx.ext21, !dbg !5138
  store i8* %add.ptr22, i8** %start.addr, align 8, !dbg !5138
  br label %if.end23, !dbg !5139

if.end23:                                         ; preds = %if.then18, %if.end16
  br label %out, !dbg !5132

out:                                              ; preds = %if.end23, %if.then15, %if.then5
  call void @llvm.dbg.label(metadata !5140), !dbg !5141
  %25 = load i8*, i8** %start.addr, align 8, !dbg !5142
  store i8* %25, i8** %retval, align 8, !dbg !5143
  br label %return, !dbg !5143

return:                                           ; preds = %out, %if.then
  %26 = load i8*, i8** %retval, align 8, !dbg !5144
  ret i8* %26, !dbg !5144
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_dump_config(i32 %speed, i8* %start, i8* %end, %struct.usb_host_config* %config, i32 %active) #1 !dbg !5145 {
entry:
  %retval = alloca i8*, align 8
  %speed.addr = alloca i32, align 4
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %config.addr = alloca %struct.usb_host_config*, align 8
  %active.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %intfc = alloca %struct.usb_interface_cache*, align 8
  %interface = alloca %struct.usb_interface*, align 8
  store i32 %speed, i32* %speed.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %speed.addr, metadata !5150, metadata !DIExpression()), !dbg !5151
  store i8* %start, i8** %start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %start.addr, metadata !5152, metadata !DIExpression()), !dbg !5153
  store i8* %end, i8** %end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !5154, metadata !DIExpression()), !dbg !5155
  store %struct.usb_host_config* %config, %struct.usb_host_config** %config.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_host_config** %config.addr, metadata !5156, metadata !DIExpression()), !dbg !5157
  store i32 %active, i32* %active.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %active.addr, metadata !5158, metadata !DIExpression()), !dbg !5159
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5160, metadata !DIExpression()), !dbg !5161
  call void @llvm.dbg.declare(metadata i32* %j, metadata !5162, metadata !DIExpression()), !dbg !5163
  call void @llvm.dbg.declare(metadata %struct.usb_interface_cache** %intfc, metadata !5164, metadata !DIExpression()), !dbg !5165
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %interface, metadata !5166, metadata !DIExpression()), !dbg !5167
  %0 = load i8*, i8** %start.addr, align 8, !dbg !5168
  %1 = load i8*, i8** %end.addr, align 8, !dbg !5170
  %cmp = icmp ugt i8* %0, %1, !dbg !5171
  br i1 %cmp, label %if.then, label %if.end, !dbg !5172

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %start.addr, align 8, !dbg !5173
  store i8* %2, i8** %retval, align 8, !dbg !5174
  br label %return, !dbg !5174

if.end:                                           ; preds = %entry
  %3 = load %struct.usb_host_config*, %struct.usb_host_config** %config.addr, align 8, !dbg !5175
  %tobool = icmp ne %struct.usb_host_config* %3, null, !dbg !5175
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !5177

if.then1:                                         ; preds = %if.end
  %4 = load i8*, i8** %start.addr, align 8, !dbg !5178
  %5 = load i8*, i8** %start.addr, align 8, !dbg !5179
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0)) #4, !dbg !5180
  %idx.ext = sext i32 %call to i64, !dbg !5181
  %add.ptr = getelementptr i8, i8* %4, i64 %idx.ext, !dbg !5181
  store i8* %add.ptr, i8** %retval, align 8, !dbg !5182
  br label %return, !dbg !5182

if.end2:                                          ; preds = %if.end
  %6 = load i8*, i8** %start.addr, align 8, !dbg !5183
  %7 = load i8*, i8** %end.addr, align 8, !dbg !5184
  %8 = load %struct.usb_host_config*, %struct.usb_host_config** %config.addr, align 8, !dbg !5185
  %desc = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %8, i32 0, i32 0, !dbg !5186
  %9 = load i32, i32* %active.addr, align 4, !dbg !5187
  %10 = load i32, i32* %speed.addr, align 4, !dbg !5188
  %call3 = call i8* @usb_dump_config_descriptor(i8* %6, i8* %7, %struct.usb_config_descriptor* %desc, i32 %9, i32 %10) #4, !dbg !5189
  store i8* %call3, i8** %start.addr, align 8, !dbg !5190
  store i32 0, i32* %i, align 4, !dbg !5191
  br label %for.cond, !dbg !5193

for.cond:                                         ; preds = %for.inc, %if.end2
  %11 = load i32, i32* %i, align 4, !dbg !5194
  %cmp4 = icmp slt i32 %11, 16, !dbg !5196
  br i1 %cmp4, label %for.body, label %for.end, !dbg !5197

for.body:                                         ; preds = %for.cond
  %12 = load %struct.usb_host_config*, %struct.usb_host_config** %config.addr, align 8, !dbg !5198
  %intf_assoc = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %12, i32 0, i32 2, !dbg !5201
  %13 = load i32, i32* %i, align 4, !dbg !5202
  %idxprom = sext i32 %13 to i64, !dbg !5198
  %arrayidx = getelementptr [16 x %struct.usb_interface_assoc_descriptor*], [16 x %struct.usb_interface_assoc_descriptor*]* %intf_assoc, i64 0, i64 %idxprom, !dbg !5198
  %14 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %arrayidx, align 8, !dbg !5198
  %cmp5 = icmp eq %struct.usb_interface_assoc_descriptor* %14, null, !dbg !5203
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !5204

if.then6:                                         ; preds = %for.body
  br label %for.end, !dbg !5205

if.end7:                                          ; preds = %for.body
  %15 = load i8*, i8** %start.addr, align 8, !dbg !5206
  %16 = load i8*, i8** %end.addr, align 8, !dbg !5207
  %17 = load %struct.usb_host_config*, %struct.usb_host_config** %config.addr, align 8, !dbg !5208
  %intf_assoc8 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %17, i32 0, i32 2, !dbg !5209
  %18 = load i32, i32* %i, align 4, !dbg !5210
  %idxprom9 = sext i32 %18 to i64, !dbg !5208
  %arrayidx10 = getelementptr [16 x %struct.usb_interface_assoc_descriptor*], [16 x %struct.usb_interface_assoc_descriptor*]* %intf_assoc8, i64 0, i64 %idxprom9, !dbg !5208
  %19 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %arrayidx10, align 8, !dbg !5208
  %call11 = call i8* @usb_dump_iad_descriptor(i8* %15, i8* %16, %struct.usb_interface_assoc_descriptor* %19) #4, !dbg !5211
  store i8* %call11, i8** %start.addr, align 8, !dbg !5212
  br label %for.inc, !dbg !5213

for.inc:                                          ; preds = %if.end7
  %20 = load i32, i32* %i, align 4, !dbg !5214
  %inc = add i32 %20, 1, !dbg !5214
  store i32 %inc, i32* %i, align 4, !dbg !5214
  br label %for.cond, !dbg !5215, !llvm.loop !5216

for.end:                                          ; preds = %if.then6, %for.cond
  store i32 0, i32* %i, align 4, !dbg !5218
  br label %for.cond12, !dbg !5220

for.cond12:                                       ; preds = %for.inc34, %for.end
  %21 = load i32, i32* %i, align 4, !dbg !5221
  %22 = load %struct.usb_host_config*, %struct.usb_host_config** %config.addr, align 8, !dbg !5223
  %desc13 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %22, i32 0, i32 0, !dbg !5224
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %desc13, i32 0, i32 3, !dbg !5225
  %23 = load i8, i8* %bNumInterfaces, align 4, !dbg !5225
  %conv = zext i8 %23 to i32, !dbg !5223
  %cmp14 = icmp slt i32 %21, %conv, !dbg !5226
  br i1 %cmp14, label %for.body16, label %for.end36, !dbg !5227

for.body16:                                       ; preds = %for.cond12
  %24 = load %struct.usb_host_config*, %struct.usb_host_config** %config.addr, align 8, !dbg !5228
  %intf_cache = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %24, i32 0, i32 4, !dbg !5230
  %25 = load i32, i32* %i, align 4, !dbg !5231
  %idxprom17 = sext i32 %25 to i64, !dbg !5228
  %arrayidx18 = getelementptr [32 x %struct.usb_interface_cache*], [32 x %struct.usb_interface_cache*]* %intf_cache, i64 0, i64 %idxprom17, !dbg !5228
  %26 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %arrayidx18, align 8, !dbg !5228
  store %struct.usb_interface_cache* %26, %struct.usb_interface_cache** %intfc, align 8, !dbg !5232
  %27 = load %struct.usb_host_config*, %struct.usb_host_config** %config.addr, align 8, !dbg !5233
  %interface19 = getelementptr inbounds %struct.usb_host_config, %struct.usb_host_config* %27, i32 0, i32 3, !dbg !5234
  %28 = load i32, i32* %i, align 4, !dbg !5235
  %idxprom20 = sext i32 %28 to i64, !dbg !5233
  %arrayidx21 = getelementptr [32 x %struct.usb_interface*], [32 x %struct.usb_interface*]* %interface19, i64 0, i64 %idxprom20, !dbg !5233
  %29 = load %struct.usb_interface*, %struct.usb_interface** %arrayidx21, align 8, !dbg !5233
  store %struct.usb_interface* %29, %struct.usb_interface** %interface, align 8, !dbg !5236
  store i32 0, i32* %j, align 4, !dbg !5237
  br label %for.cond22, !dbg !5239

for.cond22:                                       ; preds = %for.inc31, %for.body16
  %30 = load i32, i32* %j, align 4, !dbg !5240
  %31 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %intfc, align 8, !dbg !5242
  %num_altsetting = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %31, i32 0, i32 0, !dbg !5243
  %32 = load i32, i32* %num_altsetting, align 8, !dbg !5243
  %cmp23 = icmp ult i32 %30, %32, !dbg !5244
  br i1 %cmp23, label %for.body25, label %for.end33, !dbg !5245

for.body25:                                       ; preds = %for.cond22
  %33 = load i8*, i8** %start.addr, align 8, !dbg !5246
  %34 = load i8*, i8** %end.addr, align 8, !dbg !5249
  %cmp26 = icmp ugt i8* %33, %34, !dbg !5250
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !5251

if.then28:                                        ; preds = %for.body25
  %35 = load i8*, i8** %start.addr, align 8, !dbg !5252
  store i8* %35, i8** %retval, align 8, !dbg !5253
  br label %return, !dbg !5253

if.end29:                                         ; preds = %for.body25
  %36 = load i32, i32* %speed.addr, align 4, !dbg !5254
  %37 = load i8*, i8** %start.addr, align 8, !dbg !5255
  %38 = load i8*, i8** %end.addr, align 8, !dbg !5256
  %39 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %intfc, align 8, !dbg !5257
  %40 = load %struct.usb_interface*, %struct.usb_interface** %interface, align 8, !dbg !5258
  %41 = load i32, i32* %j, align 4, !dbg !5259
  %call30 = call i8* @usb_dump_interface(i32 %36, i8* %37, i8* %38, %struct.usb_interface_cache* %39, %struct.usb_interface* %40, i32 %41) #4, !dbg !5260
  store i8* %call30, i8** %start.addr, align 8, !dbg !5261
  br label %for.inc31, !dbg !5262

for.inc31:                                        ; preds = %if.end29
  %42 = load i32, i32* %j, align 4, !dbg !5263
  %inc32 = add i32 %42, 1, !dbg !5263
  store i32 %inc32, i32* %j, align 4, !dbg !5263
  br label %for.cond22, !dbg !5264, !llvm.loop !5265

for.end33:                                        ; preds = %for.cond22
  br label %for.inc34, !dbg !5267

for.inc34:                                        ; preds = %for.end33
  %43 = load i32, i32* %i, align 4, !dbg !5268
  %inc35 = add i32 %43, 1, !dbg !5268
  store i32 %inc35, i32* %i, align 4, !dbg !5268
  br label %for.cond12, !dbg !5269, !llvm.loop !5270

for.end36:                                        ; preds = %for.cond12
  %44 = load i8*, i8** %start.addr, align 8, !dbg !5272
  store i8* %44, i8** %retval, align 8, !dbg !5273
  br label %return, !dbg !5273

return:                                           ; preds = %for.end36, %if.then28, %if.then1, %if.then
  %45 = load i8*, i8** %retval, align 8, !dbg !5274
  ret i8* %45, !dbg !5274
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @class_decode(i32 %class) #1 !dbg !5275 {
entry:
  %class.addr = alloca i32, align 4
  %ix = alloca i32, align 4
  store i32 %class, i32* %class.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %class.addr, metadata !5279, metadata !DIExpression()), !dbg !5280
  call void @llvm.dbg.declare(metadata i32* %ix, metadata !5281, metadata !DIExpression()), !dbg !5282
  store i32 0, i32* %ix, align 4, !dbg !5283
  br label %for.cond, !dbg !5285

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %ix, align 4, !dbg !5286
  %idxprom = sext i32 %0 to i64, !dbg !5288
  %arrayidx = getelementptr [22 x %struct.class_info], [22 x %struct.class_info]* @clas_info, i64 0, i64 %idxprom, !dbg !5288
  %class1 = getelementptr inbounds %struct.class_info, %struct.class_info* %arrayidx, i32 0, i32 0, !dbg !5289
  %1 = load i32, i32* %class1, align 16, !dbg !5289
  %cmp = icmp ne i32 %1, -1, !dbg !5290
  br i1 %cmp, label %for.body, label %for.end, !dbg !5291

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %ix, align 4, !dbg !5292
  %idxprom2 = sext i32 %2 to i64, !dbg !5294
  %arrayidx3 = getelementptr [22 x %struct.class_info], [22 x %struct.class_info]* @clas_info, i64 0, i64 %idxprom2, !dbg !5294
  %class4 = getelementptr inbounds %struct.class_info, %struct.class_info* %arrayidx3, i32 0, i32 0, !dbg !5295
  %3 = load i32, i32* %class4, align 16, !dbg !5295
  %4 = load i32, i32* %class.addr, align 4, !dbg !5296
  %cmp5 = icmp eq i32 %3, %4, !dbg !5297
  br i1 %cmp5, label %if.then, label %if.end, !dbg !5298

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !5299

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5296

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %ix, align 4, !dbg !5300
  %inc = add i32 %5, 1, !dbg !5300
  store i32 %inc, i32* %ix, align 4, !dbg !5300
  br label %for.cond, !dbg !5301, !llvm.loop !5302

for.end:                                          ; preds = %if.then, %for.cond
  %6 = load i32, i32* %ix, align 4, !dbg !5304
  %idxprom6 = sext i32 %6 to i64, !dbg !5305
  %arrayidx7 = getelementptr [22 x %struct.class_info], [22 x %struct.class_info]* @clas_info, i64 0, i64 %idxprom6, !dbg !5305
  %class_name = getelementptr inbounds %struct.class_info, %struct.class_info* %arrayidx7, i32 0, i32 1, !dbg !5306
  %7 = load i8*, i8** %class_name, align 8, !dbg !5306
  ret i8* %7, !dbg !5307
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_dump_config_descriptor(i8* %start, i8* %end, %struct.usb_config_descriptor* %desc, i32 %active, i32 %speed) #1 !dbg !5308 {
entry:
  %retval = alloca i8*, align 8
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %desc.addr = alloca %struct.usb_config_descriptor*, align 8
  %active.addr = alloca i32, align 4
  %speed.addr = alloca i32, align 4
  %mul = alloca i32, align 4
  store i8* %start, i8** %start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %start.addr, metadata !5313, metadata !DIExpression()), !dbg !5314
  store i8* %end, i8** %end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !5315, metadata !DIExpression()), !dbg !5316
  store %struct.usb_config_descriptor* %desc, %struct.usb_config_descriptor** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_config_descriptor** %desc.addr, metadata !5317, metadata !DIExpression()), !dbg !5318
  store i32 %active, i32* %active.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %active.addr, metadata !5319, metadata !DIExpression()), !dbg !5320
  store i32 %speed, i32* %speed.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %speed.addr, metadata !5321, metadata !DIExpression()), !dbg !5322
  call void @llvm.dbg.declare(metadata i32* %mul, metadata !5323, metadata !DIExpression()), !dbg !5324
  %0 = load i8*, i8** %start.addr, align 8, !dbg !5325
  %1 = load i8*, i8** %end.addr, align 8, !dbg !5327
  %cmp = icmp ugt i8* %0, %1, !dbg !5328
  br i1 %cmp, label %if.then, label %if.end, !dbg !5329

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %start.addr, align 8, !dbg !5330
  store i8* %2, i8** %retval, align 8, !dbg !5331
  br label %return, !dbg !5331

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %speed.addr, align 4, !dbg !5332
  %cmp1 = icmp sge i32 %3, 5, !dbg !5334
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !5335

if.then2:                                         ; preds = %if.end
  store i32 8, i32* %mul, align 4, !dbg !5336
  br label %if.end3, !dbg !5337

if.else:                                          ; preds = %if.end
  store i32 2, i32* %mul, align 4, !dbg !5338
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %4 = load i8*, i8** %start.addr, align 8, !dbg !5339
  %5 = load i32, i32* %active.addr, align 4, !dbg !5340
  %tobool = icmp ne i32 %5, 0, !dbg !5340
  %6 = zext i1 %tobool to i64, !dbg !5340
  %cond = select i1 %tobool, i32 42, i32 32, !dbg !5340
  %7 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %desc.addr, align 8, !dbg !5341
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %7, i32 0, i32 3, !dbg !5342
  %8 = load i8, i8* %bNumInterfaces, align 1, !dbg !5342
  %conv = zext i8 %8 to i32, !dbg !5341
  %9 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %desc.addr, align 8, !dbg !5343
  %bConfigurationValue = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %9, i32 0, i32 4, !dbg !5344
  %10 = load i8, i8* %bConfigurationValue, align 1, !dbg !5344
  %conv4 = zext i8 %10 to i32, !dbg !5343
  %11 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %desc.addr, align 8, !dbg !5345
  %bmAttributes = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %11, i32 0, i32 6, !dbg !5346
  %12 = load i8, i8* %bmAttributes, align 1, !dbg !5346
  %conv5 = zext i8 %12 to i32, !dbg !5345
  %13 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %desc.addr, align 8, !dbg !5347
  %bMaxPower = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %13, i32 0, i32 7, !dbg !5348
  %14 = load i8, i8* %bMaxPower, align 1, !dbg !5348
  %conv6 = zext i8 %14 to i32, !dbg !5347
  %15 = load i32, i32* %mul, align 4, !dbg !5349
  %mul7 = mul i32 %conv6, %15, !dbg !5350
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @format_config, i64 0, i64 0), i32 %cond, i32 %conv, i32 %conv4, i32 %conv5, i32 %mul7) #4, !dbg !5351
  %16 = load i8*, i8** %start.addr, align 8, !dbg !5352
  %idx.ext = sext i32 %call to i64, !dbg !5352
  %add.ptr = getelementptr i8, i8* %16, i64 %idx.ext, !dbg !5352
  store i8* %add.ptr, i8** %start.addr, align 8, !dbg !5352
  %17 = load i8*, i8** %start.addr, align 8, !dbg !5353
  store i8* %17, i8** %retval, align 8, !dbg !5354
  br label %return, !dbg !5354

return:                                           ; preds = %if.end3, %if.then
  %18 = load i8*, i8** %retval, align 8, !dbg !5355
  ret i8* %18, !dbg !5355
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_dump_iad_descriptor(i8* %start, i8* %end, %struct.usb_interface_assoc_descriptor* %iad) #1 !dbg !5356 {
entry:
  %retval = alloca i8*, align 8
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %iad.addr = alloca %struct.usb_interface_assoc_descriptor*, align 8
  store i8* %start, i8** %start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %start.addr, metadata !5361, metadata !DIExpression()), !dbg !5362
  store i8* %end, i8** %end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !5363, metadata !DIExpression()), !dbg !5364
  store %struct.usb_interface_assoc_descriptor* %iad, %struct.usb_interface_assoc_descriptor** %iad.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface_assoc_descriptor** %iad.addr, metadata !5365, metadata !DIExpression()), !dbg !5366
  %0 = load i8*, i8** %start.addr, align 8, !dbg !5367
  %1 = load i8*, i8** %end.addr, align 8, !dbg !5369
  %cmp = icmp ugt i8* %0, %1, !dbg !5370
  br i1 %cmp, label %if.then, label %if.end, !dbg !5371

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %start.addr, align 8, !dbg !5372
  store i8* %2, i8** %retval, align 8, !dbg !5373
  br label %return, !dbg !5373

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %start.addr, align 8, !dbg !5374
  %4 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %iad.addr, align 8, !dbg !5375
  %bFirstInterface = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %4, i32 0, i32 2, !dbg !5376
  %5 = load i8, i8* %bFirstInterface, align 1, !dbg !5376
  %conv = zext i8 %5 to i32, !dbg !5375
  %6 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %iad.addr, align 8, !dbg !5377
  %bInterfaceCount = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %6, i32 0, i32 3, !dbg !5378
  %7 = load i8, i8* %bInterfaceCount, align 1, !dbg !5378
  %conv1 = zext i8 %7 to i32, !dbg !5377
  %8 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %iad.addr, align 8, !dbg !5379
  %bFunctionClass = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %8, i32 0, i32 4, !dbg !5380
  %9 = load i8, i8* %bFunctionClass, align 1, !dbg !5380
  %conv2 = zext i8 %9 to i32, !dbg !5379
  %10 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %iad.addr, align 8, !dbg !5381
  %bFunctionClass3 = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %10, i32 0, i32 4, !dbg !5382
  %11 = load i8, i8* %bFunctionClass3, align 1, !dbg !5382
  %conv4 = zext i8 %11 to i32, !dbg !5381
  %call = call i8* @class_decode(i32 %conv4) #4, !dbg !5383
  %12 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %iad.addr, align 8, !dbg !5384
  %bFunctionSubClass = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %12, i32 0, i32 5, !dbg !5385
  %13 = load i8, i8* %bFunctionSubClass, align 1, !dbg !5385
  %conv5 = zext i8 %13 to i32, !dbg !5384
  %14 = load %struct.usb_interface_assoc_descriptor*, %struct.usb_interface_assoc_descriptor** %iad.addr, align 8, !dbg !5386
  %bFunctionProtocol = getelementptr inbounds %struct.usb_interface_assoc_descriptor, %struct.usb_interface_assoc_descriptor* %14, i32 0, i32 6, !dbg !5387
  %15 = load i8, i8* %bFunctionProtocol, align 1, !dbg !5387
  %conv6 = zext i8 %15 to i32, !dbg !5386
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @format_iad, i64 0, i64 0), i32 %conv, i32 %conv1, i32 %conv2, i8* %call, i32 %conv5, i32 %conv6) #4, !dbg !5388
  %16 = load i8*, i8** %start.addr, align 8, !dbg !5389
  %idx.ext = sext i32 %call7 to i64, !dbg !5389
  %add.ptr = getelementptr i8, i8* %16, i64 %idx.ext, !dbg !5389
  store i8* %add.ptr, i8** %start.addr, align 8, !dbg !5389
  %17 = load i8*, i8** %start.addr, align 8, !dbg !5390
  store i8* %17, i8** %retval, align 8, !dbg !5391
  br label %return, !dbg !5391

return:                                           ; preds = %if.end, %if.then
  %18 = load i8*, i8** %retval, align 8, !dbg !5392
  ret i8* %18, !dbg !5392
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_dump_interface(i32 %speed, i8* %start, i8* %end, %struct.usb_interface_cache* %intfc, %struct.usb_interface* %iface, i32 %setno) #1 !dbg !5393 {
entry:
  %retval = alloca i8*, align 8
  %speed.addr = alloca i32, align 4
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %intfc.addr = alloca %struct.usb_interface_cache*, align 8
  %iface.addr = alloca %struct.usb_interface*, align 8
  %setno.addr = alloca i32, align 4
  %desc = alloca %struct.usb_host_interface*, align 8
  %i = alloca i32, align 4
  store i32 %speed, i32* %speed.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %speed.addr, metadata !5400, metadata !DIExpression()), !dbg !5401
  store i8* %start, i8** %start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %start.addr, metadata !5402, metadata !DIExpression()), !dbg !5403
  store i8* %end, i8** %end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !5404, metadata !DIExpression()), !dbg !5405
  store %struct.usb_interface_cache* %intfc, %struct.usb_interface_cache** %intfc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface_cache** %intfc.addr, metadata !5406, metadata !DIExpression()), !dbg !5407
  store %struct.usb_interface* %iface, %struct.usb_interface** %iface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %iface.addr, metadata !5408, metadata !DIExpression()), !dbg !5409
  store i32 %setno, i32* %setno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %setno.addr, metadata !5410, metadata !DIExpression()), !dbg !5411
  call void @llvm.dbg.declare(metadata %struct.usb_host_interface** %desc, metadata !5412, metadata !DIExpression()), !dbg !5415
  %0 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %intfc.addr, align 8, !dbg !5416
  %altsetting = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %0, i32 0, i32 2, !dbg !5417
  %1 = load i32, i32* %setno.addr, align 4, !dbg !5418
  %idxprom = sext i32 %1 to i64, !dbg !5416
  %arrayidx = getelementptr [0 x %struct.usb_host_interface], [0 x %struct.usb_host_interface]* %altsetting, i64 0, i64 %idxprom, !dbg !5416
  store %struct.usb_host_interface* %arrayidx, %struct.usb_host_interface** %desc, align 8, !dbg !5415
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5419, metadata !DIExpression()), !dbg !5420
  %2 = load i8*, i8** %start.addr, align 8, !dbg !5421
  %3 = load i8*, i8** %end.addr, align 8, !dbg !5422
  %4 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %intfc.addr, align 8, !dbg !5423
  %5 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !5424
  %6 = load i32, i32* %setno.addr, align 4, !dbg !5425
  %call = call i8* @usb_dump_interface_descriptor(i8* %2, i8* %3, %struct.usb_interface_cache* %4, %struct.usb_interface* %5, i32 %6) #4, !dbg !5426
  store i8* %call, i8** %start.addr, align 8, !dbg !5427
  store i32 0, i32* %i, align 4, !dbg !5428
  br label %for.cond, !dbg !5430

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !5431
  %8 = load %struct.usb_host_interface*, %struct.usb_host_interface** %desc, align 8, !dbg !5433
  %desc1 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %8, i32 0, i32 0, !dbg !5434
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %desc1, i32 0, i32 4, !dbg !5435
  %9 = load i8, i8* %bNumEndpoints, align 4, !dbg !5435
  %conv = zext i8 %9 to i32, !dbg !5433
  %cmp = icmp slt i32 %7, %conv, !dbg !5436
  br i1 %cmp, label %for.body, label %for.end, !dbg !5437

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %start.addr, align 8, !dbg !5438
  %11 = load i8*, i8** %end.addr, align 8, !dbg !5441
  %cmp3 = icmp ugt i8* %10, %11, !dbg !5442
  br i1 %cmp3, label %if.then, label %if.end, !dbg !5443

if.then:                                          ; preds = %for.body
  %12 = load i8*, i8** %start.addr, align 8, !dbg !5444
  store i8* %12, i8** %retval, align 8, !dbg !5445
  br label %return, !dbg !5445

if.end:                                           ; preds = %for.body
  %13 = load i32, i32* %speed.addr, align 4, !dbg !5446
  %14 = load i8*, i8** %start.addr, align 8, !dbg !5447
  %15 = load i8*, i8** %end.addr, align 8, !dbg !5448
  %16 = load %struct.usb_host_interface*, %struct.usb_host_interface** %desc, align 8, !dbg !5449
  %endpoint = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %16, i32 0, i32 3, !dbg !5450
  %17 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %endpoint, align 8, !dbg !5450
  %18 = load i32, i32* %i, align 4, !dbg !5451
  %idxprom5 = sext i32 %18 to i64, !dbg !5449
  %arrayidx6 = getelementptr %struct.usb_host_endpoint, %struct.usb_host_endpoint* %17, i64 %idxprom5, !dbg !5449
  %desc7 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %arrayidx6, i32 0, i32 0, !dbg !5452
  %call8 = call i8* @usb_dump_endpoint_descriptor(i32 %13, i8* %14, i8* %15, %struct.usb_endpoint_descriptor* %desc7) #4, !dbg !5453
  store i8* %call8, i8** %start.addr, align 8, !dbg !5454
  br label %for.inc, !dbg !5455

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %i, align 4, !dbg !5456
  %inc = add i32 %19, 1, !dbg !5456
  store i32 %inc, i32* %i, align 4, !dbg !5456
  br label %for.cond, !dbg !5457, !llvm.loop !5458

for.end:                                          ; preds = %for.cond
  %20 = load i8*, i8** %start.addr, align 8, !dbg !5460
  store i8* %20, i8** %retval, align 8, !dbg !5461
  br label %return, !dbg !5461

return:                                           ; preds = %for.end, %if.then
  %21 = load i8*, i8** %retval, align 8, !dbg !5462
  ret i8* %21, !dbg !5462
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_dump_interface_descriptor(i8* %start, i8* %end, %struct.usb_interface_cache* %intfc, %struct.usb_interface* %iface, i32 %setno) #1 !dbg !5463 {
entry:
  %retval = alloca i8*, align 8
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %intfc.addr = alloca %struct.usb_interface_cache*, align 8
  %iface.addr = alloca %struct.usb_interface*, align 8
  %setno.addr = alloca i32, align 4
  %desc = alloca %struct.usb_interface_descriptor*, align 8
  %driver_name = alloca i8*, align 8
  %active = alloca i32, align 4
  store i8* %start, i8** %start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %start.addr, metadata !5466, metadata !DIExpression()), !dbg !5467
  store i8* %end, i8** %end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !5468, metadata !DIExpression()), !dbg !5469
  store %struct.usb_interface_cache* %intfc, %struct.usb_interface_cache** %intfc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface_cache** %intfc.addr, metadata !5470, metadata !DIExpression()), !dbg !5471
  store %struct.usb_interface* %iface, %struct.usb_interface** %iface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_interface** %iface.addr, metadata !5472, metadata !DIExpression()), !dbg !5473
  store i32 %setno, i32* %setno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %setno.addr, metadata !5474, metadata !DIExpression()), !dbg !5475
  call void @llvm.dbg.declare(metadata %struct.usb_interface_descriptor** %desc, metadata !5476, metadata !DIExpression()), !dbg !5479
  call void @llvm.dbg.declare(metadata i8** %driver_name, metadata !5480, metadata !DIExpression()), !dbg !5481
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i64 0, i64 0), i8** %driver_name, align 8, !dbg !5481
  call void @llvm.dbg.declare(metadata i32* %active, metadata !5482, metadata !DIExpression()), !dbg !5483
  store i32 0, i32* %active, align 4, !dbg !5483
  %0 = load i8*, i8** %start.addr, align 8, !dbg !5484
  %1 = load i8*, i8** %end.addr, align 8, !dbg !5486
  %cmp = icmp ugt i8* %0, %1, !dbg !5487
  br i1 %cmp, label %if.then, label %if.end, !dbg !5488

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %start.addr, align 8, !dbg !5489
  store i8* %2, i8** %retval, align 8, !dbg !5490
  br label %return, !dbg !5490

if.end:                                           ; preds = %entry
  %3 = load %struct.usb_interface_cache*, %struct.usb_interface_cache** %intfc.addr, align 8, !dbg !5491
  %altsetting = getelementptr inbounds %struct.usb_interface_cache, %struct.usb_interface_cache* %3, i32 0, i32 2, !dbg !5492
  %4 = load i32, i32* %setno.addr, align 4, !dbg !5493
  %idxprom = sext i32 %4 to i64, !dbg !5491
  %arrayidx = getelementptr [0 x %struct.usb_host_interface], [0 x %struct.usb_host_interface]* %altsetting, i64 0, i64 %idxprom, !dbg !5491
  %desc1 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %arrayidx, i32 0, i32 0, !dbg !5494
  store %struct.usb_interface_descriptor* %desc1, %struct.usb_interface_descriptor** %desc, align 8, !dbg !5495
  %5 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !5496
  %tobool = icmp ne %struct.usb_interface* %5, null, !dbg !5496
  br i1 %tobool, label %if.then2, label %if.end8, !dbg !5498

if.then2:                                         ; preds = %if.end
  %6 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !5499
  %dev = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %6, i32 0, i32 7, !dbg !5501
  %driver = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !5502
  %7 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !5502
  %tobool3 = icmp ne %struct.device_driver* %7, null, !dbg !5499
  br i1 %tobool3, label %cond.true, label %cond.false, !dbg !5499

cond.true:                                        ; preds = %if.then2
  %8 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !5503
  %dev4 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %8, i32 0, i32 7, !dbg !5504
  %driver5 = getelementptr inbounds %struct.device, %struct.device* %dev4, i32 0, i32 6, !dbg !5505
  %9 = load %struct.device_driver*, %struct.device_driver** %driver5, align 8, !dbg !5505
  %name = getelementptr inbounds %struct.device_driver, %struct.device_driver* %9, i32 0, i32 0, !dbg !5506
  %10 = load i8*, i8** %name, align 8, !dbg !5506
  br label %cond.end, !dbg !5499

cond.false:                                       ; preds = %if.then2
  br label %cond.end, !dbg !5499

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %10, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i64 0, i64 0), %cond.false ], !dbg !5499
  store i8* %cond, i8** %driver_name, align 8, !dbg !5507
  %11 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %desc, align 8, !dbg !5508
  %12 = load %struct.usb_interface*, %struct.usb_interface** %iface.addr, align 8, !dbg !5509
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %12, i32 0, i32 1, !dbg !5510
  %13 = load %struct.usb_host_interface*, %struct.usb_host_interface** %cur_altsetting, align 8, !dbg !5510
  %desc6 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %13, i32 0, i32 0, !dbg !5511
  %cmp7 = icmp eq %struct.usb_interface_descriptor* %11, %desc6, !dbg !5512
  %conv = zext i1 %cmp7 to i32, !dbg !5512
  store i32 %conv, i32* %active, align 4, !dbg !5513
  br label %if.end8, !dbg !5514

if.end8:                                          ; preds = %cond.end, %if.end
  %14 = load i8*, i8** %start.addr, align 8, !dbg !5515
  %15 = load i32, i32* %active, align 4, !dbg !5516
  %tobool9 = icmp ne i32 %15, 0, !dbg !5516
  %16 = zext i1 %tobool9 to i64, !dbg !5516
  %cond10 = select i1 %tobool9, i32 42, i32 32, !dbg !5516
  %17 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %desc, align 8, !dbg !5517
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %17, i32 0, i32 2, !dbg !5518
  %18 = load i8, i8* %bInterfaceNumber, align 1, !dbg !5518
  %conv11 = zext i8 %18 to i32, !dbg !5517
  %19 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %desc, align 8, !dbg !5519
  %bAlternateSetting = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %19, i32 0, i32 3, !dbg !5520
  %20 = load i8, i8* %bAlternateSetting, align 1, !dbg !5520
  %conv12 = zext i8 %20 to i32, !dbg !5519
  %21 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %desc, align 8, !dbg !5521
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %21, i32 0, i32 4, !dbg !5522
  %22 = load i8, i8* %bNumEndpoints, align 1, !dbg !5522
  %conv13 = zext i8 %22 to i32, !dbg !5521
  %23 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %desc, align 8, !dbg !5523
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %23, i32 0, i32 5, !dbg !5524
  %24 = load i8, i8* %bInterfaceClass, align 1, !dbg !5524
  %conv14 = zext i8 %24 to i32, !dbg !5523
  %25 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %desc, align 8, !dbg !5525
  %bInterfaceClass15 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %25, i32 0, i32 5, !dbg !5526
  %26 = load i8, i8* %bInterfaceClass15, align 1, !dbg !5526
  %conv16 = zext i8 %26 to i32, !dbg !5525
  %call = call i8* @class_decode(i32 %conv16) #4, !dbg !5527
  %27 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %desc, align 8, !dbg !5528
  %bInterfaceSubClass = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %27, i32 0, i32 6, !dbg !5529
  %28 = load i8, i8* %bInterfaceSubClass, align 1, !dbg !5529
  %conv17 = zext i8 %28 to i32, !dbg !5528
  %29 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %desc, align 8, !dbg !5530
  %bInterfaceProtocol = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %29, i32 0, i32 7, !dbg !5531
  %30 = load i8, i8* %bInterfaceProtocol, align 1, !dbg !5531
  %conv18 = zext i8 %30 to i32, !dbg !5530
  %31 = load i8*, i8** %driver_name, align 8, !dbg !5532
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @format_iface, i64 0, i64 0), i32 %cond10, i32 %conv11, i32 %conv12, i32 %conv13, i32 %conv14, i8* %call, i32 %conv17, i32 %conv18, i8* %31) #4, !dbg !5533
  %32 = load i8*, i8** %start.addr, align 8, !dbg !5534
  %idx.ext = sext i32 %call19 to i64, !dbg !5534
  %add.ptr = getelementptr i8, i8* %32, i64 %idx.ext, !dbg !5534
  store i8* %add.ptr, i8** %start.addr, align 8, !dbg !5534
  %33 = load i8*, i8** %start.addr, align 8, !dbg !5535
  store i8* %33, i8** %retval, align 8, !dbg !5536
  br label %return, !dbg !5536

return:                                           ; preds = %if.end8, %if.then
  %34 = load i8*, i8** %retval, align 8, !dbg !5537
  ret i8* %34, !dbg !5537
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @usb_dump_endpoint_descriptor(i32 %speed, i8* %start, i8* %end, %struct.usb_endpoint_descriptor* %desc) #1 !dbg !5538 {
entry:
  %retval = alloca i8*, align 8
  %speed.addr = alloca i32, align 4
  %start.addr = alloca i8*, align 8
  %end.addr = alloca i8*, align 8
  %desc.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  %dir = alloca i8, align 1
  %unit = alloca i8, align 1
  %type = alloca i8*, align 8
  %interval = alloca i32, align 4
  %bandwidth = alloca i32, align 4
  store i32 %speed, i32* %speed.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %speed.addr, metadata !5543, metadata !DIExpression()), !dbg !5544
  store i8* %start, i8** %start.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %start.addr, metadata !5545, metadata !DIExpression()), !dbg !5546
  store i8* %end, i8** %end.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %end.addr, metadata !5547, metadata !DIExpression()), !dbg !5548
  store %struct.usb_endpoint_descriptor* %desc, %struct.usb_endpoint_descriptor** %desc.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %desc.addr, metadata !5549, metadata !DIExpression()), !dbg !5550
  call void @llvm.dbg.declare(metadata i8* %dir, metadata !5551, metadata !DIExpression()), !dbg !5552
  call void @llvm.dbg.declare(metadata i8* %unit, metadata !5553, metadata !DIExpression()), !dbg !5554
  call void @llvm.dbg.declare(metadata i8** %type, metadata !5555, metadata !DIExpression()), !dbg !5556
  call void @llvm.dbg.declare(metadata i32* %interval, metadata !5557, metadata !DIExpression()), !dbg !5558
  call void @llvm.dbg.declare(metadata i32* %bandwidth, metadata !5559, metadata !DIExpression()), !dbg !5560
  store i32 1, i32* %bandwidth, align 4, !dbg !5560
  %0 = load i8*, i8** %start.addr, align 8, !dbg !5561
  %1 = load i8*, i8** %end.addr, align 8, !dbg !5563
  %cmp = icmp ugt i8* %0, %1, !dbg !5564
  br i1 %cmp, label %if.then, label %if.end, !dbg !5565

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %start.addr, align 8, !dbg !5566
  store i8* %2, i8** %retval, align 8, !dbg !5567
  br label %return, !dbg !5567

if.end:                                           ; preds = %entry
  %3 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc.addr, align 8, !dbg !5568
  %call = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %3) #4, !dbg !5569
  %tobool = icmp ne i32 %call, 0, !dbg !5569
  %4 = zext i1 %tobool to i64, !dbg !5569
  %cond = select i1 %tobool, i32 73, i32 79, !dbg !5569
  %conv = trunc i32 %cond to i8, !dbg !5569
  store i8 %conv, i8* %dir, align 1, !dbg !5570
  %5 = load i32, i32* %speed.addr, align 4, !dbg !5571
  %cmp1 = icmp eq i32 %5, 3, !dbg !5573
  br i1 %cmp1, label %if.then3, label %if.end5, !dbg !5574

if.then3:                                         ; preds = %if.end
  %6 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc.addr, align 8, !dbg !5575
  %call4 = call i32 @usb_endpoint_maxp_mult(%struct.usb_endpoint_descriptor* %6) #4, !dbg !5576
  store i32 %call4, i32* %bandwidth, align 4, !dbg !5577
  br label %if.end5, !dbg !5578

if.end5:                                          ; preds = %if.then3, %if.end
  %7 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc.addr, align 8, !dbg !5579
  %call6 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %7) #4, !dbg !5580
  switch i32 %call6, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb12
    i32 2, label %sw.bb15
    i32 3, label %sw.bb26
  ], !dbg !5581

sw.bb:                                            ; preds = %if.end5
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0), i8** %type, align 8, !dbg !5582
  %8 = load i32, i32* %speed.addr, align 4, !dbg !5584
  %cmp7 = icmp eq i32 %8, 3, !dbg !5586
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !5587

if.then9:                                         ; preds = %sw.bb
  %9 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc.addr, align 8, !dbg !5588
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %9, i32 0, i32 5, !dbg !5589
  %10 = load i8, i8* %bInterval, align 1, !dbg !5589
  %conv10 = zext i8 %10 to i32, !dbg !5588
  store i32 %conv10, i32* %interval, align 4, !dbg !5590
  br label %if.end11, !dbg !5591

if.else:                                          ; preds = %sw.bb
  store i32 0, i32* %interval, align 4, !dbg !5592
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then9
  store i8 66, i8* %dir, align 1, !dbg !5593
  br label %sw.epilog, !dbg !5594

sw.bb12:                                          ; preds = %if.end5
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0), i8** %type, align 8, !dbg !5595
  %11 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc.addr, align 8, !dbg !5596
  %bInterval13 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %11, i32 0, i32 5, !dbg !5597
  %12 = load i8, i8* %bInterval13, align 1, !dbg !5597
  %conv14 = zext i8 %12 to i32, !dbg !5596
  %sub = sub i32 %conv14, 1, !dbg !5598
  %shl = shl i32 1, %sub, !dbg !5599
  store i32 %shl, i32* %interval, align 4, !dbg !5600
  br label %sw.epilog, !dbg !5601

sw.bb15:                                          ; preds = %if.end5
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0), i8** %type, align 8, !dbg !5602
  %13 = load i32, i32* %speed.addr, align 4, !dbg !5603
  %cmp16 = icmp eq i32 %13, 3, !dbg !5605
  br i1 %cmp16, label %land.lhs.true, label %if.else24, !dbg !5606

land.lhs.true:                                    ; preds = %sw.bb15
  %14 = load i8, i8* %dir, align 1, !dbg !5607
  %conv18 = sext i8 %14 to i32, !dbg !5607
  %cmp19 = icmp eq i32 %conv18, 79, !dbg !5608
  br i1 %cmp19, label %if.then21, label %if.else24, !dbg !5609

if.then21:                                        ; preds = %land.lhs.true
  %15 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc.addr, align 8, !dbg !5610
  %bInterval22 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %15, i32 0, i32 5, !dbg !5611
  %16 = load i8, i8* %bInterval22, align 1, !dbg !5611
  %conv23 = zext i8 %16 to i32, !dbg !5610
  store i32 %conv23, i32* %interval, align 4, !dbg !5612
  br label %if.end25, !dbg !5613

if.else24:                                        ; preds = %land.lhs.true, %sw.bb15
  store i32 0, i32* %interval, align 4, !dbg !5614
  br label %if.end25

if.end25:                                         ; preds = %if.else24, %if.then21
  br label %sw.epilog, !dbg !5615

sw.bb26:                                          ; preds = %if.end5
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i64 0, i64 0), i8** %type, align 8, !dbg !5616
  %17 = load i32, i32* %speed.addr, align 4, !dbg !5617
  %cmp27 = icmp eq i32 %17, 3, !dbg !5619
  br i1 %cmp27, label %if.then31, label %lor.lhs.false, !dbg !5620

lor.lhs.false:                                    ; preds = %sw.bb26
  %18 = load i32, i32* %speed.addr, align 4, !dbg !5621
  %cmp29 = icmp sge i32 %18, 5, !dbg !5622
  br i1 %cmp29, label %if.then31, label %if.else36, !dbg !5623

if.then31:                                        ; preds = %lor.lhs.false, %sw.bb26
  %19 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc.addr, align 8, !dbg !5624
  %bInterval32 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %19, i32 0, i32 5, !dbg !5625
  %20 = load i8, i8* %bInterval32, align 1, !dbg !5625
  %conv33 = zext i8 %20 to i32, !dbg !5624
  %sub34 = sub i32 %conv33, 1, !dbg !5626
  %shl35 = shl i32 1, %sub34, !dbg !5627
  store i32 %shl35, i32* %interval, align 4, !dbg !5628
  br label %if.end39, !dbg !5629

if.else36:                                        ; preds = %lor.lhs.false
  %21 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc.addr, align 8, !dbg !5630
  %bInterval37 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %21, i32 0, i32 5, !dbg !5631
  %22 = load i8, i8* %bInterval37, align 1, !dbg !5631
  %conv38 = zext i8 %22 to i32, !dbg !5630
  store i32 %conv38, i32* %interval, align 4, !dbg !5632
  br label %if.end39

if.end39:                                         ; preds = %if.else36, %if.then31
  br label %sw.epilog, !dbg !5633

sw.default:                                       ; preds = %if.end5
  %23 = load i8*, i8** %start.addr, align 8, !dbg !5634
  store i8* %23, i8** %retval, align 8, !dbg !5635
  br label %return, !dbg !5635

sw.epilog:                                        ; preds = %if.end39, %if.end25, %sw.bb12, %if.end11
  %24 = load i32, i32* %speed.addr, align 4, !dbg !5636
  %cmp40 = icmp eq i32 %24, 3, !dbg !5637
  br i1 %cmp40, label %lor.end, label %lor.rhs, !dbg !5638

lor.rhs:                                          ; preds = %sw.epilog
  %25 = load i32, i32* %speed.addr, align 4, !dbg !5639
  %cmp42 = icmp sge i32 %25, 5, !dbg !5640
  br label %lor.end, !dbg !5638

lor.end:                                          ; preds = %lor.rhs, %sw.epilog
  %26 = phi i1 [ true, %sw.epilog ], [ %cmp42, %lor.rhs ]
  %27 = zext i1 %26 to i64, !dbg !5641
  %cond44 = select i1 %26, i32 125, i32 1000, !dbg !5641
  %28 = load i32, i32* %interval, align 4, !dbg !5642
  %mul = mul i32 %28, %cond44, !dbg !5642
  store i32 %mul, i32* %interval, align 4, !dbg !5642
  %29 = load i32, i32* %interval, align 4, !dbg !5643
  %rem = urem i32 %29, 1000, !dbg !5645
  %tobool45 = icmp ne i32 %rem, 0, !dbg !5645
  br i1 %tobool45, label %if.then46, label %if.else47, !dbg !5646

if.then46:                                        ; preds = %lor.end
  store i8 117, i8* %unit, align 1, !dbg !5647
  br label %if.end48, !dbg !5648

if.else47:                                        ; preds = %lor.end
  store i8 109, i8* %unit, align 1, !dbg !5649
  %30 = load i32, i32* %interval, align 4, !dbg !5651
  %div = udiv i32 %30, 1000, !dbg !5651
  store i32 %div, i32* %interval, align 4, !dbg !5651
  br label %if.end48

if.end48:                                         ; preds = %if.else47, %if.then46
  %31 = load i8*, i8** %start.addr, align 8, !dbg !5652
  %32 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc.addr, align 8, !dbg !5653
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %32, i32 0, i32 2, !dbg !5654
  %33 = load i8, i8* %bEndpointAddress, align 1, !dbg !5654
  %conv49 = zext i8 %33 to i32, !dbg !5653
  %34 = load i8, i8* %dir, align 1, !dbg !5655
  %conv50 = sext i8 %34 to i32, !dbg !5655
  %35 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc.addr, align 8, !dbg !5656
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %35, i32 0, i32 3, !dbg !5657
  %36 = load i8, i8* %bmAttributes, align 1, !dbg !5657
  %conv51 = zext i8 %36 to i32, !dbg !5656
  %37 = load i8*, i8** %type, align 8, !dbg !5658
  %38 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %desc.addr, align 8, !dbg !5659
  %call52 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %38) #4, !dbg !5660
  %39 = load i32, i32* %bandwidth, align 4, !dbg !5661
  %mul53 = mul i32 %call52, %39, !dbg !5662
  %40 = load i32, i32* %interval, align 4, !dbg !5663
  %41 = load i8, i8* %unit, align 1, !dbg !5664
  %conv54 = sext i8 %41 to i32, !dbg !5664
  %call55 = call i32 (i8*, i8*, ...) @sprintf(i8* %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @format_endpt, i64 0, i64 0), i32 %conv49, i32 %conv50, i32 %conv51, i8* %37, i32 %mul53, i32 %40, i32 %conv54) #4, !dbg !5665
  %42 = load i8*, i8** %start.addr, align 8, !dbg !5666
  %idx.ext = sext i32 %call55 to i64, !dbg !5666
  %add.ptr = getelementptr i8, i8* %42, i64 %idx.ext, !dbg !5666
  store i8* %add.ptr, i8** %start.addr, align 8, !dbg !5666
  %43 = load i8*, i8** %start.addr, align 8, !dbg !5667
  store i8* %43, i8** %retval, align 8, !dbg !5668
  br label %return, !dbg !5668

return:                                           ; preds = %if.end48, %sw.default, %if.then
  %44 = load i8*, i8** %retval, align 8, !dbg !5669
  ret i8* %44, !dbg !5669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %epd) #1 !dbg !5670 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5673, metadata !DIExpression()), !dbg !5674
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5675
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 2, !dbg !5676
  %1 = load i8, i8* %bEndpointAddress, align 1, !dbg !5676
  %conv = zext i8 %1 to i32, !dbg !5675
  %and = and i32 %conv, 128, !dbg !5677
  %cmp = icmp eq i32 %and, 128, !dbg !5678
  %conv1 = zext i1 %cmp to i32, !dbg !5678
  ret i32 %conv1, !dbg !5679
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_maxp_mult(%struct.usb_endpoint_descriptor* %epd) #1 !dbg !5680 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  %maxp = alloca i32, align 4
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5681, metadata !DIExpression()), !dbg !5682
  call void @llvm.dbg.declare(metadata i32* %maxp, metadata !5683, metadata !DIExpression()), !dbg !5684
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5685
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 4, !dbg !5685
  %1 = load i16, i16* %wMaxPacketSize, align 1, !dbg !5685
  %conv = zext i16 %1 to i32, !dbg !5685
  store i32 %conv, i32* %maxp, align 4, !dbg !5684
  %2 = load i32, i32* %maxp, align 4, !dbg !5686
  %and = and i32 %2, 6144, !dbg !5686
  %shr = ashr i32 %and, 11, !dbg !5686
  %add = add i32 %shr, 1, !dbg !5687
  ret i32 %add, !dbg !5688
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %epd) #1 !dbg !5689 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5690, metadata !DIExpression()), !dbg !5691
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5692
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 3, !dbg !5693
  %1 = load i8, i8* %bmAttributes, align 1, !dbg !5693
  %conv = zext i8 %1 to i32, !dbg !5692
  %and = and i32 %conv, 3, !dbg !5694
  ret i32 %and, !dbg !5695
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %epd) #1 !dbg !5696 {
entry:
  %epd.addr = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_endpoint_descriptor* %epd, %struct.usb_endpoint_descriptor** %epd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.usb_endpoint_descriptor** %epd.addr, metadata !5697, metadata !DIExpression()), !dbg !5698
  %0 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %epd.addr, align 8, !dbg !5699
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %0, i32 0, i32 4, !dbg !5699
  %1 = load i16, i16* %wMaxPacketSize, align 1, !dbg !5699
  %conv = zext i16 %1 to i32, !dbg !5699
  %and = and i32 %conv, 2047, !dbg !5700
  ret i32 %and, !dbg !5701
}

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #0

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #1 !dbg !5702 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5705, metadata !DIExpression()), !dbg !5706
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5707, metadata !DIExpression()), !dbg !5708
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5709, metadata !DIExpression()), !dbg !5711
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5711
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !5712
  %tobool = icmp ne i32 %0, 0, !dbg !5712
  %lnot = xor i1 %tobool, true, !dbg !5712
  %lnot1 = xor i1 %lnot, true, !dbg !5712
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5712
  %conv = sext i32 %lnot.ext to i64, !dbg !5712
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5712
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5711

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5712

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !5714

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !5716

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !5714
  %2 = load i64, i64* %count.addr, align 8, !dbg !5714
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i64 0, i64 0), i32 %1, i64 %2) #4, !dbg !5714
  br label %do.body4, !dbg !5714

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !5718

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5720

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !5718

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i64 0, i64 0), i32 134, i32 2313, i64 12) #5, !dbg !5722, !srcloc !5724
  br label %do.end8, !dbg !5722

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #5, !dbg !5725, !srcloc !5727
  br label %do.body9, !dbg !5718

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5728

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !5718

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !5714

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5730

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5714

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !5714

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5711
  %tobool15 = icmp ne i32 %3, 0, !dbg !5711
  %lnot16 = xor i1 %tobool15, true, !dbg !5711
  %lnot18 = xor i1 %lnot16, true, !dbg !5711
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5711
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5711
  store i64 %conv20, i64* %tmp, align 8, !dbg !5712
  %4 = load i64, i64* %tmp, align 8, !dbg !5711
  ret void, !dbg !5732
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #0

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #0

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #1 !dbg !5733 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5736, metadata !DIExpression()), !dbg !5737
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5738, metadata !DIExpression()), !dbg !5739
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !5740, metadata !DIExpression()), !dbg !5741
  ret void, !dbg !5742
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #0

attributes #0 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { noredzone }
attributes #5 = { nounwind }
attributes #6 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4512, !4513, !4514, !4515}
!llvm.ident = !{!4516}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "usbfs_devices_fops", scope: !2, file: !3, line: 603, type: !2834, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !163, globals: !4453, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/core/devices.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !19, !24, !30, !37, !43, !52, !60, !66, !72, !79, !87, !93, !107, !119, !128, !135, !140, !146, !152, !158}
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
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_state", file: !108, line: 1156, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/uapi/linux/usb/ch9.h", directory: "/home/lizy2001/genbc/linux")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118}
!110 = !DIEnumerator(name: "USB_STATE_NOTATTACHED", value: 0, isUnsigned: true)
!111 = !DIEnumerator(name: "USB_STATE_ATTACHED", value: 1, isUnsigned: true)
!112 = !DIEnumerator(name: "USB_STATE_POWERED", value: 2, isUnsigned: true)
!113 = !DIEnumerator(name: "USB_STATE_RECONNECTING", value: 3, isUnsigned: true)
!114 = !DIEnumerator(name: "USB_STATE_UNAUTHENTICATED", value: 4, isUnsigned: true)
!115 = !DIEnumerator(name: "USB_STATE_DEFAULT", value: 5, isUnsigned: true)
!116 = !DIEnumerator(name: "USB_STATE_ADDRESS", value: 6, isUnsigned: true)
!117 = !DIEnumerator(name: "USB_STATE_CONFIGURED", value: 7, isUnsigned: true)
!118 = !DIEnumerator(name: "USB_STATE_SUSPENDED", value: 8, isUnsigned: true)
!119 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_speed", file: !108, line: 1146, baseType: !7, size: 32, elements: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127}
!121 = !DIEnumerator(name: "USB_SPEED_UNKNOWN", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "USB_SPEED_LOW", value: 1, isUnsigned: true)
!123 = !DIEnumerator(name: "USB_SPEED_FULL", value: 2, isUnsigned: true)
!124 = !DIEnumerator(name: "USB_SPEED_HIGH", value: 3, isUnsigned: true)
!125 = !DIEnumerator(name: "USB_SPEED_WIRELESS", value: 4, isUnsigned: true)
!126 = !DIEnumerator(name: "USB_SPEED_SUPER", value: 5, isUnsigned: true)
!127 = !DIEnumerator(name: "USB_SPEED_SUPER_PLUS", value: 6, isUnsigned: true)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_interface_condition", file: !129, line: 96, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/usb.h", directory: "/home/lizy2001/genbc/linux")
!130 = !{!131, !132, !133, !134}
!131 = !DIEnumerator(name: "USB_INTERFACE_UNBOUND", value: 0, isUnsigned: true)
!132 = !DIEnumerator(name: "USB_INTERFACE_BINDING", value: 1, isUnsigned: true)
!133 = !DIEnumerator(name: "USB_INTERFACE_BOUND", value: 2, isUnsigned: true)
!134 = !DIEnumerator(name: "USB_INTERFACE_UNBINDING", value: 3, isUnsigned: true)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_device_removable", file: !129, line: 476, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE_UNKNOWN", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "USB_DEVICE_REMOVABLE", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "USB_DEVICE_FIXED", value: 2, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !141, line: 11, baseType: !7, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!142 = !{!143, !144, !145}
!143 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!144 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!145 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb3_link_state", file: !108, line: 1181, baseType: !7, size: 32, elements: !147)
!147 = !{!148, !149, !150, !151}
!148 = !DIEnumerator(name: "USB3_LPM_U0", value: 0, isUnsigned: true)
!149 = !DIEnumerator(name: "USB3_LPM_U1", value: 1, isUnsigned: true)
!150 = !DIEnumerator(name: "USB3_LPM_U2", value: 2, isUnsigned: true)
!151 = !DIEnumerator(name: "USB3_LPM_U3", value: 3, isUnsigned: true)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "usb_dev_authorize_policy", file: !153, line: 75, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/usb/hcd.h", directory: "/home/lizy2001/genbc/linux")
!154 = !{!155, !156, !157}
!155 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_NONE", value: 0, isUnsigned: true)
!156 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_ALL", value: 1, isUnsigned: true)
!157 = !DIEnumerator(name: "USB_DEVICE_AUTHORIZE_INTERNAL", value: 2, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !159, line: 10, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!160 = !{!161, !162}
!161 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!163 = !{!164, !165, !240, !712, !290, !829, !3945, !224}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_hcd", file: !153, line: 81, size: 4672, elements: !167)
!167 = !{!168, !4198, !4199, !4200, !4201, !4205, !4206, !4261, !4262, !4263, !4384, !4387, !4390, !4391, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4408, !4409, !4410, !4438, !4439, !4441, !4442, !4443, !4444, !4448, !4449, !4452}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !166, file: !153, line: 86, baseType: !169, size: 960)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bus", file: !129, line: 424, size: 960, elements: !170)
!170 = !{!171, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3900, !3901, !3906, !4193, !4194, !4195, !4196, !4197}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !169, file: !129, line: 425, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !73, line: 461, size: 5568, elements: !174)
!174 = !{!175, !3343, !3344, !3347, !3348, !3399, !3490, !3491, !3492, !3493, !3494, !3503, !3608, !3621, !3816, !3817, !3821, !3823, !3824, !3825, !3829, !3835, !3836, !3839, !3840, !3841, !3842, !3843, !3844, !3845, !3877, !3878, !3879, !3882, !3885, !3886, !3887, !3888}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !173, file: !73, line: 462, baseType: !176, size: 512)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !177, line: 64, size: 512, elements: !178)
!177 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!178 = !{!179, !183, !190, !192, !253, !3193, !3333, !3338, !3339, !3340, !3341, !3342}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !176, file: !177, line: 65, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !176, file: !177, line: 66, baseType: !184, size: 128, offset: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !185, line: 178, size: 128, elements: !186)
!185 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!186 = !{!187, !189}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !184, file: !185, line: 179, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !184, file: !185, line: 179, baseType: !188, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !176, file: !177, line: 67, baseType: !191, size: 64, offset: 192)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !176, file: !177, line: 68, baseType: !193, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !177, line: 192, size: 704, elements: !195)
!195 = !{!196, !197, !213, !214}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !194, file: !177, line: 193, baseType: !184, size: 128)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !194, file: !177, line: 194, baseType: !198, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !199, line: 83, baseType: !200)
!199 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !199, line: 71, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, scope: !200, file: !199, line: 72, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !199, line: 72, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !203, file: !199, line: 73, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !199, line: 20, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !206, file: !199, line: 21, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !210, line: 25, baseType: !211)
!210 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 25, elements: !212)
!212 = !{}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !194, file: !177, line: 195, baseType: !176, size: 512, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !194, file: !177, line: 196, baseType: !215, size: 64, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !177, line: 156, size: 192, elements: !218)
!218 = !{!219, !225, !230}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !217, file: !177, line: 157, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !193, !191}
!224 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !217, file: !177, line: 158, baseType: !226, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!180, !193, !191}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !217, file: !177, line: 159, baseType: !231, size: 64, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!224, !193, !191, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !177, line: 148, size: 20736, elements: !237)
!237 = !{!238, !243, !247, !248, !252}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !236, file: !177, line: 149, baseType: !239, size: 192)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 192, elements: !241)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!241 = !{!242}
!242 = !DISubrange(count: 3)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !236, file: !177, line: 150, baseType: !244, size: 4096, offset: 192)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !240, size: 4096, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !236, file: !177, line: 151, baseType: !224, size: 32, offset: 4288)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !236, file: !177, line: 152, baseType: !249, size: 16384, offset: 4320)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 16384, elements: !250)
!250 = !{!251}
!251 = !DISubrange(count: 2048)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !236, file: !177, line: 153, baseType: !224, size: 32, offset: 20704)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !176, file: !177, line: 69, baseType: !254, size: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !177, line: 138, size: 448, elements: !256)
!256 = !{!257, !261, !291, !293, !3155, !3183, !3187}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !255, file: !177, line: 139, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !191}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !255, file: !177, line: 140, baseType: !262, size: 64, offset: 64)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !265, line: 230, size: 128, elements: !266)
!265 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!266 = !{!267, !283}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !264, file: !265, line: 231, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!271, !191, !276, !240}
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !185, line: 60, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !273, line: 73, baseType: !274)
!273 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !273, line: 15, baseType: !275)
!275 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !265, line: 30, size: 128, elements: !278)
!278 = !{!279, !280}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !277, file: !265, line: 31, baseType: !180, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !277, file: !265, line: 32, baseType: !281, size: 16, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !185, line: 19, baseType: !282)
!282 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !264, file: !265, line: 232, baseType: !284, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!271, !191, !276, !180, !287}
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !185, line: 55, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !273, line: 72, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !273, line: 16, baseType: !290)
!290 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !255, file: !177, line: 141, baseType: !292, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !255, file: !177, line: 142, baseType: !294, size: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !265, line: 84, size: 320, elements: !298)
!298 = !{!299, !300, !304, !3152, !3153}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !297, file: !265, line: 85, baseType: !180, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !297, file: !265, line: 86, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!281, !191, !276, !224}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !297, file: !265, line: 88, baseType: !305, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!281, !191, !308, !224}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !265, line: 168, size: 448, elements: !310)
!310 = !{!311, !312, !313, !314, !3147, !3148}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !309, file: !265, line: 169, baseType: !277, size: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !309, file: !265, line: 170, baseType: !287, size: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !309, file: !265, line: 171, baseType: !164, size: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !309, file: !265, line: 172, baseType: !315, size: 64, offset: 256)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!271, !318, !191, !308, !240, !497, !287}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !44, line: 916, size: 1856, align: 32, elements: !320)
!320 = !{!321, !339, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3130, !3131, !3140, !3141, !3142, !3143, !3144, !3145, !3146}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !319, file: !44, line: 920, baseType: !322, size: 128)
!322 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !319, file: !44, line: 917, size: 128, elements: !323)
!323 = !{!324, !330}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !322, file: !44, line: 918, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !326, line: 58, size: 64, elements: !327)
!326 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !325, file: !326, line: 59, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !322, file: !44, line: 919, baseType: !331, size: 128, align: 64)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !185, line: 216, size: 128, align: 64, elements: !332)
!332 = !{!333, !335}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !331, file: !185, line: 217, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !331, file: !185, line: 218, baseType: !336, size: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{null, !334}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !319, file: !44, line: 921, baseType: !340, size: 128, offset: 128)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !341, line: 8, size: 128, elements: !342)
!341 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!342 = !{!343, !347}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !340, file: !341, line: 9, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !346, line: 18, flags: DIFlagFwdDecl)
!346 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!347 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !340, file: !341, line: 10, baseType: !348, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !346, line: 89, size: 1536, elements: !350)
!350 = !{!351, !352, !362, !370, !371, !394, !3080, !3082, !3094, !3095, !3096, !3097, !3098, !3104, !3105, !3106}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !349, file: !346, line: 91, baseType: !7, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !349, file: !346, line: 92, baseType: !353, size: 32, offset: 32)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !354, line: 277, baseType: !355)
!354 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !354, line: 277, size: 32, elements: !356)
!356 = !{!357}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !355, file: !354, line: 277, baseType: !358, size: 32)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !354, line: 70, baseType: !359)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !354, line: 65, size: 32, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !359, file: !354, line: 66, baseType: !7, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !349, file: !346, line: 93, baseType: !363, size: 128, offset: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !364, line: 38, size: 128, elements: !365)
!364 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!365 = !{!366, !368}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !363, file: !364, line: 39, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !363, file: !364, line: 39, baseType: !369, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !349, file: !346, line: 94, baseType: !348, size: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !349, file: !346, line: 95, baseType: !372, size: 128, offset: 256)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !346, line: 47, size: 128, elements: !373)
!373 = !{!374, !390}
!374 = !DIDerivedType(tag: DW_TAG_member, scope: !372, file: !346, line: 48, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !372, file: !346, line: 48, size: 64, elements: !376)
!376 = !{!377, !386}
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !346, line: 49, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !375, file: !346, line: 49, size: 64, elements: !379)
!379 = !{!380, !385}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !378, file: !346, line: 50, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !382, line: 21, baseType: !383)
!382 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !384, line: 27, baseType: !7)
!384 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!385 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !378, file: !346, line: 50, baseType: !381, size: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !375, file: !346, line: 52, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !382, line: 23, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !384, line: 31, baseType: !389)
!389 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !372, file: !346, line: 54, baseType: !391, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !349, file: !346, line: 96, baseType: !395, size: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !44, line: 610, size: 4224, elements: !397)
!397 = !{!398, !399, !400, !408, !415, !416, !564, !2791, !2792, !2793, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !3056, !3064, !3065, !3066, !3076, !3077, !3078, !3079}
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !396, file: !44, line: 611, baseType: !281, size: 16)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !396, file: !44, line: 612, baseType: !282, size: 16, offset: 16)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !396, file: !44, line: 613, baseType: !401, size: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !402, line: 23, baseType: !403)
!402 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 21, size: 32, elements: !404)
!404 = !{!405}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !403, file: !402, line: 22, baseType: !406, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !185, line: 32, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !273, line: 49, baseType: !7)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !396, file: !44, line: 614, baseType: !409, size: 32, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !402, line: 28, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 26, size: 32, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !410, file: !402, line: 27, baseType: !413, size: 32)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !185, line: 33, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !273, line: 50, baseType: !7)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !396, file: !44, line: 615, baseType: !7, size: 32, offset: 96)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !396, file: !44, line: 622, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !44, line: 1864, size: 1536, align: 512, elements: !420)
!420 = !{!421, !425, !438, !442, !448, !452, !458, !462, !466, !470, !474, !475, !481, !485, !511, !540, !544, !550, !555, !559, !560}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !419, file: !44, line: 1865, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!348, !395, !348, !7}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !419, file: !44, line: 1866, baseType: !426, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!180, !348, !395, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !431, line: 10, size: 128, elements: !432)
!431 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!432 = !{!433, !437}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !430, file: !431, line: 11, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{null, !164}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !430, file: !431, line: 12, baseType: !164, size: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !419, file: !44, line: 1867, baseType: !439, size: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!224, !395, !224}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !419, file: !44, line: 1868, baseType: !443, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!446, !395, !224}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !44, line: 581, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !419, file: !44, line: 1870, baseType: !449, size: 64, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!224, !348, !240, !224}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !419, file: !44, line: 1872, baseType: !453, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!224, !395, !348, !281, !456}
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !185, line: 30, baseType: !457)
!457 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !419, file: !44, line: 1873, baseType: !459, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!224, !348, !395, !348}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !419, file: !44, line: 1874, baseType: !463, size: 64, offset: 448)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!224, !395, !348}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !419, file: !44, line: 1875, baseType: !467, size: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!224, !395, !348, !180}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !419, file: !44, line: 1876, baseType: !471, size: 64, offset: 576)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!224, !395, !348, !281}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !419, file: !44, line: 1877, baseType: !463, size: 64, offset: 640)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !419, file: !44, line: 1878, baseType: !476, size: 64, offset: 704)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!224, !395, !348, !281, !479}
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !185, line: 16, baseType: !480)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !185, line: 13, baseType: !381)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !419, file: !44, line: 1879, baseType: !482, size: 64, offset: 768)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!224, !395, !348, !395, !348, !7}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !419, file: !44, line: 1881, baseType: !486, size: 64, offset: 832)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!224, !348, !489}
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !44, line: 219, size: 640, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !500, !508, !509, !510}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !490, file: !44, line: 220, baseType: !7, size: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !490, file: !44, line: 221, baseType: !281, size: 16, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !490, file: !44, line: 222, baseType: !401, size: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !490, file: !44, line: 223, baseType: !409, size: 32, offset: 96)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !490, file: !44, line: 224, baseType: !497, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !185, line: 46, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !273, line: 88, baseType: !499)
!499 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !490, file: !44, line: 225, baseType: !501, size: 128, offset: 192)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !502, line: 13, size: 128, elements: !503)
!502 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!503 = !{!504, !507}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !501, file: !502, line: 14, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !502, line: 8, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !384, line: 30, baseType: !499)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !501, file: !502, line: 15, baseType: !275, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !490, file: !44, line: 226, baseType: !501, size: 128, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !490, file: !44, line: 227, baseType: !501, size: 128, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !490, file: !44, line: 234, baseType: !318, size: 64, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !419, file: !44, line: 1882, baseType: !512, size: 64, offset: 896)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!224, !515, !517, !381, !7}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !519, line: 22, size: 1152, elements: !520)
!519 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!520 = !{!521, !522, !523, !524, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !518, file: !519, line: 23, baseType: !381, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !518, file: !519, line: 24, baseType: !281, size: 16, offset: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !518, file: !519, line: 25, baseType: !7, size: 32, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !518, file: !519, line: 26, baseType: !525, size: 32, offset: 96)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !185, line: 104, baseType: !381)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !518, file: !519, line: 27, baseType: !387, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !518, file: !519, line: 28, baseType: !387, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !518, file: !519, line: 37, baseType: !387, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !518, file: !519, line: 38, baseType: !479, size: 32, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !518, file: !519, line: 39, baseType: !479, size: 32, offset: 352)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !518, file: !519, line: 40, baseType: !401, size: 32, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !518, file: !519, line: 41, baseType: !409, size: 32, offset: 416)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !518, file: !519, line: 42, baseType: !497, size: 64, offset: 448)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !518, file: !519, line: 43, baseType: !501, size: 128, offset: 512)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !518, file: !519, line: 44, baseType: !501, size: 128, offset: 640)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !518, file: !519, line: 45, baseType: !501, size: 128, offset: 768)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !518, file: !519, line: 46, baseType: !501, size: 128, offset: 896)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !518, file: !519, line: 47, baseType: !387, size: 64, offset: 1024)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !518, file: !519, line: 48, baseType: !387, size: 64, offset: 1088)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !419, file: !44, line: 1883, baseType: !541, size: 64, offset: 960)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!271, !348, !240, !287}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !419, file: !44, line: 1884, baseType: !545, size: 64, offset: 1024)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!224, !395, !548, !387, !387}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !44, line: 50, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !419, file: !44, line: 1886, baseType: !551, size: 64, offset: 1088)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!224, !395, !554, !224}
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !419, file: !44, line: 1887, baseType: !556, size: 64, offset: 1152)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!224, !395, !348, !318, !7, !281}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !419, file: !44, line: 1890, baseType: !471, size: 64, offset: 1216)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !419, file: !44, line: 1891, baseType: !561, size: 64, offset: 1280)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!224, !395, !446, !224}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !396, file: !44, line: 623, baseType: !565, size: 64, offset: 192)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !44, line: 1416, size: 9472, elements: !567)
!567 = !{!568, !569, !570, !571, !572, !573, !622, !2398, !2480, !2563, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2579, !2583, !2584, !2587, !2588, !2591, !2592, !2593, !2634, !2661, !2662, !2663, !2664, !2665, !2666, !2669, !2671, !2678, !2679, !2681, !2682, !2683, !2742, !2743, !2758, !2759, !2760, !2761, !2762, !2765, !2766, !2767, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !566, file: !44, line: 1417, baseType: !184, size: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !566, file: !44, line: 1418, baseType: !479, size: 32, offset: 128)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !566, file: !44, line: 1419, baseType: !393, size: 8, offset: 160)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !566, file: !44, line: 1420, baseType: !290, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !566, file: !44, line: 1421, baseType: !497, size: 64, offset: 256)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !566, file: !44, line: 1422, baseType: !574, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !44, line: 2228, size: 576, elements: !576)
!576 = !{!577, !578, !579, !585, !589, !593, !597, !601, !602, !612, !615, !616, !617, !619, !620, !621}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !575, file: !44, line: 2229, baseType: !180, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !575, file: !44, line: 2230, baseType: !224, size: 32, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !575, file: !44, line: 2238, baseType: !580, size: 64, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!224, !583}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !44, line: 69, flags: DIFlagFwdDecl)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !575, file: !44, line: 2239, baseType: !586, size: 64, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !44, line: 70, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !575, file: !44, line: 2240, baseType: !590, size: 64, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!348, !574, !224, !180, !164}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !575, file: !44, line: 2242, baseType: !594, size: 64, offset: 320)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !565}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !575, file: !44, line: 2243, baseType: !598, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !600, line: 76, flags: DIFlagFwdDecl)
!600 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!601 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !575, file: !44, line: 2244, baseType: !574, size: 64, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !575, file: !44, line: 2245, baseType: !603, size: 64, offset: 512)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !185, line: 182, size: 64, elements: !604)
!604 = !{!605}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !603, file: !185, line: 183, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !185, line: 186, size: 128, elements: !608)
!608 = !{!609, !610}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !607, file: !185, line: 187, baseType: !606, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !607, file: !185, line: 187, baseType: !611, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !575, file: !44, line: 2247, baseType: !613, offset: 576)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !614, line: 187, elements: !212)
!614 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!615 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !575, file: !44, line: 2248, baseType: !613, offset: 576)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !575, file: !44, line: 2249, baseType: !613, offset: 576)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !575, file: !44, line: 2250, baseType: !618, offset: 576)
!618 = !DICompositeType(tag: DW_TAG_array_type, baseType: !613, elements: !241)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !575, file: !44, line: 2252, baseType: !613, offset: 576)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !575, file: !44, line: 2253, baseType: !613, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !575, file: !44, line: 2254, baseType: !613, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !566, file: !44, line: 1423, baseType: !623, size: 64, offset: 384)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !44, line: 1935, size: 1472, elements: !626)
!626 = !{!627, !631, !635, !636, !640, !646, !650, !651, !652, !656, !660, !661, !662, !663, !669, !674, !675, !682, !683, !684, !685, !2382, !2397}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !625, file: !44, line: 1936, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{!395, !565}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !625, file: !44, line: 1937, baseType: !632, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DISubroutineType(types: !634)
!634 = !{null, !395}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !625, file: !44, line: 1938, baseType: !632, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !625, file: !44, line: 1940, baseType: !637, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !395, !224}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !625, file: !44, line: 1941, baseType: !641, size: 64, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!224, !395, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !44, line: 289, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !625, file: !44, line: 1942, baseType: !647, size: 64, offset: 320)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!224, !395}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !625, file: !44, line: 1943, baseType: !632, size: 64, offset: 384)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !625, file: !44, line: 1944, baseType: !594, size: 64, offset: 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !625, file: !44, line: 1945, baseType: !653, size: 64, offset: 512)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!224, !565, !224}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !625, file: !44, line: 1946, baseType: !657, size: 64, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!224, !565}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !625, file: !44, line: 1947, baseType: !657, size: 64, offset: 640)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !625, file: !44, line: 1948, baseType: !657, size: 64, offset: 704)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !625, file: !44, line: 1949, baseType: !657, size: 64, offset: 768)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !625, file: !44, line: 1950, baseType: !664, size: 64, offset: 832)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!224, !348, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !44, line: 57, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !625, file: !44, line: 1951, baseType: !670, size: 64, offset: 896)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!224, !565, !673, !240}
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !625, file: !44, line: 1952, baseType: !594, size: 64, offset: 960)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !625, file: !44, line: 1954, baseType: !676, size: 64, offset: 1024)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!224, !679, !348}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !681, line: 539, flags: DIFlagFwdDecl)
!681 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!682 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !625, file: !44, line: 1955, baseType: !676, size: 64, offset: 1088)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !625, file: !44, line: 1956, baseType: !676, size: 64, offset: 1152)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !625, file: !44, line: 1957, baseType: !676, size: 64, offset: 1216)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !625, file: !44, line: 1963, baseType: !686, size: 64, offset: 1280)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!224, !565, !689, !712}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !691, line: 68, size: 512, align: 128, elements: !692)
!691 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!692 = !{!693, !694, !2374, !2381}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !691, line: 69, baseType: !290, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !691, line: 77, baseType: !695, size: 320, offset: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !691, line: 77, size: 320, elements: !696)
!696 = !{!697, !885, !890, !918, !926, !932, !2305, !2373}
!697 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 78, baseType: !698, size: 320)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 78, size: 320, elements: !699)
!699 = !{!700, !701, !883, !884}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !698, file: !691, line: 84, baseType: !184, size: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !698, file: !691, line: 86, baseType: !702, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !44, line: 451, size: 1216, align: 64, elements: !704)
!704 = !{!705, !706, !714, !715, !720, !735, !751, !752, !753, !754, !876, !877, !880, !881, !882}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !703, file: !44, line: 452, baseType: !395, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !703, file: !44, line: 453, baseType: !707, size: 128, offset: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !708, line: 292, size: 128, elements: !709)
!708 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!709 = !{!710, !711, !713}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !707, file: !708, line: 293, baseType: !198)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !707, file: !708, line: 295, baseType: !712, size: 32)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !185, line: 148, baseType: !7)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !707, file: !708, line: 296, baseType: !164, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !703, file: !44, line: 454, baseType: !712, size: 32, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !703, file: !44, line: 455, baseType: !716, size: 32, offset: 224)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !185, line: 168, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 166, size: 32, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !717, file: !185, line: 167, baseType: !224, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !703, file: !44, line: 460, baseType: !721, size: 128, offset: 256)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !722, line: 125, size: 128, elements: !723)
!722 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!723 = !{!724, !734}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !721, file: !722, line: 126, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !722, line: 31, size: 64, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !725, file: !722, line: 32, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !722, line: 24, size: 192, align: 64, elements: !730)
!730 = !{!731, !732, !733}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !729, file: !722, line: 25, baseType: !290, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !729, file: !722, line: 26, baseType: !728, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !729, file: !722, line: 27, baseType: !728, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !721, file: !722, line: 127, baseType: !728, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !703, file: !44, line: 461, baseType: !736, size: 256, offset: 384)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !737, line: 35, size: 256, elements: !738)
!737 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!738 = !{!739, !747, !748, !750}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !736, file: !737, line: 36, baseType: !740, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !741, line: 13, baseType: !742)
!741 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!742 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !185, line: 175, baseType: !743)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !185, line: 173, size: 64, elements: !744)
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !743, file: !185, line: 174, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !382, line: 22, baseType: !506)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !736, file: !737, line: 42, baseType: !740, size: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !736, file: !737, line: 46, baseType: !749, offset: 128)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !199, line: 29, baseType: !206)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !736, file: !737, line: 47, baseType: !184, size: 128, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !703, file: !44, line: 462, baseType: !290, size: 64, offset: 640)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !703, file: !44, line: 463, baseType: !290, size: 64, offset: 704)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !703, file: !44, line: 464, baseType: !290, size: 64, offset: 768)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !703, file: !44, line: 465, baseType: !755, size: 64, offset: 832)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !44, line: 367, size: 1408, elements: !758)
!758 = !{!759, !763, !767, !771, !775, !779, !785, !791, !795, !800, !804, !808, !812, !840, !844, !850, !851, !852, !856, !861, !865, !872}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !757, file: !44, line: 368, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!224, !689, !644}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !757, file: !44, line: 369, baseType: !764, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!224, !318, !689}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !757, file: !44, line: 372, baseType: !768, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!224, !702, !644}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !757, file: !44, line: 375, baseType: !772, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!224, !689}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !757, file: !44, line: 381, baseType: !776, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!224, !318, !702, !188, !7}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !757, file: !44, line: 383, baseType: !780, size: 64, offset: 320)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !783}
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !44, line: 290, flags: DIFlagFwdDecl)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !757, file: !44, line: 385, baseType: !786, size: 64, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!224, !318, !702, !497, !7, !7, !789, !790}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !757, file: !44, line: 388, baseType: !792, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!224, !318, !702, !497, !7, !7, !689, !164}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !757, file: !44, line: 393, baseType: !796, size: 64, offset: 512)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!799, !702, !799}
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !185, line: 125, baseType: !387)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !757, file: !44, line: 394, baseType: !801, size: 64, offset: 576)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !689, !7, !7}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !757, file: !44, line: 395, baseType: !805, size: 64, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!224, !689, !712}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !757, file: !44, line: 396, baseType: !809, size: 64, offset: 704)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !689}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !757, file: !44, line: 397, baseType: !813, size: 64, offset: 768)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!271, !816, !838}
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !44, line: 320, size: 384, elements: !818)
!818 = !{!819, !820, !821, !825, !826, !827, !830, !831}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !817, file: !44, line: 321, baseType: !318, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !817, file: !44, line: 326, baseType: !497, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !817, file: !44, line: 327, baseType: !822, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{null, !816, !275, !275}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !817, file: !44, line: 328, baseType: !164, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !817, file: !44, line: 329, baseType: !224, size: 32, offset: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !817, file: !44, line: 330, baseType: !828, size: 16, offset: 288)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !382, line: 19, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !384, line: 24, baseType: !282)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !817, file: !44, line: 331, baseType: !828, size: 16, offset: 304)
!831 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !44, line: 332, baseType: !832, size: 64, offset: 320)
!832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !817, file: !44, line: 332, size: 64, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !832, file: !44, line: 333, baseType: !7, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !832, file: !44, line: 334, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !44, line: 334, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !44, line: 64, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !757, file: !44, line: 402, baseType: !841, size: 64, offset: 832)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!224, !702, !689, !689, !5}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !757, file: !44, line: 404, baseType: !845, size: 64, offset: 896)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!456, !689, !848}
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !849, line: 305, baseType: !7)
!849 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!850 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !757, file: !44, line: 405, baseType: !809, size: 64, offset: 960)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !757, file: !44, line: 406, baseType: !772, size: 64, offset: 1024)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !757, file: !44, line: 407, baseType: !853, size: 64, offset: 1088)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!224, !689, !290, !290}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !757, file: !44, line: 409, baseType: !857, size: 64, offset: 1152)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !689, !860, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !757, file: !44, line: 410, baseType: !862, size: 64, offset: 1216)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!224, !702, !689}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !757, file: !44, line: 413, baseType: !866, size: 64, offset: 1280)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!224, !869, !318, !871}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !44, line: 61, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !757, file: !44, line: 415, baseType: !873, size: 64, offset: 1344)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !318}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !703, file: !44, line: 466, baseType: !290, size: 64, offset: 896)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !703, file: !44, line: 467, baseType: !878, size: 32, offset: 960)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !879, line: 8, baseType: !381)
!879 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!880 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !703, file: !44, line: 468, baseType: !198, offset: 992)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !703, file: !44, line: 469, baseType: !184, size: 128, offset: 1024)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !703, file: !44, line: 470, baseType: !164, size: 64, offset: 1152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !698, file: !691, line: 87, baseType: !290, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !698, file: !691, line: 94, baseType: !290, size: 64, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 96, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 96, size: 64, elements: !887)
!887 = !{!888}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !886, file: !691, line: 101, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !185, line: 143, baseType: !387)
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 103, baseType: !891, size: 320)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 103, size: 320, elements: !892)
!892 = !{!893, !903, !906, !907}
!893 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !691, line: 104, baseType: !894, size: 128)
!894 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !891, file: !691, line: 104, size: 128, elements: !895)
!895 = !{!896, !897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !894, file: !691, line: 105, baseType: !184, size: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !691, line: 106, baseType: !898, size: 128)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !894, file: !691, line: 106, size: 128, elements: !899)
!899 = !{!900, !901, !902}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !898, file: !691, line: 107, baseType: !689, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !898, file: !691, line: 109, baseType: !224, size: 32, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !898, file: !691, line: 110, baseType: !224, size: 32, offset: 96)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !891, file: !691, line: 117, baseType: !904, size: 64, offset: 128)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !691, line: 117, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !891, file: !691, line: 119, baseType: !164, size: 64, offset: 192)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !891, file: !691, line: 120, baseType: !908, size: 64, offset: 256)
!908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !891, file: !691, line: 120, size: 64, elements: !909)
!909 = !{!910, !911, !912}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !908, file: !691, line: 121, baseType: !164, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !908, file: !691, line: 122, baseType: !290, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !908, file: !691, line: 123, baseType: !913, size: 32)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !908, file: !691, line: 123, size: 32, elements: !914)
!914 = !{!915, !916, !917}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !913, file: !691, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !913, file: !691, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !913, file: !691, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!918 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 130, baseType: !919, size: 192)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 130, size: 192, elements: !920)
!920 = !{!921, !922, !923, !924, !925}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !919, file: !691, line: 131, baseType: !290, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !919, file: !691, line: 134, baseType: !393, size: 8, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !919, file: !691, line: 135, baseType: !393, size: 8, offset: 72)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !919, file: !691, line: 136, baseType: !716, size: 32, offset: 96)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !919, file: !691, line: 137, baseType: !7, size: 32, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 139, baseType: !927, size: 256)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 139, size: 256, elements: !928)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !927, file: !691, line: 140, baseType: !290, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !927, file: !691, line: 141, baseType: !716, size: 32, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !927, file: !691, line: 143, baseType: !184, size: 128, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 145, baseType: !933, size: 256)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 145, size: 256, elements: !934)
!934 = !{!935, !936, !938, !939, !2304}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !933, file: !691, line: 146, baseType: !290, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !933, file: !691, line: 147, baseType: !937, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !681, line: 509, baseType: !689)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !933, file: !691, line: 148, baseType: !290, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !691, line: 149, baseType: !940, size: 64, offset: 192)
!940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !933, file: !691, line: 149, size: 64, elements: !941)
!941 = !{!942, !2303}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !940, file: !691, line: 150, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !691, line: 388, size: 7296, elements: !945)
!945 = !{!946, !2299}
!946 = !DIDerivedType(tag: DW_TAG_member, scope: !944, file: !691, line: 389, baseType: !947, size: 7296)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !944, file: !691, line: 389, size: 7296, elements: !948)
!948 = !{!949, !1067, !1068, !1069, !1073, !1074, !1075, !1076, !1077, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1118, !1126, !1129, !1175, !1176, !2283, !2284, !2287, !2288, !2289, !2292, !2293, !2294, !2297, !2298}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !947, file: !691, line: 390, baseType: !950, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !691, line: 305, size: 1472, elements: !952)
!952 = !{!953, !954, !955, !956, !957, !958, !959, !960, !967, !968, !973, !974, !977, !1061, !1062, !1063, !1064, !1065}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !951, file: !691, line: 308, baseType: !290, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !951, file: !691, line: 309, baseType: !290, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !951, file: !691, line: 313, baseType: !950, size: 64, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !951, file: !691, line: 313, baseType: !950, size: 64, offset: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !951, file: !691, line: 315, baseType: !729, size: 192, align: 64, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !951, file: !691, line: 323, baseType: !290, size: 64, offset: 448)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !951, file: !691, line: 327, baseType: !943, size: 64, offset: 512)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !951, file: !691, line: 333, baseType: !961, size: 64, offset: 576)
!961 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !681, line: 284, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !681, line: 284, size: 64, elements: !963)
!963 = !{!964}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !962, file: !681, line: 284, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !966, line: 19, baseType: !290)
!966 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!967 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !951, file: !691, line: 334, baseType: !290, size: 64, offset: 640)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !951, file: !691, line: 343, baseType: !969, size: 256, offset: 704)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !951, file: !691, line: 340, size: 256, elements: !970)
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !969, file: !691, line: 341, baseType: !729, size: 192, align: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !969, file: !691, line: 342, baseType: !290, size: 64, offset: 192)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !951, file: !691, line: 351, baseType: !184, size: 128, offset: 960)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !951, file: !691, line: 353, baseType: !975, size: 64, offset: 1088)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !691, line: 353, flags: DIFlagFwdDecl)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !951, file: !691, line: 356, baseType: !978, size: 64, offset: 1152)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !14, line: 557, size: 832, elements: !981)
!981 = !{!982, !986, !987, !991, !995, !1035, !1039, !1043, !1047, !1048, !1049, !1053, !1057}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !980, file: !14, line: 558, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !950}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !980, file: !14, line: 559, baseType: !983, size: 64, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "split", scope: !980, file: !14, line: 560, baseType: !988, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!224, !950, !290}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !980, file: !14, line: 561, baseType: !992, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!224, !950}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !980, file: !14, line: 562, baseType: !996, size: 64, offset: 256)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!999, !1000}
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !691, line: 682, baseType: !7)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !14, line: 508, size: 768, elements: !1002)
!1002 = !{!1003, !1004, !1005, !1006, !1007, !1008, !1015, !1022, !1028, !1029, !1030, !1032, !1034}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1001, file: !14, line: 509, baseType: !950, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1001, file: !14, line: 510, baseType: !7, size: 32, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1001, file: !14, line: 511, baseType: !712, size: 32, offset: 96)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1001, file: !14, line: 512, baseType: !290, size: 64, offset: 128)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1001, file: !14, line: 513, baseType: !290, size: 64, offset: 192)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1001, file: !14, line: 514, baseType: !1009, size: 64, offset: 256)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !681, line: 385, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !681, line: 385, size: 64, elements: !1012)
!1012 = !{!1013}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1011, file: !681, line: 385, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !966, line: 15, baseType: !290)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1001, file: !14, line: 516, baseType: !1016, size: 64, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !681, line: 359, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !681, line: 359, size: 64, elements: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1018, file: !681, line: 359, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !966, line: 16, baseType: !290)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1001, file: !14, line: 519, baseType: !1023, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !966, line: 21, baseType: !1024)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !966, line: 21, size: 64, elements: !1025)
!1025 = !{!1026}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1024, file: !966, line: 21, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !966, line: 14, baseType: !290)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1001, file: !14, line: 521, baseType: !689, size: 64, offset: 448)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1001, file: !14, line: 522, baseType: !689, size: 64, offset: 512)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1001, file: !14, line: 528, baseType: !1031, size: 64, offset: 576)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1001, file: !14, line: 532, baseType: !1033, size: 64, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1001, file: !14, line: 536, baseType: !937, size: 64, offset: 704)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !980, file: !14, line: 563, baseType: !1036, size: 64, offset: 320)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!999, !1000, !13}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !980, file: !14, line: 565, baseType: !1040, size: 64, offset: 384)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !1000, !290, !290}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !980, file: !14, line: 567, baseType: !1044, size: 64, offset: 448)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!290, !950}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !980, file: !14, line: 571, baseType: !996, size: 64, offset: 512)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !980, file: !14, line: 574, baseType: !996, size: 64, offset: 576)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !980, file: !14, line: 579, baseType: !1050, size: 64, offset: 640)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!224, !950, !290, !164, !224, !224}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !980, file: !14, line: 585, baseType: !1054, size: 64, offset: 704)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!180, !950}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !980, file: !14, line: 615, baseType: !1058, size: 64, offset: 768)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!689, !950, !290}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !951, file: !691, line: 359, baseType: !290, size: 64, offset: 1216)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !951, file: !691, line: 361, baseType: !318, size: 64, offset: 1280)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !951, file: !691, line: 362, baseType: !164, size: 64, offset: 1344)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !951, file: !691, line: 365, baseType: !740, size: 64, offset: 1408)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !951, file: !691, line: 373, baseType: !1066, offset: 1472)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !691, line: 296, elements: !212)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !947, file: !691, line: 391, baseType: !725, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !947, file: !691, line: 392, baseType: !387, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !947, file: !691, line: 394, baseType: !1070, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!290, !318, !290, !290, !290, !290}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !947, file: !691, line: 398, baseType: !290, size: 64, offset: 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !947, file: !691, line: 399, baseType: !290, size: 64, offset: 320)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !947, file: !691, line: 405, baseType: !290, size: 64, offset: 384)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !947, file: !691, line: 406, baseType: !290, size: 64, offset: 448)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !947, file: !691, line: 407, baseType: !1078, size: 64, offset: 512)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !681, line: 286, baseType: !1080)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !681, line: 286, size: 64, elements: !1081)
!1081 = !{!1082}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1080, file: !681, line: 286, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !966, line: 18, baseType: !290)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !947, file: !691, line: 416, baseType: !716, size: 32, offset: 576)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !947, file: !691, line: 428, baseType: !716, size: 32, offset: 608)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !947, file: !691, line: 437, baseType: !716, size: 32, offset: 640)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !947, file: !691, line: 447, baseType: !716, size: 32, offset: 672)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !947, file: !691, line: 450, baseType: !740, size: 64, offset: 704)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !947, file: !691, line: 452, baseType: !224, size: 32, offset: 768)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !947, file: !691, line: 454, baseType: !198, offset: 800)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !947, file: !691, line: 457, baseType: !736, size: 256, offset: 832)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !947, file: !691, line: 459, baseType: !184, size: 128, offset: 1088)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !947, file: !691, line: 466, baseType: !290, size: 64, offset: 1216)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !947, file: !691, line: 467, baseType: !290, size: 64, offset: 1280)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !947, file: !691, line: 469, baseType: !290, size: 64, offset: 1344)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !947, file: !691, line: 470, baseType: !290, size: 64, offset: 1408)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !947, file: !691, line: 471, baseType: !742, size: 64, offset: 1472)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !947, file: !691, line: 472, baseType: !290, size: 64, offset: 1536)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !947, file: !691, line: 473, baseType: !290, size: 64, offset: 1600)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !947, file: !691, line: 474, baseType: !290, size: 64, offset: 1664)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !947, file: !691, line: 475, baseType: !290, size: 64, offset: 1728)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !947, file: !691, line: 477, baseType: !198, offset: 1792)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !947, file: !691, line: 478, baseType: !290, size: 64, offset: 1792)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !947, file: !691, line: 478, baseType: !290, size: 64, offset: 1856)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !947, file: !691, line: 478, baseType: !290, size: 64, offset: 1920)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !947, file: !691, line: 478, baseType: !290, size: 64, offset: 1984)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !947, file: !691, line: 479, baseType: !290, size: 64, offset: 2048)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !947, file: !691, line: 479, baseType: !290, size: 64, offset: 2112)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !947, file: !691, line: 479, baseType: !290, size: 64, offset: 2176)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !947, file: !691, line: 480, baseType: !290, size: 64, offset: 2240)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !947, file: !691, line: 480, baseType: !290, size: 64, offset: 2304)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !947, file: !691, line: 480, baseType: !290, size: 64, offset: 2368)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !947, file: !691, line: 480, baseType: !290, size: 64, offset: 2432)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !947, file: !691, line: 482, baseType: !1115, size: 2816, offset: 2496)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 2816, elements: !1116)
!1116 = !{!1117}
!1117 = !DISubrange(count: 44)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !947, file: !691, line: 488, baseType: !1119, size: 256, offset: 5312)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1120, line: 60, size: 256, elements: !1121)
!1120 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1121 = !{!1122}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1119, file: !1120, line: 61, baseType: !1123, size: 256)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !740, size: 256, elements: !1124)
!1124 = !{!1125}
!1125 = !DISubrange(count: 4)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !947, file: !691, line: 490, baseType: !1127, size: 64, offset: 5568)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !691, line: 490, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !947, file: !691, line: 493, baseType: !1130, size: 896, offset: 5632)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1131, line: 53, baseType: !1132)
!1131 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1131, line: 13, size: 896, elements: !1133)
!1133 = !{!1134, !1135, !1136, !1137, !1140, !1141, !1148, !1149, !1169, !1170, !1171}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1132, file: !1131, line: 18, baseType: !387, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1132, file: !1131, line: 28, baseType: !742, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1132, file: !1131, line: 31, baseType: !736, size: 256, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1132, file: !1131, line: 32, baseType: !1138, size: 64, offset: 384)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1131, line: 32, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1132, file: !1131, line: 37, baseType: !282, size: 16, offset: 448)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1132, file: !1131, line: 40, baseType: !1142, size: 192, offset: 512)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !1143, line: 53, size: 192, elements: !1144)
!1143 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!1144 = !{!1145, !1146, !1147}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1142, file: !1143, line: 54, baseType: !740, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1142, file: !1143, line: 55, baseType: !198, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1142, file: !1143, line: 59, baseType: !184, size: 128, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1132, file: !1131, line: 41, baseType: !164, size: 64, offset: 704)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1132, file: !1131, line: 42, baseType: !1150, size: 64, offset: 768)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1152)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1153, line: 13, size: 896, elements: !1154)
!1153 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1152, file: !1153, line: 14, baseType: !164, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1152, file: !1153, line: 15, baseType: !290, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1152, file: !1153, line: 17, baseType: !290, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1152, file: !1153, line: 17, baseType: !290, size: 64, offset: 192)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1152, file: !1153, line: 19, baseType: !275, size: 64, offset: 256)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1152, file: !1153, line: 21, baseType: !275, size: 64, offset: 320)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1152, file: !1153, line: 22, baseType: !275, size: 64, offset: 384)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1152, file: !1153, line: 23, baseType: !275, size: 64, offset: 448)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1152, file: !1153, line: 24, baseType: !275, size: 64, offset: 512)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1152, file: !1153, line: 25, baseType: !275, size: 64, offset: 576)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1152, file: !1153, line: 26, baseType: !275, size: 64, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1152, file: !1153, line: 27, baseType: !275, size: 64, offset: 704)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1152, file: !1153, line: 28, baseType: !275, size: 64, offset: 768)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1152, file: !1153, line: 29, baseType: !275, size: 64, offset: 832)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1132, file: !1131, line: 44, baseType: !716, size: 32, offset: 832)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1132, file: !1131, line: 50, baseType: !828, size: 16, offset: 864)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1132, file: !1131, line: 51, baseType: !1172, size: 16, offset: 880)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !382, line: 18, baseType: !1173)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !384, line: 23, baseType: !1174)
!1174 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !947, file: !691, line: 495, baseType: !290, size: 64, offset: 6528)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !947, file: !691, line: 497, baseType: !1177, size: 64, offset: 6592)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !691, line: 381, size: 384, elements: !1179)
!1179 = !{!1180, !1181, !2282}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1178, file: !691, line: 382, baseType: !716, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1178, file: !691, line: 383, baseType: !1182, size: 128, offset: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !691, line: 376, size: 128, elements: !1183)
!1183 = !{!1184, !2280}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1182, file: !691, line: 377, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1187, line: 640, size: 48640, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1188 = !{!1189, !1195, !1197, !1198, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1215, !1233, !1244, !1329, !1330, !1331, !1342, !1343, !1345, !1346, !1347, !1348, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1427, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1465, !1467, !1468, !1469, !1481, !1482, !1483, !1484, !1485, !1486, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1510, !1515, !1699, !1700, !1701, !1702, !1706, !1709, !1712, !1715, !1718, !1721, !1822, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1868, !1869, !1870, !1871, !1872, !1877, !1878, !1879, !1882, !1883, !1886, !1889, !1892, !1895, !1938, !1941, !1942, !2021, !2022, !2025, !2026, !2029, !2030, !2031, !2035, !2036, !2037, !2050, !2051, !2052, !2062, !2067, !2070, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1186, file: !1187, line: 646, baseType: !1190, size: 128)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1191, line: 56, size: 128, elements: !1192)
!1191 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1192 = !{!1193, !1194}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1190, file: !1191, line: 57, baseType: !290, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1190, file: !1191, line: 58, baseType: !381, size: 32, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1186, file: !1187, line: 649, baseType: !1196, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !275)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1186, file: !1187, line: 657, baseType: !164, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1186, file: !1187, line: 658, baseType: !1199, size: 32, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1200, line: 113, baseType: !1201)
!1200 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1200, line: 111, size: 32, elements: !1202)
!1202 = !{!1203}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1201, file: !1200, line: 112, baseType: !716, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1186, file: !1187, line: 660, baseType: !7, size: 32, offset: 288)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1186, file: !1187, line: 661, baseType: !7, size: 32, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1186, file: !1187, line: 684, baseType: !224, size: 32, offset: 352)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1186, file: !1187, line: 686, baseType: !224, size: 32, offset: 384)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1186, file: !1187, line: 687, baseType: !224, size: 32, offset: 416)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1186, file: !1187, line: 688, baseType: !224, size: 32, offset: 448)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1186, file: !1187, line: 689, baseType: !7, size: 32, offset: 480)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1186, file: !1187, line: 691, baseType: !1212, size: 64, offset: 512)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1214)
!1214 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1187, line: 691, flags: DIFlagFwdDecl)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1186, file: !1187, line: 692, baseType: !1216, size: 832, offset: 576)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1187, line: 451, size: 832, elements: !1217)
!1217 = !{!1218, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1216, file: !1187, line: 453, baseType: !1219, size: 128)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1187, line: 325, size: 128, elements: !1220)
!1220 = !{!1221, !1222}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1219, file: !1187, line: 326, baseType: !290, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1219, file: !1187, line: 327, baseType: !381, size: 32, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1216, file: !1187, line: 454, baseType: !729, size: 192, align: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1216, file: !1187, line: 455, baseType: !184, size: 128, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1216, file: !1187, line: 456, baseType: !7, size: 32, offset: 448)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1216, file: !1187, line: 458, baseType: !387, size: 64, offset: 512)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1216, file: !1187, line: 459, baseType: !387, size: 64, offset: 576)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1216, file: !1187, line: 460, baseType: !387, size: 64, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1216, file: !1187, line: 461, baseType: !387, size: 64, offset: 704)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1216, file: !1187, line: 463, baseType: !387, size: 64, offset: 768)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1216, file: !1187, line: 465, baseType: !1232, offset: 832)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1187, line: 415, elements: !212)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1186, file: !1187, line: 693, baseType: !1234, size: 384, offset: 1408)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1187, line: 489, size: 384, elements: !1235)
!1235 = !{!1236, !1237, !1238, !1239, !1240, !1241, !1242}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1234, file: !1187, line: 490, baseType: !184, size: 128)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1234, file: !1187, line: 491, baseType: !290, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1234, file: !1187, line: 492, baseType: !290, size: 64, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1234, file: !1187, line: 493, baseType: !7, size: 32, offset: 256)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1234, file: !1187, line: 494, baseType: !282, size: 16, offset: 288)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1234, file: !1187, line: 495, baseType: !282, size: 16, offset: 304)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1234, file: !1187, line: 497, baseType: !1243, size: 64, offset: 320)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1186, file: !1187, line: 697, baseType: !1245, size: 1792, offset: 1792)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1187, line: 507, size: 1792, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1326, !1327}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1245, file: !1187, line: 508, baseType: !729, size: 192, align: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1245, file: !1187, line: 515, baseType: !387, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1245, file: !1187, line: 516, baseType: !387, size: 64, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1245, file: !1187, line: 517, baseType: !387, size: 64, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1245, file: !1187, line: 518, baseType: !387, size: 64, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1245, file: !1187, line: 519, baseType: !387, size: 64, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1245, file: !1187, line: 526, baseType: !746, size: 64, offset: 512)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1245, file: !1187, line: 527, baseType: !387, size: 64, offset: 576)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1245, file: !1187, line: 528, baseType: !7, size: 32, offset: 640)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1245, file: !1187, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1245, file: !1187, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1245, file: !1187, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1245, file: !1187, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1245, file: !1187, line: 563, baseType: !1261, size: 512, offset: 704)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !20, line: 118, size: 512, elements: !1262)
!1262 = !{!1263, !1271, !1272, !1277, !1320, !1323, !1324, !1325}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1261, file: !20, line: 119, baseType: !1264, size: 256)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1265, line: 9, size: 256, elements: !1266)
!1265 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1264, file: !1265, line: 10, baseType: !729, size: 192, align: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1264, file: !1265, line: 11, baseType: !1269, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1270, line: 29, baseType: !746)
!1270 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1261, file: !20, line: 120, baseType: !1269, size: 64, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1261, file: !20, line: 121, baseType: !1273, size: 64, offset: 320)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{!19, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1261, file: !20, line: 122, baseType: !1278, size: 64, offset: 384)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !20, line: 159, size: 512, align: 512, elements: !1280)
!1280 = !{!1281, !1301, !1302, !1305, !1310, !1311, !1315, !1319}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1279, file: !20, line: 160, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !20, line: 214, size: 4608, align: 512, elements: !1284)
!1284 = !{!1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1283, file: !20, line: 215, baseType: !749)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1283, file: !20, line: 216, baseType: !7, size: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1283, file: !20, line: 217, baseType: !7, size: 32, offset: 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1283, file: !20, line: 218, baseType: !7, size: 32, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1283, file: !20, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1283, file: !20, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1283, file: !20, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1283, file: !20, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1283, file: !20, line: 233, baseType: !1269, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1283, file: !20, line: 234, baseType: !1276, size: 64, offset: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1283, file: !20, line: 235, baseType: !1269, size: 64, offset: 256)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1283, file: !20, line: 236, baseType: !1276, size: 64, offset: 320)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1283, file: !20, line: 237, baseType: !1298, size: 4096, offset: 512)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1279, size: 4096, elements: !1299)
!1299 = !{!1300}
!1300 = !DISubrange(count: 8)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1279, file: !20, line: 161, baseType: !7, size: 32, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1279, file: !20, line: 162, baseType: !1303, size: 32, offset: 96)
!1303 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !185, line: 27, baseType: !1304)
!1304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !273, line: 96, baseType: !224)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1279, file: !20, line: 163, baseType: !1306, size: 32, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !354, line: 276, baseType: !1307)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !354, line: 276, size: 32, elements: !1308)
!1308 = !{!1309}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1307, file: !354, line: 276, baseType: !358, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1279, file: !20, line: 164, baseType: !1276, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1279, file: !20, line: 165, baseType: !1312, size: 128, offset: 256)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1265, line: 14, size: 128, elements: !1313)
!1313 = !{!1314}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1312, file: !1265, line: 15, baseType: !721, size: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1279, file: !20, line: 166, baseType: !1316, size: 64, offset: 384)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!1269}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1279, file: !20, line: 167, baseType: !1269, size: 64, offset: 448)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1261, file: !20, line: 123, baseType: !1321, size: 8, offset: 448)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !382, line: 17, baseType: !1322)
!1322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !384, line: 21, baseType: !393)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1261, file: !20, line: 124, baseType: !1321, size: 8, offset: 456)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1261, file: !20, line: 125, baseType: !1321, size: 8, offset: 464)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1261, file: !20, line: 126, baseType: !1321, size: 8, offset: 472)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1245, file: !1187, line: 572, baseType: !1261, size: 512, offset: 1216)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1245, file: !1187, line: 580, baseType: !1328, size: 64, offset: 1728)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1186, file: !1187, line: 721, baseType: !7, size: 32, offset: 3584)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1186, file: !1187, line: 722, baseType: !224, size: 32, offset: 3616)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1186, file: !1187, line: 723, baseType: !1332, size: 64, offset: 3648)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1334)
!1334 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1335, line: 17, baseType: !1336)
!1335 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1335, line: 17, size: 64, elements: !1337)
!1337 = !{!1338}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1336, file: !1335, line: 17, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 64, elements: !1340)
!1340 = !{!1341}
!1341 = !DISubrange(count: 1)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1186, file: !1187, line: 724, baseType: !1334, size: 64, offset: 3712)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1186, file: !1187, line: 749, baseType: !1344, offset: 3776)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1187, line: 290, elements: !212)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1186, file: !1187, line: 751, baseType: !184, size: 128, offset: 3776)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1186, file: !1187, line: 757, baseType: !943, size: 64, offset: 3904)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1186, file: !1187, line: 758, baseType: !943, size: 64, offset: 3968)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1186, file: !1187, line: 761, baseType: !1349, size: 320, offset: 4032)
!1349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1120, line: 34, size: 320, elements: !1350)
!1350 = !{!1351, !1352}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1349, file: !1120, line: 35, baseType: !387, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1349, file: !1120, line: 36, baseType: !1353, size: 256, offset: 64)
!1353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !950, size: 256, elements: !1124)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1186, file: !1187, line: 766, baseType: !224, size: 32, offset: 4352)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1186, file: !1187, line: 767, baseType: !224, size: 32, offset: 4384)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1186, file: !1187, line: 768, baseType: !224, size: 32, offset: 4416)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1186, file: !1187, line: 770, baseType: !224, size: 32, offset: 4448)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1186, file: !1187, line: 772, baseType: !290, size: 64, offset: 4480)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1186, file: !1187, line: 775, baseType: !7, size: 32, offset: 4544)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1186, file: !1187, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1186, file: !1187, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1186, file: !1187, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1186, file: !1187, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1186, file: !1187, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1186, file: !1187, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1186, file: !1187, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1186, file: !1187, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1186, file: !1187, line: 831, baseType: !290, size: 64, offset: 4672)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1186, file: !1187, line: 833, baseType: !1370, size: 384, offset: 4736)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !25, line: 25, size: 384, elements: !1371)
!1371 = !{!1372, !1377}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1370, file: !25, line: 26, baseType: !1373, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!275, !1376}
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, scope: !1370, file: !25, line: 27, baseType: !1378, size: 320, offset: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1370, file: !25, line: 27, size: 320, elements: !1379)
!1379 = !{!1380, !1390, !1417}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1378, file: !25, line: 36, baseType: !1381, size: 320)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1378, file: !25, line: 29, size: 320, elements: !1382)
!1382 = !{!1383, !1385, !1386, !1387, !1388, !1389}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1381, file: !25, line: 30, baseType: !1384, size: 64)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1381, file: !25, line: 31, baseType: !381, size: 32, offset: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1381, file: !25, line: 32, baseType: !381, size: 32, offset: 96)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1381, file: !25, line: 33, baseType: !381, size: 32, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1381, file: !25, line: 34, baseType: !387, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1381, file: !25, line: 35, baseType: !1384, size: 64, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1378, file: !25, line: 46, baseType: !1391, size: 192)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1378, file: !25, line: 38, size: 192, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1416}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1391, file: !25, line: 39, baseType: !1303, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1391, file: !25, line: 40, baseType: !24, size: 32, offset: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, scope: !1391, file: !25, line: 41, baseType: !1396, size: 64, offset: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1391, file: !25, line: 41, size: 64, elements: !1397)
!1397 = !{!1398, !1406}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1396, file: !25, line: 42, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1401, line: 7, size: 128, elements: !1402)
!1401 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1402 = !{!1403, !1405}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1400, file: !1401, line: 8, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !273, line: 93, baseType: !499)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1400, file: !1401, line: 9, baseType: !499, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1396, file: !25, line: 43, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1409, line: 7, size: 64, elements: !1410)
!1409 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1410 = !{!1411, !1415}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1408, file: !1409, line: 8, baseType: !1412, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1409, line: 5, baseType: !1413)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !382, line: 20, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !384, line: 26, baseType: !224)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1408, file: !1409, line: 9, baseType: !1413, size: 32, offset: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1391, file: !25, line: 45, baseType: !387, size: 64, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1378, file: !25, line: 54, baseType: !1418, size: 256)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1378, file: !25, line: 48, size: 256, elements: !1419)
!1419 = !{!1420, !1423, !1424, !1425, !1426}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1418, file: !25, line: 49, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !25, line: 14, flags: DIFlagFwdDecl)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1418, file: !25, line: 50, baseType: !224, size: 32, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1418, file: !25, line: 51, baseType: !224, size: 32, offset: 96)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1418, file: !25, line: 52, baseType: !290, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1418, file: !25, line: 53, baseType: !290, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1186, file: !1187, line: 835, baseType: !1428, size: 32, offset: 5120)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !185, line: 22, baseType: !1429)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !273, line: 28, baseType: !224)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1186, file: !1187, line: 836, baseType: !1428, size: 32, offset: 5152)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1186, file: !1187, line: 840, baseType: !290, size: 64, offset: 5184)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1186, file: !1187, line: 849, baseType: !1185, size: 64, offset: 5248)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1186, file: !1187, line: 852, baseType: !1185, size: 64, offset: 5312)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1186, file: !1187, line: 857, baseType: !184, size: 128, offset: 5376)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1186, file: !1187, line: 858, baseType: !184, size: 128, offset: 5504)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1186, file: !1187, line: 859, baseType: !1185, size: 64, offset: 5632)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1186, file: !1187, line: 867, baseType: !184, size: 128, offset: 5696)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1186, file: !1187, line: 868, baseType: !184, size: 128, offset: 5824)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1186, file: !1187, line: 871, baseType: !1440, size: 64, offset: 5952)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !53, line: 59, size: 768, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1446, !1448, !1449, !1456, !1457}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1441, file: !53, line: 61, baseType: !1199, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1441, file: !53, line: 62, baseType: !7, size: 32, offset: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1441, file: !53, line: 63, baseType: !198, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1441, file: !53, line: 65, baseType: !1447, size: 256, offset: 64)
!1447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 256, elements: !1124)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1441, file: !53, line: 66, baseType: !603, size: 64, offset: 320)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1441, file: !53, line: 68, baseType: !1450, size: 128, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1451, line: 40, baseType: !1452)
!1451 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1451, line: 36, size: 128, elements: !1453)
!1453 = !{!1454, !1455}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1452, file: !1451, line: 37, baseType: !198)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1452, file: !1451, line: 38, baseType: !184, size: 128)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1441, file: !53, line: 69, baseType: !331, size: 128, align: 64, offset: 512)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1441, file: !53, line: 70, baseType: !1458, size: 128, offset: 640)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1459, size: 128, elements: !1340)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !53, line: 54, size: 128, elements: !1460)
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1459, file: !53, line: 55, baseType: !224, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1459, file: !53, line: 56, baseType: !1463, size: 64, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !53, line: 56, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1186, file: !1187, line: 872, baseType: !1466, size: 512, offset: 6016)
!1466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 512, elements: !1124)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1186, file: !1187, line: 873, baseType: !184, size: 128, offset: 6528)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1186, file: !1187, line: 874, baseType: !184, size: 128, offset: 6656)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1186, file: !1187, line: 876, baseType: !1470, size: 64, offset: 6784)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1472, line: 26, size: 192, elements: !1473)
!1472 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1471, file: !1472, line: 27, baseType: !7, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1471, file: !1472, line: 28, baseType: !1476, size: 128, offset: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1477, line: 43, size: 128, elements: !1478)
!1477 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1476, file: !1477, line: 44, baseType: !749)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1476, file: !1477, line: 45, baseType: !184, size: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1186, file: !1187, line: 879, baseType: !673, size: 64, offset: 6848)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1186, file: !1187, line: 882, baseType: !673, size: 64, offset: 6912)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1186, file: !1187, line: 884, baseType: !387, size: 64, offset: 6976)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1186, file: !1187, line: 885, baseType: !387, size: 64, offset: 7040)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1186, file: !1187, line: 890, baseType: !387, size: 64, offset: 7104)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1186, file: !1187, line: 891, baseType: !1487, size: 128, offset: 7168)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1187, line: 242, size: 128, elements: !1488)
!1488 = !{!1489, !1490, !1491}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1487, file: !1187, line: 244, baseType: !387, size: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1487, file: !1187, line: 245, baseType: !387, size: 64, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1487, file: !1187, line: 246, baseType: !749, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1186, file: !1187, line: 900, baseType: !290, size: 64, offset: 7296)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1186, file: !1187, line: 901, baseType: !290, size: 64, offset: 7360)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1186, file: !1187, line: 904, baseType: !387, size: 64, offset: 7424)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1186, file: !1187, line: 907, baseType: !387, size: 64, offset: 7488)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1186, file: !1187, line: 910, baseType: !290, size: 64, offset: 7552)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1186, file: !1187, line: 911, baseType: !290, size: 64, offset: 7616)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1186, file: !1187, line: 914, baseType: !1499, size: 640, offset: 7680)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1500, line: 123, size: 640, elements: !1501)
!1500 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1501 = !{!1502, !1508, !1509}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1499, file: !1500, line: 124, baseType: !1503, size: 576)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1504, size: 576, elements: !241)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1500, line: 108, size: 192, elements: !1505)
!1505 = !{!1506, !1507}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1504, file: !1500, line: 109, baseType: !387, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1504, file: !1500, line: 110, baseType: !1312, size: 128, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1499, file: !1500, line: 125, baseType: !7, size: 32, offset: 576)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1499, file: !1500, line: 126, baseType: !7, size: 32, offset: 608)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1186, file: !1187, line: 917, baseType: !1511, size: 192, offset: 8320)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1500, line: 134, size: 192, elements: !1512)
!1512 = !{!1513, !1514}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1511, file: !1500, line: 135, baseType: !331, size: 128, align: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1511, file: !1500, line: 136, baseType: !7, size: 32, offset: 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1186, file: !1187, line: 923, baseType: !1516, size: 64, offset: 8512)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1519, line: 111, size: 1280, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1540, !1541, !1542, !1543, !1544, !1545, !1652, !1653, !1654, !1655, !1681, !1684, !1694}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1518, file: !1519, line: 112, baseType: !716, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1518, file: !1519, line: 120, baseType: !401, size: 32, offset: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1518, file: !1519, line: 121, baseType: !409, size: 32, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1518, file: !1519, line: 122, baseType: !401, size: 32, offset: 96)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1518, file: !1519, line: 123, baseType: !409, size: 32, offset: 128)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1518, file: !1519, line: 124, baseType: !401, size: 32, offset: 160)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1518, file: !1519, line: 125, baseType: !409, size: 32, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1518, file: !1519, line: 126, baseType: !401, size: 32, offset: 224)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1518, file: !1519, line: 127, baseType: !409, size: 32, offset: 256)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1518, file: !1519, line: 128, baseType: !7, size: 32, offset: 288)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1518, file: !1519, line: 129, baseType: !1532, size: 64, offset: 320)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1533, line: 26, baseType: !1534)
!1533 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1533, line: 24, size: 64, elements: !1535)
!1535 = !{!1536}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1534, file: !1533, line: 25, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 64, elements: !1538)
!1538 = !{!1539}
!1539 = !DISubrange(count: 2)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1518, file: !1519, line: 130, baseType: !1532, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1518, file: !1519, line: 131, baseType: !1532, size: 64, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1518, file: !1519, line: 132, baseType: !1532, size: 64, offset: 512)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1518, file: !1519, line: 133, baseType: !1532, size: 64, offset: 576)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1518, file: !1519, line: 135, baseType: !393, size: 8, offset: 640)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1518, file: !1519, line: 137, baseType: !1546, size: 64, offset: 704)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1548, line: 189, size: 1664, elements: !1549)
!1548 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1549 = !{!1550, !1551, !1554, !1559, !1560, !1563, !1564, !1569, !1570, !1571, !1572, !1574, !1575, !1576, !1577, !1578, !1616, !1637}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1547, file: !1548, line: 190, baseType: !1199, size: 32)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1547, file: !1548, line: 191, baseType: !1552, size: 32, offset: 32)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1548, line: 28, baseType: !1553)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !185, line: 98, baseType: !1413)
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1548, line: 192, baseType: !1555, size: 192, offset: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !1548, line: 192, size: 192, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1555, file: !1548, line: 193, baseType: !184, size: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1555, file: !1548, line: 194, baseType: !729, size: 192, align: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1547, file: !1548, line: 199, baseType: !736, size: 256, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1547, file: !1548, line: 200, baseType: !1561, size: 64, offset: 512)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1548, line: 200, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1547, file: !1548, line: 201, baseType: !164, size: 64, offset: 576)
!1564 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1548, line: 202, baseType: !1565, size: 64, offset: 640)
!1565 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !1548, line: 202, size: 64, elements: !1566)
!1566 = !{!1567, !1568}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1565, file: !1548, line: 203, baseType: !505, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1565, file: !1548, line: 204, baseType: !505, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1547, file: !1548, line: 206, baseType: !505, size: 64, offset: 704)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1547, file: !1548, line: 207, baseType: !401, size: 32, offset: 768)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1547, file: !1548, line: 208, baseType: !409, size: 32, offset: 800)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1547, file: !1548, line: 209, baseType: !1573, size: 32, offset: 832)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1548, line: 31, baseType: !525)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1547, file: !1548, line: 210, baseType: !282, size: 16, offset: 864)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1547, file: !1548, line: 211, baseType: !282, size: 16, offset: 880)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1547, file: !1548, line: 215, baseType: !1174, size: 16, offset: 896)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1547, file: !1548, line: 222, baseType: !290, size: 64, offset: 960)
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1548, line: 239, baseType: !1579, size: 320, offset: 1024)
!1579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !1548, line: 239, size: 320, elements: !1580)
!1580 = !{!1581, !1608}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1579, file: !1548, line: 240, baseType: !1582, size: 320)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1548, line: 108, size: 320, elements: !1583)
!1583 = !{!1584, !1585, !1597, !1600, !1607}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1582, file: !1548, line: 110, baseType: !290, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, scope: !1582, file: !1548, line: 111, baseType: !1586, size: 64, offset: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1582, file: !1548, line: 111, size: 64, elements: !1587)
!1587 = !{!1588, !1596}
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1586, file: !1548, line: 112, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1586, file: !1548, line: 112, size: 64, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1589, file: !1548, line: 114, baseType: !828, size: 16)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1589, file: !1548, line: 115, baseType: !1593, size: 48, offset: 16)
!1593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 48, elements: !1594)
!1594 = !{!1595}
!1595 = !DISubrange(count: 6)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1586, file: !1548, line: 121, baseType: !290, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1582, file: !1548, line: 123, baseType: !1598, size: 64, offset: 128)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1548, line: 96, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1582, file: !1548, line: 124, baseType: !1601, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1548, line: 102, size: 192, elements: !1603)
!1603 = !{!1604, !1605, !1606}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1602, file: !1548, line: 103, baseType: !331, size: 128, align: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1602, file: !1548, line: 104, baseType: !1199, size: 32, offset: 128)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1602, file: !1548, line: 105, baseType: !456, size: 8, offset: 160)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1582, file: !1548, line: 125, baseType: !180, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !1548, line: 241, baseType: !1609, size: 320)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1579, file: !1548, line: 241, size: 320, elements: !1610)
!1610 = !{!1611, !1612, !1613, !1614, !1615}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1609, file: !1548, line: 242, baseType: !290, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1609, file: !1548, line: 243, baseType: !290, size: 64, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1609, file: !1548, line: 244, baseType: !1598, size: 64, offset: 128)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1609, file: !1548, line: 245, baseType: !1601, size: 64, offset: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1609, file: !1548, line: 246, baseType: !240, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1547, file: !1548, line: 254, baseType: !1617, size: 256, offset: 1344)
!1617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1547, file: !1548, line: 254, size: 256, elements: !1618)
!1618 = !{!1619, !1625}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1617, file: !1548, line: 255, baseType: !1620, size: 256)
!1620 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1548, line: 128, size: 256, elements: !1621)
!1621 = !{!1622, !1623}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1620, file: !1548, line: 129, baseType: !164, size: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1620, file: !1548, line: 130, baseType: !1624, size: 256)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 256, elements: !1124)
!1625 = !DIDerivedType(tag: DW_TAG_member, scope: !1617, file: !1548, line: 256, baseType: !1626, size: 256)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1617, file: !1548, line: 256, size: 256, elements: !1627)
!1627 = !{!1628, !1629}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1626, file: !1548, line: 258, baseType: !184, size: 128)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1626, file: !1548, line: 259, baseType: !1630, size: 128, offset: 128)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1631, line: 22, size: 128, elements: !1632)
!1631 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1632 = !{!1633, !1636}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1630, file: !1631, line: 23, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1631, line: 23, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1630, file: !1631, line: 24, baseType: !290, size: 64, offset: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1547, file: !1548, line: 274, baseType: !1638, size: 64, offset: 1600)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1548, line: 170, size: 192, elements: !1640)
!1640 = !{!1641, !1650, !1651}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1639, file: !1548, line: 171, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1548, line: 165, baseType: !1643)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!224, !1546, !1646, !1648, !1546}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1599)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1620)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1639, file: !1548, line: 172, baseType: !1546, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1639, file: !1548, line: 173, baseType: !1598, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1518, file: !1519, line: 138, baseType: !1546, size: 64, offset: 768)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1518, file: !1519, line: 139, baseType: !1546, size: 64, offset: 832)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1518, file: !1519, line: 140, baseType: !1546, size: 64, offset: 896)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1518, file: !1519, line: 145, baseType: !1656, size: 64, offset: 960)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1658, line: 13, size: 896, elements: !1659)
!1658 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1659 = !{!1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1657, file: !1658, line: 14, baseType: !1199, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1657, file: !1658, line: 15, baseType: !716, size: 32, offset: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1657, file: !1658, line: 16, baseType: !716, size: 32, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1657, file: !1658, line: 21, baseType: !740, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1657, file: !1658, line: 27, baseType: !290, size: 64, offset: 192)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1657, file: !1658, line: 28, baseType: !290, size: 64, offset: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1657, file: !1658, line: 29, baseType: !740, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1657, file: !1658, line: 32, baseType: !607, size: 128, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1657, file: !1658, line: 33, baseType: !401, size: 32, offset: 512)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1657, file: !1658, line: 37, baseType: !740, size: 64, offset: 576)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1657, file: !1658, line: 44, baseType: !1671, size: 256, offset: 640)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1672, line: 15, size: 256, elements: !1673)
!1672 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1673 = !{!1674, !1675, !1676, !1677, !1678, !1679, !1680}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1671, file: !1672, line: 16, baseType: !749)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1671, file: !1672, line: 18, baseType: !224, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1671, file: !1672, line: 19, baseType: !224, size: 32, offset: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1671, file: !1672, line: 20, baseType: !224, size: 32, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1671, file: !1672, line: 21, baseType: !224, size: 32, offset: 96)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1671, file: !1672, line: 22, baseType: !290, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1671, file: !1672, line: 23, baseType: !290, size: 64, offset: 192)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1518, file: !1519, line: 146, baseType: !1682, size: 64, offset: 1024)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !402, line: 18, flags: DIFlagFwdDecl)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1518, file: !1519, line: 147, baseType: !1685, size: 64, offset: 1088)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1519, line: 25, size: 64, elements: !1687)
!1687 = !{!1688, !1689, !1690}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1686, file: !1519, line: 26, baseType: !716, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1686, file: !1519, line: 27, baseType: !224, size: 32, offset: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1686, file: !1519, line: 28, baseType: !1691, offset: 64)
!1691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !409, elements: !1692)
!1692 = !{!1693}
!1693 = !DISubrange(count: 0)
!1694 = !DIDerivedType(tag: DW_TAG_member, scope: !1518, file: !1519, line: 149, baseType: !1695, size: 128, offset: 1152)
!1695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1518, file: !1519, line: 149, size: 128, elements: !1696)
!1696 = !{!1697, !1698}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1695, file: !1519, line: 150, baseType: !224, size: 32)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1695, file: !1519, line: 151, baseType: !331, size: 128, align: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1186, file: !1187, line: 926, baseType: !1516, size: 64, offset: 8576)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1186, file: !1187, line: 929, baseType: !1516, size: 64, offset: 8640)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1186, file: !1187, line: 933, baseType: !1546, size: 64, offset: 8704)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1186, file: !1187, line: 943, baseType: !1703, size: 128, offset: 8768)
!1703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 128, elements: !1704)
!1704 = !{!1705}
!1705 = !DISubrange(count: 16)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1186, file: !1187, line: 945, baseType: !1707, size: 64, offset: 8896)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1187, line: 49, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1186, file: !1187, line: 956, baseType: !1710, size: 64, offset: 8960)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1187, line: 45, flags: DIFlagFwdDecl)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1186, file: !1187, line: 959, baseType: !1713, size: 64, offset: 9024)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1187, line: 959, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1186, file: !1187, line: 962, baseType: !1716, size: 64, offset: 9088)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1187, line: 66, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1186, file: !1187, line: 966, baseType: !1719, size: 64, offset: 9152)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1187, line: 50, flags: DIFlagFwdDecl)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1186, file: !1187, line: 969, baseType: !1722, size: 64, offset: 9216)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1724, line: 82, size: 7296, elements: !1725)
!1724 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1725 = !{!1726, !1727, !1728, !1729, !1730, !1731, !1732, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1761, !1770, !1771, !1773, !1774, !1775, !1778, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1808, !1809, !1816, !1817, !1818, !1819, !1820, !1821}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1723, file: !1724, line: 83, baseType: !1199, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1723, file: !1724, line: 84, baseType: !716, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1723, file: !1724, line: 85, baseType: !224, size: 32, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1723, file: !1724, line: 86, baseType: !184, size: 128, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1723, file: !1724, line: 88, baseType: !1450, size: 128, offset: 256)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1723, file: !1724, line: 91, baseType: !1185, size: 64, offset: 384)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1723, file: !1724, line: 94, baseType: !1733, size: 192, offset: 448)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1734, line: 30, size: 192, elements: !1735)
!1734 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1735 = !{!1736, !1737}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1733, file: !1734, line: 31, baseType: !184, size: 128)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1733, file: !1734, line: 32, baseType: !1738, size: 64, offset: 128)
!1738 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1739, line: 25, baseType: !1740)
!1739 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1739, line: 23, size: 64, elements: !1741)
!1741 = !{!1742}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1740, file: !1739, line: 24, baseType: !1339, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1723, file: !1724, line: 97, baseType: !603, size: 64, offset: 640)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1723, file: !1724, line: 100, baseType: !224, size: 32, offset: 704)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1723, file: !1724, line: 106, baseType: !224, size: 32, offset: 736)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1723, file: !1724, line: 107, baseType: !1185, size: 64, offset: 768)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1723, file: !1724, line: 110, baseType: !224, size: 32, offset: 832)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1723, file: !1724, line: 111, baseType: !7, size: 32, offset: 864)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1723, file: !1724, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1723, file: !1724, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1723, file: !1724, line: 128, baseType: !224, size: 32, offset: 928)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1723, file: !1724, line: 129, baseType: !184, size: 128, offset: 960)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1723, file: !1724, line: 132, baseType: !1261, size: 512, offset: 1088)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1723, file: !1724, line: 133, baseType: !1269, size: 64, offset: 1600)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1723, file: !1724, line: 140, baseType: !1756, size: 256, offset: 1664)
!1756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1757, size: 256, elements: !1538)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1724, line: 38, size: 128, elements: !1758)
!1758 = !{!1759, !1760}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1757, file: !1724, line: 39, baseType: !387, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1757, file: !1724, line: 40, baseType: !387, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1723, file: !1724, line: 146, baseType: !1762, size: 192, offset: 1920)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1724, line: 66, size: 192, elements: !1763)
!1763 = !{!1764}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1762, file: !1724, line: 67, baseType: !1765, size: 192)
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1724, line: 47, size: 192, elements: !1766)
!1766 = !{!1767, !1768, !1769}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1765, file: !1724, line: 48, baseType: !742, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1765, file: !1724, line: 49, baseType: !742, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1765, file: !1724, line: 50, baseType: !742, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1723, file: !1724, line: 150, baseType: !1499, size: 640, offset: 2112)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1723, file: !1724, line: 153, baseType: !1772, size: 256, offset: 2752)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1440, size: 256, elements: !1124)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1723, file: !1724, line: 159, baseType: !1440, size: 64, offset: 3008)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1723, file: !1724, line: 162, baseType: !224, size: 32, offset: 3072)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1723, file: !1724, line: 164, baseType: !1776, size: 64, offset: 3136)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1724, line: 164, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1723, file: !1724, line: 175, baseType: !1779, size: 32, offset: 3200)
!1779 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !354, line: 805, baseType: !1780)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 798, size: 32, elements: !1781)
!1781 = !{!1782, !1783}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1780, file: !354, line: 803, baseType: !353, size: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1780, file: !354, line: 804, baseType: !198, offset: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1723, file: !1724, line: 176, baseType: !387, size: 64, offset: 3264)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1723, file: !1724, line: 176, baseType: !387, size: 64, offset: 3328)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1723, file: !1724, line: 176, baseType: !387, size: 64, offset: 3392)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1723, file: !1724, line: 176, baseType: !387, size: 64, offset: 3456)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1723, file: !1724, line: 177, baseType: !387, size: 64, offset: 3520)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1723, file: !1724, line: 178, baseType: !387, size: 64, offset: 3584)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1723, file: !1724, line: 179, baseType: !1487, size: 128, offset: 3648)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1723, file: !1724, line: 180, baseType: !290, size: 64, offset: 3776)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1723, file: !1724, line: 180, baseType: !290, size: 64, offset: 3840)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1723, file: !1724, line: 180, baseType: !290, size: 64, offset: 3904)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1723, file: !1724, line: 180, baseType: !290, size: 64, offset: 3968)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1723, file: !1724, line: 181, baseType: !290, size: 64, offset: 4032)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1723, file: !1724, line: 181, baseType: !290, size: 64, offset: 4096)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1723, file: !1724, line: 181, baseType: !290, size: 64, offset: 4160)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1723, file: !1724, line: 181, baseType: !290, size: 64, offset: 4224)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1723, file: !1724, line: 182, baseType: !290, size: 64, offset: 4288)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1723, file: !1724, line: 182, baseType: !290, size: 64, offset: 4352)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1723, file: !1724, line: 182, baseType: !290, size: 64, offset: 4416)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1723, file: !1724, line: 182, baseType: !290, size: 64, offset: 4480)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1723, file: !1724, line: 183, baseType: !290, size: 64, offset: 4544)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1723, file: !1724, line: 183, baseType: !290, size: 64, offset: 4608)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1723, file: !1724, line: 184, baseType: !1806, offset: 4672)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1807, line: 12, elements: !212)
!1807 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1723, file: !1724, line: 192, baseType: !389, size: 64, offset: 4672)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1723, file: !1724, line: 203, baseType: !1810, size: 2048, offset: 4736)
!1810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1811, size: 2048, elements: !1704)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1812, line: 43, size: 128, elements: !1813)
!1812 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1813 = !{!1814, !1815}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1811, file: !1812, line: 44, baseType: !289, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1811, file: !1812, line: 45, baseType: !289, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1723, file: !1724, line: 220, baseType: !456, size: 8, offset: 6784)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1723, file: !1724, line: 221, baseType: !1174, size: 16, offset: 6800)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1723, file: !1724, line: 222, baseType: !1174, size: 16, offset: 6816)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1723, file: !1724, line: 224, baseType: !943, size: 64, offset: 6848)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1723, file: !1724, line: 227, baseType: !1142, size: 192, offset: 6912)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1723, file: !1724, line: 233, baseType: !1142, size: 192, offset: 7104)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1186, file: !1187, line: 970, baseType: !1823, size: 64, offset: 9280)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1724, line: 20, size: 16576, elements: !1825)
!1825 = !{!1826, !1827, !1828, !1829}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1824, file: !1724, line: 21, baseType: !198)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1824, file: !1724, line: 22, baseType: !1199, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1824, file: !1724, line: 23, baseType: !1450, size: 128, offset: 64)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1824, file: !1724, line: 24, baseType: !1830, size: 16384, offset: 192)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1831, size: 16384, elements: !245)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1734, line: 49, size: 256, elements: !1832)
!1832 = !{!1833}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1831, file: !1734, line: 50, baseType: !1834, size: 256)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1734, line: 35, size: 256, elements: !1835)
!1835 = !{!1836, !1843, !1844, !1850}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1834, file: !1734, line: 37, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1838, line: 19, baseType: !1839)
!1838 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1838, line: 18, baseType: !1841)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{null, !224}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1834, file: !1734, line: 38, baseType: !290, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1834, file: !1734, line: 44, baseType: !1845, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1838, line: 22, baseType: !1846)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1838, line: 21, baseType: !1848)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{null}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1834, file: !1734, line: 46, baseType: !1738, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1186, file: !1187, line: 971, baseType: !1738, size: 64, offset: 9344)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1186, file: !1187, line: 972, baseType: !1738, size: 64, offset: 9408)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1186, file: !1187, line: 974, baseType: !1738, size: 64, offset: 9472)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1186, file: !1187, line: 975, baseType: !1733, size: 192, offset: 9536)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1186, file: !1187, line: 976, baseType: !290, size: 64, offset: 9728)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1186, file: !1187, line: 977, baseType: !287, size: 64, offset: 9792)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1186, file: !1187, line: 978, baseType: !7, size: 32, offset: 9856)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1186, file: !1187, line: 980, baseType: !334, size: 64, offset: 9920)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1186, file: !1187, line: 989, baseType: !1860, size: 128, offset: 9984)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1861, line: 35, size: 128, elements: !1862)
!1861 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1862 = !{!1863, !1864, !1865}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1860, file: !1861, line: 36, baseType: !224, size: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1860, file: !1861, line: 37, baseType: !716, size: 32, offset: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1860, file: !1861, line: 38, baseType: !1866, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1861, line: 23, flags: DIFlagFwdDecl)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1186, file: !1187, line: 992, baseType: !387, size: 64, offset: 10112)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1186, file: !1187, line: 993, baseType: !387, size: 64, offset: 10176)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1186, file: !1187, line: 996, baseType: !198, offset: 10240)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1186, file: !1187, line: 999, baseType: !749, offset: 10240)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1186, file: !1187, line: 1001, baseType: !1873, size: 64, offset: 10240)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1187, line: 636, size: 64, elements: !1874)
!1874 = !{!1875}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1873, file: !1187, line: 637, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1186, file: !1187, line: 1005, baseType: !721, size: 128, offset: 10304)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1186, file: !1187, line: 1007, baseType: !1185, size: 64, offset: 10432)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1186, file: !1187, line: 1009, baseType: !1880, size: 64, offset: 10496)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1187, line: 1009, flags: DIFlagFwdDecl)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1186, file: !1187, line: 1043, baseType: !164, size: 64, offset: 10560)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1186, file: !1187, line: 1046, baseType: !1884, size: 64, offset: 10624)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1187, line: 41, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1186, file: !1187, line: 1050, baseType: !1887, size: 64, offset: 10688)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1187, line: 42, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1186, file: !1187, line: 1054, baseType: !1890, size: 64, offset: 10752)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1187, line: 55, flags: DIFlagFwdDecl)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1186, file: !1187, line: 1056, baseType: !1893, size: 64, offset: 10816)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1187, line: 40, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1186, file: !1187, line: 1058, baseType: !1896, size: 64, offset: 10880)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1898, line: 99, size: 704, elements: !1899)
!1898 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1899 = !{!1900, !1901, !1902, !1903, !1904, !1905, !1906, !1925, !1926}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1897, file: !1898, line: 100, baseType: !740, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1897, file: !1898, line: 101, baseType: !716, size: 32, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1897, file: !1898, line: 102, baseType: !716, size: 32, offset: 96)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1897, file: !1898, line: 105, baseType: !198, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1897, file: !1898, line: 107, baseType: !282, size: 16, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1897, file: !1898, line: 109, baseType: !707, size: 128, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1897, file: !1898, line: 110, baseType: !1907, size: 64, offset: 320)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1898, line: 73, size: 448, elements: !1909)
!1909 = !{!1910, !1913, !1914, !1919, !1924}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1908, file: !1898, line: 74, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1898, line: 74, flags: DIFlagFwdDecl)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1908, file: !1898, line: 75, baseType: !1896, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !1898, line: 83, baseType: !1915, size: 128, offset: 128)
!1915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !1898, line: 83, size: 128, elements: !1916)
!1916 = !{!1917, !1918}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1915, file: !1898, line: 84, baseType: !184, size: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1915, file: !1898, line: 85, baseType: !904, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, scope: !1908, file: !1898, line: 87, baseType: !1920, size: 128, offset: 256)
!1920 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1908, file: !1898, line: 87, size: 128, elements: !1921)
!1921 = !{!1922, !1923}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1920, file: !1898, line: 88, baseType: !607, size: 128)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1920, file: !1898, line: 89, baseType: !331, size: 128, align: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1908, file: !1898, line: 92, baseType: !7, size: 32, offset: 384)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1897, file: !1898, line: 111, baseType: !603, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1897, file: !1898, line: 113, baseType: !1927, size: 256, offset: 448)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1928, line: 102, size: 256, elements: !1929)
!1928 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1929 = !{!1930, !1931, !1932}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1927, file: !1928, line: 103, baseType: !740, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1927, file: !1928, line: 104, baseType: !184, size: 128, offset: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1927, file: !1928, line: 105, baseType: !1933, size: 64, offset: 192)
!1933 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1928, line: 21, baseType: !1934)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{null, !1937}
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1186, file: !1187, line: 1061, baseType: !1939, size: 64, offset: 10944)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1187, line: 43, flags: DIFlagFwdDecl)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1186, file: !1187, line: 1064, baseType: !290, size: 64, offset: 11008)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1186, file: !1187, line: 1065, baseType: !1943, size: 64, offset: 11072)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1734, line: 14, baseType: !1945)
!1945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1734, line: 12, size: 384, elements: !1946)
!1946 = !{!1947}
!1947 = !DIDerivedType(tag: DW_TAG_member, scope: !1945, file: !1734, line: 13, baseType: !1948, size: 384)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1945, file: !1734, line: 13, size: 384, elements: !1949)
!1949 = !{!1950, !1951, !1952, !1953}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1948, file: !1734, line: 13, baseType: !224, size: 32)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1948, file: !1734, line: 13, baseType: !224, size: 32, offset: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1948, file: !1734, line: 13, baseType: !224, size: 32, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1948, file: !1734, line: 13, baseType: !1954, size: 256, offset: 128)
!1954 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1955, line: 32, size: 256, elements: !1956)
!1955 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1956 = !{!1957, !1962, !1975, !1981, !1990, !2010, !2015}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1954, file: !1955, line: 37, baseType: !1958, size: 64)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 34, size: 64, elements: !1959)
!1959 = !{!1960, !1961}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1958, file: !1955, line: 35, baseType: !1429, size: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1958, file: !1955, line: 36, baseType: !407, size: 32, offset: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1954, file: !1955, line: 45, baseType: !1963, size: 192)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 40, size: 192, elements: !1964)
!1964 = !{!1965, !1967, !1968, !1974}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1963, file: !1955, line: 41, baseType: !1966, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !273, line: 95, baseType: !224)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1963, file: !1955, line: 42, baseType: !224, size: 32, offset: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1963, file: !1955, line: 43, baseType: !1969, size: 64, offset: 64)
!1969 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1955, line: 11, baseType: !1970)
!1970 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1955, line: 8, size: 64, elements: !1971)
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1970, file: !1955, line: 9, baseType: !224, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1970, file: !1955, line: 10, baseType: !164, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1963, file: !1955, line: 44, baseType: !224, size: 32, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1954, file: !1955, line: 52, baseType: !1976, size: 128)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 48, size: 128, elements: !1977)
!1977 = !{!1978, !1979, !1980}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1976, file: !1955, line: 49, baseType: !1429, size: 32)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1976, file: !1955, line: 50, baseType: !407, size: 32, offset: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1976, file: !1955, line: 51, baseType: !1969, size: 64, offset: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1954, file: !1955, line: 61, baseType: !1982, size: 256)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 55, size: 256, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1987, !1989}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1982, file: !1955, line: 56, baseType: !1429, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1982, file: !1955, line: 57, baseType: !407, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1982, file: !1955, line: 58, baseType: !224, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1982, file: !1955, line: 59, baseType: !1988, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !273, line: 94, baseType: !274)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1982, file: !1955, line: 60, baseType: !1988, size: 64, offset: 192)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1954, file: !1955, line: 95, baseType: !1991, size: 256)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 64, size: 256, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1991, file: !1955, line: 65, baseType: !164, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, scope: !1991, file: !1955, line: 77, baseType: !1995, size: 192, offset: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1991, file: !1955, line: 77, size: 192, elements: !1996)
!1996 = !{!1997, !1998, !2005}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1995, file: !1955, line: 82, baseType: !1174, size: 16)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1995, file: !1955, line: 88, baseType: !1999, size: 192)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1955, line: 84, size: 192, elements: !2000)
!2000 = !{!2001, !2003, !2004}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1999, file: !1955, line: 85, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 64, elements: !1299)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1999, file: !1955, line: 86, baseType: !164, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1999, file: !1955, line: 87, baseType: !164, size: 64, offset: 128)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1995, file: !1955, line: 93, baseType: !2006, size: 96)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1995, file: !1955, line: 90, size: 96, elements: !2007)
!2007 = !{!2008, !2009}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2006, file: !1955, line: 91, baseType: !2002, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2006, file: !1955, line: 92, baseType: !383, size: 32, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1954, file: !1955, line: 101, baseType: !2011, size: 128)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 98, size: 128, elements: !2012)
!2012 = !{!2013, !2014}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2011, file: !1955, line: 99, baseType: !275, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2011, file: !1955, line: 100, baseType: !224, size: 32, offset: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1954, file: !1955, line: 108, baseType: !2016, size: 128)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1955, line: 104, size: 128, elements: !2017)
!2017 = !{!2018, !2019, !2020}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2016, file: !1955, line: 105, baseType: !164, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2016, file: !1955, line: 106, baseType: !224, size: 32, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2016, file: !1955, line: 107, baseType: !7, size: 32, offset: 96)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1186, file: !1187, line: 1067, baseType: !1806, offset: 11136)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1186, file: !1187, line: 1099, baseType: !2023, size: 64, offset: 11136)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1187, line: 56, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1186, file: !1187, line: 1103, baseType: !184, size: 128, offset: 11200)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1186, file: !1187, line: 1104, baseType: !2027, size: 64, offset: 11328)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1187, line: 46, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1186, file: !1187, line: 1105, baseType: !1142, size: 192, offset: 11392)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1186, file: !1187, line: 1106, baseType: !7, size: 32, offset: 11584)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1186, file: !1187, line: 1109, baseType: !2032, size: 128, offset: 11648)
!2032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2033, size: 128, elements: !1538)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1187, line: 51, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1186, file: !1187, line: 1110, baseType: !1142, size: 192, offset: 11776)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1186, file: !1187, line: 1111, baseType: !184, size: 128, offset: 11968)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1186, file: !1187, line: 1173, baseType: !2038, size: 64, offset: 12096)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2040, line: 62, size: 256, align: 256, elements: !2041)
!2040 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!2041 = !{!2042, !2043, !2044, !2049}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2039, file: !2040, line: 75, baseType: !383, size: 32)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2039, file: !2040, line: 90, baseType: !383, size: 32, offset: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2039, file: !2040, line: 124, baseType: !2045, size: 64, offset: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2039, file: !2040, line: 109, size: 64, elements: !2046)
!2046 = !{!2047, !2048}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !2045, file: !2040, line: 110, baseType: !388, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2045, file: !2040, line: 112, baseType: !388, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2039, file: !2040, line: 144, baseType: !383, size: 32, offset: 128)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1186, file: !1187, line: 1174, baseType: !381, size: 32, offset: 12160)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1186, file: !1187, line: 1179, baseType: !290, size: 64, offset: 12224)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1186, file: !1187, line: 1182, baseType: !2053, size: 128, offset: 12288)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1120, line: 76, size: 128, elements: !2054)
!2054 = !{!2055, !2060, !2061}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2053, file: !1120, line: 85, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2057, line: 7, size: 64, elements: !2058)
!2057 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!2058 = !{!2059}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2056, file: !2057, line: 12, baseType: !1336, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2053, file: !1120, line: 88, baseType: !456, size: 8, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2053, file: !1120, line: 95, baseType: !456, size: 8, offset: 72)
!2062 = !DIDerivedType(tag: DW_TAG_member, scope: !1186, file: !1187, line: 1184, baseType: !2063, size: 128, offset: 12416)
!2063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1186, file: !1187, line: 1184, size: 128, elements: !2064)
!2064 = !{!2065, !2066}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2063, file: !1187, line: 1185, baseType: !1199, size: 32)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2063, file: !1187, line: 1186, baseType: !331, size: 128, align: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1186, file: !1187, line: 1190, baseType: !2068, size: 64, offset: 12544)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1187, line: 53, flags: DIFlagFwdDecl)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1186, file: !1187, line: 1192, baseType: !2071, size: 128, offset: 12608)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1120, line: 64, size: 128, elements: !2072)
!2072 = !{!2073, !2074, !2075}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2071, file: !1120, line: 65, baseType: !689, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2071, file: !1120, line: 67, baseType: !383, size: 32, offset: 64)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2071, file: !1120, line: 68, baseType: !383, size: 32, offset: 96)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1186, file: !1187, line: 1206, baseType: !224, size: 32, offset: 12736)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1186, file: !1187, line: 1207, baseType: !224, size: 32, offset: 12768)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1186, file: !1187, line: 1209, baseType: !290, size: 64, offset: 12800)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1186, file: !1187, line: 1219, baseType: !387, size: 64, offset: 12864)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1186, file: !1187, line: 1220, baseType: !387, size: 64, offset: 12928)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1186, file: !1187, line: 1317, baseType: !224, size: 32, offset: 12992)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1186, file: !1187, line: 1319, baseType: !1185, size: 64, offset: 13056)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1186, file: !1187, line: 1322, baseType: !2084, size: 64, offset: 13120)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2086, line: 56, size: 512, elements: !2087)
!2086 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!2087 = !{!2088, !2089, !2090, !2091, !2092, !2093, !2094, !2096}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2085, file: !2086, line: 57, baseType: !2084, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2085, file: !2086, line: 58, baseType: !164, size: 64, offset: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2085, file: !2086, line: 59, baseType: !290, size: 64, offset: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2085, file: !2086, line: 60, baseType: !290, size: 64, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2085, file: !2086, line: 61, baseType: !789, size: 64, offset: 256)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2085, file: !2086, line: 62, baseType: !7, size: 32, offset: 320)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2085, file: !2086, line: 63, baseType: !2095, size: 64, offset: 384)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !185, line: 153, baseType: !387)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2085, file: !2086, line: 64, baseType: !2097, size: 64, offset: 448)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1186, file: !1187, line: 1326, baseType: !1199, size: 32, offset: 13184)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1186, file: !1187, line: 1342, baseType: !164, size: 64, offset: 13248)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1186, file: !1187, line: 1343, baseType: !388, size: 64, offset: 13312)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1186, file: !1187, line: 1344, baseType: !387, size: 64, offset: 13376)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1186, file: !1187, line: 1345, baseType: !388, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1186, file: !1187, line: 1346, baseType: !388, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1186, file: !1187, line: 1347, baseType: !388, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1186, file: !1187, line: 1348, baseType: !331, size: 128, align: 64, offset: 13504)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1186, file: !1187, line: 1358, baseType: !2108, size: 34816, offset: 13824)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2109, line: 485, size: 34816, elements: !2110)
!2109 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!2110 = !{!2111, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2140, !2141, !2142, !2143, !2144, !2145, !2148, !2149, !2150}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2108, file: !2109, line: 487, baseType: !2112, size: 192)
!2112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2113, size: 192, elements: !241)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2114, line: 16, size: 64, elements: !2115)
!2114 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!2115 = !{!2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2113, file: !2114, line: 17, baseType: !828, size: 16)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2113, file: !2114, line: 18, baseType: !828, size: 16, offset: 16)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2113, file: !2114, line: 19, baseType: !828, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2113, file: !2114, line: 19, baseType: !828, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2113, file: !2114, line: 19, baseType: !828, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2113, file: !2114, line: 19, baseType: !828, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2113, file: !2114, line: 19, baseType: !828, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2113, file: !2114, line: 20, baseType: !828, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2113, file: !2114, line: 20, baseType: !828, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2113, file: !2114, line: 20, baseType: !828, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2113, file: !2114, line: 20, baseType: !828, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2113, file: !2114, line: 20, baseType: !828, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2113, file: !2114, line: 20, baseType: !828, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2108, file: !2109, line: 491, baseType: !290, size: 64, offset: 192)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2108, file: !2109, line: 495, baseType: !282, size: 16, offset: 256)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2108, file: !2109, line: 496, baseType: !282, size: 16, offset: 272)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2108, file: !2109, line: 497, baseType: !282, size: 16, offset: 288)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2108, file: !2109, line: 498, baseType: !282, size: 16, offset: 304)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2108, file: !2109, line: 502, baseType: !290, size: 64, offset: 320)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2108, file: !2109, line: 503, baseType: !290, size: 64, offset: 384)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2108, file: !2109, line: 514, baseType: !2137, size: 256, offset: 448)
!2137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2138, size: 256, elements: !1124)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2109, line: 483, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2108, file: !2109, line: 516, baseType: !290, size: 64, offset: 704)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2108, file: !2109, line: 518, baseType: !290, size: 64, offset: 768)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2108, file: !2109, line: 520, baseType: !290, size: 64, offset: 832)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2108, file: !2109, line: 521, baseType: !290, size: 64, offset: 896)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2108, file: !2109, line: 522, baseType: !290, size: 64, offset: 960)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2108, file: !2109, line: 528, baseType: !2146, size: 64, offset: 1024)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2109, line: 10, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2108, file: !2109, line: 535, baseType: !290, size: 64, offset: 1088)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !2108, file: !2109, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2108, file: !2109, line: 540, baseType: !2151, size: 33280, offset: 1536)
!2151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2152, line: 317, size: 33280, elements: !2153)
!2152 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2153 = !{!2154, !2155, !2156}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2151, file: !2152, line: 330, baseType: !7, size: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2151, file: !2152, line: 337, baseType: !290, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2151, file: !2152, line: 348, baseType: !2157, size: 32768, offset: 512)
!2157 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2152, line: 304, size: 32768, elements: !2158)
!2158 = !{!2159, !2174, !2213, !2263, !2276}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2157, file: !2152, line: 305, baseType: !2160, size: 896)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2152, line: 12, size: 896, elements: !2161)
!2161 = !{!2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2173}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2160, file: !2152, line: 13, baseType: !381, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2160, file: !2152, line: 14, baseType: !381, size: 32, offset: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2160, file: !2152, line: 15, baseType: !381, size: 32, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2160, file: !2152, line: 16, baseType: !381, size: 32, offset: 96)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2160, file: !2152, line: 17, baseType: !381, size: 32, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2160, file: !2152, line: 18, baseType: !381, size: 32, offset: 160)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2160, file: !2152, line: 19, baseType: !381, size: 32, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2160, file: !2152, line: 22, baseType: !2170, size: 640, offset: 224)
!2170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 640, elements: !2171)
!2171 = !{!2172}
!2172 = !DISubrange(count: 20)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2160, file: !2152, line: 25, baseType: !381, size: 32, offset: 864)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2157, file: !2152, line: 306, baseType: !2175, size: 4096, align: 128)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2152, line: 34, size: 4096, align: 128, elements: !2176)
!2176 = !{!2177, !2178, !2179, !2180, !2181, !2196, !2197, !2198, !2202, !2204, !2208}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2175, file: !2152, line: 35, baseType: !828, size: 16)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2175, file: !2152, line: 36, baseType: !828, size: 16, offset: 16)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2175, file: !2152, line: 37, baseType: !828, size: 16, offset: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2175, file: !2152, line: 38, baseType: !828, size: 16, offset: 48)
!2181 = !DIDerivedType(tag: DW_TAG_member, scope: !2175, file: !2152, line: 39, baseType: !2182, size: 128, offset: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2175, file: !2152, line: 39, size: 128, elements: !2183)
!2183 = !{!2184, !2189}
!2184 = !DIDerivedType(tag: DW_TAG_member, scope: !2182, file: !2152, line: 40, baseType: !2185, size: 128)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2182, file: !2152, line: 40, size: 128, elements: !2186)
!2186 = !{!2187, !2188}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2185, file: !2152, line: 41, baseType: !387, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2185, file: !2152, line: 42, baseType: !387, size: 64, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, scope: !2182, file: !2152, line: 44, baseType: !2190, size: 128)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2182, file: !2152, line: 44, size: 128, elements: !2191)
!2191 = !{!2192, !2193, !2194, !2195}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2190, file: !2152, line: 45, baseType: !381, size: 32)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2190, file: !2152, line: 46, baseType: !381, size: 32, offset: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2190, file: !2152, line: 47, baseType: !381, size: 32, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2190, file: !2152, line: 48, baseType: !381, size: 32, offset: 96)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2175, file: !2152, line: 51, baseType: !381, size: 32, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2175, file: !2152, line: 52, baseType: !381, size: 32, offset: 224)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2175, file: !2152, line: 55, baseType: !2199, size: 1024, offset: 256)
!2199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 1024, elements: !2200)
!2200 = !{!2201}
!2201 = !DISubrange(count: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2175, file: !2152, line: 58, baseType: !2203, size: 2048, offset: 1280)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 2048, elements: !245)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2175, file: !2152, line: 60, baseType: !2205, size: 384, offset: 3328)
!2205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 384, elements: !2206)
!2206 = !{!2207}
!2207 = !DISubrange(count: 12)
!2208 = !DIDerivedType(tag: DW_TAG_member, scope: !2175, file: !2152, line: 62, baseType: !2209, size: 384, offset: 3712)
!2209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2175, file: !2152, line: 62, size: 384, elements: !2210)
!2210 = !{!2211, !2212}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2209, file: !2152, line: 63, baseType: !2205, size: 384)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2209, file: !2152, line: 64, baseType: !2205, size: 384)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2157, file: !2152, line: 307, baseType: !2214, size: 1088)
!2214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2152, line: 79, size: 1088, elements: !2215)
!2215 = !{!2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2262}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2214, file: !2152, line: 80, baseType: !381, size: 32)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2214, file: !2152, line: 81, baseType: !381, size: 32, offset: 32)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2214, file: !2152, line: 82, baseType: !381, size: 32, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2214, file: !2152, line: 83, baseType: !381, size: 32, offset: 96)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2214, file: !2152, line: 84, baseType: !381, size: 32, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2214, file: !2152, line: 85, baseType: !381, size: 32, offset: 160)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2214, file: !2152, line: 86, baseType: !381, size: 32, offset: 192)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2214, file: !2152, line: 88, baseType: !2170, size: 640, offset: 224)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2214, file: !2152, line: 89, baseType: !1321, size: 8, offset: 864)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2214, file: !2152, line: 90, baseType: !1321, size: 8, offset: 872)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2214, file: !2152, line: 91, baseType: !1321, size: 8, offset: 880)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2214, file: !2152, line: 92, baseType: !1321, size: 8, offset: 888)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2214, file: !2152, line: 93, baseType: !1321, size: 8, offset: 896)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2214, file: !2152, line: 94, baseType: !1321, size: 8, offset: 904)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2214, file: !2152, line: 95, baseType: !2231, size: 64, offset: 960)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2233, line: 11, size: 128, elements: !2234)
!2233 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2234 = !{!2235, !2236}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2232, file: !2233, line: 12, baseType: !275, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2232, file: !2233, line: 13, baseType: !2237, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2239, line: 56, size: 1344, elements: !2240)
!2239 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2238, file: !2239, line: 61, baseType: !290, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2238, file: !2239, line: 62, baseType: !290, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2238, file: !2239, line: 63, baseType: !290, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2238, file: !2239, line: 64, baseType: !290, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2238, file: !2239, line: 65, baseType: !290, size: 64, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2238, file: !2239, line: 66, baseType: !290, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2238, file: !2239, line: 68, baseType: !290, size: 64, offset: 384)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2238, file: !2239, line: 69, baseType: !290, size: 64, offset: 448)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2238, file: !2239, line: 70, baseType: !290, size: 64, offset: 512)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2238, file: !2239, line: 71, baseType: !290, size: 64, offset: 576)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2238, file: !2239, line: 72, baseType: !290, size: 64, offset: 640)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2238, file: !2239, line: 73, baseType: !290, size: 64, offset: 704)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2238, file: !2239, line: 74, baseType: !290, size: 64, offset: 768)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2238, file: !2239, line: 75, baseType: !290, size: 64, offset: 832)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2238, file: !2239, line: 76, baseType: !290, size: 64, offset: 896)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2238, file: !2239, line: 81, baseType: !290, size: 64, offset: 960)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2238, file: !2239, line: 83, baseType: !290, size: 64, offset: 1024)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2238, file: !2239, line: 84, baseType: !290, size: 64, offset: 1088)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2238, file: !2239, line: 85, baseType: !290, size: 64, offset: 1152)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2238, file: !2239, line: 86, baseType: !290, size: 64, offset: 1216)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2238, file: !2239, line: 87, baseType: !290, size: 64, offset: 1280)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2214, file: !2152, line: 96, baseType: !381, size: 32, offset: 1024)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2157, file: !2152, line: 308, baseType: !2264, size: 4608, align: 512)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2152, line: 289, size: 4608, align: 512, elements: !2265)
!2265 = !{!2266, !2267, !2274}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2264, file: !2152, line: 290, baseType: !2175, size: 4096, align: 128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2264, file: !2152, line: 291, baseType: !2268, size: 512, offset: 4096)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2152, line: 268, size: 512, elements: !2269)
!2269 = !{!2270, !2271, !2272}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2268, file: !2152, line: 269, baseType: !387, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2268, file: !2152, line: 270, baseType: !387, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2268, file: !2152, line: 271, baseType: !2273, size: 384, offset: 128)
!2273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 384, elements: !1594)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2264, file: !2152, line: 292, baseType: !2275, offset: 4608)
!2275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1321, elements: !1692)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2157, file: !2152, line: 309, baseType: !2277, size: 32768)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1321, size: 32768, elements: !2278)
!2278 = !{!2279}
!2279 = !DISubrange(count: 4096)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1182, file: !691, line: 378, baseType: !2281, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1178, file: !691, line: 384, baseType: !1471, size: 192, offset: 192)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !947, file: !691, line: 500, baseType: !198, offset: 6656)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !947, file: !691, line: 501, baseType: !2285, size: 64, offset: 6656)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !691, line: 387, flags: DIFlagFwdDecl)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !947, file: !691, line: 516, baseType: !1682, size: 64, offset: 6720)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !947, file: !691, line: 519, baseType: !318, size: 64, offset: 6784)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !947, file: !691, line: 521, baseType: !2290, size: 64, offset: 6848)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !691, line: 521, flags: DIFlagFwdDecl)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !947, file: !691, line: 545, baseType: !716, size: 32, offset: 6912)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !947, file: !691, line: 548, baseType: !456, size: 8, offset: 6944)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !947, file: !691, line: 550, baseType: !2295, offset: 6952)
!2295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2296, line: 142, elements: !212)
!2296 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !947, file: !691, line: 554, baseType: !1927, size: 256, offset: 6976)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !947, file: !691, line: 557, baseType: !381, size: 32, offset: 7232)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !944, file: !691, line: 565, baseType: !2300, offset: 7296)
!2300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, elements: !2301)
!2301 = !{!2302}
!2302 = !DISubrange(count: -1)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !940, file: !691, line: 151, baseType: !716, size: 32)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !933, file: !691, line: 156, baseType: !198, offset: 256)
!2305 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !691, line: 159, baseType: !2306, size: 128)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !695, file: !691, line: 159, size: 128, elements: !2307)
!2307 = !{!2308, !2372}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2306, file: !691, line: 161, baseType: !2309, size: 64)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !31, line: 110, size: 1152, elements: !2311)
!2311 = !{!2312, !2322, !2343, !2344, !2345, !2346, !2347, !2359, !2360, !2361}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2310, file: !31, line: 111, baseType: !2313, size: 384)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !31, line: 19, size: 384, elements: !2314)
!2314 = !{!2315, !2317, !2318, !2319, !2320, !2321}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2313, file: !31, line: 20, baseType: !2316, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2313, file: !31, line: 21, baseType: !2316, size: 64, offset: 64)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2313, file: !31, line: 22, baseType: !2316, size: 64, offset: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2313, file: !31, line: 23, baseType: !290, size: 64, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2313, file: !31, line: 24, baseType: !290, size: 64, offset: 256)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2313, file: !31, line: 25, baseType: !290, size: 64, offset: 320)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2310, file: !31, line: 112, baseType: !2323, size: 64, offset: 384)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2325, line: 105, size: 128, elements: !2326)
!2325 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/lizy2001/genbc/linux")
!2326 = !{!2327, !2328}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2324, file: !2325, line: 110, baseType: !290, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2324, file: !2325, line: 118, baseType: !2329, size: 64, offset: 64)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2325, line: 95, size: 448, elements: !2331)
!2331 = !{!2332, !2333, !2338, !2339, !2340, !2341, !2342}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2330, file: !2325, line: 96, baseType: !740, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2330, file: !2325, line: 97, baseType: !2334, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2325, line: 60, baseType: !2336)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !2323}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2330, file: !2325, line: 98, baseType: !2334, size: 64, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2330, file: !2325, line: 99, baseType: !456, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2330, file: !2325, line: 100, baseType: !456, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2330, file: !2325, line: 101, baseType: !331, size: 128, align: 64, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2330, file: !2325, line: 102, baseType: !2323, size: 64, offset: 384)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "internal_ref", scope: !2310, file: !31, line: 113, baseType: !2324, size: 128, offset: 448)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2310, file: !31, line: 114, baseType: !1471, size: 192, offset: 576)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2310, file: !31, line: 115, baseType: !30, size: 32, offset: 768)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2310, file: !31, line: 116, baseType: !7, size: 32, offset: 800)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2310, file: !31, line: 117, baseType: !2348, size: 64, offset: 832)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2350)
!2350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !31, line: 67, size: 256, elements: !2351)
!2351 = !{!2352, !2353, !2357, !2358}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2350, file: !31, line: 73, baseType: !809, size: 64)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "kill", scope: !2350, file: !31, line: 78, baseType: !2354, size: 64, offset: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{null, !2309}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2350, file: !31, line: 83, baseType: !2354, size: 64, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2350, file: !31, line: 89, baseType: !996, size: 64, offset: 192)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2310, file: !31, line: 118, baseType: !164, size: 64, offset: 896)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2310, file: !31, line: 119, baseType: !224, size: 32, offset: 960)
!2361 = !DIDerivedType(tag: DW_TAG_member, scope: !2310, file: !31, line: 120, baseType: !2362, size: 128, offset: 1024)
!2362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2310, file: !31, line: 120, size: 128, elements: !2363)
!2363 = !{!2364, !2370}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2362, file: !31, line: 121, baseType: !2365, size: 128)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2366, line: 6, size: 128, elements: !2367)
!2366 = !DIFile(filename: "./include/linux/range.h", directory: "/home/lizy2001/genbc/linux")
!2367 = !{!2368, !2369}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2365, file: !2366, line: 7, baseType: !387, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2365, file: !2366, line: 8, baseType: !387, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2362, file: !31, line: 122, baseType: !2371)
!2371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2365, elements: !1692)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2306, file: !691, line: 162, baseType: !164, size: 64, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !695, file: !691, line: 176, baseType: !331, size: 128, align: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, scope: !690, file: !691, line: 179, baseType: !2375, size: 32, offset: 384)
!2375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !690, file: !691, line: 179, size: 32, elements: !2376)
!2376 = !{!2377, !2378, !2379, !2380}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2375, file: !691, line: 184, baseType: !716, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2375, file: !691, line: 192, baseType: !7, size: 32)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2375, file: !691, line: 194, baseType: !7, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2375, file: !691, line: 195, baseType: !224, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !690, file: !691, line: 199, baseType: !716, size: 32, offset: 416)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !625, file: !44, line: 1964, baseType: !2383, size: 64, offset: 1344)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!275, !565, !2386}
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2388, line: 12, size: 256, elements: !2389)
!2388 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2389 = !{!2390, !2391, !2392, !2393, !2394}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2387, file: !2388, line: 13, baseType: !712, size: 32)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2387, file: !2388, line: 16, baseType: !224, size: 32, offset: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2387, file: !2388, line: 23, baseType: !290, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2387, file: !2388, line: 30, baseType: !290, size: 64, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2387, file: !2388, line: 33, baseType: !2395, size: 64, offset: 192)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2388, line: 33, flags: DIFlagFwdDecl)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !625, file: !44, line: 1966, baseType: !2383, size: 64, offset: 1408)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !566, file: !44, line: 1424, baseType: !2399, size: 64, offset: 448)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2401)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !38, line: 322, size: 704, elements: !2402)
!2402 = !{!2403, !2449, !2453, !2457, !2458, !2459, !2460, !2461, !2466, !2471, !2475}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2401, file: !38, line: 323, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DISubroutineType(types: !2406)
!2406 = !{!224, !2407}
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !38, line: 294, size: 1600, elements: !2409)
!2409 = !{!2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2434, !2435, !2436}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2408, file: !38, line: 295, baseType: !607, size: 128)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2408, file: !38, line: 296, baseType: !184, size: 128, offset: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2408, file: !38, line: 297, baseType: !184, size: 128, offset: 256)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2408, file: !38, line: 298, baseType: !184, size: 128, offset: 384)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2408, file: !38, line: 299, baseType: !1142, size: 192, offset: 512)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2408, file: !38, line: 300, baseType: !198, offset: 704)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2408, file: !38, line: 301, baseType: !716, size: 32, offset: 704)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2408, file: !38, line: 302, baseType: !565, size: 64, offset: 768)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2408, file: !38, line: 303, baseType: !2419, size: 64, offset: 832)
!2419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !38, line: 68, size: 64, elements: !2420)
!2420 = !{!2421, !2433}
!2421 = !DIDerivedType(tag: DW_TAG_member, scope: !2419, file: !38, line: 69, baseType: !2422, size: 32)
!2422 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2419, file: !38, line: 69, size: 32, elements: !2423)
!2423 = !{!2424, !2425, !2426}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2422, file: !38, line: 70, baseType: !401, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2422, file: !38, line: 71, baseType: !409, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2422, file: !38, line: 72, baseType: !2427, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2428, line: 24, baseType: !2429)
!2428 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2428, line: 22, size: 32, elements: !2430)
!2430 = !{!2431}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2429, file: !2428, line: 23, baseType: !2432, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2428, line: 20, baseType: !407)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2419, file: !38, line: 74, baseType: !37, size: 32, offset: 32)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2408, file: !38, line: 304, baseType: !497, size: 64, offset: 896)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2408, file: !38, line: 305, baseType: !290, size: 64, offset: 960)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2408, file: !38, line: 306, baseType: !2437, size: 576, offset: 1024)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !38, line: 205, size: 576, elements: !2438)
!2438 = !{!2439, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2437, file: !38, line: 206, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !38, line: 66, baseType: !499)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2437, file: !38, line: 207, baseType: !2440, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2437, file: !38, line: 208, baseType: !2440, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2437, file: !38, line: 209, baseType: !2440, size: 64, offset: 192)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2437, file: !38, line: 210, baseType: !2440, size: 64, offset: 256)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2437, file: !38, line: 211, baseType: !2440, size: 64, offset: 320)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2437, file: !38, line: 212, baseType: !2440, size: 64, offset: 384)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2437, file: !38, line: 213, baseType: !505, size: 64, offset: 448)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2437, file: !38, line: 214, baseType: !505, size: 64, offset: 512)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2401, file: !38, line: 324, baseType: !2450, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DISubroutineType(types: !2452)
!2452 = !{!2407, !565, !224}
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2401, file: !38, line: 325, baseType: !2454, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{null, !2407}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2401, file: !38, line: 326, baseType: !2404, size: 64, offset: 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2401, file: !38, line: 327, baseType: !2404, size: 64, offset: 256)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2401, file: !38, line: 328, baseType: !2404, size: 64, offset: 320)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2401, file: !38, line: 329, baseType: !653, size: 64, offset: 384)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2401, file: !38, line: 332, baseType: !2462, size: 64, offset: 448)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!2465, !395}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2401, file: !38, line: 333, baseType: !2467, size: 64, offset: 512)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!224, !395, !2470}
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2427, size: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2401, file: !38, line: 335, baseType: !2472, size: 64, offset: 576)
!2472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!224, !395, !2465}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2401, file: !38, line: 337, baseType: !2476, size: 64, offset: 640)
!2476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2477, size: 64)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!224, !565, !2479}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !566, file: !44, line: 1425, baseType: !2481, size: 64, offset: 512)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2483)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !38, line: 428, size: 704, elements: !2484)
!2484 = !{!2485, !2489, !2490, !2494, !2495, !2496, !2511, !2534, !2538, !2539, !2562}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2483, file: !38, line: 429, baseType: !2486, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DISubroutineType(types: !2488)
!2488 = !{!224, !565, !224, !224, !515}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2483, file: !38, line: 430, baseType: !653, size: 64, offset: 64)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2483, file: !38, line: 431, baseType: !2491, size: 64, offset: 128)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!224, !565, !7}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2483, file: !38, line: 432, baseType: !2491, size: 64, offset: 192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2483, file: !38, line: 433, baseType: !653, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2483, file: !38, line: 434, baseType: !2497, size: 64, offset: 320)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!224, !565, !224, !2500}
!2500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2501, size: 64)
!2501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !38, line: 415, size: 256, elements: !2502)
!2502 = !{!2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510}
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2501, file: !38, line: 416, baseType: !224, size: 32)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2501, file: !38, line: 417, baseType: !7, size: 32, offset: 32)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2501, file: !38, line: 418, baseType: !7, size: 32, offset: 64)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2501, file: !38, line: 420, baseType: !7, size: 32, offset: 96)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2501, file: !38, line: 421, baseType: !7, size: 32, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2501, file: !38, line: 422, baseType: !7, size: 32, offset: 160)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2501, file: !38, line: 423, baseType: !7, size: 32, offset: 192)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2501, file: !38, line: 424, baseType: !7, size: 32, offset: 224)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2483, file: !38, line: 435, baseType: !2512, size: 64, offset: 384)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!224, !565, !2419, !2515}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !38, line: 343, size: 960, elements: !2517)
!2517 = !{!2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2516, file: !38, line: 344, baseType: !224, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2516, file: !38, line: 345, baseType: !387, size: 64, offset: 64)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2516, file: !38, line: 346, baseType: !387, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2516, file: !38, line: 347, baseType: !387, size: 64, offset: 192)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2516, file: !38, line: 348, baseType: !387, size: 64, offset: 256)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2516, file: !38, line: 349, baseType: !387, size: 64, offset: 320)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2516, file: !38, line: 350, baseType: !387, size: 64, offset: 384)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2516, file: !38, line: 351, baseType: !746, size: 64, offset: 448)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2516, file: !38, line: 353, baseType: !746, size: 64, offset: 512)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2516, file: !38, line: 354, baseType: !224, size: 32, offset: 576)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2516, file: !38, line: 355, baseType: !224, size: 32, offset: 608)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2516, file: !38, line: 356, baseType: !387, size: 64, offset: 640)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2516, file: !38, line: 357, baseType: !387, size: 64, offset: 704)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2516, file: !38, line: 358, baseType: !387, size: 64, offset: 768)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2516, file: !38, line: 359, baseType: !746, size: 64, offset: 832)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2516, file: !38, line: 360, baseType: !224, size: 32, offset: 896)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2483, file: !38, line: 436, baseType: !2535, size: 64, offset: 448)
!2535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!224, !565, !2479, !2515}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2483, file: !38, line: 438, baseType: !2512, size: 64, offset: 512)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2483, file: !38, line: 439, baseType: !2540, size: 64, offset: 576)
!2540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2541, size: 64)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!224, !565, !2543}
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !38, line: 409, size: 1408, elements: !2545)
!2545 = !{!2546, !2547}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2544, file: !38, line: 410, baseType: !7, size: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2544, file: !38, line: 411, baseType: !2548, size: 1344, offset: 64)
!2548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2549, size: 1344, elements: !241)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !38, line: 395, size: 448, elements: !2550)
!2550 = !{!2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2561}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2549, file: !38, line: 396, baseType: !7, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2549, file: !38, line: 397, baseType: !7, size: 32, offset: 32)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2549, file: !38, line: 399, baseType: !7, size: 32, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2549, file: !38, line: 400, baseType: !7, size: 32, offset: 96)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2549, file: !38, line: 401, baseType: !7, size: 32, offset: 128)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2549, file: !38, line: 402, baseType: !7, size: 32, offset: 160)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2549, file: !38, line: 403, baseType: !7, size: 32, offset: 192)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2549, file: !38, line: 404, baseType: !389, size: 64, offset: 256)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2549, file: !38, line: 405, baseType: !2560, size: 64, offset: 320)
!2560 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !185, line: 126, baseType: !387)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2549, file: !38, line: 406, baseType: !2560, size: 64, offset: 384)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2483, file: !38, line: 440, baseType: !2491, size: 64, offset: 640)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !566, file: !44, line: 1426, baseType: !2564, size: 64, offset: 576)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2566)
!2566 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !44, line: 49, flags: DIFlagFwdDecl)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !566, file: !44, line: 1427, baseType: !290, size: 64, offset: 640)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !566, file: !44, line: 1428, baseType: !290, size: 64, offset: 704)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !566, file: !44, line: 1429, baseType: !290, size: 64, offset: 768)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !566, file: !44, line: 1430, baseType: !348, size: 64, offset: 832)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !566, file: !44, line: 1431, baseType: !736, size: 256, offset: 896)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !566, file: !44, line: 1432, baseType: !224, size: 32, offset: 1152)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !566, file: !44, line: 1433, baseType: !716, size: 32, offset: 1184)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !566, file: !44, line: 1437, baseType: !2575, size: 64, offset: 1216)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2576, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2578)
!2578 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !44, line: 1437, flags: DIFlagFwdDecl)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !566, file: !44, line: 1449, baseType: !2580, size: 64, offset: 1280)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !364, line: 34, size: 64, elements: !2581)
!2581 = !{!2582}
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2580, file: !364, line: 35, baseType: !367, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !566, file: !44, line: 1450, baseType: !184, size: 128, offset: 1344)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !566, file: !44, line: 1451, baseType: !2585, size: 64, offset: 1472)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !44, line: 699, flags: DIFlagFwdDecl)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !566, file: !44, line: 1452, baseType: !1893, size: 64, offset: 1536)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !566, file: !44, line: 1453, baseType: !2589, size: 64, offset: 1600)
!2589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2590 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !44, line: 1453, flags: DIFlagFwdDecl)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !566, file: !44, line: 1454, baseType: !607, size: 128, offset: 1664)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !566, file: !44, line: 1455, baseType: !7, size: 32, offset: 1792)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !566, file: !44, line: 1456, baseType: !2594, size: 2432, offset: 1856)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !38, line: 518, size: 2432, elements: !2595)
!2595 = !{!2596, !2597, !2598, !2600, !2632}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2594, file: !38, line: 519, baseType: !7, size: 32)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2594, file: !38, line: 520, baseType: !736, size: 256, offset: 64)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2594, file: !38, line: 521, baseType: !2599, size: 192, offset: 320)
!2599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !395, size: 192, elements: !241)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2594, file: !38, line: 522, baseType: !2601, size: 1728, offset: 512)
!2601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2602, size: 1728, elements: !241)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !38, line: 222, size: 576, elements: !2603)
!2603 = !{!2604, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2602, file: !38, line: 223, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !38, line: 443, size: 256, elements: !2607)
!2607 = !{!2608, !2609, !2622, !2623}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2606, file: !38, line: 444, baseType: !224, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2606, file: !38, line: 445, baseType: !2610, size: 64, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2612)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !38, line: 310, size: 512, elements: !2613)
!2613 = !{!2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2612, file: !38, line: 311, baseType: !653, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2612, file: !38, line: 312, baseType: !653, size: 64, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2612, file: !38, line: 313, baseType: !653, size: 64, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2612, file: !38, line: 314, baseType: !653, size: 64, offset: 192)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2612, file: !38, line: 315, baseType: !2404, size: 64, offset: 256)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2612, file: !38, line: 316, baseType: !2404, size: 64, offset: 320)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2612, file: !38, line: 317, baseType: !2404, size: 64, offset: 384)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2612, file: !38, line: 318, baseType: !2476, size: 64, offset: 448)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2606, file: !38, line: 446, baseType: !598, size: 64, offset: 128)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2606, file: !38, line: 447, baseType: !2605, size: 64, offset: 192)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2602, file: !38, line: 224, baseType: !224, size: 32, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2602, file: !38, line: 226, baseType: !184, size: 128, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2602, file: !38, line: 227, baseType: !290, size: 64, offset: 256)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2602, file: !38, line: 228, baseType: !7, size: 32, offset: 320)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2602, file: !38, line: 229, baseType: !7, size: 32, offset: 352)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2602, file: !38, line: 230, baseType: !2440, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2602, file: !38, line: 231, baseType: !2440, size: 64, offset: 448)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2602, file: !38, line: 232, baseType: !164, size: 64, offset: 512)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2594, file: !38, line: 523, baseType: !2633, size: 192, offset: 2240)
!2633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2610, size: 192, elements: !241)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !566, file: !44, line: 1458, baseType: !2635, size: 2112, offset: 4288)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !44, line: 1410, size: 2112, elements: !2636)
!2636 = !{!2637, !2638, !2639}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2635, file: !44, line: 1411, baseType: !224, size: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2635, file: !44, line: 1412, baseType: !1450, size: 128, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2635, file: !44, line: 1413, baseType: !2640, size: 1920, offset: 192)
!2640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2641, size: 1920, elements: !241)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2642, line: 12, size: 640, elements: !2643)
!2642 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2643 = !{!2644, !2652, !2654, !2659, !2660}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2641, file: !2642, line: 13, baseType: !2645, size: 320)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2646, line: 17, size: 320, elements: !2647)
!2646 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2647 = !{!2648, !2649, !2650, !2651}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2645, file: !2646, line: 18, baseType: !224, size: 32)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2645, file: !2646, line: 19, baseType: !224, size: 32, offset: 32)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2645, file: !2646, line: 20, baseType: !1450, size: 128, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2645, file: !2646, line: 22, baseType: !331, size: 128, align: 64, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2641, file: !2642, line: 14, baseType: !2653, size: 64, offset: 320)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2641, file: !2642, line: 15, baseType: !2655, size: 64, offset: 384)
!2655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2656, line: 16, size: 64, elements: !2657)
!2656 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2657 = !{!2658}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2655, file: !2656, line: 17, baseType: !1185, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2641, file: !2642, line: 16, baseType: !1450, size: 128, offset: 448)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2641, file: !2642, line: 17, baseType: !716, size: 32, offset: 576)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !566, file: !44, line: 1465, baseType: !164, size: 64, offset: 6400)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !566, file: !44, line: 1468, baseType: !381, size: 32, offset: 6464)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !566, file: !44, line: 1470, baseType: !505, size: 64, offset: 6528)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !566, file: !44, line: 1471, baseType: !505, size: 64, offset: 6592)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !566, file: !44, line: 1473, baseType: !383, size: 32, offset: 6656)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !566, file: !44, line: 1474, baseType: !2667, size: 64, offset: 6720)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !44, line: 603, flags: DIFlagFwdDecl)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !566, file: !44, line: 1477, baseType: !2670, size: 256, offset: 6784)
!2670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 256, elements: !2200)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !566, file: !44, line: 1478, baseType: !2672, size: 128, offset: 7040)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2673, line: 18, baseType: !2674)
!2673 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2673, line: 16, size: 128, elements: !2675)
!2675 = !{!2676}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2674, file: !2673, line: 17, baseType: !2677, size: 128)
!2677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1322, size: 128, elements: !1704)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !566, file: !44, line: 1480, baseType: !7, size: 32, offset: 7168)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !566, file: !44, line: 1481, baseType: !2680, size: 32, offset: 7200)
!2680 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !185, line: 150, baseType: !7)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !566, file: !44, line: 1487, baseType: !1142, size: 192, offset: 7232)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !566, file: !44, line: 1493, baseType: !180, size: 64, offset: 7424)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !566, file: !44, line: 1495, baseType: !2684, size: 64, offset: 7488)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2686)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !346, line: 135, size: 1024, align: 512, elements: !2687)
!2687 = !{!2688, !2692, !2693, !2700, !2706, !2710, !2714, !2718, !2719, !2723, !2727, !2732, !2736}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2686, file: !346, line: 136, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{!224, !348, !7}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2686, file: !346, line: 137, baseType: !2689, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2686, file: !346, line: 138, baseType: !2694, size: 64, offset: 128)
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!224, !2697, !2699}
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2686, file: !346, line: 139, baseType: !2701, size: 64, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!224, !2697, !7, !180, !2704}
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2686, file: !346, line: 141, baseType: !2707, size: 64, offset: 256)
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!224, !2697}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2686, file: !346, line: 142, baseType: !2711, size: 64, offset: 320)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DISubroutineType(types: !2713)
!2713 = !{!224, !348}
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2686, file: !346, line: 143, baseType: !2715, size: 64, offset: 384)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{null, !348}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2686, file: !346, line: 144, baseType: !2715, size: 64, offset: 448)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2686, file: !346, line: 145, baseType: !2720, size: 64, offset: 512)
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{null, !348, !395}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2686, file: !346, line: 146, baseType: !2724, size: 64, offset: 576)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!240, !348, !240, !224}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2686, file: !346, line: 147, baseType: !2728, size: 64, offset: 640)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!344, !2731}
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2686, file: !346, line: 148, baseType: !2733, size: 64, offset: 704)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!224, !515, !456}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2686, file: !346, line: 149, baseType: !2737, size: 64, offset: 768)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!348, !348, !2740}
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !396)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !566, file: !44, line: 1500, baseType: !224, size: 32, offset: 7552)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !566, file: !44, line: 1502, baseType: !2744, size: 448, offset: 7616)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2388, line: 60, size: 448, elements: !2745)
!2745 = !{!2746, !2751, !2752, !2753, !2754, !2755, !2756}
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2744, file: !2388, line: 61, baseType: !2747, size: 64)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{!290, !2750, !2386}
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2744, file: !2388, line: 63, baseType: !2747, size: 64, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2744, file: !2388, line: 66, baseType: !275, size: 64, offset: 128)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2744, file: !2388, line: 67, baseType: !224, size: 32, offset: 192)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2744, file: !2388, line: 68, baseType: !7, size: 32, offset: 224)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2744, file: !2388, line: 71, baseType: !184, size: 128, offset: 256)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2744, file: !2388, line: 77, baseType: !2757, size: 64, offset: 384)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !566, file: !44, line: 1505, baseType: !740, size: 64, offset: 8064)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !566, file: !44, line: 1508, baseType: !740, size: 64, offset: 8128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !566, file: !44, line: 1511, baseType: !224, size: 32, offset: 8192)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !566, file: !44, line: 1514, baseType: !878, size: 32, offset: 8224)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !566, file: !44, line: 1517, baseType: !2763, size: 64, offset: 8256)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1928, line: 18, flags: DIFlagFwdDecl)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !566, file: !44, line: 1518, baseType: !603, size: 64, offset: 8320)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !566, file: !44, line: 1525, baseType: !1682, size: 64, offset: 8384)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !566, file: !44, line: 1532, baseType: !2768, size: 64, offset: 8448)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2769, line: 52, size: 64, elements: !2770)
!2769 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2770 = !{!2771}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2768, file: !2769, line: 53, baseType: !2772, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2769, line: 40, size: 256, elements: !2774)
!2774 = !{!2775, !2776, !2781}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2773, file: !2769, line: 42, baseType: !198)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2773, file: !2769, line: 44, baseType: !2777, size: 192)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2769, line: 28, size: 192, elements: !2778)
!2778 = !{!2779, !2780}
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2777, file: !2769, line: 29, baseType: !184, size: 128)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2777, file: !2769, line: 31, baseType: !275, size: 64, offset: 128)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2773, file: !2769, line: 49, baseType: !275, size: 64, offset: 192)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !566, file: !44, line: 1533, baseType: !2768, size: 64, offset: 8512)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !566, file: !44, line: 1534, baseType: !331, size: 128, align: 64, offset: 8576)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !566, file: !44, line: 1535, baseType: !1927, size: 256, offset: 8704)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !566, file: !44, line: 1537, baseType: !1142, size: 192, offset: 8960)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !566, file: !44, line: 1542, baseType: !224, size: 32, offset: 9152)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !566, file: !44, line: 1545, baseType: !198, offset: 9184)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !566, file: !44, line: 1546, baseType: !184, size: 128, offset: 9216)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !566, file: !44, line: 1548, baseType: !198, offset: 9344)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !566, file: !44, line: 1549, baseType: !184, size: 128, offset: 9344)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !396, file: !44, line: 624, baseType: !702, size: 64, offset: 256)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !396, file: !44, line: 631, baseType: !290, size: 64, offset: 320)
!2793 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !44, line: 639, baseType: !2794, size: 32, offset: 384)
!2794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !44, line: 639, size: 32, elements: !2795)
!2795 = !{!2796, !2798}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2794, file: !44, line: 640, baseType: !2797, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2794, file: !44, line: 641, baseType: !7, size: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !396, file: !44, line: 643, baseType: !479, size: 32, offset: 416)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !396, file: !44, line: 644, baseType: !497, size: 64, offset: 448)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !396, file: !44, line: 645, baseType: !501, size: 128, offset: 512)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !396, file: !44, line: 646, baseType: !501, size: 128, offset: 640)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !396, file: !44, line: 647, baseType: !501, size: 128, offset: 768)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !396, file: !44, line: 648, baseType: !198, offset: 896)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !396, file: !44, line: 649, baseType: !282, size: 16, offset: 896)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !396, file: !44, line: 650, baseType: !1321, size: 8, offset: 912)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !396, file: !44, line: 651, baseType: !1321, size: 8, offset: 920)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !396, file: !44, line: 652, baseType: !2560, size: 64, offset: 960)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !396, file: !44, line: 659, baseType: !290, size: 64, offset: 1024)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !396, file: !44, line: 660, baseType: !736, size: 256, offset: 1088)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !396, file: !44, line: 662, baseType: !290, size: 64, offset: 1344)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !396, file: !44, line: 663, baseType: !290, size: 64, offset: 1408)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !396, file: !44, line: 665, baseType: !607, size: 128, offset: 1472)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !396, file: !44, line: 666, baseType: !184, size: 128, offset: 1600)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !396, file: !44, line: 675, baseType: !184, size: 128, offset: 1728)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !396, file: !44, line: 676, baseType: !184, size: 128, offset: 1856)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !396, file: !44, line: 677, baseType: !184, size: 128, offset: 1984)
!2818 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !44, line: 678, baseType: !2819, size: 128, offset: 2112)
!2819 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !44, line: 678, size: 128, elements: !2820)
!2820 = !{!2821, !2822}
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2819, file: !44, line: 679, baseType: !603, size: 64)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2819, file: !44, line: 680, baseType: !331, size: 128, align: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !396, file: !44, line: 682, baseType: !742, size: 64, offset: 2240)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !396, file: !44, line: 683, baseType: !742, size: 64, offset: 2304)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !396, file: !44, line: 684, baseType: !716, size: 32, offset: 2368)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !396, file: !44, line: 685, baseType: !716, size: 32, offset: 2400)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !396, file: !44, line: 686, baseType: !716, size: 32, offset: 2432)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !396, file: !44, line: 688, baseType: !716, size: 32, offset: 2464)
!2829 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !44, line: 690, baseType: !2830, size: 64, offset: 2496)
!2830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !44, line: 690, size: 64, elements: !2831)
!2831 = !{!2832, !3055}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2830, file: !44, line: 691, baseType: !2833, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2835)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !44, line: 1822, size: 2048, elements: !2836)
!2836 = !{!2837, !2838, !2842, !2847, !2851, !2852, !2853, !2857, !2870, !2871, !2879, !2883, !2884, !2888, !2889, !2893, !2898, !2899, !2903, !2907, !3015, !3019, !3020, !3024, !3025, !3029, !3033, !3038, !3042, !3046, !3050, !3054}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2835, file: !44, line: 1823, baseType: !598, size: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2835, file: !44, line: 1824, baseType: !2839, size: 64, offset: 64)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!497, !318, !497, !224}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2835, file: !44, line: 1825, baseType: !2843, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!271, !318, !240, !287, !2846}
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2835, file: !44, line: 1826, baseType: !2848, size: 64, offset: 192)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!271, !318, !180, !287, !2846}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2835, file: !44, line: 1827, baseType: !813, size: 64, offset: 256)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2835, file: !44, line: 1828, baseType: !813, size: 64, offset: 320)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2835, file: !44, line: 1829, baseType: !2854, size: 64, offset: 384)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!224, !816, !456}
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2835, file: !44, line: 1830, baseType: !2858, size: 64, offset: 448)
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DISubroutineType(types: !2860)
!2860 = !{!224, !318, !2861}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !44, line: 1776, size: 128, elements: !2863)
!2863 = !{!2864, !2869}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2862, file: !44, line: 1777, baseType: !2865, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !44, line: 1773, baseType: !2866)
!2866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2867, size: 64)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!224, !2861, !180, !224, !497, !387, !7}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2862, file: !44, line: 1778, baseType: !497, size: 64, offset: 64)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2835, file: !44, line: 1831, baseType: !2858, size: 64, offset: 512)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2835, file: !44, line: 1832, baseType: !2872, size: 64, offset: 576)
!2872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!2875, !318, !2877}
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2876, line: 52, baseType: !7)
!2876 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !44, line: 56, flags: DIFlagFwdDecl)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2835, file: !44, line: 1833, baseType: !2880, size: 64, offset: 640)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!275, !318, !7, !290}
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2835, file: !44, line: 1834, baseType: !2880, size: 64, offset: 704)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2835, file: !44, line: 1835, baseType: !2885, size: 64, offset: 768)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!224, !318, !950}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2835, file: !44, line: 1836, baseType: !290, size: 64, offset: 832)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2835, file: !44, line: 1837, baseType: !2890, size: 64, offset: 896)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!224, !395, !318}
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2835, file: !44, line: 1838, baseType: !2894, size: 64, offset: 960)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!224, !318, !2897}
!2897 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !44, line: 1007, baseType: !164)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2835, file: !44, line: 1839, baseType: !2890, size: 64, offset: 1024)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2835, file: !44, line: 1840, baseType: !2900, size: 64, offset: 1088)
!2900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2901, size: 64)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!224, !318, !497, !497, !224}
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2835, file: !44, line: 1841, baseType: !2904, size: 64, offset: 1152)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!224, !224, !318, !224}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2835, file: !44, line: 1842, baseType: !2908, size: 64, offset: 1216)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!224, !318, !224, !2911}
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !44, line: 1062, size: 1664, elements: !2913)
!2913 = !{!2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2945, !2946, !2947, !2960, !2991}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2912, file: !44, line: 1063, baseType: !2911, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2912, file: !44, line: 1064, baseType: !184, size: 128, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2912, file: !44, line: 1065, baseType: !607, size: 128, offset: 192)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2912, file: !44, line: 1066, baseType: !184, size: 128, offset: 320)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2912, file: !44, line: 1069, baseType: !184, size: 128, offset: 448)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2912, file: !44, line: 1072, baseType: !2897, size: 64, offset: 576)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2912, file: !44, line: 1073, baseType: !7, size: 32, offset: 640)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2912, file: !44, line: 1074, baseType: !393, size: 8, offset: 672)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2912, file: !44, line: 1075, baseType: !7, size: 32, offset: 704)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2912, file: !44, line: 1076, baseType: !224, size: 32, offset: 736)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2912, file: !44, line: 1077, baseType: !1450, size: 128, offset: 768)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2912, file: !44, line: 1078, baseType: !318, size: 64, offset: 896)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2912, file: !44, line: 1079, baseType: !497, size: 64, offset: 960)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2912, file: !44, line: 1080, baseType: !497, size: 64, offset: 1024)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2912, file: !44, line: 1082, baseType: !2929, size: 64, offset: 1088)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !44, line: 1314, size: 320, elements: !2931)
!2931 = !{!2932, !2940, !2941, !2942, !2943, !2944}
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2930, file: !44, line: 1315, baseType: !2933)
!2933 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2934, line: 20, baseType: !2935)
!2934 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2934, line: 11, elements: !2936)
!2936 = !{!2937}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2935, file: !2934, line: 12, baseType: !2938)
!2938 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !210, line: 33, baseType: !2939)
!2939 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !210, line: 31, elements: !212)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2930, file: !44, line: 1316, baseType: !224, size: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2930, file: !44, line: 1317, baseType: !224, size: 32, offset: 32)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2930, file: !44, line: 1318, baseType: !2929, size: 64, offset: 64)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2930, file: !44, line: 1319, baseType: !318, size: 64, offset: 128)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2930, file: !44, line: 1320, baseType: !331, size: 128, align: 64, offset: 192)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2912, file: !44, line: 1084, baseType: !290, size: 64, offset: 1152)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2912, file: !44, line: 1085, baseType: !290, size: 64, offset: 1216)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2912, file: !44, line: 1087, baseType: !2948, size: 64, offset: 1280)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2950)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !44, line: 1011, size: 128, elements: !2951)
!2951 = !{!2952, !2956}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2950, file: !44, line: 1012, baseType: !2953, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{null, !2911, !2911}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2950, file: !44, line: 1013, baseType: !2957, size: 64, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{null, !2911}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2912, file: !44, line: 1088, baseType: !2961, size: 64, offset: 1344)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2963)
!2963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !44, line: 1016, size: 512, elements: !2964)
!2964 = !{!2965, !2969, !2973, !2974, !2978, !2982, !2986, !2990}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2963, file: !44, line: 1017, baseType: !2966, size: 64)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!2897, !2897}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2963, file: !44, line: 1018, baseType: !2970, size: 64, offset: 64)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{null, !2897}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2963, file: !44, line: 1019, baseType: !2957, size: 64, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2963, file: !44, line: 1020, baseType: !2975, size: 64, offset: 192)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!224, !2911, !224}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2963, file: !44, line: 1021, baseType: !2979, size: 64, offset: 256)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!456, !2911}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2963, file: !44, line: 1022, baseType: !2983, size: 64, offset: 320)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!224, !2911, !224, !188}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2963, file: !44, line: 1023, baseType: !2987, size: 64, offset: 384)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{null, !2911, !790}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2963, file: !44, line: 1024, baseType: !2979, size: 64, offset: 448)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2912, file: !44, line: 1097, baseType: !2992, size: 256, offset: 1408)
!2992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2912, file: !44, line: 1089, size: 256, elements: !2993)
!2993 = !{!2994, !3003, !3009}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2992, file: !44, line: 1090, baseType: !2995, size: 256)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2996, line: 10, size: 256, elements: !2997)
!2996 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2997 = !{!2998, !2999, !3002}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2995, file: !2996, line: 11, baseType: !381, size: 32)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2995, file: !2996, line: 12, baseType: !3000, size: 64, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2996, line: 5, flags: DIFlagFwdDecl)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2995, file: !2996, line: 13, baseType: !184, size: 128, offset: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2992, file: !44, line: 1091, baseType: !3004, size: 64)
!3004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2996, line: 17, size: 64, elements: !3005)
!3005 = !{!3006}
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3004, file: !2996, line: 18, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2996, line: 16, flags: DIFlagFwdDecl)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2992, file: !44, line: 1096, baseType: !3010, size: 192)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2992, file: !44, line: 1092, size: 192, elements: !3011)
!3011 = !{!3012, !3013, !3014}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3010, file: !44, line: 1093, baseType: !184, size: 128)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3010, file: !44, line: 1094, baseType: !224, size: 32, offset: 128)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !3010, file: !44, line: 1095, baseType: !7, size: 32, offset: 160)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2835, file: !44, line: 1843, baseType: !3016, size: 64, offset: 1280)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!271, !318, !689, !224, !287, !2846, !224}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2835, file: !44, line: 1844, baseType: !1070, size: 64, offset: 1344)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2835, file: !44, line: 1845, baseType: !3021, size: 64, offset: 1408)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!224, !224}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2835, file: !44, line: 1846, baseType: !2908, size: 64, offset: 1472)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2835, file: !44, line: 1847, baseType: !3026, size: 64, offset: 1536)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!271, !2068, !318, !2846, !287, !7}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2835, file: !44, line: 1848, baseType: !3030, size: 64, offset: 1600)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!271, !318, !2846, !2068, !287, !7}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2835, file: !44, line: 1849, baseType: !3034, size: 64, offset: 1664)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!224, !318, !275, !3037, !790}
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2911, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2835, file: !44, line: 1850, baseType: !3039, size: 64, offset: 1728)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!275, !318, !224, !497, !497}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2835, file: !44, line: 1852, baseType: !3043, size: 64, offset: 1792)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{null, !679, !318}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2835, file: !44, line: 1856, baseType: !3047, size: 64, offset: 1856)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!271, !318, !497, !318, !497, !287, !7}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2835, file: !44, line: 1858, baseType: !3051, size: 64, offset: 1920)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!497, !318, !497, !318, !497, !497, !7}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2835, file: !44, line: 1861, baseType: !2900, size: 64, offset: 1984)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2830, file: !44, line: 692, baseType: !632, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !396, file: !44, line: 694, baseType: !3057, size: 64, offset: 2560)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !44, line: 1100, size: 384, elements: !3059)
!3059 = !{!3060, !3061, !3062, !3063}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !3058, file: !44, line: 1101, baseType: !198)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !3058, file: !44, line: 1102, baseType: !184, size: 128)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !3058, file: !44, line: 1103, baseType: !184, size: 128, offset: 128)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !3058, file: !44, line: 1104, baseType: !184, size: 128, offset: 256)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !396, file: !44, line: 695, baseType: !703, size: 1216, align: 64, offset: 2624)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !396, file: !44, line: 696, baseType: !184, size: 128, offset: 3840)
!3066 = !DIDerivedType(tag: DW_TAG_member, scope: !396, file: !44, line: 697, baseType: !3067, size: 64, offset: 3968)
!3067 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !396, file: !44, line: 697, size: 64, elements: !3068)
!3068 = !{!3069, !3070, !3071, !3074, !3075}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3067, file: !44, line: 698, baseType: !2068, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !3067, file: !44, line: 699, baseType: !2585, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3067, file: !44, line: 700, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !44, line: 700, flags: DIFlagFwdDecl)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3067, file: !44, line: 701, baseType: !240, size: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3067, file: !44, line: 702, baseType: !7, size: 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !396, file: !44, line: 705, baseType: !383, size: 32, offset: 4032)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !396, file: !44, line: 708, baseType: !383, size: 32, offset: 4064)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !396, file: !44, line: 709, baseType: !2667, size: 64, offset: 4096)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !396, file: !44, line: 720, baseType: !164, size: 64, offset: 4160)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !349, file: !346, line: 98, baseType: !3081, size: 256, offset: 448)
!3081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !393, size: 256, elements: !2200)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !349, file: !346, line: 101, baseType: !3083, size: 32, offset: 704)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3084, line: 25, size: 32, elements: !3085)
!3084 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!3085 = !{!3086}
!3086 = !DIDerivedType(tag: DW_TAG_member, scope: !3083, file: !3084, line: 26, baseType: !3087, size: 32)
!3087 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3083, file: !3084, line: 26, size: 32, elements: !3088)
!3088 = !{!3089}
!3089 = !DIDerivedType(tag: DW_TAG_member, scope: !3087, file: !3084, line: 30, baseType: !3090, size: 32)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3087, file: !3084, line: 30, size: 32, elements: !3091)
!3091 = !{!3092, !3093}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3090, file: !3084, line: 31, baseType: !198)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3090, file: !3084, line: 32, baseType: !224, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !349, file: !346, line: 102, baseType: !2684, size: 64, offset: 768)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !349, file: !346, line: 103, baseType: !565, size: 64, offset: 832)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !349, file: !346, line: 104, baseType: !290, size: 64, offset: 896)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !349, file: !346, line: 105, baseType: !164, size: 64, offset: 960)
!3098 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !346, line: 107, baseType: !3099, size: 128, offset: 1024)
!3099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !346, line: 107, size: 128, elements: !3100)
!3100 = !{!3101, !3102}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3099, file: !346, line: 108, baseType: !184, size: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3099, file: !346, line: 109, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !349, file: !346, line: 111, baseType: !184, size: 128, offset: 1152)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !349, file: !346, line: 112, baseType: !184, size: 128, offset: 1280)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !349, file: !346, line: 120, baseType: !3107, size: 128, offset: 1408)
!3107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !349, file: !346, line: 116, size: 128, elements: !3108)
!3108 = !{!3109, !3110, !3111}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3107, file: !346, line: 117, baseType: !607, size: 128)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3107, file: !346, line: 118, baseType: !363, size: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3107, file: !346, line: 119, baseType: !331, size: 128, align: 64)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !319, file: !44, line: 922, baseType: !395, size: 64, offset: 256)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !319, file: !44, line: 923, baseType: !2833, size: 64, offset: 320)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !319, file: !44, line: 929, baseType: !198, offset: 384)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !319, file: !44, line: 930, baseType: !43, size: 32, offset: 384)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !319, file: !44, line: 931, baseType: !740, size: 64, offset: 448)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !319, file: !44, line: 932, baseType: !7, size: 32, offset: 512)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !319, file: !44, line: 933, baseType: !2680, size: 32, offset: 544)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !319, file: !44, line: 934, baseType: !1142, size: 192, offset: 576)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !319, file: !44, line: 935, baseType: !497, size: 64, offset: 768)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !319, file: !44, line: 936, baseType: !3122, size: 192, offset: 832)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !44, line: 885, size: 192, elements: !3123)
!3123 = !{!3124, !3125, !3126, !3127, !3128, !3129}
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3122, file: !44, line: 886, baseType: !2933)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3122, file: !44, line: 887, baseType: !1440, size: 64)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !3122, file: !44, line: 888, baseType: !52, size: 32, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3122, file: !44, line: 889, baseType: !401, size: 32, offset: 96)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !3122, file: !44, line: 889, baseType: !401, size: 32, offset: 128)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !3122, file: !44, line: 890, baseType: !224, size: 32, offset: 160)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !319, file: !44, line: 937, baseType: !1516, size: 64, offset: 1024)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !319, file: !44, line: 938, baseType: !3132, size: 256, offset: 1088)
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !44, line: 896, size: 256, elements: !3133)
!3133 = !{!3134, !3135, !3136, !3137, !3138, !3139}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3132, file: !44, line: 897, baseType: !290, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3132, file: !44, line: 898, baseType: !7, size: 32, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3132, file: !44, line: 899, baseType: !7, size: 32, offset: 96)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3132, file: !44, line: 902, baseType: !7, size: 32, offset: 128)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3132, file: !44, line: 903, baseType: !7, size: 32, offset: 160)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3132, file: !44, line: 904, baseType: !497, size: 64, offset: 192)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !319, file: !44, line: 940, baseType: !387, size: 64, offset: 1344)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !319, file: !44, line: 945, baseType: !164, size: 64, offset: 1408)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !319, file: !44, line: 949, baseType: !184, size: 128, offset: 1472)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !319, file: !44, line: 950, baseType: !184, size: 128, offset: 1600)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !319, file: !44, line: 952, baseType: !702, size: 64, offset: 1728)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !319, file: !44, line: 953, baseType: !878, size: 32, offset: 1792)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !319, file: !44, line: 954, baseType: !878, size: 32, offset: 1824)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !309, file: !265, line: 174, baseType: !315, size: 64, offset: 320)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !309, file: !265, line: 176, baseType: !3149, size: 64, offset: 384)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!224, !318, !191, !308, !950}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !297, file: !265, line: 90, baseType: !292, size: 64, offset: 192)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !297, file: !265, line: 91, baseType: !3154, size: 64, offset: 256)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !255, file: !177, line: 143, baseType: !3156, size: 64, offset: 256)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!3159, !191}
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3161)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !61, line: 39, size: 384, elements: !3162)
!3162 = !{!3163, !3164, !3168, !3172, !3178, !3182}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3161, file: !61, line: 40, baseType: !60, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3161, file: !61, line: 41, baseType: !3165, size: 64, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DISubroutineType(types: !3167)
!3167 = !{!456}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3161, file: !61, line: 42, baseType: !3169, size: 64, offset: 128)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{!164}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3161, file: !61, line: 43, baseType: !3173, size: 64, offset: 192)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!2097, !3176}
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !61, line: 19, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3161, file: !61, line: 44, baseType: !3179, size: 64, offset: 256)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!2097}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3161, file: !61, line: 45, baseType: !434, size: 64, offset: 320)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !255, file: !177, line: 144, baseType: !3184, size: 64, offset: 320)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!2097, !191}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !255, file: !177, line: 145, baseType: !3188, size: 64, offset: 384)
!3188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3189, size: 64)
!3189 = !DISubroutineType(types: !3190)
!3190 = !{null, !191, !3191, !3192}
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !176, file: !177, line: 70, baseType: !3194, size: 64, offset: 384)
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3195, size: 64)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3196, line: 123, size: 1024, elements: !3197)
!3196 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!3197 = !{!3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3326, !3327, !3328, !3329, !3330}
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3195, file: !3196, line: 124, baseType: !716, size: 32)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3195, file: !3196, line: 125, baseType: !716, size: 32, offset: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3195, file: !3196, line: 135, baseType: !3194, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3195, file: !3196, line: 136, baseType: !180, size: 64, offset: 128)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3195, file: !3196, line: 138, baseType: !729, size: 192, align: 64, offset: 192)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3195, file: !3196, line: 140, baseType: !2097, size: 64, offset: 384)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3195, file: !3196, line: 141, baseType: !7, size: 32, offset: 448)
!3205 = !DIDerivedType(tag: DW_TAG_member, scope: !3195, file: !3196, line: 142, baseType: !3206, size: 256, offset: 512)
!3206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3195, file: !3196, line: 142, size: 256, elements: !3207)
!3207 = !{!3208, !3254, !3258}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3206, file: !3196, line: 143, baseType: !3209, size: 192)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3196, line: 91, size: 192, elements: !3210)
!3210 = !{!3211, !3212, !3213}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3209, file: !3196, line: 92, baseType: !290, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3209, file: !3196, line: 94, baseType: !725, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3209, file: !3196, line: 100, baseType: !3214, size: 64, offset: 128)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3196, line: 180, size: 704, elements: !3216)
!3216 = !{!3217, !3218, !3219, !3226, !3227, !3228, !3252, !3253}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3215, file: !3196, line: 182, baseType: !3194, size: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3215, file: !3196, line: 183, baseType: !7, size: 32, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3215, file: !3196, line: 186, baseType: !3220, size: 192, offset: 128)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3221, line: 19, size: 192, elements: !3222)
!3221 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3222 = !{!3223, !3224, !3225}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3220, file: !3221, line: 20, baseType: !707, size: 128)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3220, file: !3221, line: 21, baseType: !7, size: 32, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3220, file: !3221, line: 22, baseType: !7, size: 32, offset: 160)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3215, file: !3196, line: 187, baseType: !381, size: 32, offset: 320)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3215, file: !3196, line: 188, baseType: !381, size: 32, offset: 352)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3215, file: !3196, line: 189, baseType: !3229, size: 64, offset: 384)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !3196, line: 168, size: 320, elements: !3231)
!3231 = !{!3232, !3236, !3240, !3244, !3248}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3230, file: !3196, line: 169, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3234, size: 64)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!224, !679, !3214}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3230, file: !3196, line: 171, baseType: !3237, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!224, !3194, !180, !281}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3230, file: !3196, line: 173, baseType: !3241, size: 64, offset: 128)
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3242, size: 64)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{!224, !3194}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3230, file: !3196, line: 174, baseType: !3245, size: 64, offset: 192)
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{!224, !3194, !3194, !180}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3230, file: !3196, line: 176, baseType: !3249, size: 64, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DISubroutineType(types: !3251)
!3251 = !{!224, !679, !3194, !3214}
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3215, file: !3196, line: 192, baseType: !184, size: 128, offset: 448)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3215, file: !3196, line: 194, baseType: !1450, size: 128, offset: 576)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3206, file: !3196, line: 144, baseType: !3255, size: 64)
!3255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3196, line: 103, size: 64, elements: !3256)
!3256 = !{!3257}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3255, file: !3196, line: 104, baseType: !3194, size: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3206, file: !3196, line: 145, baseType: !3259, size: 256)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3196, line: 107, size: 256, elements: !3260)
!3260 = !{!3261, !3321, !3324, !3325}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3259, file: !3196, line: 108, baseType: !3262, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3264)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3196, line: 217, size: 768, elements: !3265)
!3265 = !{!3266, !3286, !3290, !3294, !3298, !3302, !3306, !3310, !3311, !3312, !3313, !3317}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3264, file: !3196, line: 222, baseType: !3267, size: 64)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!224, !3270}
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3196, line: 197, size: 1088, elements: !3272)
!3272 = !{!3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3271, file: !3196, line: 199, baseType: !3194, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3271, file: !3196, line: 200, baseType: !318, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3271, file: !3196, line: 201, baseType: !679, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3271, file: !3196, line: 202, baseType: !164, size: 64, offset: 192)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3271, file: !3196, line: 205, baseType: !1142, size: 192, offset: 256)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3271, file: !3196, line: 206, baseType: !1142, size: 192, offset: 448)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3271, file: !3196, line: 207, baseType: !224, size: 32, offset: 640)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3271, file: !3196, line: 208, baseType: !184, size: 128, offset: 704)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3271, file: !3196, line: 209, baseType: !240, size: 64, offset: 832)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3271, file: !3196, line: 211, baseType: !287, size: 64, offset: 896)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3271, file: !3196, line: 212, baseType: !456, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3271, file: !3196, line: 213, baseType: !456, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3271, file: !3196, line: 214, baseType: !978, size: 64, offset: 1024)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3264, file: !3196, line: 223, baseType: !3287, size: 64, offset: 64)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{null, !3270}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3264, file: !3196, line: 236, baseType: !3291, size: 64, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DISubroutineType(types: !3293)
!3293 = !{!224, !679, !164}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3264, file: !3196, line: 238, baseType: !3295, size: 64, offset: 192)
!3295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3296, size: 64)
!3296 = !DISubroutineType(types: !3297)
!3297 = !{!164, !679, !2846}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3264, file: !3196, line: 239, baseType: !3299, size: 64, offset: 256)
!3299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3300, size: 64)
!3300 = !DISubroutineType(types: !3301)
!3301 = !{!164, !679, !164, !2846}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3264, file: !3196, line: 240, baseType: !3303, size: 64, offset: 320)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{null, !679, !164}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3264, file: !3196, line: 242, baseType: !3307, size: 64, offset: 384)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!271, !3270, !240, !287, !497}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3264, file: !3196, line: 252, baseType: !287, size: 64, offset: 448)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3264, file: !3196, line: 259, baseType: !456, size: 8, offset: 512)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3264, file: !3196, line: 260, baseType: !3307, size: 64, offset: 576)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3264, file: !3196, line: 263, baseType: !3314, size: 64, offset: 640)
!3314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3315, size: 64)
!3315 = !DISubroutineType(types: !3316)
!3316 = !{!2875, !3270, !2877}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3264, file: !3196, line: 266, baseType: !3318, size: 64, offset: 704)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = !DISubroutineType(types: !3320)
!3320 = !{!224, !3270, !950}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3259, file: !3196, line: 109, baseType: !3322, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3323, size: 64)
!3323 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3196, line: 31, flags: DIFlagFwdDecl)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3259, file: !3196, line: 110, baseType: !497, size: 64, offset: 128)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3259, file: !3196, line: 111, baseType: !3194, size: 64, offset: 192)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3195, file: !3196, line: 148, baseType: !164, size: 64, offset: 768)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3195, file: !3196, line: 154, baseType: !387, size: 64, offset: 832)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3195, file: !3196, line: 156, baseType: !282, size: 16, offset: 896)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3195, file: !3196, line: 157, baseType: !281, size: 16, offset: 912)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3195, file: !3196, line: 158, baseType: !3331, size: 64, offset: 960)
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3196, line: 32, flags: DIFlagFwdDecl)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !176, file: !177, line: 71, baseType: !3334, size: 32, offset: 448)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3335, line: 19, size: 32, elements: !3336)
!3335 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3336 = !{!3337}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3334, file: !3335, line: 20, baseType: !1199, size: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !176, file: !177, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !176, file: !177, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !176, file: !177, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !176, file: !177, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !176, file: !177, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !173, file: !73, line: 463, baseType: !172, size: 64, offset: 512)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !173, file: !73, line: 465, baseType: !3345, size: 64, offset: 576)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !73, line: 36, flags: DIFlagFwdDecl)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !173, file: !73, line: 467, baseType: !180, size: 64, offset: 640)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !173, file: !73, line: 468, baseType: !3349, size: 64, offset: 704)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3351)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !73, line: 87, size: 384, elements: !3352)
!3352 = !{!3353, !3354, !3355, !3359, !3364, !3368}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3351, file: !73, line: 88, baseType: !180, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3351, file: !73, line: 89, baseType: !294, size: 64, offset: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3351, file: !73, line: 90, baseType: !3356, size: 64, offset: 128)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!224, !172, !235}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3351, file: !73, line: 91, baseType: !3360, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!240, !172, !3363, !3191, !3192}
!3363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3351, file: !73, line: 93, baseType: !3365, size: 64, offset: 256)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{null, !172}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3351, file: !73, line: 95, baseType: !3369, size: 64, offset: 320)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3371)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !80, line: 278, size: 1472, elements: !3372)
!3372 = !{!3373, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3371, file: !80, line: 279, baseType: !3374, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!224, !172}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3371, file: !80, line: 280, baseType: !3365, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3371, file: !80, line: 281, baseType: !3374, size: 64, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3371, file: !80, line: 282, baseType: !3374, size: 64, offset: 192)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3371, file: !80, line: 283, baseType: !3374, size: 64, offset: 256)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3371, file: !80, line: 284, baseType: !3374, size: 64, offset: 320)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3371, file: !80, line: 285, baseType: !3374, size: 64, offset: 384)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3371, file: !80, line: 286, baseType: !3374, size: 64, offset: 448)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3371, file: !80, line: 287, baseType: !3374, size: 64, offset: 512)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3371, file: !80, line: 288, baseType: !3374, size: 64, offset: 576)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3371, file: !80, line: 289, baseType: !3374, size: 64, offset: 640)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3371, file: !80, line: 290, baseType: !3374, size: 64, offset: 704)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3371, file: !80, line: 291, baseType: !3374, size: 64, offset: 768)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3371, file: !80, line: 292, baseType: !3374, size: 64, offset: 832)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3371, file: !80, line: 293, baseType: !3374, size: 64, offset: 896)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3371, file: !80, line: 294, baseType: !3374, size: 64, offset: 960)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3371, file: !80, line: 295, baseType: !3374, size: 64, offset: 1024)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3371, file: !80, line: 296, baseType: !3374, size: 64, offset: 1088)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3371, file: !80, line: 297, baseType: !3374, size: 64, offset: 1152)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3371, file: !80, line: 298, baseType: !3374, size: 64, offset: 1216)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3371, file: !80, line: 299, baseType: !3374, size: 64, offset: 1280)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3371, file: !80, line: 300, baseType: !3374, size: 64, offset: 1344)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3371, file: !80, line: 301, baseType: !3374, size: 64, offset: 1408)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !173, file: !73, line: 470, baseType: !3400, size: 64, offset: 768)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3402, line: 82, size: 1408, elements: !3403)
!3402 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3403 = !{!3404, !3405, !3406, !3407, !3408, !3409, !3410, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3485, !3488, !3489}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3401, file: !3402, line: 83, baseType: !180, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3401, file: !3402, line: 84, baseType: !180, size: 64, offset: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3401, file: !3402, line: 85, baseType: !172, size: 64, offset: 128)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3401, file: !3402, line: 86, baseType: !294, size: 64, offset: 192)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3401, file: !3402, line: 87, baseType: !294, size: 64, offset: 256)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3401, file: !3402, line: 88, baseType: !294, size: 64, offset: 320)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3401, file: !3402, line: 90, baseType: !3411, size: 64, offset: 384)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!224, !172, !3414}
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !67, line: 95, size: 1152, elements: !3416)
!3416 = !{!3417, !3418, !3419, !3420, !3421, !3422, !3423, !3436, !3449, !3450, !3451, !3452, !3453, !3461, !3462, !3463, !3464, !3465, !3466}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3415, file: !67, line: 96, baseType: !180, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3415, file: !67, line: 97, baseType: !3400, size: 64, offset: 64)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3415, file: !67, line: 99, baseType: !598, size: 64, offset: 128)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3415, file: !67, line: 100, baseType: !180, size: 64, offset: 192)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3415, file: !67, line: 102, baseType: !456, size: 8, offset: 256)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3415, file: !67, line: 103, baseType: !66, size: 32, offset: 288)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3415, file: !67, line: 105, baseType: !3424, size: 64, offset: 320)
!3424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3425, size: 64)
!3425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3426)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3427, line: 262, size: 1600, elements: !3428)
!3427 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3428 = !{!3429, !3430, !3431, !3435}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3426, file: !3427, line: 263, baseType: !2670, size: 256)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3426, file: !3427, line: 264, baseType: !2670, size: 256, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3426, file: !3427, line: 265, baseType: !3432, size: 1024, offset: 512)
!3432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 1024, elements: !3433)
!3433 = !{!3434}
!3434 = !DISubrange(count: 128)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3426, file: !3427, line: 266, baseType: !2097, size: 64, offset: 1536)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3415, file: !67, line: 106, baseType: !3437, size: 64, offset: 384)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3439)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3427, line: 210, size: 256, elements: !3440)
!3440 = !{!3441, !3445, !3447, !3448}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3439, file: !3427, line: 211, baseType: !3442, size: 72)
!3442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1322, size: 72, elements: !3443)
!3443 = !{!3444}
!3444 = !DISubrange(count: 9)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3439, file: !3427, line: 212, baseType: !3446, size: 64, offset: 128)
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3427, line: 14, baseType: !290)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3439, file: !3427, line: 213, baseType: !383, size: 32, offset: 192)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3439, file: !3427, line: 214, baseType: !383, size: 32, offset: 224)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3415, file: !67, line: 108, baseType: !3374, size: 64, offset: 448)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3415, file: !67, line: 109, baseType: !3365, size: 64, offset: 512)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3415, file: !67, line: 110, baseType: !3374, size: 64, offset: 576)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3415, file: !67, line: 111, baseType: !3365, size: 64, offset: 640)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3415, file: !67, line: 112, baseType: !3454, size: 64, offset: 704)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DISubroutineType(types: !3456)
!3456 = !{!224, !172, !3457}
!3457 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !80, line: 52, baseType: !3458)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !80, line: 50, size: 32, elements: !3459)
!3459 = !{!3460}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3458, file: !80, line: 51, baseType: !224, size: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3415, file: !67, line: 113, baseType: !3374, size: 64, offset: 768)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3415, file: !67, line: 114, baseType: !294, size: 64, offset: 832)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3415, file: !67, line: 115, baseType: !294, size: 64, offset: 896)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3415, file: !67, line: 117, baseType: !3369, size: 64, offset: 960)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3415, file: !67, line: 118, baseType: !3365, size: 64, offset: 1024)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3415, file: !67, line: 120, baseType: !3467, size: 64, offset: 1088)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !67, line: 120, flags: DIFlagFwdDecl)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3401, file: !3402, line: 91, baseType: !3356, size: 64, offset: 448)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3401, file: !3402, line: 92, baseType: !3374, size: 64, offset: 512)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3401, file: !3402, line: 93, baseType: !3365, size: 64, offset: 576)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3401, file: !3402, line: 94, baseType: !3374, size: 64, offset: 640)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3401, file: !3402, line: 95, baseType: !3365, size: 64, offset: 704)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3401, file: !3402, line: 97, baseType: !3374, size: 64, offset: 768)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3401, file: !3402, line: 98, baseType: !3374, size: 64, offset: 832)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3401, file: !3402, line: 100, baseType: !3454, size: 64, offset: 896)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3401, file: !3402, line: 101, baseType: !3374, size: 64, offset: 960)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3401, file: !3402, line: 103, baseType: !3374, size: 64, offset: 1024)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3401, file: !3402, line: 105, baseType: !3374, size: 64, offset: 1088)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3401, file: !3402, line: 107, baseType: !3369, size: 64, offset: 1152)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3401, file: !3402, line: 109, baseType: !3482, size: 64, offset: 1216)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3484)
!3484 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3402, line: 109, flags: DIFlagFwdDecl)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3401, file: !3402, line: 111, baseType: !3486, size: 64, offset: 1280)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3402, line: 111, flags: DIFlagFwdDecl)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3401, file: !3402, line: 112, baseType: !613, offset: 1344)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3401, file: !3402, line: 114, baseType: !456, size: 8, offset: 1344)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !173, file: !73, line: 471, baseType: !3414, size: 64, offset: 832)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !173, file: !73, line: 473, baseType: !164, size: 64, offset: 896)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !173, file: !73, line: 475, baseType: !164, size: 64, offset: 960)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !173, file: !73, line: 480, baseType: !1142, size: 192, offset: 1024)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !173, file: !73, line: 484, baseType: !3495, size: 576, offset: 1216)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !73, line: 361, size: 576, elements: !3496)
!3496 = !{!3497, !3498, !3499, !3500, !3501, !3502}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3495, file: !73, line: 362, baseType: !184, size: 128)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3495, file: !73, line: 363, baseType: !184, size: 128, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3495, file: !73, line: 364, baseType: !184, size: 128, offset: 256)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3495, file: !73, line: 365, baseType: !184, size: 128, offset: 384)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3495, file: !73, line: 366, baseType: !456, size: 8, offset: 512)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3495, file: !73, line: 367, baseType: !72, size: 32, offset: 544)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !173, file: !73, line: 485, baseType: !3504, size: 2304, offset: 1792)
!3504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !80, line: 565, size: 2304, elements: !3505)
!3505 = !{!3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3601, !3605}
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3504, file: !80, line: 566, baseType: !3457, size: 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3504, file: !80, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3504, file: !80, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3504, file: !80, line: 569, baseType: !456, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3504, file: !80, line: 570, baseType: !456, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3504, file: !80, line: 571, baseType: !456, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3504, file: !80, line: 572, baseType: !456, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3504, file: !80, line: 573, baseType: !456, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3504, file: !80, line: 574, baseType: !456, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3504, file: !80, line: 575, baseType: !456, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3504, file: !80, line: 576, baseType: !456, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3504, file: !80, line: 577, baseType: !381, size: 32, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3504, file: !80, line: 578, baseType: !198, offset: 96)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3504, file: !80, line: 580, baseType: !184, size: 128, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3504, file: !80, line: 581, baseType: !1471, size: 192, offset: 256)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3504, file: !80, line: 582, baseType: !3522, size: 64, offset: 448)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3524, line: 43, size: 1472, elements: !3525)
!3524 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3525 = !{!3526, !3527, !3528, !3529, !3530, !3533, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3523, file: !3524, line: 44, baseType: !180, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3523, file: !3524, line: 45, baseType: !224, size: 32, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3523, file: !3524, line: 46, baseType: !184, size: 128, offset: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3523, file: !3524, line: 47, baseType: !198, offset: 256)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3523, file: !3524, line: 48, baseType: !3531, size: 64, offset: 256)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !80, line: 533, flags: DIFlagFwdDecl)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3523, file: !3524, line: 49, baseType: !3534, size: 320, offset: 320)
!3534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3535, line: 11, size: 320, elements: !3536)
!3535 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3536 = !{!3537, !3538, !3539, !3544}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3534, file: !3535, line: 16, baseType: !607, size: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3534, file: !3535, line: 17, baseType: !290, size: 64, offset: 128)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3534, file: !3535, line: 18, baseType: !3540, size: 64, offset: 192)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{null, !3543}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3534, file: !3535, line: 19, baseType: !381, size: 32, offset: 256)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3523, file: !3524, line: 50, baseType: !290, size: 64, offset: 640)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3523, file: !3524, line: 51, baseType: !1269, size: 64, offset: 704)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3523, file: !3524, line: 52, baseType: !1269, size: 64, offset: 768)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3523, file: !3524, line: 53, baseType: !1269, size: 64, offset: 832)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3523, file: !3524, line: 54, baseType: !1269, size: 64, offset: 896)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3523, file: !3524, line: 55, baseType: !1269, size: 64, offset: 960)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3523, file: !3524, line: 56, baseType: !290, size: 64, offset: 1024)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3523, file: !3524, line: 57, baseType: !290, size: 64, offset: 1088)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3523, file: !3524, line: 58, baseType: !290, size: 64, offset: 1152)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3523, file: !3524, line: 59, baseType: !290, size: 64, offset: 1216)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3523, file: !3524, line: 60, baseType: !290, size: 64, offset: 1280)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3523, file: !3524, line: 61, baseType: !172, size: 64, offset: 1344)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3523, file: !3524, line: 62, baseType: !456, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3523, file: !3524, line: 63, baseType: !456, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3504, file: !80, line: 583, baseType: !456, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3504, file: !80, line: 584, baseType: !456, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3504, file: !80, line: 585, baseType: !456, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3504, file: !80, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3504, file: !80, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3504, file: !80, line: 592, baseType: !1261, size: 512, offset: 576)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3504, file: !80, line: 593, baseType: !387, size: 64, offset: 1088)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3504, file: !80, line: 594, baseType: !1927, size: 256, offset: 1152)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3504, file: !80, line: 595, baseType: !1450, size: 128, offset: 1408)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3504, file: !80, line: 596, baseType: !3531, size: 64, offset: 1536)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3504, file: !80, line: 597, baseType: !716, size: 32, offset: 1600)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3504, file: !80, line: 598, baseType: !716, size: 32, offset: 1632)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3504, file: !80, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3504, file: !80, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3504, file: !80, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3504, file: !80, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3504, file: !80, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3504, file: !80, line: 604, baseType: !456, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3504, file: !80, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3504, file: !80, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3504, file: !80, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3504, file: !80, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3504, file: !80, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3504, file: !80, line: 610, baseType: !7, size: 32, offset: 1696)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3504, file: !80, line: 611, baseType: !79, size: 32, offset: 1728)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3504, file: !80, line: 612, baseType: !87, size: 32, offset: 1760)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3504, file: !80, line: 613, baseType: !224, size: 32, offset: 1792)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3504, file: !80, line: 614, baseType: !224, size: 32, offset: 1824)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3504, file: !80, line: 615, baseType: !387, size: 64, offset: 1856)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3504, file: !80, line: 616, baseType: !387, size: 64, offset: 1920)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3504, file: !80, line: 617, baseType: !387, size: 64, offset: 1984)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3504, file: !80, line: 618, baseType: !387, size: 64, offset: 2048)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3504, file: !80, line: 620, baseType: !3592, size: 64, offset: 2112)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !80, line: 536, size: 256, elements: !3594)
!3594 = !{!3595, !3596, !3597, !3598}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3593, file: !80, line: 537, baseType: !198)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3593, file: !80, line: 538, baseType: !7, size: 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3593, file: !80, line: 540, baseType: !184, size: 128, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3593, file: !80, line: 543, baseType: !3599, size: 64, offset: 192)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !80, line: 534, flags: DIFlagFwdDecl)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3504, file: !80, line: 621, baseType: !3602, size: 64, offset: 2176)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{null, !172, !1413}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3504, file: !80, line: 622, baseType: !3606, size: 64, offset: 2240)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !80, line: 622, flags: DIFlagFwdDecl)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !173, file: !73, line: 486, baseType: !3609, size: 64, offset: 4096)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !80, line: 642, size: 1792, elements: !3611)
!3611 = !{!3612, !3613, !3614, !3618, !3619, !3620}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3610, file: !80, line: 643, baseType: !3371, size: 1472)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3610, file: !80, line: 644, baseType: !3374, size: 64, offset: 1472)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3610, file: !80, line: 645, baseType: !3615, size: 64, offset: 1536)
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3616, size: 64)
!3616 = !DISubroutineType(types: !3617)
!3617 = !{null, !172, !456}
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3610, file: !80, line: 646, baseType: !3374, size: 64, offset: 1600)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3610, file: !80, line: 647, baseType: !3365, size: 64, offset: 1664)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3610, file: !80, line: 648, baseType: !3365, size: 64, offset: 1728)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !173, file: !73, line: 493, baseType: !3622, size: 64, offset: 4160)
!3622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !94, line: 162, size: 1088, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3800, !3801, !3802, !3803, !3804, !3805, !3808, !3809, !3810, !3811, !3812, !3813, !3814}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3623, file: !94, line: 163, baseType: !184, size: 128)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3623, file: !94, line: 164, baseType: !180, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3623, file: !94, line: 165, baseType: !3628, size: 64, offset: 192)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3630)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !94, line: 105, size: 640, elements: !3631)
!3631 = !{!3632, !3750, !3761, !3766, !3770, !3777, !3781, !3785, !3792, !3796}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3630, file: !94, line: 106, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!224, !3622, !3636, !93}
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3638, line: 51, size: 1344, elements: !3639)
!3638 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3639 = !{!3640, !3641, !3643, !3644, !3734, !3743, !3744, !3745, !3746, !3747, !3748, !3749}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3637, file: !3638, line: 52, baseType: !180, size: 64)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3637, file: !3638, line: 53, baseType: !3642, size: 32, offset: 64)
!3642 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3638, line: 28, baseType: !381)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3637, file: !3638, line: 54, baseType: !180, size: 64, offset: 128)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3637, file: !3638, line: 55, baseType: !3645, size: 192, offset: 192)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3646, line: 17, size: 192, elements: !3647)
!3646 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3647 = !{!3648, !3650, !3733}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3645, file: !3646, line: 18, baseType: !3649, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3645, file: !3646, line: 19, baseType: !3651, size: 64, offset: 64)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3653)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3646, line: 110, size: 1152, elements: !3654)
!3654 = !{!3655, !3659, !3663, !3669, !3675, !3679, !3683, !3688, !3692, !3693, !3697, !3701, !3705, !3716, !3717, !3718, !3719, !3729}
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3653, file: !3646, line: 111, baseType: !3656, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DISubroutineType(types: !3658)
!3658 = !{!3649, !3649}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3653, file: !3646, line: 112, baseType: !3660, size: 64, offset: 64)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{null, !3649}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3653, file: !3646, line: 113, baseType: !3664, size: 64, offset: 128)
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DISubroutineType(types: !3666)
!3666 = !{!456, !3667}
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3645)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3653, file: !3646, line: 114, baseType: !3670, size: 64, offset: 192)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!2097, !3667, !3673}
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3653, file: !3646, line: 116, baseType: !3676, size: 64, offset: 256)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!456, !3667, !180}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3653, file: !3646, line: 118, baseType: !3680, size: 64, offset: 320)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!224, !3667, !180, !7, !164, !287}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3653, file: !3646, line: 123, baseType: !3684, size: 64, offset: 384)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!224, !3667, !180, !3687, !287}
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3653, file: !3646, line: 126, baseType: !3689, size: 64, offset: 448)
!3689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3690, size: 64)
!3690 = !DISubroutineType(types: !3691)
!3691 = !{!180, !3667}
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3653, file: !3646, line: 127, baseType: !3689, size: 64, offset: 512)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3653, file: !3646, line: 128, baseType: !3694, size: 64, offset: 576)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DISubroutineType(types: !3696)
!3696 = !{!3649, !3667}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3653, file: !3646, line: 130, baseType: !3698, size: 64, offset: 640)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!3649, !3667, !3649}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3653, file: !3646, line: 133, baseType: !3702, size: 64, offset: 704)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!3649, !3667, !180}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3653, file: !3646, line: 135, baseType: !3706, size: 64, offset: 768)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!224, !3667, !180, !180, !7, !7, !3709}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3646, line: 43, size: 640, elements: !3711)
!3711 = !{!3712, !3713, !3714}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3710, file: !3646, line: 44, baseType: !3649, size: 64)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3710, file: !3646, line: 45, baseType: !7, size: 32, offset: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3710, file: !3646, line: 46, baseType: !3715, size: 512, offset: 128)
!3715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 512, elements: !1299)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3653, file: !3646, line: 140, baseType: !3698, size: 64, offset: 832)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3653, file: !3646, line: 143, baseType: !3694, size: 64, offset: 896)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3653, file: !3646, line: 145, baseType: !3656, size: 64, offset: 960)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3653, file: !3646, line: 146, baseType: !3720, size: 64, offset: 1024)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = !DISubroutineType(types: !3722)
!3722 = !{!224, !3667, !3723}
!3723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3724, size: 64)
!3724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3646, line: 29, size: 128, elements: !3725)
!3725 = !{!3726, !3727, !3728}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3724, file: !3646, line: 30, baseType: !7, size: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3724, file: !3646, line: 31, baseType: !7, size: 32, offset: 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3724, file: !3646, line: 32, baseType: !3667, size: 64, offset: 64)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3653, file: !3646, line: 148, baseType: !3730, size: 64, offset: 1088)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!224, !3667, !172}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3645, file: !3646, line: 20, baseType: !172, size: 64, offset: 128)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3637, file: !3638, line: 57, baseType: !3735, size: 64, offset: 384)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3638, line: 31, size: 704, elements: !3737)
!3737 = !{!3738, !3739, !3740, !3741, !3742}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3736, file: !3638, line: 32, baseType: !240, size: 64)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3736, file: !3638, line: 33, baseType: !224, size: 32, offset: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3736, file: !3638, line: 34, baseType: !164, size: 64, offset: 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3736, file: !3638, line: 35, baseType: !3735, size: 64, offset: 192)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3736, file: !3638, line: 43, baseType: !309, size: 448, offset: 256)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3637, file: !3638, line: 58, baseType: !3735, size: 64, offset: 448)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3637, file: !3638, line: 59, baseType: !3636, size: 64, offset: 512)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3637, file: !3638, line: 60, baseType: !3636, size: 64, offset: 576)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3637, file: !3638, line: 61, baseType: !3636, size: 64, offset: 640)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3637, file: !3638, line: 63, baseType: !176, size: 512, offset: 704)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3637, file: !3638, line: 65, baseType: !290, size: 64, offset: 1216)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3637, file: !3638, line: 66, baseType: !164, size: 64, offset: 1280)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3630, file: !94, line: 108, baseType: !3751, size: 64, offset: 64)
!3751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3752, size: 64)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!224, !3622, !3754, !93}
!3754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3755, size: 64)
!3755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !94, line: 63, size: 640, elements: !3756)
!3756 = !{!3757, !3758, !3759}
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3755, file: !94, line: 64, baseType: !3649, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3755, file: !94, line: 65, baseType: !224, size: 32, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3755, file: !94, line: 66, baseType: !3760, size: 512, offset: 96)
!3760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 512, elements: !1704)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3630, file: !94, line: 110, baseType: !3762, size: 64, offset: 128)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!224, !3622, !7, !3765}
!3765 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !185, line: 164, baseType: !290)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3630, file: !94, line: 111, baseType: !3767, size: 64, offset: 192)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{null, !3622, !7}
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3630, file: !94, line: 112, baseType: !3771, size: 64, offset: 256)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = !DISubroutineType(types: !3773)
!3773 = !{!224, !3622, !3636, !3774, !7, !3776, !2653}
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !381)
!3776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3630, file: !94, line: 117, baseType: !3778, size: 64, offset: 320)
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DISubroutineType(types: !3780)
!3780 = !{!224, !3622, !7, !7, !164}
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3630, file: !94, line: 119, baseType: !3782, size: 64, offset: 384)
!3782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3783, size: 64)
!3783 = !DISubroutineType(types: !3784)
!3784 = !{null, !3622, !7, !7}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3630, file: !94, line: 121, baseType: !3786, size: 64, offset: 448)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!224, !3622, !3789, !456}
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3791, line: 11, flags: DIFlagFwdDecl)
!3791 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3630, file: !94, line: 122, baseType: !3793, size: 64, offset: 512)
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !3622, !3789}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3630, file: !94, line: 123, baseType: !3797, size: 64, offset: 576)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!224, !3622, !3754, !3776, !2653}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3623, file: !94, line: 166, baseType: !164, size: 64, offset: 256)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3623, file: !94, line: 167, baseType: !7, size: 32, offset: 320)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3623, file: !94, line: 168, baseType: !7, size: 32, offset: 352)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3623, file: !94, line: 171, baseType: !3649, size: 64, offset: 384)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3623, file: !94, line: 172, baseType: !93, size: 32, offset: 448)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3623, file: !94, line: 173, baseType: !3806, size: 64, offset: 512)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !94, line: 134, flags: DIFlagFwdDecl)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3623, file: !94, line: 175, baseType: !3622, size: 64, offset: 576)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3623, file: !94, line: 182, baseType: !3765, size: 64, offset: 640)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3623, file: !94, line: 183, baseType: !7, size: 32, offset: 704)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3623, file: !94, line: 184, baseType: !7, size: 32, offset: 736)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3623, file: !94, line: 185, baseType: !707, size: 128, offset: 768)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3623, file: !94, line: 186, baseType: !1142, size: 192, offset: 896)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3623, file: !94, line: 187, baseType: !3815, offset: 1088)
!3815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2301)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !173, file: !73, line: 499, baseType: !184, size: 128, offset: 4224)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !173, file: !73, line: 502, baseType: !3818, size: 64, offset: 4352)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3820)
!3820 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !73, line: 502, flags: DIFlagFwdDecl)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !173, file: !73, line: 504, baseType: !3822, size: 64, offset: 4416)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !173, file: !73, line: 505, baseType: !387, size: 64, offset: 4480)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !173, file: !73, line: 510, baseType: !387, size: 64, offset: 4544)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !173, file: !73, line: 511, baseType: !3826, size: 64, offset: 4608)
!3826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3828)
!3828 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !73, line: 511, flags: DIFlagFwdDecl)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !173, file: !73, line: 513, baseType: !3830, size: 64, offset: 4672)
!3830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3831, size: 64)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !73, line: 288, size: 128, elements: !3832)
!3832 = !{!3833, !3834}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3831, file: !73, line: 293, baseType: !7, size: 32)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3831, file: !73, line: 294, baseType: !290, size: 64, offset: 64)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !173, file: !73, line: 515, baseType: !184, size: 128, offset: 4736)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !173, file: !73, line: 526, baseType: !3837, offset: 4864)
!3837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3838, line: 5, elements: !212)
!3838 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !173, file: !73, line: 528, baseType: !3636, size: 64, offset: 4864)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !173, file: !73, line: 529, baseType: !3649, size: 64, offset: 4928)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !173, file: !73, line: 534, baseType: !479, size: 32, offset: 4992)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !173, file: !73, line: 535, baseType: !381, size: 32, offset: 5024)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !173, file: !73, line: 537, baseType: !198, offset: 5056)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !173, file: !73, line: 538, baseType: !184, size: 128, offset: 5056)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !173, file: !73, line: 540, baseType: !3846, size: 64, offset: 5184)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3848, line: 54, size: 960, elements: !3849)
!3848 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3849 = !{!3850, !3851, !3852, !3853, !3854, !3855, !3856, !3860, !3864, !3865, !3866, !3867, !3871, !3875, !3876}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3847, file: !3848, line: 55, baseType: !180, size: 64)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3847, file: !3848, line: 56, baseType: !598, size: 64, offset: 64)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3847, file: !3848, line: 58, baseType: !294, size: 64, offset: 128)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3847, file: !3848, line: 59, baseType: !294, size: 64, offset: 192)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3847, file: !3848, line: 60, baseType: !191, size: 64, offset: 256)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3847, file: !3848, line: 62, baseType: !3356, size: 64, offset: 320)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3847, file: !3848, line: 63, baseType: !3857, size: 64, offset: 384)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!240, !172, !3363}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3847, file: !3848, line: 65, baseType: !3861, size: 64, offset: 448)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{null, !3846}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3847, file: !3848, line: 66, baseType: !3365, size: 64, offset: 512)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3847, file: !3848, line: 68, baseType: !3374, size: 64, offset: 576)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3847, file: !3848, line: 70, baseType: !3159, size: 64, offset: 640)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3847, file: !3848, line: 71, baseType: !3868, size: 64, offset: 704)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!2097, !172}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3847, file: !3848, line: 73, baseType: !3872, size: 64, offset: 768)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{null, !172, !3191, !3192}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3847, file: !3848, line: 75, baseType: !3369, size: 64, offset: 832)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3847, file: !3848, line: 77, baseType: !3486, size: 64, offset: 896)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !173, file: !73, line: 541, baseType: !294, size: 64, offset: 5248)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !173, file: !73, line: 543, baseType: !3365, size: 64, offset: 5312)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !173, file: !73, line: 544, baseType: !3880, size: 64, offset: 5376)
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !73, line: 45, flags: DIFlagFwdDecl)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !173, file: !73, line: 545, baseType: !3883, size: 64, offset: 5440)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !73, line: 47, flags: DIFlagFwdDecl)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !173, file: !73, line: 547, baseType: !456, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !173, file: !73, line: 548, baseType: !456, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !173, file: !73, line: 549, baseType: !456, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !173, file: !73, line: 550, baseType: !456, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "sysdev", scope: !169, file: !129, line: 426, baseType: !172, size: 64, offset: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "busnum", scope: !169, file: !129, line: 427, baseType: !224, size: 32, offset: 128)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "bus_name", scope: !169, file: !129, line: 428, baseType: !180, size: 64, offset: 192)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "uses_pio_for_control", scope: !169, file: !129, line: 429, baseType: !1321, size: 8, offset: 256)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "otg_port", scope: !169, file: !129, line: 433, baseType: !1321, size: 8, offset: 264)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "is_b_host", scope: !169, file: !129, line: 434, baseType: !7, size: 1, offset: 272, flags: DIFlagBitField, extraData: i64 272)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "b_hnp_enable", scope: !169, file: !129, line: 435, baseType: !7, size: 1, offset: 273, flags: DIFlagBitField, extraData: i64 272)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "no_stop_on_short", scope: !169, file: !129, line: 436, baseType: !7, size: 1, offset: 274, flags: DIFlagBitField, extraData: i64 272)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "no_sg_constraint", scope: !169, file: !129, line: 441, baseType: !7, size: 1, offset: 275, flags: DIFlagBitField, extraData: i64 272)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "sg_tablesize", scope: !169, file: !129, line: 442, baseType: !7, size: 32, offset: 288)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next", scope: !169, file: !129, line: 444, baseType: !224, size: 32, offset: 320)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "devnum_next_mutex", scope: !169, file: !129, line: 446, baseType: !1142, size: 192, offset: 384)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "devmap", scope: !169, file: !129, line: 448, baseType: !3902, size: 128, offset: 576)
!3902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_devmap", file: !129, line: 417, size: 128, elements: !3903)
!3903 = !{!3904}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "devicemap", scope: !3902, file: !129, line: 418, baseType: !3905, size: 128)
!3905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 128, elements: !1538)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "root_hub", scope: !169, file: !129, line: 449, baseType: !3907, size: 64, offset: 704)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device", file: !129, line: 631, size: 10624, elements: !3909)
!3909 = !{!3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917, !3928, !3929, !3931, !3932, !3934, !3975, !3976, !3993, !4054, !4136, !4137, !4139, !4140, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4175, !4176, !4177, !4182, !4189, !4190, !4191, !4192}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "devnum", scope: !3908, file: !129, line: 632, baseType: !224, size: 32)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "devpath", scope: !3908, file: !129, line: 633, baseType: !1703, size: 128, offset: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "route", scope: !3908, file: !129, line: 634, baseType: !381, size: 32, offset: 160)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3908, file: !129, line: 635, baseType: !107, size: 32, offset: 192)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !3908, file: !129, line: 636, baseType: !119, size: 32, offset: 224)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "rx_lanes", scope: !3908, file: !129, line: 637, baseType: !7, size: 32, offset: 256)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "tx_lanes", scope: !3908, file: !129, line: 638, baseType: !7, size: 32, offset: 288)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "tt", scope: !3908, file: !129, line: 640, baseType: !3918, size: 64, offset: 320)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_tt", file: !153, line: 554, size: 576, elements: !3920)
!3920 = !{!3921, !3922, !3923, !3924, !3925, !3926, !3927}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "hub", scope: !3919, file: !153, line: 555, baseType: !3907, size: 64)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "multi", scope: !3919, file: !153, line: 556, baseType: !224, size: 32, offset: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "think_time", scope: !3919, file: !153, line: 557, baseType: !7, size: 32, offset: 96)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3919, file: !153, line: 558, baseType: !164, size: 64, offset: 128)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3919, file: !153, line: 561, baseType: !198, offset: 192)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "clear_list", scope: !3919, file: !153, line: 562, baseType: !184, size: 128, offset: 192)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "clear_work", scope: !3919, file: !153, line: 563, baseType: !1927, size: 256, offset: 320)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "ttport", scope: !3908, file: !129, line: 641, baseType: !224, size: 32, offset: 384)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "toggle", scope: !3908, file: !129, line: 643, baseType: !3930, size: 64, offset: 416)
!3930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !1538)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3908, file: !129, line: 645, baseType: !3907, size: 64, offset: 512)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3908, file: !129, line: 646, baseType: !3933, size: 64, offset: 576)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "ep0", scope: !3908, file: !129, line: 647, baseType: !3935, size: 640, offset: 640)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_endpoint", file: !129, line: 67, size: 640, elements: !3936)
!3936 = !{!3937, !3949, !3957, !3965, !3966, !3967, !3970, !3972, !3973, !3974}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3935, file: !129, line: 68, baseType: !3938, size: 72)
!3938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_endpoint_descriptor", file: !108, line: 407, size: 72, elements: !3939)
!3939 = !{!3940, !3941, !3942, !3943, !3944, !3946, !3947, !3948}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3938, file: !108, line: 408, baseType: !1322, size: 8)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3938, file: !108, line: 409, baseType: !1322, size: 8, offset: 8)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "bEndpointAddress", scope: !3938, file: !108, line: 411, baseType: !1322, size: 8, offset: 16)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3938, file: !108, line: 412, baseType: !1322, size: 8, offset: 24)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "wMaxPacketSize", scope: !3938, file: !108, line: 413, baseType: !3945, size: 16, offset: 32)
!3945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !2876, line: 29, baseType: !829)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "bInterval", scope: !3938, file: !108, line: 414, baseType: !1322, size: 8, offset: 48)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "bRefresh", scope: !3938, file: !108, line: 418, baseType: !1322, size: 8, offset: 56)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "bSynchAddress", scope: !3938, file: !108, line: 419, baseType: !1322, size: 8, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "ss_ep_comp", scope: !3935, file: !129, line: 69, baseType: !3950, size: 48, offset: 72)
!3950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_ep_comp_descriptor", file: !108, line: 689, size: 48, elements: !3951)
!3951 = !{!3952, !3953, !3954, !3955, !3956}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3950, file: !108, line: 690, baseType: !1322, size: 8)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3950, file: !108, line: 691, baseType: !1322, size: 8, offset: 8)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxBurst", scope: !3950, file: !108, line: 693, baseType: !1322, size: 8, offset: 16)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !3950, file: !108, line: 694, baseType: !1322, size: 8, offset: 24)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "wBytesPerInterval", scope: !3950, file: !108, line: 695, baseType: !3945, size: 16, offset: 32)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_isoc_ep_comp", scope: !3935, file: !129, line: 70, baseType: !3958, size: 64, offset: 120)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_isoc_ep_comp_descriptor", file: !108, line: 677, size: 64, elements: !3959)
!3959 = !{!3960, !3961, !3962, !3963}
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3958, file: !108, line: 678, baseType: !1322, size: 8)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3958, file: !108, line: 679, baseType: !1322, size: 8, offset: 8)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "wReseved", scope: !3958, file: !108, line: 680, baseType: !3945, size: 16, offset: 16)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "dwBytesPerInterval", scope: !3958, file: !108, line: 681, baseType: !3964, size: 32, offset: 32)
!3964 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !2876, line: 31, baseType: !383)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !3935, file: !129, line: 71, baseType: !184, size: 128, offset: 192)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !3935, file: !129, line: 72, baseType: !164, size: 64, offset: 320)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "ep_dev", scope: !3935, file: !129, line: 73, baseType: !3968, size: 64, offset: 384)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DICompositeType(tag: DW_TAG_structure_type, name: "ep_device", file: !129, line: 48, flags: DIFlagFwdDecl)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !3935, file: !129, line: 75, baseType: !3971, size: 64, offset: 448)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !3935, file: !129, line: 76, baseType: !224, size: 32, offset: 512)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3935, file: !129, line: 77, baseType: !224, size: 32, offset: 544)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "streams", scope: !3935, file: !129, line: 78, baseType: !224, size: 32, offset: 576)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3908, file: !129, line: 649, baseType: !173, size: 5568, offset: 1280)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !3908, file: !129, line: 651, baseType: !3977, size: 144, offset: 6848)
!3977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_device_descriptor", file: !108, line: 289, size: 144, elements: !3978)
!3978 = !{!3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992}
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3977, file: !108, line: 290, baseType: !1322, size: 8)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3977, file: !108, line: 291, baseType: !1322, size: 8, offset: 8)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "bcdUSB", scope: !3977, file: !108, line: 293, baseType: !3945, size: 16, offset: 16)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceClass", scope: !3977, file: !108, line: 294, baseType: !1322, size: 8, offset: 32)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceSubClass", scope: !3977, file: !108, line: 295, baseType: !1322, size: 8, offset: 40)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "bDeviceProtocol", scope: !3977, file: !108, line: 296, baseType: !1322, size: 8, offset: 48)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPacketSize0", scope: !3977, file: !108, line: 297, baseType: !1322, size: 8, offset: 56)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "idVendor", scope: !3977, file: !108, line: 298, baseType: !3945, size: 16, offset: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "idProduct", scope: !3977, file: !108, line: 299, baseType: !3945, size: 16, offset: 80)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "bcdDevice", scope: !3977, file: !108, line: 300, baseType: !3945, size: 16, offset: 96)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "iManufacturer", scope: !3977, file: !108, line: 301, baseType: !1322, size: 8, offset: 112)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "iProduct", scope: !3977, file: !108, line: 302, baseType: !1322, size: 8, offset: 120)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "iSerialNumber", scope: !3977, file: !108, line: 303, baseType: !1322, size: 8, offset: 128)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "bNumConfigurations", scope: !3977, file: !108, line: 304, baseType: !1322, size: 8, offset: 136)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "bos", scope: !3908, file: !129, line: 652, baseType: !3994, size: 64, offset: 7040)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_bos", file: !129, line: 396, size: 384, elements: !3996)
!3996 = !{!3997, !4005, !4013, !4025, !4038, !4047}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3995, file: !129, line: 397, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_bos_descriptor", file: !108, line: 844, size: 40, elements: !4000)
!4000 = !{!4001, !4002, !4003, !4004}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !3999, file: !108, line: 845, baseType: !1322, size: 8)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !3999, file: !108, line: 846, baseType: !1322, size: 8, offset: 8)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !3999, file: !108, line: 848, baseType: !3945, size: 16, offset: 16)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "bNumDeviceCaps", scope: !3999, file: !108, line: 849, baseType: !1322, size: 8, offset: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "ext_cap", scope: !3995, file: !129, line: 400, baseType: !4006, size: 64, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4007, size: 64)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ext_cap_descriptor", file: !108, line: 895, size: 56, elements: !4008)
!4008 = !{!4009, !4010, !4011, !4012}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4007, file: !108, line: 896, baseType: !1322, size: 8)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4007, file: !108, line: 897, baseType: !1322, size: 8, offset: 8)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4007, file: !108, line: 898, baseType: !1322, size: 8, offset: 16)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4007, file: !108, line: 899, baseType: !3964, size: 32, offset: 24)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cap", scope: !3995, file: !129, line: 401, baseType: !4014, size: 64, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_cap_descriptor", file: !108, line: 917, size: 80, elements: !4016)
!4016 = !{!4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4015, file: !108, line: 918, baseType: !1322, size: 8)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4015, file: !108, line: 919, baseType: !1322, size: 8, offset: 8)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4015, file: !108, line: 920, baseType: !1322, size: 8, offset: 16)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4015, file: !108, line: 921, baseType: !1322, size: 8, offset: 24)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "wSpeedSupported", scope: !4015, file: !108, line: 923, baseType: !3945, size: 16, offset: 32)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionalitySupport", scope: !4015, file: !108, line: 928, baseType: !1322, size: 8, offset: 48)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "bU1devExitLat", scope: !4015, file: !108, line: 929, baseType: !1322, size: 8, offset: 56)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "bU2DevExitLat", scope: !4015, file: !108, line: 930, baseType: !3945, size: 16, offset: 64)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "ssp_cap", scope: !3995, file: !129, line: 402, baseType: !4026, size: 64, offset: 192)
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ssp_cap_descriptor", file: !108, line: 955, size: 128, elements: !4028)
!4028 = !{!4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4027, file: !108, line: 956, baseType: !1322, size: 8)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4027, file: !108, line: 957, baseType: !1322, size: 8, offset: 8)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4027, file: !108, line: 958, baseType: !1322, size: 8, offset: 16)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4027, file: !108, line: 959, baseType: !1322, size: 8, offset: 24)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4027, file: !108, line: 960, baseType: !3964, size: 32, offset: 32)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "wFunctionalitySupport", scope: !4027, file: !108, line: 963, baseType: !3945, size: 16, offset: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "wReserved", scope: !4027, file: !108, line: 967, baseType: !3945, size: 16, offset: 80)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "bmSublinkSpeedAttr", scope: !4027, file: !108, line: 968, baseType: !4037, size: 32, offset: 96)
!4037 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3964, size: 32, elements: !1340)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "ss_id", scope: !3995, file: !129, line: 403, baseType: !4039, size: 64, offset: 256)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ss_container_id_descriptor", file: !108, line: 940, size: 160, elements: !4041)
!4041 = !{!4042, !4043, !4044, !4045, !4046}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4040, file: !108, line: 941, baseType: !1322, size: 8)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4040, file: !108, line: 942, baseType: !1322, size: 8, offset: 8)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4040, file: !108, line: 943, baseType: !1322, size: 8, offset: 16)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "bReserved", scope: !4040, file: !108, line: 944, baseType: !1322, size: 8, offset: 24)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "ContainerID", scope: !4040, file: !108, line: 945, baseType: !2677, size: 128, offset: 32)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "ptm_cap", scope: !3995, file: !129, line: 404, baseType: !4048, size: 64, offset: 320)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_ptm_cap_descriptor", file: !108, line: 1080, size: 24, elements: !4050)
!4050 = !{!4051, !4052, !4053}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4049, file: !108, line: 1081, baseType: !1322, size: 8)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4049, file: !108, line: 1082, baseType: !1322, size: 8, offset: 8)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "bDevCapabilityType", scope: !4049, file: !108, line: 1083, baseType: !1322, size: 8, offset: 16)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !3908, file: !129, line: 653, baseType: !4055, size: 64, offset: 7104)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_config", file: !129, line: 374, size: 5440, elements: !4057)
!4057 = !{!4058, !4069, !4070, !4083, !4125, !4134, !4135}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4056, file: !129, line: 375, baseType: !4059, size: 72)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_config_descriptor", file: !108, line: 349, size: 72, elements: !4060)
!4060 = !{!4061, !4062, !4063, !4064, !4065, !4066, !4067, !4068}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4059, file: !108, line: 350, baseType: !1322, size: 8)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4059, file: !108, line: 351, baseType: !1322, size: 8, offset: 8)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "wTotalLength", scope: !4059, file: !108, line: 353, baseType: !3945, size: 16, offset: 16)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "bNumInterfaces", scope: !4059, file: !108, line: 354, baseType: !1322, size: 8, offset: 32)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "bConfigurationValue", scope: !4059, file: !108, line: 355, baseType: !1322, size: 8, offset: 40)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "iConfiguration", scope: !4059, file: !108, line: 356, baseType: !1322, size: 8, offset: 48)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "bmAttributes", scope: !4059, file: !108, line: 357, baseType: !1322, size: 8, offset: 56)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "bMaxPower", scope: !4059, file: !108, line: 358, baseType: !1322, size: 8, offset: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4056, file: !129, line: 377, baseType: !240, size: 64, offset: 128)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4056, file: !129, line: 381, baseType: !4071, size: 1024, offset: 192)
!4071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4072, size: 1024, elements: !1704)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_assoc_descriptor", file: !108, line: 783, size: 64, elements: !4074)
!4074 = !{!4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4073, file: !108, line: 784, baseType: !1322, size: 8)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4073, file: !108, line: 785, baseType: !1322, size: 8, offset: 8)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "bFirstInterface", scope: !4073, file: !108, line: 787, baseType: !1322, size: 8, offset: 16)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceCount", scope: !4073, file: !108, line: 788, baseType: !1322, size: 8, offset: 24)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionClass", scope: !4073, file: !108, line: 789, baseType: !1322, size: 8, offset: 32)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionSubClass", scope: !4073, file: !108, line: 790, baseType: !1322, size: 8, offset: 40)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "bFunctionProtocol", scope: !4073, file: !108, line: 791, baseType: !1322, size: 8, offset: 48)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "iFunction", scope: !4073, file: !108, line: 792, baseType: !1322, size: 8, offset: 56)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "interface", scope: !4056, file: !129, line: 385, baseType: !4084, size: 2048, offset: 1216)
!4084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4085, size: 2048, elements: !2200)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface", file: !129, line: 232, size: 6272, elements: !4087)
!4087 = !{!4088, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121, !4122, !4123, !4124}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4086, file: !129, line: 235, baseType: !4089, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_host_interface", file: !129, line: 82, size: 320, elements: !4091)
!4091 = !{!4092, !4104, !4105, !4106, !4108}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4090, file: !129, line: 83, baseType: !4093, size: 72)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_descriptor", file: !108, line: 389, size: 72, elements: !4094)
!4094 = !{!4095, !4096, !4097, !4098, !4099, !4100, !4101, !4102, !4103}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "bLength", scope: !4093, file: !108, line: 390, baseType: !1322, size: 8)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "bDescriptorType", scope: !4093, file: !108, line: 391, baseType: !1322, size: 8, offset: 8)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceNumber", scope: !4093, file: !108, line: 393, baseType: !1322, size: 8, offset: 16)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "bAlternateSetting", scope: !4093, file: !108, line: 394, baseType: !1322, size: 8, offset: 24)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "bNumEndpoints", scope: !4093, file: !108, line: 395, baseType: !1322, size: 8, offset: 32)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceClass", scope: !4093, file: !108, line: 396, baseType: !1322, size: 8, offset: 40)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceSubClass", scope: !4093, file: !108, line: 397, baseType: !1322, size: 8, offset: 48)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "bInterfaceProtocol", scope: !4093, file: !108, line: 398, baseType: !1322, size: 8, offset: 56)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "iInterface", scope: !4093, file: !108, line: 399, baseType: !1322, size: 8, offset: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4090, file: !129, line: 85, baseType: !224, size: 32, offset: 96)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4090, file: !129, line: 86, baseType: !3971, size: 64, offset: 128)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint", scope: !4090, file: !129, line: 91, baseType: !4107, size: 64, offset: 192)
!4107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !4090, file: !129, line: 93, baseType: !240, size: 64, offset: 256)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "cur_altsetting", scope: !4086, file: !129, line: 237, baseType: !4089, size: 64, offset: 64)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4086, file: !129, line: 239, baseType: !7, size: 32, offset: 128)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "intf_assoc", scope: !4086, file: !129, line: 243, baseType: !4072, size: 64, offset: 192)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4086, file: !129, line: 245, baseType: !224, size: 32, offset: 256)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !4086, file: !129, line: 247, baseType: !128, size: 32, offset: 288)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_files_created", scope: !4086, file: !129, line: 248, baseType: !7, size: 1, offset: 320, flags: DIFlagBitField, extraData: i64 320)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "ep_devs_created", scope: !4086, file: !129, line: 249, baseType: !7, size: 1, offset: 321, flags: DIFlagBitField, extraData: i64 320)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !4086, file: !129, line: 250, baseType: !7, size: 1, offset: 322, flags: DIFlagBitField, extraData: i64 320)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "needs_remote_wakeup", scope: !4086, file: !129, line: 251, baseType: !7, size: 1, offset: 323, flags: DIFlagBitField, extraData: i64 320)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "needs_altsetting0", scope: !4086, file: !129, line: 252, baseType: !7, size: 1, offset: 324, flags: DIFlagBitField, extraData: i64 320)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "needs_binding", scope: !4086, file: !129, line: 253, baseType: !7, size: 1, offset: 325, flags: DIFlagBitField, extraData: i64 320)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "resetting_device", scope: !4086, file: !129, line: 254, baseType: !7, size: 1, offset: 326, flags: DIFlagBitField, extraData: i64 320)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !4086, file: !129, line: 255, baseType: !7, size: 1, offset: 327, flags: DIFlagBitField, extraData: i64 320)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4086, file: !129, line: 257, baseType: !173, size: 5568, offset: 384)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "usb_dev", scope: !4086, file: !129, line: 258, baseType: !172, size: 64, offset: 5952)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "reset_ws", scope: !4086, file: !129, line: 259, baseType: !1927, size: 256, offset: 6016)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "intf_cache", scope: !4056, file: !129, line: 389, baseType: !4126, size: 2048, offset: 3264)
!4126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4127, size: 2048, elements: !2200)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_interface_cache", file: !129, line: 322, size: 64, elements: !4129)
!4129 = !{!4130, !4131, !4132}
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "num_altsetting", scope: !4128, file: !129, line: 323, baseType: !7, size: 32)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4128, file: !129, line: 324, baseType: !3334, size: 32, offset: 32)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "altsetting", scope: !4128, file: !129, line: 328, baseType: !4133, offset: 64)
!4133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4090, elements: !2301)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "extra", scope: !4056, file: !129, line: 391, baseType: !3971, size: 64, offset: 5312)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "extralen", scope: !4056, file: !129, line: 392, baseType: !224, size: 32, offset: 5376)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "actconfig", scope: !3908, file: !129, line: 655, baseType: !4055, size: 64, offset: 7168)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "ep_in", scope: !3908, file: !129, line: 656, baseType: !4138, size: 1024, offset: 7232)
!4138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4107, size: 1024, elements: !1704)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "ep_out", scope: !3908, file: !129, line: 657, baseType: !4138, size: 1024, offset: 8256)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "rawdescriptors", scope: !3908, file: !129, line: 659, baseType: !4141, size: 64, offset: 9280)
!4141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "bus_mA", scope: !3908, file: !129, line: 661, baseType: !282, size: 16, offset: 9344)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "portnum", scope: !3908, file: !129, line: 662, baseType: !1321, size: 8, offset: 9360)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3908, file: !129, line: 663, baseType: !1321, size: 8, offset: 9368)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "devaddr", scope: !3908, file: !129, line: 664, baseType: !1321, size: 8, offset: 9376)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "can_submit", scope: !3908, file: !129, line: 666, baseType: !7, size: 1, offset: 9384, flags: DIFlagBitField, extraData: i64 9384)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "persist_enabled", scope: !3908, file: !129, line: 667, baseType: !7, size: 1, offset: 9385, flags: DIFlagBitField, extraData: i64 9384)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "have_langid", scope: !3908, file: !129, line: 668, baseType: !7, size: 1, offset: 9386, flags: DIFlagBitField, extraData: i64 9384)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "authorized", scope: !3908, file: !129, line: 669, baseType: !7, size: 1, offset: 9387, flags: DIFlagBitField, extraData: i64 9384)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "authenticated", scope: !3908, file: !129, line: 670, baseType: !7, size: 1, offset: 9388, flags: DIFlagBitField, extraData: i64 9384)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "wusb", scope: !3908, file: !129, line: 671, baseType: !7, size: 1, offset: 9389, flags: DIFlagBitField, extraData: i64 9384)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_capable", scope: !3908, file: !129, line: 672, baseType: !7, size: 1, offset: 9390, flags: DIFlagBitField, extraData: i64 9384)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_capable", scope: !3908, file: !129, line: 673, baseType: !7, size: 1, offset: 9391, flags: DIFlagBitField, extraData: i64 9384)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_besl_capable", scope: !3908, file: !129, line: 674, baseType: !7, size: 1, offset: 9392, flags: DIFlagBitField, extraData: i64 9384)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_enabled", scope: !3908, file: !129, line: 675, baseType: !7, size: 1, offset: 9393, flags: DIFlagBitField, extraData: i64 9384)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "usb2_hw_lpm_allowed", scope: !3908, file: !129, line: 676, baseType: !7, size: 1, offset: 9394, flags: DIFlagBitField, extraData: i64 9384)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u1_enabled", scope: !3908, file: !129, line: 677, baseType: !7, size: 1, offset: 9395, flags: DIFlagBitField, extraData: i64 9384)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "usb3_lpm_u2_enabled", scope: !3908, file: !129, line: 678, baseType: !7, size: 1, offset: 9396, flags: DIFlagBitField, extraData: i64 9384)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "string_langid", scope: !3908, file: !129, line: 679, baseType: !224, size: 32, offset: 9408)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3908, file: !129, line: 682, baseType: !240, size: 64, offset: 9472)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !3908, file: !129, line: 683, baseType: !240, size: 64, offset: 9536)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !3908, file: !129, line: 684, baseType: !240, size: 64, offset: 9600)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !3908, file: !129, line: 686, baseType: !184, size: 128, offset: 9664)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "maxchild", scope: !3908, file: !129, line: 688, baseType: !224, size: 32, offset: 9792)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !3908, file: !129, line: 690, baseType: !381, size: 32, offset: 9824)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "urbnum", scope: !3908, file: !129, line: 691, baseType: !716, size: 32, offset: 9856)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "active_duration", scope: !3908, file: !129, line: 693, baseType: !290, size: 64, offset: 9920)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !3908, file: !129, line: 696, baseType: !290, size: 64, offset: 9984)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "do_remote_wakeup", scope: !3908, file: !129, line: 698, baseType: !7, size: 1, offset: 10048, flags: DIFlagBitField, extraData: i64 10048)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "reset_resume", scope: !3908, file: !129, line: 699, baseType: !7, size: 1, offset: 10049, flags: DIFlagBitField, extraData: i64 10048)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "port_is_suspended", scope: !3908, file: !129, line: 700, baseType: !7, size: 1, offset: 10050, flags: DIFlagBitField, extraData: i64 10048)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "wusb_dev", scope: !3908, file: !129, line: 702, baseType: !4173, size: 64, offset: 10112)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DICompositeType(tag: DW_TAG_structure_type, name: "wusb_dev", file: !129, line: 28, flags: DIFlagFwdDecl)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "slot_id", scope: !3908, file: !129, line: 703, baseType: !224, size: 32, offset: 10176)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3908, file: !129, line: 704, baseType: !135, size: 32, offset: 10208)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "l1_params", scope: !3908, file: !129, line: 705, baseType: !4178, size: 64, offset: 10240)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb2_lpm_parameters", file: !129, line: 502, size: 64, elements: !4179)
!4179 = !{!4180, !4181}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "besl", scope: !4178, file: !129, line: 506, baseType: !7, size: 32)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4178, file: !129, line: 512, baseType: !224, size: 32, offset: 32)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "u1_params", scope: !3908, file: !129, line: 706, baseType: !4183, size: 128, offset: 10304)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb3_lpm_parameters", file: !129, line: 522, size: 128, elements: !4184)
!4184 = !{!4185, !4186, !4187, !4188}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "mel", scope: !4183, file: !129, line: 529, baseType: !7, size: 32)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "pel", scope: !4183, file: !129, line: 535, baseType: !7, size: 32, offset: 32)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "sel", scope: !4183, file: !129, line: 545, baseType: !7, size: 32, offset: 64)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4183, file: !129, line: 551, baseType: !224, size: 32, offset: 96)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "u2_params", scope: !3908, file: !129, line: 707, baseType: !4183, size: 128, offset: 10432)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "lpm_disable_count", scope: !3908, file: !129, line: 708, baseType: !7, size: 32, offset: 10560)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "hub_delay", scope: !3908, file: !129, line: 710, baseType: !828, size: 16, offset: 10592)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "use_generic_driver", scope: !3908, file: !129, line: 711, baseType: !7, size: 1, offset: 10608, flags: DIFlagBitField, extraData: i64 10608)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "hs_companion", scope: !169, file: !129, line: 450, baseType: !3933, size: 64, offset: 768)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_allocated", scope: !169, file: !129, line: 452, baseType: !224, size: 32, offset: 832)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_int_reqs", scope: !169, file: !129, line: 459, baseType: !224, size: 32, offset: 864)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_isoc_reqs", scope: !169, file: !129, line: 460, baseType: !224, size: 32, offset: 896)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "resuming_ports", scope: !169, file: !129, line: 462, baseType: !7, size: 32, offset: 928)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !166, file: !153, line: 87, baseType: !3334, size: 32, offset: 960)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !166, file: !153, line: 89, baseType: !180, size: 64, offset: 1024)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !166, file: !153, line: 90, baseType: !224, size: 32, offset: 1088)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "irq_descr", scope: !166, file: !153, line: 94, baseType: !4202, size: 192, offset: 1120)
!4202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 192, elements: !4203)
!4203 = !{!4204}
!4204 = !DISubrange(count: 24)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "rh_timer", scope: !166, file: !153, line: 96, baseType: !3534, size: 320, offset: 1344)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "status_urb", scope: !166, file: !153, line: 97, baseType: !4207, size: 64, offset: 1664)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "urb", file: !129, line: 1561, size: 1472, elements: !4209)
!4209 = !{!4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4248, !4253}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !4208, file: !129, line: 1563, baseType: !3334, size: 32)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "unlinked", scope: !4208, file: !129, line: 1564, baseType: !224, size: 32, offset: 32)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "hcpriv", scope: !4208, file: !129, line: 1565, baseType: !164, size: 64, offset: 64)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "use_count", scope: !4208, file: !129, line: 1566, baseType: !716, size: 32, offset: 128)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "reject", scope: !4208, file: !129, line: 1567, baseType: !716, size: 32, offset: 160)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4208, file: !129, line: 1570, baseType: !184, size: 128, offset: 192)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "anchor_list", scope: !4208, file: !129, line: 1572, baseType: !184, size: 128, offset: 320)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "anchor", scope: !4208, file: !129, line: 1573, baseType: !4218, size: 64, offset: 448)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_anchor", file: !129, line: 1360, size: 320, elements: !4220)
!4220 = !{!4221, !4222, !4223, !4224, !4225}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "urb_list", scope: !4219, file: !129, line: 1361, baseType: !184, size: 128)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !4219, file: !129, line: 1362, baseType: !1450, size: 128, offset: 128)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4219, file: !129, line: 1363, baseType: !198, offset: 256)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_wakeups", scope: !4219, file: !129, line: 1364, baseType: !716, size: 32, offset: 256)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "poisoned", scope: !4219, file: !129, line: 1365, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4208, file: !129, line: 1574, baseType: !3907, size: 64, offset: 512)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !4208, file: !129, line: 1575, baseType: !4107, size: 64, offset: 576)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "pipe", scope: !4208, file: !129, line: 1576, baseType: !7, size: 32, offset: 640)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "stream_id", scope: !4208, file: !129, line: 1577, baseType: !7, size: 32, offset: 672)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4208, file: !129, line: 1578, baseType: !224, size: 32, offset: 704)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_flags", scope: !4208, file: !129, line: 1579, baseType: !7, size: 32, offset: 736)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer", scope: !4208, file: !129, line: 1580, baseType: !164, size: 64, offset: 768)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_dma", scope: !4208, file: !129, line: 1581, baseType: !889, size: 64, offset: 832)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !4208, file: !129, line: 1582, baseType: !4235, size: 64, offset: 896)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = !DICompositeType(tag: DW_TAG_structure_type, name: "scatterlist", file: !129, line: 1582, flags: DIFlagFwdDecl)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "num_mapped_sgs", scope: !4208, file: !129, line: 1583, baseType: !224, size: 32, offset: 960)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "num_sgs", scope: !4208, file: !129, line: 1584, baseType: !224, size: 32, offset: 992)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "transfer_buffer_length", scope: !4208, file: !129, line: 1585, baseType: !381, size: 32, offset: 1024)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4208, file: !129, line: 1586, baseType: !381, size: 32, offset: 1056)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "setup_packet", scope: !4208, file: !129, line: 1587, baseType: !3971, size: 64, offset: 1088)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "setup_dma", scope: !4208, file: !129, line: 1588, baseType: !889, size: 64, offset: 1152)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "start_frame", scope: !4208, file: !129, line: 1589, baseType: !224, size: 32, offset: 1216)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "number_of_packets", scope: !4208, file: !129, line: 1590, baseType: !224, size: 32, offset: 1248)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !4208, file: !129, line: 1591, baseType: !224, size: 32, offset: 1280)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "error_count", scope: !4208, file: !129, line: 1593, baseType: !224, size: 32, offset: 1312)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !4208, file: !129, line: 1594, baseType: !164, size: 64, offset: 1344)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4208, file: !129, line: 1595, baseType: !4249, size: 64, offset: 1408)
!4249 = !DIDerivedType(tag: DW_TAG_typedef, name: "usb_complete_t", file: !129, line: 1376, baseType: !4250)
!4250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4251, size: 64)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{null, !4207}
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "iso_frame_desc", scope: !4208, file: !129, line: 1596, baseType: !4254, offset: 1472)
!4254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4255, elements: !2301)
!4255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "usb_iso_packet_descriptor", file: !129, line: 1351, size: 128, elements: !4256)
!4256 = !{!4257, !4258, !4259, !4260}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4255, file: !129, line: 1352, baseType: !7, size: 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4255, file: !129, line: 1353, baseType: !7, size: 32, offset: 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "actual_length", scope: !4255, file: !129, line: 1354, baseType: !7, size: 32, offset: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4255, file: !129, line: 1355, baseType: !224, size: 32, offset: 96)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_work", scope: !166, file: !153, line: 99, baseType: !1927, size: 256, offset: 1728)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "died_work", scope: !166, file: !153, line: 101, baseType: !1927, size: 256, offset: 1984)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !166, file: !153, line: 106, baseType: !4264, size: 64, offset: 2240)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4266)
!4266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hc_driver", file: !153, line: 249, size: 2880, elements: !4267)
!4267 = !{!4268, !4269, !4270, !4271, !4276, !4277, !4281, !4282, !4286, !4287, !4291, !4292, !4293, !4297, !4301, !4302, !4306, !4310, !4311, !4315, !4319, !4320, !4321, !4325, !4329, !4333, !4337, !4338, !4342, !4346, !4351, !4355, !4359, !4360, !4361, !4362, !4363, !4364, !4368, !4369, !4370, !4374, !4378, !4379, !4380}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !4266, file: !153, line: 250, baseType: !180, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "product_desc", scope: !4266, file: !153, line: 251, baseType: !180, size: 64, offset: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv_size", scope: !4266, file: !153, line: 252, baseType: !287, size: 64, offset: 128)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !4266, file: !153, line: 255, baseType: !4272, size: 64, offset: 192)
!4272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4273, size: 64)
!4273 = !DISubroutineType(types: !4274)
!4274 = !{!4275, !165}
!4275 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !141, line: 17, baseType: !140)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4266, file: !153, line: 257, baseType: !224, size: 32, offset: 256)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !4266, file: !153, line: 271, baseType: !4278, size: 64, offset: 320)
!4278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4279, size: 64)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!224, !165}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4266, file: !153, line: 272, baseType: !4278, size: 64, offset: 384)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "pci_suspend", scope: !4266, file: !153, line: 278, baseType: !4283, size: 64, offset: 448)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!224, !165, !456}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "pci_resume", scope: !4266, file: !153, line: 281, baseType: !4283, size: 64, offset: 512)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !4266, file: !153, line: 284, baseType: !4288, size: 64, offset: 576)
!4288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4289, size: 64)
!4289 = !DISubroutineType(types: !4290)
!4290 = !{null, !165}
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4266, file: !153, line: 287, baseType: !4288, size: 64, offset: 640)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "get_frame_number", scope: !4266, file: !153, line: 290, baseType: !4278, size: 64, offset: 704)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "urb_enqueue", scope: !4266, file: !153, line: 293, baseType: !4294, size: 64, offset: 768)
!4294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4295, size: 64)
!4295 = !DISubroutineType(types: !4296)
!4296 = !{!224, !165, !4207, !712}
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "urb_dequeue", scope: !4266, file: !153, line: 295, baseType: !4298, size: 64, offset: 832)
!4298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4299, size: 64)
!4299 = !DISubroutineType(types: !4300)
!4300 = !{!224, !165, !4207, !224}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "map_urb_for_dma", scope: !4266, file: !153, line: 307, baseType: !4294, size: 64, offset: 896)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "unmap_urb_for_dma", scope: !4266, file: !153, line: 309, baseType: !4303, size: 64, offset: 960)
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{null, !165, !4207}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_disable", scope: !4266, file: !153, line: 312, baseType: !4307, size: 64, offset: 1024)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DISubroutineType(types: !4309)
!4309 = !{null, !165, !4107}
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "endpoint_reset", scope: !4266, file: !153, line: 317, baseType: !4307, size: 64, offset: 1088)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "hub_status_data", scope: !4266, file: !153, line: 321, baseType: !4312, size: 64, offset: 1152)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!224, !165, !240}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "hub_control", scope: !4266, file: !153, line: 322, baseType: !4316, size: 64, offset: 1216)
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!224, !165, !828, !828, !828, !240, !828}
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "bus_suspend", scope: !4266, file: !153, line: 325, baseType: !4278, size: 64, offset: 1280)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "bus_resume", scope: !4266, file: !153, line: 326, baseType: !4278, size: 64, offset: 1344)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "start_port_reset", scope: !4266, file: !153, line: 327, baseType: !4322, size: 64, offset: 1408)
!4322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4323, size: 64)
!4323 = !DISubroutineType(types: !4324)
!4324 = !{!224, !165, !7}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "get_resuming_ports", scope: !4266, file: !153, line: 328, baseType: !4326, size: 64, offset: 1472)
!4326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4327, size: 64)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{!290, !165}
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "relinquish_port", scope: !4266, file: !153, line: 331, baseType: !4330, size: 64, offset: 1536)
!4330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4331, size: 64)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{null, !165, !224}
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "port_handed_over", scope: !4266, file: !153, line: 333, baseType: !4334, size: 64, offset: 1600)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{!224, !165, !224}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tt_buffer_complete", scope: !4266, file: !153, line: 336, baseType: !4307, size: 64, offset: 1664)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dev", scope: !4266, file: !153, line: 341, baseType: !4339, size: 64, offset: 1728)
!4339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4340, size: 64)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{!224, !165, !3907}
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "free_dev", scope: !4266, file: !153, line: 343, baseType: !4343, size: 64, offset: 1792)
!4343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{null, !165, !3907}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_streams", scope: !4266, file: !153, line: 345, baseType: !4347, size: 64, offset: 1856)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!224, !165, !3907, !4350, !7, !7, !712}
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "free_streams", scope: !4266, file: !153, line: 351, baseType: !4352, size: 64, offset: 1920)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!224, !165, !3907, !4350, !7, !712}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "add_endpoint", scope: !4266, file: !153, line: 366, baseType: !4356, size: 64, offset: 1984)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DISubroutineType(types: !4358)
!4358 = !{!224, !165, !3907, !4107}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "drop_endpoint", scope: !4266, file: !153, line: 369, baseType: !4356, size: 64, offset: 2048)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "check_bandwidth", scope: !4266, file: !153, line: 376, baseType: !4339, size: 64, offset: 2112)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "reset_bandwidth", scope: !4266, file: !153, line: 384, baseType: !4343, size: 64, offset: 2176)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "address_device", scope: !4266, file: !153, line: 386, baseType: !4339, size: 64, offset: 2240)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "enable_device", scope: !4266, file: !153, line: 388, baseType: !4339, size: 64, offset: 2304)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "update_hub_device", scope: !4266, file: !153, line: 392, baseType: !4365, size: 64, offset: 2368)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!224, !165, !3907, !3918, !712}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "reset_device", scope: !4266, file: !153, line: 394, baseType: !4339, size: 64, offset: 2432)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "update_device", scope: !4266, file: !153, line: 398, baseType: !4339, size: 64, offset: 2496)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "set_usb2_hw_lpm", scope: !4266, file: !153, line: 399, baseType: !4371, size: 64, offset: 2560)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{!224, !165, !3907, !224}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "enable_usb3_lpm_timeout", scope: !4266, file: !153, line: 402, baseType: !4375, size: 64, offset: 2624)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!224, !165, !3907, !146}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "disable_usb3_lpm_timeout", scope: !4266, file: !153, line: 407, baseType: !4375, size: 64, offset: 2688)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "find_raw_port_number", scope: !4266, file: !153, line: 409, baseType: !4334, size: 64, offset: 2752)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "port_power", scope: !4266, file: !153, line: 411, baseType: !4381, size: 64, offset: 2816)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!224, !165, !224, !456}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "usb_phy", scope: !166, file: !153, line: 112, baseType: !4385, size: 64, offset: 2304)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy", file: !153, line: 112, flags: DIFlagFwdDecl)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "phy_roothub", scope: !166, file: !153, line: 113, baseType: !4388, size: 64, offset: 2368)
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4389, size: 64)
!4389 = !DICompositeType(tag: DW_TAG_structure_type, name: "usb_phy_roothub", file: !153, line: 113, flags: DIFlagFwdDecl)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !166, file: !153, line: 119, baseType: !290, size: 64, offset: 2432)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "dev_policy", scope: !166, file: !153, line: 151, baseType: !152, size: 32, offset: 2496)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "rh_registered", scope: !166, file: !153, line: 154, baseType: !7, size: 1, offset: 2528, flags: DIFlagBitField, extraData: i64 2528)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "rh_pollable", scope: !166, file: !153, line: 155, baseType: !7, size: 1, offset: 2529, flags: DIFlagBitField, extraData: i64 2528)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "msix_enabled", scope: !166, file: !153, line: 156, baseType: !7, size: 1, offset: 2530, flags: DIFlagBitField, extraData: i64 2528)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "msi_enabled", scope: !166, file: !153, line: 157, baseType: !7, size: 1, offset: 2531, flags: DIFlagBitField, extraData: i64 2528)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "skip_phy_initialization", scope: !166, file: !153, line: 163, baseType: !7, size: 1, offset: 2532, flags: DIFlagBitField, extraData: i64 2528)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "uses_new_polling", scope: !166, file: !153, line: 167, baseType: !7, size: 1, offset: 2533, flags: DIFlagBitField, extraData: i64 2528)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "wireless", scope: !166, file: !153, line: 168, baseType: !7, size: 1, offset: 2534, flags: DIFlagBitField, extraData: i64 2528)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "has_tt", scope: !166, file: !153, line: 169, baseType: !7, size: 1, offset: 2535, flags: DIFlagBitField, extraData: i64 2528)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "amd_resume_bug", scope: !166, file: !153, line: 170, baseType: !7, size: 1, offset: 2536, flags: DIFlagBitField, extraData: i64 2528)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "can_do_streams", scope: !166, file: !153, line: 171, baseType: !7, size: 1, offset: 2537, flags: DIFlagBitField, extraData: i64 2528)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "tpl_support", scope: !166, file: !153, line: 172, baseType: !7, size: 1, offset: 2538, flags: DIFlagBitField, extraData: i64 2528)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "cant_recv_wakeups", scope: !166, file: !153, line: 173, baseType: !7, size: 1, offset: 2539, flags: DIFlagBitField, extraData: i64 2528)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !166, file: !153, line: 176, baseType: !7, size: 32, offset: 2560)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !166, file: !153, line: 177, baseType: !164, size: 64, offset: 2624)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_start", scope: !166, file: !153, line: 178, baseType: !4407, size: 64, offset: 2688)
!4407 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !185, line: 158, baseType: !2095)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "rsrc_len", scope: !166, file: !153, line: 179, baseType: !4407, size: 64, offset: 2752)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "power_budget", scope: !166, file: !153, line: 180, baseType: !7, size: 32, offset: 2816)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "high_prio_bh", scope: !166, file: !153, line: 182, baseType: !4411, size: 576, offset: 2880)
!4411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "giveback_urb_bh", file: !153, line: 67, size: 576, elements: !4412)
!4412 = !{!4413, !4414, !4415, !4416, !4437}
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !4411, file: !153, line: 68, baseType: !456, size: 8)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4411, file: !153, line: 69, baseType: !198, offset: 8)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4411, file: !153, line: 70, baseType: !184, size: 128, offset: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "bh", scope: !4411, file: !153, line: 71, baseType: !4417, size: 320, offset: 192)
!4417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tasklet_struct", file: !4418, line: 609, size: 320, elements: !4419)
!4418 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!4419 = !{!4420, !4422, !4423, !4424, !4425, !4436}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4417, file: !4418, line: 611, baseType: !4421, size: 64)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4417, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4417, file: !4418, line: 612, baseType: !290, size: 64, offset: 64)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4417, file: !4418, line: 613, baseType: !716, size: 32, offset: 128)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "use_callback", scope: !4417, file: !4418, line: 614, baseType: !456, size: 8, offset: 160)
!4425 = !DIDerivedType(tag: DW_TAG_member, scope: !4417, file: !4418, line: 615, baseType: !4426, size: 64, offset: 192)
!4426 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4417, file: !4418, line: 615, size: 64, elements: !4427)
!4427 = !{!4428, !4432}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4426, file: !4418, line: 616, baseType: !4429, size: 64)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{null, !290}
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !4426, file: !4418, line: 617, baseType: !4433, size: 64)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{null, !4421}
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4417, file: !4418, line: 619, baseType: !290, size: 64, offset: 256)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "completing_ep", scope: !4411, file: !153, line: 72, baseType: !4107, size: 64, offset: 512)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "low_prio_bh", scope: !166, file: !153, line: 183, baseType: !4411, size: 576, offset: 3456)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "address0_mutex", scope: !166, file: !153, line: 196, baseType: !4440, size: 64, offset: 4032)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth_mutex", scope: !166, file: !153, line: 197, baseType: !4440, size: 64, offset: 4096)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "shared_hcd", scope: !166, file: !153, line: 198, baseType: !165, size: 64, offset: 4160)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "primary_hcd", scope: !166, file: !153, line: 199, baseType: !165, size: 64, offset: 4224)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !166, file: !153, line: 203, baseType: !4445, size: 256, offset: 4288)
!4445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4446, size: 256, elements: !1124)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_pool", file: !153, line: 203, flags: DIFlagFwdDecl)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !166, file: !153, line: 205, baseType: !224, size: 32, offset: 4544)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "localmem_pool", scope: !166, file: !153, line: 220, baseType: !4450, size: 64, offset: 4608)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DICompositeType(tag: DW_TAG_structure_type, name: "gen_pool", file: !153, line: 220, flags: DIFlagFwdDecl)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "hcd_priv", scope: !166, file: !153, line: 231, baseType: !2300, align: 64, offset: 4672)
!4453 = !{!0, !4454, !4459, !4464, !4469, !4479, !4484, !4489, !4492, !4494, !4499, !4502, !4507}
!4454 = !DIGlobalVariableExpression(var: !4455, expr: !DIExpression())
!4455 = distinct !DIGlobalVariable(name: "format_topo", scope: !2, file: !3, line: 53, type: !4456, isLocal: true, isDefinition: true)
!4456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 680, elements: !4457)
!4457 = !{!4458}
!4458 = !DISubrange(count: 85)
!4459 = !DIGlobalVariableExpression(var: !4460, expr: !DIExpression())
!4460 = distinct !DIGlobalVariable(name: "format_bandwidth", scope: !2, file: !3, line: 71, type: !4461, isLocal: true, isDefinition: true)
!4461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 400, elements: !4462)
!4462 = !{!4463}
!4463 = !DISubrange(count: 50)
!4464 = !DIGlobalVariableExpression(var: !4465, expr: !DIExpression())
!4465 = distinct !DIGlobalVariable(name: "format_device1", scope: !2, file: !3, line: 75, type: !4466, isLocal: true, isDefinition: true)
!4466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 568, elements: !4467)
!4467 = !{!4468}
!4468 = !DISubrange(count: 71)
!4469 = !DIGlobalVariableExpression(var: !4470, expr: !DIExpression())
!4470 = distinct !DIGlobalVariable(name: "clas_info", scope: !2, file: !3, line: 104, type: !4471, isLocal: true, isDefinition: true)
!4471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4472, size: 2816, elements: !4477)
!4472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4473)
!4473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class_info", file: !3, line: 99, size: 128, elements: !4474)
!4474 = !{!4475, !4476}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4473, file: !3, line: 100, baseType: !224, size: 32)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "class_name", scope: !4473, file: !3, line: 101, baseType: !240, size: 64, offset: 64)
!4477 = !{!4478}
!4478 = !DISubrange(count: 22)
!4479 = !DIGlobalVariableExpression(var: !4480, expr: !DIExpression())
!4480 = distinct !DIGlobalVariable(name: "format_device2", scope: !2, file: !3, line: 79, type: !4481, isLocal: true, isDefinition: true)
!4481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 336, elements: !4482)
!4482 = !{!4483}
!4483 = !DISubrange(count: 42)
!4484 = !DIGlobalVariableExpression(var: !4485, expr: !DIExpression())
!4485 = distinct !DIGlobalVariable(name: "format_string_manufacturer", scope: !2, file: !3, line: 57, type: !4486, isLocal: true, isDefinition: true)
!4486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 200, elements: !4487)
!4487 = !{!4488}
!4488 = !DISubrange(count: 25)
!4489 = !DIGlobalVariableExpression(var: !4490, expr: !DIExpression())
!4490 = distinct !DIGlobalVariable(name: "format_string_product", scope: !2, file: !3, line: 61, type: !4491, isLocal: true, isDefinition: true)
!4491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 160, elements: !2171)
!4492 = !DIGlobalVariableExpression(var: !4493, expr: !DIExpression())
!4493 = distinct !DIGlobalVariable(name: "format_string_serialnumber", scope: !2, file: !3, line: 66, type: !4486, isLocal: true, isDefinition: true)
!4494 = !DIGlobalVariableExpression(var: !4495, expr: !DIExpression())
!4495 = distinct !DIGlobalVariable(name: "format_config", scope: !2, file: !3, line: 83, type: !4496, isLocal: true, isDefinition: true)
!4496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 360, elements: !4497)
!4497 = !{!4498}
!4498 = !DISubrange(count: 45)
!4499 = !DIGlobalVariableExpression(var: !4500, expr: !DIExpression())
!4500 = distinct !DIGlobalVariable(name: "format_iad", scope: !2, file: !3, line: 87, type: !4501, isLocal: true, isDefinition: true)
!4501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 512, elements: !245)
!4502 = !DIGlobalVariableExpression(var: !4503, expr: !DIExpression())
!4503 = distinct !DIGlobalVariable(name: "format_iface", scope: !2, file: !3, line: 91, type: !4504, isLocal: true, isDefinition: true)
!4504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 600, elements: !4505)
!4505 = !{!4506}
!4506 = !DISubrange(count: 75)
!4507 = !DIGlobalVariableExpression(var: !4508, expr: !DIExpression())
!4508 = distinct !DIGlobalVariable(name: "format_endpt", scope: !2, file: !3, line: 95, type: !4509, isLocal: true, isDefinition: true)
!4509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 408, elements: !4510)
!4510 = !{!4511}
!4511 = !DISubrange(count: 51)
!4512 = !{i32 7, !"Dwarf Version", i32 4}
!4513 = !{i32 2, !"Debug Info Version", i32 3}
!4514 = !{i32 1, !"wchar_size", i32 2}
!4515 = !{i32 1, !"Code Model", i32 2}
!4516 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!4517 = distinct !DISubprogram(name: "usb_device_read", scope: !3, file: !3, line: 570, type: !2844, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4518 = !DILocalVariable(name: "file", arg: 1, scope: !4517, file: !3, line: 570, type: !318)
!4519 = !DILocation(line: 570, column: 45, scope: !4517)
!4520 = !DILocalVariable(name: "buf", arg: 2, scope: !4517, file: !3, line: 570, type: !240)
!4521 = !DILocation(line: 570, column: 64, scope: !4517)
!4522 = !DILocalVariable(name: "nbytes", arg: 3, scope: !4517, file: !3, line: 571, type: !287)
!4523 = !DILocation(line: 571, column: 18, scope: !4517)
!4524 = !DILocalVariable(name: "ppos", arg: 4, scope: !4517, file: !3, line: 571, type: !2846)
!4525 = !DILocation(line: 571, column: 34, scope: !4517)
!4526 = !DILocalVariable(name: "bus", scope: !4517, file: !3, line: 573, type: !3933)
!4527 = !DILocation(line: 573, column: 18, scope: !4517)
!4528 = !DILocalVariable(name: "ret", scope: !4517, file: !3, line: 574, type: !271)
!4529 = !DILocation(line: 574, column: 10, scope: !4517)
!4530 = !DILocalVariable(name: "total_written", scope: !4517, file: !3, line: 574, type: !271)
!4531 = !DILocation(line: 574, column: 15, scope: !4517)
!4532 = !DILocalVariable(name: "skip_bytes", scope: !4517, file: !3, line: 575, type: !497)
!4533 = !DILocation(line: 575, column: 9, scope: !4517)
!4534 = !DILocation(line: 575, column: 23, scope: !4517)
!4535 = !DILocation(line: 575, column: 22, scope: !4517)
!4536 = !DILocalVariable(name: "id", scope: !4517, file: !3, line: 576, type: !224)
!4537 = !DILocation(line: 576, column: 6, scope: !4517)
!4538 = !DILocation(line: 578, column: 7, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 578, column: 6)
!4540 = !DILocation(line: 578, column: 6, scope: !4539)
!4541 = !DILocation(line: 578, column: 12, scope: !4539)
!4542 = !DILocation(line: 578, column: 6, scope: !4517)
!4543 = !DILocation(line: 579, column: 3, scope: !4539)
!4544 = !DILocation(line: 580, column: 6, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 580, column: 6)
!4546 = !DILocation(line: 580, column: 13, scope: !4545)
!4547 = !DILocation(line: 580, column: 6, scope: !4517)
!4548 = !DILocation(line: 581, column: 3, scope: !4545)
!4549 = !DILocation(line: 583, column: 2, scope: !4517)
!4550 = !DILocation(line: 585, column: 2, scope: !4551)
!4551 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 585, column: 2)
!4552 = !DILocation(line: 585, column: 2, scope: !4553)
!4553 = distinct !DILexicalBlock(scope: !4551, file: !3, line: 585, column: 2)
!4554 = !DILocation(line: 587, column: 19, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 587, column: 7)
!4556 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 585, column: 44)
!4557 = !DILocation(line: 587, column: 8, scope: !4555)
!4558 = !DILocation(line: 587, column: 25, scope: !4555)
!4559 = !DILocation(line: 587, column: 7, scope: !4556)
!4560 = !DILocation(line: 588, column: 4, scope: !4555)
!4561 = !DILocation(line: 589, column: 3, scope: !4556)
!4562 = !DILocation(line: 590, column: 53, scope: !4556)
!4563 = !DILocation(line: 591, column: 11, scope: !4556)
!4564 = !DILocation(line: 591, column: 16, scope: !4556)
!4565 = !DILocation(line: 591, column: 26, scope: !4556)
!4566 = !DILocation(line: 590, column: 9, scope: !4556)
!4567 = !DILocation(line: 590, column: 7, scope: !4556)
!4568 = !DILocation(line: 592, column: 3, scope: !4556)
!4569 = !DILocation(line: 593, column: 7, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4556, file: !3, line: 593, column: 7)
!4571 = !DILocation(line: 593, column: 11, scope: !4570)
!4572 = !DILocation(line: 593, column: 7, scope: !4556)
!4573 = !DILocation(line: 594, column: 4, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4570, file: !3, line: 593, column: 16)
!4575 = !DILocation(line: 595, column: 11, scope: !4574)
!4576 = !DILocation(line: 595, column: 4, scope: !4574)
!4577 = !DILocation(line: 597, column: 20, scope: !4556)
!4578 = !DILocation(line: 597, column: 17, scope: !4556)
!4579 = !DILocation(line: 598, column: 2, scope: !4556)
!4580 = distinct !{!4580, !4550, !4581}
!4581 = !DILocation(line: 598, column: 2, scope: !4551)
!4582 = !DILocation(line: 599, column: 2, scope: !4517)
!4583 = !DILocation(line: 600, column: 9, scope: !4517)
!4584 = !DILocation(line: 600, column: 2, scope: !4517)
!4585 = !DILocation(line: 601, column: 1, scope: !4517)
!4586 = distinct !DISubprogram(name: "bus_to_hcd", scope: !153, file: !153, line: 241, type: !4587, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!165, !3933}
!4589 = !DILocalVariable(name: "bus", arg: 1, scope: !4586, file: !153, line: 241, type: !3933)
!4590 = !DILocation(line: 241, column: 58, scope: !4586)
!4591 = !DILocalVariable(name: "__mptr", scope: !4592, file: !153, line: 243, type: !164)
!4592 = distinct !DILexicalBlock(scope: !4586, file: !153, line: 243, column: 9)
!4593 = !DILocation(line: 243, column: 9, scope: !4592)
!4594 = !DILocation(line: 243, column: 9, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4592, file: !153, line: 243, column: 9)
!4596 = !DILocation(line: 243, column: 2, scope: !4586)
!4597 = distinct !DISubprogram(name: "device_lock", scope: !73, file: !73, line: 729, type: !3366, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4598 = !DILocalVariable(name: "dev", arg: 1, scope: !4597, file: !73, line: 729, type: !172)
!4599 = !DILocation(line: 729, column: 47, scope: !4597)
!4600 = !DILocation(line: 731, column: 14, scope: !4597)
!4601 = !DILocation(line: 731, column: 19, scope: !4597)
!4602 = !DILocation(line: 731, column: 2, scope: !4597)
!4603 = !DILocation(line: 732, column: 1, scope: !4597)
!4604 = distinct !DISubprogram(name: "usb_device_dump", scope: !3, file: !3, line: 450, type: !4605, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!271, !4141, !4607, !2846, !2846, !3907, !3933, !224, !224, !224}
!4607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!4608 = !DILocalVariable(name: "addr", arg: 1, scope: !4609, file: !4610, line: 138, type: !2097)
!4609 = distinct !DISubprogram(name: "check_copy_size", scope: !4610, file: !4610, line: 138, type: !4611, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4610 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!456, !2097, !287, !456}
!4613 = !DILocation(line: 138, column: 29, scope: !4609, inlinedAt: !4614)
!4614 = distinct !DILocation(line: 199, column: 6, scope: !4615, inlinedAt: !4620)
!4615 = distinct !DILexicalBlock(scope: !4617, file: !4616, line: 199, column: 6)
!4616 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!4617 = distinct !DISubprogram(name: "copy_to_user", scope: !4616, file: !4616, line: 197, type: !4618, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4618 = !DISubroutineType(types: !4619)
!4619 = !{!290, !164, !2097, !290}
!4620 = distinct !DILocation(line: 542, column: 7, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 542, column: 7)
!4622 = distinct !DILexicalBlock(scope: !4623, file: !3, line: 538, column: 28)
!4623 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 538, column: 6)
!4624 = !DILocalVariable(name: "bytes", arg: 2, scope: !4609, file: !4610, line: 138, type: !287)
!4625 = !DILocation(line: 138, column: 42, scope: !4609, inlinedAt: !4614)
!4626 = !DILocalVariable(name: "is_source", arg: 3, scope: !4609, file: !4610, line: 138, type: !456)
!4627 = !DILocation(line: 138, column: 54, scope: !4609, inlinedAt: !4614)
!4628 = !DILocalVariable(name: "sz", scope: !4609, file: !4610, line: 140, type: !224)
!4629 = !DILocation(line: 140, column: 6, scope: !4609, inlinedAt: !4614)
!4630 = !DILocalVariable(name: "__ret_warn_on", scope: !4631, file: !4610, line: 150, type: !224)
!4631 = distinct !DILexicalBlock(scope: !4632, file: !4610, line: 150, column: 6)
!4632 = distinct !DILexicalBlock(scope: !4609, file: !4610, line: 150, column: 6)
!4633 = !DILocation(line: 150, column: 6, scope: !4631, inlinedAt: !4614)
!4634 = !DILocalVariable(name: "to", arg: 1, scope: !4617, file: !4616, line: 197, type: !164)
!4635 = !DILocation(line: 197, column: 27, scope: !4617, inlinedAt: !4620)
!4636 = !DILocalVariable(name: "from", arg: 2, scope: !4617, file: !4616, line: 197, type: !2097)
!4637 = !DILocation(line: 197, column: 43, scope: !4617, inlinedAt: !4620)
!4638 = !DILocalVariable(name: "n", arg: 3, scope: !4617, file: !4616, line: 197, type: !290)
!4639 = !DILocation(line: 197, column: 63, scope: !4617, inlinedAt: !4620)
!4640 = !DILocalVariable(name: "buffer", arg: 1, scope: !4604, file: !3, line: 450, type: !4141)
!4641 = !DILocation(line: 450, column: 46, scope: !4604)
!4642 = !DILocalVariable(name: "nbytes", arg: 2, scope: !4604, file: !3, line: 450, type: !4607)
!4643 = !DILocation(line: 450, column: 62, scope: !4604)
!4644 = !DILocalVariable(name: "skip_bytes", arg: 3, scope: !4604, file: !3, line: 451, type: !2846)
!4645 = !DILocation(line: 451, column: 19, scope: !4604)
!4646 = !DILocalVariable(name: "file_offset", arg: 4, scope: !4604, file: !3, line: 451, type: !2846)
!4647 = !DILocation(line: 451, column: 39, scope: !4604)
!4648 = !DILocalVariable(name: "usbdev", arg: 5, scope: !4604, file: !3, line: 452, type: !3907)
!4649 = !DILocation(line: 452, column: 30, scope: !4604)
!4650 = !DILocalVariable(name: "bus", arg: 6, scope: !4604, file: !3, line: 452, type: !3933)
!4651 = !DILocation(line: 452, column: 54, scope: !4604)
!4652 = !DILocalVariable(name: "level", arg: 7, scope: !4604, file: !3, line: 453, type: !224)
!4653 = !DILocation(line: 453, column: 15, scope: !4604)
!4654 = !DILocalVariable(name: "index", arg: 8, scope: !4604, file: !3, line: 453, type: !224)
!4655 = !DILocation(line: 453, column: 26, scope: !4604)
!4656 = !DILocalVariable(name: "count", arg: 9, scope: !4604, file: !3, line: 453, type: !224)
!4657 = !DILocation(line: 453, column: 37, scope: !4604)
!4658 = !DILocalVariable(name: "chix", scope: !4604, file: !3, line: 455, type: !224)
!4659 = !DILocation(line: 455, column: 6, scope: !4604)
!4660 = !DILocalVariable(name: "ret", scope: !4604, file: !3, line: 456, type: !224)
!4661 = !DILocation(line: 456, column: 6, scope: !4604)
!4662 = !DILocalVariable(name: "cnt", scope: !4604, file: !3, line: 456, type: !224)
!4663 = !DILocation(line: 456, column: 11, scope: !4604)
!4664 = !DILocalVariable(name: "parent_devnum", scope: !4604, file: !3, line: 457, type: !224)
!4665 = !DILocation(line: 457, column: 6, scope: !4604)
!4666 = !DILocalVariable(name: "pages_start", scope: !4604, file: !3, line: 458, type: !240)
!4667 = !DILocation(line: 458, column: 8, scope: !4604)
!4668 = !DILocalVariable(name: "data_end", scope: !4604, file: !3, line: 458, type: !240)
!4669 = !DILocation(line: 458, column: 22, scope: !4604)
!4670 = !DILocalVariable(name: "speed", scope: !4604, file: !3, line: 458, type: !240)
!4671 = !DILocation(line: 458, column: 33, scope: !4604)
!4672 = !DILocalVariable(name: "length", scope: !4604, file: !3, line: 459, type: !7)
!4673 = !DILocation(line: 459, column: 15, scope: !4604)
!4674 = !DILocalVariable(name: "total_written", scope: !4604, file: !3, line: 460, type: !271)
!4675 = !DILocation(line: 460, column: 10, scope: !4604)
!4676 = !DILocalVariable(name: "childdev", scope: !4604, file: !3, line: 461, type: !3907)
!4677 = !DILocation(line: 461, column: 21, scope: !4604)
!4678 = !DILocation(line: 464, column: 7, scope: !4679)
!4679 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 464, column: 6)
!4680 = !DILocation(line: 464, column: 6, scope: !4679)
!4681 = !DILocation(line: 464, column: 14, scope: !4679)
!4682 = !DILocation(line: 464, column: 6, scope: !4604)
!4683 = !DILocation(line: 465, column: 3, scope: !4679)
!4684 = !DILocation(line: 467, column: 6, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 467, column: 6)
!4686 = !DILocation(line: 467, column: 12, scope: !4685)
!4687 = !DILocation(line: 467, column: 6, scope: !4604)
!4688 = !DILocation(line: 468, column: 3, scope: !4685)
!4689 = !DILocation(line: 471, column: 24, scope: !4604)
!4690 = !DILocation(line: 471, column: 16, scope: !4604)
!4691 = !DILocation(line: 471, column: 14, scope: !4604)
!4692 = !DILocation(line: 472, column: 7, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 472, column: 6)
!4694 = !DILocation(line: 472, column: 6, scope: !4604)
!4695 = !DILocation(line: 473, column: 3, scope: !4693)
!4696 = !DILocation(line: 475, column: 6, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 475, column: 6)
!4698 = !DILocation(line: 475, column: 14, scope: !4697)
!4699 = !DILocation(line: 475, column: 21, scope: !4697)
!4700 = !DILocation(line: 475, column: 24, scope: !4697)
!4701 = !DILocation(line: 475, column: 32, scope: !4697)
!4702 = !DILocation(line: 475, column: 40, scope: !4697)
!4703 = !DILocation(line: 475, column: 47, scope: !4697)
!4704 = !DILocation(line: 475, column: 6, scope: !4604)
!4705 = !DILocation(line: 476, column: 19, scope: !4697)
!4706 = !DILocation(line: 476, column: 27, scope: !4697)
!4707 = !DILocation(line: 476, column: 35, scope: !4697)
!4708 = !DILocation(line: 476, column: 17, scope: !4697)
!4709 = !DILocation(line: 476, column: 3, scope: !4697)
!4710 = !DILocation(line: 481, column: 10, scope: !4604)
!4711 = !DILocation(line: 481, column: 18, scope: !4604)
!4712 = !DILocation(line: 481, column: 2, scope: !4604)
!4713 = !DILocation(line: 483, column: 9, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 481, column: 25)
!4715 = !DILocation(line: 483, column: 18, scope: !4714)
!4716 = !DILocation(line: 486, column: 9, scope: !4714)
!4717 = !DILocation(line: 486, column: 17, scope: !4714)
!4718 = !DILocation(line: 489, column: 9, scope: !4714)
!4719 = !DILocation(line: 489, column: 18, scope: !4714)
!4720 = !DILocation(line: 491, column: 9, scope: !4714)
!4721 = !DILocation(line: 491, column: 19, scope: !4714)
!4722 = !DILocation(line: 493, column: 9, scope: !4714)
!4723 = !DILocation(line: 493, column: 20, scope: !4714)
!4724 = !DILocation(line: 495, column: 9, scope: !4714)
!4725 = !DILocation(line: 496, column: 2, scope: !4714)
!4726 = !DILocation(line: 497, column: 13, scope: !4604)
!4727 = !DILocation(line: 497, column: 35, scope: !4604)
!4728 = !DILocation(line: 498, column: 4, scope: !4604)
!4729 = !DILocation(line: 498, column: 9, scope: !4604)
!4730 = !DILocation(line: 498, column: 17, scope: !4604)
!4731 = !DILocation(line: 498, column: 24, scope: !4604)
!4732 = !DILocation(line: 499, column: 4, scope: !4604)
!4733 = !DILocation(line: 499, column: 11, scope: !4604)
!4734 = !DILocation(line: 499, column: 18, scope: !4604)
!4735 = !DILocation(line: 499, column: 26, scope: !4604)
!4736 = !DILocation(line: 500, column: 4, scope: !4604)
!4737 = !DILocation(line: 500, column: 11, scope: !4604)
!4738 = !DILocation(line: 500, column: 19, scope: !4604)
!4739 = !DILocation(line: 497, column: 27, scope: !4604)
!4740 = !DILocation(line: 497, column: 25, scope: !4604)
!4741 = !DILocation(line: 497, column: 11, scope: !4604)
!4742 = !DILocation(line: 508, column: 6, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 508, column: 6)
!4744 = !DILocation(line: 508, column: 12, scope: !4743)
!4745 = !DILocation(line: 508, column: 6, scope: !4604)
!4746 = !DILocalVariable(name: "max", scope: !4747, file: !3, line: 509, type: !224)
!4747 = distinct !DILexicalBlock(scope: !4743, file: !3, line: 508, column: 18)
!4748 = !DILocation(line: 509, column: 7, scope: !4747)
!4749 = !DILocation(line: 512, column: 7, scope: !4750)
!4750 = distinct !DILexicalBlock(scope: !4747, file: !3, line: 512, column: 7)
!4751 = !DILocation(line: 512, column: 15, scope: !4750)
!4752 = !DILocation(line: 512, column: 21, scope: !4750)
!4753 = !DILocation(line: 512, column: 39, scope: !4750)
!4754 = !DILocation(line: 513, column: 7, scope: !4750)
!4755 = !DILocation(line: 513, column: 15, scope: !4750)
!4756 = !DILocation(line: 513, column: 21, scope: !4750)
!4757 = !DILocation(line: 512, column: 7, scope: !4747)
!4758 = !DILocation(line: 514, column: 8, scope: !4750)
!4759 = !DILocation(line: 514, column: 4, scope: !4750)
!4760 = !DILocation(line: 516, column: 8, scope: !4750)
!4761 = !DILocation(line: 522, column: 23, scope: !4747)
!4762 = !DILocation(line: 523, column: 5, scope: !4747)
!4763 = !DILocation(line: 523, column: 10, scope: !4747)
!4764 = !DILocation(line: 523, column: 31, scope: !4747)
!4765 = !DILocation(line: 524, column: 12, scope: !4747)
!4766 = !DILocation(line: 524, column: 17, scope: !4747)
!4767 = !DILocation(line: 524, column: 10, scope: !4747)
!4768 = !DILocation(line: 524, column: 39, scope: !4747)
!4769 = !DILocation(line: 524, column: 43, scope: !4747)
!4770 = !DILocation(line: 524, column: 37, scope: !4747)
!4771 = !DILocation(line: 525, column: 8, scope: !4747)
!4772 = !DILocation(line: 525, column: 6, scope: !4747)
!4773 = !DILocation(line: 526, column: 5, scope: !4747)
!4774 = !DILocation(line: 526, column: 10, scope: !4747)
!4775 = !DILocation(line: 527, column: 5, scope: !4747)
!4776 = !DILocation(line: 527, column: 10, scope: !4747)
!4777 = !DILocation(line: 522, column: 15, scope: !4747)
!4778 = !DILocation(line: 522, column: 12, scope: !4747)
!4779 = !DILocation(line: 529, column: 2, scope: !4747)
!4780 = !DILocation(line: 530, column: 27, scope: !4604)
!4781 = !DILocation(line: 530, column: 37, scope: !4604)
!4782 = !DILocation(line: 530, column: 49, scope: !4604)
!4783 = !DILocation(line: 530, column: 67, scope: !4604)
!4784 = !DILocation(line: 531, column: 6, scope: !4604)
!4785 = !DILocation(line: 530, column: 13, scope: !4604)
!4786 = !DILocation(line: 530, column: 11, scope: !4604)
!4787 = !DILocation(line: 533, column: 6, scope: !4788)
!4788 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 533, column: 6)
!4789 = !DILocation(line: 533, column: 18, scope: !4788)
!4790 = !DILocation(line: 533, column: 30, scope: !4788)
!4791 = !DILocation(line: 533, column: 48, scope: !4788)
!4792 = !DILocation(line: 533, column: 15, scope: !4788)
!4793 = !DILocation(line: 533, column: 6, scope: !4604)
!4794 = !DILocation(line: 534, column: 23, scope: !4788)
!4795 = !DILocation(line: 534, column: 15, scope: !4788)
!4796 = !DILocation(line: 534, column: 12, scope: !4788)
!4797 = !DILocation(line: 534, column: 3, scope: !4788)
!4798 = !DILocation(line: 536, column: 11, scope: !4604)
!4799 = !DILocation(line: 536, column: 22, scope: !4604)
!4800 = !DILocation(line: 536, column: 20, scope: !4604)
!4801 = !DILocation(line: 536, column: 9, scope: !4604)
!4802 = !DILocation(line: 538, column: 6, scope: !4623)
!4803 = !DILocation(line: 538, column: 16, scope: !4623)
!4804 = !DILocation(line: 538, column: 15, scope: !4623)
!4805 = !DILocation(line: 538, column: 13, scope: !4623)
!4806 = !DILocation(line: 538, column: 6, scope: !4604)
!4807 = !DILocation(line: 539, column: 14, scope: !4622)
!4808 = !DILocation(line: 539, column: 13, scope: !4622)
!4809 = !DILocation(line: 539, column: 10, scope: !4622)
!4810 = !DILocation(line: 540, column: 7, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4622, file: !3, line: 540, column: 7)
!4812 = !DILocation(line: 540, column: 17, scope: !4811)
!4813 = !DILocation(line: 540, column: 16, scope: !4811)
!4814 = !DILocation(line: 540, column: 14, scope: !4811)
!4815 = !DILocation(line: 540, column: 7, scope: !4622)
!4816 = !DILocation(line: 541, column: 14, scope: !4811)
!4817 = !DILocation(line: 541, column: 13, scope: !4811)
!4818 = !DILocation(line: 541, column: 11, scope: !4811)
!4819 = !DILocation(line: 541, column: 4, scope: !4811)
!4820 = !DILocation(line: 542, column: 21, scope: !4621)
!4821 = !DILocation(line: 542, column: 20, scope: !4621)
!4822 = !DILocation(line: 542, column: 29, scope: !4621)
!4823 = !DILocation(line: 542, column: 44, scope: !4621)
!4824 = !DILocation(line: 542, column: 43, scope: !4621)
!4825 = !DILocation(line: 542, column: 41, scope: !4621)
!4826 = !DILocation(line: 542, column: 56, scope: !4621)
!4827 = !DILocation(line: 199, column: 6, scope: !4615, inlinedAt: !4620)
!4828 = !DILocation(line: 141, column: 6, scope: !4829, inlinedAt: !4614)
!4829 = distinct !DILexicalBlock(scope: !4609, file: !4610, line: 141, column: 6)
!4830 = !DILocation(line: 0, scope: !4829, inlinedAt: !4614)
!4831 = !DILocation(line: 141, column: 6, scope: !4609, inlinedAt: !4614)
!4832 = !DILocation(line: 142, column: 29, scope: !4833, inlinedAt: !4614)
!4833 = distinct !DILexicalBlock(scope: !4834, file: !4610, line: 142, column: 7)
!4834 = distinct !DILexicalBlock(scope: !4829, file: !4610, line: 141, column: 39)
!4835 = !DILocation(line: 142, column: 8, scope: !4833, inlinedAt: !4614)
!4836 = !DILocation(line: 142, column: 7, scope: !4834, inlinedAt: !4614)
!4837 = !DILocation(line: 143, column: 18, scope: !4833, inlinedAt: !4614)
!4838 = !DILocation(line: 143, column: 22, scope: !4833, inlinedAt: !4614)
!4839 = !DILocation(line: 143, column: 4, scope: !4833, inlinedAt: !4614)
!4840 = !DILocation(line: 144, column: 12, scope: !4841, inlinedAt: !4614)
!4841 = distinct !DILexicalBlock(scope: !4833, file: !4610, line: 144, column: 12)
!4842 = !DILocation(line: 144, column: 12, scope: !4833, inlinedAt: !4614)
!4843 = !DILocation(line: 145, column: 4, scope: !4841, inlinedAt: !4614)
!4844 = !DILocation(line: 147, column: 4, scope: !4841, inlinedAt: !4614)
!4845 = !DILocation(line: 148, column: 3, scope: !4834, inlinedAt: !4614)
!4846 = !DILocation(line: 150, column: 6, scope: !4847, inlinedAt: !4614)
!4847 = distinct !DILexicalBlock(scope: !4631, file: !4610, line: 150, column: 6)
!4848 = !DILocation(line: 150, column: 6, scope: !4849, inlinedAt: !4614)
!4849 = distinct !DILexicalBlock(scope: !4850, file: !4610, line: 150, column: 6)
!4850 = distinct !DILexicalBlock(scope: !4847, file: !4610, line: 150, column: 6)
!4851 = !{i32 -2145525785, i32 -2145525756, i32 -2145525710, i32 -2145525652, i32 -2145525598, i32 -2145525544, i32 -2145525489, i32 -2145525458}
!4852 = !DILocation(line: 150, column: 6, scope: !4853, inlinedAt: !4614)
!4853 = distinct !DILexicalBlock(scope: !4850, file: !4610, line: 150, column: 6)
!4854 = !{i32 -2145525038, i32 -2145525031, i32 -2145524979, i32 -2145524948, i32 -2145524918}
!4855 = !DILocation(line: 150, column: 6, scope: !4850, inlinedAt: !4614)
!4856 = !DILocation(line: 150, column: 6, scope: !4632, inlinedAt: !4614)
!4857 = !DILocation(line: 150, column: 6, scope: !4609, inlinedAt: !4614)
!4858 = !DILocation(line: 151, column: 3, scope: !4632, inlinedAt: !4614)
!4859 = !DILocation(line: 152, column: 20, scope: !4609, inlinedAt: !4614)
!4860 = !DILocation(line: 152, column: 26, scope: !4609, inlinedAt: !4614)
!4861 = !DILocation(line: 152, column: 33, scope: !4609, inlinedAt: !4614)
!4862 = !DILocation(line: 152, column: 2, scope: !4609, inlinedAt: !4614)
!4863 = !DILocation(line: 153, column: 2, scope: !4609, inlinedAt: !4614)
!4864 = !DILocation(line: 154, column: 1, scope: !4609, inlinedAt: !4614)
!4865 = !DILocation(line: 199, column: 6, scope: !4617, inlinedAt: !4620)
!4866 = !DILocation(line: 200, column: 21, scope: !4615, inlinedAt: !4620)
!4867 = !DILocation(line: 200, column: 25, scope: !4615, inlinedAt: !4620)
!4868 = !DILocation(line: 200, column: 31, scope: !4615, inlinedAt: !4620)
!4869 = !DILocation(line: 200, column: 7, scope: !4615, inlinedAt: !4620)
!4870 = !DILocation(line: 200, column: 5, scope: !4615, inlinedAt: !4620)
!4871 = !DILocation(line: 200, column: 3, scope: !4615, inlinedAt: !4620)
!4872 = !DILocation(line: 201, column: 9, scope: !4617, inlinedAt: !4620)
!4873 = !DILocation(line: 542, column: 7, scope: !4621)
!4874 = !DILocation(line: 542, column: 7, scope: !4622)
!4875 = !DILocation(line: 543, column: 30, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4621, file: !3, line: 542, column: 65)
!4877 = !DILocation(line: 543, column: 15, scope: !4876)
!4878 = !DILocation(line: 543, column: 4, scope: !4876)
!4879 = !DILocation(line: 544, column: 4, scope: !4876)
!4880 = !DILocation(line: 546, column: 14, scope: !4622)
!4881 = !DILocation(line: 546, column: 4, scope: !4622)
!4882 = !DILocation(line: 546, column: 11, scope: !4622)
!4883 = !DILocation(line: 547, column: 19, scope: !4622)
!4884 = !DILocation(line: 547, column: 4, scope: !4622)
!4885 = !DILocation(line: 547, column: 16, scope: !4622)
!4886 = !DILocation(line: 548, column: 20, scope: !4622)
!4887 = !DILocation(line: 548, column: 17, scope: !4622)
!4888 = !DILocation(line: 549, column: 14, scope: !4622)
!4889 = !DILocation(line: 549, column: 4, scope: !4622)
!4890 = !DILocation(line: 549, column: 11, scope: !4622)
!4891 = !DILocation(line: 550, column: 4, scope: !4622)
!4892 = !DILocation(line: 550, column: 15, scope: !4622)
!4893 = !DILocation(line: 551, column: 2, scope: !4622)
!4894 = !DILocation(line: 552, column: 18, scope: !4623)
!4895 = !DILocation(line: 552, column: 4, scope: !4623)
!4896 = !DILocation(line: 552, column: 15, scope: !4623)
!4897 = !DILocation(line: 554, column: 28, scope: !4604)
!4898 = !DILocation(line: 554, column: 13, scope: !4604)
!4899 = !DILocation(line: 554, column: 2, scope: !4604)
!4900 = !DILocation(line: 557, column: 2, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4604, file: !3, line: 557, column: 2)
!4902 = !DILocation(line: 557, column: 2, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4901, file: !3, line: 557, column: 2)
!4904 = !DILocation(line: 557, column: 2, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4903, file: !3, line: 557, column: 2)
!4906 = !DILocation(line: 558, column: 3, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 557, column: 49)
!4908 = !DILocation(line: 559, column: 25, scope: !4907)
!4909 = !DILocation(line: 559, column: 33, scope: !4907)
!4910 = !DILocation(line: 559, column: 41, scope: !4907)
!4911 = !DILocation(line: 560, column: 11, scope: !4907)
!4912 = !DILocation(line: 560, column: 24, scope: !4907)
!4913 = !DILocation(line: 560, column: 34, scope: !4907)
!4914 = !DILocation(line: 561, column: 11, scope: !4907)
!4915 = !DILocation(line: 561, column: 17, scope: !4907)
!4916 = !DILocation(line: 561, column: 22, scope: !4907)
!4917 = !DILocation(line: 561, column: 27, scope: !4907)
!4918 = !DILocation(line: 561, column: 32, scope: !4907)
!4919 = !DILocation(line: 559, column: 9, scope: !4907)
!4920 = !DILocation(line: 559, column: 7, scope: !4907)
!4921 = !DILocation(line: 562, column: 3, scope: !4907)
!4922 = !DILocation(line: 563, column: 7, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 563, column: 7)
!4924 = !DILocation(line: 563, column: 11, scope: !4923)
!4925 = !DILocation(line: 563, column: 7, scope: !4907)
!4926 = !DILocation(line: 564, column: 11, scope: !4923)
!4927 = !DILocation(line: 564, column: 4, scope: !4923)
!4928 = !DILocation(line: 565, column: 20, scope: !4907)
!4929 = !DILocation(line: 565, column: 17, scope: !4907)
!4930 = distinct !{!4930, !4900, !4931}
!4931 = !DILocation(line: 566, column: 2, scope: !4901)
!4932 = !DILocation(line: 567, column: 9, scope: !4604)
!4933 = !DILocation(line: 567, column: 2, scope: !4604)
!4934 = !DILocation(line: 568, column: 1, scope: !4604)
!4935 = distinct !DISubprogram(name: "device_unlock", scope: !73, file: !73, line: 744, type: !3366, scopeLine: 745, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4936 = !DILocalVariable(name: "dev", arg: 1, scope: !4935, file: !73, line: 744, type: !172)
!4937 = !DILocation(line: 744, column: 49, scope: !4935)
!4938 = !DILocation(line: 746, column: 16, scope: !4935)
!4939 = !DILocation(line: 746, column: 21, scope: !4935)
!4940 = !DILocation(line: 746, column: 2, scope: !4935)
!4941 = !DILocation(line: 747, column: 1, scope: !4935)
!4942 = distinct !DISubprogram(name: "usb_dump_desc", scope: !3, file: !3, line: 381, type: !4943, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!240, !240, !240, !3907}
!4945 = !DILocalVariable(name: "start", arg: 1, scope: !4942, file: !3, line: 381, type: !240)
!4946 = !DILocation(line: 381, column: 34, scope: !4942)
!4947 = !DILocalVariable(name: "end", arg: 2, scope: !4942, file: !3, line: 381, type: !240)
!4948 = !DILocation(line: 381, column: 47, scope: !4942)
!4949 = !DILocalVariable(name: "dev", arg: 3, scope: !4942, file: !3, line: 381, type: !3907)
!4950 = !DILocation(line: 381, column: 71, scope: !4942)
!4951 = !DILocalVariable(name: "i", scope: !4942, file: !3, line: 383, type: !224)
!4952 = !DILocation(line: 383, column: 6, scope: !4942)
!4953 = !DILocation(line: 385, column: 6, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 385, column: 6)
!4955 = !DILocation(line: 385, column: 14, scope: !4954)
!4956 = !DILocation(line: 385, column: 12, scope: !4954)
!4957 = !DILocation(line: 385, column: 6, scope: !4942)
!4958 = !DILocation(line: 386, column: 10, scope: !4954)
!4959 = !DILocation(line: 386, column: 3, scope: !4954)
!4960 = !DILocation(line: 388, column: 37, scope: !4942)
!4961 = !DILocation(line: 388, column: 44, scope: !4942)
!4962 = !DILocation(line: 388, column: 50, scope: !4942)
!4963 = !DILocation(line: 388, column: 55, scope: !4942)
!4964 = !DILocation(line: 388, column: 10, scope: !4942)
!4965 = !DILocation(line: 388, column: 8, scope: !4942)
!4966 = !DILocation(line: 390, column: 6, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 390, column: 6)
!4968 = !DILocation(line: 390, column: 14, scope: !4967)
!4969 = !DILocation(line: 390, column: 12, scope: !4967)
!4970 = !DILocation(line: 390, column: 6, scope: !4942)
!4971 = !DILocation(line: 391, column: 10, scope: !4967)
!4972 = !DILocation(line: 391, column: 3, scope: !4967)
!4973 = !DILocation(line: 393, column: 34, scope: !4942)
!4974 = !DILocation(line: 393, column: 41, scope: !4942)
!4975 = !DILocation(line: 393, column: 46, scope: !4942)
!4976 = !DILocation(line: 393, column: 10, scope: !4942)
!4977 = !DILocation(line: 393, column: 8, scope: !4942)
!4978 = !DILocation(line: 395, column: 9, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4942, file: !3, line: 395, column: 2)
!4980 = !DILocation(line: 395, column: 7, scope: !4979)
!4981 = !DILocation(line: 395, column: 14, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4979, file: !3, line: 395, column: 2)
!4983 = !DILocation(line: 395, column: 18, scope: !4982)
!4984 = !DILocation(line: 395, column: 23, scope: !4982)
!4985 = !DILocation(line: 395, column: 34, scope: !4982)
!4986 = !DILocation(line: 395, column: 16, scope: !4982)
!4987 = !DILocation(line: 395, column: 2, scope: !4979)
!4988 = !DILocation(line: 396, column: 7, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 396, column: 7)
!4990 = distinct !DILexicalBlock(scope: !4982, file: !3, line: 395, column: 59)
!4991 = !DILocation(line: 396, column: 15, scope: !4989)
!4992 = !DILocation(line: 396, column: 13, scope: !4989)
!4993 = !DILocation(line: 396, column: 7, scope: !4990)
!4994 = !DILocation(line: 397, column: 11, scope: !4989)
!4995 = !DILocation(line: 397, column: 4, scope: !4989)
!4996 = !DILocation(line: 398, column: 27, scope: !4990)
!4997 = !DILocation(line: 398, column: 32, scope: !4990)
!4998 = !DILocation(line: 399, column: 5, scope: !4990)
!4999 = !DILocation(line: 399, column: 12, scope: !4990)
!5000 = !DILocation(line: 399, column: 17, scope: !4990)
!5001 = !DILocation(line: 399, column: 22, scope: !4990)
!5002 = !DILocation(line: 399, column: 31, scope: !4990)
!5003 = !DILocation(line: 399, column: 29, scope: !4990)
!5004 = !DILocation(line: 401, column: 6, scope: !4990)
!5005 = !DILocation(line: 401, column: 11, scope: !4990)
!5006 = !DILocation(line: 401, column: 20, scope: !4990)
!5007 = !DILocation(line: 401, column: 18, scope: !4990)
!5008 = !DILocation(line: 401, column: 26, scope: !4990)
!5009 = !DILocation(line: 401, column: 31, scope: !4990)
!5010 = !DILocation(line: 401, column: 23, scope: !4990)
!5011 = !DILocation(line: 398, column: 11, scope: !4990)
!5012 = !DILocation(line: 398, column: 9, scope: !4990)
!5013 = !DILocation(line: 402, column: 2, scope: !4990)
!5014 = !DILocation(line: 395, column: 55, scope: !4982)
!5015 = !DILocation(line: 395, column: 2, scope: !4982)
!5016 = distinct !{!5016, !4987, !5017}
!5017 = !DILocation(line: 402, column: 2, scope: !4979)
!5018 = !DILocation(line: 403, column: 9, scope: !4942)
!5019 = !DILocation(line: 403, column: 2, scope: !4942)
!5020 = !DILocation(line: 404, column: 1, scope: !4942)
!5021 = distinct !DISubprogram(name: "usb_dump_device_descriptor", scope: !3, file: !3, line: 330, type: !5022, scopeLine: 332, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5022 = !DISubroutineType(types: !5023)
!5023 = !{!240, !240, !240, !5024}
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3977)
!5026 = !DILocalVariable(name: "start", arg: 1, scope: !5021, file: !3, line: 330, type: !240)
!5027 = !DILocation(line: 330, column: 47, scope: !5021)
!5028 = !DILocalVariable(name: "end", arg: 2, scope: !5021, file: !3, line: 330, type: !240)
!5029 = !DILocation(line: 330, column: 60, scope: !5021)
!5030 = !DILocalVariable(name: "desc", arg: 3, scope: !5021, file: !3, line: 331, type: !5024)
!5031 = !DILocation(line: 331, column: 41, scope: !5021)
!5032 = !DILocalVariable(name: "bcdUSB", scope: !5021, file: !3, line: 333, type: !828)
!5033 = !DILocation(line: 333, column: 6, scope: !5021)
!5034 = !DILocation(line: 333, column: 15, scope: !5021)
!5035 = !DILocalVariable(name: "bcdDevice", scope: !5021, file: !3, line: 334, type: !828)
!5036 = !DILocation(line: 334, column: 6, scope: !5021)
!5037 = !DILocation(line: 334, column: 18, scope: !5021)
!5038 = !DILocation(line: 336, column: 6, scope: !5039)
!5039 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 336, column: 6)
!5040 = !DILocation(line: 336, column: 14, scope: !5039)
!5041 = !DILocation(line: 336, column: 12, scope: !5039)
!5042 = !DILocation(line: 336, column: 6, scope: !5021)
!5043 = !DILocation(line: 337, column: 10, scope: !5039)
!5044 = !DILocation(line: 337, column: 3, scope: !5039)
!5045 = !DILocation(line: 338, column: 19, scope: !5021)
!5046 = !DILocation(line: 339, column: 6, scope: !5021)
!5047 = !DILocation(line: 339, column: 13, scope: !5021)
!5048 = !DILocation(line: 339, column: 19, scope: !5021)
!5049 = !DILocation(line: 339, column: 26, scope: !5021)
!5050 = !DILocation(line: 340, column: 6, scope: !5021)
!5051 = !DILocation(line: 340, column: 12, scope: !5021)
!5052 = !DILocation(line: 341, column: 19, scope: !5021)
!5053 = !DILocation(line: 341, column: 25, scope: !5021)
!5054 = !DILocation(line: 341, column: 6, scope: !5021)
!5055 = !DILocation(line: 342, column: 6, scope: !5021)
!5056 = !DILocation(line: 342, column: 12, scope: !5021)
!5057 = !DILocation(line: 343, column: 6, scope: !5021)
!5058 = !DILocation(line: 343, column: 12, scope: !5021)
!5059 = !DILocation(line: 344, column: 6, scope: !5021)
!5060 = !DILocation(line: 344, column: 12, scope: !5021)
!5061 = !DILocation(line: 345, column: 6, scope: !5021)
!5062 = !DILocation(line: 345, column: 12, scope: !5021)
!5063 = !DILocation(line: 338, column: 11, scope: !5021)
!5064 = !DILocation(line: 338, column: 8, scope: !5021)
!5065 = !DILocation(line: 346, column: 6, scope: !5066)
!5066 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 346, column: 6)
!5067 = !DILocation(line: 346, column: 14, scope: !5066)
!5068 = !DILocation(line: 346, column: 12, scope: !5066)
!5069 = !DILocation(line: 346, column: 6, scope: !5021)
!5070 = !DILocation(line: 347, column: 10, scope: !5066)
!5071 = !DILocation(line: 347, column: 3, scope: !5066)
!5072 = !DILocation(line: 348, column: 19, scope: !5021)
!5073 = !DILocation(line: 349, column: 5, scope: !5021)
!5074 = !DILocation(line: 350, column: 5, scope: !5021)
!5075 = !DILocation(line: 351, column: 5, scope: !5021)
!5076 = !DILocation(line: 351, column: 15, scope: !5021)
!5077 = !DILocation(line: 351, column: 21, scope: !5021)
!5078 = !DILocation(line: 351, column: 31, scope: !5021)
!5079 = !DILocation(line: 348, column: 11, scope: !5021)
!5080 = !DILocation(line: 348, column: 8, scope: !5021)
!5081 = !DILocation(line: 352, column: 9, scope: !5021)
!5082 = !DILocation(line: 352, column: 2, scope: !5021)
!5083 = !DILocation(line: 353, column: 1, scope: !5021)
!5084 = distinct !DISubprogram(name: "usb_dump_device_strings", scope: !3, file: !3, line: 358, type: !4943, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5085 = !DILocalVariable(name: "start", arg: 1, scope: !5084, file: !3, line: 358, type: !240)
!5086 = !DILocation(line: 358, column: 44, scope: !5084)
!5087 = !DILocalVariable(name: "end", arg: 2, scope: !5084, file: !3, line: 358, type: !240)
!5088 = !DILocation(line: 358, column: 57, scope: !5084)
!5089 = !DILocalVariable(name: "dev", arg: 3, scope: !5084, file: !3, line: 359, type: !3907)
!5090 = !DILocation(line: 359, column: 29, scope: !5084)
!5091 = !DILocation(line: 361, column: 6, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 361, column: 6)
!5093 = !DILocation(line: 361, column: 14, scope: !5092)
!5094 = !DILocation(line: 361, column: 12, scope: !5092)
!5095 = !DILocation(line: 361, column: 6, scope: !5084)
!5096 = !DILocation(line: 362, column: 10, scope: !5092)
!5097 = !DILocation(line: 362, column: 3, scope: !5092)
!5098 = !DILocation(line: 363, column: 6, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 363, column: 6)
!5100 = !DILocation(line: 363, column: 11, scope: !5099)
!5101 = !DILocation(line: 363, column: 6, scope: !5084)
!5102 = !DILocation(line: 364, column: 20, scope: !5099)
!5103 = !DILocation(line: 365, column: 6, scope: !5099)
!5104 = !DILocation(line: 365, column: 11, scope: !5099)
!5105 = !DILocation(line: 364, column: 12, scope: !5099)
!5106 = !DILocation(line: 364, column: 9, scope: !5099)
!5107 = !DILocation(line: 364, column: 3, scope: !5099)
!5108 = !DILocation(line: 366, column: 6, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 366, column: 6)
!5110 = !DILocation(line: 366, column: 14, scope: !5109)
!5111 = !DILocation(line: 366, column: 12, scope: !5109)
!5112 = !DILocation(line: 366, column: 6, scope: !5084)
!5113 = !DILocation(line: 367, column: 3, scope: !5109)
!5114 = !DILocation(line: 368, column: 6, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 368, column: 6)
!5116 = !DILocation(line: 368, column: 11, scope: !5115)
!5117 = !DILocation(line: 368, column: 6, scope: !5084)
!5118 = !DILocation(line: 369, column: 20, scope: !5115)
!5119 = !DILocation(line: 369, column: 50, scope: !5115)
!5120 = !DILocation(line: 369, column: 55, scope: !5115)
!5121 = !DILocation(line: 369, column: 12, scope: !5115)
!5122 = !DILocation(line: 369, column: 9, scope: !5115)
!5123 = !DILocation(line: 369, column: 3, scope: !5115)
!5124 = !DILocation(line: 370, column: 6, scope: !5125)
!5125 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 370, column: 6)
!5126 = !DILocation(line: 370, column: 14, scope: !5125)
!5127 = !DILocation(line: 370, column: 12, scope: !5125)
!5128 = !DILocation(line: 370, column: 6, scope: !5084)
!5129 = !DILocation(line: 371, column: 3, scope: !5125)
!5130 = !DILocation(line: 373, column: 6, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5084, file: !3, line: 373, column: 6)
!5132 = !DILocation(line: 373, column: 11, scope: !5131)
!5133 = !DILocation(line: 373, column: 6, scope: !5084)
!5134 = !DILocation(line: 374, column: 20, scope: !5131)
!5135 = !DILocation(line: 375, column: 6, scope: !5131)
!5136 = !DILocation(line: 375, column: 11, scope: !5131)
!5137 = !DILocation(line: 374, column: 12, scope: !5131)
!5138 = !DILocation(line: 374, column: 9, scope: !5131)
!5139 = !DILocation(line: 374, column: 3, scope: !5131)
!5140 = !DILabel(scope: !5084, name: "out", file: !3, line: 377)
!5141 = !DILocation(line: 377, column: 2, scope: !5084)
!5142 = !DILocation(line: 378, column: 9, scope: !5084)
!5143 = !DILocation(line: 378, column: 2, scope: !5084)
!5144 = !DILocation(line: 379, column: 1, scope: !5084)
!5145 = distinct !DISubprogram(name: "usb_dump_config", scope: !3, file: !3, line: 294, type: !5146, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5146 = !DISubroutineType(types: !5147)
!5147 = !{!240, !224, !240, !240, !5148, !224}
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5149, size: 64)
!5149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4056)
!5150 = !DILocalVariable(name: "speed", arg: 1, scope: !5145, file: !3, line: 294, type: !224)
!5151 = !DILocation(line: 294, column: 34, scope: !5145)
!5152 = !DILocalVariable(name: "start", arg: 2, scope: !5145, file: !3, line: 294, type: !240)
!5153 = !DILocation(line: 294, column: 47, scope: !5145)
!5154 = !DILocalVariable(name: "end", arg: 3, scope: !5145, file: !3, line: 294, type: !240)
!5155 = !DILocation(line: 294, column: 60, scope: !5145)
!5156 = !DILocalVariable(name: "config", arg: 4, scope: !5145, file: !3, line: 295, type: !5148)
!5157 = !DILocation(line: 295, column: 39, scope: !5145)
!5158 = !DILocalVariable(name: "active", arg: 5, scope: !5145, file: !3, line: 295, type: !224)
!5159 = !DILocation(line: 295, column: 51, scope: !5145)
!5160 = !DILocalVariable(name: "i", scope: !5145, file: !3, line: 297, type: !224)
!5161 = !DILocation(line: 297, column: 6, scope: !5145)
!5162 = !DILocalVariable(name: "j", scope: !5145, file: !3, line: 297, type: !224)
!5163 = !DILocation(line: 297, column: 9, scope: !5145)
!5164 = !DILocalVariable(name: "intfc", scope: !5145, file: !3, line: 298, type: !4127)
!5165 = !DILocation(line: 298, column: 30, scope: !5145)
!5166 = !DILocalVariable(name: "interface", scope: !5145, file: !3, line: 299, type: !4085)
!5167 = !DILocation(line: 299, column: 24, scope: !5145)
!5168 = !DILocation(line: 301, column: 6, scope: !5169)
!5169 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 301, column: 6)
!5170 = !DILocation(line: 301, column: 14, scope: !5169)
!5171 = !DILocation(line: 301, column: 12, scope: !5169)
!5172 = !DILocation(line: 301, column: 6, scope: !5145)
!5173 = !DILocation(line: 302, column: 10, scope: !5169)
!5174 = !DILocation(line: 302, column: 3, scope: !5169)
!5175 = !DILocation(line: 303, column: 7, scope: !5176)
!5176 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 303, column: 6)
!5177 = !DILocation(line: 303, column: 6, scope: !5145)
!5178 = !DILocation(line: 305, column: 10, scope: !5176)
!5179 = !DILocation(line: 305, column: 26, scope: !5176)
!5180 = !DILocation(line: 305, column: 18, scope: !5176)
!5181 = !DILocation(line: 305, column: 16, scope: !5176)
!5182 = !DILocation(line: 305, column: 3, scope: !5176)
!5183 = !DILocation(line: 306, column: 37, scope: !5145)
!5184 = !DILocation(line: 306, column: 44, scope: !5145)
!5185 = !DILocation(line: 306, column: 50, scope: !5145)
!5186 = !DILocation(line: 306, column: 58, scope: !5145)
!5187 = !DILocation(line: 306, column: 64, scope: !5145)
!5188 = !DILocation(line: 307, column: 4, scope: !5145)
!5189 = !DILocation(line: 306, column: 10, scope: !5145)
!5190 = !DILocation(line: 306, column: 8, scope: !5145)
!5191 = !DILocation(line: 308, column: 9, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 308, column: 2)
!5193 = !DILocation(line: 308, column: 7, scope: !5192)
!5194 = !DILocation(line: 308, column: 14, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 308, column: 2)
!5196 = !DILocation(line: 308, column: 16, scope: !5195)
!5197 = !DILocation(line: 308, column: 2, scope: !5192)
!5198 = !DILocation(line: 309, column: 7, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5200, file: !3, line: 309, column: 7)
!5200 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 308, column: 36)
!5201 = !DILocation(line: 309, column: 15, scope: !5199)
!5202 = !DILocation(line: 309, column: 26, scope: !5199)
!5203 = !DILocation(line: 309, column: 29, scope: !5199)
!5204 = !DILocation(line: 309, column: 7, scope: !5200)
!5205 = !DILocation(line: 310, column: 4, scope: !5199)
!5206 = !DILocation(line: 311, column: 35, scope: !5200)
!5207 = !DILocation(line: 311, column: 42, scope: !5200)
!5208 = !DILocation(line: 312, column: 6, scope: !5200)
!5209 = !DILocation(line: 312, column: 14, scope: !5200)
!5210 = !DILocation(line: 312, column: 25, scope: !5200)
!5211 = !DILocation(line: 311, column: 11, scope: !5200)
!5212 = !DILocation(line: 311, column: 9, scope: !5200)
!5213 = !DILocation(line: 313, column: 2, scope: !5200)
!5214 = !DILocation(line: 308, column: 32, scope: !5195)
!5215 = !DILocation(line: 308, column: 2, scope: !5195)
!5216 = distinct !{!5216, !5197, !5217}
!5217 = !DILocation(line: 313, column: 2, scope: !5192)
!5218 = !DILocation(line: 314, column: 9, scope: !5219)
!5219 = distinct !DILexicalBlock(scope: !5145, file: !3, line: 314, column: 2)
!5220 = !DILocation(line: 314, column: 7, scope: !5219)
!5221 = !DILocation(line: 314, column: 14, scope: !5222)
!5222 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 314, column: 2)
!5223 = !DILocation(line: 314, column: 18, scope: !5222)
!5224 = !DILocation(line: 314, column: 26, scope: !5222)
!5225 = !DILocation(line: 314, column: 31, scope: !5222)
!5226 = !DILocation(line: 314, column: 16, scope: !5222)
!5227 = !DILocation(line: 314, column: 2, scope: !5219)
!5228 = !DILocation(line: 315, column: 11, scope: !5229)
!5229 = distinct !DILexicalBlock(scope: !5222, file: !3, line: 314, column: 52)
!5230 = !DILocation(line: 315, column: 19, scope: !5229)
!5231 = !DILocation(line: 315, column: 30, scope: !5229)
!5232 = !DILocation(line: 315, column: 9, scope: !5229)
!5233 = !DILocation(line: 316, column: 15, scope: !5229)
!5234 = !DILocation(line: 316, column: 23, scope: !5229)
!5235 = !DILocation(line: 316, column: 33, scope: !5229)
!5236 = !DILocation(line: 316, column: 13, scope: !5229)
!5237 = !DILocation(line: 317, column: 10, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5229, file: !3, line: 317, column: 3)
!5239 = !DILocation(line: 317, column: 8, scope: !5238)
!5240 = !DILocation(line: 317, column: 15, scope: !5241)
!5241 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 317, column: 3)
!5242 = !DILocation(line: 317, column: 19, scope: !5241)
!5243 = !DILocation(line: 317, column: 26, scope: !5241)
!5244 = !DILocation(line: 317, column: 17, scope: !5241)
!5245 = !DILocation(line: 317, column: 3, scope: !5238)
!5246 = !DILocation(line: 318, column: 8, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5248, file: !3, line: 318, column: 8)
!5248 = distinct !DILexicalBlock(scope: !5241, file: !3, line: 317, column: 47)
!5249 = !DILocation(line: 318, column: 16, scope: !5247)
!5250 = !DILocation(line: 318, column: 14, scope: !5247)
!5251 = !DILocation(line: 318, column: 8, scope: !5248)
!5252 = !DILocation(line: 319, column: 12, scope: !5247)
!5253 = !DILocation(line: 319, column: 5, scope: !5247)
!5254 = !DILocation(line: 320, column: 31, scope: !5248)
!5255 = !DILocation(line: 321, column: 5, scope: !5248)
!5256 = !DILocation(line: 321, column: 12, scope: !5248)
!5257 = !DILocation(line: 321, column: 17, scope: !5248)
!5258 = !DILocation(line: 321, column: 24, scope: !5248)
!5259 = !DILocation(line: 321, column: 35, scope: !5248)
!5260 = !DILocation(line: 320, column: 12, scope: !5248)
!5261 = !DILocation(line: 320, column: 10, scope: !5248)
!5262 = !DILocation(line: 322, column: 3, scope: !5248)
!5263 = !DILocation(line: 317, column: 43, scope: !5241)
!5264 = !DILocation(line: 317, column: 3, scope: !5241)
!5265 = distinct !{!5265, !5245, !5266}
!5266 = !DILocation(line: 322, column: 3, scope: !5238)
!5267 = !DILocation(line: 323, column: 2, scope: !5229)
!5268 = !DILocation(line: 314, column: 48, scope: !5222)
!5269 = !DILocation(line: 314, column: 2, scope: !5222)
!5270 = distinct !{!5270, !5227, !5271}
!5271 = !DILocation(line: 323, column: 2, scope: !5219)
!5272 = !DILocation(line: 324, column: 9, scope: !5145)
!5273 = !DILocation(line: 324, column: 2, scope: !5145)
!5274 = !DILocation(line: 325, column: 1, scope: !5145)
!5275 = distinct !DISubprogram(name: "class_decode", scope: !3, file: !3, line: 132, type: !5276, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{!180, !5278}
!5278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!5279 = !DILocalVariable(name: "class", arg: 1, scope: !5275, file: !3, line: 132, type: !5278)
!5280 = !DILocation(line: 132, column: 43, scope: !5275)
!5281 = !DILocalVariable(name: "ix", scope: !5275, file: !3, line: 134, type: !224)
!5282 = !DILocation(line: 134, column: 6, scope: !5275)
!5283 = !DILocation(line: 136, column: 10, scope: !5284)
!5284 = distinct !DILexicalBlock(scope: !5275, file: !3, line: 136, column: 2)
!5285 = !DILocation(line: 136, column: 7, scope: !5284)
!5286 = !DILocation(line: 136, column: 25, scope: !5287)
!5287 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 136, column: 2)
!5288 = !DILocation(line: 136, column: 15, scope: !5287)
!5289 = !DILocation(line: 136, column: 29, scope: !5287)
!5290 = !DILocation(line: 136, column: 35, scope: !5287)
!5291 = !DILocation(line: 136, column: 2, scope: !5284)
!5292 = !DILocation(line: 137, column: 17, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5287, file: !3, line: 137, column: 7)
!5294 = !DILocation(line: 137, column: 7, scope: !5293)
!5295 = !DILocation(line: 137, column: 21, scope: !5293)
!5296 = !DILocation(line: 137, column: 30, scope: !5293)
!5297 = !DILocation(line: 137, column: 27, scope: !5293)
!5298 = !DILocation(line: 137, column: 7, scope: !5287)
!5299 = !DILocation(line: 138, column: 4, scope: !5293)
!5300 = !DILocation(line: 136, column: 44, scope: !5287)
!5301 = !DILocation(line: 136, column: 2, scope: !5287)
!5302 = distinct !{!5302, !5291, !5303}
!5303 = !DILocation(line: 138, column: 4, scope: !5284)
!5304 = !DILocation(line: 139, column: 19, scope: !5275)
!5305 = !DILocation(line: 139, column: 9, scope: !5275)
!5306 = !DILocation(line: 139, column: 23, scope: !5275)
!5307 = !DILocation(line: 139, column: 2, scope: !5275)
!5308 = distinct !DISubprogram(name: "usb_dump_config_descriptor", scope: !3, file: !3, line: 272, type: !5309, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5309 = !DISubroutineType(types: !5310)
!5310 = !{!240, !240, !240, !5311, !224, !224}
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4059)
!5313 = !DILocalVariable(name: "start", arg: 1, scope: !5308, file: !3, line: 272, type: !240)
!5314 = !DILocation(line: 272, column: 47, scope: !5308)
!5315 = !DILocalVariable(name: "end", arg: 2, scope: !5308, file: !3, line: 272, type: !240)
!5316 = !DILocation(line: 272, column: 60, scope: !5308)
!5317 = !DILocalVariable(name: "desc", arg: 3, scope: !5308, file: !3, line: 273, type: !5311)
!5318 = !DILocation(line: 273, column: 41, scope: !5308)
!5319 = !DILocalVariable(name: "active", arg: 4, scope: !5308, file: !3, line: 274, type: !224)
!5320 = !DILocation(line: 274, column: 9, scope: !5308)
!5321 = !DILocalVariable(name: "speed", arg: 5, scope: !5308, file: !3, line: 274, type: !224)
!5322 = !DILocation(line: 274, column: 21, scope: !5308)
!5323 = !DILocalVariable(name: "mul", scope: !5308, file: !3, line: 276, type: !224)
!5324 = !DILocation(line: 276, column: 6, scope: !5308)
!5325 = !DILocation(line: 278, column: 6, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 278, column: 6)
!5327 = !DILocation(line: 278, column: 14, scope: !5326)
!5328 = !DILocation(line: 278, column: 12, scope: !5326)
!5329 = !DILocation(line: 278, column: 6, scope: !5308)
!5330 = !DILocation(line: 279, column: 10, scope: !5326)
!5331 = !DILocation(line: 279, column: 3, scope: !5326)
!5332 = !DILocation(line: 280, column: 6, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5308, file: !3, line: 280, column: 6)
!5334 = !DILocation(line: 280, column: 12, scope: !5333)
!5335 = !DILocation(line: 280, column: 6, scope: !5308)
!5336 = !DILocation(line: 281, column: 7, scope: !5333)
!5337 = !DILocation(line: 281, column: 3, scope: !5333)
!5338 = !DILocation(line: 283, column: 7, scope: !5333)
!5339 = !DILocation(line: 284, column: 19, scope: !5308)
!5340 = !DILocation(line: 286, column: 5, scope: !5308)
!5341 = !DILocation(line: 287, column: 5, scope: !5308)
!5342 = !DILocation(line: 287, column: 11, scope: !5308)
!5343 = !DILocation(line: 288, column: 5, scope: !5308)
!5344 = !DILocation(line: 288, column: 11, scope: !5308)
!5345 = !DILocation(line: 289, column: 5, scope: !5308)
!5346 = !DILocation(line: 289, column: 11, scope: !5308)
!5347 = !DILocation(line: 290, column: 5, scope: !5308)
!5348 = !DILocation(line: 290, column: 11, scope: !5308)
!5349 = !DILocation(line: 290, column: 23, scope: !5308)
!5350 = !DILocation(line: 290, column: 21, scope: !5308)
!5351 = !DILocation(line: 284, column: 11, scope: !5308)
!5352 = !DILocation(line: 284, column: 8, scope: !5308)
!5353 = !DILocation(line: 291, column: 9, scope: !5308)
!5354 = !DILocation(line: 291, column: 2, scope: !5308)
!5355 = !DILocation(line: 292, column: 1, scope: !5308)
!5356 = distinct !DISubprogram(name: "usb_dump_iad_descriptor", scope: !3, file: !3, line: 252, type: !5357, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5357 = !DISubroutineType(types: !5358)
!5358 = !{!240, !240, !240, !5359}
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4073)
!5361 = !DILocalVariable(name: "start", arg: 1, scope: !5356, file: !3, line: 252, type: !240)
!5362 = !DILocation(line: 252, column: 44, scope: !5356)
!5363 = !DILocalVariable(name: "end", arg: 2, scope: !5356, file: !3, line: 252, type: !240)
!5364 = !DILocation(line: 252, column: 57, scope: !5356)
!5365 = !DILocalVariable(name: "iad", arg: 3, scope: !5356, file: !3, line: 253, type: !5359)
!5366 = !DILocation(line: 253, column: 49, scope: !5356)
!5367 = !DILocation(line: 255, column: 6, scope: !5368)
!5368 = distinct !DILexicalBlock(scope: !5356, file: !3, line: 255, column: 6)
!5369 = !DILocation(line: 255, column: 14, scope: !5368)
!5370 = !DILocation(line: 255, column: 12, scope: !5368)
!5371 = !DILocation(line: 255, column: 6, scope: !5356)
!5372 = !DILocation(line: 256, column: 10, scope: !5368)
!5373 = !DILocation(line: 256, column: 3, scope: !5368)
!5374 = !DILocation(line: 257, column: 19, scope: !5356)
!5375 = !DILocation(line: 258, column: 5, scope: !5356)
!5376 = !DILocation(line: 258, column: 10, scope: !5356)
!5377 = !DILocation(line: 259, column: 5, scope: !5356)
!5378 = !DILocation(line: 259, column: 10, scope: !5356)
!5379 = !DILocation(line: 260, column: 5, scope: !5356)
!5380 = !DILocation(line: 260, column: 10, scope: !5356)
!5381 = !DILocation(line: 261, column: 18, scope: !5356)
!5382 = !DILocation(line: 261, column: 23, scope: !5356)
!5383 = !DILocation(line: 261, column: 5, scope: !5356)
!5384 = !DILocation(line: 262, column: 5, scope: !5356)
!5385 = !DILocation(line: 262, column: 10, scope: !5356)
!5386 = !DILocation(line: 263, column: 5, scope: !5356)
!5387 = !DILocation(line: 263, column: 10, scope: !5356)
!5388 = !DILocation(line: 257, column: 11, scope: !5356)
!5389 = !DILocation(line: 257, column: 8, scope: !5356)
!5390 = !DILocation(line: 264, column: 9, scope: !5356)
!5391 = !DILocation(line: 264, column: 2, scope: !5356)
!5392 = !DILocation(line: 265, column: 1, scope: !5356)
!5393 = distinct !DISubprogram(name: "usb_dump_interface", scope: !3, file: !3, line: 235, type: !5394, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5394 = !DISubroutineType(types: !5395)
!5395 = !{!240, !224, !240, !240, !5396, !5398, !224}
!5396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5397, size: 64)
!5397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4128)
!5398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5399, size: 64)
!5399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4086)
!5400 = !DILocalVariable(name: "speed", arg: 1, scope: !5393, file: !3, line: 235, type: !224)
!5401 = !DILocation(line: 235, column: 37, scope: !5393)
!5402 = !DILocalVariable(name: "start", arg: 2, scope: !5393, file: !3, line: 235, type: !240)
!5403 = !DILocation(line: 235, column: 50, scope: !5393)
!5404 = !DILocalVariable(name: "end", arg: 3, scope: !5393, file: !3, line: 235, type: !240)
!5405 = !DILocation(line: 235, column: 63, scope: !5393)
!5406 = !DILocalVariable(name: "intfc", arg: 4, scope: !5393, file: !3, line: 236, type: !5396)
!5407 = !DILocation(line: 236, column: 39, scope: !5393)
!5408 = !DILocalVariable(name: "iface", arg: 5, scope: !5393, file: !3, line: 237, type: !5398)
!5409 = !DILocation(line: 237, column: 33, scope: !5393)
!5410 = !DILocalVariable(name: "setno", arg: 6, scope: !5393, file: !3, line: 237, type: !224)
!5411 = !DILocation(line: 237, column: 44, scope: !5393)
!5412 = !DILocalVariable(name: "desc", scope: !5393, file: !3, line: 239, type: !5413)
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5414, size: 64)
!5414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4090)
!5415 = !DILocation(line: 239, column: 35, scope: !5393)
!5416 = !DILocation(line: 239, column: 43, scope: !5393)
!5417 = !DILocation(line: 239, column: 50, scope: !5393)
!5418 = !DILocation(line: 239, column: 61, scope: !5393)
!5419 = !DILocalVariable(name: "i", scope: !5393, file: !3, line: 240, type: !224)
!5420 = !DILocation(line: 240, column: 6, scope: !5393)
!5421 = !DILocation(line: 242, column: 40, scope: !5393)
!5422 = !DILocation(line: 242, column: 47, scope: !5393)
!5423 = !DILocation(line: 242, column: 52, scope: !5393)
!5424 = !DILocation(line: 242, column: 59, scope: !5393)
!5425 = !DILocation(line: 242, column: 66, scope: !5393)
!5426 = !DILocation(line: 242, column: 10, scope: !5393)
!5427 = !DILocation(line: 242, column: 8, scope: !5393)
!5428 = !DILocation(line: 243, column: 9, scope: !5429)
!5429 = distinct !DILexicalBlock(scope: !5393, file: !3, line: 243, column: 2)
!5430 = !DILocation(line: 243, column: 7, scope: !5429)
!5431 = !DILocation(line: 243, column: 14, scope: !5432)
!5432 = distinct !DILexicalBlock(scope: !5429, file: !3, line: 243, column: 2)
!5433 = !DILocation(line: 243, column: 18, scope: !5432)
!5434 = !DILocation(line: 243, column: 24, scope: !5432)
!5435 = !DILocation(line: 243, column: 29, scope: !5432)
!5436 = !DILocation(line: 243, column: 16, scope: !5432)
!5437 = !DILocation(line: 243, column: 2, scope: !5429)
!5438 = !DILocation(line: 244, column: 7, scope: !5439)
!5439 = distinct !DILexicalBlock(scope: !5440, file: !3, line: 244, column: 7)
!5440 = distinct !DILexicalBlock(scope: !5432, file: !3, line: 243, column: 49)
!5441 = !DILocation(line: 244, column: 15, scope: !5439)
!5442 = !DILocation(line: 244, column: 13, scope: !5439)
!5443 = !DILocation(line: 244, column: 7, scope: !5440)
!5444 = !DILocation(line: 245, column: 11, scope: !5439)
!5445 = !DILocation(line: 245, column: 4, scope: !5439)
!5446 = !DILocation(line: 246, column: 40, scope: !5440)
!5447 = !DILocation(line: 247, column: 5, scope: !5440)
!5448 = !DILocation(line: 247, column: 12, scope: !5440)
!5449 = !DILocation(line: 247, column: 18, scope: !5440)
!5450 = !DILocation(line: 247, column: 24, scope: !5440)
!5451 = !DILocation(line: 247, column: 33, scope: !5440)
!5452 = !DILocation(line: 247, column: 36, scope: !5440)
!5453 = !DILocation(line: 246, column: 11, scope: !5440)
!5454 = !DILocation(line: 246, column: 9, scope: !5440)
!5455 = !DILocation(line: 248, column: 2, scope: !5440)
!5456 = !DILocation(line: 243, column: 45, scope: !5432)
!5457 = !DILocation(line: 243, column: 2, scope: !5432)
!5458 = distinct !{!5458, !5437, !5459}
!5459 = !DILocation(line: 248, column: 2, scope: !5429)
!5460 = !DILocation(line: 249, column: 9, scope: !5393)
!5461 = !DILocation(line: 249, column: 2, scope: !5393)
!5462 = !DILocation(line: 250, column: 1, scope: !5393)
!5463 = distinct !DISubprogram(name: "usb_dump_interface_descriptor", scope: !3, file: !3, line: 204, type: !5464, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5464 = !DISubroutineType(types: !5465)
!5465 = !{!240, !240, !240, !5396, !5398, !224}
!5466 = !DILocalVariable(name: "start", arg: 1, scope: !5463, file: !3, line: 204, type: !240)
!5467 = !DILocation(line: 204, column: 50, scope: !5463)
!5468 = !DILocalVariable(name: "end", arg: 2, scope: !5463, file: !3, line: 204, type: !240)
!5469 = !DILocation(line: 204, column: 63, scope: !5463)
!5470 = !DILocalVariable(name: "intfc", arg: 3, scope: !5463, file: !3, line: 205, type: !5396)
!5471 = !DILocation(line: 205, column: 40, scope: !5463)
!5472 = !DILocalVariable(name: "iface", arg: 4, scope: !5463, file: !3, line: 206, type: !5398)
!5473 = !DILocation(line: 206, column: 34, scope: !5463)
!5474 = !DILocalVariable(name: "setno", arg: 5, scope: !5463, file: !3, line: 207, type: !224)
!5475 = !DILocation(line: 207, column: 10, scope: !5463)
!5476 = !DILocalVariable(name: "desc", scope: !5463, file: !3, line: 209, type: !5477)
!5477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5478, size: 64)
!5478 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4093)
!5479 = !DILocation(line: 209, column: 41, scope: !5463)
!5480 = !DILocalVariable(name: "driver_name", scope: !5463, file: !3, line: 210, type: !180)
!5481 = !DILocation(line: 210, column: 14, scope: !5463)
!5482 = !DILocalVariable(name: "active", scope: !5463, file: !3, line: 211, type: !224)
!5483 = !DILocation(line: 211, column: 6, scope: !5463)
!5484 = !DILocation(line: 213, column: 6, scope: !5485)
!5485 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 213, column: 6)
!5486 = !DILocation(line: 213, column: 14, scope: !5485)
!5487 = !DILocation(line: 213, column: 12, scope: !5485)
!5488 = !DILocation(line: 213, column: 6, scope: !5463)
!5489 = !DILocation(line: 214, column: 10, scope: !5485)
!5490 = !DILocation(line: 214, column: 3, scope: !5485)
!5491 = !DILocation(line: 215, column: 10, scope: !5463)
!5492 = !DILocation(line: 215, column: 17, scope: !5463)
!5493 = !DILocation(line: 215, column: 28, scope: !5463)
!5494 = !DILocation(line: 215, column: 35, scope: !5463)
!5495 = !DILocation(line: 215, column: 7, scope: !5463)
!5496 = !DILocation(line: 216, column: 6, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5463, file: !3, line: 216, column: 6)
!5498 = !DILocation(line: 216, column: 6, scope: !5463)
!5499 = !DILocation(line: 217, column: 18, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 216, column: 13)
!5501 = !DILocation(line: 217, column: 25, scope: !5500)
!5502 = !DILocation(line: 217, column: 29, scope: !5500)
!5503 = !DILocation(line: 218, column: 7, scope: !5500)
!5504 = !DILocation(line: 218, column: 14, scope: !5500)
!5505 = !DILocation(line: 218, column: 18, scope: !5500)
!5506 = !DILocation(line: 218, column: 26, scope: !5500)
!5507 = !DILocation(line: 217, column: 15, scope: !5500)
!5508 = !DILocation(line: 220, column: 13, scope: !5500)
!5509 = !DILocation(line: 220, column: 22, scope: !5500)
!5510 = !DILocation(line: 220, column: 29, scope: !5500)
!5511 = !DILocation(line: 220, column: 45, scope: !5500)
!5512 = !DILocation(line: 220, column: 18, scope: !5500)
!5513 = !DILocation(line: 220, column: 10, scope: !5500)
!5514 = !DILocation(line: 221, column: 2, scope: !5500)
!5515 = !DILocation(line: 222, column: 19, scope: !5463)
!5516 = !DILocation(line: 223, column: 5, scope: !5463)
!5517 = !DILocation(line: 224, column: 5, scope: !5463)
!5518 = !DILocation(line: 224, column: 11, scope: !5463)
!5519 = !DILocation(line: 225, column: 5, scope: !5463)
!5520 = !DILocation(line: 225, column: 11, scope: !5463)
!5521 = !DILocation(line: 226, column: 5, scope: !5463)
!5522 = !DILocation(line: 226, column: 11, scope: !5463)
!5523 = !DILocation(line: 227, column: 5, scope: !5463)
!5524 = !DILocation(line: 227, column: 11, scope: !5463)
!5525 = !DILocation(line: 228, column: 18, scope: !5463)
!5526 = !DILocation(line: 228, column: 24, scope: !5463)
!5527 = !DILocation(line: 228, column: 5, scope: !5463)
!5528 = !DILocation(line: 229, column: 5, scope: !5463)
!5529 = !DILocation(line: 229, column: 11, scope: !5463)
!5530 = !DILocation(line: 230, column: 5, scope: !5463)
!5531 = !DILocation(line: 230, column: 11, scope: !5463)
!5532 = !DILocation(line: 231, column: 5, scope: !5463)
!5533 = !DILocation(line: 222, column: 11, scope: !5463)
!5534 = !DILocation(line: 222, column: 8, scope: !5463)
!5535 = !DILocation(line: 232, column: 9, scope: !5463)
!5536 = !DILocation(line: 232, column: 2, scope: !5463)
!5537 = !DILocation(line: 233, column: 1, scope: !5463)
!5538 = distinct !DISubprogram(name: "usb_dump_endpoint_descriptor", scope: !3, file: !3, line: 142, type: !5539, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5539 = !DISubroutineType(types: !5540)
!5540 = !{!240, !224, !240, !240, !5541}
!5541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5542, size: 64)
!5542 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3938)
!5543 = !DILocalVariable(name: "speed", arg: 1, scope: !5538, file: !3, line: 142, type: !224)
!5544 = !DILocation(line: 142, column: 47, scope: !5538)
!5545 = !DILocalVariable(name: "start", arg: 2, scope: !5538, file: !3, line: 142, type: !240)
!5546 = !DILocation(line: 142, column: 60, scope: !5538)
!5547 = !DILocalVariable(name: "end", arg: 3, scope: !5538, file: !3, line: 142, type: !240)
!5548 = !DILocation(line: 142, column: 73, scope: !5538)
!5549 = !DILocalVariable(name: "desc", arg: 4, scope: !5538, file: !3, line: 143, type: !5541)
!5550 = !DILocation(line: 143, column: 43, scope: !5538)
!5551 = !DILocalVariable(name: "dir", scope: !5538, file: !3, line: 145, type: !182)
!5552 = !DILocation(line: 145, column: 7, scope: !5538)
!5553 = !DILocalVariable(name: "unit", scope: !5538, file: !3, line: 145, type: !182)
!5554 = !DILocation(line: 145, column: 12, scope: !5538)
!5555 = !DILocalVariable(name: "type", scope: !5538, file: !3, line: 145, type: !240)
!5556 = !DILocation(line: 145, column: 19, scope: !5538)
!5557 = !DILocalVariable(name: "interval", scope: !5538, file: !3, line: 146, type: !7)
!5558 = !DILocation(line: 146, column: 11, scope: !5538)
!5559 = !DILocalVariable(name: "bandwidth", scope: !5538, file: !3, line: 146, type: !7)
!5560 = !DILocation(line: 146, column: 21, scope: !5538)
!5561 = !DILocation(line: 148, column: 6, scope: !5562)
!5562 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 148, column: 6)
!5563 = !DILocation(line: 148, column: 14, scope: !5562)
!5564 = !DILocation(line: 148, column: 12, scope: !5562)
!5565 = !DILocation(line: 148, column: 6, scope: !5538)
!5566 = !DILocation(line: 149, column: 10, scope: !5562)
!5567 = !DILocation(line: 149, column: 3, scope: !5562)
!5568 = !DILocation(line: 151, column: 28, scope: !5538)
!5569 = !DILocation(line: 151, column: 8, scope: !5538)
!5570 = !DILocation(line: 151, column: 6, scope: !5538)
!5571 = !DILocation(line: 153, column: 6, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 153, column: 6)
!5573 = !DILocation(line: 153, column: 12, scope: !5572)
!5574 = !DILocation(line: 153, column: 6, scope: !5538)
!5575 = !DILocation(line: 154, column: 38, scope: !5572)
!5576 = !DILocation(line: 154, column: 15, scope: !5572)
!5577 = !DILocation(line: 154, column: 13, scope: !5572)
!5578 = !DILocation(line: 154, column: 3, scope: !5572)
!5579 = !DILocation(line: 157, column: 28, scope: !5538)
!5580 = !DILocation(line: 157, column: 10, scope: !5538)
!5581 = !DILocation(line: 157, column: 2, scope: !5538)
!5582 = !DILocation(line: 159, column: 8, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 157, column: 35)
!5584 = !DILocation(line: 160, column: 7, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 160, column: 7)
!5586 = !DILocation(line: 160, column: 13, scope: !5585)
!5587 = !DILocation(line: 160, column: 7, scope: !5583)
!5588 = !DILocation(line: 161, column: 15, scope: !5585)
!5589 = !DILocation(line: 161, column: 21, scope: !5585)
!5590 = !DILocation(line: 161, column: 13, scope: !5585)
!5591 = !DILocation(line: 161, column: 4, scope: !5585)
!5592 = !DILocation(line: 163, column: 13, scope: !5585)
!5593 = !DILocation(line: 164, column: 7, scope: !5583)
!5594 = !DILocation(line: 165, column: 3, scope: !5583)
!5595 = !DILocation(line: 167, column: 8, scope: !5583)
!5596 = !DILocation(line: 168, column: 20, scope: !5583)
!5597 = !DILocation(line: 168, column: 26, scope: !5583)
!5598 = !DILocation(line: 168, column: 36, scope: !5583)
!5599 = !DILocation(line: 168, column: 16, scope: !5583)
!5600 = !DILocation(line: 168, column: 12, scope: !5583)
!5601 = !DILocation(line: 169, column: 3, scope: !5583)
!5602 = !DILocation(line: 171, column: 8, scope: !5583)
!5603 = !DILocation(line: 172, column: 7, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 172, column: 7)
!5605 = !DILocation(line: 172, column: 13, scope: !5604)
!5606 = !DILocation(line: 172, column: 31, scope: !5604)
!5607 = !DILocation(line: 172, column: 34, scope: !5604)
!5608 = !DILocation(line: 172, column: 38, scope: !5604)
!5609 = !DILocation(line: 172, column: 7, scope: !5583)
!5610 = !DILocation(line: 173, column: 15, scope: !5604)
!5611 = !DILocation(line: 173, column: 21, scope: !5604)
!5612 = !DILocation(line: 173, column: 13, scope: !5604)
!5613 = !DILocation(line: 173, column: 4, scope: !5604)
!5614 = !DILocation(line: 175, column: 13, scope: !5604)
!5615 = !DILocation(line: 176, column: 3, scope: !5583)
!5616 = !DILocation(line: 178, column: 8, scope: !5583)
!5617 = !DILocation(line: 179, column: 7, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5583, file: !3, line: 179, column: 7)
!5619 = !DILocation(line: 179, column: 13, scope: !5618)
!5620 = !DILocation(line: 179, column: 31, scope: !5618)
!5621 = !DILocation(line: 179, column: 34, scope: !5618)
!5622 = !DILocation(line: 179, column: 40, scope: !5618)
!5623 = !DILocation(line: 179, column: 7, scope: !5583)
!5624 = !DILocation(line: 180, column: 21, scope: !5618)
!5625 = !DILocation(line: 180, column: 27, scope: !5618)
!5626 = !DILocation(line: 180, column: 37, scope: !5618)
!5627 = !DILocation(line: 180, column: 17, scope: !5618)
!5628 = !DILocation(line: 180, column: 13, scope: !5618)
!5629 = !DILocation(line: 180, column: 4, scope: !5618)
!5630 = !DILocation(line: 182, column: 15, scope: !5618)
!5631 = !DILocation(line: 182, column: 21, scope: !5618)
!5632 = !DILocation(line: 182, column: 13, scope: !5618)
!5633 = !DILocation(line: 183, column: 3, scope: !5583)
!5634 = !DILocation(line: 185, column: 10, scope: !5583)
!5635 = !DILocation(line: 185, column: 3, scope: !5583)
!5636 = !DILocation(line: 187, column: 15, scope: !5538)
!5637 = !DILocation(line: 187, column: 21, scope: !5538)
!5638 = !DILocation(line: 187, column: 39, scope: !5538)
!5639 = !DILocation(line: 188, column: 8, scope: !5538)
!5640 = !DILocation(line: 188, column: 14, scope: !5538)
!5641 = !DILocation(line: 187, column: 14, scope: !5538)
!5642 = !DILocation(line: 187, column: 11, scope: !5538)
!5643 = !DILocation(line: 189, column: 6, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5538, file: !3, line: 189, column: 6)
!5645 = !DILocation(line: 189, column: 15, scope: !5644)
!5646 = !DILocation(line: 189, column: 6, scope: !5538)
!5647 = !DILocation(line: 190, column: 8, scope: !5644)
!5648 = !DILocation(line: 190, column: 3, scope: !5644)
!5649 = !DILocation(line: 192, column: 8, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5644, file: !3, line: 191, column: 7)
!5651 = !DILocation(line: 193, column: 12, scope: !5650)
!5652 = !DILocation(line: 196, column: 19, scope: !5538)
!5653 = !DILocation(line: 196, column: 40, scope: !5538)
!5654 = !DILocation(line: 196, column: 46, scope: !5538)
!5655 = !DILocation(line: 196, column: 64, scope: !5538)
!5656 = !DILocation(line: 197, column: 5, scope: !5538)
!5657 = !DILocation(line: 197, column: 11, scope: !5538)
!5658 = !DILocation(line: 197, column: 25, scope: !5538)
!5659 = !DILocation(line: 198, column: 23, scope: !5538)
!5660 = !DILocation(line: 198, column: 5, scope: !5538)
!5661 = !DILocation(line: 199, column: 5, scope: !5538)
!5662 = !DILocation(line: 198, column: 29, scope: !5538)
!5663 = !DILocation(line: 200, column: 5, scope: !5538)
!5664 = !DILocation(line: 200, column: 15, scope: !5538)
!5665 = !DILocation(line: 196, column: 11, scope: !5538)
!5666 = !DILocation(line: 196, column: 8, scope: !5538)
!5667 = !DILocation(line: 201, column: 9, scope: !5538)
!5668 = !DILocation(line: 201, column: 2, scope: !5538)
!5669 = !DILocation(line: 202, column: 1, scope: !5538)
!5670 = distinct !DISubprogram(name: "usb_endpoint_dir_in", scope: !108, file: !108, line: 492, type: !5671, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5671 = !DISubroutineType(types: !5672)
!5672 = !{!224, !5541}
!5673 = !DILocalVariable(name: "epd", arg: 1, scope: !5670, file: !108, line: 492, type: !5541)
!5674 = !DILocation(line: 492, column: 77, scope: !5670)
!5675 = !DILocation(line: 494, column: 11, scope: !5670)
!5676 = !DILocation(line: 494, column: 16, scope: !5670)
!5677 = !DILocation(line: 494, column: 33, scope: !5670)
!5678 = !DILocation(line: 494, column: 58, scope: !5670)
!5679 = !DILocation(line: 494, column: 2, scope: !5670)
!5680 = distinct !DISubprogram(name: "usb_endpoint_maxp_mult", scope: !108, file: !108, line: 659, type: !5671, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5681 = !DILocalVariable(name: "epd", arg: 1, scope: !5680, file: !108, line: 659, type: !5541)
!5682 = !DILocation(line: 659, column: 62, scope: !5680)
!5683 = !DILocalVariable(name: "maxp", scope: !5680, file: !108, line: 661, type: !224)
!5684 = !DILocation(line: 661, column: 6, scope: !5680)
!5685 = !DILocation(line: 661, column: 13, scope: !5680)
!5686 = !DILocation(line: 663, column: 9, scope: !5680)
!5687 = !DILocation(line: 663, column: 32, scope: !5680)
!5688 = !DILocation(line: 663, column: 2, scope: !5680)
!5689 = distinct !DISubprogram(name: "usb_endpoint_type", scope: !108, file: !108, line: 481, type: !5671, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5690 = !DILocalVariable(name: "epd", arg: 1, scope: !5689, file: !108, line: 481, type: !5541)
!5691 = !DILocation(line: 481, column: 75, scope: !5689)
!5692 = !DILocation(line: 483, column: 9, scope: !5689)
!5693 = !DILocation(line: 483, column: 14, scope: !5689)
!5694 = !DILocation(line: 483, column: 27, scope: !5689)
!5695 = !DILocation(line: 483, column: 2, scope: !5689)
!5696 = distinct !DISubprogram(name: "usb_endpoint_maxp", scope: !108, file: !108, line: 647, type: !5671, scopeLine: 648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5697 = !DILocalVariable(name: "epd", arg: 1, scope: !5696, file: !108, line: 647, type: !5541)
!5698 = !DILocation(line: 647, column: 75, scope: !5696)
!5699 = !DILocation(line: 649, column: 9, scope: !5696)
!5700 = !DILocation(line: 649, column: 44, scope: !5696)
!5701 = !DILocation(line: 649, column: 2, scope: !5696)
!5702 = distinct !DISubprogram(name: "copy_overflow", scope: !4610, file: !4610, line: 132, type: !5703, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5703 = !DISubroutineType(types: !5704)
!5704 = !{null, !224, !290}
!5705 = !DILocalVariable(name: "size", arg: 1, scope: !5702, file: !4610, line: 132, type: !224)
!5706 = !DILocation(line: 132, column: 38, scope: !5702)
!5707 = !DILocalVariable(name: "count", arg: 2, scope: !5702, file: !4610, line: 132, type: !290)
!5708 = !DILocation(line: 132, column: 58, scope: !5702)
!5709 = !DILocalVariable(name: "__ret_warn_on", scope: !5710, file: !4610, line: 134, type: !224)
!5710 = distinct !DILexicalBlock(scope: !5702, file: !4610, line: 134, column: 2)
!5711 = !DILocation(line: 134, column: 2, scope: !5710)
!5712 = !DILocation(line: 134, column: 2, scope: !5713)
!5713 = distinct !DILexicalBlock(scope: !5710, file: !4610, line: 134, column: 2)
!5714 = !DILocation(line: 134, column: 2, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5713, file: !4610, line: 134, column: 2)
!5716 = !DILocation(line: 134, column: 2, scope: !5717)
!5717 = distinct !DILexicalBlock(scope: !5715, file: !4610, line: 134, column: 2)
!5718 = !DILocation(line: 134, column: 2, scope: !5719)
!5719 = distinct !DILexicalBlock(scope: !5715, file: !4610, line: 134, column: 2)
!5720 = !DILocation(line: 134, column: 2, scope: !5721)
!5721 = distinct !DILexicalBlock(scope: !5719, file: !4610, line: 134, column: 2)
!5722 = !DILocation(line: 134, column: 2, scope: !5723)
!5723 = distinct !DILexicalBlock(scope: !5719, file: !4610, line: 134, column: 2)
!5724 = !{i32 -2145527609, i32 -2145527580, i32 -2145527534, i32 -2145527476, i32 -2145527422, i32 -2145527368, i32 -2145527313, i32 -2145527282}
!5725 = !DILocation(line: 134, column: 2, scope: !5726)
!5726 = distinct !DILexicalBlock(scope: !5719, file: !4610, line: 134, column: 2)
!5727 = !{i32 -2145526862, i32 -2145526855, i32 -2145526803, i32 -2145526772, i32 -2145526742}
!5728 = !DILocation(line: 134, column: 2, scope: !5729)
!5729 = distinct !DILexicalBlock(scope: !5719, file: !4610, line: 134, column: 2)
!5730 = !DILocation(line: 134, column: 2, scope: !5731)
!5731 = distinct !DILexicalBlock(scope: !5715, file: !4610, line: 134, column: 2)
!5732 = !DILocation(line: 135, column: 1, scope: !5702)
!5733 = distinct !DISubprogram(name: "check_object_size", scope: !4610, file: !4610, line: 122, type: !5734, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !212)
!5734 = !DISubroutineType(types: !5735)
!5735 = !{null, !2097, !290, !456}
!5736 = !DILocalVariable(name: "ptr", arg: 1, scope: !5733, file: !4610, line: 122, type: !2097)
!5737 = !DILocation(line: 122, column: 50, scope: !5733)
!5738 = !DILocalVariable(name: "n", arg: 2, scope: !5733, file: !4610, line: 122, type: !290)
!5739 = !DILocation(line: 122, column: 69, scope: !5733)
!5740 = !DILocalVariable(name: "to_user", arg: 3, scope: !5733, file: !4610, line: 123, type: !456)
!5741 = !DILocation(line: 123, column: 15, scope: !5733)
!5742 = !DILocation(line: 124, column: 3, scope: !5733)
