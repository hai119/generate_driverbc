; ModuleID = '../bcout/drivers/input/joystick/iforce/iforce-ff.llvm.bc'
source_filename = "drivers/input/joystick/iforce/iforce-ff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.iforce = type { %struct.input_dev*, %struct.iforce_device*, %struct.iforce_xport_ops*, %struct.spinlock, %struct.circ_buf, [256 x i8], [1 x i64], %struct.wait_queue_head, %struct.resource, [32 x %struct.iforce_core_effect], %struct.mutex }
%struct.input_dev = type { i8*, i8*, i8*, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, i8*, i32 (%struct.input_dev*, %struct.input_keymap_entry*, i32*)*, i32 (%struct.input_dev*, %struct.input_keymap_entry*)*, %struct.ff_device*, %struct.input_dev_poller*, i32, %struct.timer_list, [2 x i32], %struct.input_mt*, %struct.input_absinfo*, [12 x i64], [1 x i64], [1 x i64], [1 x i64], i32 (%struct.input_dev*)*, void (%struct.input_dev*)*, i32 (%struct.input_dev*, %struct.file*)*, i32 (%struct.input_dev*, i32, i32, i32)*, %struct.input_handle*, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, %struct.input_value*, i8, [3 x i64] }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }
%struct.ff_device = type { i32 (%struct.input_dev*, %struct.ff_effect*, %struct.ff_effect*)*, i32 (%struct.input_dev*, i32)*, i32 (%struct.input_dev*, i32, i32)*, void (%struct.input_dev*, i16)*, void (%struct.input_dev*, i16)*, void (%struct.ff_device*)*, i8*, [2 x i64], %struct.mutex, i32, %struct.ff_effect*, [0 x %struct.file*] }
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
%struct.seq_file = type opaque
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
%struct.input_dev_poller = type opaque
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.input_mt = type opaque
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.input_handle = type { i8*, i32, i8*, %struct.input_dev*, %struct.input_handler*, %struct.list_head, %struct.list_head }
%struct.input_handler = type { i8*, void (%struct.input_handle*, i32, i32, i32)*, void (%struct.input_handle*, %struct.input_value*, i32)*, i1 (%struct.input_handle*, i32, i32, i32)*, i1 (%struct.input_handler*, %struct.input_dev*)*, i32 (%struct.input_handler*, %struct.input_dev*, %struct.input_device_id*)*, void (%struct.input_handle*)*, void (%struct.input_handle*)*, i8, i32, i8*, %struct.input_device_id*, %struct.list_head, %struct.list_head }
%struct.input_device_id = type { i64, i16, i16, i16, i16, [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], [1 x i64], i64 }
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
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.input_value = type { i16, i16, i32 }
%struct.iforce_device = type { i16, i16, i8*, i16*, i16*, i16* }
%struct.iforce_xport_ops = type { void (%struct.iforce*)*, i32 (%struct.iforce*, i8, i8*, i64*)*, i32 (%struct.iforce*)*, void (%struct.iforce*)* }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.circ_buf = type { i8*, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.iforce_core_effect = type { %struct.resource, %struct.resource, [1 x i64] }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, i16* }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.ff_constant_effect = type { i16, %struct.ff_envelope }
%struct.ff_condition_effect = type { i16, i16, i16, i16, i16, i16 }

@.str = private unnamed_addr constant [23 x i8] c"bad effect type in %s\0A\00", align 1
@__func__.need_period_modifier = private unnamed_addr constant [21 x i8] c"need_period_modifier\00", align 1
@__func__.need_envelope_modifier = private unnamed_addr constant [23 x i8] c"need_envelope_modifier\00", align 1
@__func__.need_magnitude_modifier = private unnamed_addr constant [24 x i8] c"need_magnitude_modifier\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"magnitude\00", align 1
@__func__.need_condition_modifier = private unnamed_addr constant [24 x i8] c"need_condition_modifier\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"condition\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @iforce_upload_periodic(%struct.iforce* %iforce, %struct.ff_effect* %effect, %struct.ff_effect* %old) #0 !dbg !99 {
entry:
  %retval = alloca i32, align 4
  %iforce.addr = alloca %struct.iforce*, align 8
  %effect.addr = alloca %struct.ff_effect*, align 8
  %old.addr = alloca %struct.ff_effect*, align 8
  %wave_code = alloca i8, align 1
  %core_id = alloca i32, align 4
  %core_effect = alloca %struct.iforce_core_effect*, align 8
  %mod1_chunk = alloca %struct.resource*, align 8
  %mod2_chunk = alloca %struct.resource*, align 8
  %param1_err = alloca i32, align 4
  %param2_err = alloca i32, align 4
  %core_err = alloca i32, align 4
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !3824, metadata !DIExpression()), !dbg !3825
  store %struct.ff_effect* %effect, %struct.ff_effect** %effect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %effect.addr, metadata !3826, metadata !DIExpression()), !dbg !3827
  store %struct.ff_effect* %old, %struct.ff_effect** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %old.addr, metadata !3828, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.declare(metadata i8* %wave_code, metadata !3830, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.declare(metadata i32* %core_id, metadata !3832, metadata !DIExpression()), !dbg !3833
  %0 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3834
  %id = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %0, i32 0, i32 1, !dbg !3835
  %1 = load i16, i16* %id, align 2, !dbg !3835
  %conv = sext i16 %1 to i32, !dbg !3834
  store i32 %conv, i32* %core_id, align 4, !dbg !3833
  call void @llvm.dbg.declare(metadata %struct.iforce_core_effect** %core_effect, metadata !3836, metadata !DIExpression()), !dbg !3838
  %2 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3839
  %core_effects = getelementptr inbounds %struct.iforce, %struct.iforce* %2, i32 0, i32 9, !dbg !3840
  %arraydecay = getelementptr inbounds [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects, i64 0, i64 0, !dbg !3839
  %3 = load i32, i32* %core_id, align 4, !dbg !3841
  %idx.ext = sext i32 %3 to i64, !dbg !3842
  %add.ptr = getelementptr %struct.iforce_core_effect, %struct.iforce_core_effect* %arraydecay, i64 %idx.ext, !dbg !3842
  store %struct.iforce_core_effect* %add.ptr, %struct.iforce_core_effect** %core_effect, align 8, !dbg !3838
  call void @llvm.dbg.declare(metadata %struct.resource** %mod1_chunk, metadata !3843, metadata !DIExpression()), !dbg !3844
  %4 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3845
  %core_effects1 = getelementptr inbounds %struct.iforce, %struct.iforce* %4, i32 0, i32 9, !dbg !3846
  %5 = load i32, i32* %core_id, align 4, !dbg !3847
  %idxprom = sext i32 %5 to i64, !dbg !3845
  %arrayidx = getelementptr [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects1, i64 0, i64 %idxprom, !dbg !3845
  %mod1_chunk2 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %arrayidx, i32 0, i32 0, !dbg !3848
  store %struct.resource* %mod1_chunk2, %struct.resource** %mod1_chunk, align 8, !dbg !3844
  call void @llvm.dbg.declare(metadata %struct.resource** %mod2_chunk, metadata !3849, metadata !DIExpression()), !dbg !3850
  %6 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3851
  %core_effects3 = getelementptr inbounds %struct.iforce, %struct.iforce* %6, i32 0, i32 9, !dbg !3852
  %7 = load i32, i32* %core_id, align 4, !dbg !3853
  %idxprom4 = sext i32 %7 to i64, !dbg !3851
  %arrayidx5 = getelementptr [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects3, i64 0, i64 %idxprom4, !dbg !3851
  %mod2_chunk6 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %arrayidx5, i32 0, i32 1, !dbg !3854
  store %struct.resource* %mod2_chunk6, %struct.resource** %mod2_chunk, align 8, !dbg !3850
  call void @llvm.dbg.declare(metadata i32* %param1_err, metadata !3855, metadata !DIExpression()), !dbg !3856
  store i32 1, i32* %param1_err, align 4, !dbg !3856
  call void @llvm.dbg.declare(metadata i32* %param2_err, metadata !3857, metadata !DIExpression()), !dbg !3858
  store i32 1, i32* %param2_err, align 4, !dbg !3858
  call void @llvm.dbg.declare(metadata i32* %core_err, metadata !3859, metadata !DIExpression()), !dbg !3860
  store i32 0, i32* %core_err, align 4, !dbg !3860
  %8 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !3861
  %tobool = icmp ne %struct.ff_effect* %8, null, !dbg !3861
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3863

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3864
  %10 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !3865
  %11 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3866
  %call = call i32 @need_period_modifier(%struct.iforce* %9, %struct.ff_effect* %10, %struct.ff_effect* %11) #5, !dbg !3867
  %tobool7 = icmp ne i32 %call, 0, !dbg !3867
  br i1 %tobool7, label %if.then, label %if.end19, !dbg !3868

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3869
  %13 = load %struct.resource*, %struct.resource** %mod1_chunk, align 8, !dbg !3871
  %14 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !3872
  %cmp = icmp ne %struct.ff_effect* %14, null, !dbg !3873
  %conv8 = zext i1 %cmp to i32, !dbg !3873
  %15 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3874
  %u = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %15, i32 0, i32 5, !dbg !3875
  %periodic = bitcast %union.anon* %u to %struct.ff_periodic_effect*, !dbg !3876
  %magnitude = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic, i32 0, i32 2, !dbg !3877
  %16 = load i16, i16* %magnitude, align 4, !dbg !3877
  %17 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3878
  %u9 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %17, i32 0, i32 5, !dbg !3879
  %periodic10 = bitcast %union.anon* %u9 to %struct.ff_periodic_effect*, !dbg !3880
  %offset = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic10, i32 0, i32 3, !dbg !3881
  %18 = load i16, i16* %offset, align 2, !dbg !3881
  %19 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3882
  %u11 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %19, i32 0, i32 5, !dbg !3883
  %periodic12 = bitcast %union.anon* %u11 to %struct.ff_periodic_effect*, !dbg !3884
  %period = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic12, i32 0, i32 1, !dbg !3885
  %20 = load i16, i16* %period, align 2, !dbg !3885
  %21 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3886
  %u13 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %21, i32 0, i32 5, !dbg !3887
  %periodic14 = bitcast %union.anon* %u13 to %struct.ff_periodic_effect*, !dbg !3888
  %phase = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic14, i32 0, i32 4, !dbg !3889
  %22 = load i16, i16* %phase, align 8, !dbg !3889
  %call15 = call i32 @make_period_modifier(%struct.iforce* %12, %struct.resource* %13, i32 %conv8, i16 signext %16, i16 signext %18, i16 zeroext %20, i16 zeroext %22) #5, !dbg !3890
  store i32 %call15, i32* %param1_err, align 4, !dbg !3891
  %23 = load i32, i32* %param1_err, align 4, !dbg !3892
  %tobool16 = icmp ne i32 %23, 0, !dbg !3892
  br i1 %tobool16, label %if.then17, label %if.end, !dbg !3894

if.then17:                                        ; preds = %if.then
  %24 = load i32, i32* %param1_err, align 4, !dbg !3895
  store i32 %24, i32* %retval, align 4, !dbg !3896
  br label %return, !dbg !3896

if.end:                                           ; preds = %if.then
  %25 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !3897
  %flags = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %25, i32 0, i32 2, !dbg !3898
  %arraydecay18 = getelementptr inbounds [1 x i64], [1 x i64]* %flags, i64 0, i64 0, !dbg !3897
  call void @set_bit(i64 0, i64* %arraydecay18) #5, !dbg !3899
  br label %if.end19, !dbg !3900

if.end19:                                         ; preds = %if.end, %lor.lhs.false
  %26 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !3901
  %tobool20 = icmp ne %struct.ff_effect* %26, null, !dbg !3901
  br i1 %tobool20, label %lor.lhs.false21, label %if.then24, !dbg !3903

lor.lhs.false21:                                  ; preds = %if.end19
  %27 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3904
  %28 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !3905
  %29 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3906
  %call22 = call i32 @need_envelope_modifier(%struct.iforce* %27, %struct.ff_effect* %28, %struct.ff_effect* %29) #5, !dbg !3907
  %tobool23 = icmp ne i32 %call22, 0, !dbg !3907
  br i1 %tobool23, label %if.then24, label %if.end44, !dbg !3908

if.then24:                                        ; preds = %lor.lhs.false21, %if.end19
  %30 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3909
  %31 = load %struct.resource*, %struct.resource** %mod2_chunk, align 8, !dbg !3911
  %32 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !3912
  %cmp25 = icmp ne %struct.ff_effect* %32, null, !dbg !3913
  %conv26 = zext i1 %cmp25 to i32, !dbg !3913
  %33 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3914
  %u27 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %33, i32 0, i32 5, !dbg !3915
  %periodic28 = bitcast %union.anon* %u27 to %struct.ff_periodic_effect*, !dbg !3916
  %envelope = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic28, i32 0, i32 5, !dbg !3917
  %attack_length = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope, i32 0, i32 0, !dbg !3918
  %34 = load i16, i16* %attack_length, align 2, !dbg !3918
  %35 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3919
  %u29 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %35, i32 0, i32 5, !dbg !3920
  %periodic30 = bitcast %union.anon* %u29 to %struct.ff_periodic_effect*, !dbg !3921
  %envelope31 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic30, i32 0, i32 5, !dbg !3922
  %attack_level = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope31, i32 0, i32 1, !dbg !3923
  %36 = load i16, i16* %attack_level, align 2, !dbg !3923
  %37 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3924
  %u32 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %37, i32 0, i32 5, !dbg !3925
  %periodic33 = bitcast %union.anon* %u32 to %struct.ff_periodic_effect*, !dbg !3926
  %envelope34 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic33, i32 0, i32 5, !dbg !3927
  %fade_length = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope34, i32 0, i32 2, !dbg !3928
  %38 = load i16, i16* %fade_length, align 2, !dbg !3928
  %39 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3929
  %u35 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %39, i32 0, i32 5, !dbg !3930
  %periodic36 = bitcast %union.anon* %u35 to %struct.ff_periodic_effect*, !dbg !3931
  %envelope37 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic36, i32 0, i32 5, !dbg !3932
  %fade_level = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope37, i32 0, i32 3, !dbg !3933
  %40 = load i16, i16* %fade_level, align 2, !dbg !3933
  %call38 = call i32 @make_envelope_modifier(%struct.iforce* %30, %struct.resource* %31, i32 %conv26, i16 zeroext %34, i16 signext %36, i16 zeroext %38, i16 signext %40) #5, !dbg !3934
  store i32 %call38, i32* %param2_err, align 4, !dbg !3935
  %41 = load i32, i32* %param2_err, align 4, !dbg !3936
  %tobool39 = icmp ne i32 %41, 0, !dbg !3936
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !3938

if.then40:                                        ; preds = %if.then24
  %42 = load i32, i32* %param2_err, align 4, !dbg !3939
  store i32 %42, i32* %retval, align 4, !dbg !3940
  br label %return, !dbg !3940

if.end41:                                         ; preds = %if.then24
  %43 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !3941
  %flags42 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %43, i32 0, i32 2, !dbg !3942
  %arraydecay43 = getelementptr inbounds [1 x i64], [1 x i64]* %flags42, i64 0, i64 0, !dbg !3941
  call void @set_bit(i64 1, i64* %arraydecay43) #5, !dbg !3943
  br label %if.end44, !dbg !3944

if.end44:                                         ; preds = %if.end41, %lor.lhs.false21
  %44 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3945
  %u45 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %44, i32 0, i32 5, !dbg !3946
  %periodic46 = bitcast %union.anon* %u45 to %struct.ff_periodic_effect*, !dbg !3947
  %waveform = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic46, i32 0, i32 0, !dbg !3948
  %45 = load i16, i16* %waveform, align 8, !dbg !3948
  %conv47 = zext i16 %45 to i32, !dbg !3945
  switch i32 %conv47, label %sw.default [
    i32 88, label %sw.bb
    i32 89, label %sw.bb48
    i32 90, label %sw.bb49
    i32 91, label %sw.bb50
    i32 92, label %sw.bb51
  ], !dbg !3949

sw.bb:                                            ; preds = %if.end44
  store i8 32, i8* %wave_code, align 1, !dbg !3950
  br label %sw.epilog, !dbg !3952

sw.bb48:                                          ; preds = %if.end44
  store i8 33, i8* %wave_code, align 1, !dbg !3953
  br label %sw.epilog, !dbg !3954

sw.bb49:                                          ; preds = %if.end44
  store i8 34, i8* %wave_code, align 1, !dbg !3955
  br label %sw.epilog, !dbg !3956

sw.bb50:                                          ; preds = %if.end44
  store i8 35, i8* %wave_code, align 1, !dbg !3957
  br label %sw.epilog, !dbg !3958

sw.bb51:                                          ; preds = %if.end44
  store i8 36, i8* %wave_code, align 1, !dbg !3959
  br label %sw.epilog, !dbg !3960

sw.default:                                       ; preds = %if.end44
  store i8 32, i8* %wave_code, align 1, !dbg !3961
  br label %sw.epilog, !dbg !3962

sw.epilog:                                        ; preds = %sw.default, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb
  %46 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !3963
  %tobool52 = icmp ne %struct.ff_effect* %46, null, !dbg !3963
  br i1 %tobool52, label %lor.lhs.false53, label %if.then56, !dbg !3965

lor.lhs.false53:                                  ; preds = %sw.epilog
  %47 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !3966
  %48 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3967
  %call54 = call i32 @need_core(%struct.ff_effect* %47, %struct.ff_effect* %48) #5, !dbg !3968
  %tobool55 = icmp ne i32 %call54, 0, !dbg !3968
  br i1 %tobool55, label %if.then56, label %if.end64, !dbg !3969

if.then56:                                        ; preds = %lor.lhs.false53, %sw.epilog
  %49 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !3970
  %50 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3972
  %id57 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %50, i32 0, i32 1, !dbg !3973
  %51 = load i16, i16* %id57, align 2, !dbg !3973
  %52 = load %struct.resource*, %struct.resource** %mod1_chunk, align 8, !dbg !3974
  %start = getelementptr inbounds %struct.resource, %struct.resource* %52, i32 0, i32 0, !dbg !3975
  %53 = load i64, i64* %start, align 8, !dbg !3975
  %conv58 = trunc i64 %53 to i16, !dbg !3974
  %54 = load %struct.resource*, %struct.resource** %mod2_chunk, align 8, !dbg !3976
  %start59 = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 0, !dbg !3977
  %55 = load i64, i64* %start59, align 8, !dbg !3977
  %conv60 = trunc i64 %55 to i16, !dbg !3976
  %56 = load i8, i8* %wave_code, align 1, !dbg !3978
  %57 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3979
  %replay = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %57, i32 0, i32 4, !dbg !3980
  %length = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay, i32 0, i32 0, !dbg !3981
  %58 = load i16, i16* %length, align 2, !dbg !3981
  %59 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3982
  %replay61 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %59, i32 0, i32 4, !dbg !3983
  %delay = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay61, i32 0, i32 1, !dbg !3984
  %60 = load i16, i16* %delay, align 2, !dbg !3984
  %61 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3985
  %trigger = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %61, i32 0, i32 3, !dbg !3986
  %button = getelementptr inbounds %struct.ff_trigger, %struct.ff_trigger* %trigger, i32 0, i32 0, !dbg !3987
  %62 = load i16, i16* %button, align 2, !dbg !3987
  %63 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3988
  %trigger62 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %63, i32 0, i32 3, !dbg !3989
  %interval = getelementptr inbounds %struct.ff_trigger, %struct.ff_trigger* %trigger62, i32 0, i32 1, !dbg !3990
  %64 = load i16, i16* %interval, align 2, !dbg !3990
  %65 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !3991
  %direction = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %65, i32 0, i32 2, !dbg !3992
  %66 = load i16, i16* %direction, align 4, !dbg !3992
  %call63 = call i32 @make_core(%struct.iforce* %49, i16 zeroext %51, i16 zeroext %conv58, i16 zeroext %conv60, i8 zeroext %56, i8 zeroext 32, i16 zeroext %58, i16 zeroext %60, i16 zeroext %62, i16 zeroext %64, i16 zeroext %66) #5, !dbg !3993
  store i32 %call63, i32* %core_err, align 4, !dbg !3994
  br label %if.end64, !dbg !3995

if.end64:                                         ; preds = %if.then56, %lor.lhs.false53
  %67 = load i32, i32* %core_err, align 4, !dbg !3996
  %cmp65 = icmp slt i32 %67, 0, !dbg !3997
  br i1 %cmp65, label %cond.true, label %cond.false, !dbg !3996

cond.true:                                        ; preds = %if.end64
  %68 = load i32, i32* %core_err, align 4, !dbg !3998
  br label %cond.end, !dbg !3996

cond.false:                                       ; preds = %if.end64
  %69 = load i32, i32* %param1_err, align 4, !dbg !3999
  %tobool67 = icmp ne i32 %69, 0, !dbg !3999
  br i1 %tobool67, label %land.rhs, label %land.end, !dbg !4000

land.rhs:                                         ; preds = %cond.false
  %70 = load i32, i32* %param2_err, align 4, !dbg !4001
  %tobool68 = icmp ne i32 %70, 0, !dbg !4000
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false
  %71 = phi i1 [ false, %cond.false ], [ %tobool68, %land.rhs ], !dbg !4002
  %land.ext = zext i1 %71 to i32, !dbg !4000
  br label %cond.end, !dbg !3996

cond.end:                                         ; preds = %land.end, %cond.true
  %cond = phi i32 [ %68, %cond.true ], [ %land.ext, %land.end ], !dbg !3996
  store i32 %cond, i32* %retval, align 4, !dbg !4003
  br label %return, !dbg !4003

return:                                           ; preds = %cond.end, %if.then40, %if.then17
  %72 = load i32, i32* %retval, align 4, !dbg !4004
  ret i32 %72, !dbg !4004
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @need_period_modifier(%struct.iforce* %iforce, %struct.ff_effect* %old, %struct.ff_effect* %new) #0 !dbg !4005 {
entry:
  %retval = alloca i32, align 4
  %iforce.addr = alloca %struct.iforce*, align 8
  %old.addr = alloca %struct.ff_effect*, align 8
  %new.addr = alloca %struct.ff_effect*, align 8
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !4006, metadata !DIExpression()), !dbg !4007
  store %struct.ff_effect* %old, %struct.ff_effect** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %old.addr, metadata !4008, metadata !DIExpression()), !dbg !4009
  store %struct.ff_effect* %new, %struct.ff_effect** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %new.addr, metadata !4010, metadata !DIExpression()), !dbg !4011
  %0 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !4012
  %type = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %0, i32 0, i32 0, !dbg !4014
  %1 = load i16, i16* %type, align 8, !dbg !4014
  %conv = zext i16 %1 to i32, !dbg !4012
  %cmp = icmp ne i32 %conv, 81, !dbg !4015
  br i1 %cmp, label %if.then, label %if.end, !dbg !4016

if.then:                                          ; preds = %entry
  %2 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4017
  %dev = getelementptr inbounds %struct.iforce, %struct.iforce* %2, i32 0, i32 0, !dbg !4017
  %3 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4017
  %dev2 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %3, i32 0, i32 40, !dbg !4017
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.need_period_modifier, i64 0, i64 0)) #6, !dbg !4017
  store i32 0, i32* %retval, align 4, !dbg !4019
  br label %return, !dbg !4019

if.end:                                           ; preds = %entry
  %4 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4020
  %u = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %4, i32 0, i32 5, !dbg !4021
  %periodic = bitcast %union.anon* %u to %struct.ff_periodic_effect*, !dbg !4022
  %period = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic, i32 0, i32 1, !dbg !4023
  %5 = load i16, i16* %period, align 2, !dbg !4023
  %conv3 = zext i16 %5 to i32, !dbg !4020
  %6 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !4024
  %u4 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %6, i32 0, i32 5, !dbg !4025
  %periodic5 = bitcast %union.anon* %u4 to %struct.ff_periodic_effect*, !dbg !4026
  %period6 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic5, i32 0, i32 1, !dbg !4027
  %7 = load i16, i16* %period6, align 2, !dbg !4027
  %conv7 = zext i16 %7 to i32, !dbg !4024
  %cmp8 = icmp ne i32 %conv3, %conv7, !dbg !4028
  br i1 %cmp8, label %lor.end, label %lor.lhs.false, !dbg !4029

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4030
  %u10 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %8, i32 0, i32 5, !dbg !4031
  %periodic11 = bitcast %union.anon* %u10 to %struct.ff_periodic_effect*, !dbg !4032
  %magnitude = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic11, i32 0, i32 2, !dbg !4033
  %9 = load i16, i16* %magnitude, align 4, !dbg !4033
  %conv12 = sext i16 %9 to i32, !dbg !4030
  %10 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !4034
  %u13 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %10, i32 0, i32 5, !dbg !4035
  %periodic14 = bitcast %union.anon* %u13 to %struct.ff_periodic_effect*, !dbg !4036
  %magnitude15 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic14, i32 0, i32 2, !dbg !4037
  %11 = load i16, i16* %magnitude15, align 4, !dbg !4037
  %conv16 = sext i16 %11 to i32, !dbg !4034
  %cmp17 = icmp ne i32 %conv12, %conv16, !dbg !4038
  br i1 %cmp17, label %lor.end, label %lor.lhs.false19, !dbg !4039

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %12 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4040
  %u20 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %12, i32 0, i32 5, !dbg !4041
  %periodic21 = bitcast %union.anon* %u20 to %struct.ff_periodic_effect*, !dbg !4042
  %offset = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic21, i32 0, i32 3, !dbg !4043
  %13 = load i16, i16* %offset, align 2, !dbg !4043
  %conv22 = sext i16 %13 to i32, !dbg !4040
  %14 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !4044
  %u23 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %14, i32 0, i32 5, !dbg !4045
  %periodic24 = bitcast %union.anon* %u23 to %struct.ff_periodic_effect*, !dbg !4046
  %offset25 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic24, i32 0, i32 3, !dbg !4047
  %15 = load i16, i16* %offset25, align 2, !dbg !4047
  %conv26 = sext i16 %15 to i32, !dbg !4044
  %cmp27 = icmp ne i32 %conv22, %conv26, !dbg !4048
  br i1 %cmp27, label %lor.end, label %lor.rhs, !dbg !4049

lor.rhs:                                          ; preds = %lor.lhs.false19
  %16 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4050
  %u29 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %16, i32 0, i32 5, !dbg !4051
  %periodic30 = bitcast %union.anon* %u29 to %struct.ff_periodic_effect*, !dbg !4052
  %phase = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic30, i32 0, i32 4, !dbg !4053
  %17 = load i16, i16* %phase, align 8, !dbg !4053
  %conv31 = zext i16 %17 to i32, !dbg !4050
  %18 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !4054
  %u32 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %18, i32 0, i32 5, !dbg !4055
  %periodic33 = bitcast %union.anon* %u32 to %struct.ff_periodic_effect*, !dbg !4056
  %phase34 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic33, i32 0, i32 4, !dbg !4057
  %19 = load i16, i16* %phase34, align 8, !dbg !4057
  %conv35 = zext i16 %19 to i32, !dbg !4054
  %cmp36 = icmp ne i32 %conv31, %conv35, !dbg !4058
  br label %lor.end, !dbg !4049

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false19, %lor.lhs.false, %if.end
  %20 = phi i1 [ true, %lor.lhs.false19 ], [ true, %lor.lhs.false ], [ true, %if.end ], [ %cmp36, %lor.rhs ]
  %lor.ext = zext i1 %20 to i32, !dbg !4049
  store i32 %lor.ext, i32* %retval, align 4, !dbg !4059
  br label %return, !dbg !4059

return:                                           ; preds = %lor.end, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !4060
  ret i32 %21, !dbg !4060
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @make_period_modifier(%struct.iforce* %iforce, %struct.resource* %mod_chunk, i32 %no_alloc, i16 signext %magnitude, i16 signext %offset, i16 zeroext %period, i16 zeroext %phase) #0 !dbg !4061 {
entry:
  %retval = alloca i32, align 4
  %iforce.addr = alloca %struct.iforce*, align 8
  %mod_chunk.addr = alloca %struct.resource*, align 8
  %no_alloc.addr = alloca i32, align 4
  %magnitude.addr = alloca i16, align 2
  %offset.addr = alloca i16, align 2
  %period.addr = alloca i16, align 2
  %phase.addr = alloca i16, align 2
  %data = alloca [7 x i8], align 1
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !4064, metadata !DIExpression()), !dbg !4065
  store %struct.resource* %mod_chunk, %struct.resource** %mod_chunk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %mod_chunk.addr, metadata !4066, metadata !DIExpression()), !dbg !4067
  store i32 %no_alloc, i32* %no_alloc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %no_alloc.addr, metadata !4068, metadata !DIExpression()), !dbg !4069
  store i16 %magnitude, i16* %magnitude.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %magnitude.addr, metadata !4070, metadata !DIExpression()), !dbg !4071
  store i16 %offset, i16* %offset.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %offset.addr, metadata !4072, metadata !DIExpression()), !dbg !4073
  store i16 %period, i16* %period.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %period.addr, metadata !4074, metadata !DIExpression()), !dbg !4075
  store i16 %phase, i16* %phase.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %phase.addr, metadata !4076, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.declare(metadata [7 x i8]* %data, metadata !4078, metadata !DIExpression()), !dbg !4082
  %0 = load i16, i16* %period.addr, align 2, !dbg !4083
  store i16 %0, i16* %period.addr, align 2, !dbg !4084
  %1 = load i32, i32* %no_alloc.addr, align 4, !dbg !4085
  %tobool = icmp ne i32 %1, 0, !dbg !4085
  br i1 %tobool, label %if.end7, label %if.then, !dbg !4087

if.then:                                          ; preds = %entry
  %2 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4088
  %mem_mutex = getelementptr inbounds %struct.iforce, %struct.iforce* %2, i32 0, i32 10, !dbg !4090
  call void @mutex_lock(%struct.mutex* %mem_mutex) #5, !dbg !4091
  %3 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4092
  %device_memory = getelementptr inbounds %struct.iforce, %struct.iforce* %3, i32 0, i32 8, !dbg !4094
  %4 = load %struct.resource*, %struct.resource** %mod_chunk.addr, align 8, !dbg !4095
  %5 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4096
  %device_memory1 = getelementptr inbounds %struct.iforce, %struct.iforce* %5, i32 0, i32 8, !dbg !4097
  %start = getelementptr inbounds %struct.resource, %struct.resource* %device_memory1, i32 0, i32 0, !dbg !4098
  %6 = load i64, i64* %start, align 8, !dbg !4098
  %7 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4099
  %device_memory2 = getelementptr inbounds %struct.iforce, %struct.iforce* %7, i32 0, i32 8, !dbg !4100
  %end = getelementptr inbounds %struct.resource, %struct.resource* %device_memory2, i32 0, i32 1, !dbg !4101
  %8 = load i64, i64* %end, align 8, !dbg !4101
  %call = call i32 @allocate_resource(%struct.resource* %device_memory, %struct.resource* %4, i64 12, i64 %6, i64 %8, i64 2, i64 (i8*, %struct.resource*, i64, i64)* null, i8* null) #5, !dbg !4102
  %tobool3 = icmp ne i32 %call, 0, !dbg !4102
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !4103

if.then4:                                         ; preds = %if.then
  %9 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4104
  %mem_mutex5 = getelementptr inbounds %struct.iforce, %struct.iforce* %9, i32 0, i32 10, !dbg !4106
  call void @mutex_unlock(%struct.mutex* %mem_mutex5) #5, !dbg !4107
  store i32 -28, i32* %retval, align 4, !dbg !4108
  br label %return, !dbg !4108

if.end:                                           ; preds = %if.then
  %10 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4109
  %mem_mutex6 = getelementptr inbounds %struct.iforce, %struct.iforce* %10, i32 0, i32 10, !dbg !4110
  call void @mutex_unlock(%struct.mutex* %mem_mutex6) #5, !dbg !4111
  br label %if.end7, !dbg !4112

if.end7:                                          ; preds = %if.end, %entry
  %11 = load %struct.resource*, %struct.resource** %mod_chunk.addr, align 8, !dbg !4113
  %start8 = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 0, !dbg !4113
  %12 = load i64, i64* %start8, align 8, !dbg !4113
  %and = and i64 %12, 255, !dbg !4113
  %conv = trunc i64 %and to i8, !dbg !4113
  %arrayidx = getelementptr [7 x i8], [7 x i8]* %data, i64 0, i64 0, !dbg !4114
  store i8 %conv, i8* %arrayidx, align 1, !dbg !4115
  %13 = load %struct.resource*, %struct.resource** %mod_chunk.addr, align 8, !dbg !4116
  %start9 = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 0, !dbg !4116
  %14 = load i64, i64* %start9, align 8, !dbg !4116
  %shr = lshr i64 %14, 8, !dbg !4116
  %conv10 = trunc i64 %shr to i8, !dbg !4116
  %arrayidx11 = getelementptr [7 x i8], [7 x i8]* %data, i64 0, i64 1, !dbg !4117
  store i8 %conv10, i8* %arrayidx11, align 1, !dbg !4118
  %15 = load i16, i16* %magnitude.addr, align 2, !dbg !4119
  %conv12 = sext i16 %15 to i32, !dbg !4119
  %cmp = icmp slt i32 %conv12, 0, !dbg !4119
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4119

cond.true:                                        ; preds = %if.end7
  %16 = load i16, i16* %magnitude.addr, align 2, !dbg !4119
  %conv14 = sext i16 %16 to i32, !dbg !4119
  %add = add i32 %conv14, 255, !dbg !4119
  br label %cond.end, !dbg !4119

cond.false:                                       ; preds = %if.end7
  %17 = load i16, i16* %magnitude.addr, align 2, !dbg !4119
  %conv15 = sext i16 %17 to i32, !dbg !4119
  br label %cond.end, !dbg !4119

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %conv15, %cond.false ], !dbg !4119
  %shr16 = ashr i32 %cond, 8, !dbg !4119
  %conv17 = trunc i32 %shr16 to i8, !dbg !4119
  %arrayidx18 = getelementptr [7 x i8], [7 x i8]* %data, i64 0, i64 2, !dbg !4120
  store i8 %conv17, i8* %arrayidx18, align 1, !dbg !4121
  %18 = load i16, i16* %offset.addr, align 2, !dbg !4122
  %conv19 = sext i16 %18 to i32, !dbg !4122
  %cmp20 = icmp slt i32 %conv19, 0, !dbg !4122
  br i1 %cmp20, label %cond.true22, label %cond.false25, !dbg !4122

cond.true22:                                      ; preds = %cond.end
  %19 = load i16, i16* %offset.addr, align 2, !dbg !4122
  %conv23 = sext i16 %19 to i32, !dbg !4122
  %add24 = add i32 %conv23, 255, !dbg !4122
  br label %cond.end27, !dbg !4122

cond.false25:                                     ; preds = %cond.end
  %20 = load i16, i16* %offset.addr, align 2, !dbg !4122
  %conv26 = sext i16 %20 to i32, !dbg !4122
  br label %cond.end27, !dbg !4122

cond.end27:                                       ; preds = %cond.false25, %cond.true22
  %cond28 = phi i32 [ %add24, %cond.true22 ], [ %conv26, %cond.false25 ], !dbg !4122
  %shr29 = ashr i32 %cond28, 8, !dbg !4122
  %conv30 = trunc i32 %shr29 to i8, !dbg !4122
  %arrayidx31 = getelementptr [7 x i8], [7 x i8]* %data, i64 0, i64 3, !dbg !4123
  store i8 %conv30, i8* %arrayidx31, align 1, !dbg !4124
  %21 = load i16, i16* %phase.addr, align 2, !dbg !4125
  %conv32 = zext i16 %21 to i32, !dbg !4125
  %shr33 = ashr i32 %conv32, 8, !dbg !4125
  %conv34 = trunc i32 %shr33 to i8, !dbg !4125
  %arrayidx35 = getelementptr [7 x i8], [7 x i8]* %data, i64 0, i64 4, !dbg !4126
  store i8 %conv34, i8* %arrayidx35, align 1, !dbg !4127
  %22 = load i16, i16* %period.addr, align 2, !dbg !4128
  %conv36 = zext i16 %22 to i32, !dbg !4128
  %and37 = and i32 %conv36, 255, !dbg !4128
  %conv38 = trunc i32 %and37 to i8, !dbg !4128
  %arrayidx39 = getelementptr [7 x i8], [7 x i8]* %data, i64 0, i64 5, !dbg !4129
  store i8 %conv38, i8* %arrayidx39, align 1, !dbg !4130
  %23 = load i16, i16* %period.addr, align 2, !dbg !4131
  %conv40 = zext i16 %23 to i32, !dbg !4131
  %shr41 = ashr i32 %conv40, 8, !dbg !4131
  %conv42 = trunc i32 %shr41 to i8, !dbg !4131
  %arrayidx43 = getelementptr [7 x i8], [7 x i8]* %data, i64 0, i64 6, !dbg !4132
  store i8 %conv42, i8* %arrayidx43, align 1, !dbg !4133
  %24 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4134
  %arraydecay = getelementptr inbounds [7 x i8], [7 x i8]* %data, i64 0, i64 0, !dbg !4135
  %call44 = call i32 @iforce_send_packet(%struct.iforce* %24, i16 zeroext 1031, i8* %arraydecay) #5, !dbg !4136
  store i32 0, i32* %retval, align 4, !dbg !4137
  br label %return, !dbg !4137

return:                                           ; preds = %cond.end27, %if.then4
  %25 = load i32, i32* %retval, align 4, !dbg !4138
  ret i32 %25, !dbg !4138
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !4139 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4145, metadata !DIExpression()), !dbg !4148
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4150, metadata !DIExpression()), !dbg !4151
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4152, metadata !DIExpression()), !dbg !4160
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4162, metadata !DIExpression()), !dbg !4163
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !4164, metadata !DIExpression()), !dbg !4165
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !4166, metadata !DIExpression()), !dbg !4167
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !4168
  %1 = load i64, i64* %nr.addr, align 8, !dbg !4169
  %div = sdiv i64 %1, 64, !dbg !4169
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !4170
  %2 = bitcast i64* %add.ptr to i8*, !dbg !4168
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !4171
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !4172
  %conv.i = trunc i64 %4 to i32, !dbg !4172
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #7, !dbg !4173
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !4174
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !4174
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #7, !dbg !4174
  %7 = load i64, i64* %nr.addr, align 8, !dbg !4175
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !4176
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !4177
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #8, !dbg !4179
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !4180

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !4181
  %12 = bitcast i64* %11 to i8*, !dbg !4181
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !4181
  %shr.i = ashr i64 %13, 3, !dbg !4181
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !4181
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !4183
  %and.i = and i64 %14, 7, !dbg !4183
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !4183
  %shl.i = shl i32 1, %sh_prom.i, !dbg !4183
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #8, !dbg !4184, !srcloc !4185
  br label %arch_set_bit.exit, !dbg !4186

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !4187
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !4189
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #8, !dbg !4190, !srcloc !4191
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !4192
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @need_envelope_modifier(%struct.iforce* %iforce, %struct.ff_effect* %old, %struct.ff_effect* %effect) #0 !dbg !4193 {
entry:
  %retval = alloca i32, align 4
  %iforce.addr = alloca %struct.iforce*, align 8
  %old.addr = alloca %struct.ff_effect*, align 8
  %effect.addr = alloca %struct.ff_effect*, align 8
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !4194, metadata !DIExpression()), !dbg !4195
  store %struct.ff_effect* %old, %struct.ff_effect** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %old.addr, metadata !4196, metadata !DIExpression()), !dbg !4197
  store %struct.ff_effect* %effect, %struct.ff_effect** %effect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %effect.addr, metadata !4198, metadata !DIExpression()), !dbg !4199
  %0 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4200
  %type = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %0, i32 0, i32 0, !dbg !4201
  %1 = load i16, i16* %type, align 8, !dbg !4201
  %conv = zext i16 %1 to i32, !dbg !4200
  switch i32 %conv, label %sw.default [
    i32 82, label %sw.bb
    i32 81, label %sw.bb43
  ], !dbg !4202

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4203
  %u = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %2, i32 0, i32 5, !dbg !4206
  %constant = bitcast %union.anon* %u to %struct.ff_constant_effect*, !dbg !4207
  %envelope = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant, i32 0, i32 1, !dbg !4208
  %attack_length = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope, i32 0, i32 0, !dbg !4209
  %3 = load i16, i16* %attack_length, align 2, !dbg !4209
  %conv1 = zext i16 %3 to i32, !dbg !4203
  %4 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4210
  %u2 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %4, i32 0, i32 5, !dbg !4211
  %constant3 = bitcast %union.anon* %u2 to %struct.ff_constant_effect*, !dbg !4212
  %envelope4 = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant3, i32 0, i32 1, !dbg !4213
  %attack_length5 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope4, i32 0, i32 0, !dbg !4214
  %5 = load i16, i16* %attack_length5, align 2, !dbg !4214
  %conv6 = zext i16 %5 to i32, !dbg !4210
  %cmp = icmp ne i32 %conv1, %conv6, !dbg !4215
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4216

lor.lhs.false:                                    ; preds = %sw.bb
  %6 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4217
  %u8 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %6, i32 0, i32 5, !dbg !4218
  %constant9 = bitcast %union.anon* %u8 to %struct.ff_constant_effect*, !dbg !4219
  %envelope10 = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant9, i32 0, i32 1, !dbg !4220
  %attack_level = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope10, i32 0, i32 1, !dbg !4221
  %7 = load i16, i16* %attack_level, align 2, !dbg !4221
  %conv11 = zext i16 %7 to i32, !dbg !4217
  %8 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4222
  %u12 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %8, i32 0, i32 5, !dbg !4223
  %constant13 = bitcast %union.anon* %u12 to %struct.ff_constant_effect*, !dbg !4224
  %envelope14 = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant13, i32 0, i32 1, !dbg !4225
  %attack_level15 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope14, i32 0, i32 1, !dbg !4226
  %9 = load i16, i16* %attack_level15, align 2, !dbg !4226
  %conv16 = zext i16 %9 to i32, !dbg !4222
  %cmp17 = icmp ne i32 %conv11, %conv16, !dbg !4227
  br i1 %cmp17, label %if.then, label %lor.lhs.false19, !dbg !4228

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %10 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4229
  %u20 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %10, i32 0, i32 5, !dbg !4230
  %constant21 = bitcast %union.anon* %u20 to %struct.ff_constant_effect*, !dbg !4231
  %envelope22 = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant21, i32 0, i32 1, !dbg !4232
  %fade_length = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope22, i32 0, i32 2, !dbg !4233
  %11 = load i16, i16* %fade_length, align 2, !dbg !4233
  %conv23 = zext i16 %11 to i32, !dbg !4229
  %12 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4234
  %u24 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %12, i32 0, i32 5, !dbg !4235
  %constant25 = bitcast %union.anon* %u24 to %struct.ff_constant_effect*, !dbg !4236
  %envelope26 = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant25, i32 0, i32 1, !dbg !4237
  %fade_length27 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope26, i32 0, i32 2, !dbg !4238
  %13 = load i16, i16* %fade_length27, align 2, !dbg !4238
  %conv28 = zext i16 %13 to i32, !dbg !4234
  %cmp29 = icmp ne i32 %conv23, %conv28, !dbg !4239
  br i1 %cmp29, label %if.then, label %lor.lhs.false31, !dbg !4240

lor.lhs.false31:                                  ; preds = %lor.lhs.false19
  %14 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4241
  %u32 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %14, i32 0, i32 5, !dbg !4242
  %constant33 = bitcast %union.anon* %u32 to %struct.ff_constant_effect*, !dbg !4243
  %envelope34 = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant33, i32 0, i32 1, !dbg !4244
  %fade_level = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope34, i32 0, i32 3, !dbg !4245
  %15 = load i16, i16* %fade_level, align 2, !dbg !4245
  %conv35 = zext i16 %15 to i32, !dbg !4241
  %16 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4246
  %u36 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %16, i32 0, i32 5, !dbg !4247
  %constant37 = bitcast %union.anon* %u36 to %struct.ff_constant_effect*, !dbg !4248
  %envelope38 = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant37, i32 0, i32 1, !dbg !4249
  %fade_level39 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope38, i32 0, i32 3, !dbg !4250
  %17 = load i16, i16* %fade_level39, align 2, !dbg !4250
  %conv40 = zext i16 %17 to i32, !dbg !4246
  %cmp41 = icmp ne i32 %conv35, %conv40, !dbg !4251
  br i1 %cmp41, label %if.then, label %if.end, !dbg !4252

if.then:                                          ; preds = %lor.lhs.false31, %lor.lhs.false19, %lor.lhs.false, %sw.bb
  store i32 1, i32* %retval, align 4, !dbg !4253
  br label %return, !dbg !4253

if.end:                                           ; preds = %lor.lhs.false31
  br label %sw.epilog, !dbg !4254

sw.bb43:                                          ; preds = %entry
  %18 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4255
  %u44 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %18, i32 0, i32 5, !dbg !4257
  %periodic = bitcast %union.anon* %u44 to %struct.ff_periodic_effect*, !dbg !4258
  %envelope45 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic, i32 0, i32 5, !dbg !4259
  %attack_length46 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope45, i32 0, i32 0, !dbg !4260
  %19 = load i16, i16* %attack_length46, align 2, !dbg !4260
  %conv47 = zext i16 %19 to i32, !dbg !4255
  %20 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4261
  %u48 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %20, i32 0, i32 5, !dbg !4262
  %periodic49 = bitcast %union.anon* %u48 to %struct.ff_periodic_effect*, !dbg !4263
  %envelope50 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic49, i32 0, i32 5, !dbg !4264
  %attack_length51 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope50, i32 0, i32 0, !dbg !4265
  %21 = load i16, i16* %attack_length51, align 2, !dbg !4265
  %conv52 = zext i16 %21 to i32, !dbg !4261
  %cmp53 = icmp ne i32 %conv47, %conv52, !dbg !4266
  br i1 %cmp53, label %if.then94, label %lor.lhs.false55, !dbg !4267

lor.lhs.false55:                                  ; preds = %sw.bb43
  %22 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4268
  %u56 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %22, i32 0, i32 5, !dbg !4269
  %periodic57 = bitcast %union.anon* %u56 to %struct.ff_periodic_effect*, !dbg !4270
  %envelope58 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic57, i32 0, i32 5, !dbg !4271
  %attack_level59 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope58, i32 0, i32 1, !dbg !4272
  %23 = load i16, i16* %attack_level59, align 2, !dbg !4272
  %conv60 = zext i16 %23 to i32, !dbg !4268
  %24 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4273
  %u61 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %24, i32 0, i32 5, !dbg !4274
  %periodic62 = bitcast %union.anon* %u61 to %struct.ff_periodic_effect*, !dbg !4275
  %envelope63 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic62, i32 0, i32 5, !dbg !4276
  %attack_level64 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope63, i32 0, i32 1, !dbg !4277
  %25 = load i16, i16* %attack_level64, align 2, !dbg !4277
  %conv65 = zext i16 %25 to i32, !dbg !4273
  %cmp66 = icmp ne i32 %conv60, %conv65, !dbg !4278
  br i1 %cmp66, label %if.then94, label %lor.lhs.false68, !dbg !4279

lor.lhs.false68:                                  ; preds = %lor.lhs.false55
  %26 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4280
  %u69 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %26, i32 0, i32 5, !dbg !4281
  %periodic70 = bitcast %union.anon* %u69 to %struct.ff_periodic_effect*, !dbg !4282
  %envelope71 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic70, i32 0, i32 5, !dbg !4283
  %fade_length72 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope71, i32 0, i32 2, !dbg !4284
  %27 = load i16, i16* %fade_length72, align 2, !dbg !4284
  %conv73 = zext i16 %27 to i32, !dbg !4280
  %28 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4285
  %u74 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %28, i32 0, i32 5, !dbg !4286
  %periodic75 = bitcast %union.anon* %u74 to %struct.ff_periodic_effect*, !dbg !4287
  %envelope76 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic75, i32 0, i32 5, !dbg !4288
  %fade_length77 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope76, i32 0, i32 2, !dbg !4289
  %29 = load i16, i16* %fade_length77, align 2, !dbg !4289
  %conv78 = zext i16 %29 to i32, !dbg !4285
  %cmp79 = icmp ne i32 %conv73, %conv78, !dbg !4290
  br i1 %cmp79, label %if.then94, label %lor.lhs.false81, !dbg !4291

lor.lhs.false81:                                  ; preds = %lor.lhs.false68
  %30 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4292
  %u82 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %30, i32 0, i32 5, !dbg !4293
  %periodic83 = bitcast %union.anon* %u82 to %struct.ff_periodic_effect*, !dbg !4294
  %envelope84 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic83, i32 0, i32 5, !dbg !4295
  %fade_level85 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope84, i32 0, i32 3, !dbg !4296
  %31 = load i16, i16* %fade_level85, align 2, !dbg !4296
  %conv86 = zext i16 %31 to i32, !dbg !4292
  %32 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4297
  %u87 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %32, i32 0, i32 5, !dbg !4298
  %periodic88 = bitcast %union.anon* %u87 to %struct.ff_periodic_effect*, !dbg !4299
  %envelope89 = getelementptr inbounds %struct.ff_periodic_effect, %struct.ff_periodic_effect* %periodic88, i32 0, i32 5, !dbg !4300
  %fade_level90 = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope89, i32 0, i32 3, !dbg !4301
  %33 = load i16, i16* %fade_level90, align 2, !dbg !4301
  %conv91 = zext i16 %33 to i32, !dbg !4297
  %cmp92 = icmp ne i32 %conv86, %conv91, !dbg !4302
  br i1 %cmp92, label %if.then94, label %if.end95, !dbg !4303

if.then94:                                        ; preds = %lor.lhs.false81, %lor.lhs.false68, %lor.lhs.false55, %sw.bb43
  store i32 1, i32* %retval, align 4, !dbg !4304
  br label %return, !dbg !4304

if.end95:                                         ; preds = %lor.lhs.false81
  br label %sw.epilog, !dbg !4305

sw.default:                                       ; preds = %entry
  %34 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4306
  %dev = getelementptr inbounds %struct.iforce, %struct.iforce* %34, i32 0, i32 0, !dbg !4306
  %35 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4306
  %dev96 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 40, !dbg !4306
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.need_envelope_modifier, i64 0, i64 0)) #6, !dbg !4306
  br label %sw.epilog, !dbg !4307

sw.epilog:                                        ; preds = %sw.default, %if.end95, %if.end
  store i32 0, i32* %retval, align 4, !dbg !4308
  br label %return, !dbg !4308

return:                                           ; preds = %sw.epilog, %if.then94, %if.then
  %36 = load i32, i32* %retval, align 4, !dbg !4309
  ret i32 %36, !dbg !4309
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @make_envelope_modifier(%struct.iforce* %iforce, %struct.resource* %mod_chunk, i32 %no_alloc, i16 zeroext %attack_duration, i16 signext %initial_level, i16 zeroext %fade_duration, i16 signext %final_level) #0 !dbg !4310 {
entry:
  %retval = alloca i32, align 4
  %iforce.addr = alloca %struct.iforce*, align 8
  %mod_chunk.addr = alloca %struct.resource*, align 8
  %no_alloc.addr = alloca i32, align 4
  %attack_duration.addr = alloca i16, align 2
  %initial_level.addr = alloca i16, align 2
  %fade_duration.addr = alloca i16, align 2
  %final_level.addr = alloca i16, align 2
  %data = alloca [8 x i8], align 1
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !4313, metadata !DIExpression()), !dbg !4314
  store %struct.resource* %mod_chunk, %struct.resource** %mod_chunk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %mod_chunk.addr, metadata !4315, metadata !DIExpression()), !dbg !4316
  store i32 %no_alloc, i32* %no_alloc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %no_alloc.addr, metadata !4317, metadata !DIExpression()), !dbg !4318
  store i16 %attack_duration, i16* %attack_duration.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %attack_duration.addr, metadata !4319, metadata !DIExpression()), !dbg !4320
  store i16 %initial_level, i16* %initial_level.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %initial_level.addr, metadata !4321, metadata !DIExpression()), !dbg !4322
  store i16 %fade_duration, i16* %fade_duration.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %fade_duration.addr, metadata !4323, metadata !DIExpression()), !dbg !4324
  store i16 %final_level, i16* %final_level.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %final_level.addr, metadata !4325, metadata !DIExpression()), !dbg !4326
  call void @llvm.dbg.declare(metadata [8 x i8]* %data, metadata !4327, metadata !DIExpression()), !dbg !4329
  %0 = load i16, i16* %attack_duration.addr, align 2, !dbg !4330
  store i16 %0, i16* %attack_duration.addr, align 2, !dbg !4331
  %1 = load i16, i16* %fade_duration.addr, align 2, !dbg !4332
  store i16 %1, i16* %fade_duration.addr, align 2, !dbg !4333
  %2 = load i32, i32* %no_alloc.addr, align 4, !dbg !4334
  %tobool = icmp ne i32 %2, 0, !dbg !4334
  br i1 %tobool, label %if.end7, label %if.then, !dbg !4336

if.then:                                          ; preds = %entry
  %3 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4337
  %mem_mutex = getelementptr inbounds %struct.iforce, %struct.iforce* %3, i32 0, i32 10, !dbg !4339
  call void @mutex_lock(%struct.mutex* %mem_mutex) #5, !dbg !4340
  %4 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4341
  %device_memory = getelementptr inbounds %struct.iforce, %struct.iforce* %4, i32 0, i32 8, !dbg !4343
  %5 = load %struct.resource*, %struct.resource** %mod_chunk.addr, align 8, !dbg !4344
  %6 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4345
  %device_memory1 = getelementptr inbounds %struct.iforce, %struct.iforce* %6, i32 0, i32 8, !dbg !4346
  %start = getelementptr inbounds %struct.resource, %struct.resource* %device_memory1, i32 0, i32 0, !dbg !4347
  %7 = load i64, i64* %start, align 8, !dbg !4347
  %8 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4348
  %device_memory2 = getelementptr inbounds %struct.iforce, %struct.iforce* %8, i32 0, i32 8, !dbg !4349
  %end = getelementptr inbounds %struct.resource, %struct.resource* %device_memory2, i32 0, i32 1, !dbg !4350
  %9 = load i64, i64* %end, align 8, !dbg !4350
  %call = call i32 @allocate_resource(%struct.resource* %device_memory, %struct.resource* %5, i64 14, i64 %7, i64 %9, i64 2, i64 (i8*, %struct.resource*, i64, i64)* null, i8* null) #5, !dbg !4351
  %tobool3 = icmp ne i32 %call, 0, !dbg !4351
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !4352

if.then4:                                         ; preds = %if.then
  %10 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4353
  %mem_mutex5 = getelementptr inbounds %struct.iforce, %struct.iforce* %10, i32 0, i32 10, !dbg !4355
  call void @mutex_unlock(%struct.mutex* %mem_mutex5) #5, !dbg !4356
  store i32 -28, i32* %retval, align 4, !dbg !4357
  br label %return, !dbg !4357

if.end:                                           ; preds = %if.then
  %11 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4358
  %mem_mutex6 = getelementptr inbounds %struct.iforce, %struct.iforce* %11, i32 0, i32 10, !dbg !4359
  call void @mutex_unlock(%struct.mutex* %mem_mutex6) #5, !dbg !4360
  br label %if.end7, !dbg !4361

if.end7:                                          ; preds = %if.end, %entry
  %12 = load %struct.resource*, %struct.resource** %mod_chunk.addr, align 8, !dbg !4362
  %start8 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0, !dbg !4362
  %13 = load i64, i64* %start8, align 8, !dbg !4362
  %and = and i64 %13, 255, !dbg !4362
  %conv = trunc i64 %and to i8, !dbg !4362
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %data, i64 0, i64 0, !dbg !4363
  store i8 %conv, i8* %arrayidx, align 1, !dbg !4364
  %14 = load %struct.resource*, %struct.resource** %mod_chunk.addr, align 8, !dbg !4365
  %start9 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 0, !dbg !4365
  %15 = load i64, i64* %start9, align 8, !dbg !4365
  %shr = lshr i64 %15, 8, !dbg !4365
  %conv10 = trunc i64 %shr to i8, !dbg !4365
  %arrayidx11 = getelementptr [8 x i8], [8 x i8]* %data, i64 0, i64 1, !dbg !4366
  store i8 %conv10, i8* %arrayidx11, align 1, !dbg !4367
  %16 = load i16, i16* %attack_duration.addr, align 2, !dbg !4368
  %conv12 = zext i16 %16 to i32, !dbg !4368
  %and13 = and i32 %conv12, 255, !dbg !4368
  %conv14 = trunc i32 %and13 to i8, !dbg !4368
  %arrayidx15 = getelementptr [8 x i8], [8 x i8]* %data, i64 0, i64 2, !dbg !4369
  store i8 %conv14, i8* %arrayidx15, align 1, !dbg !4370
  %17 = load i16, i16* %attack_duration.addr, align 2, !dbg !4371
  %conv16 = zext i16 %17 to i32, !dbg !4371
  %shr17 = ashr i32 %conv16, 8, !dbg !4371
  %conv18 = trunc i32 %shr17 to i8, !dbg !4371
  %arrayidx19 = getelementptr [8 x i8], [8 x i8]* %data, i64 0, i64 3, !dbg !4372
  store i8 %conv18, i8* %arrayidx19, align 1, !dbg !4373
  %18 = load i16, i16* %initial_level.addr, align 2, !dbg !4374
  %conv20 = sext i16 %18 to i32, !dbg !4374
  %shr21 = ashr i32 %conv20, 8, !dbg !4374
  %conv22 = trunc i32 %shr21 to i8, !dbg !4374
  %arrayidx23 = getelementptr [8 x i8], [8 x i8]* %data, i64 0, i64 4, !dbg !4375
  store i8 %conv22, i8* %arrayidx23, align 1, !dbg !4376
  %19 = load i16, i16* %fade_duration.addr, align 2, !dbg !4377
  %conv24 = zext i16 %19 to i32, !dbg !4377
  %and25 = and i32 %conv24, 255, !dbg !4377
  %conv26 = trunc i32 %and25 to i8, !dbg !4377
  %arrayidx27 = getelementptr [8 x i8], [8 x i8]* %data, i64 0, i64 5, !dbg !4378
  store i8 %conv26, i8* %arrayidx27, align 1, !dbg !4379
  %20 = load i16, i16* %fade_duration.addr, align 2, !dbg !4380
  %conv28 = zext i16 %20 to i32, !dbg !4380
  %shr29 = ashr i32 %conv28, 8, !dbg !4380
  %conv30 = trunc i32 %shr29 to i8, !dbg !4380
  %arrayidx31 = getelementptr [8 x i8], [8 x i8]* %data, i64 0, i64 6, !dbg !4381
  store i8 %conv30, i8* %arrayidx31, align 1, !dbg !4382
  %21 = load i16, i16* %final_level.addr, align 2, !dbg !4383
  %conv32 = sext i16 %21 to i32, !dbg !4383
  %shr33 = ashr i32 %conv32, 8, !dbg !4383
  %conv34 = trunc i32 %shr33 to i8, !dbg !4383
  %arrayidx35 = getelementptr [8 x i8], [8 x i8]* %data, i64 0, i64 7, !dbg !4384
  store i8 %conv34, i8* %arrayidx35, align 1, !dbg !4385
  %22 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4386
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %data, i64 0, i64 0, !dbg !4387
  %call36 = call i32 @iforce_send_packet(%struct.iforce* %22, i16 zeroext 520, i8* %arraydecay) #5, !dbg !4388
  store i32 0, i32* %retval, align 4, !dbg !4389
  br label %return, !dbg !4389

return:                                           ; preds = %if.end7, %if.then4
  %23 = load i32, i32* %retval, align 4, !dbg !4390
  ret i32 %23, !dbg !4390
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @need_core(%struct.ff_effect* %old, %struct.ff_effect* %new) #0 !dbg !4391 {
entry:
  %retval = alloca i32, align 4
  %old.addr = alloca %struct.ff_effect*, align 8
  %new.addr = alloca %struct.ff_effect*, align 8
  store %struct.ff_effect* %old, %struct.ff_effect** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %old.addr, metadata !4394, metadata !DIExpression()), !dbg !4395
  store %struct.ff_effect* %new, %struct.ff_effect** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %new.addr, metadata !4396, metadata !DIExpression()), !dbg !4397
  %0 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4398
  %direction = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %0, i32 0, i32 2, !dbg !4400
  %1 = load i16, i16* %direction, align 4, !dbg !4400
  %conv = zext i16 %1 to i32, !dbg !4398
  %2 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !4401
  %direction1 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %2, i32 0, i32 2, !dbg !4402
  %3 = load i16, i16* %direction1, align 4, !dbg !4402
  %conv2 = zext i16 %3 to i32, !dbg !4401
  %cmp = icmp ne i32 %conv, %conv2, !dbg !4403
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !4404

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4405
  %trigger = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %4, i32 0, i32 3, !dbg !4406
  %button = getelementptr inbounds %struct.ff_trigger, %struct.ff_trigger* %trigger, i32 0, i32 0, !dbg !4407
  %5 = load i16, i16* %button, align 2, !dbg !4407
  %conv4 = zext i16 %5 to i32, !dbg !4405
  %6 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !4408
  %trigger5 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %6, i32 0, i32 3, !dbg !4409
  %button6 = getelementptr inbounds %struct.ff_trigger, %struct.ff_trigger* %trigger5, i32 0, i32 0, !dbg !4410
  %7 = load i16, i16* %button6, align 2, !dbg !4410
  %conv7 = zext i16 %7 to i32, !dbg !4408
  %cmp8 = icmp ne i32 %conv4, %conv7, !dbg !4411
  br i1 %cmp8, label %if.then, label %lor.lhs.false10, !dbg !4412

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %8 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4413
  %trigger11 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %8, i32 0, i32 3, !dbg !4414
  %interval = getelementptr inbounds %struct.ff_trigger, %struct.ff_trigger* %trigger11, i32 0, i32 1, !dbg !4415
  %9 = load i16, i16* %interval, align 2, !dbg !4415
  %conv12 = zext i16 %9 to i32, !dbg !4413
  %10 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !4416
  %trigger13 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %10, i32 0, i32 3, !dbg !4417
  %interval14 = getelementptr inbounds %struct.ff_trigger, %struct.ff_trigger* %trigger13, i32 0, i32 1, !dbg !4418
  %11 = load i16, i16* %interval14, align 2, !dbg !4418
  %conv15 = zext i16 %11 to i32, !dbg !4416
  %cmp16 = icmp ne i32 %conv12, %conv15, !dbg !4419
  br i1 %cmp16, label %if.then, label %lor.lhs.false18, !dbg !4420

lor.lhs.false18:                                  ; preds = %lor.lhs.false10
  %12 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4421
  %replay = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %12, i32 0, i32 4, !dbg !4422
  %length = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay, i32 0, i32 0, !dbg !4423
  %13 = load i16, i16* %length, align 2, !dbg !4423
  %conv19 = zext i16 %13 to i32, !dbg !4421
  %14 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !4424
  %replay20 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %14, i32 0, i32 4, !dbg !4425
  %length21 = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay20, i32 0, i32 0, !dbg !4426
  %15 = load i16, i16* %length21, align 2, !dbg !4426
  %conv22 = zext i16 %15 to i32, !dbg !4424
  %cmp23 = icmp ne i32 %conv19, %conv22, !dbg !4427
  br i1 %cmp23, label %if.then, label %lor.lhs.false25, !dbg !4428

lor.lhs.false25:                                  ; preds = %lor.lhs.false18
  %16 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4429
  %replay26 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %16, i32 0, i32 4, !dbg !4430
  %delay = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay26, i32 0, i32 1, !dbg !4431
  %17 = load i16, i16* %delay, align 2, !dbg !4431
  %conv27 = zext i16 %17 to i32, !dbg !4429
  %18 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !4432
  %replay28 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %18, i32 0, i32 4, !dbg !4433
  %delay29 = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay28, i32 0, i32 1, !dbg !4434
  %19 = load i16, i16* %delay29, align 2, !dbg !4434
  %conv30 = zext i16 %19 to i32, !dbg !4432
  %cmp31 = icmp ne i32 %conv27, %conv30, !dbg !4435
  br i1 %cmp31, label %if.then, label %if.end, !dbg !4436

if.then:                                          ; preds = %lor.lhs.false25, %lor.lhs.false18, %lor.lhs.false10, %lor.lhs.false, %entry
  store i32 1, i32* %retval, align 4, !dbg !4437
  br label %return, !dbg !4437

if.end:                                           ; preds = %lor.lhs.false25
  store i32 0, i32* %retval, align 4, !dbg !4438
  br label %return, !dbg !4438

return:                                           ; preds = %if.end, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !4439
  ret i32 %20, !dbg !4439
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @make_core(%struct.iforce* %iforce, i16 zeroext %id, i16 zeroext %mod_id1, i16 zeroext %mod_id2, i8 zeroext %effect_type, i8 zeroext %axes, i16 zeroext %duration, i16 zeroext %delay, i16 zeroext %button, i16 zeroext %interval, i16 zeroext %direction) #0 !dbg !4440 {
entry:
  %iforce.addr = alloca %struct.iforce*, align 8
  %id.addr = alloca i16, align 2
  %mod_id1.addr = alloca i16, align 2
  %mod_id2.addr = alloca i16, align 2
  %effect_type.addr = alloca i8, align 1
  %axes.addr = alloca i8, align 1
  %duration.addr = alloca i16, align 2
  %delay.addr = alloca i16, align 2
  %button.addr = alloca i16, align 2
  %interval.addr = alloca i16, align 2
  %direction.addr = alloca i16, align 2
  %data = alloca [14 x i8], align 1
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !4443, metadata !DIExpression()), !dbg !4444
  store i16 %id, i16* %id.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %id.addr, metadata !4445, metadata !DIExpression()), !dbg !4446
  store i16 %mod_id1, i16* %mod_id1.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %mod_id1.addr, metadata !4447, metadata !DIExpression()), !dbg !4448
  store i16 %mod_id2, i16* %mod_id2.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %mod_id2.addr, metadata !4449, metadata !DIExpression()), !dbg !4450
  store i8 %effect_type, i8* %effect_type.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %effect_type.addr, metadata !4451, metadata !DIExpression()), !dbg !4452
  store i8 %axes, i8* %axes.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %axes.addr, metadata !4453, metadata !DIExpression()), !dbg !4454
  store i16 %duration, i16* %duration.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %duration.addr, metadata !4455, metadata !DIExpression()), !dbg !4456
  store i16 %delay, i16* %delay.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %delay.addr, metadata !4457, metadata !DIExpression()), !dbg !4458
  store i16 %button, i16* %button.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %button.addr, metadata !4459, metadata !DIExpression()), !dbg !4460
  store i16 %interval, i16* %interval.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %interval.addr, metadata !4461, metadata !DIExpression()), !dbg !4462
  store i16 %direction, i16* %direction.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %direction.addr, metadata !4463, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.declare(metadata [14 x i8]* %data, metadata !4465, metadata !DIExpression()), !dbg !4469
  %0 = load i16, i16* %duration.addr, align 2, !dbg !4470
  store i16 %0, i16* %duration.addr, align 2, !dbg !4471
  %1 = load i16, i16* %delay.addr, align 2, !dbg !4472
  store i16 %1, i16* %delay.addr, align 2, !dbg !4473
  %2 = load i16, i16* %interval.addr, align 2, !dbg !4474
  store i16 %2, i16* %interval.addr, align 2, !dbg !4475
  %3 = load i16, i16* %id.addr, align 2, !dbg !4476
  %conv = zext i16 %3 to i32, !dbg !4476
  %and = and i32 %conv, 255, !dbg !4476
  %conv1 = trunc i32 %and to i8, !dbg !4476
  %arrayidx = getelementptr [14 x i8], [14 x i8]* %data, i64 0, i64 0, !dbg !4477
  store i8 %conv1, i8* %arrayidx, align 1, !dbg !4478
  %4 = load i8, i8* %effect_type.addr, align 1, !dbg !4479
  %arrayidx2 = getelementptr [14 x i8], [14 x i8]* %data, i64 0, i64 1, !dbg !4480
  store i8 %4, i8* %arrayidx2, align 1, !dbg !4481
  %5 = load i8, i8* %axes.addr, align 1, !dbg !4482
  %conv3 = zext i8 %5 to i32, !dbg !4482
  %and4 = and i32 %conv3, 255, !dbg !4482
  %conv5 = trunc i32 %and4 to i8, !dbg !4482
  %conv6 = zext i8 %conv5 to i32, !dbg !4482
  %6 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4483
  %7 = load i16, i16* %button.addr, align 2, !dbg !4484
  %call = call zeroext i8 @find_button(%struct.iforce* %6, i16 signext %7) #5, !dbg !4485
  %conv7 = zext i8 %call to i32, !dbg !4485
  %or = or i32 %conv6, %conv7, !dbg !4486
  %conv8 = trunc i32 %or to i8, !dbg !4482
  %arrayidx9 = getelementptr [14 x i8], [14 x i8]* %data, i64 0, i64 2, !dbg !4487
  store i8 %conv8, i8* %arrayidx9, align 1, !dbg !4488
  %8 = load i16, i16* %duration.addr, align 2, !dbg !4489
  %conv10 = zext i16 %8 to i32, !dbg !4489
  %and11 = and i32 %conv10, 255, !dbg !4489
  %conv12 = trunc i32 %and11 to i8, !dbg !4489
  %arrayidx13 = getelementptr [14 x i8], [14 x i8]* %data, i64 0, i64 3, !dbg !4490
  store i8 %conv12, i8* %arrayidx13, align 1, !dbg !4491
  %9 = load i16, i16* %duration.addr, align 2, !dbg !4492
  %conv14 = zext i16 %9 to i32, !dbg !4492
  %shr = ashr i32 %conv14, 8, !dbg !4492
  %conv15 = trunc i32 %shr to i8, !dbg !4492
  %arrayidx16 = getelementptr [14 x i8], [14 x i8]* %data, i64 0, i64 4, !dbg !4493
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !4494
  %10 = load i16, i16* %direction.addr, align 2, !dbg !4495
  %conv17 = zext i16 %10 to i32, !dbg !4495
  %shr18 = ashr i32 %conv17, 8, !dbg !4495
  %conv19 = trunc i32 %shr18 to i8, !dbg !4495
  %arrayidx20 = getelementptr [14 x i8], [14 x i8]* %data, i64 0, i64 5, !dbg !4496
  store i8 %conv19, i8* %arrayidx20, align 1, !dbg !4497
  %11 = load i16, i16* %interval.addr, align 2, !dbg !4498
  %conv21 = zext i16 %11 to i32, !dbg !4498
  %and22 = and i32 %conv21, 255, !dbg !4498
  %conv23 = trunc i32 %and22 to i8, !dbg !4498
  %arrayidx24 = getelementptr [14 x i8], [14 x i8]* %data, i64 0, i64 6, !dbg !4499
  store i8 %conv23, i8* %arrayidx24, align 1, !dbg !4500
  %12 = load i16, i16* %interval.addr, align 2, !dbg !4501
  %conv25 = zext i16 %12 to i32, !dbg !4501
  %shr26 = ashr i32 %conv25, 8, !dbg !4501
  %conv27 = trunc i32 %shr26 to i8, !dbg !4501
  %arrayidx28 = getelementptr [14 x i8], [14 x i8]* %data, i64 0, i64 7, !dbg !4502
  store i8 %conv27, i8* %arrayidx28, align 1, !dbg !4503
  %13 = load i16, i16* %mod_id1.addr, align 2, !dbg !4504
  %conv29 = zext i16 %13 to i32, !dbg !4504
  %and30 = and i32 %conv29, 255, !dbg !4504
  %conv31 = trunc i32 %and30 to i8, !dbg !4504
  %arrayidx32 = getelementptr [14 x i8], [14 x i8]* %data, i64 0, i64 8, !dbg !4505
  store i8 %conv31, i8* %arrayidx32, align 1, !dbg !4506
  %14 = load i16, i16* %mod_id1.addr, align 2, !dbg !4507
  %conv33 = zext i16 %14 to i32, !dbg !4507
  %shr34 = ashr i32 %conv33, 8, !dbg !4507
  %conv35 = trunc i32 %shr34 to i8, !dbg !4507
  %arrayidx36 = getelementptr [14 x i8], [14 x i8]* %data, i64 0, i64 9, !dbg !4508
  store i8 %conv35, i8* %arrayidx36, align 1, !dbg !4509
  %15 = load i16, i16* %mod_id2.addr, align 2, !dbg !4510
  %conv37 = zext i16 %15 to i32, !dbg !4510
  %and38 = and i32 %conv37, 255, !dbg !4510
  %conv39 = trunc i32 %and38 to i8, !dbg !4510
  %arrayidx40 = getelementptr [14 x i8], [14 x i8]* %data, i64 0, i64 10, !dbg !4511
  store i8 %conv39, i8* %arrayidx40, align 1, !dbg !4512
  %16 = load i16, i16* %mod_id2.addr, align 2, !dbg !4513
  %conv41 = zext i16 %16 to i32, !dbg !4513
  %shr42 = ashr i32 %conv41, 8, !dbg !4513
  %conv43 = trunc i32 %shr42 to i8, !dbg !4513
  %arrayidx44 = getelementptr [14 x i8], [14 x i8]* %data, i64 0, i64 11, !dbg !4514
  store i8 %conv43, i8* %arrayidx44, align 1, !dbg !4515
  %17 = load i16, i16* %delay.addr, align 2, !dbg !4516
  %conv45 = zext i16 %17 to i32, !dbg !4516
  %and46 = and i32 %conv45, 255, !dbg !4516
  %conv47 = trunc i32 %and46 to i8, !dbg !4516
  %arrayidx48 = getelementptr [14 x i8], [14 x i8]* %data, i64 0, i64 12, !dbg !4517
  store i8 %conv47, i8* %arrayidx48, align 1, !dbg !4518
  %18 = load i16, i16* %delay.addr, align 2, !dbg !4519
  %conv49 = zext i16 %18 to i32, !dbg !4519
  %shr50 = ashr i32 %conv49, 8, !dbg !4519
  %conv51 = trunc i32 %shr50 to i8, !dbg !4519
  %arrayidx52 = getelementptr [14 x i8], [14 x i8]* %data, i64 0, i64 13, !dbg !4520
  store i8 %conv51, i8* %arrayidx52, align 1, !dbg !4521
  %19 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4522
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %data, i64 0, i64 0, !dbg !4523
  %call53 = call i32 @iforce_send_packet(%struct.iforce* %19, i16 zeroext 270, i8* %arraydecay) #5, !dbg !4524
  %20 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4525
  %core_effects = getelementptr inbounds %struct.iforce, %struct.iforce* %20, i32 0, i32 9, !dbg !4527
  %21 = load i16, i16* %id.addr, align 2, !dbg !4528
  %idxprom = zext i16 %21 to i64, !dbg !4525
  %arrayidx54 = getelementptr [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects, i64 0, i64 %idxprom, !dbg !4525
  %flags = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %arrayidx54, i32 0, i32 2, !dbg !4529
  %arraydecay55 = getelementptr inbounds [1 x i64], [1 x i64]* %flags, i64 0, i64 0, !dbg !4525
  %call56 = call zeroext i1 @test_bit(i64 4, i64* %arraydecay55) #5, !dbg !4530
  br i1 %call56, label %if.then, label %if.end, !dbg !4531

if.then:                                          ; preds = %entry
  %22 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4532
  %23 = load i16, i16* %id.addr, align 2, !dbg !4534
  %call57 = call i32 @iforce_control_playback(%struct.iforce* %22, i16 zeroext %23, i32 1) #5, !dbg !4535
  br label %if.end, !dbg !4536

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !4537
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @iforce_upload_constant(%struct.iforce* %iforce, %struct.ff_effect* %effect, %struct.ff_effect* %old) #0 !dbg !4538 {
entry:
  %retval = alloca i32, align 4
  %iforce.addr = alloca %struct.iforce*, align 8
  %effect.addr = alloca %struct.ff_effect*, align 8
  %old.addr = alloca %struct.ff_effect*, align 8
  %core_id = alloca i32, align 4
  %core_effect = alloca %struct.iforce_core_effect*, align 8
  %mod1_chunk = alloca %struct.resource*, align 8
  %mod2_chunk = alloca %struct.resource*, align 8
  %param1_err = alloca i32, align 4
  %param2_err = alloca i32, align 4
  %core_err = alloca i32, align 4
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !4539, metadata !DIExpression()), !dbg !4540
  store %struct.ff_effect* %effect, %struct.ff_effect** %effect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %effect.addr, metadata !4541, metadata !DIExpression()), !dbg !4542
  store %struct.ff_effect* %old, %struct.ff_effect** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %old.addr, metadata !4543, metadata !DIExpression()), !dbg !4544
  call void @llvm.dbg.declare(metadata i32* %core_id, metadata !4545, metadata !DIExpression()), !dbg !4546
  %0 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4547
  %id = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %0, i32 0, i32 1, !dbg !4548
  %1 = load i16, i16* %id, align 2, !dbg !4548
  %conv = sext i16 %1 to i32, !dbg !4547
  store i32 %conv, i32* %core_id, align 4, !dbg !4546
  call void @llvm.dbg.declare(metadata %struct.iforce_core_effect** %core_effect, metadata !4549, metadata !DIExpression()), !dbg !4550
  %2 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4551
  %core_effects = getelementptr inbounds %struct.iforce, %struct.iforce* %2, i32 0, i32 9, !dbg !4552
  %arraydecay = getelementptr inbounds [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects, i64 0, i64 0, !dbg !4551
  %3 = load i32, i32* %core_id, align 4, !dbg !4553
  %idx.ext = sext i32 %3 to i64, !dbg !4554
  %add.ptr = getelementptr %struct.iforce_core_effect, %struct.iforce_core_effect* %arraydecay, i64 %idx.ext, !dbg !4554
  store %struct.iforce_core_effect* %add.ptr, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4550
  call void @llvm.dbg.declare(metadata %struct.resource** %mod1_chunk, metadata !4555, metadata !DIExpression()), !dbg !4556
  %4 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4557
  %core_effects1 = getelementptr inbounds %struct.iforce, %struct.iforce* %4, i32 0, i32 9, !dbg !4558
  %5 = load i32, i32* %core_id, align 4, !dbg !4559
  %idxprom = sext i32 %5 to i64, !dbg !4557
  %arrayidx = getelementptr [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects1, i64 0, i64 %idxprom, !dbg !4557
  %mod1_chunk2 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %arrayidx, i32 0, i32 0, !dbg !4560
  store %struct.resource* %mod1_chunk2, %struct.resource** %mod1_chunk, align 8, !dbg !4556
  call void @llvm.dbg.declare(metadata %struct.resource** %mod2_chunk, metadata !4561, metadata !DIExpression()), !dbg !4562
  %6 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4563
  %core_effects3 = getelementptr inbounds %struct.iforce, %struct.iforce* %6, i32 0, i32 9, !dbg !4564
  %7 = load i32, i32* %core_id, align 4, !dbg !4565
  %idxprom4 = sext i32 %7 to i64, !dbg !4563
  %arrayidx5 = getelementptr [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects3, i64 0, i64 %idxprom4, !dbg !4563
  %mod2_chunk6 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %arrayidx5, i32 0, i32 1, !dbg !4566
  store %struct.resource* %mod2_chunk6, %struct.resource** %mod2_chunk, align 8, !dbg !4562
  call void @llvm.dbg.declare(metadata i32* %param1_err, metadata !4567, metadata !DIExpression()), !dbg !4568
  store i32 1, i32* %param1_err, align 4, !dbg !4568
  call void @llvm.dbg.declare(metadata i32* %param2_err, metadata !4569, metadata !DIExpression()), !dbg !4570
  store i32 1, i32* %param2_err, align 4, !dbg !4570
  call void @llvm.dbg.declare(metadata i32* %core_err, metadata !4571, metadata !DIExpression()), !dbg !4572
  store i32 0, i32* %core_err, align 4, !dbg !4572
  %8 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4573
  %tobool = icmp ne %struct.ff_effect* %8, null, !dbg !4573
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4575

lor.lhs.false:                                    ; preds = %entry
  %9 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4576
  %10 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4577
  %11 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4578
  %call = call i32 @need_magnitude_modifier(%struct.iforce* %9, %struct.ff_effect* %10, %struct.ff_effect* %11) #5, !dbg !4579
  %tobool7 = icmp ne i32 %call, 0, !dbg !4579
  br i1 %tobool7, label %if.then, label %if.end13, !dbg !4580

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4581
  %13 = load %struct.resource*, %struct.resource** %mod1_chunk, align 8, !dbg !4583
  %14 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4584
  %cmp = icmp ne %struct.ff_effect* %14, null, !dbg !4585
  %conv8 = zext i1 %cmp to i32, !dbg !4585
  %15 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4586
  %u = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %15, i32 0, i32 5, !dbg !4587
  %constant = bitcast %union.anon* %u to %struct.ff_constant_effect*, !dbg !4588
  %level = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant, i32 0, i32 0, !dbg !4589
  %16 = load i16, i16* %level, align 8, !dbg !4589
  %call9 = call i32 @make_magnitude_modifier(%struct.iforce* %12, %struct.resource* %13, i32 %conv8, i16 signext %16) #5, !dbg !4590
  store i32 %call9, i32* %param1_err, align 4, !dbg !4591
  %17 = load i32, i32* %param1_err, align 4, !dbg !4592
  %tobool10 = icmp ne i32 %17, 0, !dbg !4592
  br i1 %tobool10, label %if.then11, label %if.end, !dbg !4594

if.then11:                                        ; preds = %if.then
  %18 = load i32, i32* %param1_err, align 4, !dbg !4595
  store i32 %18, i32* %retval, align 4, !dbg !4596
  br label %return, !dbg !4596

if.end:                                           ; preds = %if.then
  %19 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4597
  %flags = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %19, i32 0, i32 2, !dbg !4598
  %arraydecay12 = getelementptr inbounds [1 x i64], [1 x i64]* %flags, i64 0, i64 0, !dbg !4597
  call void @set_bit(i64 0, i64* %arraydecay12) #5, !dbg !4599
  br label %if.end13, !dbg !4600

if.end13:                                         ; preds = %if.end, %lor.lhs.false
  %20 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4601
  %tobool14 = icmp ne %struct.ff_effect* %20, null, !dbg !4601
  br i1 %tobool14, label %lor.lhs.false15, label %if.then18, !dbg !4603

lor.lhs.false15:                                  ; preds = %if.end13
  %21 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4604
  %22 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4605
  %23 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4606
  %call16 = call i32 @need_envelope_modifier(%struct.iforce* %21, %struct.ff_effect* %22, %struct.ff_effect* %23) #5, !dbg !4607
  %tobool17 = icmp ne i32 %call16, 0, !dbg !4607
  br i1 %tobool17, label %if.then18, label %if.end38, !dbg !4608

if.then18:                                        ; preds = %lor.lhs.false15, %if.end13
  %24 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4609
  %25 = load %struct.resource*, %struct.resource** %mod2_chunk, align 8, !dbg !4611
  %26 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4612
  %cmp19 = icmp ne %struct.ff_effect* %26, null, !dbg !4613
  %conv20 = zext i1 %cmp19 to i32, !dbg !4613
  %27 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4614
  %u21 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %27, i32 0, i32 5, !dbg !4615
  %constant22 = bitcast %union.anon* %u21 to %struct.ff_constant_effect*, !dbg !4616
  %envelope = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant22, i32 0, i32 1, !dbg !4617
  %attack_length = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope, i32 0, i32 0, !dbg !4618
  %28 = load i16, i16* %attack_length, align 2, !dbg !4618
  %29 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4619
  %u23 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %29, i32 0, i32 5, !dbg !4620
  %constant24 = bitcast %union.anon* %u23 to %struct.ff_constant_effect*, !dbg !4621
  %envelope25 = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant24, i32 0, i32 1, !dbg !4622
  %attack_level = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope25, i32 0, i32 1, !dbg !4623
  %30 = load i16, i16* %attack_level, align 2, !dbg !4623
  %31 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4624
  %u26 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %31, i32 0, i32 5, !dbg !4625
  %constant27 = bitcast %union.anon* %u26 to %struct.ff_constant_effect*, !dbg !4626
  %envelope28 = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant27, i32 0, i32 1, !dbg !4627
  %fade_length = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope28, i32 0, i32 2, !dbg !4628
  %32 = load i16, i16* %fade_length, align 2, !dbg !4628
  %33 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4629
  %u29 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %33, i32 0, i32 5, !dbg !4630
  %constant30 = bitcast %union.anon* %u29 to %struct.ff_constant_effect*, !dbg !4631
  %envelope31 = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant30, i32 0, i32 1, !dbg !4632
  %fade_level = getelementptr inbounds %struct.ff_envelope, %struct.ff_envelope* %envelope31, i32 0, i32 3, !dbg !4633
  %34 = load i16, i16* %fade_level, align 2, !dbg !4633
  %call32 = call i32 @make_envelope_modifier(%struct.iforce* %24, %struct.resource* %25, i32 %conv20, i16 zeroext %28, i16 signext %30, i16 zeroext %32, i16 signext %34) #5, !dbg !4634
  store i32 %call32, i32* %param2_err, align 4, !dbg !4635
  %35 = load i32, i32* %param2_err, align 4, !dbg !4636
  %tobool33 = icmp ne i32 %35, 0, !dbg !4636
  br i1 %tobool33, label %if.then34, label %if.end35, !dbg !4638

if.then34:                                        ; preds = %if.then18
  %36 = load i32, i32* %param2_err, align 4, !dbg !4639
  store i32 %36, i32* %retval, align 4, !dbg !4640
  br label %return, !dbg !4640

if.end35:                                         ; preds = %if.then18
  %37 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4641
  %flags36 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %37, i32 0, i32 2, !dbg !4642
  %arraydecay37 = getelementptr inbounds [1 x i64], [1 x i64]* %flags36, i64 0, i64 0, !dbg !4641
  call void @set_bit(i64 1, i64* %arraydecay37) #5, !dbg !4643
  br label %if.end38, !dbg !4644

if.end38:                                         ; preds = %if.end35, %lor.lhs.false15
  %38 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4645
  %tobool39 = icmp ne %struct.ff_effect* %38, null, !dbg !4645
  br i1 %tobool39, label %lor.lhs.false40, label %if.then43, !dbg !4647

lor.lhs.false40:                                  ; preds = %if.end38
  %39 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4648
  %40 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4649
  %call41 = call i32 @need_core(%struct.ff_effect* %39, %struct.ff_effect* %40) #5, !dbg !4650
  %tobool42 = icmp ne i32 %call41, 0, !dbg !4650
  br i1 %tobool42, label %if.then43, label %if.end51, !dbg !4651

if.then43:                                        ; preds = %lor.lhs.false40, %if.end38
  %41 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4652
  %42 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4654
  %id44 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %42, i32 0, i32 1, !dbg !4655
  %43 = load i16, i16* %id44, align 2, !dbg !4655
  %44 = load %struct.resource*, %struct.resource** %mod1_chunk, align 8, !dbg !4656
  %start = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0, !dbg !4657
  %45 = load i64, i64* %start, align 8, !dbg !4657
  %conv45 = trunc i64 %45 to i16, !dbg !4656
  %46 = load %struct.resource*, %struct.resource** %mod2_chunk, align 8, !dbg !4658
  %start46 = getelementptr inbounds %struct.resource, %struct.resource* %46, i32 0, i32 0, !dbg !4659
  %47 = load i64, i64* %start46, align 8, !dbg !4659
  %conv47 = trunc i64 %47 to i16, !dbg !4658
  %48 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4660
  %replay = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %48, i32 0, i32 4, !dbg !4661
  %length = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay, i32 0, i32 0, !dbg !4662
  %49 = load i16, i16* %length, align 2, !dbg !4662
  %50 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4663
  %replay48 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %50, i32 0, i32 4, !dbg !4664
  %delay = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay48, i32 0, i32 1, !dbg !4665
  %51 = load i16, i16* %delay, align 2, !dbg !4665
  %52 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4666
  %trigger = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %52, i32 0, i32 3, !dbg !4667
  %button = getelementptr inbounds %struct.ff_trigger, %struct.ff_trigger* %trigger, i32 0, i32 0, !dbg !4668
  %53 = load i16, i16* %button, align 2, !dbg !4668
  %54 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4669
  %trigger49 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %54, i32 0, i32 3, !dbg !4670
  %interval = getelementptr inbounds %struct.ff_trigger, %struct.ff_trigger* %trigger49, i32 0, i32 1, !dbg !4671
  %55 = load i16, i16* %interval, align 2, !dbg !4671
  %56 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4672
  %direction = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %56, i32 0, i32 2, !dbg !4673
  %57 = load i16, i16* %direction, align 4, !dbg !4673
  %call50 = call i32 @make_core(%struct.iforce* %41, i16 zeroext %43, i16 zeroext %conv45, i16 zeroext %conv47, i8 zeroext 0, i8 zeroext 32, i16 zeroext %49, i16 zeroext %51, i16 zeroext %53, i16 zeroext %55, i16 zeroext %57) #5, !dbg !4674
  store i32 %call50, i32* %core_err, align 4, !dbg !4675
  br label %if.end51, !dbg !4676

if.end51:                                         ; preds = %if.then43, %lor.lhs.false40
  %58 = load i32, i32* %core_err, align 4, !dbg !4677
  %cmp52 = icmp slt i32 %58, 0, !dbg !4678
  br i1 %cmp52, label %cond.true, label %cond.false, !dbg !4677

cond.true:                                        ; preds = %if.end51
  %59 = load i32, i32* %core_err, align 4, !dbg !4679
  br label %cond.end, !dbg !4677

cond.false:                                       ; preds = %if.end51
  %60 = load i32, i32* %param1_err, align 4, !dbg !4680
  %tobool54 = icmp ne i32 %60, 0, !dbg !4680
  br i1 %tobool54, label %land.rhs, label %land.end, !dbg !4681

land.rhs:                                         ; preds = %cond.false
  %61 = load i32, i32* %param2_err, align 4, !dbg !4682
  %tobool55 = icmp ne i32 %61, 0, !dbg !4681
  br label %land.end

land.end:                                         ; preds = %land.rhs, %cond.false
  %62 = phi i1 [ false, %cond.false ], [ %tobool55, %land.rhs ], !dbg !4683
  %land.ext = zext i1 %62 to i32, !dbg !4681
  br label %cond.end, !dbg !4677

cond.end:                                         ; preds = %land.end, %cond.true
  %cond = phi i32 [ %59, %cond.true ], [ %land.ext, %land.end ], !dbg !4677
  store i32 %cond, i32* %retval, align 4, !dbg !4684
  br label %return, !dbg !4684

return:                                           ; preds = %cond.end, %if.then34, %if.then11
  %63 = load i32, i32* %retval, align 4, !dbg !4685
  ret i32 %63, !dbg !4685
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @need_magnitude_modifier(%struct.iforce* %iforce, %struct.ff_effect* %old, %struct.ff_effect* %effect) #0 !dbg !4686 {
entry:
  %retval = alloca i32, align 4
  %iforce.addr = alloca %struct.iforce*, align 8
  %old.addr = alloca %struct.ff_effect*, align 8
  %effect.addr = alloca %struct.ff_effect*, align 8
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !4687, metadata !DIExpression()), !dbg !4688
  store %struct.ff_effect* %old, %struct.ff_effect** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %old.addr, metadata !4689, metadata !DIExpression()), !dbg !4690
  store %struct.ff_effect* %effect, %struct.ff_effect** %effect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %effect.addr, metadata !4691, metadata !DIExpression()), !dbg !4692
  %0 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4693
  %type = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %0, i32 0, i32 0, !dbg !4695
  %1 = load i16, i16* %type, align 8, !dbg !4695
  %conv = zext i16 %1 to i32, !dbg !4693
  %cmp = icmp ne i32 %conv, 82, !dbg !4696
  br i1 %cmp, label %if.then, label %if.end, !dbg !4697

if.then:                                          ; preds = %entry
  %2 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4698
  %dev = getelementptr inbounds %struct.iforce, %struct.iforce* %2, i32 0, i32 0, !dbg !4698
  %3 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4698
  %dev2 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %3, i32 0, i32 40, !dbg !4698
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.need_magnitude_modifier, i64 0, i64 0)) #6, !dbg !4698
  store i32 0, i32* %retval, align 4, !dbg !4700
  br label %return, !dbg !4700

if.end:                                           ; preds = %entry
  %4 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4701
  %u = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %4, i32 0, i32 5, !dbg !4702
  %constant = bitcast %union.anon* %u to %struct.ff_constant_effect*, !dbg !4703
  %level = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant, i32 0, i32 0, !dbg !4704
  %5 = load i16, i16* %level, align 8, !dbg !4704
  %conv3 = sext i16 %5 to i32, !dbg !4701
  %6 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4705
  %u4 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %6, i32 0, i32 5, !dbg !4706
  %constant5 = bitcast %union.anon* %u4 to %struct.ff_constant_effect*, !dbg !4707
  %level6 = getelementptr inbounds %struct.ff_constant_effect, %struct.ff_constant_effect* %constant5, i32 0, i32 0, !dbg !4708
  %7 = load i16, i16* %level6, align 8, !dbg !4708
  %conv7 = sext i16 %7 to i32, !dbg !4705
  %cmp8 = icmp ne i32 %conv3, %conv7, !dbg !4709
  %conv9 = zext i1 %cmp8 to i32, !dbg !4709
  store i32 %conv9, i32* %retval, align 4, !dbg !4710
  br label %return, !dbg !4710

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !4711
  ret i32 %8, !dbg !4711
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @make_magnitude_modifier(%struct.iforce* %iforce, %struct.resource* %mod_chunk, i32 %no_alloc, i16 signext %level) #0 !dbg !4712 {
entry:
  %retval = alloca i32, align 4
  %iforce.addr = alloca %struct.iforce*, align 8
  %mod_chunk.addr = alloca %struct.resource*, align 8
  %no_alloc.addr = alloca i32, align 4
  %level.addr = alloca i16, align 2
  %data = alloca [3 x i8], align 1
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !4715, metadata !DIExpression()), !dbg !4716
  store %struct.resource* %mod_chunk, %struct.resource** %mod_chunk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %mod_chunk.addr, metadata !4717, metadata !DIExpression()), !dbg !4718
  store i32 %no_alloc, i32* %no_alloc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %no_alloc.addr, metadata !4719, metadata !DIExpression()), !dbg !4720
  store i16 %level, i16* %level.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %level.addr, metadata !4721, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.declare(metadata [3 x i8]* %data, metadata !4723, metadata !DIExpression()), !dbg !4725
  %0 = load i32, i32* %no_alloc.addr, align 4, !dbg !4726
  %tobool = icmp ne i32 %0, 0, !dbg !4726
  br i1 %tobool, label %if.end7, label %if.then, !dbg !4728

if.then:                                          ; preds = %entry
  %1 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4729
  %mem_mutex = getelementptr inbounds %struct.iforce, %struct.iforce* %1, i32 0, i32 10, !dbg !4731
  call void @mutex_lock(%struct.mutex* %mem_mutex) #5, !dbg !4732
  %2 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4733
  %device_memory = getelementptr inbounds %struct.iforce, %struct.iforce* %2, i32 0, i32 8, !dbg !4735
  %3 = load %struct.resource*, %struct.resource** %mod_chunk.addr, align 8, !dbg !4736
  %4 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4737
  %device_memory1 = getelementptr inbounds %struct.iforce, %struct.iforce* %4, i32 0, i32 8, !dbg !4738
  %start = getelementptr inbounds %struct.resource, %struct.resource* %device_memory1, i32 0, i32 0, !dbg !4739
  %5 = load i64, i64* %start, align 8, !dbg !4739
  %6 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4740
  %device_memory2 = getelementptr inbounds %struct.iforce, %struct.iforce* %6, i32 0, i32 8, !dbg !4741
  %end = getelementptr inbounds %struct.resource, %struct.resource* %device_memory2, i32 0, i32 1, !dbg !4742
  %7 = load i64, i64* %end, align 8, !dbg !4742
  %call = call i32 @allocate_resource(%struct.resource* %device_memory, %struct.resource* %3, i64 2, i64 %5, i64 %7, i64 2, i64 (i8*, %struct.resource*, i64, i64)* null, i8* null) #5, !dbg !4743
  %tobool3 = icmp ne i32 %call, 0, !dbg !4743
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !4744

if.then4:                                         ; preds = %if.then
  %8 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4745
  %mem_mutex5 = getelementptr inbounds %struct.iforce, %struct.iforce* %8, i32 0, i32 10, !dbg !4747
  call void @mutex_unlock(%struct.mutex* %mem_mutex5) #5, !dbg !4748
  store i32 -28, i32* %retval, align 4, !dbg !4749
  br label %return, !dbg !4749

if.end:                                           ; preds = %if.then
  %9 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4750
  %mem_mutex6 = getelementptr inbounds %struct.iforce, %struct.iforce* %9, i32 0, i32 10, !dbg !4751
  call void @mutex_unlock(%struct.mutex* %mem_mutex6) #5, !dbg !4752
  br label %if.end7, !dbg !4753

if.end7:                                          ; preds = %if.end, %entry
  %10 = load %struct.resource*, %struct.resource** %mod_chunk.addr, align 8, !dbg !4754
  %start8 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0, !dbg !4754
  %11 = load i64, i64* %start8, align 8, !dbg !4754
  %and = and i64 %11, 255, !dbg !4754
  %conv = trunc i64 %and to i8, !dbg !4754
  %arrayidx = getelementptr [3 x i8], [3 x i8]* %data, i64 0, i64 0, !dbg !4755
  store i8 %conv, i8* %arrayidx, align 1, !dbg !4756
  %12 = load %struct.resource*, %struct.resource** %mod_chunk.addr, align 8, !dbg !4757
  %start9 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0, !dbg !4757
  %13 = load i64, i64* %start9, align 8, !dbg !4757
  %shr = lshr i64 %13, 8, !dbg !4757
  %conv10 = trunc i64 %shr to i8, !dbg !4757
  %arrayidx11 = getelementptr [3 x i8], [3 x i8]* %data, i64 0, i64 1, !dbg !4758
  store i8 %conv10, i8* %arrayidx11, align 1, !dbg !4759
  %14 = load i16, i16* %level.addr, align 2, !dbg !4760
  %conv12 = sext i16 %14 to i32, !dbg !4760
  %cmp = icmp slt i32 %conv12, 0, !dbg !4760
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4760

cond.true:                                        ; preds = %if.end7
  %15 = load i16, i16* %level.addr, align 2, !dbg !4760
  %conv14 = sext i16 %15 to i32, !dbg !4760
  %add = add i32 %conv14, 255, !dbg !4760
  br label %cond.end, !dbg !4760

cond.false:                                       ; preds = %if.end7
  %16 = load i16, i16* %level.addr, align 2, !dbg !4760
  %conv15 = sext i16 %16 to i32, !dbg !4760
  br label %cond.end, !dbg !4760

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %conv15, %cond.false ], !dbg !4760
  %shr16 = ashr i32 %cond, 8, !dbg !4760
  %conv17 = trunc i32 %shr16 to i8, !dbg !4760
  %arrayidx18 = getelementptr [3 x i8], [3 x i8]* %data, i64 0, i64 2, !dbg !4761
  store i8 %conv17, i8* %arrayidx18, align 1, !dbg !4762
  %17 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4763
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %data, i64 0, i64 0, !dbg !4764
  %call19 = call i32 @iforce_send_packet(%struct.iforce* %17, i16 zeroext 771, i8* %arraydecay) #5, !dbg !4765
  %18 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4766
  %arraydecay20 = getelementptr inbounds [3 x i8], [3 x i8]* %data, i64 0, i64 0, !dbg !4767
  call void @iforce_dump_packet(%struct.iforce* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i16 zeroext 771, i8* %arraydecay20) #5, !dbg !4768
  store i32 0, i32* %retval, align 4, !dbg !4769
  br label %return, !dbg !4769

return:                                           ; preds = %cond.end, %if.then4
  %19 = load i32, i32* %retval, align 4, !dbg !4770
  ret i32 %19, !dbg !4770
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @iforce_upload_condition(%struct.iforce* %iforce, %struct.ff_effect* %effect, %struct.ff_effect* %old) #0 !dbg !4771 {
entry:
  %retval = alloca i32, align 4
  %iforce.addr = alloca %struct.iforce*, align 8
  %effect.addr = alloca %struct.ff_effect*, align 8
  %old.addr = alloca %struct.ff_effect*, align 8
  %core_id = alloca i32, align 4
  %core_effect = alloca %struct.iforce_core_effect*, align 8
  %mod1_chunk = alloca %struct.resource*, align 8
  %mod2_chunk = alloca %struct.resource*, align 8
  %type = alloca i8, align 1
  %param_err = alloca i32, align 4
  %core_err = alloca i32, align 4
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !4772, metadata !DIExpression()), !dbg !4773
  store %struct.ff_effect* %effect, %struct.ff_effect** %effect.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %effect.addr, metadata !4774, metadata !DIExpression()), !dbg !4775
  store %struct.ff_effect* %old, %struct.ff_effect** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %old.addr, metadata !4776, metadata !DIExpression()), !dbg !4777
  call void @llvm.dbg.declare(metadata i32* %core_id, metadata !4778, metadata !DIExpression()), !dbg !4779
  %0 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4780
  %id = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %0, i32 0, i32 1, !dbg !4781
  %1 = load i16, i16* %id, align 2, !dbg !4781
  %conv = sext i16 %1 to i32, !dbg !4780
  store i32 %conv, i32* %core_id, align 4, !dbg !4779
  call void @llvm.dbg.declare(metadata %struct.iforce_core_effect** %core_effect, metadata !4782, metadata !DIExpression()), !dbg !4783
  %2 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4784
  %core_effects = getelementptr inbounds %struct.iforce, %struct.iforce* %2, i32 0, i32 9, !dbg !4785
  %arraydecay = getelementptr inbounds [32 x %struct.iforce_core_effect], [32 x %struct.iforce_core_effect]* %core_effects, i64 0, i64 0, !dbg !4784
  %3 = load i32, i32* %core_id, align 4, !dbg !4786
  %idx.ext = sext i32 %3 to i64, !dbg !4787
  %add.ptr = getelementptr %struct.iforce_core_effect, %struct.iforce_core_effect* %arraydecay, i64 %idx.ext, !dbg !4787
  store %struct.iforce_core_effect* %add.ptr, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4783
  call void @llvm.dbg.declare(metadata %struct.resource** %mod1_chunk, metadata !4788, metadata !DIExpression()), !dbg !4789
  %4 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4790
  %mod1_chunk1 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %4, i32 0, i32 0, !dbg !4791
  store %struct.resource* %mod1_chunk1, %struct.resource** %mod1_chunk, align 8, !dbg !4789
  call void @llvm.dbg.declare(metadata %struct.resource** %mod2_chunk, metadata !4792, metadata !DIExpression()), !dbg !4793
  %5 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4794
  %mod2_chunk2 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %5, i32 0, i32 1, !dbg !4795
  store %struct.resource* %mod2_chunk2, %struct.resource** %mod2_chunk, align 8, !dbg !4793
  call void @llvm.dbg.declare(metadata i8* %type, metadata !4796, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.declare(metadata i32* %param_err, metadata !4798, metadata !DIExpression()), !dbg !4799
  store i32 1, i32* %param_err, align 4, !dbg !4799
  call void @llvm.dbg.declare(metadata i32* %core_err, metadata !4800, metadata !DIExpression()), !dbg !4801
  store i32 0, i32* %core_err, align 4, !dbg !4801
  %6 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4802
  %type3 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %6, i32 0, i32 0, !dbg !4803
  %7 = load i16, i16* %type3, align 8, !dbg !4803
  %conv4 = zext i16 %7 to i32, !dbg !4802
  switch i32 %conv4, label %sw.default [
    i32 83, label %sw.bb
    i32 85, label %sw.bb5
  ], !dbg !4804

sw.bb:                                            ; preds = %entry
  store i8 64, i8* %type, align 1, !dbg !4805
  br label %sw.epilog, !dbg !4807

sw.bb5:                                           ; preds = %entry
  store i8 65, i8* %type, align 1, !dbg !4808
  br label %sw.epilog, !dbg !4809

sw.default:                                       ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !4810
  br label %return, !dbg !4810

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %8 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4811
  %tobool = icmp ne %struct.ff_effect* %8, null, !dbg !4811
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4813

lor.lhs.false:                                    ; preds = %sw.epilog
  %9 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4814
  %10 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4815
  %11 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4816
  %call = call i32 @need_condition_modifier(%struct.iforce* %9, %struct.ff_effect* %10, %struct.ff_effect* %11) #5, !dbg !4817
  %tobool6 = icmp ne i32 %call, 0, !dbg !4817
  br i1 %tobool6, label %if.then, label %if.end59, !dbg !4818

if.then:                                          ; preds = %lor.lhs.false, %sw.epilog
  %12 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4819
  %13 = load %struct.resource*, %struct.resource** %mod1_chunk, align 8, !dbg !4821
  %14 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4822
  %cmp = icmp ne %struct.ff_effect* %14, null, !dbg !4823
  %conv7 = zext i1 %cmp to i32, !dbg !4823
  %15 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4824
  %u = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %15, i32 0, i32 5, !dbg !4825
  %condition = bitcast %union.anon* %u to [2 x %struct.ff_condition_effect]*, !dbg !4826
  %arrayidx = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition, i64 0, i64 0, !dbg !4824
  %right_saturation = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx, i32 0, i32 0, !dbg !4827
  %16 = load i16, i16* %right_saturation, align 8, !dbg !4827
  %17 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4828
  %u8 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %17, i32 0, i32 5, !dbg !4829
  %condition9 = bitcast %union.anon* %u8 to [2 x %struct.ff_condition_effect]*, !dbg !4830
  %arrayidx10 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition9, i64 0, i64 0, !dbg !4828
  %left_saturation = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx10, i32 0, i32 1, !dbg !4831
  %18 = load i16, i16* %left_saturation, align 2, !dbg !4831
  %19 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4832
  %u11 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %19, i32 0, i32 5, !dbg !4833
  %condition12 = bitcast %union.anon* %u11 to [2 x %struct.ff_condition_effect]*, !dbg !4834
  %arrayidx13 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition12, i64 0, i64 0, !dbg !4832
  %right_coeff = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx13, i32 0, i32 2, !dbg !4835
  %20 = load i16, i16* %right_coeff, align 4, !dbg !4835
  %21 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4836
  %u14 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %21, i32 0, i32 5, !dbg !4837
  %condition15 = bitcast %union.anon* %u14 to [2 x %struct.ff_condition_effect]*, !dbg !4838
  %arrayidx16 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition15, i64 0, i64 0, !dbg !4836
  %left_coeff = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx16, i32 0, i32 3, !dbg !4839
  %22 = load i16, i16* %left_coeff, align 2, !dbg !4839
  %23 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4840
  %u17 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %23, i32 0, i32 5, !dbg !4841
  %condition18 = bitcast %union.anon* %u17 to [2 x %struct.ff_condition_effect]*, !dbg !4842
  %arrayidx19 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition18, i64 0, i64 0, !dbg !4840
  %deadband = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx19, i32 0, i32 4, !dbg !4843
  %24 = load i16, i16* %deadband, align 8, !dbg !4843
  %25 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4844
  %u20 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %25, i32 0, i32 5, !dbg !4845
  %condition21 = bitcast %union.anon* %u20 to [2 x %struct.ff_condition_effect]*, !dbg !4846
  %arrayidx22 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition21, i64 0, i64 0, !dbg !4844
  %center = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx22, i32 0, i32 5, !dbg !4847
  %26 = load i16, i16* %center, align 2, !dbg !4847
  %call23 = call i32 @make_condition_modifier(%struct.iforce* %12, %struct.resource* %13, i32 %conv7, i16 zeroext %16, i16 zeroext %18, i16 signext %20, i16 signext %22, i16 zeroext %24, i16 signext %26) #5, !dbg !4848
  store i32 %call23, i32* %param_err, align 4, !dbg !4849
  %27 = load i32, i32* %param_err, align 4, !dbg !4850
  %tobool24 = icmp ne i32 %27, 0, !dbg !4850
  br i1 %tobool24, label %if.then25, label %if.end, !dbg !4852

if.then25:                                        ; preds = %if.then
  %28 = load i32, i32* %param_err, align 4, !dbg !4853
  store i32 %28, i32* %retval, align 4, !dbg !4854
  br label %return, !dbg !4854

if.end:                                           ; preds = %if.then
  %29 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4855
  %flags = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %29, i32 0, i32 2, !dbg !4856
  %arraydecay26 = getelementptr inbounds [1 x i64], [1 x i64]* %flags, i64 0, i64 0, !dbg !4855
  call void @set_bit(i64 0, i64* %arraydecay26) #5, !dbg !4857
  %30 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4858
  %31 = load %struct.resource*, %struct.resource** %mod2_chunk, align 8, !dbg !4859
  %32 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4860
  %cmp27 = icmp ne %struct.ff_effect* %32, null, !dbg !4861
  %conv28 = zext i1 %cmp27 to i32, !dbg !4861
  %33 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4862
  %u29 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %33, i32 0, i32 5, !dbg !4863
  %condition30 = bitcast %union.anon* %u29 to [2 x %struct.ff_condition_effect]*, !dbg !4864
  %arrayidx31 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition30, i64 0, i64 1, !dbg !4862
  %right_saturation32 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx31, i32 0, i32 0, !dbg !4865
  %34 = load i16, i16* %right_saturation32, align 4, !dbg !4865
  %35 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4866
  %u33 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %35, i32 0, i32 5, !dbg !4867
  %condition34 = bitcast %union.anon* %u33 to [2 x %struct.ff_condition_effect]*, !dbg !4868
  %arrayidx35 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition34, i64 0, i64 1, !dbg !4866
  %left_saturation36 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx35, i32 0, i32 1, !dbg !4869
  %36 = load i16, i16* %left_saturation36, align 2, !dbg !4869
  %37 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4870
  %u37 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %37, i32 0, i32 5, !dbg !4871
  %condition38 = bitcast %union.anon* %u37 to [2 x %struct.ff_condition_effect]*, !dbg !4872
  %arrayidx39 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition38, i64 0, i64 1, !dbg !4870
  %right_coeff40 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx39, i32 0, i32 2, !dbg !4873
  %38 = load i16, i16* %right_coeff40, align 4, !dbg !4873
  %39 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4874
  %u41 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %39, i32 0, i32 5, !dbg !4875
  %condition42 = bitcast %union.anon* %u41 to [2 x %struct.ff_condition_effect]*, !dbg !4876
  %arrayidx43 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition42, i64 0, i64 1, !dbg !4874
  %left_coeff44 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx43, i32 0, i32 3, !dbg !4877
  %40 = load i16, i16* %left_coeff44, align 2, !dbg !4877
  %41 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4878
  %u45 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %41, i32 0, i32 5, !dbg !4879
  %condition46 = bitcast %union.anon* %u45 to [2 x %struct.ff_condition_effect]*, !dbg !4880
  %arrayidx47 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition46, i64 0, i64 1, !dbg !4878
  %deadband48 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx47, i32 0, i32 4, !dbg !4881
  %42 = load i16, i16* %deadband48, align 4, !dbg !4881
  %43 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4882
  %u49 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %43, i32 0, i32 5, !dbg !4883
  %condition50 = bitcast %union.anon* %u49 to [2 x %struct.ff_condition_effect]*, !dbg !4884
  %arrayidx51 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition50, i64 0, i64 1, !dbg !4882
  %center52 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx51, i32 0, i32 5, !dbg !4885
  %44 = load i16, i16* %center52, align 2, !dbg !4885
  %call53 = call i32 @make_condition_modifier(%struct.iforce* %30, %struct.resource* %31, i32 %conv28, i16 zeroext %34, i16 zeroext %36, i16 signext %38, i16 signext %40, i16 zeroext %42, i16 signext %44) #5, !dbg !4886
  store i32 %call53, i32* %param_err, align 4, !dbg !4887
  %45 = load i32, i32* %param_err, align 4, !dbg !4888
  %tobool54 = icmp ne i32 %45, 0, !dbg !4888
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !4890

if.then55:                                        ; preds = %if.end
  %46 = load i32, i32* %param_err, align 4, !dbg !4891
  store i32 %46, i32* %retval, align 4, !dbg !4892
  br label %return, !dbg !4892

if.end56:                                         ; preds = %if.end
  %47 = load %struct.iforce_core_effect*, %struct.iforce_core_effect** %core_effect, align 8, !dbg !4893
  %flags57 = getelementptr inbounds %struct.iforce_core_effect, %struct.iforce_core_effect* %47, i32 0, i32 2, !dbg !4894
  %arraydecay58 = getelementptr inbounds [1 x i64], [1 x i64]* %flags57, i64 0, i64 0, !dbg !4893
  call void @set_bit(i64 1, i64* %arraydecay58) #5, !dbg !4895
  br label %if.end59, !dbg !4896

if.end59:                                         ; preds = %if.end56, %lor.lhs.false
  %48 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4897
  %tobool60 = icmp ne %struct.ff_effect* %48, null, !dbg !4897
  br i1 %tobool60, label %lor.lhs.false61, label %if.then64, !dbg !4899

lor.lhs.false61:                                  ; preds = %if.end59
  %49 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4900
  %50 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4901
  %call62 = call i32 @need_core(%struct.ff_effect* %49, %struct.ff_effect* %50) #5, !dbg !4902
  %tobool63 = icmp ne i32 %call62, 0, !dbg !4902
  br i1 %tobool63, label %if.then64, label %if.end72, !dbg !4903

if.then64:                                        ; preds = %lor.lhs.false61, %if.end59
  %51 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4904
  %52 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4906
  %id65 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %52, i32 0, i32 1, !dbg !4907
  %53 = load i16, i16* %id65, align 2, !dbg !4907
  %54 = load %struct.resource*, %struct.resource** %mod1_chunk, align 8, !dbg !4908
  %start = getelementptr inbounds %struct.resource, %struct.resource* %54, i32 0, i32 0, !dbg !4909
  %55 = load i64, i64* %start, align 8, !dbg !4909
  %conv66 = trunc i64 %55 to i16, !dbg !4908
  %56 = load %struct.resource*, %struct.resource** %mod2_chunk, align 8, !dbg !4910
  %start67 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 0, !dbg !4911
  %57 = load i64, i64* %start67, align 8, !dbg !4911
  %conv68 = trunc i64 %57 to i16, !dbg !4910
  %58 = load i8, i8* %type, align 1, !dbg !4912
  %59 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4913
  %replay = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %59, i32 0, i32 4, !dbg !4914
  %length = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay, i32 0, i32 0, !dbg !4915
  %60 = load i16, i16* %length, align 2, !dbg !4915
  %61 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4916
  %replay69 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %61, i32 0, i32 4, !dbg !4917
  %delay = getelementptr inbounds %struct.ff_replay, %struct.ff_replay* %replay69, i32 0, i32 1, !dbg !4918
  %62 = load i16, i16* %delay, align 2, !dbg !4918
  %63 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4919
  %trigger = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %63, i32 0, i32 3, !dbg !4920
  %button = getelementptr inbounds %struct.ff_trigger, %struct.ff_trigger* %trigger, i32 0, i32 0, !dbg !4921
  %64 = load i16, i16* %button, align 2, !dbg !4921
  %65 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4922
  %trigger70 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %65, i32 0, i32 3, !dbg !4923
  %interval = getelementptr inbounds %struct.ff_trigger, %struct.ff_trigger* %trigger70, i32 0, i32 1, !dbg !4924
  %66 = load i16, i16* %interval, align 2, !dbg !4924
  %67 = load %struct.ff_effect*, %struct.ff_effect** %effect.addr, align 8, !dbg !4925
  %direction = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %67, i32 0, i32 2, !dbg !4926
  %68 = load i16, i16* %direction, align 4, !dbg !4926
  %call71 = call i32 @make_core(%struct.iforce* %51, i16 zeroext %53, i16 zeroext %conv66, i16 zeroext %conv68, i8 zeroext %58, i8 zeroext -64, i16 zeroext %60, i16 zeroext %62, i16 zeroext %64, i16 zeroext %66, i16 zeroext %68) #5, !dbg !4927
  store i32 %call71, i32* %core_err, align 4, !dbg !4928
  br label %if.end72, !dbg !4929

if.end72:                                         ; preds = %if.then64, %lor.lhs.false61
  %69 = load i32, i32* %core_err, align 4, !dbg !4930
  %cmp73 = icmp slt i32 %69, 0, !dbg !4931
  br i1 %cmp73, label %cond.true, label %cond.false, !dbg !4930

cond.true:                                        ; preds = %if.end72
  %70 = load i32, i32* %core_err, align 4, !dbg !4932
  br label %cond.end, !dbg !4930

cond.false:                                       ; preds = %if.end72
  %71 = load i32, i32* %param_err, align 4, !dbg !4933
  br label %cond.end, !dbg !4930

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %70, %cond.true ], [ %71, %cond.false ], !dbg !4930
  store i32 %cond, i32* %retval, align 4, !dbg !4934
  br label %return, !dbg !4934

return:                                           ; preds = %cond.end, %if.then55, %if.then25, %sw.default
  %72 = load i32, i32* %retval, align 4, !dbg !4935
  ret i32 %72, !dbg !4935
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @need_condition_modifier(%struct.iforce* %iforce, %struct.ff_effect* %old, %struct.ff_effect* %new) #0 !dbg !4936 {
entry:
  %retval = alloca i32, align 4
  %iforce.addr = alloca %struct.iforce*, align 8
  %old.addr = alloca %struct.ff_effect*, align 8
  %new.addr = alloca %struct.ff_effect*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !4937, metadata !DIExpression()), !dbg !4938
  store %struct.ff_effect* %old, %struct.ff_effect** %old.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %old.addr, metadata !4939, metadata !DIExpression()), !dbg !4940
  store %struct.ff_effect* %new, %struct.ff_effect** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ff_effect** %new.addr, metadata !4941, metadata !DIExpression()), !dbg !4942
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4943, metadata !DIExpression()), !dbg !4944
  store i32 0, i32* %ret, align 4, !dbg !4944
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4945, metadata !DIExpression()), !dbg !4946
  %0 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !4947
  %type = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %0, i32 0, i32 0, !dbg !4949
  %1 = load i16, i16* %type, align 8, !dbg !4949
  %conv = zext i16 %1 to i32, !dbg !4947
  %cmp = icmp ne i32 %conv, 83, !dbg !4950
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4951

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !4952
  %type2 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %2, i32 0, i32 0, !dbg !4953
  %3 = load i16, i16* %type2, align 8, !dbg !4953
  %conv3 = zext i16 %3 to i32, !dbg !4952
  %cmp4 = icmp ne i32 %conv3, 84, !dbg !4954
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4955

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !4956
  %dev = getelementptr inbounds %struct.iforce, %struct.iforce* %4, i32 0, i32 0, !dbg !4956
  %5 = load %struct.input_dev*, %struct.input_dev** %dev, align 8, !dbg !4956
  %dev6 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %5, i32 0, i32 40, !dbg !4956
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev6, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.need_condition_modifier, i64 0, i64 0)) #6, !dbg !4956
  store i32 0, i32* %retval, align 4, !dbg !4958
  br label %return, !dbg !4958

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %i, align 4, !dbg !4959
  br label %for.cond, !dbg !4961

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4, !dbg !4962
  %cmp7 = icmp slt i32 %6, 2, !dbg !4964
  br i1 %cmp7, label %for.body, label %for.end, !dbg !4965

for.body:                                         ; preds = %for.cond
  %7 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4966
  %u = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %7, i32 0, i32 5, !dbg !4968
  %condition = bitcast %union.anon* %u to [2 x %struct.ff_condition_effect]*, !dbg !4969
  %8 = load i32, i32* %i, align 4, !dbg !4970
  %idxprom = sext i32 %8 to i64, !dbg !4966
  %arrayidx = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition, i64 0, i64 %idxprom, !dbg !4966
  %right_saturation = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx, i32 0, i32 0, !dbg !4971
  %9 = load i16, i16* %right_saturation, align 4, !dbg !4971
  %conv9 = zext i16 %9 to i32, !dbg !4966
  %10 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !4972
  %u10 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %10, i32 0, i32 5, !dbg !4973
  %condition11 = bitcast %union.anon* %u10 to [2 x %struct.ff_condition_effect]*, !dbg !4974
  %11 = load i32, i32* %i, align 4, !dbg !4975
  %idxprom12 = sext i32 %11 to i64, !dbg !4972
  %arrayidx13 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition11, i64 0, i64 %idxprom12, !dbg !4972
  %right_saturation14 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx13, i32 0, i32 0, !dbg !4976
  %12 = load i16, i16* %right_saturation14, align 4, !dbg !4976
  %conv15 = zext i16 %12 to i32, !dbg !4972
  %cmp16 = icmp ne i32 %conv9, %conv15, !dbg !4977
  br i1 %cmp16, label %lor.end, label %lor.lhs.false, !dbg !4978

lor.lhs.false:                                    ; preds = %for.body
  %13 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4979
  %u18 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %13, i32 0, i32 5, !dbg !4980
  %condition19 = bitcast %union.anon* %u18 to [2 x %struct.ff_condition_effect]*, !dbg !4981
  %14 = load i32, i32* %i, align 4, !dbg !4982
  %idxprom20 = sext i32 %14 to i64, !dbg !4979
  %arrayidx21 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition19, i64 0, i64 %idxprom20, !dbg !4979
  %left_saturation = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx21, i32 0, i32 1, !dbg !4983
  %15 = load i16, i16* %left_saturation, align 2, !dbg !4983
  %conv22 = zext i16 %15 to i32, !dbg !4979
  %16 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !4984
  %u23 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %16, i32 0, i32 5, !dbg !4985
  %condition24 = bitcast %union.anon* %u23 to [2 x %struct.ff_condition_effect]*, !dbg !4986
  %17 = load i32, i32* %i, align 4, !dbg !4987
  %idxprom25 = sext i32 %17 to i64, !dbg !4984
  %arrayidx26 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition24, i64 0, i64 %idxprom25, !dbg !4984
  %left_saturation27 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx26, i32 0, i32 1, !dbg !4988
  %18 = load i16, i16* %left_saturation27, align 2, !dbg !4988
  %conv28 = zext i16 %18 to i32, !dbg !4984
  %cmp29 = icmp ne i32 %conv22, %conv28, !dbg !4989
  br i1 %cmp29, label %lor.end, label %lor.lhs.false31, !dbg !4990

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %19 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !4991
  %u32 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %19, i32 0, i32 5, !dbg !4992
  %condition33 = bitcast %union.anon* %u32 to [2 x %struct.ff_condition_effect]*, !dbg !4993
  %20 = load i32, i32* %i, align 4, !dbg !4994
  %idxprom34 = sext i32 %20 to i64, !dbg !4991
  %arrayidx35 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition33, i64 0, i64 %idxprom34, !dbg !4991
  %right_coeff = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx35, i32 0, i32 2, !dbg !4995
  %21 = load i16, i16* %right_coeff, align 4, !dbg !4995
  %conv36 = sext i16 %21 to i32, !dbg !4991
  %22 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !4996
  %u37 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %22, i32 0, i32 5, !dbg !4997
  %condition38 = bitcast %union.anon* %u37 to [2 x %struct.ff_condition_effect]*, !dbg !4998
  %23 = load i32, i32* %i, align 4, !dbg !4999
  %idxprom39 = sext i32 %23 to i64, !dbg !4996
  %arrayidx40 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition38, i64 0, i64 %idxprom39, !dbg !4996
  %right_coeff41 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx40, i32 0, i32 2, !dbg !5000
  %24 = load i16, i16* %right_coeff41, align 4, !dbg !5000
  %conv42 = sext i16 %24 to i32, !dbg !4996
  %cmp43 = icmp ne i32 %conv36, %conv42, !dbg !5001
  br i1 %cmp43, label %lor.end, label %lor.lhs.false45, !dbg !5002

lor.lhs.false45:                                  ; preds = %lor.lhs.false31
  %25 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !5003
  %u46 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %25, i32 0, i32 5, !dbg !5004
  %condition47 = bitcast %union.anon* %u46 to [2 x %struct.ff_condition_effect]*, !dbg !5005
  %26 = load i32, i32* %i, align 4, !dbg !5006
  %idxprom48 = sext i32 %26 to i64, !dbg !5003
  %arrayidx49 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition47, i64 0, i64 %idxprom48, !dbg !5003
  %left_coeff = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx49, i32 0, i32 3, !dbg !5007
  %27 = load i16, i16* %left_coeff, align 2, !dbg !5007
  %conv50 = sext i16 %27 to i32, !dbg !5003
  %28 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !5008
  %u51 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %28, i32 0, i32 5, !dbg !5009
  %condition52 = bitcast %union.anon* %u51 to [2 x %struct.ff_condition_effect]*, !dbg !5010
  %29 = load i32, i32* %i, align 4, !dbg !5011
  %idxprom53 = sext i32 %29 to i64, !dbg !5008
  %arrayidx54 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition52, i64 0, i64 %idxprom53, !dbg !5008
  %left_coeff55 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx54, i32 0, i32 3, !dbg !5012
  %30 = load i16, i16* %left_coeff55, align 2, !dbg !5012
  %conv56 = sext i16 %30 to i32, !dbg !5008
  %cmp57 = icmp ne i32 %conv50, %conv56, !dbg !5013
  br i1 %cmp57, label %lor.end, label %lor.lhs.false59, !dbg !5014

lor.lhs.false59:                                  ; preds = %lor.lhs.false45
  %31 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !5015
  %u60 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %31, i32 0, i32 5, !dbg !5016
  %condition61 = bitcast %union.anon* %u60 to [2 x %struct.ff_condition_effect]*, !dbg !5017
  %32 = load i32, i32* %i, align 4, !dbg !5018
  %idxprom62 = sext i32 %32 to i64, !dbg !5015
  %arrayidx63 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition61, i64 0, i64 %idxprom62, !dbg !5015
  %deadband = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx63, i32 0, i32 4, !dbg !5019
  %33 = load i16, i16* %deadband, align 4, !dbg !5019
  %conv64 = zext i16 %33 to i32, !dbg !5015
  %34 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !5020
  %u65 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %34, i32 0, i32 5, !dbg !5021
  %condition66 = bitcast %union.anon* %u65 to [2 x %struct.ff_condition_effect]*, !dbg !5022
  %35 = load i32, i32* %i, align 4, !dbg !5023
  %idxprom67 = sext i32 %35 to i64, !dbg !5020
  %arrayidx68 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition66, i64 0, i64 %idxprom67, !dbg !5020
  %deadband69 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx68, i32 0, i32 4, !dbg !5024
  %36 = load i16, i16* %deadband69, align 4, !dbg !5024
  %conv70 = zext i16 %36 to i32, !dbg !5020
  %cmp71 = icmp ne i32 %conv64, %conv70, !dbg !5025
  br i1 %cmp71, label %lor.end, label %lor.rhs, !dbg !5026

lor.rhs:                                          ; preds = %lor.lhs.false59
  %37 = load %struct.ff_effect*, %struct.ff_effect** %old.addr, align 8, !dbg !5027
  %u73 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %37, i32 0, i32 5, !dbg !5028
  %condition74 = bitcast %union.anon* %u73 to [2 x %struct.ff_condition_effect]*, !dbg !5029
  %38 = load i32, i32* %i, align 4, !dbg !5030
  %idxprom75 = sext i32 %38 to i64, !dbg !5027
  %arrayidx76 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition74, i64 0, i64 %idxprom75, !dbg !5027
  %center = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx76, i32 0, i32 5, !dbg !5031
  %39 = load i16, i16* %center, align 2, !dbg !5031
  %conv77 = sext i16 %39 to i32, !dbg !5027
  %40 = load %struct.ff_effect*, %struct.ff_effect** %new.addr, align 8, !dbg !5032
  %u78 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %40, i32 0, i32 5, !dbg !5033
  %condition79 = bitcast %union.anon* %u78 to [2 x %struct.ff_condition_effect]*, !dbg !5034
  %41 = load i32, i32* %i, align 4, !dbg !5035
  %idxprom80 = sext i32 %41 to i64, !dbg !5032
  %arrayidx81 = getelementptr [2 x %struct.ff_condition_effect], [2 x %struct.ff_condition_effect]* %condition79, i64 0, i64 %idxprom80, !dbg !5032
  %center82 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %arrayidx81, i32 0, i32 5, !dbg !5036
  %42 = load i16, i16* %center82, align 2, !dbg !5036
  %conv83 = sext i16 %42 to i32, !dbg !5032
  %cmp84 = icmp ne i32 %conv77, %conv83, !dbg !5037
  br label %lor.end, !dbg !5026

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false59, %lor.lhs.false45, %lor.lhs.false31, %lor.lhs.false, %for.body
  %43 = phi i1 [ true, %lor.lhs.false59 ], [ true, %lor.lhs.false45 ], [ true, %lor.lhs.false31 ], [ true, %lor.lhs.false ], [ true, %for.body ], [ %cmp84, %lor.rhs ]
  %lor.ext = zext i1 %43 to i32, !dbg !5026
  %44 = load i32, i32* %ret, align 4, !dbg !5038
  %or = or i32 %44, %lor.ext, !dbg !5038
  store i32 %or, i32* %ret, align 4, !dbg !5038
  br label %for.inc, !dbg !5039

for.inc:                                          ; preds = %lor.end
  %45 = load i32, i32* %i, align 4, !dbg !5040
  %inc = add i32 %45, 1, !dbg !5040
  store i32 %inc, i32* %i, align 4, !dbg !5040
  br label %for.cond, !dbg !5041, !llvm.loop !5042

for.end:                                          ; preds = %for.cond
  %46 = load i32, i32* %ret, align 4, !dbg !5044
  store i32 %46, i32* %retval, align 4, !dbg !5045
  br label %return, !dbg !5045

return:                                           ; preds = %for.end, %if.then
  %47 = load i32, i32* %retval, align 4, !dbg !5046
  ret i32 %47, !dbg !5046
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @make_condition_modifier(%struct.iforce* %iforce, %struct.resource* %mod_chunk, i32 %no_alloc, i16 zeroext %rsat, i16 zeroext %lsat, i16 signext %rk, i16 signext %lk, i16 zeroext %db, i16 signext %center) #0 !dbg !5047 {
entry:
  %retval = alloca i32, align 4
  %iforce.addr = alloca %struct.iforce*, align 8
  %mod_chunk.addr = alloca %struct.resource*, align 8
  %no_alloc.addr = alloca i32, align 4
  %rsat.addr = alloca i16, align 2
  %lsat.addr = alloca i16, align 2
  %rk.addr = alloca i16, align 2
  %lk.addr = alloca i16, align 2
  %db.addr = alloca i16, align 2
  %center.addr = alloca i16, align 2
  %data = alloca [10 x i8], align 1
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !5050, metadata !DIExpression()), !dbg !5051
  store %struct.resource* %mod_chunk, %struct.resource** %mod_chunk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.resource** %mod_chunk.addr, metadata !5052, metadata !DIExpression()), !dbg !5053
  store i32 %no_alloc, i32* %no_alloc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %no_alloc.addr, metadata !5054, metadata !DIExpression()), !dbg !5055
  store i16 %rsat, i16* %rsat.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %rsat.addr, metadata !5056, metadata !DIExpression()), !dbg !5057
  store i16 %lsat, i16* %lsat.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %lsat.addr, metadata !5058, metadata !DIExpression()), !dbg !5059
  store i16 %rk, i16* %rk.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %rk.addr, metadata !5060, metadata !DIExpression()), !dbg !5061
  store i16 %lk, i16* %lk.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %lk.addr, metadata !5062, metadata !DIExpression()), !dbg !5063
  store i16 %db, i16* %db.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %db.addr, metadata !5064, metadata !DIExpression()), !dbg !5065
  store i16 %center, i16* %center.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %center.addr, metadata !5066, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.declare(metadata [10 x i8]* %data, metadata !5068, metadata !DIExpression()), !dbg !5072
  %0 = load i32, i32* %no_alloc.addr, align 4, !dbg !5073
  %tobool = icmp ne i32 %0, 0, !dbg !5073
  br i1 %tobool, label %if.end7, label %if.then, !dbg !5075

if.then:                                          ; preds = %entry
  %1 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !5076
  %mem_mutex = getelementptr inbounds %struct.iforce, %struct.iforce* %1, i32 0, i32 10, !dbg !5078
  call void @mutex_lock(%struct.mutex* %mem_mutex) #5, !dbg !5079
  %2 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !5080
  %device_memory = getelementptr inbounds %struct.iforce, %struct.iforce* %2, i32 0, i32 8, !dbg !5082
  %3 = load %struct.resource*, %struct.resource** %mod_chunk.addr, align 8, !dbg !5083
  %4 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !5084
  %device_memory1 = getelementptr inbounds %struct.iforce, %struct.iforce* %4, i32 0, i32 8, !dbg !5085
  %start = getelementptr inbounds %struct.resource, %struct.resource* %device_memory1, i32 0, i32 0, !dbg !5086
  %5 = load i64, i64* %start, align 8, !dbg !5086
  %6 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !5087
  %device_memory2 = getelementptr inbounds %struct.iforce, %struct.iforce* %6, i32 0, i32 8, !dbg !5088
  %end = getelementptr inbounds %struct.resource, %struct.resource* %device_memory2, i32 0, i32 1, !dbg !5089
  %7 = load i64, i64* %end, align 8, !dbg !5089
  %call = call i32 @allocate_resource(%struct.resource* %device_memory, %struct.resource* %3, i64 8, i64 %5, i64 %7, i64 2, i64 (i8*, %struct.resource*, i64, i64)* null, i8* null) #5, !dbg !5090
  %tobool3 = icmp ne i32 %call, 0, !dbg !5090
  br i1 %tobool3, label %if.then4, label %if.end, !dbg !5091

if.then4:                                         ; preds = %if.then
  %8 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !5092
  %mem_mutex5 = getelementptr inbounds %struct.iforce, %struct.iforce* %8, i32 0, i32 10, !dbg !5094
  call void @mutex_unlock(%struct.mutex* %mem_mutex5) #5, !dbg !5095
  store i32 -28, i32* %retval, align 4, !dbg !5096
  br label %return, !dbg !5096

if.end:                                           ; preds = %if.then
  %9 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !5097
  %mem_mutex6 = getelementptr inbounds %struct.iforce, %struct.iforce* %9, i32 0, i32 10, !dbg !5098
  call void @mutex_unlock(%struct.mutex* %mem_mutex6) #5, !dbg !5099
  br label %if.end7, !dbg !5100

if.end7:                                          ; preds = %if.end, %entry
  %10 = load %struct.resource*, %struct.resource** %mod_chunk.addr, align 8, !dbg !5101
  %start8 = getelementptr inbounds %struct.resource, %struct.resource* %10, i32 0, i32 0, !dbg !5101
  %11 = load i64, i64* %start8, align 8, !dbg !5101
  %and = and i64 %11, 255, !dbg !5101
  %conv = trunc i64 %and to i8, !dbg !5101
  %arrayidx = getelementptr [10 x i8], [10 x i8]* %data, i64 0, i64 0, !dbg !5102
  store i8 %conv, i8* %arrayidx, align 1, !dbg !5103
  %12 = load %struct.resource*, %struct.resource** %mod_chunk.addr, align 8, !dbg !5104
  %start9 = getelementptr inbounds %struct.resource, %struct.resource* %12, i32 0, i32 0, !dbg !5104
  %13 = load i64, i64* %start9, align 8, !dbg !5104
  %shr = lshr i64 %13, 8, !dbg !5104
  %conv10 = trunc i64 %shr to i8, !dbg !5104
  %arrayidx11 = getelementptr [10 x i8], [10 x i8]* %data, i64 0, i64 1, !dbg !5105
  store i8 %conv10, i8* %arrayidx11, align 1, !dbg !5106
  %14 = load i16, i16* %rk.addr, align 2, !dbg !5107
  %conv12 = sext i16 %14 to i32, !dbg !5107
  %mul = mul i32 100, %conv12, !dbg !5108
  %shr13 = ashr i32 %mul, 15, !dbg !5109
  %conv14 = trunc i32 %shr13 to i8, !dbg !5110
  %arrayidx15 = getelementptr [10 x i8], [10 x i8]* %data, i64 0, i64 2, !dbg !5111
  store i8 %conv14, i8* %arrayidx15, align 1, !dbg !5112
  %15 = load i16, i16* %lk.addr, align 2, !dbg !5113
  %conv16 = sext i16 %15 to i32, !dbg !5113
  %mul17 = mul i32 100, %conv16, !dbg !5114
  %shr18 = ashr i32 %mul17, 15, !dbg !5115
  %conv19 = trunc i32 %shr18 to i8, !dbg !5116
  %arrayidx20 = getelementptr [10 x i8], [10 x i8]* %data, i64 0, i64 3, !dbg !5117
  store i8 %conv19, i8* %arrayidx20, align 1, !dbg !5118
  %16 = load i16, i16* %center.addr, align 2, !dbg !5119
  %conv21 = sext i16 %16 to i32, !dbg !5119
  %mul22 = mul i32 500, %conv21, !dbg !5120
  %shr23 = ashr i32 %mul22, 15, !dbg !5121
  %conv24 = trunc i32 %shr23 to i16, !dbg !5122
  store i16 %conv24, i16* %center.addr, align 2, !dbg !5123
  %17 = load i16, i16* %center.addr, align 2, !dbg !5124
  %conv25 = sext i16 %17 to i32, !dbg !5124
  %and26 = and i32 %conv25, 255, !dbg !5124
  %conv27 = trunc i32 %and26 to i8, !dbg !5124
  %arrayidx28 = getelementptr [10 x i8], [10 x i8]* %data, i64 0, i64 4, !dbg !5125
  store i8 %conv27, i8* %arrayidx28, align 1, !dbg !5126
  %18 = load i16, i16* %center.addr, align 2, !dbg !5127
  %conv29 = sext i16 %18 to i32, !dbg !5127
  %shr30 = ashr i32 %conv29, 8, !dbg !5127
  %conv31 = trunc i32 %shr30 to i8, !dbg !5127
  %arrayidx32 = getelementptr [10 x i8], [10 x i8]* %data, i64 0, i64 5, !dbg !5128
  store i8 %conv31, i8* %arrayidx32, align 1, !dbg !5129
  %19 = load i16, i16* %db.addr, align 2, !dbg !5130
  %conv33 = zext i16 %19 to i32, !dbg !5130
  %mul34 = mul i32 1000, %conv33, !dbg !5131
  %shr35 = ashr i32 %mul34, 16, !dbg !5132
  %conv36 = trunc i32 %shr35 to i16, !dbg !5133
  store i16 %conv36, i16* %db.addr, align 2, !dbg !5134
  %20 = load i16, i16* %db.addr, align 2, !dbg !5135
  %conv37 = zext i16 %20 to i32, !dbg !5135
  %and38 = and i32 %conv37, 255, !dbg !5135
  %conv39 = trunc i32 %and38 to i8, !dbg !5135
  %arrayidx40 = getelementptr [10 x i8], [10 x i8]* %data, i64 0, i64 6, !dbg !5136
  store i8 %conv39, i8* %arrayidx40, align 1, !dbg !5137
  %21 = load i16, i16* %db.addr, align 2, !dbg !5138
  %conv41 = zext i16 %21 to i32, !dbg !5138
  %shr42 = ashr i32 %conv41, 8, !dbg !5138
  %conv43 = trunc i32 %shr42 to i8, !dbg !5138
  %arrayidx44 = getelementptr [10 x i8], [10 x i8]* %data, i64 0, i64 7, !dbg !5139
  store i8 %conv43, i8* %arrayidx44, align 1, !dbg !5140
  %22 = load i16, i16* %rsat.addr, align 2, !dbg !5141
  %conv45 = zext i16 %22 to i32, !dbg !5141
  %mul46 = mul i32 100, %conv45, !dbg !5142
  %shr47 = ashr i32 %mul46, 16, !dbg !5143
  %conv48 = trunc i32 %shr47 to i8, !dbg !5144
  %arrayidx49 = getelementptr [10 x i8], [10 x i8]* %data, i64 0, i64 8, !dbg !5145
  store i8 %conv48, i8* %arrayidx49, align 1, !dbg !5146
  %23 = load i16, i16* %lsat.addr, align 2, !dbg !5147
  %conv50 = zext i16 %23 to i32, !dbg !5147
  %mul51 = mul i32 100, %conv50, !dbg !5148
  %shr52 = ashr i32 %mul51, 16, !dbg !5149
  %conv53 = trunc i32 %shr52 to i8, !dbg !5150
  %arrayidx54 = getelementptr [10 x i8], [10 x i8]* %data, i64 0, i64 9, !dbg !5151
  store i8 %conv53, i8* %arrayidx54, align 1, !dbg !5152
  %24 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !5153
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %data, i64 0, i64 0, !dbg !5154
  %call55 = call i32 @iforce_send_packet(%struct.iforce* %24, i16 zeroext 1290, i8* %arraydecay) #5, !dbg !5155
  %25 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !5156
  %arraydecay56 = getelementptr inbounds [10 x i8], [10 x i8]* %data, i64 0, i64 0, !dbg !5157
  call void @iforce_dump_packet(%struct.iforce* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i16 zeroext 1290, i8* %arraydecay56) #5, !dbg !5158
  store i32 0, i32* %retval, align 4, !dbg !5159
  br label %return, !dbg !5159

return:                                           ; preds = %if.end7, %if.then4
  %26 = load i32, i32* %retval, align 4, !dbg !5160
  ret i32 %26, !dbg !5160
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #3

; Function Attrs: noredzone
declare dso_local i32 @allocate_resource(%struct.resource*, %struct.resource*, i64, i64, i64, i64, i64 (i8*, %struct.resource*, i64, i64)*, i8*) #3

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: noredzone
declare dso_local i32 @iforce_send_packet(%struct.iforce*, i16 zeroext, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5161 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5165, metadata !DIExpression()), !dbg !5166
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5167, metadata !DIExpression()), !dbg !5168
  ret i1 true, !dbg !5169
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5170 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5174, metadata !DIExpression()), !dbg !5175
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5176, metadata !DIExpression()), !dbg !5177
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5178, metadata !DIExpression()), !dbg !5179
  ret void, !dbg !5180
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @find_button(%struct.iforce* %iforce, i16 signext %button) #0 !dbg !5181 {
entry:
  %retval = alloca i8, align 1
  %iforce.addr = alloca %struct.iforce*, align 8
  %button.addr = alloca i16, align 2
  %i = alloca i32, align 4
  store %struct.iforce* %iforce, %struct.iforce** %iforce.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.iforce** %iforce.addr, metadata !5184, metadata !DIExpression()), !dbg !5185
  store i16 %button, i16* %button.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %button.addr, metadata !5186, metadata !DIExpression()), !dbg !5187
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5188, metadata !DIExpression()), !dbg !5189
  store i32 1, i32* %i, align 4, !dbg !5190
  br label %for.cond, !dbg !5192

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !5193
  %type = getelementptr inbounds %struct.iforce, %struct.iforce* %0, i32 0, i32 1, !dbg !5195
  %1 = load %struct.iforce_device*, %struct.iforce_device** %type, align 8, !dbg !5195
  %btn = getelementptr inbounds %struct.iforce_device, %struct.iforce_device* %1, i32 0, i32 3, !dbg !5196
  %2 = load i16*, i16** %btn, align 8, !dbg !5196
  %3 = load i32, i32* %i, align 4, !dbg !5197
  %idxprom = sext i32 %3 to i64, !dbg !5193
  %arrayidx = getelementptr i16, i16* %2, i64 %idxprom, !dbg !5193
  %4 = load i16, i16* %arrayidx, align 2, !dbg !5193
  %conv = sext i16 %4 to i32, !dbg !5193
  %cmp = icmp sge i32 %conv, 0, !dbg !5198
  br i1 %cmp, label %for.body, label %for.end, !dbg !5199

for.body:                                         ; preds = %for.cond
  %5 = load %struct.iforce*, %struct.iforce** %iforce.addr, align 8, !dbg !5200
  %type2 = getelementptr inbounds %struct.iforce, %struct.iforce* %5, i32 0, i32 1, !dbg !5202
  %6 = load %struct.iforce_device*, %struct.iforce_device** %type2, align 8, !dbg !5202
  %btn3 = getelementptr inbounds %struct.iforce_device, %struct.iforce_device* %6, i32 0, i32 3, !dbg !5203
  %7 = load i16*, i16** %btn3, align 8, !dbg !5203
  %8 = load i32, i32* %i, align 4, !dbg !5204
  %idxprom4 = sext i32 %8 to i64, !dbg !5200
  %arrayidx5 = getelementptr i16, i16* %7, i64 %idxprom4, !dbg !5200
  %9 = load i16, i16* %arrayidx5, align 2, !dbg !5200
  %conv6 = sext i16 %9 to i32, !dbg !5200
  %10 = load i16, i16* %button.addr, align 2, !dbg !5205
  %conv7 = sext i16 %10 to i32, !dbg !5205
  %cmp8 = icmp eq i32 %conv6, %conv7, !dbg !5206
  br i1 %cmp8, label %if.then, label %if.end, !dbg !5207

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !5208
  %add = add i32 %11, 1, !dbg !5209
  %conv10 = trunc i32 %add to i8, !dbg !5208
  store i8 %conv10, i8* %retval, align 1, !dbg !5210
  br label %return, !dbg !5210

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5205

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4, !dbg !5211
  %inc = add i32 %12, 1, !dbg !5211
  store i32 %inc, i32* %i, align 4, !dbg !5211
  br label %for.cond, !dbg !5212, !llvm.loop !5213

for.end:                                          ; preds = %for.cond
  store i8 0, i8* %retval, align 1, !dbg !5215
  br label %return, !dbg !5215

return:                                           ; preds = %for.end, %if.then
  %13 = load i8, i8* %retval, align 1, !dbg !5216
  ret i8 %13, !dbg !5216
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !5217 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !5223, metadata !DIExpression()), !dbg !5225
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !5227, metadata !DIExpression()), !dbg !5228
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !5229, metadata !DIExpression()), !dbg !5230
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !5231, metadata !DIExpression()), !dbg !5233
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !5235, metadata !DIExpression()), !dbg !5236
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !5237, metadata !DIExpression()), !dbg !5239
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5241, metadata !DIExpression()), !dbg !5242
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5243, metadata !DIExpression()), !dbg !5244
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5245, metadata !DIExpression()), !dbg !5246
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5247
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5248
  %div = sdiv i64 %1, 64, !dbg !5248
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5249
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5247
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5250
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5251
  %conv.i = trunc i64 %4 to i32, !dbg !5251
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #7, !dbg !5252
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5253
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5253
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #7, !dbg !5253
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5254
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !5254
  br i1 %8, label %cond.true, label %cond.false, !dbg !5254

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !5254
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !5254
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !5255
  %and.i = and i64 %11, 63, !dbg !5256
  %shl.i = shl i64 1, %and.i, !dbg !5257
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !5258
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5259
  %shr.i = ashr i64 %13, 6, !dbg !5260
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !5258
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !5258
  %and1.i = and i64 %shl.i, %14, !dbg !5261
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !5262
  %conv = zext i1 %cmp.i to i32, !dbg !5254
  br label %cond.end, !dbg !5254

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !5254
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !5254
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !5263
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !5264
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #8, !dbg !5265, !srcloc !5266
  store i8 %19, i8* %oldbit.i, align 1, !dbg !5265
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !5267
  %tobool.i = trunc i8 %20 to i1, !dbg !5267
  %conv2 = zext i1 %tobool.i to i32, !dbg !5254
  br label %cond.end, !dbg !5254

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5254
  %tobool = icmp ne i32 %cond, 0, !dbg !5254
  ret i1 %tobool, !dbg !5268
}

; Function Attrs: noredzone
declare dso_local i32 @iforce_control_playback(%struct.iforce*, i16 zeroext, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !5269 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5270, metadata !DIExpression()), !dbg !5271
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5272, metadata !DIExpression()), !dbg !5273
  ret i1 true, !dbg !5274
}

; Function Attrs: noredzone
declare dso_local void @iforce_dump_packet(%struct.iforce*, i8*, i16 zeroext, i8*) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }
attributes #7 = { noredzone nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !83, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/input/joystick/iforce/iforce-ff.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !11, !16, !22, !28, !37, !45, !51, !57, !64, !72, !78}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !4, line: 15, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/lizy2001/genbc/linux")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10}
!7 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3, isUnsigned: true)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !12, line: 65, baseType: !5, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/lizy2001/genbc/linux")
!13 = !{!14, !15}
!14 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0, isUnsigned: true)
!15 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1, isUnsigned: true)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !17, line: 16, baseType: !5, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/lizy2001/genbc/linux")
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "TT_NONE", value: 0, isUnsigned: true)
!20 = !DIEnumerator(name: "TT_NATIVE", value: 1, isUnsigned: true)
!21 = !DIEnumerator(name: "TT_COMPAT", value: 2, isUnsigned: true)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !23, line: 54, baseType: !5, size: 32, elements: !24)
!23 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/lizy2001/genbc/linux")
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "USRQUOTA", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "GRPQUOTA", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "PRJQUOTA", value: 2, isUnsigned: true)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rw_hint", file: !29, line: 296, baseType: !5, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/lizy2001/genbc/linux")
!30 = !{!31, !32, !33, !34, !35, !36}
!31 = !DIEnumerator(name: "WRITE_LIFE_NOT_SET", value: 0, isUnsigned: true)
!32 = !DIEnumerator(name: "WRITE_LIFE_NONE", value: 1, isUnsigned: true)
!33 = !DIEnumerator(name: "WRITE_LIFE_SHORT", value: 2, isUnsigned: true)
!34 = !DIEnumerator(name: "WRITE_LIFE_MEDIUM", value: 3, isUnsigned: true)
!35 = !DIEnumerator(name: "WRITE_LIFE_LONG", value: 4, isUnsigned: true)
!36 = !DIEnumerator(name: "WRITE_LIFE_EXTREME", value: 5, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !38, line: 9, baseType: !5, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "PIDTYPE_PID", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2, isUnsigned: true)
!43 = !DIEnumerator(name: "PIDTYPE_SID", value: 3, isUnsigned: true)
!44 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4, isUnsigned: true)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !46, line: 26, baseType: !5, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/lizy2001/genbc/linux")
!47 = !{!48, !49, !50}
!48 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2, isUnsigned: true)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !52, line: 44, baseType: !5, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!53 = !{!54, !55, !56}
!54 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!55 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!56 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !58, line: 343, baseType: !5, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!59 = !{!60, !61, !62, !63}
!60 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!62 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!63 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !65, line: 524, baseType: !5, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70, !71}
!67 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!71 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !65, line: 502, baseType: !5, size: 32, elements: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!75 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!76 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!77 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !79, line: 10, baseType: !5, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!80 = !{!81, !82}
!81 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!82 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!83 = !{!84, !85, !86, !89, !92}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!85 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !88)
!88 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !91)
!91 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!94 = !{i32 7, !"Dwarf Version", i32 4}
!95 = !{i32 2, !"Debug Info Version", i32 3}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"Code Model", i32 2}
!98 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!99 = distinct !DISubprogram(name: "iforce_upload_periodic", scope: !1, file: !1, line: 338, type: !100, scopeLine: 339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !299)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !103, !183, !183}
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iforce", file: !105, line: 85, size: 38080, elements: !106)
!105 = !DIFile(filename: "drivers/input/joystick/iforce/iforce.h", directory: "/home/lizy2001/genbc/linux")
!106 = !{!107, !3756, !3767, !3787, !3788, !3795, !3799, !3800, !3801, !3816, !3823}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !104, file: !105, line: 86, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !110, line: 131, size: 10432, elements: !111)
!110 = !DIFile(filename: "./include/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!111 = !{!112, !115, !116, !117, !128, !132, !133, !137, !138, !139, !140, !141, !142, !146, !147, !148, !149, !150, !151, !170, !175, !2965, !2968, !2969, !2981, !2983, !2986, !2996, !2997, !2998, !2999, !3000, !3004, !3008, !3012, !3016, !3094, !3095, !3096, !3097, !3098, !3747, !3748, !3749, !3750, !3751, !3753, !3754}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !109, file: !110, line: 132, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !109, file: !110, line: 133, baseType: !113, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !109, file: !110, line: 134, baseType: !113, size: 64, offset: 128)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !109, file: !110, line: 135, baseType: !118, size: 64, offset: 192)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !119, line: 59, size: 64, elements: !120)
!119 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/lizy2001/genbc/linux")
!120 = !{!121, !125, !126, !127}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !118, file: !119, line: 60, baseType: !122, size: 16)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !123, line: 24, baseType: !124)
!123 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!124 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !118, file: !119, line: 61, baseType: !122, size: 16, offset: 16)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !118, file: !119, line: 62, baseType: !122, size: 16, offset: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !118, file: !119, line: 63, baseType: !122, size: 16, offset: 48)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !109, file: !110, line: 137, baseType: !129, size: 64, offset: 256)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 64, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 1)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !109, file: !110, line: 139, baseType: !129, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !109, file: !110, line: 140, baseType: !134, size: 768, offset: 384)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 768, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 12)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !109, file: !110, line: 141, baseType: !129, size: 64, offset: 1152)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !109, file: !110, line: 142, baseType: !129, size: 64, offset: 1216)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !109, file: !110, line: 143, baseType: !129, size: 64, offset: 1280)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !109, file: !110, line: 144, baseType: !129, size: 64, offset: 1344)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !109, file: !110, line: 145, baseType: !129, size: 64, offset: 1408)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !109, file: !110, line: 146, baseType: !143, size: 128, offset: 1472)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 2)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !109, file: !110, line: 147, baseType: !129, size: 64, offset: 1600)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !109, file: !110, line: 149, baseType: !5, size: 32, offset: 1664)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !109, file: !110, line: 151, baseType: !5, size: 32, offset: 1696)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !109, file: !110, line: 152, baseType: !5, size: 32, offset: 1728)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !109, file: !110, line: 153, baseType: !84, size: 64, offset: 1792)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !109, file: !110, line: 155, baseType: !152, size: 64, offset: 1856)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!102, !108, !155, !169}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !119, line: 114, size: 320, elements: !158)
!158 = !{!159, !161, !162, !163, !165}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !157, file: !119, line: 116, baseType: !160, size: 8)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !123, line: 21, baseType: !85)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !157, file: !119, line: 117, baseType: !160, size: 8, offset: 8)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !157, file: !119, line: 118, baseType: !122, size: 16, offset: 16)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !157, file: !119, line: 119, baseType: !164, size: 32, offset: 32)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !123, line: 27, baseType: !5)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !157, file: !119, line: 120, baseType: !166, size: 256, offset: 64)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 256, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 32)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !109, file: !110, line: 158, baseType: !171, size: 64, offset: 1920)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!102, !108, !174}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !109, file: !110, line: 161, baseType: !176, size: 64, offset: 1984)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !110, line: 534, size: 896, elements: !178)
!178 = !{!179, !248, !252, !256, !262, !263, !267, !268, !269, !306, !307, !308}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !177, file: !110, line: 535, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!102, !108, !183, !183}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !119, line: 450, size: 384, elements: !185)
!185 = !{!186, !187, !190, !191, !196, !201}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !184, file: !119, line: 451, baseType: !122, size: 16)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !184, file: !119, line: 452, baseType: !188, size: 16, offset: 16)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !123, line: 23, baseType: !189)
!189 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !184, file: !119, line: 453, baseType: !122, size: 16, offset: 32)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !184, file: !119, line: 454, baseType: !192, size: 32, offset: 48)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !119, line: 316, size: 32, elements: !193)
!193 = !{!194, !195}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !192, file: !119, line: 317, baseType: !122, size: 16)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !192, file: !119, line: 318, baseType: !122, size: 16, offset: 16)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !184, file: !119, line: 455, baseType: !197, size: 32, offset: 80)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !119, line: 306, size: 32, elements: !198)
!198 = !{!199, !200}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !197, file: !119, line: 307, baseType: !122, size: 16)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !197, file: !119, line: 308, baseType: !122, size: 16, offset: 16)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !184, file: !119, line: 463, baseType: !202, size: 256, offset: 128)
!202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !184, file: !119, line: 457, size: 256, elements: !203)
!203 = !{!204, !215, !221, !233, !243}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !202, file: !119, line: 458, baseType: !205, size: 80)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !119, line: 345, size: 80, elements: !206)
!206 = !{!207, !208}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !205, file: !119, line: 346, baseType: !188, size: 16)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !205, file: !119, line: 347, baseType: !209, size: 64, offset: 16)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !119, line: 333, size: 64, elements: !210)
!210 = !{!211, !212, !213, !214}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !209, file: !119, line: 334, baseType: !122, size: 16)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !209, file: !119, line: 335, baseType: !122, size: 16, offset: 16)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !209, file: !119, line: 336, baseType: !122, size: 16, offset: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !209, file: !119, line: 337, baseType: !122, size: 16, offset: 48)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !202, file: !119, line: 459, baseType: !216, size: 96)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !119, line: 356, size: 96, elements: !217)
!217 = !{!218, !219, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !216, file: !119, line: 357, baseType: !188, size: 16)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !216, file: !119, line: 358, baseType: !188, size: 16, offset: 16)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !216, file: !119, line: 359, baseType: !209, size: 64, offset: 32)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !202, file: !119, line: 460, baseType: !222, size: 256)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !119, line: 401, size: 256, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !222, file: !119, line: 402, baseType: !122, size: 16)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !222, file: !119, line: 403, baseType: !122, size: 16, offset: 16)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !222, file: !119, line: 404, baseType: !188, size: 16, offset: 32)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !222, file: !119, line: 405, baseType: !188, size: 16, offset: 48)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !222, file: !119, line: 406, baseType: !122, size: 16, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !222, file: !119, line: 408, baseType: !209, size: 64, offset: 80)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !222, file: !119, line: 410, baseType: !164, size: 32, offset: 160)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !222, file: !119, line: 411, baseType: !232, size: 64, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !202, file: !119, line: 461, baseType: !234, size: 192)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 192, elements: !144)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !119, line: 372, size: 96, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !242}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !235, file: !119, line: 373, baseType: !122, size: 16)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !235, file: !119, line: 374, baseType: !122, size: 16, offset: 16)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !235, file: !119, line: 376, baseType: !188, size: 16, offset: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !235, file: !119, line: 377, baseType: !188, size: 16, offset: 48)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !235, file: !119, line: 379, baseType: !122, size: 16, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !235, file: !119, line: 380, baseType: !188, size: 16, offset: 80)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !202, file: !119, line: 462, baseType: !244, size: 32)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !119, line: 422, size: 32, elements: !245)
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !244, file: !119, line: 423, baseType: !122, size: 16)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !244, file: !119, line: 424, baseType: !122, size: 16, offset: 16)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !177, file: !110, line: 537, baseType: !249, size: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!102, !108, !102}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !177, file: !110, line: 539, baseType: !253, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!102, !108, !102, !102}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !177, file: !110, line: 540, baseType: !257, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !108, !260}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !261, line: 19, baseType: !122)
!261 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!262 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !177, file: !110, line: 541, baseType: !257, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !177, file: !110, line: 543, baseType: !264, size: 64, offset: 320)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{null, !176}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !177, file: !110, line: 545, baseType: !84, size: 64, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !177, file: !110, line: 547, baseType: !143, size: 128, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !177, file: !110, line: 549, baseType: !270, size: 192, offset: 576)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !271, line: 53, size: 192, elements: !272)
!271 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!272 = !{!273, !284, !300}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !270, file: !271, line: 54, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !275, line: 13, baseType: !276)
!275 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !277, line: 175, baseType: !278)
!277 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 173, size: 64, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !278, file: !277, line: 174, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !261, line: 22, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !123, line: 30, baseType: !283)
!283 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !270, file: !271, line: 55, baseType: !285, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !286, line: 83, baseType: !287)
!286 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !286, line: 71, elements: !288)
!288 = !{!289}
!289 = !DIDerivedType(tag: DW_TAG_member, scope: !287, file: !286, line: 72, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !287, file: !286, line: 72, elements: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !290, file: !286, line: 73, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !286, line: 20, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !293, file: !286, line: 21, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !297, line: 25, baseType: !298)
!297 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 25, elements: !299)
!299 = !{}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !270, file: !271, line: 59, baseType: !301, size: 128, offset: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !277, line: 178, size: 128, elements: !302)
!302 = !{!303, !305}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !301, file: !277, line: 179, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !301, file: !277, line: 179, baseType: !304, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !177, file: !110, line: 551, baseType: !102, size: 32, offset: 768)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !177, file: !110, line: 552, baseType: !183, size: 64, offset: 832)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !177, file: !110, line: 553, baseType: !309, offset: 896)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, elements: !2181)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !29, line: 916, size: 1856, align: 32, elements: !312)
!312 = !{!313, !331, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2948, !2949, !2958, !2959, !2960, !2961, !2962, !2963, !2964}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !311, file: !29, line: 920, baseType: !314, size: 128)
!314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !29, line: 917, size: 128, elements: !315)
!315 = !{!316, !322}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !314, file: !29, line: 918, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !318, line: 58, size: 64, elements: !319)
!318 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !317, file: !318, line: 59, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !314, file: !29, line: 919, baseType: !323, size: 128, align: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !277, line: 216, size: 128, align: 64, elements: !324)
!324 = !{!325, !327}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !323, file: !277, line: 217, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !323, file: !277, line: 218, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{null, !326}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !311, file: !29, line: 921, baseType: !332, size: 128, offset: 128)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !333, line: 8, size: 128, elements: !334)
!333 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!334 = !{!335, !339}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !332, file: !333, line: 9, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !338, line: 18, flags: DIFlagFwdDecl)
!338 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !332, file: !333, line: 10, baseType: !340, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !338, line: 89, size: 1536, elements: !342)
!342 = !{!343, !344, !354, !362, !363, !382, !2898, !2900, !2912, !2913, !2914, !2915, !2916, !2922, !2923, !2924}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !341, file: !338, line: 91, baseType: !5, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !341, file: !338, line: 92, baseType: !345, size: 32, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !346, line: 277, baseType: !347)
!346 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !346, line: 277, size: 32, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !347, file: !346, line: 277, baseType: !350, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !346, line: 70, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !346, line: 65, size: 32, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !351, file: !346, line: 66, baseType: !5, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !341, file: !338, line: 93, baseType: !355, size: 128, offset: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !356, line: 38, size: 128, elements: !357)
!356 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!357 = !{!358, !360}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !355, file: !356, line: 39, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !355, file: !356, line: 39, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !341, file: !338, line: 94, baseType: !340, size: 64, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !341, file: !338, line: 95, baseType: !364, size: 128, offset: 256)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !338, line: 47, size: 128, elements: !365)
!365 = !{!366, !379}
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !364, file: !338, line: 48, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !364, file: !338, line: 48, size: 64, elements: !368)
!368 = !{!369, !375}
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !338, line: 49, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !367, file: !338, line: 49, size: 64, elements: !371)
!371 = !{!372, !374}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !370, file: !338, line: 50, baseType: !373, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !261, line: 21, baseType: !164)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !370, file: !338, line: 50, baseType: !373, size: 32, offset: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !367, file: !338, line: 52, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !261, line: 23, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !123, line: 31, baseType: !378)
!378 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !364, file: !338, line: 54, baseType: !380, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !341, file: !338, line: 96, baseType: !383, size: 64, offset: 384)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !29, line: 610, size: 4224, elements: !385)
!385 = !{!386, !388, !389, !398, !405, !406, !559, !2609, !2610, !2611, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2874, !2882, !2883, !2884, !2894, !2895, !2896, !2897}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !384, file: !29, line: 611, baseType: !387, size: 16)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !277, line: 19, baseType: !124)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !384, file: !29, line: 612, baseType: !124, size: 16, offset: 16)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !384, file: !29, line: 613, baseType: !390, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !391, line: 23, baseType: !392)
!391 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 21, size: 32, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !392, file: !391, line: 22, baseType: !395, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !277, line: 32, baseType: !396)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !397, line: 49, baseType: !5)
!397 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!398 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !384, file: !29, line: 614, baseType: !399, size: 32, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !391, line: 28, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 26, size: 32, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !400, file: !391, line: 27, baseType: !403, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !277, line: 33, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !397, line: 50, baseType: !5)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !384, file: !29, line: 615, baseType: !5, size: 32, offset: 96)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !384, file: !29, line: 622, baseType: !407, size: 64, offset: 128)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !29, line: 1864, size: 1536, align: 512, elements: !410)
!410 = !{!411, !415, !428, !432, !438, !443, !449, !453, !457, !461, !465, !466, !472, !476, !500, !529, !539, !545, !550, !554, !555}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !409, file: !29, line: 1865, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!340, !383, !340, !5}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !409, file: !29, line: 1866, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!113, !340, !383, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !421, line: 10, size: 128, elements: !422)
!421 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!422 = !{!423, !427}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !420, file: !421, line: 11, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{null, !84}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !420, file: !421, line: 12, baseType: !84, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !409, file: !29, line: 1867, baseType: !429, size: 64, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!102, !383, !102}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !409, file: !29, line: 1868, baseType: !433, size: 64, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!436, !383, !102}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !29, line: 581, flags: DIFlagFwdDecl)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !409, file: !29, line: 1870, baseType: !439, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!102, !340, !442, !102}
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !409, file: !29, line: 1872, baseType: !444, size: 64, offset: 320)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!102, !383, !340, !387, !447}
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !277, line: 30, baseType: !448)
!448 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !409, file: !29, line: 1873, baseType: !450, size: 64, offset: 384)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!102, !340, !383, !340}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !409, file: !29, line: 1874, baseType: !454, size: 64, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!102, !383, !340}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !409, file: !29, line: 1875, baseType: !458, size: 64, offset: 512)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!102, !383, !340, !113}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !409, file: !29, line: 1876, baseType: !462, size: 64, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!102, !383, !340, !387}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !409, file: !29, line: 1877, baseType: !454, size: 64, offset: 640)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !409, file: !29, line: 1878, baseType: !467, size: 64, offset: 704)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!102, !383, !340, !387, !470}
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !277, line: 16, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !277, line: 13, baseType: !373)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !409, file: !29, line: 1879, baseType: !473, size: 64, offset: 768)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!102, !383, !340, !383, !340, !5}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !409, file: !29, line: 1881, baseType: !477, size: 64, offset: 832)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!102, !340, !480}
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !29, line: 219, size: 640, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !490, !497, !498, !499}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !481, file: !29, line: 220, baseType: !5, size: 32)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !481, file: !29, line: 221, baseType: !387, size: 16, offset: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !481, file: !29, line: 222, baseType: !390, size: 32, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !481, file: !29, line: 223, baseType: !399, size: 32, offset: 96)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !481, file: !29, line: 224, baseType: !488, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !277, line: 46, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !397, line: 88, baseType: !283)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !481, file: !29, line: 225, baseType: !491, size: 128, offset: 192)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !492, line: 13, size: 128, elements: !493)
!492 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!493 = !{!494, !496}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !491, file: !492, line: 14, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !492, line: 8, baseType: !282)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !491, file: !492, line: 15, baseType: !91, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !481, file: !29, line: 226, baseType: !491, size: 128, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !481, file: !29, line: 227, baseType: !491, size: 128, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !481, file: !29, line: 234, baseType: !310, size: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !409, file: !29, line: 1882, baseType: !501, size: 64, offset: 896)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!102, !504, !506, !373, !5}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !508, line: 22, size: 1152, elements: !509)
!508 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!509 = !{!510, !511, !512, !513, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !507, file: !508, line: 23, baseType: !373, size: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !507, file: !508, line: 24, baseType: !387, size: 16, offset: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !507, file: !508, line: 25, baseType: !5, size: 32, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !507, file: !508, line: 26, baseType: !514, size: 32, offset: 96)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !277, line: 104, baseType: !373)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !507, file: !508, line: 27, baseType: !376, size: 64, offset: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !507, file: !508, line: 28, baseType: !376, size: 64, offset: 192)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !507, file: !508, line: 37, baseType: !376, size: 64, offset: 256)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !507, file: !508, line: 38, baseType: !470, size: 32, offset: 320)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !507, file: !508, line: 39, baseType: !470, size: 32, offset: 352)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !507, file: !508, line: 40, baseType: !390, size: 32, offset: 384)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !507, file: !508, line: 41, baseType: !399, size: 32, offset: 416)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !507, file: !508, line: 42, baseType: !488, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !507, file: !508, line: 43, baseType: !491, size: 128, offset: 512)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !507, file: !508, line: 44, baseType: !491, size: 128, offset: 640)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !507, file: !508, line: 45, baseType: !491, size: 128, offset: 768)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !507, file: !508, line: 46, baseType: !491, size: 128, offset: 896)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !507, file: !508, line: 47, baseType: !376, size: 64, offset: 1024)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !507, file: !508, line: 48, baseType: !376, size: 64, offset: 1088)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !409, file: !29, line: 1883, baseType: !530, size: 64, offset: 960)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!533, !340, !442, !536}
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !277, line: 60, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !397, line: 73, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !397, line: 15, baseType: !91)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !277, line: 55, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !397, line: 72, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !397, line: 16, baseType: !93)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !409, file: !29, line: 1884, baseType: !540, size: 64, offset: 1024)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DISubroutineType(types: !542)
!542 = !{!102, !383, !543, !376, !376}
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !29, line: 50, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !409, file: !29, line: 1886, baseType: !546, size: 64, offset: 1088)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!102, !383, !549, !102}
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !409, file: !29, line: 1887, baseType: !551, size: 64, offset: 1152)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{!102, !383, !340, !310, !5, !387}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !409, file: !29, line: 1890, baseType: !462, size: 64, offset: 1216)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !409, file: !29, line: 1891, baseType: !556, size: 64, offset: 1280)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!102, !383, !436, !102}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !384, file: !29, line: 623, baseType: !560, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !29, line: 1416, size: 9472, elements: !562)
!562 = !{!563, !564, !565, !566, !567, !568, !620, !2217, !2299, !2382, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2398, !2402, !2403, !2406, !2407, !2410, !2411, !2412, !2453, !2479, !2480, !2481, !2482, !2483, !2484, !2487, !2489, !2496, !2497, !2499, !2500, !2501, !2560, !2561, !2576, !2577, !2578, !2579, !2580, !2583, !2584, !2585, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !561, file: !29, line: 1417, baseType: !301, size: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !561, file: !29, line: 1418, baseType: !470, size: 32, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !561, file: !29, line: 1419, baseType: !85, size: 8, offset: 160)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !561, file: !29, line: 1420, baseType: !93, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !561, file: !29, line: 1421, baseType: !488, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !561, file: !29, line: 1422, baseType: !569, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !29, line: 2228, size: 576, elements: !571)
!571 = !{!572, !573, !574, !581, !585, !589, !593, !597, !598, !608, !611, !612, !613, !617, !618, !619}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !570, file: !29, line: 2229, baseType: !113, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !570, file: !29, line: 2230, baseType: !102, size: 32, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !570, file: !29, line: 2238, baseType: !575, size: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!102, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !580, line: 28, flags: DIFlagFwdDecl)
!580 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!581 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !570, file: !29, line: 2239, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !584)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !29, line: 70, flags: DIFlagFwdDecl)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !570, file: !29, line: 2240, baseType: !586, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{!340, !569, !102, !113, !84}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !570, file: !29, line: 2242, baseType: !590, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !560}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !570, file: !29, line: 2243, baseType: !594, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !596, line: 76, flags: DIFlagFwdDecl)
!596 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !570, file: !29, line: 2244, baseType: !569, size: 64, offset: 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !570, file: !29, line: 2245, baseType: !599, size: 64, offset: 512)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !277, line: 182, size: 64, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !599, file: !277, line: 183, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !277, line: 186, size: 128, elements: !604)
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !603, file: !277, line: 187, baseType: !602, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !603, file: !277, line: 187, baseType: !607, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !570, file: !29, line: 2247, baseType: !609, offset: 576)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !610, line: 187, elements: !299)
!610 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!611 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !570, file: !29, line: 2248, baseType: !609, offset: 576)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !570, file: !29, line: 2249, baseType: !609, offset: 576)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !570, file: !29, line: 2250, baseType: !614, offset: 576)
!614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, elements: !615)
!615 = !{!616}
!616 = !DISubrange(count: 3)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !570, file: !29, line: 2252, baseType: !609, offset: 576)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !570, file: !29, line: 2253, baseType: !609, offset: 576)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !570, file: !29, line: 2254, baseType: !609, offset: 576)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !561, file: !29, line: 1423, baseType: !621, size: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !29, line: 1935, size: 1472, elements: !624)
!624 = !{!625, !629, !633, !634, !638, !644, !648, !649, !650, !654, !658, !659, !660, !661, !667, !672, !673, !680, !681, !682, !683, !2201, !2216}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !623, file: !29, line: 1936, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DISubroutineType(types: !628)
!628 = !{!383, !560}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !623, file: !29, line: 1937, baseType: !630, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{null, !383}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !623, file: !29, line: 1938, baseType: !630, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !623, file: !29, line: 1940, baseType: !635, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{null, !383, !102}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !623, file: !29, line: 1941, baseType: !639, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!102, !383, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !29, line: 289, flags: DIFlagFwdDecl)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !623, file: !29, line: 1942, baseType: !645, size: 64, offset: 320)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!102, !383}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !623, file: !29, line: 1943, baseType: !630, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !623, file: !29, line: 1944, baseType: !590, size: 64, offset: 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !623, file: !29, line: 1945, baseType: !651, size: 64, offset: 512)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!102, !560, !102}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !623, file: !29, line: 1946, baseType: !655, size: 64, offset: 576)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!102, !560}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !623, file: !29, line: 1947, baseType: !655, size: 64, offset: 640)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !623, file: !29, line: 1948, baseType: !655, size: 64, offset: 704)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !623, file: !29, line: 1949, baseType: !655, size: 64, offset: 768)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !623, file: !29, line: 1950, baseType: !662, size: 64, offset: 832)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!102, !340, !665}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !29, line: 57, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !623, file: !29, line: 1951, baseType: !668, size: 64, offset: 896)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!102, !560, !671, !442}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !623, file: !29, line: 1952, baseType: !590, size: 64, offset: 960)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !623, file: !29, line: 1954, baseType: !674, size: 64, offset: 1024)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!102, !677, !340}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !679, line: 539, flags: DIFlagFwdDecl)
!679 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!680 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !623, file: !29, line: 1955, baseType: !674, size: 64, offset: 1088)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !623, file: !29, line: 1956, baseType: !674, size: 64, offset: 1152)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !623, file: !29, line: 1957, baseType: !674, size: 64, offset: 1216)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !623, file: !29, line: 1963, baseType: !684, size: 64, offset: 1280)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{!102, !560, !687, !710}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !689, line: 68, size: 512, align: 128, elements: !690)
!689 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!690 = !{!691, !692, !2193, !2200}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !688, file: !689, line: 69, baseType: !93, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, scope: !688, file: !689, line: 77, baseType: !693, size: 320, offset: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !688, file: !689, line: 77, size: 320, elements: !694)
!694 = !{!695, !874, !879, !907, !915, !921, !2185, !2192}
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !689, line: 78, baseType: !696, size: 320)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !689, line: 78, size: 320, elements: !697)
!697 = !{!698, !699, !872, !873}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !696, file: !689, line: 84, baseType: !301, size: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !696, file: !689, line: 86, baseType: !700, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !29, line: 451, size: 1216, align: 64, elements: !702)
!702 = !{!703, !704, !712, !713, !718, !733, !742, !743, !744, !745, !865, !866, !869, !870, !871}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !701, file: !29, line: 452, baseType: !383, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !701, file: !29, line: 453, baseType: !705, size: 128, offset: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !706, line: 292, size: 128, elements: !707)
!706 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!707 = !{!708, !709, !711}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !705, file: !706, line: 293, baseType: !285)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !705, file: !706, line: 295, baseType: !710, size: 32)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !277, line: 148, baseType: !5)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !705, file: !706, line: 296, baseType: !84, size: 64, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !701, file: !29, line: 454, baseType: !710, size: 32, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !701, file: !29, line: 455, baseType: !714, size: 32, offset: 224)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !277, line: 168, baseType: !715)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 166, size: 32, elements: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !715, file: !277, line: 167, baseType: !102, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !701, file: !29, line: 460, baseType: !719, size: 128, offset: 256)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !720, line: 125, size: 128, elements: !721)
!720 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!721 = !{!722, !732}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !719, file: !720, line: 126, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !720, line: 31, size: 64, elements: !724)
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !723, file: !720, line: 32, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !720, line: 24, size: 192, align: 64, elements: !728)
!728 = !{!729, !730, !731}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !727, file: !720, line: 25, baseType: !93, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !727, file: !720, line: 26, baseType: !726, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !727, file: !720, line: 27, baseType: !726, size: 64, offset: 128)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !719, file: !720, line: 127, baseType: !726, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !701, file: !29, line: 461, baseType: !734, size: 256, offset: 384)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !735, line: 35, size: 256, elements: !736)
!735 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!736 = !{!737, !738, !739, !741}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !734, file: !735, line: 36, baseType: !274, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !734, file: !735, line: 42, baseType: !274, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !734, file: !735, line: 46, baseType: !740, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !286, line: 29, baseType: !293)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !734, file: !735, line: 47, baseType: !301, size: 128, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !701, file: !29, line: 462, baseType: !93, size: 64, offset: 640)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !701, file: !29, line: 463, baseType: !93, size: 64, offset: 704)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !701, file: !29, line: 464, baseType: !93, size: 64, offset: 768)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !701, file: !29, line: 465, baseType: !746, size: 64, offset: 832)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !748)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !29, line: 367, size: 1408, elements: !749)
!749 = !{!750, !754, !758, !762, !766, !770, !776, !782, !786, !791, !795, !799, !803, !829, !833, !839, !840, !841, !845, !850, !854, !861}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !748, file: !29, line: 368, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!102, !687, !642}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !748, file: !29, line: 369, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!102, !310, !687}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !748, file: !29, line: 372, baseType: !759, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!102, !700, !642}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !748, file: !29, line: 375, baseType: !763, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!102, !687}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !748, file: !29, line: 381, baseType: !767, size: 64, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!102, !310, !700, !304, !5}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !748, file: !29, line: 383, baseType: !771, size: 64, offset: 320)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !774}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !29, line: 290, flags: DIFlagFwdDecl)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !748, file: !29, line: 385, baseType: !777, size: 64, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!102, !310, !700, !488, !5, !5, !780, !781}
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !748, file: !29, line: 388, baseType: !783, size: 64, offset: 448)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!102, !310, !700, !488, !5, !5, !687, !84}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !748, file: !29, line: 393, baseType: !787, size: 64, offset: 512)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!790, !700, !790}
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !277, line: 125, baseType: !376)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !748, file: !29, line: 394, baseType: !792, size: 64, offset: 576)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !687, !5, !5}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !748, file: !29, line: 395, baseType: !796, size: 64, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!102, !687, !710}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !748, file: !29, line: 396, baseType: !800, size: 64, offset: 704)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !687}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !748, file: !29, line: 397, baseType: !804, size: 64, offset: 768)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!533, !807, !827}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !29, line: 320, size: 384, elements: !809)
!809 = !{!810, !811, !812, !816, !817, !818, !819, !820}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !808, file: !29, line: 321, baseType: !310, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !808, file: !29, line: 326, baseType: !488, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !808, file: !29, line: 327, baseType: !813, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{null, !807, !91, !91}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !808, file: !29, line: 328, baseType: !84, size: 64, offset: 192)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !808, file: !29, line: 329, baseType: !102, size: 32, offset: 256)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !808, file: !29, line: 330, baseType: !260, size: 16, offset: 288)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !808, file: !29, line: 331, baseType: !260, size: 16, offset: 304)
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !808, file: !29, line: 332, baseType: !821, size: 64, offset: 320)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !808, file: !29, line: 332, size: 64, elements: !822)
!822 = !{!823, !824}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !821, file: !29, line: 333, baseType: !5, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !821, file: !29, line: 334, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !29, line: 334, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !29, line: 64, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !748, file: !29, line: 402, baseType: !830, size: 64, offset: 832)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!102, !700, !687, !687, !3}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !748, file: !29, line: 404, baseType: !834, size: 64, offset: 896)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!447, !687, !837}
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !838, line: 305, baseType: !5)
!838 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!839 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !748, file: !29, line: 405, baseType: !800, size: 64, offset: 960)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !748, file: !29, line: 406, baseType: !763, size: 64, offset: 1024)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !748, file: !29, line: 407, baseType: !842, size: 64, offset: 1088)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!102, !687, !93, !93}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !748, file: !29, line: 409, baseType: !846, size: 64, offset: 1152)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{null, !687, !849, !849}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !748, file: !29, line: 410, baseType: !851, size: 64, offset: 1216)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!102, !700, !687}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !748, file: !29, line: 413, baseType: !855, size: 64, offset: 1280)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!102, !858, !310, !860}
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !29, line: 61, flags: DIFlagFwdDecl)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !748, file: !29, line: 415, baseType: !862, size: 64, offset: 1344)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !310}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !701, file: !29, line: 466, baseType: !93, size: 64, offset: 896)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !701, file: !29, line: 467, baseType: !867, size: 32, offset: 960)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !868, line: 8, baseType: !373)
!868 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!869 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !701, file: !29, line: 468, baseType: !285, offset: 992)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !701, file: !29, line: 469, baseType: !301, size: 128, offset: 1024)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !701, file: !29, line: 470, baseType: !84, size: 64, offset: 1152)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !696, file: !689, line: 87, baseType: !93, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !696, file: !689, line: 94, baseType: !93, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !689, line: 96, baseType: !875, size: 64)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !689, line: 96, size: 64, elements: !876)
!876 = !{!877}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !875, file: !689, line: 101, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !277, line: 143, baseType: !376)
!879 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !689, line: 103, baseType: !880, size: 320)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !689, line: 103, size: 320, elements: !881)
!881 = !{!882, !892, !895, !896}
!882 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !689, line: 104, baseType: !883, size: 128)
!883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !689, line: 104, size: 128, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !883, file: !689, line: 105, baseType: !301, size: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !689, line: 106, baseType: !887, size: 128)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !883, file: !689, line: 106, size: 128, elements: !888)
!888 = !{!889, !890, !891}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !887, file: !689, line: 107, baseType: !687, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !887, file: !689, line: 109, baseType: !102, size: 32, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !887, file: !689, line: 110, baseType: !102, size: 32, offset: 96)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !880, file: !689, line: 117, baseType: !893, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !689, line: 117, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !880, file: !689, line: 119, baseType: !84, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !880, file: !689, line: 120, baseType: !897, size: 64, offset: 256)
!897 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !880, file: !689, line: 120, size: 64, elements: !898)
!898 = !{!899, !900, !901}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !897, file: !689, line: 121, baseType: !84, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !897, file: !689, line: 122, baseType: !93, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !897, file: !689, line: 123, baseType: !902, size: 32)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !897, file: !689, line: 123, size: 32, elements: !903)
!903 = !{!904, !905, !906}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !902, file: !689, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !902, file: !689, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !902, file: !689, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !689, line: 130, baseType: !908, size: 192)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !689, line: 130, size: 192, elements: !909)
!909 = !{!910, !911, !912, !913, !914}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !908, file: !689, line: 131, baseType: !93, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !908, file: !689, line: 134, baseType: !85, size: 8, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !908, file: !689, line: 135, baseType: !85, size: 8, offset: 72)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !908, file: !689, line: 136, baseType: !714, size: 32, offset: 96)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !908, file: !689, line: 137, baseType: !5, size: 32, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !689, line: 139, baseType: !916, size: 256)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !689, line: 139, size: 256, elements: !917)
!917 = !{!918, !919, !920}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !916, file: !689, line: 140, baseType: !93, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !916, file: !689, line: 141, baseType: !714, size: 32, offset: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !916, file: !689, line: 143, baseType: !301, size: 128, offset: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !689, line: 145, baseType: !922, size: 256)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !689, line: 145, size: 256, elements: !923)
!923 = !{!924, !925, !927, !928, !2184}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !922, file: !689, line: 146, baseType: !93, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !922, file: !689, line: 147, baseType: !926, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !679, line: 509, baseType: !687)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !922, file: !689, line: 148, baseType: !93, size: 64, offset: 128)
!928 = !DIDerivedType(tag: DW_TAG_member, scope: !922, file: !689, line: 149, baseType: !929, size: 64, offset: 192)
!929 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !922, file: !689, line: 149, size: 64, elements: !930)
!930 = !{!931, !2183}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !929, file: !689, line: 150, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !689, line: 388, size: 7296, elements: !934)
!934 = !{!935, !2179}
!935 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !689, line: 389, baseType: !936, size: 7296)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !933, file: !689, line: 389, size: 7296, elements: !937)
!937 = !{!938, !976, !977, !978, !982, !983, !984, !985, !986, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1027, !1035, !1038, !1076, !1077, !2163, !2164, !2167, !2168, !2169, !2172, !2173, !2174, !2177, !2178}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !936, file: !689, line: 390, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !689, line: 305, size: 1472, elements: !941)
!941 = !{!942, !943, !944, !945, !946, !947, !948, !949, !956, !957, !962, !963, !966, !970, !971, !972, !973, !974}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !940, file: !689, line: 308, baseType: !93, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !940, file: !689, line: 309, baseType: !93, size: 64, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !940, file: !689, line: 313, baseType: !939, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !940, file: !689, line: 313, baseType: !939, size: 64, offset: 192)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !940, file: !689, line: 315, baseType: !727, size: 192, align: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !940, file: !689, line: 323, baseType: !93, size: 64, offset: 448)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !940, file: !689, line: 327, baseType: !932, size: 64, offset: 512)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !940, file: !689, line: 333, baseType: !950, size: 64, offset: 576)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !679, line: 284, baseType: !951)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !679, line: 284, size: 64, elements: !952)
!952 = !{!953}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !951, file: !679, line: 284, baseType: !954, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !955, line: 19, baseType: !93)
!955 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!956 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !940, file: !689, line: 334, baseType: !93, size: 64, offset: 640)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !940, file: !689, line: 343, baseType: !958, size: 256, offset: 704)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !940, file: !689, line: 340, size: 256, elements: !959)
!959 = !{!960, !961}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !958, file: !689, line: 341, baseType: !727, size: 192, align: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !958, file: !689, line: 342, baseType: !93, size: 64, offset: 192)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !940, file: !689, line: 351, baseType: !301, size: 128, offset: 960)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !940, file: !689, line: 353, baseType: !964, size: 64, offset: 1088)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !689, line: 353, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !940, file: !689, line: 356, baseType: !967, size: 64, offset: 1152)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !969)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !689, line: 356, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !940, file: !689, line: 359, baseType: !93, size: 64, offset: 1216)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !940, file: !689, line: 361, baseType: !310, size: 64, offset: 1280)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !940, file: !689, line: 362, baseType: !84, size: 64, offset: 1344)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !940, file: !689, line: 365, baseType: !274, size: 64, offset: 1408)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !940, file: !689, line: 373, baseType: !975, offset: 1472)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !689, line: 296, elements: !299)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !936, file: !689, line: 391, baseType: !723, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !936, file: !689, line: 392, baseType: !376, size: 64, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !936, file: !689, line: 394, baseType: !979, size: 64, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!93, !310, !93, !93, !93, !93}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !936, file: !689, line: 398, baseType: !93, size: 64, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !936, file: !689, line: 399, baseType: !93, size: 64, offset: 320)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !936, file: !689, line: 405, baseType: !93, size: 64, offset: 384)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !936, file: !689, line: 406, baseType: !93, size: 64, offset: 448)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !936, file: !689, line: 407, baseType: !987, size: 64, offset: 512)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !679, line: 286, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !679, line: 286, size: 64, elements: !990)
!990 = !{!991}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !989, file: !679, line: 286, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !955, line: 18, baseType: !93)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !936, file: !689, line: 416, baseType: !714, size: 32, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !936, file: !689, line: 428, baseType: !714, size: 32, offset: 608)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !936, file: !689, line: 437, baseType: !714, size: 32, offset: 640)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !936, file: !689, line: 447, baseType: !714, size: 32, offset: 672)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !936, file: !689, line: 450, baseType: !274, size: 64, offset: 704)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !936, file: !689, line: 452, baseType: !102, size: 32, offset: 768)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !936, file: !689, line: 454, baseType: !285, offset: 800)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !936, file: !689, line: 457, baseType: !734, size: 256, offset: 832)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !936, file: !689, line: 459, baseType: !301, size: 128, offset: 1088)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !936, file: !689, line: 466, baseType: !93, size: 64, offset: 1216)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !936, file: !689, line: 467, baseType: !93, size: 64, offset: 1280)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !936, file: !689, line: 469, baseType: !93, size: 64, offset: 1344)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !936, file: !689, line: 470, baseType: !93, size: 64, offset: 1408)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !936, file: !689, line: 471, baseType: !276, size: 64, offset: 1472)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !936, file: !689, line: 472, baseType: !93, size: 64, offset: 1536)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !936, file: !689, line: 473, baseType: !93, size: 64, offset: 1600)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !936, file: !689, line: 474, baseType: !93, size: 64, offset: 1664)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !936, file: !689, line: 475, baseType: !93, size: 64, offset: 1728)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !936, file: !689, line: 477, baseType: !285, offset: 1792)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !936, file: !689, line: 478, baseType: !93, size: 64, offset: 1792)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !936, file: !689, line: 478, baseType: !93, size: 64, offset: 1856)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !936, file: !689, line: 478, baseType: !93, size: 64, offset: 1920)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !936, file: !689, line: 478, baseType: !93, size: 64, offset: 1984)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !936, file: !689, line: 479, baseType: !93, size: 64, offset: 2048)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !936, file: !689, line: 479, baseType: !93, size: 64, offset: 2112)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !936, file: !689, line: 479, baseType: !93, size: 64, offset: 2176)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !936, file: !689, line: 480, baseType: !93, size: 64, offset: 2240)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !936, file: !689, line: 480, baseType: !93, size: 64, offset: 2304)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !936, file: !689, line: 480, baseType: !93, size: 64, offset: 2368)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !936, file: !689, line: 480, baseType: !93, size: 64, offset: 2432)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !936, file: !689, line: 482, baseType: !1024, size: 2816, offset: 2496)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 2816, elements: !1025)
!1025 = !{!1026}
!1026 = !DISubrange(count: 44)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !936, file: !689, line: 488, baseType: !1028, size: 256, offset: 5312)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !1029, line: 60, size: 256, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!1030 = !{!1031}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1028, file: !1029, line: 61, baseType: !1032, size: 256)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 256, elements: !1033)
!1033 = !{!1034}
!1034 = !DISubrange(count: 4)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !936, file: !689, line: 490, baseType: !1036, size: 64, offset: 5568)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !689, line: 490, flags: DIFlagFwdDecl)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !936, file: !689, line: 493, baseType: !1039, size: 896, offset: 5632)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1040, line: 53, baseType: !1041)
!1040 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1040, line: 13, size: 896, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1046, !1049, !1050, !1051, !1052, !1072, !1073, !1074}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1041, file: !1040, line: 18, baseType: !376, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1041, file: !1040, line: 28, baseType: !276, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1041, file: !1040, line: 31, baseType: !734, size: 256, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1041, file: !1040, line: 32, baseType: !1047, size: 64, offset: 384)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1040, line: 32, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !1041, file: !1040, line: 37, baseType: !124, size: 16, offset: 448)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1041, file: !1040, line: 40, baseType: !270, size: 192, offset: 512)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1041, file: !1040, line: 41, baseType: !84, size: 64, offset: 704)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1041, file: !1040, line: 42, baseType: !1053, size: 64, offset: 768)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1055)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1056, line: 13, size: 896, elements: !1057)
!1056 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!1057 = !{!1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1055, file: !1056, line: 14, baseType: !84, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1055, file: !1056, line: 15, baseType: !93, size: 64, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1055, file: !1056, line: 17, baseType: !93, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1055, file: !1056, line: 17, baseType: !93, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1055, file: !1056, line: 19, baseType: !91, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1055, file: !1056, line: 21, baseType: !91, size: 64, offset: 320)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1055, file: !1056, line: 22, baseType: !91, size: 64, offset: 384)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1055, file: !1056, line: 23, baseType: !91, size: 64, offset: 448)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1055, file: !1056, line: 24, baseType: !91, size: 64, offset: 512)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1055, file: !1056, line: 25, baseType: !91, size: 64, offset: 576)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1055, file: !1056, line: 26, baseType: !91, size: 64, offset: 640)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1055, file: !1056, line: 27, baseType: !91, size: 64, offset: 704)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1055, file: !1056, line: 28, baseType: !91, size: 64, offset: 768)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1055, file: !1056, line: 29, baseType: !91, size: 64, offset: 832)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1041, file: !1040, line: 44, baseType: !714, size: 32, offset: 832)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1041, file: !1040, line: 50, baseType: !260, size: 16, offset: 864)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1041, file: !1040, line: 51, baseType: !1075, size: 16, offset: 880)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !261, line: 18, baseType: !188)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !936, file: !689, line: 495, baseType: !93, size: 64, offset: 6528)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !936, file: !689, line: 497, baseType: !1078, size: 64, offset: 6592)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !689, line: 381, size: 384, elements: !1080)
!1080 = !{!1081, !1082, !2162}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1079, file: !689, line: 382, baseType: !714, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !1079, file: !689, line: 383, baseType: !1083, size: 128, offset: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !689, line: 376, size: 128, elements: !1084)
!1084 = !{!1085, !2160}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1083, file: !689, line: 377, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1088, line: 640, size: 48640, elements: !1089)
!1088 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!1089 = !{!1090, !1096, !1097, !1098, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1115, !1133, !1144, !1228, !1229, !1230, !1238, !1239, !1241, !1242, !1243, !1244, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1323, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1361, !1363, !1364, !1365, !1377, !1378, !1379, !1380, !1381, !1382, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1406, !1411, !1593, !1594, !1595, !1596, !1600, !1603, !1606, !1609, !1612, !1615, !1716, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1764, !1765, !1766, !1767, !1768, !1773, !1774, !1775, !1778, !1779, !1782, !1785, !1788, !1791, !1834, !1837, !1838, !1917, !1918, !1921, !1922, !1925, !1926, !1927, !1931, !1932, !1933, !1946, !1947, !1948, !1958, !1963, !1966, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1087, file: !1088, line: 646, baseType: !1091, size: 128)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1092, line: 56, size: 128, elements: !1093)
!1092 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1091, file: !1092, line: 57, baseType: !93, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1091, file: !1092, line: 58, baseType: !373, size: 32, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1087, file: !1088, line: 649, baseType: !90, size: 64, offset: 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1087, file: !1088, line: 657, baseType: !84, size: 64, offset: 192)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1087, file: !1088, line: 658, baseType: !1099, size: 32, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1100, line: 113, baseType: !1101)
!1100 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1100, line: 111, size: 32, elements: !1102)
!1102 = !{!1103}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1101, file: !1100, line: 112, baseType: !714, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1087, file: !1088, line: 660, baseType: !5, size: 32, offset: 288)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1087, file: !1088, line: 661, baseType: !5, size: 32, offset: 320)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1087, file: !1088, line: 684, baseType: !102, size: 32, offset: 352)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1087, file: !1088, line: 686, baseType: !102, size: 32, offset: 384)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1087, file: !1088, line: 687, baseType: !102, size: 32, offset: 416)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1087, file: !1088, line: 688, baseType: !102, size: 32, offset: 448)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1087, file: !1088, line: 689, baseType: !5, size: 32, offset: 480)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1087, file: !1088, line: 691, baseType: !1112, size: 64, offset: 512)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1114)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1088, line: 691, flags: DIFlagFwdDecl)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1087, file: !1088, line: 692, baseType: !1116, size: 832, offset: 576)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1088, line: 451, size: 832, elements: !1117)
!1117 = !{!1118, !1123, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1116, file: !1088, line: 453, baseType: !1119, size: 128)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1088, line: 325, size: 128, elements: !1120)
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1119, file: !1088, line: 326, baseType: !93, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1119, file: !1088, line: 327, baseType: !373, size: 32, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1116, file: !1088, line: 454, baseType: !727, size: 192, align: 64, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1116, file: !1088, line: 455, baseType: !301, size: 128, offset: 320)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1116, file: !1088, line: 456, baseType: !5, size: 32, offset: 448)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1116, file: !1088, line: 458, baseType: !376, size: 64, offset: 512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1116, file: !1088, line: 459, baseType: !376, size: 64, offset: 576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1116, file: !1088, line: 460, baseType: !376, size: 64, offset: 640)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1116, file: !1088, line: 461, baseType: !376, size: 64, offset: 704)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1116, file: !1088, line: 463, baseType: !376, size: 64, offset: 768)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1116, file: !1088, line: 465, baseType: !1132, offset: 832)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1088, line: 415, elements: !299)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1087, file: !1088, line: 693, baseType: !1134, size: 384, offset: 1408)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1088, line: 489, size: 384, elements: !1135)
!1135 = !{!1136, !1137, !1138, !1139, !1140, !1141, !1142}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1134, file: !1088, line: 490, baseType: !301, size: 128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1134, file: !1088, line: 491, baseType: !93, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1134, file: !1088, line: 492, baseType: !93, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1134, file: !1088, line: 493, baseType: !5, size: 32, offset: 256)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1134, file: !1088, line: 494, baseType: !124, size: 16, offset: 288)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1134, file: !1088, line: 495, baseType: !124, size: 16, offset: 304)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1134, file: !1088, line: 497, baseType: !1143, size: 64, offset: 320)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1087, file: !1088, line: 697, baseType: !1145, size: 1792, offset: 1792)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1088, line: 507, size: 1792, elements: !1146)
!1146 = !{!1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1225, !1226}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1145, file: !1088, line: 508, baseType: !727, size: 192, align: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1145, file: !1088, line: 515, baseType: !376, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1145, file: !1088, line: 516, baseType: !376, size: 64, offset: 256)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1145, file: !1088, line: 517, baseType: !376, size: 64, offset: 320)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1145, file: !1088, line: 518, baseType: !376, size: 64, offset: 384)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1145, file: !1088, line: 519, baseType: !376, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1145, file: !1088, line: 526, baseType: !281, size: 64, offset: 512)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1145, file: !1088, line: 527, baseType: !376, size: 64, offset: 576)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1145, file: !1088, line: 528, baseType: !5, size: 32, offset: 640)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1145, file: !1088, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1145, file: !1088, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1145, file: !1088, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1145, file: !1088, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1145, file: !1088, line: 563, baseType: !1161, size: 512, offset: 704)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !12, line: 118, size: 512, elements: !1162)
!1162 = !{!1163, !1171, !1172, !1177, !1220, !1222, !1223, !1224}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1161, file: !12, line: 119, baseType: !1164, size: 256)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1165, line: 9, size: 256, elements: !1166)
!1165 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1166 = !{!1167, !1168}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1164, file: !1165, line: 10, baseType: !727, size: 192, align: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1164, file: !1165, line: 11, baseType: !1169, size: 64, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1170, line: 29, baseType: !281)
!1170 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1161, file: !12, line: 120, baseType: !1169, size: 64, offset: 256)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1161, file: !12, line: 121, baseType: !1173, size: 64, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!11, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1161, file: !12, line: 122, baseType: !1178, size: 64, offset: 384)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !12, line: 159, size: 512, align: 512, elements: !1180)
!1180 = !{!1181, !1201, !1202, !1205, !1210, !1211, !1215, !1219}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1179, file: !12, line: 160, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !12, line: 214, size: 4608, align: 512, elements: !1184)
!1184 = !{!1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1183, file: !12, line: 215, baseType: !740)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1183, file: !12, line: 216, baseType: !5, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1183, file: !12, line: 217, baseType: !5, size: 32, offset: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1183, file: !12, line: 218, baseType: !5, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1183, file: !12, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1183, file: !12, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1183, file: !12, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1183, file: !12, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1183, file: !12, line: 233, baseType: !1169, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1183, file: !12, line: 234, baseType: !1176, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1183, file: !12, line: 235, baseType: !1169, size: 64, offset: 256)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1183, file: !12, line: 236, baseType: !1176, size: 64, offset: 320)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1183, file: !12, line: 237, baseType: !1198, size: 4096, offset: 512)
!1198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1179, size: 4096, elements: !1199)
!1199 = !{!1200}
!1200 = !DISubrange(count: 8)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1179, file: !12, line: 161, baseType: !5, size: 32, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1179, file: !12, line: 162, baseType: !1203, size: 32, offset: 96)
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !277, line: 27, baseType: !1204)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !397, line: 96, baseType: !102)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1179, file: !12, line: 163, baseType: !1206, size: 32, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !346, line: 276, baseType: !1207)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !346, line: 276, size: 32, elements: !1208)
!1208 = !{!1209}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1207, file: !346, line: 276, baseType: !350, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1179, file: !12, line: 164, baseType: !1176, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1179, file: !12, line: 165, baseType: !1212, size: 128, offset: 256)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1165, line: 14, size: 128, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1212, file: !1165, line: 15, baseType: !719, size: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1179, file: !12, line: 166, baseType: !1216, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!1169}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1179, file: !12, line: 167, baseType: !1169, size: 64, offset: 448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1161, file: !12, line: 123, baseType: !1221, size: 8, offset: 448)
!1221 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !261, line: 17, baseType: !160)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1161, file: !12, line: 124, baseType: !1221, size: 8, offset: 456)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1161, file: !12, line: 125, baseType: !1221, size: 8, offset: 464)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1161, file: !12, line: 126, baseType: !1221, size: 8, offset: 472)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1145, file: !1088, line: 572, baseType: !1161, size: 512, offset: 1216)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1145, file: !1088, line: 580, baseType: !1227, size: 64, offset: 1728)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1087, file: !1088, line: 721, baseType: !5, size: 32, offset: 3584)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1087, file: !1088, line: 722, baseType: !102, size: 32, offset: 3616)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1087, file: !1088, line: 723, baseType: !1231, size: 64, offset: 3648)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1233)
!1233 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1234, line: 17, baseType: !1235)
!1234 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1234, line: 17, size: 64, elements: !1236)
!1236 = !{!1237}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1235, file: !1234, line: 17, baseType: !129, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1087, file: !1088, line: 724, baseType: !1233, size: 64, offset: 3712)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1087, file: !1088, line: 749, baseType: !1240, offset: 3776)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1088, line: 290, elements: !299)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1087, file: !1088, line: 751, baseType: !301, size: 128, offset: 3776)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1087, file: !1088, line: 757, baseType: !932, size: 64, offset: 3904)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1087, file: !1088, line: 758, baseType: !932, size: 64, offset: 3968)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !1087, file: !1088, line: 761, baseType: !1245, size: 320, offset: 4032)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !1029, line: 34, size: 320, elements: !1246)
!1246 = !{!1247, !1248}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1245, file: !1029, line: 35, baseType: !376, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1245, file: !1029, line: 36, baseType: !1249, size: 256, offset: 64)
!1249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !939, size: 256, elements: !1033)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1087, file: !1088, line: 766, baseType: !102, size: 32, offset: 4352)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1087, file: !1088, line: 767, baseType: !102, size: 32, offset: 4384)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1087, file: !1088, line: 768, baseType: !102, size: 32, offset: 4416)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1087, file: !1088, line: 770, baseType: !102, size: 32, offset: 4448)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1087, file: !1088, line: 772, baseType: !93, size: 64, offset: 4480)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1087, file: !1088, line: 775, baseType: !5, size: 32, offset: 4544)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1087, file: !1088, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1087, file: !1088, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1087, file: !1088, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1087, file: !1088, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1087, file: !1088, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1087, file: !1088, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1087, file: !1088, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !1087, file: !1088, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1087, file: !1088, line: 831, baseType: !93, size: 64, offset: 4672)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1087, file: !1088, line: 833, baseType: !1266, size: 384, offset: 4736)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !17, line: 25, size: 384, elements: !1267)
!1267 = !{!1268, !1273}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1266, file: !17, line: 26, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!91, !1272}
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !17, line: 27, baseType: !1274, size: 320, offset: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1266, file: !17, line: 27, size: 320, elements: !1275)
!1275 = !{!1276, !1286, !1313}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1274, file: !17, line: 36, baseType: !1277, size: 320)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1274, file: !17, line: 29, size: 320, elements: !1278)
!1278 = !{!1279, !1281, !1282, !1283, !1284, !1285}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1277, file: !17, line: 30, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1277, file: !17, line: 31, baseType: !373, size: 32, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1277, file: !17, line: 32, baseType: !373, size: 32, offset: 96)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1277, file: !17, line: 33, baseType: !373, size: 32, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1277, file: !17, line: 34, baseType: !376, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1277, file: !17, line: 35, baseType: !1280, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1274, file: !17, line: 46, baseType: !1287, size: 192)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1274, file: !17, line: 38, size: 192, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1312}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1287, file: !17, line: 39, baseType: !1203, size: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1287, file: !17, line: 40, baseType: !16, size: 32, offset: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !17, line: 41, baseType: !1292, size: 64, offset: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1287, file: !17, line: 41, size: 64, elements: !1293)
!1293 = !{!1294, !1302}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1292, file: !17, line: 42, baseType: !1295, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1297, line: 7, size: 128, elements: !1298)
!1297 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1298 = !{!1299, !1301}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1296, file: !1297, line: 8, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !397, line: 93, baseType: !283)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1296, file: !1297, line: 9, baseType: !283, size: 64, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1292, file: !17, line: 43, baseType: !1303, size: 64)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1305, line: 7, size: 64, elements: !1306)
!1305 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1306 = !{!1307, !1311}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1304, file: !1305, line: 8, baseType: !1308, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1305, line: 5, baseType: !1309)
!1309 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !261, line: 20, baseType: !1310)
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !123, line: 26, baseType: !102)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1304, file: !1305, line: 9, baseType: !1309, size: 32, offset: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1287, file: !17, line: 45, baseType: !376, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1274, file: !17, line: 54, baseType: !1314, size: 256)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1274, file: !17, line: 48, size: 256, elements: !1315)
!1315 = !{!1316, !1319, !1320, !1321, !1322}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1314, file: !17, line: 49, baseType: !1317, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !17, line: 14, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1314, file: !17, line: 50, baseType: !102, size: 32, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1314, file: !17, line: 51, baseType: !102, size: 32, offset: 96)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1314, file: !17, line: 52, baseType: !93, size: 64, offset: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1314, file: !17, line: 53, baseType: !93, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1087, file: !1088, line: 835, baseType: !1324, size: 32, offset: 5120)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !277, line: 22, baseType: !1325)
!1325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !397, line: 28, baseType: !102)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1087, file: !1088, line: 836, baseType: !1324, size: 32, offset: 5152)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1087, file: !1088, line: 840, baseType: !93, size: 64, offset: 5184)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1087, file: !1088, line: 849, baseType: !1086, size: 64, offset: 5248)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1087, file: !1088, line: 852, baseType: !1086, size: 64, offset: 5312)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1087, file: !1088, line: 857, baseType: !301, size: 128, offset: 5376)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1087, file: !1088, line: 858, baseType: !301, size: 128, offset: 5504)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1087, file: !1088, line: 859, baseType: !1086, size: 64, offset: 5632)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1087, file: !1088, line: 867, baseType: !301, size: 128, offset: 5696)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1087, file: !1088, line: 868, baseType: !301, size: 128, offset: 5824)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1087, file: !1088, line: 871, baseType: !1336, size: 64, offset: 5952)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !38, line: 59, size: 768, elements: !1338)
!1338 = !{!1339, !1340, !1341, !1342, !1344, !1345, !1352, !1353}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1337, file: !38, line: 61, baseType: !1099, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1337, file: !38, line: 62, baseType: !5, size: 32, offset: 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1337, file: !38, line: 63, baseType: !285, offset: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1337, file: !38, line: 65, baseType: !1343, size: 256, offset: 64)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !599, size: 256, elements: !1033)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1337, file: !38, line: 66, baseType: !599, size: 64, offset: 320)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1337, file: !38, line: 68, baseType: !1346, size: 128, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1347, line: 40, baseType: !1348)
!1347 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1347, line: 36, size: 128, elements: !1349)
!1349 = !{!1350, !1351}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1348, file: !1347, line: 37, baseType: !285)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1348, file: !1347, line: 38, baseType: !301, size: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1337, file: !38, line: 69, baseType: !323, size: 128, align: 64, offset: 512)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1337, file: !38, line: 70, baseType: !1354, size: 128, offset: 640)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1355, size: 128, elements: !130)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !38, line: 54, size: 128, elements: !1356)
!1356 = !{!1357, !1358}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1355, file: !38, line: 55, baseType: !102, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1355, file: !38, line: 56, baseType: !1359, size: 64, offset: 64)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !38, line: 56, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1087, file: !1088, line: 872, baseType: !1362, size: 512, offset: 6016)
!1362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 512, elements: !1033)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1087, file: !1088, line: 873, baseType: !301, size: 128, offset: 6528)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1087, file: !1088, line: 874, baseType: !301, size: 128, offset: 6656)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1087, file: !1088, line: 876, baseType: !1366, size: 64, offset: 6784)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1368, line: 26, size: 192, elements: !1369)
!1368 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1367, file: !1368, line: 27, baseType: !5, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1367, file: !1368, line: 28, baseType: !1372, size: 128, offset: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1373, line: 43, size: 128, elements: !1374)
!1373 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1374 = !{!1375, !1376}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1372, file: !1373, line: 44, baseType: !740)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1372, file: !1373, line: 45, baseType: !301, size: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1087, file: !1088, line: 879, baseType: !671, size: 64, offset: 6848)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1087, file: !1088, line: 882, baseType: !671, size: 64, offset: 6912)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1087, file: !1088, line: 884, baseType: !376, size: 64, offset: 6976)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1087, file: !1088, line: 885, baseType: !376, size: 64, offset: 7040)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1087, file: !1088, line: 890, baseType: !376, size: 64, offset: 7104)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1087, file: !1088, line: 891, baseType: !1383, size: 128, offset: 7168)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1088, line: 242, size: 128, elements: !1384)
!1384 = !{!1385, !1386, !1387}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1383, file: !1088, line: 244, baseType: !376, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1383, file: !1088, line: 245, baseType: !376, size: 64, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1383, file: !1088, line: 246, baseType: !740, offset: 128)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1087, file: !1088, line: 900, baseType: !93, size: 64, offset: 7296)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1087, file: !1088, line: 901, baseType: !93, size: 64, offset: 7360)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1087, file: !1088, line: 904, baseType: !376, size: 64, offset: 7424)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1087, file: !1088, line: 907, baseType: !376, size: 64, offset: 7488)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1087, file: !1088, line: 910, baseType: !93, size: 64, offset: 7552)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1087, file: !1088, line: 911, baseType: !93, size: 64, offset: 7616)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1087, file: !1088, line: 914, baseType: !1395, size: 640, offset: 7680)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1396, line: 123, size: 640, elements: !1397)
!1396 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1397 = !{!1398, !1404, !1405}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1395, file: !1396, line: 124, baseType: !1399, size: 576)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, size: 576, elements: !615)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1396, line: 108, size: 192, elements: !1401)
!1401 = !{!1402, !1403}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1400, file: !1396, line: 109, baseType: !376, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1400, file: !1396, line: 110, baseType: !1212, size: 128, offset: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1395, file: !1396, line: 125, baseType: !5, size: 32, offset: 576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1395, file: !1396, line: 126, baseType: !5, size: 32, offset: 608)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1087, file: !1088, line: 917, baseType: !1407, size: 192, offset: 8320)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1396, line: 134, size: 192, elements: !1408)
!1408 = !{!1409, !1410}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1407, file: !1396, line: 135, baseType: !323, size: 128, align: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1407, file: !1396, line: 136, baseType: !5, size: 32, offset: 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1087, file: !1088, line: 923, baseType: !1412, size: 64, offset: 8512)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1415, line: 111, size: 1280, elements: !1416)
!1415 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1416 = !{!1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1434, !1435, !1436, !1437, !1438, !1439, !1546, !1547, !1548, !1549, !1575, !1578, !1588}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1414, file: !1415, line: 112, baseType: !714, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1414, file: !1415, line: 120, baseType: !390, size: 32, offset: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1414, file: !1415, line: 121, baseType: !399, size: 32, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1414, file: !1415, line: 122, baseType: !390, size: 32, offset: 96)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1414, file: !1415, line: 123, baseType: !399, size: 32, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1414, file: !1415, line: 124, baseType: !390, size: 32, offset: 160)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1414, file: !1415, line: 125, baseType: !399, size: 32, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1414, file: !1415, line: 126, baseType: !390, size: 32, offset: 224)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1414, file: !1415, line: 127, baseType: !399, size: 32, offset: 256)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1414, file: !1415, line: 128, baseType: !5, size: 32, offset: 288)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1414, file: !1415, line: 129, baseType: !1428, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1429, line: 26, baseType: !1430)
!1429 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1429, line: 24, size: 64, elements: !1431)
!1431 = !{!1432}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1430, file: !1429, line: 25, baseType: !1433, size: 64)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 64, elements: !144)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1414, file: !1415, line: 130, baseType: !1428, size: 64, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1414, file: !1415, line: 131, baseType: !1428, size: 64, offset: 448)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1414, file: !1415, line: 132, baseType: !1428, size: 64, offset: 512)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1414, file: !1415, line: 133, baseType: !1428, size: 64, offset: 576)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1414, file: !1415, line: 135, baseType: !85, size: 8, offset: 640)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1414, file: !1415, line: 137, baseType: !1440, size: 64, offset: 704)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1442, line: 189, size: 1664, elements: !1443)
!1442 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1443 = !{!1444, !1445, !1448, !1453, !1454, !1457, !1458, !1463, !1464, !1465, !1466, !1468, !1469, !1470, !1471, !1472, !1510, !1531}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1441, file: !1442, line: 190, baseType: !1099, size: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1441, file: !1442, line: 191, baseType: !1446, size: 32, offset: 32)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1442, line: 28, baseType: !1447)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !277, line: 98, baseType: !1309)
!1448 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !1442, line: 192, baseType: !1449, size: 192, offset: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !1442, line: 192, size: 192, elements: !1450)
!1450 = !{!1451, !1452}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1449, file: !1442, line: 193, baseType: !301, size: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1449, file: !1442, line: 194, baseType: !727, size: 192, align: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1441, file: !1442, line: 199, baseType: !734, size: 256, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1441, file: !1442, line: 200, baseType: !1455, size: 64, offset: 512)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1442, line: 200, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1441, file: !1442, line: 201, baseType: !84, size: 64, offset: 576)
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !1442, line: 202, baseType: !1459, size: 64, offset: 640)
!1459 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !1442, line: 202, size: 64, elements: !1460)
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1459, file: !1442, line: 203, baseType: !495, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1459, file: !1442, line: 204, baseType: !495, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1441, file: !1442, line: 206, baseType: !495, size: 64, offset: 704)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1441, file: !1442, line: 207, baseType: !390, size: 32, offset: 768)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1441, file: !1442, line: 208, baseType: !399, size: 32, offset: 800)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1441, file: !1442, line: 209, baseType: !1467, size: 32, offset: 832)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1442, line: 31, baseType: !514)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1441, file: !1442, line: 210, baseType: !124, size: 16, offset: 864)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1441, file: !1442, line: 211, baseType: !124, size: 16, offset: 880)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1441, file: !1442, line: 215, baseType: !189, size: 16, offset: 896)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1441, file: !1442, line: 222, baseType: !93, size: 64, offset: 960)
!1472 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !1442, line: 239, baseType: !1473, size: 320, offset: 1024)
!1473 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !1442, line: 239, size: 320, elements: !1474)
!1474 = !{!1475, !1502}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1473, file: !1442, line: 240, baseType: !1476, size: 320)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1442, line: 108, size: 320, elements: !1477)
!1477 = !{!1478, !1479, !1491, !1494, !1501}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1476, file: !1442, line: 110, baseType: !93, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !1442, line: 111, baseType: !1480, size: 64, offset: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1476, file: !1442, line: 111, size: 64, elements: !1481)
!1481 = !{!1482, !1490}
!1482 = !DIDerivedType(tag: DW_TAG_member, scope: !1480, file: !1442, line: 112, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1480, file: !1442, line: 112, size: 64, elements: !1484)
!1484 = !{!1485, !1486}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1483, file: !1442, line: 114, baseType: !260, size: 16)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1483, file: !1442, line: 115, baseType: !1487, size: 48, offset: 16)
!1487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 48, elements: !1488)
!1488 = !{!1489}
!1489 = !DISubrange(count: 6)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1480, file: !1442, line: 121, baseType: !93, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1476, file: !1442, line: 123, baseType: !1492, size: 64, offset: 128)
!1492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1493, size: 64)
!1493 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1442, line: 96, flags: DIFlagFwdDecl)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1476, file: !1442, line: 124, baseType: !1495, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1442, line: 102, size: 192, elements: !1497)
!1497 = !{!1498, !1499, !1500}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1496, file: !1442, line: 103, baseType: !323, size: 128, align: 64)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1496, file: !1442, line: 104, baseType: !1099, size: 32, offset: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1496, file: !1442, line: 105, baseType: !447, size: 8, offset: 160)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1476, file: !1442, line: 125, baseType: !113, size: 64, offset: 256)
!1502 = !DIDerivedType(tag: DW_TAG_member, scope: !1473, file: !1442, line: 241, baseType: !1503, size: 320)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1473, file: !1442, line: 241, size: 320, elements: !1504)
!1504 = !{!1505, !1506, !1507, !1508, !1509}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1503, file: !1442, line: 242, baseType: !93, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1503, file: !1442, line: 243, baseType: !93, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1503, file: !1442, line: 244, baseType: !1492, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1503, file: !1442, line: 245, baseType: !1495, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1503, file: !1442, line: 246, baseType: !442, size: 64, offset: 256)
!1510 = !DIDerivedType(tag: DW_TAG_member, scope: !1441, file: !1442, line: 254, baseType: !1511, size: 256, offset: 1344)
!1511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1441, file: !1442, line: 254, size: 256, elements: !1512)
!1512 = !{!1513, !1519}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1511, file: !1442, line: 255, baseType: !1514, size: 256)
!1514 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1442, line: 128, size: 256, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1514, file: !1442, line: 129, baseType: !84, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1514, file: !1442, line: 130, baseType: !1518, size: 256)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 256, elements: !1033)
!1519 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !1442, line: 256, baseType: !1520, size: 256)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1511, file: !1442, line: 256, size: 256, elements: !1521)
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1520, file: !1442, line: 258, baseType: !301, size: 128)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1520, file: !1442, line: 259, baseType: !1524, size: 128, offset: 128)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1525, line: 22, size: 128, elements: !1526)
!1525 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1526 = !{!1527, !1530}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1524, file: !1525, line: 23, baseType: !1528, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1525, line: 23, flags: DIFlagFwdDecl)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1524, file: !1525, line: 24, baseType: !93, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1441, file: !1442, line: 274, baseType: !1532, size: 64, offset: 1600)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1442, line: 170, size: 192, elements: !1534)
!1534 = !{!1535, !1544, !1545}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1533, file: !1442, line: 171, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1442, line: 165, baseType: !1537)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!102, !1440, !1540, !1542, !1440}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1493)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1514)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1533, file: !1442, line: 172, baseType: !1440, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1533, file: !1442, line: 173, baseType: !1492, size: 64, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1414, file: !1415, line: 138, baseType: !1440, size: 64, offset: 768)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1414, file: !1415, line: 139, baseType: !1440, size: 64, offset: 832)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1414, file: !1415, line: 140, baseType: !1440, size: 64, offset: 896)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1414, file: !1415, line: 145, baseType: !1550, size: 64, offset: 960)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1552, line: 13, size: 896, elements: !1553)
!1552 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1551, file: !1552, line: 14, baseType: !1099, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1551, file: !1552, line: 15, baseType: !714, size: 32, offset: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1551, file: !1552, line: 16, baseType: !714, size: 32, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1551, file: !1552, line: 21, baseType: !274, size: 64, offset: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1551, file: !1552, line: 27, baseType: !93, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1551, file: !1552, line: 28, baseType: !93, size: 64, offset: 256)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1551, file: !1552, line: 29, baseType: !274, size: 64, offset: 320)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1551, file: !1552, line: 32, baseType: !603, size: 128, offset: 384)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1551, file: !1552, line: 33, baseType: !390, size: 32, offset: 512)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1551, file: !1552, line: 37, baseType: !274, size: 64, offset: 576)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1551, file: !1552, line: 44, baseType: !1565, size: 256, offset: 640)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1566, line: 15, size: 256, elements: !1567)
!1566 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573, !1574}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1565, file: !1566, line: 16, baseType: !740)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1565, file: !1566, line: 18, baseType: !102, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1565, file: !1566, line: 19, baseType: !102, size: 32, offset: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1565, file: !1566, line: 20, baseType: !102, size: 32, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1565, file: !1566, line: 21, baseType: !102, size: 32, offset: 96)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1565, file: !1566, line: 22, baseType: !93, size: 64, offset: 128)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1565, file: !1566, line: 23, baseType: !93, size: 64, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1414, file: !1415, line: 146, baseType: !1576, size: 64, offset: 1024)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !689, line: 516, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1414, file: !1415, line: 147, baseType: !1579, size: 64, offset: 1088)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1415, line: 25, size: 64, elements: !1581)
!1581 = !{!1582, !1583, !1584}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1580, file: !1415, line: 26, baseType: !714, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1580, file: !1415, line: 27, baseType: !102, size: 32, offset: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1580, file: !1415, line: 28, baseType: !1585, offset: 64)
!1585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, elements: !1586)
!1586 = !{!1587}
!1587 = !DISubrange(count: 0)
!1588 = !DIDerivedType(tag: DW_TAG_member, scope: !1414, file: !1415, line: 149, baseType: !1589, size: 128, offset: 1152)
!1589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1414, file: !1415, line: 149, size: 128, elements: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1589, file: !1415, line: 150, baseType: !102, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1589, file: !1415, line: 151, baseType: !323, size: 128, align: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1087, file: !1088, line: 926, baseType: !1412, size: 64, offset: 8576)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1087, file: !1088, line: 929, baseType: !1412, size: 64, offset: 8640)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1087, file: !1088, line: 933, baseType: !1440, size: 64, offset: 8704)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1087, file: !1088, line: 943, baseType: !1597, size: 128, offset: 8768)
!1597 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !1598)
!1598 = !{!1599}
!1599 = !DISubrange(count: 16)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1087, file: !1088, line: 945, baseType: !1601, size: 64, offset: 8896)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1088, line: 49, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1087, file: !1088, line: 956, baseType: !1604, size: 64, offset: 8960)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1088, line: 45, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1087, file: !1088, line: 959, baseType: !1607, size: 64, offset: 9024)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1088, line: 959, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1087, file: !1088, line: 962, baseType: !1610, size: 64, offset: 9088)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1088, line: 66, flags: DIFlagFwdDecl)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1087, file: !1088, line: 966, baseType: !1613, size: 64, offset: 9152)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1088, line: 50, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1087, file: !1088, line: 969, baseType: !1616, size: 64, offset: 9216)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1618, line: 82, size: 7296, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1619 = !{!1620, !1621, !1622, !1623, !1624, !1625, !1626, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1655, !1664, !1665, !1667, !1668, !1669, !1672, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1702, !1703, !1710, !1711, !1712, !1713, !1714, !1715}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1617, file: !1618, line: 83, baseType: !1099, size: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1617, file: !1618, line: 84, baseType: !714, size: 32, offset: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1617, file: !1618, line: 85, baseType: !102, size: 32, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1617, file: !1618, line: 86, baseType: !301, size: 128, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1617, file: !1618, line: 88, baseType: !1346, size: 128, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1617, file: !1618, line: 91, baseType: !1086, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1617, file: !1618, line: 94, baseType: !1627, size: 192, offset: 448)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1628, line: 30, size: 192, elements: !1629)
!1628 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1629 = !{!1630, !1631}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1627, file: !1628, line: 31, baseType: !301, size: 128)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1627, file: !1628, line: 32, baseType: !1632, size: 64, offset: 128)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1633, line: 25, baseType: !1634)
!1633 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1633, line: 23, size: 64, elements: !1635)
!1635 = !{!1636}
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1634, file: !1633, line: 24, baseType: !129, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1617, file: !1618, line: 97, baseType: !599, size: 64, offset: 640)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1617, file: !1618, line: 100, baseType: !102, size: 32, offset: 704)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1617, file: !1618, line: 106, baseType: !102, size: 32, offset: 736)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1617, file: !1618, line: 107, baseType: !1086, size: 64, offset: 768)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1617, file: !1618, line: 110, baseType: !102, size: 32, offset: 832)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1617, file: !1618, line: 111, baseType: !5, size: 32, offset: 864)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1617, file: !1618, line: 122, baseType: !5, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1617, file: !1618, line: 123, baseType: !5, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1617, file: !1618, line: 128, baseType: !102, size: 32, offset: 928)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1617, file: !1618, line: 129, baseType: !301, size: 128, offset: 960)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1617, file: !1618, line: 132, baseType: !1161, size: 512, offset: 1088)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1617, file: !1618, line: 133, baseType: !1169, size: 64, offset: 1600)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1617, file: !1618, line: 140, baseType: !1650, size: 256, offset: 1664)
!1650 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1651, size: 256, elements: !144)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1618, line: 38, size: 128, elements: !1652)
!1652 = !{!1653, !1654}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1651, file: !1618, line: 39, baseType: !376, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1651, file: !1618, line: 40, baseType: !376, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1617, file: !1618, line: 146, baseType: !1656, size: 192, offset: 1920)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1618, line: 66, size: 192, elements: !1657)
!1657 = !{!1658}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1656, file: !1618, line: 67, baseType: !1659, size: 192)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1618, line: 47, size: 192, elements: !1660)
!1660 = !{!1661, !1662, !1663}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1659, file: !1618, line: 48, baseType: !276, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1659, file: !1618, line: 49, baseType: !276, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1659, file: !1618, line: 50, baseType: !276, size: 64, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1617, file: !1618, line: 150, baseType: !1395, size: 640, offset: 2112)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1617, file: !1618, line: 153, baseType: !1666, size: 256, offset: 2752)
!1666 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1336, size: 256, elements: !1033)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1617, file: !1618, line: 159, baseType: !1336, size: 64, offset: 3008)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1617, file: !1618, line: 162, baseType: !102, size: 32, offset: 3072)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1617, file: !1618, line: 164, baseType: !1670, size: 64, offset: 3136)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1618, line: 164, flags: DIFlagFwdDecl)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1617, file: !1618, line: 175, baseType: !1673, size: 32, offset: 3200)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !346, line: 805, baseType: !1674)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !346, line: 798, size: 32, elements: !1675)
!1675 = !{!1676, !1677}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1674, file: !346, line: 803, baseType: !345, size: 32)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1674, file: !346, line: 804, baseType: !285, offset: 32)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1617, file: !1618, line: 176, baseType: !376, size: 64, offset: 3264)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1617, file: !1618, line: 176, baseType: !376, size: 64, offset: 3328)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1617, file: !1618, line: 176, baseType: !376, size: 64, offset: 3392)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1617, file: !1618, line: 176, baseType: !376, size: 64, offset: 3456)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1617, file: !1618, line: 177, baseType: !376, size: 64, offset: 3520)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1617, file: !1618, line: 178, baseType: !376, size: 64, offset: 3584)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1617, file: !1618, line: 179, baseType: !1383, size: 128, offset: 3648)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1617, file: !1618, line: 180, baseType: !93, size: 64, offset: 3776)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1617, file: !1618, line: 180, baseType: !93, size: 64, offset: 3840)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1617, file: !1618, line: 180, baseType: !93, size: 64, offset: 3904)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1617, file: !1618, line: 180, baseType: !93, size: 64, offset: 3968)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1617, file: !1618, line: 181, baseType: !93, size: 64, offset: 4032)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1617, file: !1618, line: 181, baseType: !93, size: 64, offset: 4096)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1617, file: !1618, line: 181, baseType: !93, size: 64, offset: 4160)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1617, file: !1618, line: 181, baseType: !93, size: 64, offset: 4224)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1617, file: !1618, line: 182, baseType: !93, size: 64, offset: 4288)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1617, file: !1618, line: 182, baseType: !93, size: 64, offset: 4352)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1617, file: !1618, line: 182, baseType: !93, size: 64, offset: 4416)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1617, file: !1618, line: 182, baseType: !93, size: 64, offset: 4480)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1617, file: !1618, line: 183, baseType: !93, size: 64, offset: 4544)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1617, file: !1618, line: 183, baseType: !93, size: 64, offset: 4608)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1617, file: !1618, line: 184, baseType: !1700, offset: 4672)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1701, line: 12, elements: !299)
!1701 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1617, file: !1618, line: 192, baseType: !378, size: 64, offset: 4672)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1617, file: !1618, line: 203, baseType: !1704, size: 2048, offset: 4736)
!1704 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1705, size: 2048, elements: !1598)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1706, line: 43, size: 128, elements: !1707)
!1706 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1707 = !{!1708, !1709}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1705, file: !1706, line: 44, baseType: !538, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1705, file: !1706, line: 45, baseType: !538, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1617, file: !1618, line: 220, baseType: !447, size: 8, offset: 6784)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1617, file: !1618, line: 221, baseType: !189, size: 16, offset: 6800)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1617, file: !1618, line: 222, baseType: !189, size: 16, offset: 6816)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1617, file: !1618, line: 224, baseType: !932, size: 64, offset: 6848)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1617, file: !1618, line: 227, baseType: !270, size: 192, offset: 6912)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1617, file: !1618, line: 233, baseType: !270, size: 192, offset: 7104)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1087, file: !1088, line: 970, baseType: !1717, size: 64, offset: 9280)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1618, line: 20, size: 16576, elements: !1719)
!1719 = !{!1720, !1721, !1722, !1723}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1718, file: !1618, line: 21, baseType: !285)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1718, file: !1618, line: 22, baseType: !1099, size: 32)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1718, file: !1618, line: 23, baseType: !1346, size: 128, offset: 64)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1718, file: !1618, line: 24, baseType: !1724, size: 16384, offset: 192)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1725, size: 16384, elements: !1745)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1628, line: 49, size: 256, elements: !1726)
!1726 = !{!1727}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1725, file: !1628, line: 50, baseType: !1728, size: 256)
!1728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1628, line: 35, size: 256, elements: !1729)
!1729 = !{!1730, !1737, !1738, !1744}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1728, file: !1628, line: 37, baseType: !1731, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1732, line: 19, baseType: !1733)
!1732 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1732, line: 18, baseType: !1735)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{null, !102}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1728, file: !1628, line: 38, baseType: !93, size: 64, offset: 64)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1728, file: !1628, line: 44, baseType: !1739, size: 64, offset: 128)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1732, line: 22, baseType: !1740)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1732, line: 21, baseType: !1742)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{null}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1728, file: !1628, line: 46, baseType: !1632, size: 64, offset: 192)
!1745 = !{!1746}
!1746 = !DISubrange(count: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1087, file: !1088, line: 971, baseType: !1632, size: 64, offset: 9344)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1087, file: !1088, line: 972, baseType: !1632, size: 64, offset: 9408)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1087, file: !1088, line: 974, baseType: !1632, size: 64, offset: 9472)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1087, file: !1088, line: 975, baseType: !1627, size: 192, offset: 9536)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1087, file: !1088, line: 976, baseType: !93, size: 64, offset: 9728)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1087, file: !1088, line: 977, baseType: !536, size: 64, offset: 9792)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1087, file: !1088, line: 978, baseType: !5, size: 32, offset: 9856)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1087, file: !1088, line: 980, baseType: !326, size: 64, offset: 9920)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1087, file: !1088, line: 989, baseType: !1756, size: 128, offset: 9984)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1757, line: 35, size: 128, elements: !1758)
!1757 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1758 = !{!1759, !1760, !1761}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1756, file: !1757, line: 36, baseType: !102, size: 32)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1756, file: !1757, line: 37, baseType: !714, size: 32, offset: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1756, file: !1757, line: 38, baseType: !1762, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1757, line: 23, flags: DIFlagFwdDecl)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1087, file: !1088, line: 992, baseType: !376, size: 64, offset: 10112)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1087, file: !1088, line: 993, baseType: !376, size: 64, offset: 10176)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1087, file: !1088, line: 996, baseType: !285, offset: 10240)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1087, file: !1088, line: 999, baseType: !740, offset: 10240)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1087, file: !1088, line: 1001, baseType: !1769, size: 64, offset: 10240)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1088, line: 636, size: 64, elements: !1770)
!1770 = !{!1771}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1769, file: !1088, line: 637, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1087, file: !1088, line: 1005, baseType: !719, size: 128, offset: 10304)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1087, file: !1088, line: 1007, baseType: !1086, size: 64, offset: 10432)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1087, file: !1088, line: 1009, baseType: !1776, size: 64, offset: 10496)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1088, line: 1009, flags: DIFlagFwdDecl)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1087, file: !1088, line: 1043, baseType: !84, size: 64, offset: 10560)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1087, file: !1088, line: 1046, baseType: !1780, size: 64, offset: 10624)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1088, line: 41, flags: DIFlagFwdDecl)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1087, file: !1088, line: 1050, baseType: !1783, size: 64, offset: 10688)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1088, line: 42, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1087, file: !1088, line: 1054, baseType: !1786, size: 64, offset: 10752)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1088, line: 55, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !1087, file: !1088, line: 1056, baseType: !1789, size: 64, offset: 10816)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !1088, line: 40, flags: DIFlagFwdDecl)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1087, file: !1088, line: 1058, baseType: !1792, size: 64, offset: 10880)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1794, line: 99, size: 704, elements: !1795)
!1794 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1795 = !{!1796, !1797, !1798, !1799, !1800, !1801, !1802, !1821, !1822}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1793, file: !1794, line: 100, baseType: !274, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1793, file: !1794, line: 101, baseType: !714, size: 32, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1793, file: !1794, line: 102, baseType: !714, size: 32, offset: 96)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1793, file: !1794, line: 105, baseType: !285, offset: 128)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1793, file: !1794, line: 107, baseType: !124, size: 16, offset: 128)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1793, file: !1794, line: 109, baseType: !705, size: 128, offset: 192)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1793, file: !1794, line: 110, baseType: !1803, size: 64, offset: 320)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1794, line: 73, size: 448, elements: !1805)
!1805 = !{!1806, !1809, !1810, !1815, !1820}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1804, file: !1794, line: 74, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1794, line: 74, flags: DIFlagFwdDecl)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1804, file: !1794, line: 75, baseType: !1792, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !1794, line: 83, baseType: !1811, size: 128, offset: 128)
!1811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1804, file: !1794, line: 83, size: 128, elements: !1812)
!1812 = !{!1813, !1814}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1811, file: !1794, line: 84, baseType: !301, size: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1811, file: !1794, line: 85, baseType: !893, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, scope: !1804, file: !1794, line: 87, baseType: !1816, size: 128, offset: 256)
!1816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1804, file: !1794, line: 87, size: 128, elements: !1817)
!1817 = !{!1818, !1819}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1816, file: !1794, line: 88, baseType: !603, size: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1816, file: !1794, line: 89, baseType: !323, size: 128, align: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1804, file: !1794, line: 92, baseType: !5, size: 32, offset: 384)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1793, file: !1794, line: 111, baseType: !599, size: 64, offset: 384)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1793, file: !1794, line: 113, baseType: !1823, size: 256, offset: 448)
!1823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1824, line: 102, size: 256, elements: !1825)
!1824 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1825 = !{!1826, !1827, !1828}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1823, file: !1824, line: 103, baseType: !274, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1823, file: !1824, line: 104, baseType: !301, size: 128, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1823, file: !1824, line: 105, baseType: !1829, size: 64, offset: 192)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1824, line: 21, baseType: !1830)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{null, !1833}
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1087, file: !1088, line: 1061, baseType: !1835, size: 64, offset: 10944)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1088, line: 43, flags: DIFlagFwdDecl)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1087, file: !1088, line: 1064, baseType: !93, size: 64, offset: 11008)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1087, file: !1088, line: 1065, baseType: !1839, size: 64, offset: 11072)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1628, line: 14, baseType: !1841)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1628, line: 12, size: 384, elements: !1842)
!1842 = !{!1843}
!1843 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !1628, line: 13, baseType: !1844, size: 384)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !1628, line: 13, size: 384, elements: !1845)
!1845 = !{!1846, !1847, !1848, !1849}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1844, file: !1628, line: 13, baseType: !102, size: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1844, file: !1628, line: 13, baseType: !102, size: 32, offset: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1844, file: !1628, line: 13, baseType: !102, size: 32, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1844, file: !1628, line: 13, baseType: !1850, size: 256, offset: 128)
!1850 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1851, line: 32, size: 256, elements: !1852)
!1851 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1852 = !{!1853, !1858, !1871, !1877, !1886, !1906, !1911}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1850, file: !1851, line: 37, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 34, size: 64, elements: !1855)
!1855 = !{!1856, !1857}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1854, file: !1851, line: 35, baseType: !1325, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1854, file: !1851, line: 36, baseType: !396, size: 32, offset: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1850, file: !1851, line: 45, baseType: !1859, size: 192)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 40, size: 192, elements: !1860)
!1860 = !{!1861, !1863, !1864, !1870}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1859, file: !1851, line: 41, baseType: !1862, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !397, line: 95, baseType: !102)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1859, file: !1851, line: 42, baseType: !102, size: 32, offset: 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1859, file: !1851, line: 43, baseType: !1865, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1851, line: 11, baseType: !1866)
!1866 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1851, line: 8, size: 64, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1866, file: !1851, line: 9, baseType: !102, size: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1866, file: !1851, line: 10, baseType: !84, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1859, file: !1851, line: 44, baseType: !102, size: 32, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1850, file: !1851, line: 52, baseType: !1872, size: 128)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 48, size: 128, elements: !1873)
!1873 = !{!1874, !1875, !1876}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1872, file: !1851, line: 49, baseType: !1325, size: 32)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1872, file: !1851, line: 50, baseType: !396, size: 32, offset: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1872, file: !1851, line: 51, baseType: !1865, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1850, file: !1851, line: 61, baseType: !1878, size: 256)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 55, size: 256, elements: !1879)
!1879 = !{!1880, !1881, !1882, !1883, !1885}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1878, file: !1851, line: 56, baseType: !1325, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1878, file: !1851, line: 57, baseType: !396, size: 32, offset: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1878, file: !1851, line: 58, baseType: !102, size: 32, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1878, file: !1851, line: 59, baseType: !1884, size: 64, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !397, line: 94, baseType: !535)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1878, file: !1851, line: 60, baseType: !1884, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1850, file: !1851, line: 95, baseType: !1887, size: 256)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 64, size: 256, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1887, file: !1851, line: 65, baseType: !84, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, scope: !1887, file: !1851, line: 77, baseType: !1891, size: 192, offset: 64)
!1891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1887, file: !1851, line: 77, size: 192, elements: !1892)
!1892 = !{!1893, !1894, !1901}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1891, file: !1851, line: 82, baseType: !189, size: 16)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1891, file: !1851, line: 88, baseType: !1895, size: 192)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1891, file: !1851, line: 84, size: 192, elements: !1896)
!1896 = !{!1897, !1899, !1900}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1895, file: !1851, line: 85, baseType: !1898, size: 64)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 64, elements: !1199)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1895, file: !1851, line: 86, baseType: !84, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1895, file: !1851, line: 87, baseType: !84, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1891, file: !1851, line: 93, baseType: !1902, size: 96)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1891, file: !1851, line: 90, size: 96, elements: !1903)
!1903 = !{!1904, !1905}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1902, file: !1851, line: 91, baseType: !1898, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1902, file: !1851, line: 92, baseType: !164, size: 32, offset: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1850, file: !1851, line: 101, baseType: !1907, size: 128)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 98, size: 128, elements: !1908)
!1908 = !{!1909, !1910}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1907, file: !1851, line: 99, baseType: !91, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1907, file: !1851, line: 100, baseType: !102, size: 32, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1850, file: !1851, line: 108, baseType: !1912, size: 128)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1850, file: !1851, line: 104, size: 128, elements: !1913)
!1913 = !{!1914, !1915, !1916}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1912, file: !1851, line: 105, baseType: !84, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1912, file: !1851, line: 106, baseType: !102, size: 32, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1912, file: !1851, line: 107, baseType: !5, size: 32, offset: 96)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1087, file: !1088, line: 1067, baseType: !1700, offset: 11136)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1087, file: !1088, line: 1099, baseType: !1919, size: 64, offset: 11136)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1088, line: 56, flags: DIFlagFwdDecl)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1087, file: !1088, line: 1103, baseType: !301, size: 128, offset: 11200)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1087, file: !1088, line: 1104, baseType: !1923, size: 64, offset: 11328)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1088, line: 46, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1087, file: !1088, line: 1105, baseType: !270, size: 192, offset: 11392)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1087, file: !1088, line: 1106, baseType: !5, size: 32, offset: 11584)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1087, file: !1088, line: 1109, baseType: !1928, size: 128, offset: 11648)
!1928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1929, size: 128, elements: !144)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1088, line: 51, flags: DIFlagFwdDecl)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1087, file: !1088, line: 1110, baseType: !270, size: 192, offset: 11776)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1087, file: !1088, line: 1111, baseType: !301, size: 128, offset: 11968)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1087, file: !1088, line: 1173, baseType: !1934, size: 64, offset: 12096)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1936, line: 62, size: 256, align: 256, elements: !1937)
!1936 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !{!1938, !1939, !1940, !1945}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1935, file: !1936, line: 75, baseType: !164, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1935, file: !1936, line: 90, baseType: !164, size: 32, offset: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1935, file: !1936, line: 124, baseType: !1941, size: 64, offset: 64)
!1941 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1935, file: !1936, line: 109, size: 64, elements: !1942)
!1942 = !{!1943, !1944}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1941, file: !1936, line: 110, baseType: !377, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1941, file: !1936, line: 112, baseType: !377, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1935, file: !1936, line: 144, baseType: !164, size: 32, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1087, file: !1088, line: 1174, baseType: !373, size: 32, offset: 12160)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1087, file: !1088, line: 1179, baseType: !93, size: 64, offset: 12224)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1087, file: !1088, line: 1182, baseType: !1949, size: 128, offset: 12288)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1029, line: 76, size: 128, elements: !1950)
!1950 = !{!1951, !1956, !1957}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1949, file: !1029, line: 85, baseType: !1952, size: 64)
!1952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1953, line: 7, size: 64, elements: !1954)
!1953 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1954 = !{!1955}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1952, file: !1953, line: 12, baseType: !1235, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1949, file: !1029, line: 88, baseType: !447, size: 8, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1949, file: !1029, line: 95, baseType: !447, size: 8, offset: 72)
!1958 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !1088, line: 1184, baseType: !1959, size: 128, offset: 12416)
!1959 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !1088, line: 1184, size: 128, elements: !1960)
!1960 = !{!1961, !1962}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1959, file: !1088, line: 1185, baseType: !1099, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1959, file: !1088, line: 1186, baseType: !323, size: 128, align: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1087, file: !1088, line: 1190, baseType: !1964, size: 64, offset: 12544)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1088, line: 53, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1087, file: !1088, line: 1192, baseType: !1967, size: 128, offset: 12608)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1029, line: 64, size: 128, elements: !1968)
!1968 = !{!1969, !1970, !1971}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1967, file: !1029, line: 65, baseType: !687, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1967, file: !1029, line: 67, baseType: !164, size: 32, offset: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1967, file: !1029, line: 68, baseType: !164, size: 32, offset: 96)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1087, file: !1088, line: 1206, baseType: !102, size: 32, offset: 12736)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1087, file: !1088, line: 1207, baseType: !102, size: 32, offset: 12768)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1087, file: !1088, line: 1209, baseType: !93, size: 64, offset: 12800)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1087, file: !1088, line: 1219, baseType: !376, size: 64, offset: 12864)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1087, file: !1088, line: 1220, baseType: !376, size: 64, offset: 12928)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1087, file: !1088, line: 1317, baseType: !102, size: 32, offset: 12992)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1087, file: !1088, line: 1319, baseType: !1086, size: 64, offset: 13056)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1087, file: !1088, line: 1322, baseType: !1980, size: 64, offset: 13120)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1982, line: 9, flags: DIFlagFwdDecl)
!1982 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1087, file: !1088, line: 1326, baseType: !1099, size: 32, offset: 13184)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1087, file: !1088, line: 1342, baseType: !84, size: 64, offset: 13248)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1087, file: !1088, line: 1343, baseType: !377, size: 64, offset: 13312)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1087, file: !1088, line: 1344, baseType: !376, size: 64, offset: 13376)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1087, file: !1088, line: 1345, baseType: !377, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1087, file: !1088, line: 1346, baseType: !377, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1087, file: !1088, line: 1347, baseType: !377, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1087, file: !1088, line: 1348, baseType: !323, size: 128, align: 64, offset: 13504)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1087, file: !1088, line: 1358, baseType: !1992, size: 34816, offset: 13824)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1993, line: 485, size: 34816, elements: !1994)
!1993 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1994 = !{!1995, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2024, !2025, !2026, !2027, !2028, !2029, !2032, !2033, !2034}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1992, file: !1993, line: 487, baseType: !1996, size: 192)
!1996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1997, size: 192, elements: !615)
!1997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1998, line: 16, size: 64, elements: !1999)
!1998 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1999 = !{!2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1997, file: !1998, line: 17, baseType: !260, size: 16)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1997, file: !1998, line: 18, baseType: !260, size: 16, offset: 16)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1997, file: !1998, line: 19, baseType: !260, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1997, file: !1998, line: 19, baseType: !260, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1997, file: !1998, line: 19, baseType: !260, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1997, file: !1998, line: 19, baseType: !260, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1997, file: !1998, line: 19, baseType: !260, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1997, file: !1998, line: 20, baseType: !260, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1997, file: !1998, line: 20, baseType: !260, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1997, file: !1998, line: 20, baseType: !260, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1997, file: !1998, line: 20, baseType: !260, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1997, file: !1998, line: 20, baseType: !260, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1997, file: !1998, line: 20, baseType: !260, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1992, file: !1993, line: 491, baseType: !93, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1992, file: !1993, line: 495, baseType: !124, size: 16, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1992, file: !1993, line: 496, baseType: !124, size: 16, offset: 272)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1992, file: !1993, line: 497, baseType: !124, size: 16, offset: 288)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1992, file: !1993, line: 498, baseType: !124, size: 16, offset: 304)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1992, file: !1993, line: 502, baseType: !93, size: 64, offset: 320)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1992, file: !1993, line: 503, baseType: !93, size: 64, offset: 384)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1992, file: !1993, line: 514, baseType: !2021, size: 256, offset: 448)
!2021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2022, size: 256, elements: !1033)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1993, line: 483, flags: DIFlagFwdDecl)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1992, file: !1993, line: 516, baseType: !93, size: 64, offset: 704)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1992, file: !1993, line: 518, baseType: !93, size: 64, offset: 768)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1992, file: !1993, line: 520, baseType: !93, size: 64, offset: 832)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1992, file: !1993, line: 521, baseType: !93, size: 64, offset: 896)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1992, file: !1993, line: 522, baseType: !93, size: 64, offset: 960)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1992, file: !1993, line: 528, baseType: !2030, size: 64, offset: 1024)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1993, line: 10, flags: DIFlagFwdDecl)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1992, file: !1993, line: 535, baseType: !93, size: 64, offset: 1088)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1992, file: !1993, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1992, file: !1993, line: 540, baseType: !2035, size: 33280, offset: 1536)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2036, line: 317, size: 33280, elements: !2037)
!2036 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!2037 = !{!2038, !2039, !2040}
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2035, file: !2036, line: 330, baseType: !5, size: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2035, file: !2036, line: 337, baseType: !93, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2035, file: !2036, line: 348, baseType: !2041, size: 32768, offset: 512)
!2041 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2036, line: 304, size: 32768, elements: !2042)
!2042 = !{!2043, !2058, !2093, !2143, !2156}
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2041, file: !2036, line: 305, baseType: !2044, size: 896)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2036, line: 12, size: 896, elements: !2045)
!2045 = !{!2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2057}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2044, file: !2036, line: 13, baseType: !373, size: 32)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2044, file: !2036, line: 14, baseType: !373, size: 32, offset: 32)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2044, file: !2036, line: 15, baseType: !373, size: 32, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2044, file: !2036, line: 16, baseType: !373, size: 32, offset: 96)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2044, file: !2036, line: 17, baseType: !373, size: 32, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2044, file: !2036, line: 18, baseType: !373, size: 32, offset: 160)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2044, file: !2036, line: 19, baseType: !373, size: 32, offset: 192)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2044, file: !2036, line: 22, baseType: !2054, size: 640, offset: 224)
!2054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 640, elements: !2055)
!2055 = !{!2056}
!2056 = !DISubrange(count: 20)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2044, file: !2036, line: 25, baseType: !373, size: 32, offset: 864)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2041, file: !2036, line: 306, baseType: !2059, size: 4096, align: 128)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2036, line: 34, size: 4096, align: 128, elements: !2060)
!2060 = !{!2061, !2062, !2063, !2064, !2065, !2080, !2081, !2082, !2084, !2086, !2088}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2059, file: !2036, line: 35, baseType: !260, size: 16)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2059, file: !2036, line: 36, baseType: !260, size: 16, offset: 16)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2059, file: !2036, line: 37, baseType: !260, size: 16, offset: 32)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2059, file: !2036, line: 38, baseType: !260, size: 16, offset: 48)
!2065 = !DIDerivedType(tag: DW_TAG_member, scope: !2059, file: !2036, line: 39, baseType: !2066, size: 128, offset: 64)
!2066 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2059, file: !2036, line: 39, size: 128, elements: !2067)
!2067 = !{!2068, !2073}
!2068 = !DIDerivedType(tag: DW_TAG_member, scope: !2066, file: !2036, line: 40, baseType: !2069, size: 128)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2066, file: !2036, line: 40, size: 128, elements: !2070)
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2069, file: !2036, line: 41, baseType: !376, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2069, file: !2036, line: 42, baseType: !376, size: 64, offset: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, scope: !2066, file: !2036, line: 44, baseType: !2074, size: 128)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2066, file: !2036, line: 44, size: 128, elements: !2075)
!2075 = !{!2076, !2077, !2078, !2079}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2074, file: !2036, line: 45, baseType: !373, size: 32)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2074, file: !2036, line: 46, baseType: !373, size: 32, offset: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2074, file: !2036, line: 47, baseType: !373, size: 32, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2074, file: !2036, line: 48, baseType: !373, size: 32, offset: 96)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2059, file: !2036, line: 51, baseType: !373, size: 32, offset: 192)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2059, file: !2036, line: 52, baseType: !373, size: 32, offset: 224)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2059, file: !2036, line: 55, baseType: !2083, size: 1024, offset: 256)
!2083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 1024, elements: !167)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2059, file: !2036, line: 58, baseType: !2085, size: 2048, offset: 1280)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 2048, elements: !1745)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2059, file: !2036, line: 60, baseType: !2087, size: 384, offset: 3328)
!2087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 384, elements: !135)
!2088 = !DIDerivedType(tag: DW_TAG_member, scope: !2059, file: !2036, line: 62, baseType: !2089, size: 384, offset: 3712)
!2089 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2059, file: !2036, line: 62, size: 384, elements: !2090)
!2090 = !{!2091, !2092}
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2089, file: !2036, line: 63, baseType: !2087, size: 384)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2089, file: !2036, line: 64, baseType: !2087, size: 384)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2041, file: !2036, line: 307, baseType: !2094, size: 1088)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2036, line: 79, size: 1088, elements: !2095)
!2095 = !{!2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2142}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2094, file: !2036, line: 80, baseType: !373, size: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2094, file: !2036, line: 81, baseType: !373, size: 32, offset: 32)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2094, file: !2036, line: 82, baseType: !373, size: 32, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2094, file: !2036, line: 83, baseType: !373, size: 32, offset: 96)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2094, file: !2036, line: 84, baseType: !373, size: 32, offset: 128)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2094, file: !2036, line: 85, baseType: !373, size: 32, offset: 160)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2094, file: !2036, line: 86, baseType: !373, size: 32, offset: 192)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2094, file: !2036, line: 88, baseType: !2054, size: 640, offset: 224)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2094, file: !2036, line: 89, baseType: !1221, size: 8, offset: 864)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2094, file: !2036, line: 90, baseType: !1221, size: 8, offset: 872)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2094, file: !2036, line: 91, baseType: !1221, size: 8, offset: 880)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2094, file: !2036, line: 92, baseType: !1221, size: 8, offset: 888)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2094, file: !2036, line: 93, baseType: !1221, size: 8, offset: 896)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2094, file: !2036, line: 94, baseType: !1221, size: 8, offset: 904)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2094, file: !2036, line: 95, baseType: !2111, size: 64, offset: 960)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2113, line: 11, size: 128, elements: !2114)
!2113 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2114 = !{!2115, !2116}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2112, file: !2113, line: 12, baseType: !91, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2112, file: !2113, line: 13, baseType: !2117, size: 64, offset: 64)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2119, line: 56, size: 1344, elements: !2120)
!2119 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2120 = !{!2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2118, file: !2119, line: 61, baseType: !93, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2118, file: !2119, line: 62, baseType: !93, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2118, file: !2119, line: 63, baseType: !93, size: 64, offset: 128)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2118, file: !2119, line: 64, baseType: !93, size: 64, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2118, file: !2119, line: 65, baseType: !93, size: 64, offset: 256)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2118, file: !2119, line: 66, baseType: !93, size: 64, offset: 320)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2118, file: !2119, line: 68, baseType: !93, size: 64, offset: 384)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2118, file: !2119, line: 69, baseType: !93, size: 64, offset: 448)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2118, file: !2119, line: 70, baseType: !93, size: 64, offset: 512)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2118, file: !2119, line: 71, baseType: !93, size: 64, offset: 576)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2118, file: !2119, line: 72, baseType: !93, size: 64, offset: 640)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2118, file: !2119, line: 73, baseType: !93, size: 64, offset: 704)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2118, file: !2119, line: 74, baseType: !93, size: 64, offset: 768)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2118, file: !2119, line: 75, baseType: !93, size: 64, offset: 832)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2118, file: !2119, line: 76, baseType: !93, size: 64, offset: 896)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2118, file: !2119, line: 81, baseType: !93, size: 64, offset: 960)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2118, file: !2119, line: 83, baseType: !93, size: 64, offset: 1024)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2118, file: !2119, line: 84, baseType: !93, size: 64, offset: 1088)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2118, file: !2119, line: 85, baseType: !93, size: 64, offset: 1152)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2118, file: !2119, line: 86, baseType: !93, size: 64, offset: 1216)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2118, file: !2119, line: 87, baseType: !93, size: 64, offset: 1280)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2094, file: !2036, line: 96, baseType: !373, size: 32, offset: 1024)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2041, file: !2036, line: 308, baseType: !2144, size: 4608, align: 512)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2036, line: 289, size: 4608, align: 512, elements: !2145)
!2145 = !{!2146, !2147, !2154}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2144, file: !2036, line: 290, baseType: !2059, size: 4096, align: 128)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2144, file: !2036, line: 291, baseType: !2148, size: 512, offset: 4096)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2036, line: 268, size: 512, elements: !2149)
!2149 = !{!2150, !2151, !2152}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2148, file: !2036, line: 269, baseType: !376, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2148, file: !2036, line: 270, baseType: !376, size: 64, offset: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2148, file: !2036, line: 271, baseType: !2153, size: 384, offset: 128)
!2153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !376, size: 384, elements: !1488)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2144, file: !2036, line: 292, baseType: !2155, offset: 4608)
!2155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, elements: !1586)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2041, file: !2036, line: 309, baseType: !2157, size: 32768)
!2157 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1221, size: 32768, elements: !2158)
!2158 = !{!2159}
!2159 = !DISubrange(count: 4096)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1083, file: !689, line: 378, baseType: !2161, size: 64, offset: 64)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !1079, file: !689, line: 384, baseType: !1367, size: 192, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !936, file: !689, line: 500, baseType: !285, offset: 6656)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !936, file: !689, line: 501, baseType: !2165, size: 64, offset: 6656)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !689, line: 387, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !936, file: !689, line: 516, baseType: !1576, size: 64, offset: 6720)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !936, file: !689, line: 519, baseType: !310, size: 64, offset: 6784)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !936, file: !689, line: 521, baseType: !2170, size: 64, offset: 6848)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !689, line: 521, flags: DIFlagFwdDecl)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !936, file: !689, line: 545, baseType: !714, size: 32, offset: 6912)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !936, file: !689, line: 548, baseType: !447, size: 8, offset: 6944)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !936, file: !689, line: 550, baseType: !2175, offset: 6952)
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2176, line: 142, elements: !299)
!2176 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !936, file: !689, line: 554, baseType: !1823, size: 256, offset: 6976)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !936, file: !689, line: 557, baseType: !373, size: 32, offset: 7232)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !933, file: !689, line: 565, baseType: !2180, offset: 7296)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, elements: !2181)
!2181 = !{!2182}
!2182 = !DISubrange(count: -1)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !929, file: !689, line: 151, baseType: !714, size: 32)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !922, file: !689, line: 156, baseType: !285, offset: 256)
!2185 = !DIDerivedType(tag: DW_TAG_member, scope: !693, file: !689, line: 159, baseType: !2186, size: 128)
!2186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !693, file: !689, line: 159, size: 128, elements: !2187)
!2187 = !{!2188, !2191}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2186, file: !689, line: 161, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !689, line: 161, flags: DIFlagFwdDecl)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2186, file: !689, line: 162, baseType: !84, size: 64, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !693, file: !689, line: 176, baseType: !323, size: 128, align: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, scope: !688, file: !689, line: 179, baseType: !2194, size: 32, offset: 384)
!2194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !688, file: !689, line: 179, size: 32, elements: !2195)
!2195 = !{!2196, !2197, !2198, !2199}
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2194, file: !689, line: 184, baseType: !714, size: 32)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2194, file: !689, line: 192, baseType: !5, size: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2194, file: !689, line: 194, baseType: !5, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2194, file: !689, line: 195, baseType: !102, size: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !688, file: !689, line: 199, baseType: !714, size: 32, offset: 416)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !623, file: !29, line: 1964, baseType: !2202, size: 64, offset: 1344)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!91, !560, !2205}
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2207, line: 12, size: 256, elements: !2208)
!2207 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2208 = !{!2209, !2210, !2211, !2212, !2213}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2206, file: !2207, line: 13, baseType: !710, size: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2206, file: !2207, line: 16, baseType: !102, size: 32, offset: 32)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2206, file: !2207, line: 23, baseType: !93, size: 64, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2206, file: !2207, line: 30, baseType: !93, size: 64, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2206, file: !2207, line: 33, baseType: !2214, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !689, line: 27, flags: DIFlagFwdDecl)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !623, file: !29, line: 1966, baseType: !2202, size: 64, offset: 1408)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !561, file: !29, line: 1424, baseType: !2218, size: 64, offset: 448)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2220)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !23, line: 322, size: 704, elements: !2221)
!2221 = !{!2222, !2268, !2272, !2276, !2277, !2278, !2279, !2280, !2285, !2290, !2294}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2220, file: !23, line: 323, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!102, !2226}
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !23, line: 294, size: 1600, elements: !2228)
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2253, !2254, !2255}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2227, file: !23, line: 295, baseType: !603, size: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2227, file: !23, line: 296, baseType: !301, size: 128, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2227, file: !23, line: 297, baseType: !301, size: 128, offset: 256)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2227, file: !23, line: 298, baseType: !301, size: 128, offset: 384)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2227, file: !23, line: 299, baseType: !270, size: 192, offset: 512)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2227, file: !23, line: 300, baseType: !285, offset: 704)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2227, file: !23, line: 301, baseType: !714, size: 32, offset: 704)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2227, file: !23, line: 302, baseType: !560, size: 64, offset: 768)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2227, file: !23, line: 303, baseType: !2238, size: 64, offset: 832)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !23, line: 68, size: 64, elements: !2239)
!2239 = !{!2240, !2252}
!2240 = !DIDerivedType(tag: DW_TAG_member, scope: !2238, file: !23, line: 69, baseType: !2241, size: 32)
!2241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2238, file: !23, line: 69, size: 32, elements: !2242)
!2242 = !{!2243, !2244, !2245}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2241, file: !23, line: 70, baseType: !390, size: 32)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2241, file: !23, line: 71, baseType: !399, size: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2241, file: !23, line: 72, baseType: !2246, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2247, line: 24, baseType: !2248)
!2247 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2247, line: 22, size: 32, elements: !2249)
!2249 = !{!2250}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2248, file: !2247, line: 23, baseType: !2251, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2247, line: 20, baseType: !396)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2238, file: !23, line: 74, baseType: !22, size: 32, offset: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2227, file: !23, line: 304, baseType: !488, size: 64, offset: 896)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2227, file: !23, line: 305, baseType: !93, size: 64, offset: 960)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2227, file: !23, line: 306, baseType: !2256, size: 576, offset: 1024)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !23, line: 205, size: 576, elements: !2257)
!2257 = !{!2258, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2256, file: !23, line: 206, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !23, line: 66, baseType: !283)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2256, file: !23, line: 207, baseType: !2259, size: 64, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2256, file: !23, line: 208, baseType: !2259, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2256, file: !23, line: 209, baseType: !2259, size: 64, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2256, file: !23, line: 210, baseType: !2259, size: 64, offset: 256)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2256, file: !23, line: 211, baseType: !2259, size: 64, offset: 320)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2256, file: !23, line: 212, baseType: !2259, size: 64, offset: 384)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2256, file: !23, line: 213, baseType: !495, size: 64, offset: 448)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2256, file: !23, line: 214, baseType: !495, size: 64, offset: 512)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2220, file: !23, line: 324, baseType: !2269, size: 64, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!2226, !560, !102}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2220, file: !23, line: 325, baseType: !2273, size: 64, offset: 128)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{null, !2226}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2220, file: !23, line: 326, baseType: !2223, size: 64, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2220, file: !23, line: 327, baseType: !2223, size: 64, offset: 256)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2220, file: !23, line: 328, baseType: !2223, size: 64, offset: 320)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2220, file: !23, line: 329, baseType: !651, size: 64, offset: 384)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2220, file: !23, line: 332, baseType: !2281, size: 64, offset: 448)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!2284, !383}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2220, file: !23, line: 333, baseType: !2286, size: 64, offset: 512)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!102, !383, !2289}
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2220, file: !23, line: 335, baseType: !2291, size: 64, offset: 576)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!102, !383, !2284}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2220, file: !23, line: 337, baseType: !2295, size: 64, offset: 640)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DISubroutineType(types: !2297)
!2297 = !{!102, !560, !2298}
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !561, file: !29, line: 1425, baseType: !2300, size: 64, offset: 512)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2302)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !23, line: 428, size: 704, elements: !2303)
!2303 = !{!2304, !2308, !2309, !2313, !2314, !2315, !2330, !2353, !2357, !2358, !2381}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2302, file: !23, line: 429, baseType: !2305, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!102, !560, !102, !102, !504}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2302, file: !23, line: 430, baseType: !651, size: 64, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2302, file: !23, line: 431, baseType: !2310, size: 64, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!102, !560, !5}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2302, file: !23, line: 432, baseType: !2310, size: 64, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2302, file: !23, line: 433, baseType: !651, size: 64, offset: 256)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2302, file: !23, line: 434, baseType: !2316, size: 64, offset: 320)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!102, !560, !102, !2319}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !23, line: 415, size: 256, elements: !2321)
!2321 = !{!2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2320, file: !23, line: 416, baseType: !102, size: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2320, file: !23, line: 417, baseType: !5, size: 32, offset: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2320, file: !23, line: 418, baseType: !5, size: 32, offset: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2320, file: !23, line: 420, baseType: !5, size: 32, offset: 96)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2320, file: !23, line: 421, baseType: !5, size: 32, offset: 128)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2320, file: !23, line: 422, baseType: !5, size: 32, offset: 160)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2320, file: !23, line: 423, baseType: !5, size: 32, offset: 192)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2320, file: !23, line: 424, baseType: !5, size: 32, offset: 224)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2302, file: !23, line: 435, baseType: !2331, size: 64, offset: 384)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!102, !560, !2238, !2334}
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !23, line: 343, size: 960, elements: !2336)
!2336 = !{!2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2335, file: !23, line: 344, baseType: !102, size: 32)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2335, file: !23, line: 345, baseType: !376, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2335, file: !23, line: 346, baseType: !376, size: 64, offset: 128)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2335, file: !23, line: 347, baseType: !376, size: 64, offset: 192)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2335, file: !23, line: 348, baseType: !376, size: 64, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2335, file: !23, line: 349, baseType: !376, size: 64, offset: 320)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2335, file: !23, line: 350, baseType: !376, size: 64, offset: 384)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2335, file: !23, line: 351, baseType: !281, size: 64, offset: 448)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2335, file: !23, line: 353, baseType: !281, size: 64, offset: 512)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2335, file: !23, line: 354, baseType: !102, size: 32, offset: 576)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2335, file: !23, line: 355, baseType: !102, size: 32, offset: 608)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2335, file: !23, line: 356, baseType: !376, size: 64, offset: 640)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2335, file: !23, line: 357, baseType: !376, size: 64, offset: 704)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2335, file: !23, line: 358, baseType: !376, size: 64, offset: 768)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2335, file: !23, line: 359, baseType: !281, size: 64, offset: 832)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2335, file: !23, line: 360, baseType: !102, size: 32, offset: 896)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2302, file: !23, line: 436, baseType: !2354, size: 64, offset: 448)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!102, !560, !2298, !2334}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2302, file: !23, line: 438, baseType: !2331, size: 64, offset: 512)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2302, file: !23, line: 439, baseType: !2359, size: 64, offset: 576)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!102, !560, !2362}
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !23, line: 409, size: 1408, elements: !2364)
!2364 = !{!2365, !2366}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2363, file: !23, line: 410, baseType: !5, size: 32)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2363, file: !23, line: 411, baseType: !2367, size: 1344, offset: 64)
!2367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2368, size: 1344, elements: !615)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !23, line: 395, size: 448, elements: !2369)
!2369 = !{!2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2380}
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2368, file: !23, line: 396, baseType: !5, size: 32)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2368, file: !23, line: 397, baseType: !5, size: 32, offset: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2368, file: !23, line: 399, baseType: !5, size: 32, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2368, file: !23, line: 400, baseType: !5, size: 32, offset: 96)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2368, file: !23, line: 401, baseType: !5, size: 32, offset: 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2368, file: !23, line: 402, baseType: !5, size: 32, offset: 160)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2368, file: !23, line: 403, baseType: !5, size: 32, offset: 192)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2368, file: !23, line: 404, baseType: !378, size: 64, offset: 256)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2368, file: !23, line: 405, baseType: !2379, size: 64, offset: 320)
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !277, line: 126, baseType: !376)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2368, file: !23, line: 406, baseType: !2379, size: 64, offset: 384)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2302, file: !23, line: 440, baseType: !2310, size: 64, offset: 640)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !561, file: !29, line: 1426, baseType: !2383, size: 64, offset: 576)
!2383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2384, size: 64)
!2384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2385)
!2385 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !29, line: 49, flags: DIFlagFwdDecl)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !561, file: !29, line: 1427, baseType: !93, size: 64, offset: 640)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !561, file: !29, line: 1428, baseType: !93, size: 64, offset: 704)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !561, file: !29, line: 1429, baseType: !93, size: 64, offset: 768)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !561, file: !29, line: 1430, baseType: !340, size: 64, offset: 832)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !561, file: !29, line: 1431, baseType: !734, size: 256, offset: 896)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !561, file: !29, line: 1432, baseType: !102, size: 32, offset: 1152)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !561, file: !29, line: 1433, baseType: !714, size: 32, offset: 1184)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !561, file: !29, line: 1437, baseType: !2394, size: 64, offset: 1216)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2397)
!2397 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !29, line: 1437, flags: DIFlagFwdDecl)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !561, file: !29, line: 1449, baseType: !2399, size: 64, offset: 1280)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !356, line: 34, size: 64, elements: !2400)
!2400 = !{!2401}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2399, file: !356, line: 35, baseType: !359, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !561, file: !29, line: 1450, baseType: !301, size: 128, offset: 1344)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !561, file: !29, line: 1451, baseType: !2404, size: 64, offset: 1472)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !29, line: 699, flags: DIFlagFwdDecl)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !561, file: !29, line: 1452, baseType: !1789, size: 64, offset: 1536)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !561, file: !29, line: 1453, baseType: !2408, size: 64, offset: 1600)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !29, line: 1453, flags: DIFlagFwdDecl)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !561, file: !29, line: 1454, baseType: !603, size: 128, offset: 1664)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !561, file: !29, line: 1455, baseType: !5, size: 32, offset: 1792)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !561, file: !29, line: 1456, baseType: !2413, size: 2432, offset: 1856)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !23, line: 518, size: 2432, elements: !2414)
!2414 = !{!2415, !2416, !2417, !2419, !2451}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2413, file: !23, line: 519, baseType: !5, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2413, file: !23, line: 520, baseType: !734, size: 256, offset: 64)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2413, file: !23, line: 521, baseType: !2418, size: 192, offset: 320)
!2418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 192, elements: !615)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2413, file: !23, line: 522, baseType: !2420, size: 1728, offset: 512)
!2420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2421, size: 1728, elements: !615)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !23, line: 222, size: 576, elements: !2422)
!2422 = !{!2423, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2421, file: !23, line: 223, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !23, line: 443, size: 256, elements: !2426)
!2426 = !{!2427, !2428, !2441, !2442}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2425, file: !23, line: 444, baseType: !102, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2425, file: !23, line: 445, baseType: !2429, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2431)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !23, line: 310, size: 512, elements: !2432)
!2432 = !{!2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2431, file: !23, line: 311, baseType: !651, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2431, file: !23, line: 312, baseType: !651, size: 64, offset: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2431, file: !23, line: 313, baseType: !651, size: 64, offset: 128)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2431, file: !23, line: 314, baseType: !651, size: 64, offset: 192)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2431, file: !23, line: 315, baseType: !2223, size: 64, offset: 256)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2431, file: !23, line: 316, baseType: !2223, size: 64, offset: 320)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2431, file: !23, line: 317, baseType: !2223, size: 64, offset: 384)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2431, file: !23, line: 318, baseType: !2295, size: 64, offset: 448)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2425, file: !23, line: 446, baseType: !594, size: 64, offset: 128)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2425, file: !23, line: 447, baseType: !2424, size: 64, offset: 192)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2421, file: !23, line: 224, baseType: !102, size: 32, offset: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2421, file: !23, line: 226, baseType: !301, size: 128, offset: 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2421, file: !23, line: 227, baseType: !93, size: 64, offset: 256)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2421, file: !23, line: 228, baseType: !5, size: 32, offset: 320)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2421, file: !23, line: 229, baseType: !5, size: 32, offset: 352)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2421, file: !23, line: 230, baseType: !2259, size: 64, offset: 384)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2421, file: !23, line: 231, baseType: !2259, size: 64, offset: 448)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2421, file: !23, line: 232, baseType: !84, size: 64, offset: 512)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2413, file: !23, line: 523, baseType: !2452, size: 192, offset: 2240)
!2452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2429, size: 192, elements: !615)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !561, file: !29, line: 1458, baseType: !2454, size: 2112, offset: 4288)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !29, line: 1410, size: 2112, elements: !2455)
!2455 = !{!2456, !2457, !2458}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2454, file: !29, line: 1411, baseType: !102, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2454, file: !29, line: 1412, baseType: !1346, size: 128, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2454, file: !29, line: 1413, baseType: !2459, size: 1920, offset: 192)
!2459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2460, size: 1920, elements: !615)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2461, line: 12, size: 640, elements: !2462)
!2461 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2462 = !{!2463, !2471, !2472, !2477, !2478}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2460, file: !2461, line: 13, baseType: !2464, size: 320)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2465, line: 17, size: 320, elements: !2466)
!2465 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2466 = !{!2467, !2468, !2469, !2470}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2464, file: !2465, line: 18, baseType: !102, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2464, file: !2465, line: 19, baseType: !102, size: 32, offset: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2464, file: !2465, line: 20, baseType: !1346, size: 128, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2464, file: !2465, line: 22, baseType: !323, size: 128, align: 64, offset: 192)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2460, file: !2461, line: 14, baseType: !169, size: 64, offset: 320)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2460, file: !2461, line: 15, baseType: !2473, size: 64, offset: 384)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2474, line: 16, size: 64, elements: !2475)
!2474 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2475 = !{!2476}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2473, file: !2474, line: 17, baseType: !1086, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2460, file: !2461, line: 16, baseType: !1346, size: 128, offset: 448)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2460, file: !2461, line: 17, baseType: !714, size: 32, offset: 576)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !561, file: !29, line: 1465, baseType: !84, size: 64, offset: 6400)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !561, file: !29, line: 1468, baseType: !373, size: 32, offset: 6464)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !561, file: !29, line: 1470, baseType: !495, size: 64, offset: 6528)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !561, file: !29, line: 1471, baseType: !495, size: 64, offset: 6592)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !561, file: !29, line: 1473, baseType: !164, size: 32, offset: 6656)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !561, file: !29, line: 1474, baseType: !2485, size: 64, offset: 6720)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !29, line: 603, flags: DIFlagFwdDecl)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !561, file: !29, line: 1477, baseType: !2488, size: 256, offset: 6784)
!2488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 256, elements: !167)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !561, file: !29, line: 1478, baseType: !2490, size: 128, offset: 7040)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2491, line: 18, baseType: !2492)
!2491 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2491, line: 16, size: 128, elements: !2493)
!2493 = !{!2494}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2492, file: !2491, line: 17, baseType: !2495, size: 128)
!2495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 128, elements: !1598)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !561, file: !29, line: 1480, baseType: !5, size: 32, offset: 7168)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !561, file: !29, line: 1481, baseType: !2498, size: 32, offset: 7200)
!2498 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !277, line: 150, baseType: !5)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !561, file: !29, line: 1487, baseType: !270, size: 192, offset: 7232)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !561, file: !29, line: 1493, baseType: !113, size: 64, offset: 7424)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !561, file: !29, line: 1495, baseType: !2502, size: 64, offset: 7488)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2504)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !338, line: 135, size: 1024, align: 512, elements: !2505)
!2505 = !{!2506, !2510, !2511, !2518, !2524, !2528, !2532, !2536, !2537, !2541, !2545, !2550, !2554}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2504, file: !338, line: 136, baseType: !2507, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!102, !340, !5}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2504, file: !338, line: 137, baseType: !2507, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2504, file: !338, line: 138, baseType: !2512, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!102, !2515, !2517}
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2504, file: !338, line: 139, baseType: !2519, size: 64, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DISubroutineType(types: !2521)
!2521 = !{!102, !2515, !5, !113, !2522}
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !364)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2504, file: !338, line: 141, baseType: !2525, size: 64, offset: 256)
!2525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2526, size: 64)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{!102, !2515}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2504, file: !338, line: 142, baseType: !2529, size: 64, offset: 320)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!102, !340}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2504, file: !338, line: 143, baseType: !2533, size: 64, offset: 384)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{null, !340}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2504, file: !338, line: 144, baseType: !2533, size: 64, offset: 448)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2504, file: !338, line: 145, baseType: !2538, size: 64, offset: 512)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DISubroutineType(types: !2540)
!2540 = !{null, !340, !383}
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2504, file: !338, line: 146, baseType: !2542, size: 64, offset: 576)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!442, !340, !442, !102}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2504, file: !338, line: 147, baseType: !2546, size: 64, offset: 640)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!336, !2549}
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2504, file: !338, line: 148, baseType: !2551, size: 64, offset: 704)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!102, !504, !447}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2504, file: !338, line: 149, baseType: !2555, size: 64, offset: 768)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!340, !340, !2558}
!2558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !561, file: !29, line: 1500, baseType: !102, size: 32, offset: 7552)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !561, file: !29, line: 1502, baseType: !2562, size: 448, offset: 7616)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2207, line: 60, size: 448, elements: !2563)
!2563 = !{!2564, !2569, !2570, !2571, !2572, !2573, !2574}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2562, file: !2207, line: 61, baseType: !2565, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!93, !2568, !2205}
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2562, file: !2207, line: 63, baseType: !2565, size: 64, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2562, file: !2207, line: 66, baseType: !91, size: 64, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2562, file: !2207, line: 67, baseType: !102, size: 32, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2562, file: !2207, line: 68, baseType: !5, size: 32, offset: 224)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2562, file: !2207, line: 71, baseType: !301, size: 128, offset: 256)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2562, file: !2207, line: 77, baseType: !2575, size: 64, offset: 384)
!2575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !561, file: !29, line: 1505, baseType: !274, size: 64, offset: 8064)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !561, file: !29, line: 1508, baseType: !274, size: 64, offset: 8128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !561, file: !29, line: 1511, baseType: !102, size: 32, offset: 8192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !561, file: !29, line: 1514, baseType: !867, size: 32, offset: 8224)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !561, file: !29, line: 1517, baseType: !2581, size: 64, offset: 8256)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1824, line: 18, flags: DIFlagFwdDecl)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !561, file: !29, line: 1518, baseType: !599, size: 64, offset: 8320)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !561, file: !29, line: 1525, baseType: !1576, size: 64, offset: 8384)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !561, file: !29, line: 1532, baseType: !2586, size: 64, offset: 8448)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2587, line: 52, size: 64, elements: !2588)
!2587 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2588 = !{!2589}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2586, file: !2587, line: 53, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2587, line: 40, size: 256, elements: !2592)
!2592 = !{!2593, !2594, !2599}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2591, file: !2587, line: 42, baseType: !285)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2591, file: !2587, line: 44, baseType: !2595, size: 192)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2587, line: 28, size: 192, elements: !2596)
!2596 = !{!2597, !2598}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2595, file: !2587, line: 29, baseType: !301, size: 128)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2595, file: !2587, line: 31, baseType: !91, size: 64, offset: 128)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2591, file: !2587, line: 49, baseType: !91, size: 64, offset: 192)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !561, file: !29, line: 1533, baseType: !2586, size: 64, offset: 8512)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !561, file: !29, line: 1534, baseType: !323, size: 128, align: 64, offset: 8576)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !561, file: !29, line: 1535, baseType: !1823, size: 256, offset: 8704)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !561, file: !29, line: 1537, baseType: !270, size: 192, offset: 8960)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !561, file: !29, line: 1542, baseType: !102, size: 32, offset: 9152)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !561, file: !29, line: 1545, baseType: !285, offset: 9184)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !561, file: !29, line: 1546, baseType: !301, size: 128, offset: 9216)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !561, file: !29, line: 1548, baseType: !285, offset: 9344)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !561, file: !29, line: 1549, baseType: !301, size: 128, offset: 9344)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !384, file: !29, line: 624, baseType: !700, size: 64, offset: 256)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !384, file: !29, line: 631, baseType: !93, size: 64, offset: 320)
!2611 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !29, line: 639, baseType: !2612, size: 32, offset: 384)
!2612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !29, line: 639, size: 32, elements: !2613)
!2613 = !{!2614, !2616}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2612, file: !29, line: 640, baseType: !2615, size: 32)
!2615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2612, file: !29, line: 641, baseType: !5, size: 32)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !384, file: !29, line: 643, baseType: !470, size: 32, offset: 416)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !384, file: !29, line: 644, baseType: !488, size: 64, offset: 448)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !384, file: !29, line: 645, baseType: !491, size: 128, offset: 512)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !384, file: !29, line: 646, baseType: !491, size: 128, offset: 640)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !384, file: !29, line: 647, baseType: !491, size: 128, offset: 768)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !384, file: !29, line: 648, baseType: !285, offset: 896)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !384, file: !29, line: 649, baseType: !124, size: 16, offset: 896)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !384, file: !29, line: 650, baseType: !1221, size: 8, offset: 912)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !384, file: !29, line: 651, baseType: !1221, size: 8, offset: 920)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !384, file: !29, line: 652, baseType: !2379, size: 64, offset: 960)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !384, file: !29, line: 659, baseType: !93, size: 64, offset: 1024)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !384, file: !29, line: 660, baseType: !734, size: 256, offset: 1088)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !384, file: !29, line: 662, baseType: !93, size: 64, offset: 1344)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !384, file: !29, line: 663, baseType: !93, size: 64, offset: 1408)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !384, file: !29, line: 665, baseType: !603, size: 128, offset: 1472)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !384, file: !29, line: 666, baseType: !301, size: 128, offset: 1600)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !384, file: !29, line: 675, baseType: !301, size: 128, offset: 1728)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !384, file: !29, line: 676, baseType: !301, size: 128, offset: 1856)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !384, file: !29, line: 677, baseType: !301, size: 128, offset: 1984)
!2636 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !29, line: 678, baseType: !2637, size: 128, offset: 2112)
!2637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !29, line: 678, size: 128, elements: !2638)
!2638 = !{!2639, !2640}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2637, file: !29, line: 679, baseType: !599, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2637, file: !29, line: 680, baseType: !323, size: 128, align: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !384, file: !29, line: 682, baseType: !276, size: 64, offset: 2240)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !384, file: !29, line: 683, baseType: !276, size: 64, offset: 2304)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !384, file: !29, line: 684, baseType: !714, size: 32, offset: 2368)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !384, file: !29, line: 685, baseType: !714, size: 32, offset: 2400)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !384, file: !29, line: 686, baseType: !714, size: 32, offset: 2432)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !384, file: !29, line: 688, baseType: !714, size: 32, offset: 2464)
!2647 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !29, line: 690, baseType: !2648, size: 64, offset: 2496)
!2648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !29, line: 690, size: 64, elements: !2649)
!2649 = !{!2650, !2873}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2648, file: !29, line: 691, baseType: !2651, size: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2653)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !29, line: 1822, size: 2048, elements: !2654)
!2654 = !{!2655, !2656, !2660, !2665, !2669, !2670, !2671, !2675, !2688, !2689, !2697, !2701, !2702, !2706, !2707, !2711, !2716, !2717, !2721, !2725, !2833, !2837, !2838, !2842, !2843, !2847, !2851, !2856, !2860, !2864, !2868, !2872}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2653, file: !29, line: 1823, baseType: !594, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2653, file: !29, line: 1824, baseType: !2657, size: 64, offset: 64)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!488, !310, !488, !102}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2653, file: !29, line: 1825, baseType: !2661, size: 64, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!533, !310, !442, !536, !2664}
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2653, file: !29, line: 1826, baseType: !2666, size: 64, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!533, !310, !113, !536, !2664}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2653, file: !29, line: 1827, baseType: !804, size: 64, offset: 256)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2653, file: !29, line: 1828, baseType: !804, size: 64, offset: 320)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2653, file: !29, line: 1829, baseType: !2672, size: 64, offset: 384)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!102, !807, !447}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !2653, file: !29, line: 1830, baseType: !2676, size: 64, offset: 448)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!102, !310, !2679}
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !29, line: 1776, size: 128, elements: !2681)
!2681 = !{!2682, !2687}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2680, file: !29, line: 1777, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !29, line: 1773, baseType: !2684)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2685, size: 64)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!102, !2679, !113, !102, !488, !376, !5}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2680, file: !29, line: 1778, baseType: !488, size: 64, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2653, file: !29, line: 1831, baseType: !2676, size: 64, offset: 512)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2653, file: !29, line: 1832, baseType: !2690, size: 64, offset: 576)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!2693, !310, !2695}
!2693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2694, line: 52, baseType: !5)
!2694 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !580, line: 27, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2653, file: !29, line: 1833, baseType: !2698, size: 64, offset: 640)
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!91, !310, !5, !93}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2653, file: !29, line: 1834, baseType: !2698, size: 64, offset: 704)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2653, file: !29, line: 1835, baseType: !2703, size: 64, offset: 768)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!102, !310, !939}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2653, file: !29, line: 1836, baseType: !93, size: 64, offset: 832)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2653, file: !29, line: 1837, baseType: !2708, size: 64, offset: 896)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!102, !383, !310}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2653, file: !29, line: 1838, baseType: !2712, size: 64, offset: 960)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!102, !310, !2715}
!2715 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !29, line: 1007, baseType: !84)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2653, file: !29, line: 1839, baseType: !2708, size: 64, offset: 1024)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2653, file: !29, line: 1840, baseType: !2718, size: 64, offset: 1088)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!102, !310, !488, !488, !102}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2653, file: !29, line: 1841, baseType: !2722, size: 64, offset: 1152)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!102, !102, !310, !102}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2653, file: !29, line: 1842, baseType: !2726, size: 64, offset: 1216)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!102, !310, !102, !2729}
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !29, line: 1062, size: 1664, elements: !2731)
!2731 = !{!2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2763, !2764, !2765, !2778, !2809}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2730, file: !29, line: 1063, baseType: !2729, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2730, file: !29, line: 1064, baseType: !301, size: 128, offset: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2730, file: !29, line: 1065, baseType: !603, size: 128, offset: 192)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2730, file: !29, line: 1066, baseType: !301, size: 128, offset: 320)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2730, file: !29, line: 1069, baseType: !301, size: 128, offset: 448)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2730, file: !29, line: 1072, baseType: !2715, size: 64, offset: 576)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2730, file: !29, line: 1073, baseType: !5, size: 32, offset: 640)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2730, file: !29, line: 1074, baseType: !85, size: 8, offset: 672)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2730, file: !29, line: 1075, baseType: !5, size: 32, offset: 704)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2730, file: !29, line: 1076, baseType: !102, size: 32, offset: 736)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2730, file: !29, line: 1077, baseType: !1346, size: 128, offset: 768)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2730, file: !29, line: 1078, baseType: !310, size: 64, offset: 896)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2730, file: !29, line: 1079, baseType: !488, size: 64, offset: 960)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2730, file: !29, line: 1080, baseType: !488, size: 64, offset: 1024)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2730, file: !29, line: 1082, baseType: !2747, size: 64, offset: 1088)
!2747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2748, size: 64)
!2748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !29, line: 1314, size: 320, elements: !2749)
!2749 = !{!2750, !2758, !2759, !2760, !2761, !2762}
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2748, file: !29, line: 1315, baseType: !2751)
!2751 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2752, line: 20, baseType: !2753)
!2752 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2752, line: 11, elements: !2754)
!2754 = !{!2755}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2753, file: !2752, line: 12, baseType: !2756)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !297, line: 33, baseType: !2757)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !297, line: 31, elements: !299)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2748, file: !29, line: 1316, baseType: !102, size: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2748, file: !29, line: 1317, baseType: !102, size: 32, offset: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2748, file: !29, line: 1318, baseType: !2747, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2748, file: !29, line: 1319, baseType: !310, size: 64, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2748, file: !29, line: 1320, baseType: !323, size: 128, align: 64, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2730, file: !29, line: 1084, baseType: !93, size: 64, offset: 1152)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2730, file: !29, line: 1085, baseType: !93, size: 64, offset: 1216)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2730, file: !29, line: 1087, baseType: !2766, size: 64, offset: 1280)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2768)
!2768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !29, line: 1011, size: 128, elements: !2769)
!2769 = !{!2770, !2774}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2768, file: !29, line: 1012, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !2729, !2729}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2768, file: !29, line: 1013, baseType: !2775, size: 64, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{null, !2729}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2730, file: !29, line: 1088, baseType: !2779, size: 64, offset: 1344)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2781)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !29, line: 1016, size: 512, elements: !2782)
!2782 = !{!2783, !2787, !2791, !2792, !2796, !2800, !2804, !2808}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2781, file: !29, line: 1017, baseType: !2784, size: 64)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{!2715, !2715}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2781, file: !29, line: 1018, baseType: !2788, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{null, !2715}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2781, file: !29, line: 1019, baseType: !2775, size: 64, offset: 128)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2781, file: !29, line: 1020, baseType: !2793, size: 64, offset: 192)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!102, !2729, !102}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2781, file: !29, line: 1021, baseType: !2797, size: 64, offset: 256)
!2797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2798, size: 64)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{!447, !2729}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2781, file: !29, line: 1022, baseType: !2801, size: 64, offset: 320)
!2801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2802, size: 64)
!2802 = !DISubroutineType(types: !2803)
!2803 = !{!102, !2729, !102, !304}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2781, file: !29, line: 1023, baseType: !2805, size: 64, offset: 384)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{null, !2729, !781}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2781, file: !29, line: 1024, baseType: !2797, size: 64, offset: 448)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2730, file: !29, line: 1097, baseType: !2810, size: 256, offset: 1408)
!2810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2730, file: !29, line: 1089, size: 256, elements: !2811)
!2811 = !{!2812, !2821, !2827}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2810, file: !29, line: 1090, baseType: !2813, size: 256)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2814, line: 10, size: 256, elements: !2815)
!2814 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2815 = !{!2816, !2817, !2820}
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2813, file: !2814, line: 11, baseType: !373, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2813, file: !2814, line: 12, baseType: !2818, size: 64, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2814, line: 5, flags: DIFlagFwdDecl)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2813, file: !2814, line: 13, baseType: !301, size: 128, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2810, file: !29, line: 1091, baseType: !2822, size: 64)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2814, line: 17, size: 64, elements: !2823)
!2823 = !{!2824}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2822, file: !2814, line: 18, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2814, line: 16, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2810, file: !29, line: 1096, baseType: !2828, size: 192)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2810, file: !29, line: 1092, size: 192, elements: !2829)
!2829 = !{!2830, !2831, !2832}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2828, file: !29, line: 1093, baseType: !301, size: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2828, file: !29, line: 1094, baseType: !102, size: 32, offset: 128)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2828, file: !29, line: 1095, baseType: !5, size: 32, offset: 160)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !2653, file: !29, line: 1843, baseType: !2834, size: 64, offset: 1280)
!2834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2835, size: 64)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!533, !310, !687, !102, !536, !2664, !102}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2653, file: !29, line: 1844, baseType: !979, size: 64, offset: 1344)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2653, file: !29, line: 1845, baseType: !2839, size: 64, offset: 1408)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!102, !102}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2653, file: !29, line: 1846, baseType: !2726, size: 64, offset: 1472)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2653, file: !29, line: 1847, baseType: !2844, size: 64, offset: 1536)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!533, !1964, !310, !2664, !536, !5}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2653, file: !29, line: 1848, baseType: !2848, size: 64, offset: 1600)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!533, !310, !2664, !1964, !536, !5}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2653, file: !29, line: 1849, baseType: !2852, size: 64, offset: 1664)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!102, !310, !91, !2855, !781}
!2855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2653, file: !29, line: 1850, baseType: !2857, size: 64, offset: 1728)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!91, !310, !102, !488, !488}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2653, file: !29, line: 1852, baseType: !2861, size: 64, offset: 1792)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{null, !677, !310}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2653, file: !29, line: 1856, baseType: !2865, size: 64, offset: 1856)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!533, !310, !488, !310, !488, !536, !5}
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2653, file: !29, line: 1858, baseType: !2869, size: 64, offset: 1920)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!488, !310, !488, !310, !488, !488, !5}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2653, file: !29, line: 1861, baseType: !2718, size: 64, offset: 1984)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2648, file: !29, line: 692, baseType: !630, size: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !384, file: !29, line: 694, baseType: !2875, size: 64, offset: 2560)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !29, line: 1100, size: 384, elements: !2877)
!2877 = !{!2878, !2879, !2880, !2881}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2876, file: !29, line: 1101, baseType: !285)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2876, file: !29, line: 1102, baseType: !301, size: 128)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2876, file: !29, line: 1103, baseType: !301, size: 128, offset: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2876, file: !29, line: 1104, baseType: !301, size: 128, offset: 256)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !384, file: !29, line: 695, baseType: !701, size: 1216, align: 64, offset: 2624)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !384, file: !29, line: 696, baseType: !301, size: 128, offset: 3840)
!2884 = !DIDerivedType(tag: DW_TAG_member, scope: !384, file: !29, line: 697, baseType: !2885, size: 64, offset: 3968)
!2885 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !384, file: !29, line: 697, size: 64, elements: !2886)
!2886 = !{!2887, !2888, !2889, !2892, !2893}
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2885, file: !29, line: 698, baseType: !1964, size: 64)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2885, file: !29, line: 699, baseType: !2404, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2885, file: !29, line: 700, baseType: !2890, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2891, size: 64)
!2891 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !29, line: 700, flags: DIFlagFwdDecl)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2885, file: !29, line: 701, baseType: !442, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2885, file: !29, line: 702, baseType: !5, size: 32)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !384, file: !29, line: 705, baseType: !164, size: 32, offset: 4032)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !384, file: !29, line: 708, baseType: !164, size: 32, offset: 4064)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !384, file: !29, line: 709, baseType: !2485, size: 64, offset: 4096)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !384, file: !29, line: 720, baseType: !84, size: 64, offset: 4160)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !341, file: !338, line: 98, baseType: !2899, size: 256, offset: 448)
!2899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 256, elements: !167)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !341, file: !338, line: 101, baseType: !2901, size: 32, offset: 704)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2902, line: 25, size: 32, elements: !2903)
!2902 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2903 = !{!2904}
!2904 = !DIDerivedType(tag: DW_TAG_member, scope: !2901, file: !2902, line: 26, baseType: !2905, size: 32)
!2905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2901, file: !2902, line: 26, size: 32, elements: !2906)
!2906 = !{!2907}
!2907 = !DIDerivedType(tag: DW_TAG_member, scope: !2905, file: !2902, line: 30, baseType: !2908, size: 32)
!2908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2905, file: !2902, line: 30, size: 32, elements: !2909)
!2909 = !{!2910, !2911}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2908, file: !2902, line: 31, baseType: !285)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2908, file: !2902, line: 32, baseType: !102, size: 32)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !341, file: !338, line: 102, baseType: !2502, size: 64, offset: 768)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !341, file: !338, line: 103, baseType: !560, size: 64, offset: 832)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !341, file: !338, line: 104, baseType: !93, size: 64, offset: 896)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !341, file: !338, line: 105, baseType: !84, size: 64, offset: 960)
!2916 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !338, line: 107, baseType: !2917, size: 128, offset: 1024)
!2917 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !338, line: 107, size: 128, elements: !2918)
!2918 = !{!2919, !2920}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2917, file: !338, line: 108, baseType: !301, size: 128)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2917, file: !338, line: 109, baseType: !2921, size: 64)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !341, file: !338, line: 111, baseType: !301, size: 128, offset: 1152)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !341, file: !338, line: 112, baseType: !301, size: 128, offset: 1280)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !341, file: !338, line: 120, baseType: !2925, size: 128, offset: 1408)
!2925 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !338, line: 116, size: 128, elements: !2926)
!2926 = !{!2927, !2928, !2929}
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2925, file: !338, line: 117, baseType: !603, size: 128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2925, file: !338, line: 118, baseType: !355, size: 128)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2925, file: !338, line: 119, baseType: !323, size: 128, align: 64)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !311, file: !29, line: 922, baseType: !383, size: 64, offset: 256)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !311, file: !29, line: 923, baseType: !2651, size: 64, offset: 320)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !311, file: !29, line: 929, baseType: !285, offset: 384)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !311, file: !29, line: 930, baseType: !28, size: 32, offset: 384)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !311, file: !29, line: 931, baseType: !274, size: 64, offset: 448)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !311, file: !29, line: 932, baseType: !5, size: 32, offset: 512)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !311, file: !29, line: 933, baseType: !2498, size: 32, offset: 544)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !311, file: !29, line: 934, baseType: !270, size: 192, offset: 576)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !311, file: !29, line: 935, baseType: !488, size: 64, offset: 768)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !311, file: !29, line: 936, baseType: !2940, size: 192, offset: 832)
!2940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !29, line: 885, size: 192, elements: !2941)
!2941 = !{!2942, !2943, !2944, !2945, !2946, !2947}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2940, file: !29, line: 886, baseType: !2751)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2940, file: !29, line: 887, baseType: !1336, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2940, file: !29, line: 888, baseType: !37, size: 32, offset: 64)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2940, file: !29, line: 889, baseType: !390, size: 32, offset: 96)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2940, file: !29, line: 889, baseType: !390, size: 32, offset: 128)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2940, file: !29, line: 890, baseType: !102, size: 32, offset: 160)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !311, file: !29, line: 937, baseType: !1412, size: 64, offset: 1024)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !311, file: !29, line: 938, baseType: !2950, size: 256, offset: 1088)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !29, line: 896, size: 256, elements: !2951)
!2951 = !{!2952, !2953, !2954, !2955, !2956, !2957}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2950, file: !29, line: 897, baseType: !93, size: 64)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2950, file: !29, line: 898, baseType: !5, size: 32, offset: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2950, file: !29, line: 899, baseType: !5, size: 32, offset: 96)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2950, file: !29, line: 902, baseType: !5, size: 32, offset: 128)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2950, file: !29, line: 903, baseType: !5, size: 32, offset: 160)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2950, file: !29, line: 904, baseType: !488, size: 64, offset: 192)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !311, file: !29, line: 940, baseType: !376, size: 64, offset: 1344)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !311, file: !29, line: 945, baseType: !84, size: 64, offset: 1408)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !311, file: !29, line: 949, baseType: !301, size: 128, offset: 1472)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !311, file: !29, line: 950, baseType: !301, size: 128, offset: 1600)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !311, file: !29, line: 952, baseType: !700, size: 64, offset: 1728)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !311, file: !29, line: 953, baseType: !867, size: 32, offset: 1792)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !311, file: !29, line: 954, baseType: !867, size: 32, offset: 1824)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !109, file: !110, line: 163, baseType: !2966, size: 64, offset: 2048)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !110, line: 24, flags: DIFlagFwdDecl)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !109, file: !110, line: 165, baseType: !5, size: 32, offset: 2112)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !109, file: !110, line: 166, baseType: !2970, size: 320, offset: 2176)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2971, line: 11, size: 320, elements: !2972)
!2971 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2972 = !{!2973, !2974, !2975, !2980}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2970, file: !2971, line: 16, baseType: !603, size: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2970, file: !2971, line: 17, baseType: !93, size: 64, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2970, file: !2971, line: 18, baseType: !2976, size: 64, offset: 192)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{null, !2979}
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2970, file: !2971, line: 19, baseType: !373, size: 32, offset: 256)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !109, file: !110, line: 168, baseType: !2982, size: 64, offset: 2496)
!2982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 64, elements: !144)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !109, file: !110, line: 170, baseType: !2984, size: 64, offset: 2560)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !110, line: 170, flags: DIFlagFwdDecl)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !109, file: !110, line: 172, baseType: !2987, size: 64, offset: 2624)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !119, line: 90, size: 192, elements: !2989)
!2989 = !{!2990, !2991, !2992, !2993, !2994, !2995}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2988, file: !119, line: 91, baseType: !1310, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2988, file: !119, line: 92, baseType: !1310, size: 32, offset: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2988, file: !119, line: 93, baseType: !1310, size: 32, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !2988, file: !119, line: 94, baseType: !1310, size: 32, offset: 96)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !2988, file: !119, line: 95, baseType: !1310, size: 32, offset: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !2988, file: !119, line: 96, baseType: !1310, size: 32, offset: 160)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !109, file: !110, line: 174, baseType: !134, size: 768, offset: 2688)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !109, file: !110, line: 175, baseType: !129, size: 64, offset: 3456)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !109, file: !110, line: 176, baseType: !129, size: 64, offset: 3520)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !109, file: !110, line: 177, baseType: !129, size: 64, offset: 3584)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !109, file: !110, line: 179, baseType: !3001, size: 64, offset: 3648)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!102, !108}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !109, file: !110, line: 180, baseType: !3005, size: 64, offset: 3712)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{null, !108}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !109, file: !110, line: 181, baseType: !3009, size: 64, offset: 3776)
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!102, !108, !310}
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !109, file: !110, line: 182, baseType: !3013, size: 64, offset: 3840)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3014, size: 64)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{!102, !108, !5, !5, !102}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !109, file: !110, line: 184, baseType: !3017, size: 64, offset: 3904)
!3017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3018, size: 64)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !110, line: 337, size: 576, elements: !3019)
!3019 = !{!3020, !3021, !3022, !3023, !3024, !3092, !3093}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3018, file: !110, line: 339, baseType: !84, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3018, file: !110, line: 341, baseType: !102, size: 32, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3018, file: !110, line: 342, baseType: !113, size: 64, offset: 128)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3018, file: !110, line: 344, baseType: !108, size: 64, offset: 192)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3018, file: !110, line: 345, baseType: !3025, size: 64, offset: 256)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !110, line: 302, size: 960, elements: !3027)
!3027 = !{!3028, !3029, !3033, !3044, !3048, !3052, !3081, !3085, !3086, !3087, !3088, !3089, !3090, !3091}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3026, file: !110, line: 304, baseType: !84, size: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3026, file: !110, line: 306, baseType: !3030, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{null, !3017, !5, !5, !102}
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3026, file: !110, line: 307, baseType: !3034, size: 64, offset: 128)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{null, !3017, !3037, !5}
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3039)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !110, line: 32, size: 64, elements: !3040)
!3040 = !{!3041, !3042, !3043}
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3039, file: !110, line: 33, baseType: !122, size: 16)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3039, file: !110, line: 34, baseType: !122, size: 16, offset: 16)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3039, file: !110, line: 35, baseType: !1310, size: 32, offset: 32)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3026, file: !110, line: 309, baseType: !3045, size: 64, offset: 192)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!447, !3017, !5, !5, !102}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3026, file: !110, line: 310, baseType: !3049, size: 64, offset: 256)
!3049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3050, size: 64)
!3050 = !DISubroutineType(types: !3051)
!3051 = !{!447, !3025, !108}
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !3026, file: !110, line: 311, baseType: !3053, size: 64, offset: 320)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!102, !3025, !108, !3056}
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3058)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !3059, line: 342, size: 1600, elements: !3060)
!3059 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3060 = !{!3061, !3063, !3064, !3065, !3066, !3067, !3069, !3071, !3072, !3073, !3074, !3075, !3076, !3078, !3079, !3080}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3058, file: !3059, line: 344, baseType: !3062, size: 64)
!3062 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3059, line: 14, baseType: !93)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !3058, file: !3059, line: 346, baseType: !122, size: 16, offset: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !3058, file: !3059, line: 347, baseType: !122, size: 16, offset: 80)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !3058, file: !3059, line: 348, baseType: !122, size: 16, offset: 96)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !3058, file: !3059, line: 349, baseType: !122, size: 16, offset: 112)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !3058, file: !3059, line: 351, baseType: !3068, size: 64, offset: 128)
!3068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3062, size: 64, elements: !130)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !3058, file: !3059, line: 352, baseType: !3070, size: 768, offset: 192)
!3070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3062, size: 768, elements: !135)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !3058, file: !3059, line: 353, baseType: !3068, size: 64, offset: 960)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !3058, file: !3059, line: 354, baseType: !3068, size: 64, offset: 1024)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !3058, file: !3059, line: 355, baseType: !3068, size: 64, offset: 1088)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !3058, file: !3059, line: 356, baseType: !3068, size: 64, offset: 1152)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !3058, file: !3059, line: 357, baseType: !3068, size: 64, offset: 1216)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !3058, file: !3059, line: 358, baseType: !3077, size: 128, offset: 1280)
!3077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3062, size: 128, elements: !144)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !3058, file: !3059, line: 359, baseType: !3068, size: 64, offset: 1408)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !3058, file: !3059, line: 360, baseType: !3068, size: 64, offset: 1472)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !3058, file: !3059, line: 362, baseType: !3062, size: 64, offset: 1536)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !3026, file: !110, line: 312, baseType: !3082, size: 64, offset: 384)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{null, !3017}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3026, file: !110, line: 313, baseType: !3082, size: 64, offset: 448)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !3026, file: !110, line: 315, baseType: !447, size: 8, offset: 512)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !3026, file: !110, line: 316, baseType: !102, size: 32, offset: 544)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3026, file: !110, line: 317, baseType: !113, size: 64, offset: 576)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !3026, file: !110, line: 319, baseType: !3056, size: 64, offset: 640)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !3026, file: !110, line: 321, baseType: !301, size: 128, offset: 704)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3026, file: !110, line: 322, baseType: !301, size: 128, offset: 832)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !3018, file: !110, line: 347, baseType: !301, size: 128, offset: 320)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !3018, file: !110, line: 348, baseType: !301, size: 128, offset: 448)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !109, file: !110, line: 186, baseType: !285, offset: 3968)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !109, file: !110, line: 187, baseType: !270, size: 192, offset: 3968)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !109, file: !110, line: 189, baseType: !5, size: 32, offset: 4160)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !109, file: !110, line: 190, baseType: !447, size: 8, offset: 4192)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !109, file: !110, line: 192, baseType: !3099, size: 5568, offset: 4224)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !58, line: 461, size: 5568, elements: !3100)
!3100 = !{!3101, !3400, !3402, !3405, !3406, !3457, !3546, !3547, !3548, !3549, !3550, !3559, !3653, !3666, !3669, !3670, !3674, !3676, !3677, !3678, !3682, !3688, !3689, !3692, !3696, !3699, !3700, !3701, !3702, !3703, !3735, !3736, !3737, !3740, !3743, !3744, !3745, !3746}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3099, file: !58, line: 462, baseType: !3102, size: 512)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !3103, line: 64, size: 512, elements: !3104)
!3103 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!3104 = !{!3105, !3106, !3107, !3109, !3149, !3251, !3390, !3395, !3396, !3397, !3398, !3399}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3102, file: !3103, line: 65, baseType: !113, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3102, file: !3103, line: 66, baseType: !301, size: 128, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3102, file: !3103, line: 67, baseType: !3108, size: 64, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !3102, file: !3103, line: 68, baseType: !3110, size: 64, offset: 256)
!3110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3111, size: 64)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !3103, line: 192, size: 704, elements: !3112)
!3112 = !{!3113, !3114, !3115, !3116}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3111, file: !3103, line: 193, baseType: !301, size: 128)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3111, file: !3103, line: 194, baseType: !285, offset: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3111, file: !3103, line: 195, baseType: !3102, size: 512, offset: 128)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !3111, file: !3103, line: 196, baseType: !3117, size: 64, offset: 640)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3119)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !3103, line: 156, size: 192, elements: !3120)
!3120 = !{!3121, !3126, !3131}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3119, file: !3103, line: 157, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3123)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DISubroutineType(types: !3125)
!3125 = !{!102, !3110, !3108}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3119, file: !3103, line: 158, baseType: !3127, size: 64, offset: 64)
!3127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3128)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DISubroutineType(types: !3130)
!3130 = !{!113, !3110, !3108}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3119, file: !3103, line: 159, baseType: !3132, size: 64, offset: 128)
!3132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3133)
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!102, !3110, !3108, !3136}
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !3103, line: 148, size: 20736, elements: !3138)
!3138 = !{!3139, !3141, !3143, !3144, !3148}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !3137, file: !3103, line: 149, baseType: !3140, size: 192)
!3140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 192, elements: !615)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !3137, file: !3103, line: 150, baseType: !3142, size: 4096, offset: 192)
!3142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !442, size: 4096, elements: !1745)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !3137, file: !3103, line: 151, baseType: !102, size: 32, offset: 4288)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3137, file: !3103, line: 152, baseType: !3145, size: 16384, offset: 4320)
!3145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 16384, elements: !3146)
!3146 = !{!3147}
!3147 = !DISubrange(count: 2048)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !3137, file: !3103, line: 153, baseType: !102, size: 32, offset: 20704)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !3102, file: !3103, line: 69, baseType: !3150, size: 64, offset: 320)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !3103, line: 138, size: 448, elements: !3152)
!3152 = !{!3153, !3157, !3176, !3178, !3211, !3241, !3245}
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3151, file: !3103, line: 139, baseType: !3154, size: 64)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{null, !3108}
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !3151, file: !3103, line: 140, baseType: !3158, size: 64, offset: 64)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3160)
!3160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !3161, line: 230, size: 128, elements: !3162)
!3161 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!3162 = !{!3163, !3172}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3160, file: !3161, line: 231, baseType: !3164, size: 64)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!533, !3108, !3167, !442}
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !3161, line: 30, size: 128, elements: !3169)
!3169 = !{!3170, !3171}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3168, file: !3161, line: 31, baseType: !113, size: 64)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3168, file: !3161, line: 32, baseType: !387, size: 16, offset: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3160, file: !3161, line: 232, baseType: !3173, size: 64, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!533, !3108, !3167, !113, !536}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !3151, file: !3103, line: 141, baseType: !3177, size: 64, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !3151, file: !3103, line: 142, baseType: !3179, size: 64, offset: 192)
!3179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3180, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3182)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !3161, line: 84, size: 320, elements: !3183)
!3183 = !{!3184, !3185, !3189, !3208, !3209}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3182, file: !3161, line: 85, baseType: !113, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !3182, file: !3161, line: 86, baseType: !3186, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!387, !3108, !3167, !102}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !3182, file: !3161, line: 88, baseType: !3190, size: 64, offset: 128)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!387, !3108, !3193, !102}
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !3161, line: 168, size: 448, elements: !3195)
!3195 = !{!3196, !3197, !3198, !3199, !3203, !3204}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3194, file: !3161, line: 169, baseType: !3168, size: 128)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3194, file: !3161, line: 170, baseType: !536, size: 64, offset: 128)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3194, file: !3161, line: 171, baseType: !84, size: 64, offset: 192)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3194, file: !3161, line: 172, baseType: !3200, size: 64, offset: 256)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DISubroutineType(types: !3202)
!3202 = !{!533, !310, !3108, !3193, !442, !488, !536}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3194, file: !3161, line: 174, baseType: !3200, size: 64, offset: 320)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3194, file: !3161, line: 176, baseType: !3205, size: 64, offset: 384)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!102, !310, !3108, !3193, !939}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !3182, file: !3161, line: 90, baseType: !3177, size: 64, offset: 192)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !3182, file: !3161, line: 91, baseType: !3210, size: 64, offset: 256)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !3151, file: !3103, line: 143, baseType: !3212, size: 64, offset: 256)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!3215, !3108}
!3215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3216, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3217)
!3217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !46, line: 39, size: 384, elements: !3218)
!3218 = !{!3219, !3220, !3224, !3228, !3236, !3240}
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3217, file: !46, line: 40, baseType: !45, size: 32)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3217, file: !46, line: 41, baseType: !3221, size: 64, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!447}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3217, file: !46, line: 42, baseType: !3225, size: 64, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DISubroutineType(types: !3227)
!3227 = !{!84}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3217, file: !46, line: 43, baseType: !3229, size: 64, offset: 192)
!3229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3230, size: 64)
!3230 = !DISubroutineType(types: !3231)
!3231 = !{!3232, !3234}
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !46, line: 19, flags: DIFlagFwdDecl)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3217, file: !46, line: 44, baseType: !3237, size: 64, offset: 256)
!3237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3238, size: 64)
!3238 = !DISubroutineType(types: !3239)
!3239 = !{!3232}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3217, file: !46, line: 45, baseType: !424, size: 64, offset: 320)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3151, file: !3103, line: 144, baseType: !3242, size: 64, offset: 320)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!3232, !3108}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3151, file: !3103, line: 145, baseType: !3246, size: 64, offset: 384)
!3246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3247, size: 64)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{null, !3108, !3249, !3250}
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !3102, file: !3103, line: 70, baseType: !3252, size: 64, offset: 384)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !580, line: 123, size: 1024, elements: !3254)
!3254 = !{!3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3383, !3384, !3385, !3386, !3387}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3253, file: !580, line: 124, baseType: !714, size: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3253, file: !580, line: 125, baseType: !714, size: 32, offset: 32)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3253, file: !580, line: 135, baseType: !3252, size: 64, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3253, file: !580, line: 136, baseType: !113, size: 64, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3253, file: !580, line: 138, baseType: !727, size: 192, align: 64, offset: 192)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3253, file: !580, line: 140, baseType: !3232, size: 64, offset: 384)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3253, file: !580, line: 141, baseType: !5, size: 32, offset: 448)
!3262 = !DIDerivedType(tag: DW_TAG_member, scope: !3253, file: !580, line: 142, baseType: !3263, size: 256, offset: 512)
!3263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3253, file: !580, line: 142, size: 256, elements: !3264)
!3264 = !{!3265, !3311, !3315}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3263, file: !580, line: 143, baseType: !3266, size: 192)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !580, line: 91, size: 192, elements: !3267)
!3267 = !{!3268, !3269, !3270}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3266, file: !580, line: 92, baseType: !93, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3266, file: !580, line: 94, baseType: !723, size: 64, offset: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3266, file: !580, line: 100, baseType: !3271, size: 64, offset: 128)
!3271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3272, size: 64)
!3272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !580, line: 180, size: 704, elements: !3273)
!3273 = !{!3274, !3275, !3276, !3283, !3284, !3285, !3309, !3310}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3272, file: !580, line: 182, baseType: !3252, size: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3272, file: !580, line: 183, baseType: !5, size: 32, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3272, file: !580, line: 186, baseType: !3277, size: 192, offset: 128)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3278, line: 19, size: 192, elements: !3279)
!3278 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3279 = !{!3280, !3281, !3282}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3277, file: !3278, line: 20, baseType: !705, size: 128)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3277, file: !3278, line: 21, baseType: !5, size: 32, offset: 128)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3277, file: !3278, line: 22, baseType: !5, size: 32, offset: 160)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3272, file: !580, line: 187, baseType: !373, size: 32, offset: 320)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3272, file: !580, line: 188, baseType: !373, size: 32, offset: 352)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3272, file: !580, line: 189, baseType: !3286, size: 64, offset: 384)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !580, line: 168, size: 320, elements: !3288)
!3288 = !{!3289, !3293, !3297, !3301, !3305}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3287, file: !580, line: 169, baseType: !3290, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3291, size: 64)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{!102, !677, !3271}
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3287, file: !580, line: 171, baseType: !3294, size: 64, offset: 64)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3295, size: 64)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!102, !3252, !113, !387}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3287, file: !580, line: 173, baseType: !3298, size: 64, offset: 128)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!102, !3252}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3287, file: !580, line: 174, baseType: !3302, size: 64, offset: 192)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DISubroutineType(types: !3304)
!3304 = !{!102, !3252, !3252, !113}
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3287, file: !580, line: 176, baseType: !3306, size: 64, offset: 256)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = !DISubroutineType(types: !3308)
!3308 = !{!102, !677, !3252, !3271}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3272, file: !580, line: 192, baseType: !301, size: 128, offset: 448)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3272, file: !580, line: 194, baseType: !1346, size: 128, offset: 576)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3263, file: !580, line: 144, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !580, line: 103, size: 64, elements: !3313)
!3313 = !{!3314}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3312, file: !580, line: 104, baseType: !3252, size: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3263, file: !580, line: 145, baseType: !3316, size: 256)
!3316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !580, line: 107, size: 256, elements: !3317)
!3317 = !{!3318, !3378, !3381, !3382}
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3316, file: !580, line: 108, baseType: !3319, size: 64)
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3321)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !580, line: 217, size: 768, elements: !3322)
!3322 = !{!3323, !3343, !3347, !3351, !3355, !3359, !3363, !3367, !3368, !3369, !3370, !3374}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3321, file: !580, line: 222, baseType: !3324, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3325, size: 64)
!3325 = !DISubroutineType(types: !3326)
!3326 = !{!102, !3327}
!3327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3328, size: 64)
!3328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !580, line: 197, size: 1088, elements: !3329)
!3329 = !{!3330, !3331, !3332, !3333, !3334, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342}
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3328, file: !580, line: 199, baseType: !3252, size: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3328, file: !580, line: 200, baseType: !310, size: 64, offset: 64)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3328, file: !580, line: 201, baseType: !677, size: 64, offset: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3328, file: !580, line: 202, baseType: !84, size: 64, offset: 192)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3328, file: !580, line: 205, baseType: !270, size: 192, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3328, file: !580, line: 206, baseType: !270, size: 192, offset: 448)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3328, file: !580, line: 207, baseType: !102, size: 32, offset: 640)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3328, file: !580, line: 208, baseType: !301, size: 128, offset: 704)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3328, file: !580, line: 209, baseType: !442, size: 64, offset: 832)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3328, file: !580, line: 211, baseType: !536, size: 64, offset: 896)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3328, file: !580, line: 212, baseType: !447, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3328, file: !580, line: 213, baseType: !447, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3328, file: !580, line: 214, baseType: !967, size: 64, offset: 1024)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3321, file: !580, line: 223, baseType: !3344, size: 64, offset: 64)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{null, !3327}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3321, file: !580, line: 236, baseType: !3348, size: 64, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!102, !677, !84}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3321, file: !580, line: 238, baseType: !3352, size: 64, offset: 192)
!3352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3353, size: 64)
!3353 = !DISubroutineType(types: !3354)
!3354 = !{!84, !677, !2664}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3321, file: !580, line: 239, baseType: !3356, size: 64, offset: 256)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!84, !677, !84, !2664}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3321, file: !580, line: 240, baseType: !3360, size: 64, offset: 320)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !677, !84}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3321, file: !580, line: 242, baseType: !3364, size: 64, offset: 384)
!3364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3365 = !DISubroutineType(types: !3366)
!3366 = !{!533, !3327, !442, !536, !488}
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3321, file: !580, line: 252, baseType: !536, size: 64, offset: 448)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3321, file: !580, line: 259, baseType: !447, size: 8, offset: 512)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3321, file: !580, line: 260, baseType: !3364, size: 64, offset: 576)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3321, file: !580, line: 263, baseType: !3371, size: 64, offset: 640)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{!2693, !3327, !2695}
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3321, file: !580, line: 266, baseType: !3375, size: 64, offset: 704)
!3375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3376, size: 64)
!3376 = !DISubroutineType(types: !3377)
!3377 = !{!102, !3327, !939}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3316, file: !580, line: 109, baseType: !3379, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !580, line: 31, flags: DIFlagFwdDecl)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3316, file: !580, line: 110, baseType: !488, size: 64, offset: 128)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3316, file: !580, line: 111, baseType: !3252, size: 64, offset: 192)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3253, file: !580, line: 148, baseType: !84, size: 64, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3253, file: !580, line: 154, baseType: !376, size: 64, offset: 832)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3253, file: !580, line: 156, baseType: !124, size: 16, offset: 896)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3253, file: !580, line: 157, baseType: !387, size: 16, offset: 912)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3253, file: !580, line: 158, baseType: !3388, size: 64, offset: 960)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !580, line: 32, flags: DIFlagFwdDecl)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !3102, file: !3103, line: 71, baseType: !3391, size: 32, offset: 448)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3392, line: 19, size: 32, elements: !3393)
!3392 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3393 = !{!3394}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3391, file: !3392, line: 20, baseType: !1099, size: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !3102, file: !3103, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !3102, file: !3103, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !3102, file: !3103, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !3102, file: !3103, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !3102, file: !3103, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3099, file: !58, line: 463, baseType: !3401, size: 64, offset: 512)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3099, file: !58, line: 465, baseType: !3403, size: 64, offset: 576)
!3403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3404, size: 64)
!3404 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !58, line: 36, flags: DIFlagFwdDecl)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3099, file: !58, line: 467, baseType: !113, size: 64, offset: 640)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3099, file: !58, line: 468, baseType: !3407, size: 64, offset: 704)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3409)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !58, line: 87, size: 384, elements: !3410)
!3410 = !{!3411, !3412, !3413, !3417, !3422, !3426}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3409, file: !58, line: 88, baseType: !113, size: 64)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3409, file: !58, line: 89, baseType: !3179, size: 64, offset: 64)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3409, file: !58, line: 90, baseType: !3414, size: 64, offset: 128)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3415, size: 64)
!3415 = !DISubroutineType(types: !3416)
!3416 = !{!102, !3401, !3136}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3409, file: !58, line: 91, baseType: !3418, size: 64, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!442, !3401, !3421, !3249, !3250}
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3409, file: !58, line: 93, baseType: !3423, size: 64, offset: 256)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{null, !3401}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3409, file: !58, line: 95, baseType: !3427, size: 64, offset: 320)
!3427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3428, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3429)
!3429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !65, line: 278, size: 1472, elements: !3430)
!3430 = !{!3431, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456}
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3429, file: !65, line: 279, baseType: !3432, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3433, size: 64)
!3433 = !DISubroutineType(types: !3434)
!3434 = !{!102, !3401}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3429, file: !65, line: 280, baseType: !3423, size: 64, offset: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3429, file: !65, line: 281, baseType: !3432, size: 64, offset: 128)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3429, file: !65, line: 282, baseType: !3432, size: 64, offset: 192)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3429, file: !65, line: 283, baseType: !3432, size: 64, offset: 256)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3429, file: !65, line: 284, baseType: !3432, size: 64, offset: 320)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3429, file: !65, line: 285, baseType: !3432, size: 64, offset: 384)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3429, file: !65, line: 286, baseType: !3432, size: 64, offset: 448)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3429, file: !65, line: 287, baseType: !3432, size: 64, offset: 512)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3429, file: !65, line: 288, baseType: !3432, size: 64, offset: 576)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3429, file: !65, line: 289, baseType: !3432, size: 64, offset: 640)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3429, file: !65, line: 290, baseType: !3432, size: 64, offset: 704)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3429, file: !65, line: 291, baseType: !3432, size: 64, offset: 768)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3429, file: !65, line: 292, baseType: !3432, size: 64, offset: 832)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3429, file: !65, line: 293, baseType: !3432, size: 64, offset: 896)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3429, file: !65, line: 294, baseType: !3432, size: 64, offset: 960)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3429, file: !65, line: 295, baseType: !3432, size: 64, offset: 1024)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3429, file: !65, line: 296, baseType: !3432, size: 64, offset: 1088)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3429, file: !65, line: 297, baseType: !3432, size: 64, offset: 1152)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3429, file: !65, line: 298, baseType: !3432, size: 64, offset: 1216)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3429, file: !65, line: 299, baseType: !3432, size: 64, offset: 1280)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3429, file: !65, line: 300, baseType: !3432, size: 64, offset: 1344)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3429, file: !65, line: 301, baseType: !3432, size: 64, offset: 1408)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3099, file: !58, line: 470, baseType: !3458, size: 64, offset: 768)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3460, line: 82, size: 1408, elements: !3461)
!3460 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3461 = !{!3462, !3463, !3464, !3465, !3466, !3467, !3468, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3541, !3544, !3545}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3459, file: !3460, line: 83, baseType: !113, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3459, file: !3460, line: 84, baseType: !113, size: 64, offset: 64)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3459, file: !3460, line: 85, baseType: !3401, size: 64, offset: 128)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3459, file: !3460, line: 86, baseType: !3179, size: 64, offset: 192)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3459, file: !3460, line: 87, baseType: !3179, size: 64, offset: 256)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3459, file: !3460, line: 88, baseType: !3179, size: 64, offset: 320)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3459, file: !3460, line: 90, baseType: !3469, size: 64, offset: 384)
!3469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3470 = !DISubroutineType(types: !3471)
!3471 = !{!102, !3401, !3472}
!3472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3473, size: 64)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !52, line: 95, size: 1152, elements: !3474)
!3474 = !{!3475, !3476, !3477, !3478, !3479, !3480, !3481, !3493, !3505, !3506, !3507, !3508, !3509, !3517, !3518, !3519, !3520, !3521, !3522}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3473, file: !52, line: 96, baseType: !113, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3473, file: !52, line: 97, baseType: !3458, size: 64, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3473, file: !52, line: 99, baseType: !594, size: 64, offset: 128)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3473, file: !52, line: 100, baseType: !113, size: 64, offset: 192)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3473, file: !52, line: 102, baseType: !447, size: 8, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3473, file: !52, line: 103, baseType: !51, size: 32, offset: 288)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3473, file: !52, line: 105, baseType: !3482, size: 64, offset: 320)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3484)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3059, line: 262, size: 1600, elements: !3485)
!3485 = !{!3486, !3487, !3488, !3492}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3484, file: !3059, line: 263, baseType: !2488, size: 256)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3484, file: !3059, line: 264, baseType: !2488, size: 256, offset: 256)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3484, file: !3059, line: 265, baseType: !3489, size: 1024, offset: 512)
!3489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 1024, elements: !3490)
!3490 = !{!3491}
!3491 = !DISubrange(count: 128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3484, file: !3059, line: 266, baseType: !3232, size: 64, offset: 1536)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3473, file: !52, line: 106, baseType: !3494, size: 64, offset: 384)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3496)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3059, line: 210, size: 256, elements: !3497)
!3497 = !{!3498, !3502, !3503, !3504}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3496, file: !3059, line: 211, baseType: !3499, size: 72)
!3499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 72, elements: !3500)
!3500 = !{!3501}
!3501 = !DISubrange(count: 9)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3496, file: !3059, line: 212, baseType: !3062, size: 64, offset: 128)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3496, file: !3059, line: 213, baseType: !164, size: 32, offset: 192)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3496, file: !3059, line: 214, baseType: !164, size: 32, offset: 224)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3473, file: !52, line: 108, baseType: !3432, size: 64, offset: 448)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3473, file: !52, line: 109, baseType: !3423, size: 64, offset: 512)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3473, file: !52, line: 110, baseType: !3432, size: 64, offset: 576)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3473, file: !52, line: 111, baseType: !3423, size: 64, offset: 640)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3473, file: !52, line: 112, baseType: !3510, size: 64, offset: 704)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!102, !3401, !3513}
!3513 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !65, line: 52, baseType: !3514)
!3514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !65, line: 50, size: 32, elements: !3515)
!3515 = !{!3516}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3514, file: !65, line: 51, baseType: !102, size: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3473, file: !52, line: 113, baseType: !3432, size: 64, offset: 768)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3473, file: !52, line: 114, baseType: !3179, size: 64, offset: 832)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3473, file: !52, line: 115, baseType: !3179, size: 64, offset: 896)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3473, file: !52, line: 117, baseType: !3427, size: 64, offset: 960)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3473, file: !52, line: 118, baseType: !3423, size: 64, offset: 1024)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3473, file: !52, line: 120, baseType: !3523, size: 64, offset: 1088)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !52, line: 120, flags: DIFlagFwdDecl)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3459, file: !3460, line: 91, baseType: !3414, size: 64, offset: 448)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3459, file: !3460, line: 92, baseType: !3432, size: 64, offset: 512)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3459, file: !3460, line: 93, baseType: !3423, size: 64, offset: 576)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3459, file: !3460, line: 94, baseType: !3432, size: 64, offset: 640)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3459, file: !3460, line: 95, baseType: !3423, size: 64, offset: 704)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3459, file: !3460, line: 97, baseType: !3432, size: 64, offset: 768)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3459, file: !3460, line: 98, baseType: !3432, size: 64, offset: 832)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3459, file: !3460, line: 100, baseType: !3510, size: 64, offset: 896)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3459, file: !3460, line: 101, baseType: !3432, size: 64, offset: 960)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3459, file: !3460, line: 103, baseType: !3432, size: 64, offset: 1024)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3459, file: !3460, line: 105, baseType: !3432, size: 64, offset: 1088)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3459, file: !3460, line: 107, baseType: !3427, size: 64, offset: 1152)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3459, file: !3460, line: 109, baseType: !3538, size: 64, offset: 1216)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3540)
!3540 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3460, line: 109, flags: DIFlagFwdDecl)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3459, file: !3460, line: 111, baseType: !3542, size: 64, offset: 1280)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3460, line: 111, flags: DIFlagFwdDecl)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3459, file: !3460, line: 112, baseType: !609, offset: 1344)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3459, file: !3460, line: 114, baseType: !447, size: 8, offset: 1344)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3099, file: !58, line: 471, baseType: !3472, size: 64, offset: 832)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3099, file: !58, line: 473, baseType: !84, size: 64, offset: 896)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3099, file: !58, line: 475, baseType: !84, size: 64, offset: 960)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3099, file: !58, line: 480, baseType: !270, size: 192, offset: 1024)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3099, file: !58, line: 484, baseType: !3551, size: 576, offset: 1216)
!3551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !58, line: 361, size: 576, elements: !3552)
!3552 = !{!3553, !3554, !3555, !3556, !3557, !3558}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3551, file: !58, line: 362, baseType: !301, size: 128)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3551, file: !58, line: 363, baseType: !301, size: 128, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3551, file: !58, line: 364, baseType: !301, size: 128, offset: 256)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3551, file: !58, line: 365, baseType: !301, size: 128, offset: 384)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3551, file: !58, line: 366, baseType: !447, size: 8, offset: 512)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3551, file: !58, line: 367, baseType: !57, size: 32, offset: 544)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3099, file: !58, line: 485, baseType: !3560, size: 2304, offset: 1792)
!3560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !65, line: 565, size: 2304, elements: !3561)
!3561 = !{!3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3646, !3650}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3560, file: !65, line: 566, baseType: !3513, size: 32)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3560, file: !65, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3560, file: !65, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3560, file: !65, line: 569, baseType: !447, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3560, file: !65, line: 570, baseType: !447, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3560, file: !65, line: 571, baseType: !447, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3560, file: !65, line: 572, baseType: !447, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3560, file: !65, line: 573, baseType: !447, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3560, file: !65, line: 574, baseType: !447, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3560, file: !65, line: 575, baseType: !447, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3560, file: !65, line: 576, baseType: !447, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3560, file: !65, line: 577, baseType: !373, size: 32, offset: 64)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3560, file: !65, line: 578, baseType: !285, offset: 96)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3560, file: !65, line: 580, baseType: !301, size: 128, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3560, file: !65, line: 581, baseType: !1367, size: 192, offset: 256)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3560, file: !65, line: 582, baseType: !3578, size: 64, offset: 448)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3580, line: 43, size: 1472, elements: !3581)
!3580 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3581 = !{!3582, !3583, !3584, !3585, !3586, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3579, file: !3580, line: 44, baseType: !113, size: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3579, file: !3580, line: 45, baseType: !102, size: 32, offset: 64)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3579, file: !3580, line: 46, baseType: !301, size: 128, offset: 128)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3579, file: !3580, line: 47, baseType: !285, offset: 256)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3579, file: !3580, line: 48, baseType: !3587, size: 64, offset: 256)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !65, line: 533, flags: DIFlagFwdDecl)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3579, file: !3580, line: 49, baseType: !2970, size: 320, offset: 320)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3579, file: !3580, line: 50, baseType: !93, size: 64, offset: 640)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3579, file: !3580, line: 51, baseType: !1169, size: 64, offset: 704)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3579, file: !3580, line: 52, baseType: !1169, size: 64, offset: 768)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3579, file: !3580, line: 53, baseType: !1169, size: 64, offset: 832)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3579, file: !3580, line: 54, baseType: !1169, size: 64, offset: 896)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3579, file: !3580, line: 55, baseType: !1169, size: 64, offset: 960)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3579, file: !3580, line: 56, baseType: !93, size: 64, offset: 1024)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3579, file: !3580, line: 57, baseType: !93, size: 64, offset: 1088)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3579, file: !3580, line: 58, baseType: !93, size: 64, offset: 1152)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3579, file: !3580, line: 59, baseType: !93, size: 64, offset: 1216)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3579, file: !3580, line: 60, baseType: !93, size: 64, offset: 1280)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3579, file: !3580, line: 61, baseType: !3401, size: 64, offset: 1344)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3579, file: !3580, line: 62, baseType: !447, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3579, file: !3580, line: 63, baseType: !447, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3560, file: !65, line: 583, baseType: !447, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3560, file: !65, line: 584, baseType: !447, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3560, file: !65, line: 585, baseType: !447, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3560, file: !65, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3560, file: !65, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3560, file: !65, line: 592, baseType: !1161, size: 512, offset: 576)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3560, file: !65, line: 593, baseType: !376, size: 64, offset: 1088)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3560, file: !65, line: 594, baseType: !1823, size: 256, offset: 1152)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3560, file: !65, line: 595, baseType: !1346, size: 128, offset: 1408)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3560, file: !65, line: 596, baseType: !3587, size: 64, offset: 1536)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3560, file: !65, line: 597, baseType: !714, size: 32, offset: 1600)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3560, file: !65, line: 598, baseType: !714, size: 32, offset: 1632)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3560, file: !65, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3560, file: !65, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3560, file: !65, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3560, file: !65, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3560, file: !65, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3560, file: !65, line: 604, baseType: !447, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3560, file: !65, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3560, file: !65, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3560, file: !65, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3560, file: !65, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3560, file: !65, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3560, file: !65, line: 610, baseType: !5, size: 32, offset: 1696)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3560, file: !65, line: 611, baseType: !64, size: 32, offset: 1728)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3560, file: !65, line: 612, baseType: !72, size: 32, offset: 1760)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3560, file: !65, line: 613, baseType: !102, size: 32, offset: 1792)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3560, file: !65, line: 614, baseType: !102, size: 32, offset: 1824)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3560, file: !65, line: 615, baseType: !376, size: 64, offset: 1856)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3560, file: !65, line: 616, baseType: !376, size: 64, offset: 1920)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3560, file: !65, line: 617, baseType: !376, size: 64, offset: 1984)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3560, file: !65, line: 618, baseType: !376, size: 64, offset: 2048)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3560, file: !65, line: 620, baseType: !3637, size: 64, offset: 2112)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !65, line: 536, size: 256, elements: !3639)
!3639 = !{!3640, !3641, !3642, !3643}
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3638, file: !65, line: 537, baseType: !285)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3638, file: !65, line: 538, baseType: !5, size: 32)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3638, file: !65, line: 540, baseType: !301, size: 128, offset: 64)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3638, file: !65, line: 543, baseType: !3644, size: 64, offset: 192)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !65, line: 534, flags: DIFlagFwdDecl)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3560, file: !65, line: 621, baseType: !3647, size: 64, offset: 2176)
!3647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3648, size: 64)
!3648 = !DISubroutineType(types: !3649)
!3649 = !{null, !3401, !1309}
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3560, file: !65, line: 622, baseType: !3651, size: 64, offset: 2240)
!3651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3652, size: 64)
!3652 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !65, line: 622, flags: DIFlagFwdDecl)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3099, file: !58, line: 486, baseType: !3654, size: 64, offset: 4096)
!3654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3655, size: 64)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !65, line: 642, size: 1792, elements: !3656)
!3656 = !{!3657, !3658, !3659, !3663, !3664, !3665}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3655, file: !65, line: 643, baseType: !3429, size: 1472)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3655, file: !65, line: 644, baseType: !3432, size: 64, offset: 1472)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3655, file: !65, line: 645, baseType: !3660, size: 64, offset: 1536)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DISubroutineType(types: !3662)
!3662 = !{null, !3401, !447}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3655, file: !65, line: 646, baseType: !3432, size: 64, offset: 1600)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3655, file: !65, line: 647, baseType: !3423, size: 64, offset: 1664)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3655, file: !65, line: 648, baseType: !3423, size: 64, offset: 1728)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !3099, file: !58, line: 493, baseType: !3667, size: 64, offset: 4160)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !58, line: 493, flags: DIFlagFwdDecl)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !3099, file: !58, line: 499, baseType: !301, size: 128, offset: 4224)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3099, file: !58, line: 502, baseType: !3671, size: 64, offset: 4352)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3673)
!3673 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !58, line: 502, flags: DIFlagFwdDecl)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3099, file: !58, line: 504, baseType: !3675, size: 64, offset: 4416)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3099, file: !58, line: 505, baseType: !376, size: 64, offset: 4480)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3099, file: !58, line: 510, baseType: !376, size: 64, offset: 4544)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3099, file: !58, line: 511, baseType: !3679, size: 64, offset: 4608)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3681)
!3681 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !58, line: 511, flags: DIFlagFwdDecl)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3099, file: !58, line: 513, baseType: !3683, size: 64, offset: 4672)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !58, line: 288, size: 128, elements: !3685)
!3685 = !{!3686, !3687}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3684, file: !58, line: 293, baseType: !5, size: 32)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3684, file: !58, line: 294, baseType: !93, size: 64, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3099, file: !58, line: 515, baseType: !301, size: 128, offset: 4736)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3099, file: !58, line: 526, baseType: !3690, offset: 4864)
!3690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3691, line: 5, elements: !299)
!3691 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3099, file: !58, line: 528, baseType: !3693, size: 64, offset: 4864)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3695, line: 14, flags: DIFlagFwdDecl)
!3695 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3099, file: !58, line: 529, baseType: !3697, size: 64, offset: 4928)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3460, line: 22, flags: DIFlagFwdDecl)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3099, file: !58, line: 534, baseType: !470, size: 32, offset: 4992)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3099, file: !58, line: 535, baseType: !373, size: 32, offset: 5024)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3099, file: !58, line: 537, baseType: !285, offset: 5056)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3099, file: !58, line: 538, baseType: !301, size: 128, offset: 5056)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3099, file: !58, line: 540, baseType: !3704, size: 64, offset: 5184)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3706, line: 54, size: 960, elements: !3707)
!3706 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3707 = !{!3708, !3709, !3710, !3711, !3712, !3713, !3714, !3718, !3722, !3723, !3724, !3725, !3729, !3733, !3734}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3705, file: !3706, line: 55, baseType: !113, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3705, file: !3706, line: 56, baseType: !594, size: 64, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3705, file: !3706, line: 58, baseType: !3179, size: 64, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3705, file: !3706, line: 59, baseType: !3179, size: 64, offset: 192)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3705, file: !3706, line: 60, baseType: !3108, size: 64, offset: 256)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3705, file: !3706, line: 62, baseType: !3414, size: 64, offset: 320)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3705, file: !3706, line: 63, baseType: !3715, size: 64, offset: 384)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!442, !3401, !3421}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3705, file: !3706, line: 65, baseType: !3719, size: 64, offset: 448)
!3719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3720, size: 64)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{null, !3704}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3705, file: !3706, line: 66, baseType: !3423, size: 64, offset: 512)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3705, file: !3706, line: 68, baseType: !3432, size: 64, offset: 576)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3705, file: !3706, line: 70, baseType: !3215, size: 64, offset: 640)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3705, file: !3706, line: 71, baseType: !3726, size: 64, offset: 704)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!3232, !3401}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3705, file: !3706, line: 73, baseType: !3730, size: 64, offset: 768)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{null, !3401, !3249, !3250}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3705, file: !3706, line: 75, baseType: !3427, size: 64, offset: 832)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3705, file: !3706, line: 77, baseType: !3542, size: 64, offset: 896)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3099, file: !58, line: 541, baseType: !3179, size: 64, offset: 5248)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3099, file: !58, line: 543, baseType: !3423, size: 64, offset: 5312)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3099, file: !58, line: 544, baseType: !3738, size: 64, offset: 5376)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !58, line: 45, flags: DIFlagFwdDecl)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3099, file: !58, line: 545, baseType: !3741, size: 64, offset: 5440)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3742, size: 64)
!3742 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !58, line: 47, flags: DIFlagFwdDecl)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3099, file: !58, line: 547, baseType: !447, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3099, file: !58, line: 548, baseType: !447, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3099, file: !58, line: 549, baseType: !447, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3099, file: !58, line: 550, baseType: !447, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !109, file: !110, line: 194, baseType: !301, size: 128, offset: 9792)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !109, file: !110, line: 195, baseType: !301, size: 128, offset: 9920)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !109, file: !110, line: 197, baseType: !5, size: 32, offset: 10048)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !109, file: !110, line: 198, baseType: !5, size: 32, offset: 10080)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !109, file: !110, line: 199, baseType: !3752, size: 64, offset: 10112)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !109, file: !110, line: 201, baseType: !447, size: 8, offset: 10176)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !109, file: !110, line: 203, baseType: !3755, size: 192, offset: 10240)
!3755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1169, size: 192, elements: !615)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !105, line: 87, baseType: !3757, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iforce_device", file: !105, line: 66, size: 320, elements: !3759)
!3759 = !{!3760, !3761, !3762, !3763, !3765, !3766}
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "idvendor", scope: !3758, file: !105, line: 67, baseType: !260, size: 16)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "idproduct", scope: !3758, file: !105, line: 68, baseType: !260, size: 16, offset: 16)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3758, file: !105, line: 69, baseType: !442, size: 64, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "btn", scope: !3758, file: !105, line: 70, baseType: !3764, size: 64, offset: 128)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "abs", scope: !3758, file: !105, line: 71, baseType: !3764, size: 64, offset: 192)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !3758, file: !105, line: 72, baseType: !3764, size: 64, offset: 256)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "xport_ops", scope: !104, file: !105, line: 88, baseType: !3768, size: 64, offset: 128)
!3768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3769, size: 64)
!3769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3770)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iforce_xport_ops", file: !105, line: 77, size: 256, elements: !3771)
!3771 = !{!3772, !3776, !3782, !3786}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "xmit", scope: !3770, file: !105, line: 78, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{null, !103}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "get_id", scope: !3770, file: !105, line: 79, baseType: !3777, size: 64, offset: 64)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!102, !103, !1221, !3780, !3781}
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "start_io", scope: !3770, file: !105, line: 81, baseType: !3783, size: 64, offset: 128)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!102, !103}
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "stop_io", scope: !3770, file: !105, line: 82, baseType: !3773, size: 64, offset: 192)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_lock", scope: !104, file: !105, line: 90, baseType: !285, offset: 192)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "xmit", scope: !104, file: !105, line: 92, baseType: !3789, size: 128, offset: 192)
!3789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "circ_buf", file: !3790, line: 9, size: 128, elements: !3791)
!3790 = !DIFile(filename: "./include/linux/circ_buf.h", directory: "/home/lizy2001/genbc/linux")
!3791 = !{!3792, !3793, !3794}
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !3789, file: !3790, line: 10, baseType: !442, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3789, file: !3790, line: 11, baseType: !102, size: 32, offset: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3789, file: !3790, line: 12, baseType: !102, size: 32, offset: 96)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_data", scope: !104, file: !105, line: 93, baseType: !3796, size: 2048, offset: 320)
!3796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 2048, elements: !3797)
!3797 = !{!3798}
!3798 = !DISubrange(count: 256)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_flags", scope: !104, file: !105, line: 94, baseType: !129, size: 64, offset: 2368)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !104, file: !105, line: 97, baseType: !1346, size: 128, offset: 2432)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "device_memory", scope: !104, file: !105, line: 98, baseType: !3802, size: 512, offset: 2560)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !3803, line: 20, size: 512, elements: !3804)
!3803 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!3804 = !{!3805, !3808, !3809, !3810, !3811, !3812, !3814, !3815}
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3802, file: !3803, line: 21, baseType: !3806, size: 64)
!3806 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !277, line: 158, baseType: !3807)
!3807 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !277, line: 153, baseType: !376)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3802, file: !3803, line: 22, baseType: !3806, size: 64, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3802, file: !3803, line: 23, baseType: !113, size: 64, offset: 128)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3802, file: !3803, line: 24, baseType: !93, size: 64, offset: 192)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !3802, file: !3803, line: 25, baseType: !93, size: 64, offset: 256)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3802, file: !3803, line: 26, baseType: !3813, size: 64, offset: 320)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3802, file: !3803, line: 26, baseType: !3813, size: 64, offset: 384)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3802, file: !3803, line: 26, baseType: !3813, size: 64, offset: 448)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "core_effects", scope: !104, file: !105, line: 99, baseType: !3817, size: 34816, offset: 3072)
!3817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3818, size: 34816, elements: !167)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iforce_core_effect", file: !105, line: 39, size: 1088, elements: !3819)
!3819 = !{!3820, !3821, !3822}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "mod1_chunk", scope: !3818, file: !105, line: 41, baseType: !3802, size: 512)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "mod2_chunk", scope: !3818, file: !105, line: 42, baseType: !3802, size: 512, offset: 512)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3818, file: !105, line: 43, baseType: !129, size: 64, offset: 1024)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "mem_mutex", scope: !104, file: !105, line: 100, baseType: !270, size: 192, offset: 37888)
!3824 = !DILocalVariable(name: "iforce", arg: 1, scope: !99, file: !1, line: 338, type: !103)
!3825 = !DILocation(line: 338, column: 43, scope: !99)
!3826 = !DILocalVariable(name: "effect", arg: 2, scope: !99, file: !1, line: 338, type: !183)
!3827 = !DILocation(line: 338, column: 69, scope: !99)
!3828 = !DILocalVariable(name: "old", arg: 3, scope: !99, file: !1, line: 338, type: !183)
!3829 = !DILocation(line: 338, column: 95, scope: !99)
!3830 = !DILocalVariable(name: "wave_code", scope: !99, file: !1, line: 340, type: !1221)
!3831 = !DILocation(line: 340, column: 5, scope: !99)
!3832 = !DILocalVariable(name: "core_id", scope: !99, file: !1, line: 341, type: !102)
!3833 = !DILocation(line: 341, column: 6, scope: !99)
!3834 = !DILocation(line: 341, column: 16, scope: !99)
!3835 = !DILocation(line: 341, column: 24, scope: !99)
!3836 = !DILocalVariable(name: "core_effect", scope: !99, file: !1, line: 342, type: !3837)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3838 = !DILocation(line: 342, column: 29, scope: !99)
!3839 = !DILocation(line: 342, column: 43, scope: !99)
!3840 = !DILocation(line: 342, column: 51, scope: !99)
!3841 = !DILocation(line: 342, column: 66, scope: !99)
!3842 = !DILocation(line: 342, column: 64, scope: !99)
!3843 = !DILocalVariable(name: "mod1_chunk", scope: !99, file: !1, line: 343, type: !3813)
!3844 = !DILocation(line: 343, column: 19, scope: !99)
!3845 = !DILocation(line: 343, column: 34, scope: !99)
!3846 = !DILocation(line: 343, column: 42, scope: !99)
!3847 = !DILocation(line: 343, column: 55, scope: !99)
!3848 = !DILocation(line: 343, column: 64, scope: !99)
!3849 = !DILocalVariable(name: "mod2_chunk", scope: !99, file: !1, line: 344, type: !3813)
!3850 = !DILocation(line: 344, column: 19, scope: !99)
!3851 = !DILocation(line: 344, column: 34, scope: !99)
!3852 = !DILocation(line: 344, column: 42, scope: !99)
!3853 = !DILocation(line: 344, column: 55, scope: !99)
!3854 = !DILocation(line: 344, column: 64, scope: !99)
!3855 = !DILocalVariable(name: "param1_err", scope: !99, file: !1, line: 345, type: !102)
!3856 = !DILocation(line: 345, column: 6, scope: !99)
!3857 = !DILocalVariable(name: "param2_err", scope: !99, file: !1, line: 346, type: !102)
!3858 = !DILocation(line: 346, column: 6, scope: !99)
!3859 = !DILocalVariable(name: "core_err", scope: !99, file: !1, line: 347, type: !102)
!3860 = !DILocation(line: 347, column: 6, scope: !99)
!3861 = !DILocation(line: 349, column: 7, scope: !3862)
!3862 = distinct !DILexicalBlock(scope: !99, file: !1, line: 349, column: 6)
!3863 = !DILocation(line: 349, column: 11, scope: !3862)
!3864 = !DILocation(line: 349, column: 35, scope: !3862)
!3865 = !DILocation(line: 349, column: 43, scope: !3862)
!3866 = !DILocation(line: 349, column: 48, scope: !3862)
!3867 = !DILocation(line: 349, column: 14, scope: !3862)
!3868 = !DILocation(line: 349, column: 6, scope: !99)
!3869 = !DILocation(line: 350, column: 37, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3862, file: !1, line: 349, column: 57)
!3871 = !DILocation(line: 350, column: 45, scope: !3870)
!3872 = !DILocation(line: 351, column: 4, scope: !3870)
!3873 = !DILocation(line: 351, column: 8, scope: !3870)
!3874 = !DILocation(line: 352, column: 4, scope: !3870)
!3875 = !DILocation(line: 352, column: 12, scope: !3870)
!3876 = !DILocation(line: 352, column: 14, scope: !3870)
!3877 = !DILocation(line: 352, column: 23, scope: !3870)
!3878 = !DILocation(line: 352, column: 34, scope: !3870)
!3879 = !DILocation(line: 352, column: 42, scope: !3870)
!3880 = !DILocation(line: 352, column: 44, scope: !3870)
!3881 = !DILocation(line: 352, column: 53, scope: !3870)
!3882 = !DILocation(line: 353, column: 4, scope: !3870)
!3883 = !DILocation(line: 353, column: 12, scope: !3870)
!3884 = !DILocation(line: 353, column: 14, scope: !3870)
!3885 = !DILocation(line: 353, column: 23, scope: !3870)
!3886 = !DILocation(line: 353, column: 31, scope: !3870)
!3887 = !DILocation(line: 353, column: 39, scope: !3870)
!3888 = !DILocation(line: 353, column: 41, scope: !3870)
!3889 = !DILocation(line: 353, column: 50, scope: !3870)
!3890 = !DILocation(line: 350, column: 16, scope: !3870)
!3891 = !DILocation(line: 350, column: 14, scope: !3870)
!3892 = !DILocation(line: 354, column: 7, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3870, file: !1, line: 354, column: 7)
!3894 = !DILocation(line: 354, column: 7, scope: !3870)
!3895 = !DILocation(line: 355, column: 11, scope: !3893)
!3896 = !DILocation(line: 355, column: 4, scope: !3893)
!3897 = !DILocation(line: 356, column: 28, scope: !3870)
!3898 = !DILocation(line: 356, column: 41, scope: !3870)
!3899 = !DILocation(line: 356, column: 3, scope: !3870)
!3900 = !DILocation(line: 357, column: 2, scope: !3870)
!3901 = !DILocation(line: 359, column: 7, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !99, file: !1, line: 359, column: 6)
!3903 = !DILocation(line: 359, column: 11, scope: !3902)
!3904 = !DILocation(line: 359, column: 37, scope: !3902)
!3905 = !DILocation(line: 359, column: 45, scope: !3902)
!3906 = !DILocation(line: 359, column: 50, scope: !3902)
!3907 = !DILocation(line: 359, column: 14, scope: !3902)
!3908 = !DILocation(line: 359, column: 6, scope: !99)
!3909 = !DILocation(line: 360, column: 39, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3902, file: !1, line: 359, column: 59)
!3911 = !DILocation(line: 360, column: 47, scope: !3910)
!3912 = !DILocation(line: 361, column: 4, scope: !3910)
!3913 = !DILocation(line: 361, column: 8, scope: !3910)
!3914 = !DILocation(line: 362, column: 4, scope: !3910)
!3915 = !DILocation(line: 362, column: 12, scope: !3910)
!3916 = !DILocation(line: 362, column: 14, scope: !3910)
!3917 = !DILocation(line: 362, column: 23, scope: !3910)
!3918 = !DILocation(line: 362, column: 32, scope: !3910)
!3919 = !DILocation(line: 363, column: 4, scope: !3910)
!3920 = !DILocation(line: 363, column: 12, scope: !3910)
!3921 = !DILocation(line: 363, column: 14, scope: !3910)
!3922 = !DILocation(line: 363, column: 23, scope: !3910)
!3923 = !DILocation(line: 363, column: 32, scope: !3910)
!3924 = !DILocation(line: 364, column: 4, scope: !3910)
!3925 = !DILocation(line: 364, column: 12, scope: !3910)
!3926 = !DILocation(line: 364, column: 14, scope: !3910)
!3927 = !DILocation(line: 364, column: 23, scope: !3910)
!3928 = !DILocation(line: 364, column: 32, scope: !3910)
!3929 = !DILocation(line: 365, column: 4, scope: !3910)
!3930 = !DILocation(line: 365, column: 12, scope: !3910)
!3931 = !DILocation(line: 365, column: 14, scope: !3910)
!3932 = !DILocation(line: 365, column: 23, scope: !3910)
!3933 = !DILocation(line: 365, column: 32, scope: !3910)
!3934 = !DILocation(line: 360, column: 16, scope: !3910)
!3935 = !DILocation(line: 360, column: 14, scope: !3910)
!3936 = !DILocation(line: 366, column: 7, scope: !3937)
!3937 = distinct !DILexicalBlock(scope: !3910, file: !1, line: 366, column: 7)
!3938 = !DILocation(line: 366, column: 7, scope: !3910)
!3939 = !DILocation(line: 367, column: 11, scope: !3937)
!3940 = !DILocation(line: 367, column: 4, scope: !3937)
!3941 = !DILocation(line: 368, column: 28, scope: !3910)
!3942 = !DILocation(line: 368, column: 41, scope: !3910)
!3943 = !DILocation(line: 368, column: 3, scope: !3910)
!3944 = !DILocation(line: 369, column: 2, scope: !3910)
!3945 = !DILocation(line: 371, column: 10, scope: !99)
!3946 = !DILocation(line: 371, column: 18, scope: !99)
!3947 = !DILocation(line: 371, column: 20, scope: !99)
!3948 = !DILocation(line: 371, column: 29, scope: !99)
!3949 = !DILocation(line: 371, column: 2, scope: !99)
!3950 = !DILocation(line: 372, column: 29, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !99, file: !1, line: 371, column: 39)
!3952 = !DILocation(line: 372, column: 37, scope: !3951)
!3953 = !DILocation(line: 373, column: 30, scope: !3951)
!3954 = !DILocation(line: 373, column: 38, scope: !3951)
!3955 = !DILocation(line: 374, column: 27, scope: !3951)
!3956 = !DILocation(line: 374, column: 35, scope: !3951)
!3957 = !DILocation(line: 375, column: 29, scope: !3951)
!3958 = !DILocation(line: 375, column: 37, scope: !3951)
!3959 = !DILocation(line: 376, column: 30, scope: !3951)
!3960 = !DILocation(line: 376, column: 38, scope: !3951)
!3961 = !DILocation(line: 377, column: 22, scope: !3951)
!3962 = !DILocation(line: 377, column: 30, scope: !3951)
!3963 = !DILocation(line: 380, column: 7, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !99, file: !1, line: 380, column: 6)
!3965 = !DILocation(line: 380, column: 11, scope: !3964)
!3966 = !DILocation(line: 380, column: 24, scope: !3964)
!3967 = !DILocation(line: 380, column: 29, scope: !3964)
!3968 = !DILocation(line: 380, column: 14, scope: !3964)
!3969 = !DILocation(line: 380, column: 6, scope: !99)
!3970 = !DILocation(line: 381, column: 24, scope: !3971)
!3971 = distinct !DILexicalBlock(scope: !3964, file: !1, line: 380, column: 38)
!3972 = !DILocation(line: 381, column: 32, scope: !3971)
!3973 = !DILocation(line: 381, column: 40, scope: !3971)
!3974 = !DILocation(line: 382, column: 4, scope: !3971)
!3975 = !DILocation(line: 382, column: 16, scope: !3971)
!3976 = !DILocation(line: 383, column: 4, scope: !3971)
!3977 = !DILocation(line: 383, column: 16, scope: !3971)
!3978 = !DILocation(line: 384, column: 4, scope: !3971)
!3979 = !DILocation(line: 386, column: 4, scope: !3971)
!3980 = !DILocation(line: 386, column: 12, scope: !3971)
!3981 = !DILocation(line: 386, column: 19, scope: !3971)
!3982 = !DILocation(line: 387, column: 4, scope: !3971)
!3983 = !DILocation(line: 387, column: 12, scope: !3971)
!3984 = !DILocation(line: 387, column: 19, scope: !3971)
!3985 = !DILocation(line: 388, column: 4, scope: !3971)
!3986 = !DILocation(line: 388, column: 12, scope: !3971)
!3987 = !DILocation(line: 388, column: 20, scope: !3971)
!3988 = !DILocation(line: 389, column: 4, scope: !3971)
!3989 = !DILocation(line: 389, column: 12, scope: !3971)
!3990 = !DILocation(line: 389, column: 20, scope: !3971)
!3991 = !DILocation(line: 390, column: 4, scope: !3971)
!3992 = !DILocation(line: 390, column: 12, scope: !3971)
!3993 = !DILocation(line: 381, column: 14, scope: !3971)
!3994 = !DILocation(line: 381, column: 12, scope: !3971)
!3995 = !DILocation(line: 391, column: 2, scope: !3971)
!3996 = !DILocation(line: 399, column: 9, scope: !99)
!3997 = !DILocation(line: 399, column: 18, scope: !99)
!3998 = !DILocation(line: 399, column: 24, scope: !99)
!3999 = !DILocation(line: 399, column: 36, scope: !99)
!4000 = !DILocation(line: 399, column: 47, scope: !99)
!4001 = !DILocation(line: 399, column: 50, scope: !99)
!4002 = !DILocation(line: 0, scope: !99)
!4003 = !DILocation(line: 399, column: 2, scope: !99)
!4004 = !DILocation(line: 400, column: 1, scope: !99)
!4005 = distinct !DISubprogram(name: "need_period_modifier", scope: !1, file: !1, line: 258, type: !100, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!4006 = !DILocalVariable(name: "iforce", arg: 1, scope: !4005, file: !1, line: 258, type: !103)
!4007 = !DILocation(line: 258, column: 48, scope: !4005)
!4008 = !DILocalVariable(name: "old", arg: 2, scope: !4005, file: !1, line: 258, type: !183)
!4009 = !DILocation(line: 258, column: 74, scope: !4005)
!4010 = !DILocalVariable(name: "new", arg: 3, scope: !4005, file: !1, line: 259, type: !183)
!4011 = !DILocation(line: 259, column: 23, scope: !4005)
!4012 = !DILocation(line: 261, column: 6, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4005, file: !1, line: 261, column: 6)
!4014 = !DILocation(line: 261, column: 11, scope: !4013)
!4015 = !DILocation(line: 261, column: 16, scope: !4013)
!4016 = !DILocation(line: 261, column: 6, scope: !4005)
!4017 = !DILocation(line: 262, column: 3, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4013, file: !1, line: 261, column: 32)
!4019 = !DILocation(line: 264, column: 3, scope: !4018)
!4020 = !DILocation(line: 266, column: 10, scope: !4005)
!4021 = !DILocation(line: 266, column: 15, scope: !4005)
!4022 = !DILocation(line: 266, column: 17, scope: !4005)
!4023 = !DILocation(line: 266, column: 26, scope: !4005)
!4024 = !DILocation(line: 266, column: 36, scope: !4005)
!4025 = !DILocation(line: 266, column: 41, scope: !4005)
!4026 = !DILocation(line: 266, column: 43, scope: !4005)
!4027 = !DILocation(line: 266, column: 52, scope: !4005)
!4028 = !DILocation(line: 266, column: 33, scope: !4005)
!4029 = !DILocation(line: 267, column: 3, scope: !4005)
!4030 = !DILocation(line: 267, column: 6, scope: !4005)
!4031 = !DILocation(line: 267, column: 11, scope: !4005)
!4032 = !DILocation(line: 267, column: 13, scope: !4005)
!4033 = !DILocation(line: 267, column: 22, scope: !4005)
!4034 = !DILocation(line: 267, column: 35, scope: !4005)
!4035 = !DILocation(line: 267, column: 40, scope: !4005)
!4036 = !DILocation(line: 267, column: 42, scope: !4005)
!4037 = !DILocation(line: 267, column: 51, scope: !4005)
!4038 = !DILocation(line: 267, column: 32, scope: !4005)
!4039 = !DILocation(line: 268, column: 3, scope: !4005)
!4040 = !DILocation(line: 268, column: 6, scope: !4005)
!4041 = !DILocation(line: 268, column: 11, scope: !4005)
!4042 = !DILocation(line: 268, column: 13, scope: !4005)
!4043 = !DILocation(line: 268, column: 22, scope: !4005)
!4044 = !DILocation(line: 268, column: 32, scope: !4005)
!4045 = !DILocation(line: 268, column: 37, scope: !4005)
!4046 = !DILocation(line: 268, column: 39, scope: !4005)
!4047 = !DILocation(line: 268, column: 48, scope: !4005)
!4048 = !DILocation(line: 268, column: 29, scope: !4005)
!4049 = !DILocation(line: 269, column: 3, scope: !4005)
!4050 = !DILocation(line: 269, column: 6, scope: !4005)
!4051 = !DILocation(line: 269, column: 11, scope: !4005)
!4052 = !DILocation(line: 269, column: 13, scope: !4005)
!4053 = !DILocation(line: 269, column: 22, scope: !4005)
!4054 = !DILocation(line: 269, column: 31, scope: !4005)
!4055 = !DILocation(line: 269, column: 36, scope: !4005)
!4056 = !DILocation(line: 269, column: 38, scope: !4005)
!4057 = !DILocation(line: 269, column: 47, scope: !4005)
!4058 = !DILocation(line: 269, column: 28, scope: !4005)
!4059 = !DILocation(line: 266, column: 2, scope: !4005)
!4060 = !DILocation(line: 270, column: 1, scope: !4005)
!4061 = distinct !DISubprogram(name: "make_period_modifier", scope: !1, file: !1, line: 48, type: !4062, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!102, !103, !3813, !102, !188, !188, !260, !260}
!4064 = !DILocalVariable(name: "iforce", arg: 1, scope: !4061, file: !1, line: 48, type: !103)
!4065 = !DILocation(line: 48, column: 48, scope: !4061)
!4066 = !DILocalVariable(name: "mod_chunk", arg: 2, scope: !4061, file: !1, line: 49, type: !3813)
!4067 = !DILocation(line: 49, column: 19, scope: !4061)
!4068 = !DILocalVariable(name: "no_alloc", arg: 3, scope: !4061, file: !1, line: 49, type: !102)
!4069 = !DILocation(line: 49, column: 34, scope: !4061)
!4070 = !DILocalVariable(name: "magnitude", arg: 4, scope: !4061, file: !1, line: 50, type: !188)
!4071 = !DILocation(line: 50, column: 8, scope: !4061)
!4072 = !DILocalVariable(name: "offset", arg: 5, scope: !4061, file: !1, line: 50, type: !188)
!4073 = !DILocation(line: 50, column: 25, scope: !4061)
!4074 = !DILocalVariable(name: "period", arg: 6, scope: !4061, file: !1, line: 50, type: !260)
!4075 = !DILocation(line: 50, column: 37, scope: !4061)
!4076 = !DILocalVariable(name: "phase", arg: 7, scope: !4061, file: !1, line: 50, type: !260)
!4077 = !DILocation(line: 50, column: 49, scope: !4061)
!4078 = !DILocalVariable(name: "data", scope: !4061, file: !1, line: 52, type: !4079)
!4079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 56, elements: !4080)
!4080 = !{!4081}
!4081 = !DISubrange(count: 7)
!4082 = !DILocation(line: 52, column: 16, scope: !4061)
!4083 = !DILocation(line: 54, column: 11, scope: !4061)
!4084 = !DILocation(line: 54, column: 9, scope: !4061)
!4085 = !DILocation(line: 56, column: 7, scope: !4086)
!4086 = distinct !DILexicalBlock(scope: !4061, file: !1, line: 56, column: 6)
!4087 = !DILocation(line: 56, column: 6, scope: !4061)
!4088 = !DILocation(line: 57, column: 15, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4086, file: !1, line: 56, column: 17)
!4090 = !DILocation(line: 57, column: 23, scope: !4089)
!4091 = !DILocation(line: 57, column: 3, scope: !4089)
!4092 = !DILocation(line: 58, column: 27, scope: !4093)
!4093 = distinct !DILexicalBlock(scope: !4089, file: !1, line: 58, column: 7)
!4094 = !DILocation(line: 58, column: 35, scope: !4093)
!4095 = !DILocation(line: 58, column: 51, scope: !4093)
!4096 = !DILocation(line: 59, column: 4, scope: !4093)
!4097 = !DILocation(line: 59, column: 12, scope: !4093)
!4098 = !DILocation(line: 59, column: 26, scope: !4093)
!4099 = !DILocation(line: 59, column: 33, scope: !4093)
!4100 = !DILocation(line: 59, column: 41, scope: !4093)
!4101 = !DILocation(line: 59, column: 55, scope: !4093)
!4102 = !DILocation(line: 58, column: 7, scope: !4093)
!4103 = !DILocation(line: 58, column: 7, scope: !4089)
!4104 = !DILocation(line: 61, column: 18, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4093, file: !1, line: 60, column: 17)
!4106 = !DILocation(line: 61, column: 26, scope: !4105)
!4107 = !DILocation(line: 61, column: 4, scope: !4105)
!4108 = !DILocation(line: 62, column: 4, scope: !4105)
!4109 = !DILocation(line: 64, column: 17, scope: !4089)
!4110 = !DILocation(line: 64, column: 25, scope: !4089)
!4111 = !DILocation(line: 64, column: 3, scope: !4089)
!4112 = !DILocation(line: 65, column: 2, scope: !4089)
!4113 = !DILocation(line: 67, column: 12, scope: !4061)
!4114 = !DILocation(line: 67, column: 2, scope: !4061)
!4115 = !DILocation(line: 67, column: 10, scope: !4061)
!4116 = !DILocation(line: 68, column: 12, scope: !4061)
!4117 = !DILocation(line: 68, column: 2, scope: !4061)
!4118 = !DILocation(line: 68, column: 10, scope: !4061)
!4119 = !DILocation(line: 70, column: 12, scope: !4061)
!4120 = !DILocation(line: 70, column: 2, scope: !4061)
!4121 = !DILocation(line: 70, column: 10, scope: !4061)
!4122 = !DILocation(line: 71, column: 12, scope: !4061)
!4123 = !DILocation(line: 71, column: 2, scope: !4061)
!4124 = !DILocation(line: 71, column: 10, scope: !4061)
!4125 = !DILocation(line: 72, column: 12, scope: !4061)
!4126 = !DILocation(line: 72, column: 2, scope: !4061)
!4127 = !DILocation(line: 72, column: 10, scope: !4061)
!4128 = !DILocation(line: 74, column: 12, scope: !4061)
!4129 = !DILocation(line: 74, column: 2, scope: !4061)
!4130 = !DILocation(line: 74, column: 10, scope: !4061)
!4131 = !DILocation(line: 75, column: 12, scope: !4061)
!4132 = !DILocation(line: 75, column: 2, scope: !4061)
!4133 = !DILocation(line: 75, column: 10, scope: !4061)
!4134 = !DILocation(line: 77, column: 21, scope: !4061)
!4135 = !DILocation(line: 77, column: 44, scope: !4061)
!4136 = !DILocation(line: 77, column: 2, scope: !4061)
!4137 = !DILocation(line: 79, column: 2, scope: !4061)
!4138 = !DILocation(line: 80, column: 1, scope: !4061)
!4139 = distinct !DISubprogram(name: "set_bit", scope: !4140, file: !4140, line: 26, type: !4141, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!4140 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4141 = !DISubroutineType(types: !4142)
!4142 = !{null, !91, !4143}
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4144, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !93)
!4145 = !DILocalVariable(name: "nr", arg: 1, scope: !4146, file: !4147, line: 52, type: !91)
!4146 = distinct !DISubprogram(name: "arch_set_bit", scope: !4147, file: !4147, line: 52, type: !4141, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!4147 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4148 = !DILocation(line: 52, column: 19, scope: !4146, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 29, column: 2, scope: !4139)
!4150 = !DILocalVariable(name: "addr", arg: 2, scope: !4146, file: !4147, line: 52, type: !4143)
!4151 = !DILocation(line: 52, column: 47, scope: !4146, inlinedAt: !4149)
!4152 = !DILocalVariable(name: "v", arg: 1, scope: !4153, file: !4154, line: 84, type: !4157)
!4153 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4154, file: !4154, line: 84, type: !4155, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!4154 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!4155 = !DISubroutineType(types: !4156)
!4156 = !{null, !4157, !536}
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4159)
!4159 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4160 = !DILocation(line: 84, column: 74, scope: !4153, inlinedAt: !4161)
!4161 = distinct !DILocation(line: 28, column: 2, scope: !4139)
!4162 = !DILocalVariable(name: "size", arg: 2, scope: !4153, file: !4154, line: 84, type: !536)
!4163 = !DILocation(line: 84, column: 84, scope: !4153, inlinedAt: !4161)
!4164 = !DILocalVariable(name: "nr", arg: 1, scope: !4139, file: !4140, line: 26, type: !91)
!4165 = !DILocation(line: 26, column: 33, scope: !4139)
!4166 = !DILocalVariable(name: "addr", arg: 2, scope: !4139, file: !4140, line: 26, type: !4143)
!4167 = !DILocation(line: 26, column: 61, scope: !4139)
!4168 = !DILocation(line: 28, column: 26, scope: !4139)
!4169 = !DILocation(line: 28, column: 33, scope: !4139)
!4170 = !DILocation(line: 28, column: 31, scope: !4139)
!4171 = !DILocation(line: 86, column: 20, scope: !4153, inlinedAt: !4161)
!4172 = !DILocation(line: 86, column: 23, scope: !4153, inlinedAt: !4161)
!4173 = !DILocation(line: 86, column: 2, scope: !4153, inlinedAt: !4161)
!4174 = !DILocation(line: 87, column: 2, scope: !4153, inlinedAt: !4161)
!4175 = !DILocation(line: 29, column: 15, scope: !4139)
!4176 = !DILocation(line: 29, column: 19, scope: !4139)
!4177 = !DILocation(line: 54, column: 27, scope: !4178, inlinedAt: !4149)
!4178 = distinct !DILexicalBlock(scope: !4146, file: !4147, line: 54, column: 6)
!4179 = !DILocation(line: 54, column: 6, scope: !4178, inlinedAt: !4149)
!4180 = !DILocation(line: 54, column: 6, scope: !4146, inlinedAt: !4149)
!4181 = !DILocation(line: 56, column: 6, scope: !4182, inlinedAt: !4149)
!4182 = distinct !DILexicalBlock(scope: !4178, file: !4147, line: 54, column: 32)
!4183 = !DILocation(line: 57, column: 12, scope: !4182, inlinedAt: !4149)
!4184 = !DILocation(line: 55, column: 3, scope: !4182, inlinedAt: !4149)
!4185 = !{i32 -2147194289}
!4186 = !DILocation(line: 59, column: 2, scope: !4182, inlinedAt: !4149)
!4187 = !DILocation(line: 61, column: 8, scope: !4188, inlinedAt: !4149)
!4188 = distinct !DILexicalBlock(scope: !4178, file: !4147, line: 59, column: 9)
!4189 = !DILocation(line: 61, column: 32, scope: !4188, inlinedAt: !4149)
!4190 = !DILocation(line: 60, column: 3, scope: !4188, inlinedAt: !4149)
!4191 = !{i32 -2147194157}
!4192 = !DILocation(line: 30, column: 1, scope: !4139)
!4193 = distinct !DISubprogram(name: "need_envelope_modifier", scope: !1, file: !1, line: 226, type: !100, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!4194 = !DILocalVariable(name: "iforce", arg: 1, scope: !4193, file: !1, line: 226, type: !103)
!4195 = !DILocation(line: 226, column: 50, scope: !4193)
!4196 = !DILocalVariable(name: "old", arg: 2, scope: !4193, file: !1, line: 226, type: !183)
!4197 = !DILocation(line: 226, column: 76, scope: !4193)
!4198 = !DILocalVariable(name: "effect", arg: 3, scope: !4193, file: !1, line: 227, type: !183)
!4199 = !DILocation(line: 227, column: 25, scope: !4193)
!4200 = !DILocation(line: 229, column: 10, scope: !4193)
!4201 = !DILocation(line: 229, column: 18, scope: !4193)
!4202 = !DILocation(line: 229, column: 2, scope: !4193)
!4203 = !DILocation(line: 231, column: 7, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !1, line: 231, column: 7)
!4205 = distinct !DILexicalBlock(scope: !4193, file: !1, line: 229, column: 24)
!4206 = !DILocation(line: 231, column: 12, scope: !4204)
!4207 = !DILocation(line: 231, column: 14, scope: !4204)
!4208 = !DILocation(line: 231, column: 23, scope: !4204)
!4209 = !DILocation(line: 231, column: 32, scope: !4204)
!4210 = !DILocation(line: 231, column: 49, scope: !4204)
!4211 = !DILocation(line: 231, column: 57, scope: !4204)
!4212 = !DILocation(line: 231, column: 59, scope: !4204)
!4213 = !DILocation(line: 231, column: 68, scope: !4204)
!4214 = !DILocation(line: 231, column: 77, scope: !4204)
!4215 = !DILocation(line: 231, column: 46, scope: !4204)
!4216 = !DILocation(line: 232, column: 3, scope: !4204)
!4217 = !DILocation(line: 232, column: 6, scope: !4204)
!4218 = !DILocation(line: 232, column: 11, scope: !4204)
!4219 = !DILocation(line: 232, column: 13, scope: !4204)
!4220 = !DILocation(line: 232, column: 22, scope: !4204)
!4221 = !DILocation(line: 232, column: 31, scope: !4204)
!4222 = !DILocation(line: 232, column: 47, scope: !4204)
!4223 = !DILocation(line: 232, column: 55, scope: !4204)
!4224 = !DILocation(line: 232, column: 57, scope: !4204)
!4225 = !DILocation(line: 232, column: 66, scope: !4204)
!4226 = !DILocation(line: 232, column: 75, scope: !4204)
!4227 = !DILocation(line: 232, column: 44, scope: !4204)
!4228 = !DILocation(line: 233, column: 3, scope: !4204)
!4229 = !DILocation(line: 233, column: 6, scope: !4204)
!4230 = !DILocation(line: 233, column: 11, scope: !4204)
!4231 = !DILocation(line: 233, column: 13, scope: !4204)
!4232 = !DILocation(line: 233, column: 22, scope: !4204)
!4233 = !DILocation(line: 233, column: 31, scope: !4204)
!4234 = !DILocation(line: 233, column: 46, scope: !4204)
!4235 = !DILocation(line: 233, column: 54, scope: !4204)
!4236 = !DILocation(line: 233, column: 56, scope: !4204)
!4237 = !DILocation(line: 233, column: 65, scope: !4204)
!4238 = !DILocation(line: 233, column: 74, scope: !4204)
!4239 = !DILocation(line: 233, column: 43, scope: !4204)
!4240 = !DILocation(line: 234, column: 3, scope: !4204)
!4241 = !DILocation(line: 234, column: 6, scope: !4204)
!4242 = !DILocation(line: 234, column: 11, scope: !4204)
!4243 = !DILocation(line: 234, column: 13, scope: !4204)
!4244 = !DILocation(line: 234, column: 22, scope: !4204)
!4245 = !DILocation(line: 234, column: 31, scope: !4204)
!4246 = !DILocation(line: 234, column: 45, scope: !4204)
!4247 = !DILocation(line: 234, column: 53, scope: !4204)
!4248 = !DILocation(line: 234, column: 55, scope: !4204)
!4249 = !DILocation(line: 234, column: 64, scope: !4204)
!4250 = !DILocation(line: 234, column: 73, scope: !4204)
!4251 = !DILocation(line: 234, column: 42, scope: !4204)
!4252 = !DILocation(line: 231, column: 7, scope: !4205)
!4253 = !DILocation(line: 235, column: 4, scope: !4204)
!4254 = !DILocation(line: 236, column: 3, scope: !4205)
!4255 = !DILocation(line: 239, column: 7, scope: !4256)
!4256 = distinct !DILexicalBlock(scope: !4205, file: !1, line: 239, column: 7)
!4257 = !DILocation(line: 239, column: 12, scope: !4256)
!4258 = !DILocation(line: 239, column: 14, scope: !4256)
!4259 = !DILocation(line: 239, column: 23, scope: !4256)
!4260 = !DILocation(line: 239, column: 32, scope: !4256)
!4261 = !DILocation(line: 239, column: 49, scope: !4256)
!4262 = !DILocation(line: 239, column: 57, scope: !4256)
!4263 = !DILocation(line: 239, column: 59, scope: !4256)
!4264 = !DILocation(line: 239, column: 68, scope: !4256)
!4265 = !DILocation(line: 239, column: 77, scope: !4256)
!4266 = !DILocation(line: 239, column: 46, scope: !4256)
!4267 = !DILocation(line: 240, column: 3, scope: !4256)
!4268 = !DILocation(line: 240, column: 6, scope: !4256)
!4269 = !DILocation(line: 240, column: 11, scope: !4256)
!4270 = !DILocation(line: 240, column: 13, scope: !4256)
!4271 = !DILocation(line: 240, column: 22, scope: !4256)
!4272 = !DILocation(line: 240, column: 31, scope: !4256)
!4273 = !DILocation(line: 240, column: 47, scope: !4256)
!4274 = !DILocation(line: 240, column: 55, scope: !4256)
!4275 = !DILocation(line: 240, column: 57, scope: !4256)
!4276 = !DILocation(line: 240, column: 66, scope: !4256)
!4277 = !DILocation(line: 240, column: 75, scope: !4256)
!4278 = !DILocation(line: 240, column: 44, scope: !4256)
!4279 = !DILocation(line: 241, column: 3, scope: !4256)
!4280 = !DILocation(line: 241, column: 6, scope: !4256)
!4281 = !DILocation(line: 241, column: 11, scope: !4256)
!4282 = !DILocation(line: 241, column: 13, scope: !4256)
!4283 = !DILocation(line: 241, column: 22, scope: !4256)
!4284 = !DILocation(line: 241, column: 31, scope: !4256)
!4285 = !DILocation(line: 241, column: 46, scope: !4256)
!4286 = !DILocation(line: 241, column: 54, scope: !4256)
!4287 = !DILocation(line: 241, column: 56, scope: !4256)
!4288 = !DILocation(line: 241, column: 65, scope: !4256)
!4289 = !DILocation(line: 241, column: 74, scope: !4256)
!4290 = !DILocation(line: 241, column: 43, scope: !4256)
!4291 = !DILocation(line: 242, column: 3, scope: !4256)
!4292 = !DILocation(line: 242, column: 6, scope: !4256)
!4293 = !DILocation(line: 242, column: 11, scope: !4256)
!4294 = !DILocation(line: 242, column: 13, scope: !4256)
!4295 = !DILocation(line: 242, column: 22, scope: !4256)
!4296 = !DILocation(line: 242, column: 31, scope: !4256)
!4297 = !DILocation(line: 242, column: 45, scope: !4256)
!4298 = !DILocation(line: 242, column: 53, scope: !4256)
!4299 = !DILocation(line: 242, column: 55, scope: !4256)
!4300 = !DILocation(line: 242, column: 64, scope: !4256)
!4301 = !DILocation(line: 242, column: 73, scope: !4256)
!4302 = !DILocation(line: 242, column: 42, scope: !4256)
!4303 = !DILocation(line: 239, column: 7, scope: !4205)
!4304 = !DILocation(line: 243, column: 4, scope: !4256)
!4305 = !DILocation(line: 244, column: 3, scope: !4205)
!4306 = !DILocation(line: 247, column: 3, scope: !4205)
!4307 = !DILocation(line: 249, column: 2, scope: !4205)
!4308 = !DILocation(line: 251, column: 2, scope: !4193)
!4309 = !DILocation(line: 252, column: 1, scope: !4193)
!4310 = distinct !DISubprogram(name: "make_envelope_modifier", scope: !1, file: !1, line: 86, type: !4311, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!102, !103, !3813, !102, !260, !188, !260, !188}
!4313 = !DILocalVariable(name: "iforce", arg: 1, scope: !4310, file: !1, line: 86, type: !103)
!4314 = !DILocation(line: 86, column: 50, scope: !4310)
!4315 = !DILocalVariable(name: "mod_chunk", arg: 2, scope: !4310, file: !1, line: 87, type: !3813)
!4316 = !DILocation(line: 87, column: 19, scope: !4310)
!4317 = !DILocalVariable(name: "no_alloc", arg: 3, scope: !4310, file: !1, line: 87, type: !102)
!4318 = !DILocation(line: 87, column: 34, scope: !4310)
!4319 = !DILocalVariable(name: "attack_duration", arg: 4, scope: !4310, file: !1, line: 88, type: !260)
!4320 = !DILocation(line: 88, column: 6, scope: !4310)
!4321 = !DILocalVariable(name: "initial_level", arg: 5, scope: !4310, file: !1, line: 88, type: !188)
!4322 = !DILocation(line: 88, column: 29, scope: !4310)
!4323 = !DILocalVariable(name: "fade_duration", arg: 6, scope: !4310, file: !1, line: 89, type: !260)
!4324 = !DILocation(line: 89, column: 6, scope: !4310)
!4325 = !DILocalVariable(name: "final_level", arg: 7, scope: !4310, file: !1, line: 89, type: !188)
!4326 = !DILocation(line: 89, column: 27, scope: !4310)
!4327 = !DILocalVariable(name: "data", scope: !4310, file: !1, line: 91, type: !4328)
!4328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !1199)
!4329 = !DILocation(line: 91, column: 16, scope: !4310)
!4330 = !DILocation(line: 93, column: 20, scope: !4310)
!4331 = !DILocation(line: 93, column: 18, scope: !4310)
!4332 = !DILocation(line: 94, column: 18, scope: !4310)
!4333 = !DILocation(line: 94, column: 16, scope: !4310)
!4334 = !DILocation(line: 96, column: 7, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4310, file: !1, line: 96, column: 6)
!4336 = !DILocation(line: 96, column: 6, scope: !4310)
!4337 = !DILocation(line: 97, column: 15, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4335, file: !1, line: 96, column: 17)
!4339 = !DILocation(line: 97, column: 23, scope: !4338)
!4340 = !DILocation(line: 97, column: 3, scope: !4338)
!4341 = !DILocation(line: 98, column: 27, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4338, file: !1, line: 98, column: 7)
!4343 = !DILocation(line: 98, column: 35, scope: !4342)
!4344 = !DILocation(line: 98, column: 51, scope: !4342)
!4345 = !DILocation(line: 99, column: 4, scope: !4342)
!4346 = !DILocation(line: 99, column: 12, scope: !4342)
!4347 = !DILocation(line: 99, column: 26, scope: !4342)
!4348 = !DILocation(line: 99, column: 33, scope: !4342)
!4349 = !DILocation(line: 99, column: 41, scope: !4342)
!4350 = !DILocation(line: 99, column: 55, scope: !4342)
!4351 = !DILocation(line: 98, column: 7, scope: !4342)
!4352 = !DILocation(line: 98, column: 7, scope: !4338)
!4353 = !DILocation(line: 101, column: 18, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4342, file: !1, line: 100, column: 17)
!4355 = !DILocation(line: 101, column: 26, scope: !4354)
!4356 = !DILocation(line: 101, column: 4, scope: !4354)
!4357 = !DILocation(line: 102, column: 4, scope: !4354)
!4358 = !DILocation(line: 104, column: 17, scope: !4338)
!4359 = !DILocation(line: 104, column: 25, scope: !4338)
!4360 = !DILocation(line: 104, column: 3, scope: !4338)
!4361 = !DILocation(line: 105, column: 2, scope: !4338)
!4362 = !DILocation(line: 107, column: 12, scope: !4310)
!4363 = !DILocation(line: 107, column: 2, scope: !4310)
!4364 = !DILocation(line: 107, column: 10, scope: !4310)
!4365 = !DILocation(line: 108, column: 12, scope: !4310)
!4366 = !DILocation(line: 108, column: 2, scope: !4310)
!4367 = !DILocation(line: 108, column: 10, scope: !4310)
!4368 = !DILocation(line: 110, column: 12, scope: !4310)
!4369 = !DILocation(line: 110, column: 2, scope: !4310)
!4370 = !DILocation(line: 110, column: 10, scope: !4310)
!4371 = !DILocation(line: 111, column: 12, scope: !4310)
!4372 = !DILocation(line: 111, column: 2, scope: !4310)
!4373 = !DILocation(line: 111, column: 10, scope: !4310)
!4374 = !DILocation(line: 112, column: 12, scope: !4310)
!4375 = !DILocation(line: 112, column: 2, scope: !4310)
!4376 = !DILocation(line: 112, column: 10, scope: !4310)
!4377 = !DILocation(line: 114, column: 12, scope: !4310)
!4378 = !DILocation(line: 114, column: 2, scope: !4310)
!4379 = !DILocation(line: 114, column: 10, scope: !4310)
!4380 = !DILocation(line: 115, column: 12, scope: !4310)
!4381 = !DILocation(line: 115, column: 2, scope: !4310)
!4382 = !DILocation(line: 115, column: 10, scope: !4310)
!4383 = !DILocation(line: 116, column: 12, scope: !4310)
!4384 = !DILocation(line: 116, column: 2, scope: !4310)
!4385 = !DILocation(line: 116, column: 10, scope: !4310)
!4386 = !DILocation(line: 118, column: 21, scope: !4310)
!4387 = !DILocation(line: 118, column: 46, scope: !4310)
!4388 = !DILocation(line: 118, column: 2, scope: !4310)
!4389 = !DILocation(line: 120, column: 2, scope: !4310)
!4390 = !DILocation(line: 121, column: 1, scope: !4310)
!4391 = distinct !DISubprogram(name: "need_core", scope: !1, file: !1, line: 276, type: !4392, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!102, !183, !183}
!4394 = !DILocalVariable(name: "old", arg: 1, scope: !4391, file: !1, line: 276, type: !183)
!4395 = !DILocation(line: 276, column: 40, scope: !4391)
!4396 = !DILocalVariable(name: "new", arg: 2, scope: !4391, file: !1, line: 276, type: !183)
!4397 = !DILocation(line: 276, column: 63, scope: !4391)
!4398 = !DILocation(line: 278, column: 6, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4391, file: !1, line: 278, column: 6)
!4400 = !DILocation(line: 278, column: 11, scope: !4399)
!4401 = !DILocation(line: 278, column: 24, scope: !4399)
!4402 = !DILocation(line: 278, column: 29, scope: !4399)
!4403 = !DILocation(line: 278, column: 21, scope: !4399)
!4404 = !DILocation(line: 279, column: 3, scope: !4399)
!4405 = !DILocation(line: 279, column: 6, scope: !4399)
!4406 = !DILocation(line: 279, column: 11, scope: !4399)
!4407 = !DILocation(line: 279, column: 19, scope: !4399)
!4408 = !DILocation(line: 279, column: 29, scope: !4399)
!4409 = !DILocation(line: 279, column: 34, scope: !4399)
!4410 = !DILocation(line: 279, column: 42, scope: !4399)
!4411 = !DILocation(line: 279, column: 26, scope: !4399)
!4412 = !DILocation(line: 280, column: 3, scope: !4399)
!4413 = !DILocation(line: 280, column: 6, scope: !4399)
!4414 = !DILocation(line: 280, column: 11, scope: !4399)
!4415 = !DILocation(line: 280, column: 19, scope: !4399)
!4416 = !DILocation(line: 280, column: 31, scope: !4399)
!4417 = !DILocation(line: 280, column: 36, scope: !4399)
!4418 = !DILocation(line: 280, column: 44, scope: !4399)
!4419 = !DILocation(line: 280, column: 28, scope: !4399)
!4420 = !DILocation(line: 281, column: 3, scope: !4399)
!4421 = !DILocation(line: 281, column: 6, scope: !4399)
!4422 = !DILocation(line: 281, column: 11, scope: !4399)
!4423 = !DILocation(line: 281, column: 18, scope: !4399)
!4424 = !DILocation(line: 281, column: 28, scope: !4399)
!4425 = !DILocation(line: 281, column: 33, scope: !4399)
!4426 = !DILocation(line: 281, column: 40, scope: !4399)
!4427 = !DILocation(line: 281, column: 25, scope: !4399)
!4428 = !DILocation(line: 282, column: 3, scope: !4399)
!4429 = !DILocation(line: 282, column: 6, scope: !4399)
!4430 = !DILocation(line: 282, column: 11, scope: !4399)
!4431 = !DILocation(line: 282, column: 18, scope: !4399)
!4432 = !DILocation(line: 282, column: 27, scope: !4399)
!4433 = !DILocation(line: 282, column: 32, scope: !4399)
!4434 = !DILocation(line: 282, column: 39, scope: !4399)
!4435 = !DILocation(line: 282, column: 24, scope: !4399)
!4436 = !DILocation(line: 278, column: 6, scope: !4391)
!4437 = !DILocation(line: 283, column: 3, scope: !4399)
!4438 = !DILocation(line: 285, column: 2, scope: !4391)
!4439 = !DILocation(line: 286, column: 1, scope: !4391)
!4440 = distinct !DISubprogram(name: "make_core", scope: !1, file: !1, line: 290, type: !4441, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!102, !103, !260, !260, !260, !1221, !1221, !260, !260, !260, !260, !260}
!4443 = !DILocalVariable(name: "iforce", arg: 1, scope: !4440, file: !1, line: 290, type: !103)
!4444 = !DILocation(line: 290, column: 37, scope: !4440)
!4445 = !DILocalVariable(name: "id", arg: 2, scope: !4440, file: !1, line: 290, type: !260)
!4446 = !DILocation(line: 290, column: 49, scope: !4440)
!4447 = !DILocalVariable(name: "mod_id1", arg: 3, scope: !4440, file: !1, line: 290, type: !260)
!4448 = !DILocation(line: 290, column: 57, scope: !4440)
!4449 = !DILocalVariable(name: "mod_id2", arg: 4, scope: !4440, file: !1, line: 290, type: !260)
!4450 = !DILocation(line: 290, column: 70, scope: !4440)
!4451 = !DILocalVariable(name: "effect_type", arg: 5, scope: !4440, file: !1, line: 291, type: !1221)
!4452 = !DILocation(line: 291, column: 5, scope: !4440)
!4453 = !DILocalVariable(name: "axes", arg: 6, scope: !4440, file: !1, line: 291, type: !1221)
!4454 = !DILocation(line: 291, column: 21, scope: !4440)
!4455 = !DILocalVariable(name: "duration", arg: 7, scope: !4440, file: !1, line: 291, type: !260)
!4456 = !DILocation(line: 291, column: 31, scope: !4440)
!4457 = !DILocalVariable(name: "delay", arg: 8, scope: !4440, file: !1, line: 291, type: !260)
!4458 = !DILocation(line: 291, column: 45, scope: !4440)
!4459 = !DILocalVariable(name: "button", arg: 9, scope: !4440, file: !1, line: 291, type: !260)
!4460 = !DILocation(line: 291, column: 56, scope: !4440)
!4461 = !DILocalVariable(name: "interval", arg: 10, scope: !4440, file: !1, line: 292, type: !260)
!4462 = !DILocation(line: 292, column: 6, scope: !4440)
!4463 = !DILocalVariable(name: "direction", arg: 11, scope: !4440, file: !1, line: 292, type: !260)
!4464 = !DILocation(line: 292, column: 20, scope: !4440)
!4465 = !DILocalVariable(name: "data", scope: !4440, file: !1, line: 294, type: !4466)
!4466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 112, elements: !4467)
!4467 = !{!4468}
!4468 = !DISubrange(count: 14)
!4469 = !DILocation(line: 294, column: 16, scope: !4440)
!4470 = !DILocation(line: 296, column: 13, scope: !4440)
!4471 = !DILocation(line: 296, column: 11, scope: !4440)
!4472 = !DILocation(line: 297, column: 13, scope: !4440)
!4473 = !DILocation(line: 297, column: 11, scope: !4440)
!4474 = !DILocation(line: 298, column: 13, scope: !4440)
!4475 = !DILocation(line: 298, column: 11, scope: !4440)
!4476 = !DILocation(line: 300, column: 13, scope: !4440)
!4477 = !DILocation(line: 300, column: 2, scope: !4440)
!4478 = !DILocation(line: 300, column: 11, scope: !4440)
!4479 = !DILocation(line: 301, column: 13, scope: !4440)
!4480 = !DILocation(line: 301, column: 2, scope: !4440)
!4481 = !DILocation(line: 301, column: 11, scope: !4440)
!4482 = !DILocation(line: 302, column: 13, scope: !4440)
!4483 = !DILocation(line: 302, column: 36, scope: !4440)
!4484 = !DILocation(line: 302, column: 44, scope: !4440)
!4485 = !DILocation(line: 302, column: 24, scope: !4440)
!4486 = !DILocation(line: 302, column: 22, scope: !4440)
!4487 = !DILocation(line: 302, column: 2, scope: !4440)
!4488 = !DILocation(line: 302, column: 11, scope: !4440)
!4489 = !DILocation(line: 304, column: 13, scope: !4440)
!4490 = !DILocation(line: 304, column: 2, scope: !4440)
!4491 = !DILocation(line: 304, column: 11, scope: !4440)
!4492 = !DILocation(line: 305, column: 13, scope: !4440)
!4493 = !DILocation(line: 305, column: 2, scope: !4440)
!4494 = !DILocation(line: 305, column: 11, scope: !4440)
!4495 = !DILocation(line: 307, column: 13, scope: !4440)
!4496 = !DILocation(line: 307, column: 2, scope: !4440)
!4497 = !DILocation(line: 307, column: 11, scope: !4440)
!4498 = !DILocation(line: 309, column: 13, scope: !4440)
!4499 = !DILocation(line: 309, column: 2, scope: !4440)
!4500 = !DILocation(line: 309, column: 11, scope: !4440)
!4501 = !DILocation(line: 310, column: 13, scope: !4440)
!4502 = !DILocation(line: 310, column: 2, scope: !4440)
!4503 = !DILocation(line: 310, column: 11, scope: !4440)
!4504 = !DILocation(line: 312, column: 13, scope: !4440)
!4505 = !DILocation(line: 312, column: 2, scope: !4440)
!4506 = !DILocation(line: 312, column: 11, scope: !4440)
!4507 = !DILocation(line: 313, column: 13, scope: !4440)
!4508 = !DILocation(line: 313, column: 2, scope: !4440)
!4509 = !DILocation(line: 313, column: 11, scope: !4440)
!4510 = !DILocation(line: 314, column: 13, scope: !4440)
!4511 = !DILocation(line: 314, column: 2, scope: !4440)
!4512 = !DILocation(line: 314, column: 11, scope: !4440)
!4513 = !DILocation(line: 315, column: 13, scope: !4440)
!4514 = !DILocation(line: 315, column: 2, scope: !4440)
!4515 = !DILocation(line: 315, column: 11, scope: !4440)
!4516 = !DILocation(line: 317, column: 13, scope: !4440)
!4517 = !DILocation(line: 317, column: 2, scope: !4440)
!4518 = !DILocation(line: 317, column: 11, scope: !4440)
!4519 = !DILocation(line: 318, column: 13, scope: !4440)
!4520 = !DILocation(line: 318, column: 2, scope: !4440)
!4521 = !DILocation(line: 318, column: 11, scope: !4440)
!4522 = !DILocation(line: 323, column: 21, scope: !4440)
!4523 = !DILocation(line: 323, column: 44, scope: !4440)
!4524 = !DILocation(line: 323, column: 2, scope: !4440)
!4525 = !DILocation(line: 326, column: 36, scope: !4526)
!4526 = distinct !DILexicalBlock(scope: !4440, file: !1, line: 326, column: 6)
!4527 = !DILocation(line: 326, column: 44, scope: !4526)
!4528 = !DILocation(line: 326, column: 57, scope: !4526)
!4529 = !DILocation(line: 326, column: 61, scope: !4526)
!4530 = !DILocation(line: 326, column: 6, scope: !4526)
!4531 = !DILocation(line: 326, column: 6, scope: !4440)
!4532 = !DILocation(line: 328, column: 27, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4526, file: !1, line: 326, column: 69)
!4534 = !DILocation(line: 328, column: 35, scope: !4533)
!4535 = !DILocation(line: 328, column: 3, scope: !4533)
!4536 = !DILocation(line: 329, column: 2, scope: !4533)
!4537 = !DILocation(line: 331, column: 2, scope: !4440)
!4538 = distinct !DISubprogram(name: "iforce_upload_constant", scope: !1, file: !1, line: 409, type: !100, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !299)
!4539 = !DILocalVariable(name: "iforce", arg: 1, scope: !4538, file: !1, line: 409, type: !103)
!4540 = !DILocation(line: 409, column: 43, scope: !4538)
!4541 = !DILocalVariable(name: "effect", arg: 2, scope: !4538, file: !1, line: 409, type: !183)
!4542 = !DILocation(line: 409, column: 69, scope: !4538)
!4543 = !DILocalVariable(name: "old", arg: 3, scope: !4538, file: !1, line: 409, type: !183)
!4544 = !DILocation(line: 409, column: 95, scope: !4538)
!4545 = !DILocalVariable(name: "core_id", scope: !4538, file: !1, line: 411, type: !102)
!4546 = !DILocation(line: 411, column: 6, scope: !4538)
!4547 = !DILocation(line: 411, column: 16, scope: !4538)
!4548 = !DILocation(line: 411, column: 24, scope: !4538)
!4549 = !DILocalVariable(name: "core_effect", scope: !4538, file: !1, line: 412, type: !3837)
!4550 = !DILocation(line: 412, column: 29, scope: !4538)
!4551 = !DILocation(line: 412, column: 43, scope: !4538)
!4552 = !DILocation(line: 412, column: 51, scope: !4538)
!4553 = !DILocation(line: 412, column: 66, scope: !4538)
!4554 = !DILocation(line: 412, column: 64, scope: !4538)
!4555 = !DILocalVariable(name: "mod1_chunk", scope: !4538, file: !1, line: 413, type: !3813)
!4556 = !DILocation(line: 413, column: 19, scope: !4538)
!4557 = !DILocation(line: 413, column: 34, scope: !4538)
!4558 = !DILocation(line: 413, column: 42, scope: !4538)
!4559 = !DILocation(line: 413, column: 55, scope: !4538)
!4560 = !DILocation(line: 413, column: 64, scope: !4538)
!4561 = !DILocalVariable(name: "mod2_chunk", scope: !4538, file: !1, line: 414, type: !3813)
!4562 = !DILocation(line: 414, column: 19, scope: !4538)
!4563 = !DILocation(line: 414, column: 34, scope: !4538)
!4564 = !DILocation(line: 414, column: 42, scope: !4538)
!4565 = !DILocation(line: 414, column: 55, scope: !4538)
!4566 = !DILocation(line: 414, column: 64, scope: !4538)
!4567 = !DILocalVariable(name: "param1_err", scope: !4538, file: !1, line: 415, type: !102)
!4568 = !DILocation(line: 415, column: 6, scope: !4538)
!4569 = !DILocalVariable(name: "param2_err", scope: !4538, file: !1, line: 416, type: !102)
!4570 = !DILocation(line: 416, column: 6, scope: !4538)
!4571 = !DILocalVariable(name: "core_err", scope: !4538, file: !1, line: 417, type: !102)
!4572 = !DILocation(line: 417, column: 6, scope: !4538)
!4573 = !DILocation(line: 419, column: 7, scope: !4574)
!4574 = distinct !DILexicalBlock(scope: !4538, file: !1, line: 419, column: 6)
!4575 = !DILocation(line: 419, column: 11, scope: !4574)
!4576 = !DILocation(line: 419, column: 38, scope: !4574)
!4577 = !DILocation(line: 419, column: 46, scope: !4574)
!4578 = !DILocation(line: 419, column: 51, scope: !4574)
!4579 = !DILocation(line: 419, column: 14, scope: !4574)
!4580 = !DILocation(line: 419, column: 6, scope: !4538)
!4581 = !DILocation(line: 420, column: 40, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4574, file: !1, line: 419, column: 60)
!4583 = !DILocation(line: 420, column: 48, scope: !4582)
!4584 = !DILocation(line: 421, column: 4, scope: !4582)
!4585 = !DILocation(line: 421, column: 8, scope: !4582)
!4586 = !DILocation(line: 422, column: 4, scope: !4582)
!4587 = !DILocation(line: 422, column: 12, scope: !4582)
!4588 = !DILocation(line: 422, column: 14, scope: !4582)
!4589 = !DILocation(line: 422, column: 23, scope: !4582)
!4590 = !DILocation(line: 420, column: 16, scope: !4582)
!4591 = !DILocation(line: 420, column: 14, scope: !4582)
!4592 = !DILocation(line: 423, column: 7, scope: !4593)
!4593 = distinct !DILexicalBlock(scope: !4582, file: !1, line: 423, column: 7)
!4594 = !DILocation(line: 423, column: 7, scope: !4582)
!4595 = !DILocation(line: 424, column: 11, scope: !4593)
!4596 = !DILocation(line: 424, column: 4, scope: !4593)
!4597 = !DILocation(line: 425, column: 28, scope: !4582)
!4598 = !DILocation(line: 425, column: 41, scope: !4582)
!4599 = !DILocation(line: 425, column: 3, scope: !4582)
!4600 = !DILocation(line: 426, column: 2, scope: !4582)
!4601 = !DILocation(line: 428, column: 7, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4538, file: !1, line: 428, column: 6)
!4603 = !DILocation(line: 428, column: 11, scope: !4602)
!4604 = !DILocation(line: 428, column: 37, scope: !4602)
!4605 = !DILocation(line: 428, column: 45, scope: !4602)
!4606 = !DILocation(line: 428, column: 50, scope: !4602)
!4607 = !DILocation(line: 428, column: 14, scope: !4602)
!4608 = !DILocation(line: 428, column: 6, scope: !4538)
!4609 = !DILocation(line: 429, column: 39, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4602, file: !1, line: 428, column: 59)
!4611 = !DILocation(line: 429, column: 47, scope: !4610)
!4612 = !DILocation(line: 430, column: 4, scope: !4610)
!4613 = !DILocation(line: 430, column: 8, scope: !4610)
!4614 = !DILocation(line: 431, column: 4, scope: !4610)
!4615 = !DILocation(line: 431, column: 12, scope: !4610)
!4616 = !DILocation(line: 431, column: 14, scope: !4610)
!4617 = !DILocation(line: 431, column: 23, scope: !4610)
!4618 = !DILocation(line: 431, column: 32, scope: !4610)
!4619 = !DILocation(line: 432, column: 4, scope: !4610)
!4620 = !DILocation(line: 432, column: 12, scope: !4610)
!4621 = !DILocation(line: 432, column: 14, scope: !4610)
!4622 = !DILocation(line: 432, column: 23, scope: !4610)
!4623 = !DILocation(line: 432, column: 32, scope: !4610)
!4624 = !DILocation(line: 433, column: 4, scope: !4610)
!4625 = !DILocation(line: 433, column: 12, scope: !4610)
!4626 = !DILocation(line: 433, column: 14, scope: !4610)
!4627 = !DILocation(line: 433, column: 23, scope: !4610)
!4628 = !DILocation(line: 433, column: 32, scope: !4610)
!4629 = !DILocation(line: 434, column: 4, scope: !4610)
!4630 = !DILocation(line: 434, column: 12, scope: !4610)
!4631 = !DILocation(line: 434, column: 14, scope: !4610)
!4632 = !DILocation(line: 434, column: 23, scope: !4610)
!4633 = !DILocation(line: 434, column: 32, scope: !4610)
!4634 = !DILocation(line: 429, column: 16, scope: !4610)
!4635 = !DILocation(line: 429, column: 14, scope: !4610)
!4636 = !DILocation(line: 435, column: 7, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4610, file: !1, line: 435, column: 7)
!4638 = !DILocation(line: 435, column: 7, scope: !4610)
!4639 = !DILocation(line: 436, column: 11, scope: !4637)
!4640 = !DILocation(line: 436, column: 4, scope: !4637)
!4641 = !DILocation(line: 437, column: 28, scope: !4610)
!4642 = !DILocation(line: 437, column: 41, scope: !4610)
!4643 = !DILocation(line: 437, column: 3, scope: !4610)
!4644 = !DILocation(line: 438, column: 2, scope: !4610)
!4645 = !DILocation(line: 440, column: 7, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4538, file: !1, line: 440, column: 6)
!4647 = !DILocation(line: 440, column: 11, scope: !4646)
!4648 = !DILocation(line: 440, column: 24, scope: !4646)
!4649 = !DILocation(line: 440, column: 29, scope: !4646)
!4650 = !DILocation(line: 440, column: 14, scope: !4646)
!4651 = !DILocation(line: 440, column: 6, scope: !4538)
!4652 = !DILocation(line: 441, column: 24, scope: !4653)
!4653 = distinct !DILexicalBlock(scope: !4646, file: !1, line: 440, column: 38)
!4654 = !DILocation(line: 441, column: 32, scope: !4653)
!4655 = !DILocation(line: 441, column: 40, scope: !4653)
!4656 = !DILocation(line: 442, column: 4, scope: !4653)
!4657 = !DILocation(line: 442, column: 16, scope: !4653)
!4658 = !DILocation(line: 443, column: 4, scope: !4653)
!4659 = !DILocation(line: 443, column: 16, scope: !4653)
!4660 = !DILocation(line: 446, column: 4, scope: !4653)
!4661 = !DILocation(line: 446, column: 12, scope: !4653)
!4662 = !DILocation(line: 446, column: 19, scope: !4653)
!4663 = !DILocation(line: 447, column: 4, scope: !4653)
!4664 = !DILocation(line: 447, column: 12, scope: !4653)
!4665 = !DILocation(line: 447, column: 19, scope: !4653)
!4666 = !DILocation(line: 448, column: 4, scope: !4653)
!4667 = !DILocation(line: 448, column: 12, scope: !4653)
!4668 = !DILocation(line: 448, column: 20, scope: !4653)
!4669 = !DILocation(line: 449, column: 4, scope: !4653)
!4670 = !DILocation(line: 449, column: 12, scope: !4653)
!4671 = !DILocation(line: 449, column: 20, scope: !4653)
!4672 = !DILocation(line: 450, column: 4, scope: !4653)
!4673 = !DILocation(line: 450, column: 12, scope: !4653)
!4674 = !DILocation(line: 441, column: 14, scope: !4653)
!4675 = !DILocation(line: 441, column: 12, scope: !4653)
!4676 = !DILocation(line: 451, column: 2, scope: !4653)
!4677 = !DILocation(line: 459, column: 9, scope: !4538)
!4678 = !DILocation(line: 459, column: 18, scope: !4538)
!4679 = !DILocation(line: 459, column: 24, scope: !4538)
!4680 = !DILocation(line: 459, column: 36, scope: !4538)
!4681 = !DILocation(line: 459, column: 47, scope: !4538)
!4682 = !DILocation(line: 459, column: 50, scope: !4538)
!4683 = !DILocation(line: 0, scope: !4538)
!4684 = !DILocation(line: 459, column: 2, scope: !4538)
!4685 = !DILocation(line: 460, column: 1, scope: !4538)
!4686 = distinct !DISubprogram(name: "need_magnitude_modifier", scope: !1, file: !1, line: 209, type: !100, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!4687 = !DILocalVariable(name: "iforce", arg: 1, scope: !4686, file: !1, line: 209, type: !103)
!4688 = !DILocation(line: 209, column: 51, scope: !4686)
!4689 = !DILocalVariable(name: "old", arg: 2, scope: !4686, file: !1, line: 210, type: !183)
!4690 = !DILocation(line: 210, column: 26, scope: !4686)
!4691 = !DILocalVariable(name: "effect", arg: 3, scope: !4686, file: !1, line: 211, type: !183)
!4692 = !DILocation(line: 211, column: 26, scope: !4686)
!4693 = !DILocation(line: 213, column: 6, scope: !4694)
!4694 = distinct !DILexicalBlock(scope: !4686, file: !1, line: 213, column: 6)
!4695 = !DILocation(line: 213, column: 14, scope: !4694)
!4696 = !DILocation(line: 213, column: 19, scope: !4694)
!4697 = !DILocation(line: 213, column: 6, scope: !4686)
!4698 = !DILocation(line: 214, column: 3, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4694, file: !1, line: 213, column: 35)
!4700 = !DILocation(line: 216, column: 3, scope: !4699)
!4701 = !DILocation(line: 219, column: 9, scope: !4686)
!4702 = !DILocation(line: 219, column: 14, scope: !4686)
!4703 = !DILocation(line: 219, column: 16, scope: !4686)
!4704 = !DILocation(line: 219, column: 25, scope: !4686)
!4705 = !DILocation(line: 219, column: 34, scope: !4686)
!4706 = !DILocation(line: 219, column: 42, scope: !4686)
!4707 = !DILocation(line: 219, column: 44, scope: !4686)
!4708 = !DILocation(line: 219, column: 53, scope: !4686)
!4709 = !DILocation(line: 219, column: 31, scope: !4686)
!4710 = !DILocation(line: 219, column: 2, scope: !4686)
!4711 = !DILocation(line: 220, column: 1, scope: !4686)
!4712 = distinct !DISubprogram(name: "make_magnitude_modifier", scope: !1, file: !1, line: 18, type: !4713, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!4713 = !DISubroutineType(types: !4714)
!4714 = !{!102, !103, !3813, !102, !188}
!4715 = !DILocalVariable(name: "iforce", arg: 1, scope: !4712, file: !1, line: 18, type: !103)
!4716 = !DILocation(line: 18, column: 51, scope: !4712)
!4717 = !DILocalVariable(name: "mod_chunk", arg: 2, scope: !4712, file: !1, line: 19, type: !3813)
!4718 = !DILocation(line: 19, column: 19, scope: !4712)
!4719 = !DILocalVariable(name: "no_alloc", arg: 3, scope: !4712, file: !1, line: 19, type: !102)
!4720 = !DILocation(line: 19, column: 34, scope: !4712)
!4721 = !DILocalVariable(name: "level", arg: 4, scope: !4712, file: !1, line: 19, type: !188)
!4722 = !DILocation(line: 19, column: 50, scope: !4712)
!4723 = !DILocalVariable(name: "data", scope: !4712, file: !1, line: 21, type: !4724)
!4724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 24, elements: !615)
!4725 = !DILocation(line: 21, column: 16, scope: !4712)
!4726 = !DILocation(line: 23, column: 7, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4712, file: !1, line: 23, column: 6)
!4728 = !DILocation(line: 23, column: 6, scope: !4712)
!4729 = !DILocation(line: 24, column: 15, scope: !4730)
!4730 = distinct !DILexicalBlock(scope: !4727, file: !1, line: 23, column: 17)
!4731 = !DILocation(line: 24, column: 23, scope: !4730)
!4732 = !DILocation(line: 24, column: 3, scope: !4730)
!4733 = !DILocation(line: 25, column: 27, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4730, file: !1, line: 25, column: 7)
!4735 = !DILocation(line: 25, column: 35, scope: !4734)
!4736 = !DILocation(line: 25, column: 51, scope: !4734)
!4737 = !DILocation(line: 26, column: 4, scope: !4734)
!4738 = !DILocation(line: 26, column: 12, scope: !4734)
!4739 = !DILocation(line: 26, column: 26, scope: !4734)
!4740 = !DILocation(line: 26, column: 33, scope: !4734)
!4741 = !DILocation(line: 26, column: 41, scope: !4734)
!4742 = !DILocation(line: 26, column: 55, scope: !4734)
!4743 = !DILocation(line: 25, column: 7, scope: !4734)
!4744 = !DILocation(line: 25, column: 7, scope: !4730)
!4745 = !DILocation(line: 28, column: 18, scope: !4746)
!4746 = distinct !DILexicalBlock(scope: !4734, file: !1, line: 27, column: 17)
!4747 = !DILocation(line: 28, column: 26, scope: !4746)
!4748 = !DILocation(line: 28, column: 4, scope: !4746)
!4749 = !DILocation(line: 29, column: 4, scope: !4746)
!4750 = !DILocation(line: 31, column: 17, scope: !4730)
!4751 = !DILocation(line: 31, column: 25, scope: !4730)
!4752 = !DILocation(line: 31, column: 3, scope: !4730)
!4753 = !DILocation(line: 32, column: 2, scope: !4730)
!4754 = !DILocation(line: 34, column: 12, scope: !4712)
!4755 = !DILocation(line: 34, column: 2, scope: !4712)
!4756 = !DILocation(line: 34, column: 10, scope: !4712)
!4757 = !DILocation(line: 35, column: 12, scope: !4712)
!4758 = !DILocation(line: 35, column: 2, scope: !4712)
!4759 = !DILocation(line: 35, column: 10, scope: !4712)
!4760 = !DILocation(line: 36, column: 12, scope: !4712)
!4761 = !DILocation(line: 36, column: 2, scope: !4712)
!4762 = !DILocation(line: 36, column: 10, scope: !4712)
!4763 = !DILocation(line: 38, column: 21, scope: !4712)
!4764 = !DILocation(line: 38, column: 47, scope: !4712)
!4765 = !DILocation(line: 38, column: 2, scope: !4712)
!4766 = !DILocation(line: 40, column: 21, scope: !4712)
!4767 = !DILocation(line: 40, column: 60, scope: !4712)
!4768 = !DILocation(line: 40, column: 2, scope: !4712)
!4769 = !DILocation(line: 41, column: 2, scope: !4712)
!4770 = !DILocation(line: 42, column: 1, scope: !4712)
!4771 = distinct !DISubprogram(name: "iforce_upload_condition", scope: !1, file: !1, line: 465, type: !100, scopeLine: 466, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !299)
!4772 = !DILocalVariable(name: "iforce", arg: 1, scope: !4771, file: !1, line: 465, type: !103)
!4773 = !DILocation(line: 465, column: 44, scope: !4771)
!4774 = !DILocalVariable(name: "effect", arg: 2, scope: !4771, file: !1, line: 465, type: !183)
!4775 = !DILocation(line: 465, column: 70, scope: !4771)
!4776 = !DILocalVariable(name: "old", arg: 3, scope: !4771, file: !1, line: 465, type: !183)
!4777 = !DILocation(line: 465, column: 96, scope: !4771)
!4778 = !DILocalVariable(name: "core_id", scope: !4771, file: !1, line: 467, type: !102)
!4779 = !DILocation(line: 467, column: 6, scope: !4771)
!4780 = !DILocation(line: 467, column: 16, scope: !4771)
!4781 = !DILocation(line: 467, column: 24, scope: !4771)
!4782 = !DILocalVariable(name: "core_effect", scope: !4771, file: !1, line: 468, type: !3837)
!4783 = !DILocation(line: 468, column: 29, scope: !4771)
!4784 = !DILocation(line: 468, column: 43, scope: !4771)
!4785 = !DILocation(line: 468, column: 51, scope: !4771)
!4786 = !DILocation(line: 468, column: 66, scope: !4771)
!4787 = !DILocation(line: 468, column: 64, scope: !4771)
!4788 = !DILocalVariable(name: "mod1_chunk", scope: !4771, file: !1, line: 469, type: !3813)
!4789 = !DILocation(line: 469, column: 19, scope: !4771)
!4790 = !DILocation(line: 469, column: 34, scope: !4771)
!4791 = !DILocation(line: 469, column: 47, scope: !4771)
!4792 = !DILocalVariable(name: "mod2_chunk", scope: !4771, file: !1, line: 470, type: !3813)
!4793 = !DILocation(line: 470, column: 19, scope: !4771)
!4794 = !DILocation(line: 470, column: 34, scope: !4771)
!4795 = !DILocation(line: 470, column: 47, scope: !4771)
!4796 = !DILocalVariable(name: "type", scope: !4771, file: !1, line: 471, type: !1221)
!4797 = !DILocation(line: 471, column: 5, scope: !4771)
!4798 = !DILocalVariable(name: "param_err", scope: !4771, file: !1, line: 472, type: !102)
!4799 = !DILocation(line: 472, column: 6, scope: !4771)
!4800 = !DILocalVariable(name: "core_err", scope: !4771, file: !1, line: 473, type: !102)
!4801 = !DILocation(line: 473, column: 6, scope: !4771)
!4802 = !DILocation(line: 475, column: 10, scope: !4771)
!4803 = !DILocation(line: 475, column: 18, scope: !4771)
!4804 = !DILocation(line: 475, column: 2, scope: !4771)
!4805 = !DILocation(line: 476, column: 23, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4771, file: !1, line: 475, column: 24)
!4807 = !DILocation(line: 476, column: 31, scope: !4806)
!4808 = !DILocation(line: 477, column: 23, scope: !4806)
!4809 = !DILocation(line: 477, column: 31, scope: !4806)
!4810 = !DILocation(line: 478, column: 11, scope: !4806)
!4811 = !DILocation(line: 481, column: 7, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4771, file: !1, line: 481, column: 6)
!4813 = !DILocation(line: 481, column: 11, scope: !4812)
!4814 = !DILocation(line: 481, column: 38, scope: !4812)
!4815 = !DILocation(line: 481, column: 46, scope: !4812)
!4816 = !DILocation(line: 481, column: 51, scope: !4812)
!4817 = !DILocation(line: 481, column: 14, scope: !4812)
!4818 = !DILocation(line: 481, column: 6, scope: !4771)
!4819 = !DILocation(line: 482, column: 39, scope: !4820)
!4820 = distinct !DILexicalBlock(scope: !4812, file: !1, line: 481, column: 60)
!4821 = !DILocation(line: 482, column: 47, scope: !4820)
!4822 = !DILocation(line: 483, column: 4, scope: !4820)
!4823 = !DILocation(line: 483, column: 8, scope: !4820)
!4824 = !DILocation(line: 484, column: 4, scope: !4820)
!4825 = !DILocation(line: 484, column: 12, scope: !4820)
!4826 = !DILocation(line: 484, column: 14, scope: !4820)
!4827 = !DILocation(line: 484, column: 27, scope: !4820)
!4828 = !DILocation(line: 485, column: 4, scope: !4820)
!4829 = !DILocation(line: 485, column: 12, scope: !4820)
!4830 = !DILocation(line: 485, column: 14, scope: !4820)
!4831 = !DILocation(line: 485, column: 27, scope: !4820)
!4832 = !DILocation(line: 486, column: 4, scope: !4820)
!4833 = !DILocation(line: 486, column: 12, scope: !4820)
!4834 = !DILocation(line: 486, column: 14, scope: !4820)
!4835 = !DILocation(line: 486, column: 27, scope: !4820)
!4836 = !DILocation(line: 487, column: 4, scope: !4820)
!4837 = !DILocation(line: 487, column: 12, scope: !4820)
!4838 = !DILocation(line: 487, column: 14, scope: !4820)
!4839 = !DILocation(line: 487, column: 27, scope: !4820)
!4840 = !DILocation(line: 488, column: 4, scope: !4820)
!4841 = !DILocation(line: 488, column: 12, scope: !4820)
!4842 = !DILocation(line: 488, column: 14, scope: !4820)
!4843 = !DILocation(line: 488, column: 27, scope: !4820)
!4844 = !DILocation(line: 489, column: 4, scope: !4820)
!4845 = !DILocation(line: 489, column: 12, scope: !4820)
!4846 = !DILocation(line: 489, column: 14, scope: !4820)
!4847 = !DILocation(line: 489, column: 27, scope: !4820)
!4848 = !DILocation(line: 482, column: 15, scope: !4820)
!4849 = !DILocation(line: 482, column: 13, scope: !4820)
!4850 = !DILocation(line: 490, column: 7, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4820, file: !1, line: 490, column: 7)
!4852 = !DILocation(line: 490, column: 7, scope: !4820)
!4853 = !DILocation(line: 491, column: 11, scope: !4851)
!4854 = !DILocation(line: 491, column: 4, scope: !4851)
!4855 = !DILocation(line: 492, column: 28, scope: !4820)
!4856 = !DILocation(line: 492, column: 41, scope: !4820)
!4857 = !DILocation(line: 492, column: 3, scope: !4820)
!4858 = !DILocation(line: 494, column: 39, scope: !4820)
!4859 = !DILocation(line: 494, column: 47, scope: !4820)
!4860 = !DILocation(line: 495, column: 4, scope: !4820)
!4861 = !DILocation(line: 495, column: 8, scope: !4820)
!4862 = !DILocation(line: 496, column: 4, scope: !4820)
!4863 = !DILocation(line: 496, column: 12, scope: !4820)
!4864 = !DILocation(line: 496, column: 14, scope: !4820)
!4865 = !DILocation(line: 496, column: 27, scope: !4820)
!4866 = !DILocation(line: 497, column: 4, scope: !4820)
!4867 = !DILocation(line: 497, column: 12, scope: !4820)
!4868 = !DILocation(line: 497, column: 14, scope: !4820)
!4869 = !DILocation(line: 497, column: 27, scope: !4820)
!4870 = !DILocation(line: 498, column: 4, scope: !4820)
!4871 = !DILocation(line: 498, column: 12, scope: !4820)
!4872 = !DILocation(line: 498, column: 14, scope: !4820)
!4873 = !DILocation(line: 498, column: 27, scope: !4820)
!4874 = !DILocation(line: 499, column: 4, scope: !4820)
!4875 = !DILocation(line: 499, column: 12, scope: !4820)
!4876 = !DILocation(line: 499, column: 14, scope: !4820)
!4877 = !DILocation(line: 499, column: 27, scope: !4820)
!4878 = !DILocation(line: 500, column: 4, scope: !4820)
!4879 = !DILocation(line: 500, column: 12, scope: !4820)
!4880 = !DILocation(line: 500, column: 14, scope: !4820)
!4881 = !DILocation(line: 500, column: 27, scope: !4820)
!4882 = !DILocation(line: 501, column: 4, scope: !4820)
!4883 = !DILocation(line: 501, column: 12, scope: !4820)
!4884 = !DILocation(line: 501, column: 14, scope: !4820)
!4885 = !DILocation(line: 501, column: 27, scope: !4820)
!4886 = !DILocation(line: 494, column: 15, scope: !4820)
!4887 = !DILocation(line: 494, column: 13, scope: !4820)
!4888 = !DILocation(line: 502, column: 7, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4820, file: !1, line: 502, column: 7)
!4890 = !DILocation(line: 502, column: 7, scope: !4820)
!4891 = !DILocation(line: 503, column: 11, scope: !4889)
!4892 = !DILocation(line: 503, column: 4, scope: !4889)
!4893 = !DILocation(line: 504, column: 28, scope: !4820)
!4894 = !DILocation(line: 504, column: 41, scope: !4820)
!4895 = !DILocation(line: 504, column: 3, scope: !4820)
!4896 = !DILocation(line: 506, column: 2, scope: !4820)
!4897 = !DILocation(line: 508, column: 7, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4771, file: !1, line: 508, column: 6)
!4899 = !DILocation(line: 508, column: 11, scope: !4898)
!4900 = !DILocation(line: 508, column: 24, scope: !4898)
!4901 = !DILocation(line: 508, column: 29, scope: !4898)
!4902 = !DILocation(line: 508, column: 14, scope: !4898)
!4903 = !DILocation(line: 508, column: 6, scope: !4771)
!4904 = !DILocation(line: 509, column: 24, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4898, file: !1, line: 508, column: 38)
!4906 = !DILocation(line: 509, column: 32, scope: !4905)
!4907 = !DILocation(line: 509, column: 40, scope: !4905)
!4908 = !DILocation(line: 510, column: 4, scope: !4905)
!4909 = !DILocation(line: 510, column: 16, scope: !4905)
!4910 = !DILocation(line: 510, column: 23, scope: !4905)
!4911 = !DILocation(line: 510, column: 35, scope: !4905)
!4912 = !DILocation(line: 511, column: 4, scope: !4905)
!4913 = !DILocation(line: 512, column: 4, scope: !4905)
!4914 = !DILocation(line: 512, column: 12, scope: !4905)
!4915 = !DILocation(line: 512, column: 19, scope: !4905)
!4916 = !DILocation(line: 512, column: 27, scope: !4905)
!4917 = !DILocation(line: 512, column: 35, scope: !4905)
!4918 = !DILocation(line: 512, column: 42, scope: !4905)
!4919 = !DILocation(line: 513, column: 4, scope: !4905)
!4920 = !DILocation(line: 513, column: 12, scope: !4905)
!4921 = !DILocation(line: 513, column: 20, scope: !4905)
!4922 = !DILocation(line: 513, column: 28, scope: !4905)
!4923 = !DILocation(line: 513, column: 36, scope: !4905)
!4924 = !DILocation(line: 513, column: 44, scope: !4905)
!4925 = !DILocation(line: 514, column: 4, scope: !4905)
!4926 = !DILocation(line: 514, column: 12, scope: !4905)
!4927 = !DILocation(line: 509, column: 14, scope: !4905)
!4928 = !DILocation(line: 509, column: 12, scope: !4905)
!4929 = !DILocation(line: 515, column: 2, scope: !4905)
!4930 = !DILocation(line: 523, column: 9, scope: !4771)
!4931 = !DILocation(line: 523, column: 18, scope: !4771)
!4932 = !DILocation(line: 523, column: 24, scope: !4771)
!4933 = !DILocation(line: 523, column: 35, scope: !4771)
!4934 = !DILocation(line: 523, column: 2, scope: !4771)
!4935 = !DILocation(line: 524, column: 1, scope: !4771)
!4936 = distinct !DISubprogram(name: "need_condition_modifier", scope: !1, file: !1, line: 181, type: !100, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!4937 = !DILocalVariable(name: "iforce", arg: 1, scope: !4936, file: !1, line: 181, type: !103)
!4938 = !DILocation(line: 181, column: 51, scope: !4936)
!4939 = !DILocalVariable(name: "old", arg: 2, scope: !4936, file: !1, line: 182, type: !183)
!4940 = !DILocation(line: 182, column: 26, scope: !4936)
!4941 = !DILocalVariable(name: "new", arg: 3, scope: !4936, file: !1, line: 183, type: !183)
!4942 = !DILocation(line: 183, column: 26, scope: !4936)
!4943 = !DILocalVariable(name: "ret", scope: !4936, file: !1, line: 185, type: !102)
!4944 = !DILocation(line: 185, column: 6, scope: !4936)
!4945 = !DILocalVariable(name: "i", scope: !4936, file: !1, line: 186, type: !102)
!4946 = !DILocation(line: 186, column: 6, scope: !4936)
!4947 = !DILocation(line: 188, column: 6, scope: !4948)
!4948 = distinct !DILexicalBlock(scope: !4936, file: !1, line: 188, column: 6)
!4949 = !DILocation(line: 188, column: 11, scope: !4948)
!4950 = !DILocation(line: 188, column: 16, scope: !4948)
!4951 = !DILocation(line: 188, column: 29, scope: !4948)
!4952 = !DILocation(line: 188, column: 32, scope: !4948)
!4953 = !DILocation(line: 188, column: 37, scope: !4948)
!4954 = !DILocation(line: 188, column: 42, scope: !4948)
!4955 = !DILocation(line: 188, column: 6, scope: !4936)
!4956 = !DILocation(line: 189, column: 3, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4948, file: !1, line: 188, column: 58)
!4958 = !DILocation(line: 191, column: 3, scope: !4957)
!4959 = !DILocation(line: 194, column: 9, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4936, file: !1, line: 194, column: 2)
!4961 = !DILocation(line: 194, column: 7, scope: !4960)
!4962 = !DILocation(line: 194, column: 14, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4960, file: !1, line: 194, column: 2)
!4964 = !DILocation(line: 194, column: 16, scope: !4963)
!4965 = !DILocation(line: 194, column: 2, scope: !4960)
!4966 = !DILocation(line: 195, column: 10, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4963, file: !1, line: 194, column: 26)
!4968 = !DILocation(line: 195, column: 15, scope: !4967)
!4969 = !DILocation(line: 195, column: 17, scope: !4967)
!4970 = !DILocation(line: 195, column: 27, scope: !4967)
!4971 = !DILocation(line: 195, column: 30, scope: !4967)
!4972 = !DILocation(line: 195, column: 50, scope: !4967)
!4973 = !DILocation(line: 195, column: 55, scope: !4967)
!4974 = !DILocation(line: 195, column: 57, scope: !4967)
!4975 = !DILocation(line: 195, column: 67, scope: !4967)
!4976 = !DILocation(line: 195, column: 70, scope: !4967)
!4977 = !DILocation(line: 195, column: 47, scope: !4967)
!4978 = !DILocation(line: 196, column: 4, scope: !4967)
!4979 = !DILocation(line: 196, column: 7, scope: !4967)
!4980 = !DILocation(line: 196, column: 12, scope: !4967)
!4981 = !DILocation(line: 196, column: 14, scope: !4967)
!4982 = !DILocation(line: 196, column: 24, scope: !4967)
!4983 = !DILocation(line: 196, column: 27, scope: !4967)
!4984 = !DILocation(line: 196, column: 46, scope: !4967)
!4985 = !DILocation(line: 196, column: 51, scope: !4967)
!4986 = !DILocation(line: 196, column: 53, scope: !4967)
!4987 = !DILocation(line: 196, column: 63, scope: !4967)
!4988 = !DILocation(line: 196, column: 66, scope: !4967)
!4989 = !DILocation(line: 196, column: 43, scope: !4967)
!4990 = !DILocation(line: 197, column: 4, scope: !4967)
!4991 = !DILocation(line: 197, column: 7, scope: !4967)
!4992 = !DILocation(line: 197, column: 12, scope: !4967)
!4993 = !DILocation(line: 197, column: 14, scope: !4967)
!4994 = !DILocation(line: 197, column: 24, scope: !4967)
!4995 = !DILocation(line: 197, column: 27, scope: !4967)
!4996 = !DILocation(line: 197, column: 42, scope: !4967)
!4997 = !DILocation(line: 197, column: 47, scope: !4967)
!4998 = !DILocation(line: 197, column: 49, scope: !4967)
!4999 = !DILocation(line: 197, column: 59, scope: !4967)
!5000 = !DILocation(line: 197, column: 62, scope: !4967)
!5001 = !DILocation(line: 197, column: 39, scope: !4967)
!5002 = !DILocation(line: 198, column: 4, scope: !4967)
!5003 = !DILocation(line: 198, column: 7, scope: !4967)
!5004 = !DILocation(line: 198, column: 12, scope: !4967)
!5005 = !DILocation(line: 198, column: 14, scope: !4967)
!5006 = !DILocation(line: 198, column: 24, scope: !4967)
!5007 = !DILocation(line: 198, column: 27, scope: !4967)
!5008 = !DILocation(line: 198, column: 41, scope: !4967)
!5009 = !DILocation(line: 198, column: 46, scope: !4967)
!5010 = !DILocation(line: 198, column: 48, scope: !4967)
!5011 = !DILocation(line: 198, column: 58, scope: !4967)
!5012 = !DILocation(line: 198, column: 61, scope: !4967)
!5013 = !DILocation(line: 198, column: 38, scope: !4967)
!5014 = !DILocation(line: 199, column: 4, scope: !4967)
!5015 = !DILocation(line: 199, column: 7, scope: !4967)
!5016 = !DILocation(line: 199, column: 12, scope: !4967)
!5017 = !DILocation(line: 199, column: 14, scope: !4967)
!5018 = !DILocation(line: 199, column: 24, scope: !4967)
!5019 = !DILocation(line: 199, column: 27, scope: !4967)
!5020 = !DILocation(line: 199, column: 39, scope: !4967)
!5021 = !DILocation(line: 199, column: 44, scope: !4967)
!5022 = !DILocation(line: 199, column: 46, scope: !4967)
!5023 = !DILocation(line: 199, column: 56, scope: !4967)
!5024 = !DILocation(line: 199, column: 59, scope: !4967)
!5025 = !DILocation(line: 199, column: 36, scope: !4967)
!5026 = !DILocation(line: 200, column: 4, scope: !4967)
!5027 = !DILocation(line: 200, column: 7, scope: !4967)
!5028 = !DILocation(line: 200, column: 12, scope: !4967)
!5029 = !DILocation(line: 200, column: 14, scope: !4967)
!5030 = !DILocation(line: 200, column: 24, scope: !4967)
!5031 = !DILocation(line: 200, column: 27, scope: !4967)
!5032 = !DILocation(line: 200, column: 37, scope: !4967)
!5033 = !DILocation(line: 200, column: 42, scope: !4967)
!5034 = !DILocation(line: 200, column: 44, scope: !4967)
!5035 = !DILocation(line: 200, column: 54, scope: !4967)
!5036 = !DILocation(line: 200, column: 57, scope: !4967)
!5037 = !DILocation(line: 200, column: 34, scope: !4967)
!5038 = !DILocation(line: 195, column: 7, scope: !4967)
!5039 = !DILocation(line: 201, column: 2, scope: !4967)
!5040 = !DILocation(line: 194, column: 22, scope: !4963)
!5041 = !DILocation(line: 194, column: 2, scope: !4963)
!5042 = distinct !{!5042, !4965, !5043}
!5043 = !DILocation(line: 201, column: 2, scope: !4960)
!5044 = !DILocation(line: 202, column: 9, scope: !4936)
!5045 = !DILocation(line: 202, column: 2, scope: !4936)
!5046 = !DILocation(line: 203, column: 1, scope: !4936)
!5047 = distinct !DISubprogram(name: "make_condition_modifier", scope: !1, file: !1, line: 127, type: !5048, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!5048 = !DISubroutineType(types: !5049)
!5049 = !{!102, !103, !3813, !102, !122, !122, !188, !188, !260, !188}
!5050 = !DILocalVariable(name: "iforce", arg: 1, scope: !5047, file: !1, line: 127, type: !103)
!5051 = !DILocation(line: 127, column: 51, scope: !5047)
!5052 = !DILocalVariable(name: "mod_chunk", arg: 2, scope: !5047, file: !1, line: 128, type: !3813)
!5053 = !DILocation(line: 128, column: 19, scope: !5047)
!5054 = !DILocalVariable(name: "no_alloc", arg: 3, scope: !5047, file: !1, line: 128, type: !102)
!5055 = !DILocation(line: 128, column: 34, scope: !5047)
!5056 = !DILocalVariable(name: "rsat", arg: 4, scope: !5047, file: !1, line: 129, type: !122)
!5057 = !DILocation(line: 129, column: 8, scope: !5047)
!5058 = !DILocalVariable(name: "lsat", arg: 5, scope: !5047, file: !1, line: 129, type: !122)
!5059 = !DILocation(line: 129, column: 20, scope: !5047)
!5060 = !DILocalVariable(name: "rk", arg: 6, scope: !5047, file: !1, line: 129, type: !188)
!5061 = !DILocation(line: 129, column: 32, scope: !5047)
!5062 = !DILocalVariable(name: "lk", arg: 7, scope: !5047, file: !1, line: 129, type: !188)
!5063 = !DILocation(line: 129, column: 42, scope: !5047)
!5064 = !DILocalVariable(name: "db", arg: 8, scope: !5047, file: !1, line: 129, type: !260)
!5065 = !DILocation(line: 129, column: 50, scope: !5047)
!5066 = !DILocalVariable(name: "center", arg: 9, scope: !5047, file: !1, line: 129, type: !188)
!5067 = !DILocation(line: 129, column: 60, scope: !5047)
!5068 = !DILocalVariable(name: "data", scope: !5047, file: !1, line: 131, type: !5069)
!5069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 80, elements: !5070)
!5070 = !{!5071}
!5071 = !DISubrange(count: 10)
!5072 = !DILocation(line: 131, column: 16, scope: !5047)
!5073 = !DILocation(line: 133, column: 7, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5047, file: !1, line: 133, column: 6)
!5075 = !DILocation(line: 133, column: 6, scope: !5047)
!5076 = !DILocation(line: 134, column: 15, scope: !5077)
!5077 = distinct !DILexicalBlock(scope: !5074, file: !1, line: 133, column: 17)
!5078 = !DILocation(line: 134, column: 23, scope: !5077)
!5079 = !DILocation(line: 134, column: 3, scope: !5077)
!5080 = !DILocation(line: 135, column: 27, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5077, file: !1, line: 135, column: 7)
!5082 = !DILocation(line: 135, column: 35, scope: !5081)
!5083 = !DILocation(line: 135, column: 51, scope: !5081)
!5084 = !DILocation(line: 136, column: 4, scope: !5081)
!5085 = !DILocation(line: 136, column: 12, scope: !5081)
!5086 = !DILocation(line: 136, column: 26, scope: !5081)
!5087 = !DILocation(line: 136, column: 33, scope: !5081)
!5088 = !DILocation(line: 136, column: 41, scope: !5081)
!5089 = !DILocation(line: 136, column: 55, scope: !5081)
!5090 = !DILocation(line: 135, column: 7, scope: !5081)
!5091 = !DILocation(line: 135, column: 7, scope: !5077)
!5092 = !DILocation(line: 138, column: 18, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5081, file: !1, line: 137, column: 17)
!5094 = !DILocation(line: 138, column: 26, scope: !5093)
!5095 = !DILocation(line: 138, column: 4, scope: !5093)
!5096 = !DILocation(line: 139, column: 4, scope: !5093)
!5097 = !DILocation(line: 141, column: 17, scope: !5077)
!5098 = !DILocation(line: 141, column: 25, scope: !5077)
!5099 = !DILocation(line: 141, column: 3, scope: !5077)
!5100 = !DILocation(line: 142, column: 2, scope: !5077)
!5101 = !DILocation(line: 144, column: 12, scope: !5047)
!5102 = !DILocation(line: 144, column: 2, scope: !5047)
!5103 = !DILocation(line: 144, column: 10, scope: !5047)
!5104 = !DILocation(line: 145, column: 12, scope: !5047)
!5105 = !DILocation(line: 145, column: 2, scope: !5047)
!5106 = !DILocation(line: 145, column: 10, scope: !5047)
!5107 = !DILocation(line: 147, column: 19, scope: !5047)
!5108 = !DILocation(line: 147, column: 17, scope: !5047)
!5109 = !DILocation(line: 147, column: 23, scope: !5047)
!5110 = !DILocation(line: 147, column: 12, scope: !5047)
!5111 = !DILocation(line: 147, column: 2, scope: !5047)
!5112 = !DILocation(line: 147, column: 10, scope: !5047)
!5113 = !DILocation(line: 148, column: 19, scope: !5047)
!5114 = !DILocation(line: 148, column: 17, scope: !5047)
!5115 = !DILocation(line: 148, column: 23, scope: !5047)
!5116 = !DILocation(line: 148, column: 12, scope: !5047)
!5117 = !DILocation(line: 148, column: 2, scope: !5047)
!5118 = !DILocation(line: 148, column: 10, scope: !5047)
!5119 = !DILocation(line: 150, column: 18, scope: !5047)
!5120 = !DILocation(line: 150, column: 16, scope: !5047)
!5121 = !DILocation(line: 150, column: 26, scope: !5047)
!5122 = !DILocation(line: 150, column: 11, scope: !5047)
!5123 = !DILocation(line: 150, column: 9, scope: !5047)
!5124 = !DILocation(line: 151, column: 12, scope: !5047)
!5125 = !DILocation(line: 151, column: 2, scope: !5047)
!5126 = !DILocation(line: 151, column: 10, scope: !5047)
!5127 = !DILocation(line: 152, column: 12, scope: !5047)
!5128 = !DILocation(line: 152, column: 2, scope: !5047)
!5129 = !DILocation(line: 152, column: 10, scope: !5047)
!5130 = !DILocation(line: 154, column: 15, scope: !5047)
!5131 = !DILocation(line: 154, column: 13, scope: !5047)
!5132 = !DILocation(line: 154, column: 19, scope: !5047)
!5133 = !DILocation(line: 154, column: 7, scope: !5047)
!5134 = !DILocation(line: 154, column: 5, scope: !5047)
!5135 = !DILocation(line: 155, column: 12, scope: !5047)
!5136 = !DILocation(line: 155, column: 2, scope: !5047)
!5137 = !DILocation(line: 155, column: 10, scope: !5047)
!5138 = !DILocation(line: 156, column: 12, scope: !5047)
!5139 = !DILocation(line: 156, column: 2, scope: !5047)
!5140 = !DILocation(line: 156, column: 10, scope: !5047)
!5141 = !DILocation(line: 158, column: 19, scope: !5047)
!5142 = !DILocation(line: 158, column: 17, scope: !5047)
!5143 = !DILocation(line: 158, column: 25, scope: !5047)
!5144 = !DILocation(line: 158, column: 12, scope: !5047)
!5145 = !DILocation(line: 158, column: 2, scope: !5047)
!5146 = !DILocation(line: 158, column: 10, scope: !5047)
!5147 = !DILocation(line: 159, column: 19, scope: !5047)
!5148 = !DILocation(line: 159, column: 17, scope: !5047)
!5149 = !DILocation(line: 159, column: 25, scope: !5047)
!5150 = !DILocation(line: 159, column: 12, scope: !5047)
!5151 = !DILocation(line: 159, column: 2, scope: !5047)
!5152 = !DILocation(line: 159, column: 10, scope: !5047)
!5153 = !DILocation(line: 161, column: 21, scope: !5047)
!5154 = !DILocation(line: 161, column: 47, scope: !5047)
!5155 = !DILocation(line: 161, column: 2, scope: !5047)
!5156 = !DILocation(line: 162, column: 21, scope: !5047)
!5157 = !DILocation(line: 162, column: 60, scope: !5047)
!5158 = !DILocation(line: 162, column: 2, scope: !5047)
!5159 = !DILocation(line: 164, column: 2, scope: !5047)
!5160 = !DILocation(line: 165, column: 1, scope: !5047)
!5161 = distinct !DISubprogram(name: "kasan_check_write", scope: !5162, file: !5162, line: 38, type: !5163, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!5162 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5163 = !DISubroutineType(types: !5164)
!5164 = !{!447, !4157, !5}
!5165 = !DILocalVariable(name: "p", arg: 1, scope: !5161, file: !5162, line: 38, type: !4157)
!5166 = !DILocation(line: 38, column: 59, scope: !5161)
!5167 = !DILocalVariable(name: "size", arg: 2, scope: !5161, file: !5162, line: 38, type: !5)
!5168 = !DILocation(line: 38, column: 75, scope: !5161)
!5169 = !DILocation(line: 40, column: 2, scope: !5161)
!5170 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5171, file: !5171, line: 178, type: !5172, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!5171 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5172 = !DISubroutineType(types: !5173)
!5173 = !{null, !4157, !536, !102}
!5174 = !DILocalVariable(name: "ptr", arg: 1, scope: !5170, file: !5171, line: 178, type: !4157)
!5175 = !DILocation(line: 178, column: 60, scope: !5170)
!5176 = !DILocalVariable(name: "size", arg: 2, scope: !5170, file: !5171, line: 178, type: !536)
!5177 = !DILocation(line: 178, column: 72, scope: !5170)
!5178 = !DILocalVariable(name: "type", arg: 3, scope: !5170, file: !5171, line: 179, type: !102)
!5179 = !DILocation(line: 179, column: 15, scope: !5170)
!5180 = !DILocation(line: 179, column: 23, scope: !5170)
!5181 = distinct !DISubprogram(name: "find_button", scope: !1, file: !1, line: 167, type: !5182, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!5182 = !DISubroutineType(types: !5183)
!5183 = !{!85, !103, !189}
!5184 = !DILocalVariable(name: "iforce", arg: 1, scope: !5181, file: !1, line: 167, type: !103)
!5185 = !DILocation(line: 167, column: 49, scope: !5181)
!5186 = !DILocalVariable(name: "button", arg: 2, scope: !5181, file: !1, line: 167, type: !189)
!5187 = !DILocation(line: 167, column: 70, scope: !5181)
!5188 = !DILocalVariable(name: "i", scope: !5181, file: !1, line: 169, type: !102)
!5189 = !DILocation(line: 169, column: 6, scope: !5181)
!5190 = !DILocation(line: 171, column: 9, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5181, file: !1, line: 171, column: 2)
!5192 = !DILocation(line: 171, column: 7, scope: !5191)
!5193 = !DILocation(line: 171, column: 14, scope: !5194)
!5194 = distinct !DILexicalBlock(scope: !5191, file: !1, line: 171, column: 2)
!5195 = !DILocation(line: 171, column: 22, scope: !5194)
!5196 = !DILocation(line: 171, column: 28, scope: !5194)
!5197 = !DILocation(line: 171, column: 32, scope: !5194)
!5198 = !DILocation(line: 171, column: 35, scope: !5194)
!5199 = !DILocation(line: 171, column: 2, scope: !5191)
!5200 = !DILocation(line: 172, column: 7, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5194, file: !1, line: 172, column: 7)
!5202 = !DILocation(line: 172, column: 15, scope: !5201)
!5203 = !DILocation(line: 172, column: 21, scope: !5201)
!5204 = !DILocation(line: 172, column: 25, scope: !5201)
!5205 = !DILocation(line: 172, column: 31, scope: !5201)
!5206 = !DILocation(line: 172, column: 28, scope: !5201)
!5207 = !DILocation(line: 172, column: 7, scope: !5194)
!5208 = !DILocation(line: 173, column: 11, scope: !5201)
!5209 = !DILocation(line: 173, column: 13, scope: !5201)
!5210 = !DILocation(line: 173, column: 4, scope: !5201)
!5211 = !DILocation(line: 171, column: 42, scope: !5194)
!5212 = !DILocation(line: 171, column: 2, scope: !5194)
!5213 = distinct !{!5213, !5199, !5214}
!5214 = !DILocation(line: 173, column: 15, scope: !5191)
!5215 = !DILocation(line: 174, column: 2, scope: !5181)
!5216 = !DILocation(line: 175, column: 1, scope: !5181)
!5217 = distinct !DISubprogram(name: "test_bit", scope: !5218, file: !5218, line: 132, type: !5219, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!5218 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!5219 = !DISubroutineType(types: !5220)
!5220 = !{!447, !91, !5221}
!5221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5222, size: 64)
!5222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4144)
!5223 = !DILocalVariable(name: "nr", arg: 1, scope: !5224, file: !4147, line: 210, type: !91)
!5224 = distinct !DISubprogram(name: "variable_test_bit", scope: !4147, file: !4147, line: 210, type: !5219, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!5225 = !DILocation(line: 210, column: 52, scope: !5224, inlinedAt: !5226)
!5226 = distinct !DILocation(line: 135, column: 9, scope: !5217)
!5227 = !DILocalVariable(name: "addr", arg: 2, scope: !5224, file: !4147, line: 210, type: !5221)
!5228 = !DILocation(line: 210, column: 86, scope: !5224, inlinedAt: !5226)
!5229 = !DILocalVariable(name: "oldbit", scope: !5224, file: !4147, line: 212, type: !447)
!5230 = !DILocation(line: 212, column: 7, scope: !5224, inlinedAt: !5226)
!5231 = !DILocalVariable(name: "nr", arg: 1, scope: !5232, file: !4147, line: 204, type: !91)
!5232 = distinct !DISubprogram(name: "constant_test_bit", scope: !4147, file: !4147, line: 204, type: !5219, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!5233 = !DILocation(line: 204, column: 52, scope: !5232, inlinedAt: !5234)
!5234 = distinct !DILocation(line: 135, column: 9, scope: !5217)
!5235 = !DILocalVariable(name: "addr", arg: 2, scope: !5232, file: !4147, line: 204, type: !5221)
!5236 = !DILocation(line: 204, column: 86, scope: !5232, inlinedAt: !5234)
!5237 = !DILocalVariable(name: "v", arg: 1, scope: !5238, file: !4154, line: 69, type: !4157)
!5238 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4154, file: !4154, line: 69, type: !4155, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!5239 = !DILocation(line: 69, column: 73, scope: !5238, inlinedAt: !5240)
!5240 = distinct !DILocation(line: 134, column: 2, scope: !5217)
!5241 = !DILocalVariable(name: "size", arg: 2, scope: !5238, file: !4154, line: 69, type: !536)
!5242 = !DILocation(line: 69, column: 83, scope: !5238, inlinedAt: !5240)
!5243 = !DILocalVariable(name: "nr", arg: 1, scope: !5217, file: !5218, line: 132, type: !91)
!5244 = !DILocation(line: 132, column: 34, scope: !5217)
!5245 = !DILocalVariable(name: "addr", arg: 2, scope: !5217, file: !5218, line: 132, type: !5221)
!5246 = !DILocation(line: 132, column: 68, scope: !5217)
!5247 = !DILocation(line: 134, column: 25, scope: !5217)
!5248 = !DILocation(line: 134, column: 32, scope: !5217)
!5249 = !DILocation(line: 134, column: 30, scope: !5217)
!5250 = !DILocation(line: 71, column: 19, scope: !5238, inlinedAt: !5240)
!5251 = !DILocation(line: 71, column: 22, scope: !5238, inlinedAt: !5240)
!5252 = !DILocation(line: 71, column: 2, scope: !5238, inlinedAt: !5240)
!5253 = !DILocation(line: 72, column: 2, scope: !5238, inlinedAt: !5240)
!5254 = !DILocation(line: 135, column: 9, scope: !5217)
!5255 = !DILocation(line: 206, column: 19, scope: !5232, inlinedAt: !5234)
!5256 = !DILocation(line: 206, column: 22, scope: !5232, inlinedAt: !5234)
!5257 = !DILocation(line: 206, column: 15, scope: !5232, inlinedAt: !5234)
!5258 = !DILocation(line: 207, column: 4, scope: !5232, inlinedAt: !5234)
!5259 = !DILocation(line: 207, column: 9, scope: !5232, inlinedAt: !5234)
!5260 = !DILocation(line: 207, column: 12, scope: !5232, inlinedAt: !5234)
!5261 = !DILocation(line: 206, column: 44, scope: !5232, inlinedAt: !5234)
!5262 = !DILocation(line: 207, column: 37, scope: !5232, inlinedAt: !5234)
!5263 = !DILocation(line: 217, column: 33, scope: !5224, inlinedAt: !5226)
!5264 = !DILocation(line: 217, column: 46, scope: !5224, inlinedAt: !5226)
!5265 = !DILocation(line: 214, column: 2, scope: !5224, inlinedAt: !5226)
!5266 = !{i32 -2147185041, i32 -2147184981}
!5267 = !DILocation(line: 219, column: 9, scope: !5224, inlinedAt: !5226)
!5268 = !DILocation(line: 135, column: 2, scope: !5217)
!5269 = distinct !DISubprogram(name: "kasan_check_read", scope: !5162, file: !5162, line: 34, type: !5163, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !299)
!5270 = !DILocalVariable(name: "p", arg: 1, scope: !5269, file: !5162, line: 34, type: !4157)
!5271 = !DILocation(line: 34, column: 58, scope: !5269)
!5272 = !DILocalVariable(name: "size", arg: 2, scope: !5269, file: !5162, line: 34, type: !5)
!5273 = !DILocation(line: 34, column: 74, scope: !5269)
!5274 = !DILocation(line: 36, column: 2, scope: !5269)
