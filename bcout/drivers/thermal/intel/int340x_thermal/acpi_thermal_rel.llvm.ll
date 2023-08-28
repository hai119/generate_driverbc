; ModuleID = '../bcout/drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.llvm.bc'
source_filename = "drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.acpi_buffer = type { i64, i8* }
%struct.miscdevice = type { i32, i8*, %struct.file_operations*, %struct.list_head, %struct.device*, %struct.device*, %struct.attribute_group**, i8*, i16 }
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
%struct.kiocb = type { %struct.file*, i64, void (%struct.kiocb*, i64, i64)*, i8*, i32, i16, i16, %union.anon.4 }
%union.anon.4 = type { %struct.wait_page_queue* }
%struct.wait_page_queue = type opaque
%struct.iov_iter = type opaque
%struct.dir_context = type { i32 (%struct.dir_context*, i8*, i32, i64, i64, i32)*, i64 }
%struct.poll_table_struct = type opaque
%struct.file_lock = type { %struct.file_lock*, %struct.list_head, %struct.hlist_node, %struct.list_head, %struct.list_head, i8*, i32, i8, i32, i32, %struct.wait_queue_head, %struct.file*, i64, i64, %struct.fasync_struct*, i64, i64, %struct.file_lock_operations*, %struct.lock_manager_operations*, %union.anon.56 }
%struct.fasync_struct = type { %struct.rwlock_t, i32, i32, %struct.fasync_struct*, %struct.file*, %struct.callback_head }
%struct.file_lock_operations = type { void (%struct.file_lock*, %struct.file_lock*)*, void (%struct.file_lock*)* }
%struct.lock_manager_operations = type { i8* (i8*)*, void (i8*)*, void (%struct.file_lock*)*, i32 (%struct.file_lock*, i32)*, i1 (%struct.file_lock*)*, i32 (%struct.file_lock*, i32, %struct.list_head*)*, void (%struct.file_lock*, i8**)*, i1 (%struct.file_lock*)* }
%union.anon.56 = type { %struct.nfs_lock_info }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.63, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.63 = type { %struct.kernfs_elem_attr }
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
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kmem_cache = type opaque
%struct.trt = type { i8*, i8*, i64, i64, i64, i64, i64, i64 }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.69 }
%struct.anon.69 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.71, i32, i32, %struct.list_head }
%struct.anon.71 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.72, i8, i8, i32 }
%struct.anon.72 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque
%struct.acpi_object_list = type { i32, %union.acpi_object* }
%struct.anon.67 = type { i32, i32, %union.acpi_object* }
%struct.art = type { i8*, i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%union.trt_object = type { %struct.anon.73 }
%struct.anon.73 = type { [8 x i8], [8 x i8], i64, i64, [4 x i64] }
%union.art_object = type { %struct.anon.74 }
%struct.anon.74 = type { [8 x i8], [8 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__const.acpi_parse_trt.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str = private unnamed_addr constant [9 x i8] c"RRNNNNNN\00", align 1
@__const.acpi_parse_trt.trt_format = private unnamed_addr constant %struct.acpi_buffer { i64 9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"_TRT\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"\013Invalid _TRT data\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"\014_TRT package %d is invalid, ignored\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"\014Failed to get source ACPI device\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\014Failed to get target ACPI device\0A\00", align 1
@__const.acpi_parse_art.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"RRNNNNNNNNNNN\00", align 1
@__const.acpi_parse_art.art_format = private unnamed_addr constant %struct.acpi_buffer { i64 14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0) }, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"_ART\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"\013Invalid _ART data\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"\014_ART package %d is invalid, ignored\00", align 1
@acpi_thermal_rel_handle = internal global i8* null, align 8, !dbg !0
@acpi_thermal_rel_misc_device = internal global %struct.miscdevice { i32 255, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), %struct.file_operations* @acpi_thermal_rel_fops, %struct.list_head zeroinitializer, %struct.device* null, %struct.device* null, %struct.attribute_group** null, i8* null, i16 0 }, align 8, !dbg !141
@__UNIQUE_ID_author211 = internal constant [56 x i8] c"acpi_thermal_rel.author=Zhang Rui <rui.zhang@intel.com>\00", section ".modinfo", align 1, !dbg !114
@__UNIQUE_ID_author212 = internal constant [59 x i8] c"acpi_thermal_rel.author=Jacob Pan <jacob.jun.pan@intel.com\00", section ".modinfo", align 1, !dbg !121
@__UNIQUE_ID_description213 = internal constant [68 x i8] c"acpi_thermal_rel.description=Intel acpi thermal rel misc dev driver\00", section ".modinfo", align 1, !dbg !126
@__UNIQUE_ID_file214 = internal constant [77 x i8] c"acpi_thermal_rel.file=drivers/thermal/intel/int340x_thermal/acpi_thermal_rel\00", section ".modinfo", align 1, !dbg !131
@__UNIQUE_ID_license215 = internal constant [32 x i8] c"acpi_thermal_rel.license=GPL v2\00", section ".modinfo", align 1, !dbg !136
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"acpi_thermal_rel\00", align 1
@acpi_thermal_rel_fops = internal constant %struct.file_operations { %struct.module* null, i64 (%struct.file*, i64, i32)* @no_llseek, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.file*, i8*, i64, i64*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i64 (%struct.kiocb*, %struct.iov_iter*)* null, i32 (%struct.kiocb*, i1)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.dir_context*)* null, i32 (%struct.file*, %struct.poll_table_struct*)* null, i64 (%struct.file*, i32, i64)* @acpi_thermal_rel_ioctl, i64 (%struct.file*, i32, i64)* null, i32 (%struct.file*, %struct.vm_area_struct*)* null, i64 0, i32 (%struct.inode*, %struct.file*)* @acpi_thermal_rel_open, i32 (%struct.file*, i8*)* null, i32 (%struct.inode*, %struct.file*)* @acpi_thermal_rel_release, i32 (%struct.file*, i64, i64, i32)* null, i32 (i32, %struct.file*, i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.file*, %struct.page*, i32, i64, i64*, i32)* null, i64 (%struct.file*, i64, i64, i64, i64)* null, i32 (i32)* null, i32 (%struct.file*, i32, %struct.file_lock*)* null, i64 (%struct.pipe_inode_info*, %struct.file*, i64*, i64, i32)* null, i64 (%struct.file*, i64*, %struct.pipe_inode_info*, i64, i32)* null, i32 (%struct.file*, i64, %struct.file_lock**, i8**)* null, i64 (%struct.file*, i32, i64, i64)* null, void (%struct.seq_file*, %struct.file*)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i64 (%struct.file*, i64, %struct.file*, i64, i64, i32)* null, i32 (%struct.file*, i64, i64, i32)* null }, align 8, !dbg !3723
@__const.get_single_name.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, i8* null }, align 8
@.str.12 = private unnamed_addr constant [46 x i8] c"\014Failed to get device name from acpi handle\0A\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@acpi_thermal_rel_chrdev_lock = internal global %struct.spinlock undef, align 1, !dbg !3725
@acpi_thermal_rel_chrdev_exclu = internal global i32 0, align 4, !dbg !3727
@acpi_thermal_rel_chrdev_count = internal global i32 0, align 4, !dbg !3729
@llvm.used = appending global [5 x i8*] [i8* getelementptr inbounds ([56 x i8], [56 x i8]* @__UNIQUE_ID_author211, i32 0, i32 0), i8* getelementptr inbounds ([59 x i8], [59 x i8]* @__UNIQUE_ID_author212, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @__UNIQUE_ID_description213, i32 0, i32 0), i8* getelementptr inbounds ([77 x i8], [77 x i8]* @__UNIQUE_ID_file214, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__UNIQUE_ID_license215, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_parse_trt(i8* %handle, i32* %trt_count, %struct.trt** %trtp, i1 zeroext %create_dev) #0 !dbg !3739 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %trt_count.addr = alloca i32*, align 8
  %trtp.addr = alloca %struct.trt**, align 8
  %create_dev.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %nr_bad_entries = alloca i32, align 4
  %trts = alloca %struct.trt*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %p = alloca %union.acpi_object*, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %element = alloca %struct.acpi_buffer, align 8
  %trt_format = alloca %struct.acpi_buffer, align 8
  %trt = alloca %struct.trt*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !3755, metadata !DIExpression()), !dbg !3756
  store i32* %trt_count, i32** %trt_count.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %trt_count.addr, metadata !3757, metadata !DIExpression()), !dbg !3758
  store %struct.trt** %trtp, %struct.trt*** %trtp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trt*** %trtp.addr, metadata !3759, metadata !DIExpression()), !dbg !3760
  %frombool = zext i1 %create_dev to i8
  store i8 %frombool, i8* %create_dev.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %create_dev.addr, metadata !3761, metadata !DIExpression()), !dbg !3762
  call void @llvm.dbg.declare(metadata i32* %status, metadata !3763, metadata !DIExpression()), !dbg !3765
  call void @llvm.dbg.declare(metadata i32* %result, metadata !3766, metadata !DIExpression()), !dbg !3767
  store i32 0, i32* %result, align 4, !dbg !3767
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3768, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.declare(metadata i32* %nr_bad_entries, metadata !3770, metadata !DIExpression()), !dbg !3771
  store i32 0, i32* %nr_bad_entries, align 4, !dbg !3771
  call void @llvm.dbg.declare(metadata %struct.trt** %trts, metadata !3772, metadata !DIExpression()), !dbg !3773
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !3774, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.declare(metadata %union.acpi_object** %p, metadata !4056, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !4058, metadata !DIExpression()), !dbg !4064
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !4064
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_parse_trt.buffer to i8*), i64 16, i1 false), !dbg !4064
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %element, metadata !4065, metadata !DIExpression()), !dbg !4066
  %1 = bitcast %struct.acpi_buffer* %element to i8*, !dbg !4066
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false), !dbg !4066
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %trt_format, metadata !4067, metadata !DIExpression()), !dbg !4068
  %2 = bitcast %struct.acpi_buffer* %trt_format to i8*, !dbg !4068
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_parse_trt.trt_format to i8*), i64 16, i1 false), !dbg !4068
  %3 = load i8*, i8** %handle.addr, align 8, !dbg !4069
  %call = call i32 @acpi_evaluate_object(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #10, !dbg !4070
  store i32 %call, i32* %status, align 4, !dbg !4071
  %4 = load i32, i32* %status, align 4, !dbg !4072
  %tobool = icmp ne i32 %4, 0, !dbg !4072
  br i1 %tobool, label %if.then, label %if.end, !dbg !4074

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4075
  br label %return, !dbg !4075

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !4076
  %5 = load i8*, i8** %pointer, align 8, !dbg !4076
  %6 = bitcast i8* %5 to %union.acpi_object*, !dbg !4077
  store %union.acpi_object* %6, %union.acpi_object** %p, align 8, !dbg !4078
  %7 = load %union.acpi_object*, %union.acpi_object** %p, align 8, !dbg !4079
  %tobool1 = icmp ne %union.acpi_object* %7, null, !dbg !4079
  br i1 %tobool1, label %lor.lhs.false, label %if.then2, !dbg !4081

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %union.acpi_object*, %union.acpi_object** %p, align 8, !dbg !4082
  %type = bitcast %union.acpi_object* %8 to i32*, !dbg !4083
  %9 = load i32, i32* %type, align 8, !dbg !4083
  %cmp = icmp ne i32 %9, 4, !dbg !4084
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !4085

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0)) #11, !dbg !4086
  store i32 -14, i32* %result, align 4, !dbg !4088
  br label %end, !dbg !4089

if.end4:                                          ; preds = %lor.lhs.false
  %10 = load %union.acpi_object*, %union.acpi_object** %p, align 8, !dbg !4090
  %package = bitcast %union.acpi_object* %10 to %struct.anon.67*, !dbg !4091
  %count = getelementptr inbounds %struct.anon.67, %struct.anon.67* %package, i32 0, i32 1, !dbg !4092
  %11 = load i32, i32* %count, align 4, !dbg !4092
  %12 = load i32*, i32** %trt_count.addr, align 8, !dbg !4093
  store i32 %11, i32* %12, align 4, !dbg !4094
  %13 = load i32*, i32** %trt_count.addr, align 8, !dbg !4095
  %14 = load i32, i32* %13, align 4, !dbg !4096
  %conv = sext i32 %14 to i64, !dbg !4096
  %call5 = call i8* @kcalloc(i64 %conv, i64 64, i32 3264) #10, !dbg !4097
  %15 = bitcast i8* %call5 to %struct.trt*, !dbg !4097
  store %struct.trt* %15, %struct.trt** %trts, align 8, !dbg !4098
  %16 = load %struct.trt*, %struct.trt** %trts, align 8, !dbg !4099
  %tobool6 = icmp ne %struct.trt* %16, null, !dbg !4099
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4101

if.then7:                                         ; preds = %if.end4
  store i32 -12, i32* %result, align 4, !dbg !4102
  br label %end, !dbg !4104

if.end8:                                          ; preds = %if.end4
  store i32 0, i32* %i, align 4, !dbg !4105
  br label %for.cond, !dbg !4107

for.cond:                                         ; preds = %for.inc, %if.end8
  %17 = load i32, i32* %i, align 4, !dbg !4108
  %18 = load i32*, i32** %trt_count.addr, align 8, !dbg !4110
  %19 = load i32, i32* %18, align 4, !dbg !4111
  %cmp9 = icmp slt i32 %17, %19, !dbg !4112
  br i1 %cmp9, label %for.body, label %for.end, !dbg !4113

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.trt** %trt, metadata !4114, metadata !DIExpression()), !dbg !4116
  %20 = load %struct.trt*, %struct.trt** %trts, align 8, !dbg !4117
  %21 = load i32, i32* %i, align 4, !dbg !4118
  %22 = load i32, i32* %nr_bad_entries, align 4, !dbg !4119
  %sub = sub i32 %21, %22, !dbg !4120
  %idxprom = sext i32 %sub to i64, !dbg !4117
  %arrayidx = getelementptr %struct.trt, %struct.trt* %20, i64 %idxprom, !dbg !4117
  store %struct.trt* %arrayidx, %struct.trt** %trt, align 8, !dbg !4116
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %element, i32 0, i32 0, !dbg !4121
  store i64 64, i64* %length, align 8, !dbg !4122
  %23 = load %struct.trt*, %struct.trt** %trt, align 8, !dbg !4123
  %24 = bitcast %struct.trt* %23 to i8*, !dbg !4123
  %pointer11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %element, i32 0, i32 1, !dbg !4124
  store i8* %24, i8** %pointer11, align 8, !dbg !4125
  %25 = load %union.acpi_object*, %union.acpi_object** %p, align 8, !dbg !4126
  %package12 = bitcast %union.acpi_object* %25 to %struct.anon.67*, !dbg !4127
  %elements = getelementptr inbounds %struct.anon.67, %struct.anon.67* %package12, i32 0, i32 2, !dbg !4128
  %26 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !4128
  %27 = load i32, i32* %i, align 4, !dbg !4129
  %idxprom13 = sext i32 %27 to i64, !dbg !4126
  %arrayidx14 = getelementptr %union.acpi_object, %union.acpi_object* %26, i64 %idxprom13, !dbg !4126
  %call15 = call i32 @acpi_extract_package(%union.acpi_object* %arrayidx14, %struct.acpi_buffer* %trt_format, %struct.acpi_buffer* %element) #10, !dbg !4130
  store i32 %call15, i32* %status, align 4, !dbg !4131
  %28 = load i32, i32* %status, align 4, !dbg !4132
  %tobool16 = icmp ne i32 %28, 0, !dbg !4132
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !4134

if.then17:                                        ; preds = %for.body
  %29 = load i32, i32* %nr_bad_entries, align 4, !dbg !4135
  %inc = add i32 %29, 1, !dbg !4135
  store i32 %inc, i32* %nr_bad_entries, align 4, !dbg !4135
  %30 = load i32, i32* %i, align 4, !dbg !4137
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %30) #11, !dbg !4137
  br label %for.inc, !dbg !4138

if.end19:                                         ; preds = %for.body
  %31 = load i8, i8* %create_dev.addr, align 1, !dbg !4139
  %tobool20 = trunc i8 %31 to i1, !dbg !4139
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !4141

if.then21:                                        ; preds = %if.end19
  br label %for.inc, !dbg !4142

if.end22:                                         ; preds = %if.end19
  %32 = load %struct.trt*, %struct.trt** %trt, align 8, !dbg !4143
  %source = getelementptr inbounds %struct.trt, %struct.trt* %32, i32 0, i32 0, !dbg !4144
  %33 = load i8*, i8** %source, align 1, !dbg !4144
  %call23 = call i32 @acpi_bus_get_device(i8* %33, %struct.acpi_device** %adev) #10, !dbg !4145
  store i32 %call23, i32* %result, align 4, !dbg !4146
  %34 = load i32, i32* %result, align 4, !dbg !4147
  %tobool24 = icmp ne i32 %34, 0, !dbg !4147
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !4149

if.then25:                                        ; preds = %if.end22
  %call26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !4150
  br label %if.end27, !dbg !4150

if.end27:                                         ; preds = %if.then25, %if.end22
  %35 = load %struct.trt*, %struct.trt** %trt, align 8, !dbg !4151
  %target = getelementptr inbounds %struct.trt, %struct.trt* %35, i32 0, i32 1, !dbg !4152
  %36 = load i8*, i8** %target, align 1, !dbg !4152
  %call28 = call i32 @acpi_bus_get_device(i8* %36, %struct.acpi_device** %adev) #10, !dbg !4153
  store i32 %call28, i32* %result, align 4, !dbg !4154
  %37 = load i32, i32* %result, align 4, !dbg !4155
  %tobool29 = icmp ne i32 %37, 0, !dbg !4155
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !4157

if.then30:                                        ; preds = %if.end27
  %call31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !4158
  br label %if.end32, !dbg !4158

if.end32:                                         ; preds = %if.then30, %if.end27
  br label %for.inc, !dbg !4159

for.inc:                                          ; preds = %if.end32, %if.then21, %if.then17
  %38 = load i32, i32* %i, align 4, !dbg !4160
  %inc33 = add i32 %38, 1, !dbg !4160
  store i32 %inc33, i32* %i, align 4, !dbg !4160
  br label %for.cond, !dbg !4161, !llvm.loop !4162

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %result, align 4, !dbg !4164
  %39 = load %struct.trt*, %struct.trt** %trts, align 8, !dbg !4165
  %40 = load %struct.trt**, %struct.trt*** %trtp.addr, align 8, !dbg !4166
  store %struct.trt* %39, %struct.trt** %40, align 8, !dbg !4167
  %41 = load i32, i32* %nr_bad_entries, align 4, !dbg !4168
  %42 = load i32*, i32** %trt_count.addr, align 8, !dbg !4169
  %43 = load i32, i32* %42, align 4, !dbg !4170
  %sub34 = sub i32 %43, %41, !dbg !4170
  store i32 %sub34, i32* %42, align 4, !dbg !4170
  br label %end, !dbg !4171

end:                                              ; preds = %for.end, %if.then7, %if.then2
  call void @llvm.dbg.label(metadata !4172), !dbg !4173
  %pointer35 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !4174
  %44 = load i8*, i8** %pointer35, align 8, !dbg !4174
  call void @kfree(i8* %44) #10, !dbg !4175
  %45 = load i32, i32* %result, align 4, !dbg !4176
  store i32 %45, i32* %retval, align 4, !dbg !4177
  br label %return, !dbg !4177

return:                                           ; preds = %end, %if.then
  %46 = load i32, i32* %retval, align 4, !dbg !4178
  ret i32 %46, !dbg !4178
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noredzone
declare dso_local i32 @acpi_evaluate_object(i8*, i8*, %struct.acpi_object_list*, %struct.acpi_buffer*) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !4179 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4182, metadata !DIExpression()), !dbg !4183
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4184, metadata !DIExpression()), !dbg !4185
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4186, metadata !DIExpression()), !dbg !4187
  %0 = load i64, i64* %n.addr, align 8, !dbg !4188
  %1 = load i64, i64* %size.addr, align 8, !dbg !4189
  %2 = load i32, i32* %flags.addr, align 4, !dbg !4190
  %or = or i32 %2, 256, !dbg !4191
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #10, !dbg !4192
  ret i8* %call, !dbg !4193
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_extract_package(%union.acpi_object*, %struct.acpi_buffer*, %struct.acpi_buffer*) #3

; Function Attrs: noredzone
declare dso_local i32 @acpi_bus_get_device(i8*, %struct.acpi_device**) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_parse_art(i8* %handle, i32* %art_count, %struct.art** %artp, i1 zeroext %create_dev) #0 !dbg !4194 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca i8*, align 8
  %art_count.addr = alloca i32*, align 8
  %artp.addr = alloca %struct.art**, align 8
  %create_dev.addr = alloca i8, align 1
  %status = alloca i32, align 4
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %nr_bad_entries = alloca i32, align 4
  %arts = alloca %struct.art*, align 8
  %adev = alloca %struct.acpi_device*, align 8
  %p = alloca %union.acpi_object*, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %element = alloca %struct.acpi_buffer, align 8
  %art_format = alloca %struct.acpi_buffer, align 8
  %art = alloca %struct.art*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !4214, metadata !DIExpression()), !dbg !4215
  store i32* %art_count, i32** %art_count.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %art_count.addr, metadata !4216, metadata !DIExpression()), !dbg !4217
  store %struct.art** %artp, %struct.art*** %artp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.art*** %artp.addr, metadata !4218, metadata !DIExpression()), !dbg !4219
  %frombool = zext i1 %create_dev to i8
  store i8 %frombool, i8* %create_dev.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %create_dev.addr, metadata !4220, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.declare(metadata i32* %status, metadata !4222, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.declare(metadata i32* %result, metadata !4224, metadata !DIExpression()), !dbg !4225
  store i32 0, i32* %result, align 4, !dbg !4225
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4226, metadata !DIExpression()), !dbg !4227
  call void @llvm.dbg.declare(metadata i32* %nr_bad_entries, metadata !4228, metadata !DIExpression()), !dbg !4229
  store i32 0, i32* %nr_bad_entries, align 4, !dbg !4229
  call void @llvm.dbg.declare(metadata %struct.art** %arts, metadata !4230, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev, metadata !4232, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.declare(metadata %union.acpi_object** %p, metadata !4234, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !4236, metadata !DIExpression()), !dbg !4237
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !4237
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_parse_art.buffer to i8*), i64 16, i1 false), !dbg !4237
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %element, metadata !4238, metadata !DIExpression()), !dbg !4239
  %1 = bitcast %struct.acpi_buffer* %element to i8*, !dbg !4239
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 16, i1 false), !dbg !4239
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %art_format, metadata !4240, metadata !DIExpression()), !dbg !4241
  %2 = bitcast %struct.acpi_buffer* %art_format to i8*, !dbg !4241
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.acpi_buffer* @__const.acpi_parse_art.art_format to i8*), i64 16, i1 false), !dbg !4241
  %3 = load i8*, i8** %handle.addr, align 8, !dbg !4242
  %call = call i32 @acpi_evaluate_object(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), %struct.acpi_object_list* null, %struct.acpi_buffer* %buffer) #10, !dbg !4243
  store i32 %call, i32* %status, align 4, !dbg !4244
  %4 = load i32, i32* %status, align 4, !dbg !4245
  %tobool = icmp ne i32 %4, 0, !dbg !4245
  br i1 %tobool, label %if.then, label %if.end, !dbg !4247

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4248
  br label %return, !dbg !4248

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !4249
  %5 = load i8*, i8** %pointer, align 8, !dbg !4249
  %6 = bitcast i8* %5 to %union.acpi_object*, !dbg !4250
  store %union.acpi_object* %6, %union.acpi_object** %p, align 8, !dbg !4251
  %7 = load %union.acpi_object*, %union.acpi_object** %p, align 8, !dbg !4252
  %tobool1 = icmp ne %union.acpi_object* %7, null, !dbg !4252
  br i1 %tobool1, label %lor.lhs.false, label %if.then2, !dbg !4254

lor.lhs.false:                                    ; preds = %if.end
  %8 = load %union.acpi_object*, %union.acpi_object** %p, align 8, !dbg !4255
  %type = bitcast %union.acpi_object* %8 to i32*, !dbg !4256
  %9 = load i32, i32* %type, align 8, !dbg !4256
  %cmp = icmp ne i32 %9, 4, !dbg !4257
  br i1 %cmp, label %if.then2, label %if.end4, !dbg !4258

if.then2:                                         ; preds = %lor.lhs.false, %if.end
  %call3 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !4259
  store i32 -14, i32* %result, align 4, !dbg !4261
  br label %end, !dbg !4262

if.end4:                                          ; preds = %lor.lhs.false
  %10 = load %union.acpi_object*, %union.acpi_object** %p, align 8, !dbg !4263
  %package = bitcast %union.acpi_object* %10 to %struct.anon.67*, !dbg !4264
  %count = getelementptr inbounds %struct.anon.67, %struct.anon.67* %package, i32 0, i32 1, !dbg !4265
  %11 = load i32, i32* %count, align 4, !dbg !4265
  %sub = sub i32 %11, 1, !dbg !4266
  %12 = load i32*, i32** %art_count.addr, align 8, !dbg !4267
  store i32 %sub, i32* %12, align 4, !dbg !4268
  %13 = load i32*, i32** %art_count.addr, align 8, !dbg !4269
  %14 = load i32, i32* %13, align 4, !dbg !4270
  %conv = sext i32 %14 to i64, !dbg !4270
  %call5 = call i8* @kcalloc(i64 %conv, i64 104, i32 3264) #10, !dbg !4271
  %15 = bitcast i8* %call5 to %struct.art*, !dbg !4271
  store %struct.art* %15, %struct.art** %arts, align 8, !dbg !4272
  %16 = load %struct.art*, %struct.art** %arts, align 8, !dbg !4273
  %tobool6 = icmp ne %struct.art* %16, null, !dbg !4273
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !4275

if.then7:                                         ; preds = %if.end4
  store i32 -12, i32* %result, align 4, !dbg !4276
  br label %end, !dbg !4278

if.end8:                                          ; preds = %if.end4
  store i32 0, i32* %i, align 4, !dbg !4279
  br label %for.cond, !dbg !4281

for.cond:                                         ; preds = %for.inc, %if.end8
  %17 = load i32, i32* %i, align 4, !dbg !4282
  %18 = load i32*, i32** %art_count.addr, align 8, !dbg !4284
  %19 = load i32, i32* %18, align 4, !dbg !4285
  %cmp9 = icmp slt i32 %17, %19, !dbg !4286
  br i1 %cmp9, label %for.body, label %for.end, !dbg !4287

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.art** %art, metadata !4288, metadata !DIExpression()), !dbg !4290
  %20 = load %struct.art*, %struct.art** %arts, align 8, !dbg !4291
  %21 = load i32, i32* %i, align 4, !dbg !4292
  %22 = load i32, i32* %nr_bad_entries, align 4, !dbg !4293
  %sub11 = sub i32 %21, %22, !dbg !4294
  %idxprom = sext i32 %sub11 to i64, !dbg !4291
  %arrayidx = getelementptr %struct.art, %struct.art* %20, i64 %idxprom, !dbg !4291
  store %struct.art* %arrayidx, %struct.art** %art, align 8, !dbg !4290
  %length = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %element, i32 0, i32 0, !dbg !4295
  store i64 104, i64* %length, align 8, !dbg !4296
  %23 = load %struct.art*, %struct.art** %art, align 8, !dbg !4297
  %24 = bitcast %struct.art* %23 to i8*, !dbg !4297
  %pointer12 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %element, i32 0, i32 1, !dbg !4298
  store i8* %24, i8** %pointer12, align 8, !dbg !4299
  %25 = load %union.acpi_object*, %union.acpi_object** %p, align 8, !dbg !4300
  %package13 = bitcast %union.acpi_object* %25 to %struct.anon.67*, !dbg !4301
  %elements = getelementptr inbounds %struct.anon.67, %struct.anon.67* %package13, i32 0, i32 2, !dbg !4302
  %26 = load %union.acpi_object*, %union.acpi_object** %elements, align 8, !dbg !4302
  %27 = load i32, i32* %i, align 4, !dbg !4303
  %add = add i32 %27, 1, !dbg !4304
  %idxprom14 = sext i32 %add to i64, !dbg !4300
  %arrayidx15 = getelementptr %union.acpi_object, %union.acpi_object* %26, i64 %idxprom14, !dbg !4300
  %call16 = call i32 @acpi_extract_package(%union.acpi_object* %arrayidx15, %struct.acpi_buffer* %art_format, %struct.acpi_buffer* %element) #10, !dbg !4305
  store i32 %call16, i32* %status, align 4, !dbg !4306
  %28 = load i32, i32* %status, align 4, !dbg !4307
  %tobool17 = icmp ne i32 %28, 0, !dbg !4307
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !4309

if.then18:                                        ; preds = %for.body
  %29 = load i32, i32* %i, align 4, !dbg !4310
  %call19 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %29) #11, !dbg !4310
  %30 = load i32, i32* %nr_bad_entries, align 4, !dbg !4312
  %inc = add i32 %30, 1, !dbg !4312
  store i32 %inc, i32* %nr_bad_entries, align 4, !dbg !4312
  br label %for.inc, !dbg !4313

if.end20:                                         ; preds = %for.body
  %31 = load i8, i8* %create_dev.addr, align 1, !dbg !4314
  %tobool21 = trunc i8 %31 to i1, !dbg !4314
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !4316

if.then22:                                        ; preds = %if.end20
  br label %for.inc, !dbg !4317

if.end23:                                         ; preds = %if.end20
  %32 = load %struct.art*, %struct.art** %art, align 8, !dbg !4318
  %source = getelementptr inbounds %struct.art, %struct.art* %32, i32 0, i32 0, !dbg !4320
  %33 = load i8*, i8** %source, align 1, !dbg !4320
  %tobool24 = icmp ne i8* %33, null, !dbg !4318
  br i1 %tobool24, label %if.then25, label %if.end32, !dbg !4321

if.then25:                                        ; preds = %if.end23
  %34 = load %struct.art*, %struct.art** %art, align 8, !dbg !4322
  %source26 = getelementptr inbounds %struct.art, %struct.art* %34, i32 0, i32 0, !dbg !4324
  %35 = load i8*, i8** %source26, align 1, !dbg !4324
  %call27 = call i32 @acpi_bus_get_device(i8* %35, %struct.acpi_device** %adev) #10, !dbg !4325
  store i32 %call27, i32* %result, align 4, !dbg !4326
  %36 = load i32, i32* %result, align 4, !dbg !4327
  %tobool28 = icmp ne i32 %36, 0, !dbg !4327
  br i1 %tobool28, label %if.then29, label %if.end31, !dbg !4329

if.then29:                                        ; preds = %if.then25
  %call30 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0)) #11, !dbg !4330
  br label %if.end31, !dbg !4330

if.end31:                                         ; preds = %if.then29, %if.then25
  br label %if.end32, !dbg !4331

if.end32:                                         ; preds = %if.end31, %if.end23
  %37 = load %struct.art*, %struct.art** %art, align 8, !dbg !4332
  %target = getelementptr inbounds %struct.art, %struct.art* %37, i32 0, i32 1, !dbg !4334
  %38 = load i8*, i8** %target, align 1, !dbg !4334
  %tobool33 = icmp ne i8* %38, null, !dbg !4332
  br i1 %tobool33, label %if.then34, label %if.end41, !dbg !4335

if.then34:                                        ; preds = %if.end32
  %39 = load %struct.art*, %struct.art** %art, align 8, !dbg !4336
  %target35 = getelementptr inbounds %struct.art, %struct.art* %39, i32 0, i32 1, !dbg !4338
  %40 = load i8*, i8** %target35, align 1, !dbg !4338
  %call36 = call i32 @acpi_bus_get_device(i8* %40, %struct.acpi_device** %adev) #10, !dbg !4339
  store i32 %call36, i32* %result, align 4, !dbg !4340
  %41 = load i32, i32* %result, align 4, !dbg !4341
  %tobool37 = icmp ne i32 %41, 0, !dbg !4341
  br i1 %tobool37, label %if.then38, label %if.end40, !dbg !4343

if.then38:                                        ; preds = %if.then34
  %call39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0)) #11, !dbg !4344
  br label %if.end40, !dbg !4344

if.end40:                                         ; preds = %if.then38, %if.then34
  br label %if.end41, !dbg !4345

if.end41:                                         ; preds = %if.end40, %if.end32
  br label %for.inc, !dbg !4346

for.inc:                                          ; preds = %if.end41, %if.then22, %if.then18
  %42 = load i32, i32* %i, align 4, !dbg !4347
  %inc42 = add i32 %42, 1, !dbg !4347
  store i32 %inc42, i32* %i, align 4, !dbg !4347
  br label %for.cond, !dbg !4348, !llvm.loop !4349

for.end:                                          ; preds = %for.cond
  %43 = load %struct.art*, %struct.art** %arts, align 8, !dbg !4351
  %44 = load %struct.art**, %struct.art*** %artp.addr, align 8, !dbg !4352
  store %struct.art* %43, %struct.art** %44, align 8, !dbg !4353
  %45 = load i32, i32* %nr_bad_entries, align 4, !dbg !4354
  %46 = load i32*, i32** %art_count.addr, align 8, !dbg !4355
  %47 = load i32, i32* %46, align 4, !dbg !4356
  %sub43 = sub i32 %47, %45, !dbg !4356
  store i32 %sub43, i32* %46, align 4, !dbg !4356
  br label %end, !dbg !4357

end:                                              ; preds = %for.end, %if.then7, %if.then2
  call void @llvm.dbg.label(metadata !4358), !dbg !4359
  %pointer44 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !4360
  %48 = load i8*, i8** %pointer44, align 8, !dbg !4360
  call void @kfree(i8* %48) #10, !dbg !4361
  %49 = load i32, i32* %result, align 4, !dbg !4362
  store i32 %49, i32* %retval, align 4, !dbg !4363
  br label %return, !dbg !4363

return:                                           ; preds = %end, %if.then
  %50 = load i32, i32* %retval, align 4, !dbg !4364
  ret i32 %50, !dbg !4364
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_thermal_rel_misc_device_add(i8* %handle) #0 !dbg !4365 {
entry:
  %handle.addr = alloca i8*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !4368, metadata !DIExpression()), !dbg !4369
  %0 = load i8*, i8** %handle.addr, align 8, !dbg !4370
  store i8* %0, i8** @acpi_thermal_rel_handle, align 8, !dbg !4371
  %call = call i32 @misc_register(%struct.miscdevice* @acpi_thermal_rel_misc_device) #10, !dbg !4372
  ret i32 %call, !dbg !4373
}

; Function Attrs: noredzone
declare dso_local i32 @misc_register(%struct.miscdevice*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @acpi_thermal_rel_misc_device_remove(i8* %handle) #0 !dbg !4374 {
entry:
  %handle.addr = alloca i8*, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !4375, metadata !DIExpression()), !dbg !4376
  call void @misc_deregister(%struct.miscdevice* @acpi_thermal_rel_misc_device) #10, !dbg !4377
  ret i32 0, !dbg !4378
}

; Function Attrs: noredzone
declare dso_local void @misc_deregister(%struct.miscdevice*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !4379 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4380, metadata !DIExpression()), !dbg !4384
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4393, metadata !DIExpression()), !dbg !4394
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4395, metadata !DIExpression()), !dbg !4396
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4397, metadata !DIExpression()), !dbg !4398
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4399, metadata !DIExpression()), !dbg !4403
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4405, metadata !DIExpression()), !dbg !4409
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4411, metadata !DIExpression()), !dbg !4415
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4420, metadata !DIExpression()), !dbg !4421
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4422, metadata !DIExpression()), !dbg !4423
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4424, metadata !DIExpression()), !dbg !4425
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4426, metadata !DIExpression()), !dbg !4427
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4428, metadata !DIExpression()), !dbg !4429
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4430, metadata !DIExpression()), !dbg !4431
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4432, metadata !DIExpression()), !dbg !4433
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4434, metadata !DIExpression()), !dbg !4435
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4436, metadata !DIExpression()), !dbg !4437
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4438, metadata !DIExpression()), !dbg !4439
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4440, metadata !DIExpression()), !dbg !4441
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !4442, metadata !DIExpression()), !dbg !4443
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !4444, metadata !DIExpression()), !dbg !4447
  %0 = load i64, i64* %n.addr, align 8, !dbg !4447
  store i64 %0, i64* %__a, align 8, !dbg !4447
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !4448, metadata !DIExpression()), !dbg !4447
  %1 = load i64, i64* %size.addr, align 8, !dbg !4447
  store i64 %1, i64* %__b, align 8, !dbg !4447
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !4449, metadata !DIExpression()), !dbg !4447
  store i64* %bytes, i64** %__d, align 8, !dbg !4447
  %cmp = icmp eq i64* %__a, %__b, !dbg !4447
  %conv = zext i1 %cmp to i32, !dbg !4447
  %2 = load i64*, i64** %__d, align 8, !dbg !4447
  %cmp1 = icmp eq i64* %__a, %2, !dbg !4447
  %conv2 = zext i1 %cmp1 to i32, !dbg !4447
  %3 = load i64, i64* %__a, align 8, !dbg !4447
  %4 = load i64, i64* %__b, align 8, !dbg !4447
  %5 = load i64*, i64** %__d, align 8, !dbg !4447
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !4447
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !4447
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !4447
  store i64 %8, i64* %5, align 8, !dbg !4447
  %frombool = zext i1 %7 to i8, !dbg !4447
  store i8 %frombool, i8* %tmp, align 1, !dbg !4447
  %9 = load i8, i8* %tmp, align 1, !dbg !4447
  %tobool = trunc i8 %9 to i1, !dbg !4447
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #10, !dbg !4451
  %lnot = xor i1 %call, true, !dbg !4451
  %lnot3 = xor i1 %lnot, true, !dbg !4451
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !4451
  %conv4 = sext i32 %lnot.ext to i64, !dbg !4451
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !4451
  br i1 %tobool5, label %if.then, label %if.end, !dbg !4452

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !4453
  br label %return, !dbg !4453

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !4454
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !4455
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !4456

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !4457
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4458
  br i1 %13, label %if.then6, label %if.end8, !dbg !4459

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !4460
  %15 = load i32, i32* %flags.addr, align 4, !dbg !4461
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !4462
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #9, !dbg !4463
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !4464

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !4465
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !4466
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !4467

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !4468
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !4469
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !4470
  %call.i.i = call i32 @get_order(i64 %21) #12, !dbg !4471
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !4429
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !4472
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !4473
  %24 = load i32, i32* %order.i.i, align 4, !dbg !4474
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !4475
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !4476
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !4477
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #13, !dbg !4478
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !4478
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !4478
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !4478
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !4478
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !4479
  br label %kmalloc.exit, !dbg !4479

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !4480
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4481
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !4481
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4483

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4484
  br label %kmalloc_index.exit.i, !dbg !4484

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4485
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !4487
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4488

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4489
  br label %kmalloc_index.exit.i, !dbg !4489

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4490
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !4492
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4493

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4494
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !4495
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4496

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4497
  br label %kmalloc_index.exit.i, !dbg !4497

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4498
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !4500
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4501

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4502
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !4503
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4504

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4505
  br label %kmalloc_index.exit.i, !dbg !4505

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4506
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !4508
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4509

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4510
  br label %kmalloc_index.exit.i, !dbg !4510

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4511
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !4513
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4514

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4515
  br label %kmalloc_index.exit.i, !dbg !4515

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4516
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !4518
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4519

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4520
  br label %kmalloc_index.exit.i, !dbg !4520

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4521
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !4523
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4524

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4525
  br label %kmalloc_index.exit.i, !dbg !4525

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4526
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !4528
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4529

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4530
  br label %kmalloc_index.exit.i, !dbg !4530

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4531
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !4533
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4534

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4535
  br label %kmalloc_index.exit.i, !dbg !4535

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4536
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !4538
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4539

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4540
  br label %kmalloc_index.exit.i, !dbg !4540

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4541
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !4543
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4544

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4545
  br label %kmalloc_index.exit.i, !dbg !4545

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4546
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !4548
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4549

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4550
  br label %kmalloc_index.exit.i, !dbg !4550

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4551
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !4553
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4554

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4555
  br label %kmalloc_index.exit.i, !dbg !4555

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4556
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !4558
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4559

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4560
  br label %kmalloc_index.exit.i, !dbg !4560

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4561
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !4563
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4564

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4565
  br label %kmalloc_index.exit.i, !dbg !4565

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4566
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !4568
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4569

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4570
  br label %kmalloc_index.exit.i, !dbg !4570

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4571
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !4573
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4574

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4575
  br label %kmalloc_index.exit.i, !dbg !4575

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4576
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !4578
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4579

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4580
  br label %kmalloc_index.exit.i, !dbg !4580

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4581
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !4583
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4584

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4585
  br label %kmalloc_index.exit.i, !dbg !4585

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4586
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !4588
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4589

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4590
  br label %kmalloc_index.exit.i, !dbg !4590

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4591
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !4593
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4594

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4595
  br label %kmalloc_index.exit.i, !dbg !4595

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4596
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !4598
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4599

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4600
  br label %kmalloc_index.exit.i, !dbg !4600

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4601
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !4603
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4604

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4605
  br label %kmalloc_index.exit.i, !dbg !4605

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4606
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !4608
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4609

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4610
  br label %kmalloc_index.exit.i, !dbg !4610

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4611
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !4613
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4614

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4615
  br label %kmalloc_index.exit.i, !dbg !4615

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4616
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !4618
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4619

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4620
  br label %kmalloc_index.exit.i, !dbg !4620

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4621
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !4623
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4624

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4625
  br label %kmalloc_index.exit.i, !dbg !4625

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4626, !srcloc !4629
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 161) #9, !dbg !4630, !srcloc !4633
  unreachable, !dbg !4634

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !4635
  store i32 %59, i32* %index.i, align 4, !dbg !4636
  %60 = load i32, i32* %index.i, align 4, !dbg !4637
  %tobool.i = icmp ne i32 %60, 0, !dbg !4637
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4639

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4640
  br label %kmalloc.exit, !dbg !4640

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !4641
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4642
  %and.i.i = and i32 %62, 17, !dbg !4642
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4642
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4642
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4642
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4642
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4644

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4645
  br label %kmalloc_type.exit.i, !dbg !4645

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4646
  %and2.i.i = and i32 %63, 1, !dbg !4647
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4646
  %64 = zext i1 %tobool3.i.i to i64, !dbg !4646
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4646
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4648
  br label %kmalloc_type.exit.i, !dbg !4648

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !4649
  %idxprom.i = zext i32 %65 to i64, !dbg !4650
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4650
  %66 = load i32, i32* %index.i, align 4, !dbg !4651
  %idxprom6.i = zext i32 %66 to i64, !dbg !4650
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4650
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4650
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !4652
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !4653
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4654
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4655
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #13, !dbg !4656
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4656
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4656
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4656
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4656
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !4398
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4657
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !4658
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4659
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4660
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #13, !dbg !4661
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4662
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !4663
  store i8* %76, i8** %retval.i, align 8, !dbg !4664
  br label %kmalloc.exit, !dbg !4664

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !4665
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !4666
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #13, !dbg !4667
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4667
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4667
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4667
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4667
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4668
  br label %kmalloc.exit, !dbg !4668

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !4669
  store i8* %79, i8** %retval, align 8, !dbg !4670
  br label %return, !dbg !4670

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !4671
  %81 = load i32, i32* %flags.addr, align 4, !dbg !4672
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #10, !dbg !4673
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !4673
  %maskedptr = and i64 %ptrint, 7, !dbg !4673
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !4673
  call void @llvm.assume(i1 %maskcond), !dbg !4673
  store i8* %call9, i8** %retval, align 8, !dbg !4674
  br label %return, !dbg !4674

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !4675
  ret i8* %82, !dbg !4675
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !4676 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !4680, metadata !DIExpression()), !dbg !4681
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !4682
  %tobool = trunc i8 %0 to i1, !dbg !4682
  %lnot = xor i1 %tobool, true, !dbg !4682
  %lnot1 = xor i1 %lnot, true, !dbg !4682
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4682
  %conv = sext i32 %lnot.ext to i64, !dbg !4682
  %tobool2 = icmp ne i64 %conv, 0, !dbg !4682
  ret i1 %tobool2, !dbg !4683
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4684 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4688, metadata !DIExpression()), !dbg !4693
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4695, metadata !DIExpression()), !dbg !4696
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4697, metadata !DIExpression()), !dbg !4698
  %0 = load i64, i64* %size.addr, align 8, !dbg !4699
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4701
  br i1 %1, label %if.then, label %if.end447, !dbg !4702

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4703
  %tobool = icmp ne i64 %2, 0, !dbg !4703
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4706

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4707
  br label %return, !dbg !4707

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4708
  %cmp = icmp ult i64 %3, 4096, !dbg !4710
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4711

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4712
  br label %return, !dbg !4712

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub = sub i64 %4, 1, !dbg !4713
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4713
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4713

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub4 = sub i64 %6, 1, !dbg !4713
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4713
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4713

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub6 = sub i64 %8, 1, !dbg !4713
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4713
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4713

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4713

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub9 = sub i64 %9, 1, !dbg !4713
  %and = and i64 %sub9, -9223372036854775808, !dbg !4713
  %tobool10 = icmp ne i64 %and, 0, !dbg !4713
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4713

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4713

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub13 = sub i64 %10, 1, !dbg !4713
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4713
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4713
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4713

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4713

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub18 = sub i64 %11, 1, !dbg !4713
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4713
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4713
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4713

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4713

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub23 = sub i64 %12, 1, !dbg !4713
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4713
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4713
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4713

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4713

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub28 = sub i64 %13, 1, !dbg !4713
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4713
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4713
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4713

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4713

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub33 = sub i64 %14, 1, !dbg !4713
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4713
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4713
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4713

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4713

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub38 = sub i64 %15, 1, !dbg !4713
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4713
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4713
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4713

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4713

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub43 = sub i64 %16, 1, !dbg !4713
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4713
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4713
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4713

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4713

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub48 = sub i64 %17, 1, !dbg !4713
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4713
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4713
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4713

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4713

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub53 = sub i64 %18, 1, !dbg !4713
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4713
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4713
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4713

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4713

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub58 = sub i64 %19, 1, !dbg !4713
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4713
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4713
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4713

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4713

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub63 = sub i64 %20, 1, !dbg !4713
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4713
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4713
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4713

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4713

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub68 = sub i64 %21, 1, !dbg !4713
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4713
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4713
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4713

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4713

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub73 = sub i64 %22, 1, !dbg !4713
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4713
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4713
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4713

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4713

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub78 = sub i64 %23, 1, !dbg !4713
  %and79 = and i64 %sub78, 562949953421312, !dbg !4713
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4713
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4713

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4713

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub83 = sub i64 %24, 1, !dbg !4713
  %and84 = and i64 %sub83, 281474976710656, !dbg !4713
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4713
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4713

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4713

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub88 = sub i64 %25, 1, !dbg !4713
  %and89 = and i64 %sub88, 140737488355328, !dbg !4713
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4713
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4713

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4713

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub93 = sub i64 %26, 1, !dbg !4713
  %and94 = and i64 %sub93, 70368744177664, !dbg !4713
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4713
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4713

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4713

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub98 = sub i64 %27, 1, !dbg !4713
  %and99 = and i64 %sub98, 35184372088832, !dbg !4713
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4713
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4713

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4713

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub103 = sub i64 %28, 1, !dbg !4713
  %and104 = and i64 %sub103, 17592186044416, !dbg !4713
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4713
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4713

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4713

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub108 = sub i64 %29, 1, !dbg !4713
  %and109 = and i64 %sub108, 8796093022208, !dbg !4713
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4713
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4713

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4713

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub113 = sub i64 %30, 1, !dbg !4713
  %and114 = and i64 %sub113, 4398046511104, !dbg !4713
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4713
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4713

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4713

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub118 = sub i64 %31, 1, !dbg !4713
  %and119 = and i64 %sub118, 2199023255552, !dbg !4713
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4713
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4713

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4713

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub123 = sub i64 %32, 1, !dbg !4713
  %and124 = and i64 %sub123, 1099511627776, !dbg !4713
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4713
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4713

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4713

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub128 = sub i64 %33, 1, !dbg !4713
  %and129 = and i64 %sub128, 549755813888, !dbg !4713
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4713
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4713

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4713

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub133 = sub i64 %34, 1, !dbg !4713
  %and134 = and i64 %sub133, 274877906944, !dbg !4713
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4713
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4713

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4713

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub138 = sub i64 %35, 1, !dbg !4713
  %and139 = and i64 %sub138, 137438953472, !dbg !4713
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4713
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4713

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4713

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub143 = sub i64 %36, 1, !dbg !4713
  %and144 = and i64 %sub143, 68719476736, !dbg !4713
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4713
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4713

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4713

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub148 = sub i64 %37, 1, !dbg !4713
  %and149 = and i64 %sub148, 34359738368, !dbg !4713
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4713
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4713

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4713

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub153 = sub i64 %38, 1, !dbg !4713
  %and154 = and i64 %sub153, 17179869184, !dbg !4713
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4713
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4713

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4713

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub158 = sub i64 %39, 1, !dbg !4713
  %and159 = and i64 %sub158, 8589934592, !dbg !4713
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4713
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4713

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4713

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub163 = sub i64 %40, 1, !dbg !4713
  %and164 = and i64 %sub163, 4294967296, !dbg !4713
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4713
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4713

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4713

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub168 = sub i64 %41, 1, !dbg !4713
  %and169 = and i64 %sub168, 2147483648, !dbg !4713
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4713
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4713

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4713

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub173 = sub i64 %42, 1, !dbg !4713
  %and174 = and i64 %sub173, 1073741824, !dbg !4713
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4713
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4713

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4713

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub178 = sub i64 %43, 1, !dbg !4713
  %and179 = and i64 %sub178, 536870912, !dbg !4713
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4713
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4713

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4713

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub183 = sub i64 %44, 1, !dbg !4713
  %and184 = and i64 %sub183, 268435456, !dbg !4713
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4713
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4713

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4713

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub188 = sub i64 %45, 1, !dbg !4713
  %and189 = and i64 %sub188, 134217728, !dbg !4713
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4713
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4713

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4713

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub193 = sub i64 %46, 1, !dbg !4713
  %and194 = and i64 %sub193, 67108864, !dbg !4713
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4713
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4713

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4713

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub198 = sub i64 %47, 1, !dbg !4713
  %and199 = and i64 %sub198, 33554432, !dbg !4713
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4713
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4713

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4713

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub203 = sub i64 %48, 1, !dbg !4713
  %and204 = and i64 %sub203, 16777216, !dbg !4713
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4713
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4713

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4713

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub208 = sub i64 %49, 1, !dbg !4713
  %and209 = and i64 %sub208, 8388608, !dbg !4713
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4713
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4713

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4713

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub213 = sub i64 %50, 1, !dbg !4713
  %and214 = and i64 %sub213, 4194304, !dbg !4713
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4713
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4713

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4713

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub218 = sub i64 %51, 1, !dbg !4713
  %and219 = and i64 %sub218, 2097152, !dbg !4713
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4713
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4713

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4713

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub223 = sub i64 %52, 1, !dbg !4713
  %and224 = and i64 %sub223, 1048576, !dbg !4713
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4713
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4713

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4713

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub228 = sub i64 %53, 1, !dbg !4713
  %and229 = and i64 %sub228, 524288, !dbg !4713
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4713
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4713

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4713

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub233 = sub i64 %54, 1, !dbg !4713
  %and234 = and i64 %sub233, 262144, !dbg !4713
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4713
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4713

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4713

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub238 = sub i64 %55, 1, !dbg !4713
  %and239 = and i64 %sub238, 131072, !dbg !4713
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4713
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4713

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4713

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub243 = sub i64 %56, 1, !dbg !4713
  %and244 = and i64 %sub243, 65536, !dbg !4713
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4713
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4713

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4713

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub248 = sub i64 %57, 1, !dbg !4713
  %and249 = and i64 %sub248, 32768, !dbg !4713
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4713
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4713

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4713

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub253 = sub i64 %58, 1, !dbg !4713
  %and254 = and i64 %sub253, 16384, !dbg !4713
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4713
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4713

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4713

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub258 = sub i64 %59, 1, !dbg !4713
  %and259 = and i64 %sub258, 8192, !dbg !4713
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4713
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4713

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4713

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub263 = sub i64 %60, 1, !dbg !4713
  %and264 = and i64 %sub263, 4096, !dbg !4713
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4713
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4713

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4713

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub268 = sub i64 %61, 1, !dbg !4713
  %and269 = and i64 %sub268, 2048, !dbg !4713
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4713
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4713

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4713

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub273 = sub i64 %62, 1, !dbg !4713
  %and274 = and i64 %sub273, 1024, !dbg !4713
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4713
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4713

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4713

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub278 = sub i64 %63, 1, !dbg !4713
  %and279 = and i64 %sub278, 512, !dbg !4713
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4713
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4713

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4713

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub283 = sub i64 %64, 1, !dbg !4713
  %and284 = and i64 %sub283, 256, !dbg !4713
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4713
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4713

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4713

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub288 = sub i64 %65, 1, !dbg !4713
  %and289 = and i64 %sub288, 128, !dbg !4713
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4713
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4713

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4713

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub293 = sub i64 %66, 1, !dbg !4713
  %and294 = and i64 %sub293, 64, !dbg !4713
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4713
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4713

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4713

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub298 = sub i64 %67, 1, !dbg !4713
  %and299 = and i64 %sub298, 32, !dbg !4713
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4713
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4713

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4713

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub303 = sub i64 %68, 1, !dbg !4713
  %and304 = and i64 %sub303, 16, !dbg !4713
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4713
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4713

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4713

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub308 = sub i64 %69, 1, !dbg !4713
  %and309 = and i64 %sub308, 8, !dbg !4713
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4713
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4713

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4713

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub313 = sub i64 %70, 1, !dbg !4713
  %and314 = and i64 %sub313, 4, !dbg !4713
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4713
  %71 = zext i1 %tobool315 to i64, !dbg !4713
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4713
  br label %cond.end, !dbg !4713

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4713
  br label %cond.end317, !dbg !4713

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4713
  br label %cond.end319, !dbg !4713

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4713
  br label %cond.end321, !dbg !4713

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4713
  br label %cond.end323, !dbg !4713

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4713
  br label %cond.end325, !dbg !4713

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4713
  br label %cond.end327, !dbg !4713

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4713
  br label %cond.end329, !dbg !4713

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4713
  br label %cond.end331, !dbg !4713

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4713
  br label %cond.end333, !dbg !4713

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4713
  br label %cond.end335, !dbg !4713

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4713
  br label %cond.end337, !dbg !4713

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4713
  br label %cond.end339, !dbg !4713

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4713
  br label %cond.end341, !dbg !4713

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4713
  br label %cond.end343, !dbg !4713

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4713
  br label %cond.end345, !dbg !4713

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4713
  br label %cond.end347, !dbg !4713

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4713
  br label %cond.end349, !dbg !4713

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4713
  br label %cond.end351, !dbg !4713

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4713
  br label %cond.end353, !dbg !4713

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4713
  br label %cond.end355, !dbg !4713

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4713
  br label %cond.end357, !dbg !4713

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4713
  br label %cond.end359, !dbg !4713

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4713
  br label %cond.end361, !dbg !4713

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4713
  br label %cond.end363, !dbg !4713

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4713
  br label %cond.end365, !dbg !4713

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4713
  br label %cond.end367, !dbg !4713

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4713
  br label %cond.end369, !dbg !4713

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4713
  br label %cond.end371, !dbg !4713

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4713
  br label %cond.end373, !dbg !4713

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4713
  br label %cond.end375, !dbg !4713

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4713
  br label %cond.end377, !dbg !4713

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4713
  br label %cond.end379, !dbg !4713

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4713
  br label %cond.end381, !dbg !4713

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4713
  br label %cond.end383, !dbg !4713

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4713
  br label %cond.end385, !dbg !4713

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4713
  br label %cond.end387, !dbg !4713

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4713
  br label %cond.end389, !dbg !4713

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4713
  br label %cond.end391, !dbg !4713

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4713
  br label %cond.end393, !dbg !4713

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4713
  br label %cond.end395, !dbg !4713

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4713
  br label %cond.end397, !dbg !4713

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4713
  br label %cond.end399, !dbg !4713

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4713
  br label %cond.end401, !dbg !4713

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4713
  br label %cond.end403, !dbg !4713

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4713
  br label %cond.end405, !dbg !4713

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4713
  br label %cond.end407, !dbg !4713

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4713
  br label %cond.end409, !dbg !4713

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4713
  br label %cond.end411, !dbg !4713

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4713
  br label %cond.end413, !dbg !4713

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4713
  br label %cond.end415, !dbg !4713

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4713
  br label %cond.end417, !dbg !4713

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4713
  br label %cond.end419, !dbg !4713

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4713
  br label %cond.end421, !dbg !4713

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4713
  br label %cond.end423, !dbg !4713

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4713
  br label %cond.end425, !dbg !4713

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4713
  br label %cond.end427, !dbg !4713

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4713
  br label %cond.end429, !dbg !4713

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4713
  br label %cond.end431, !dbg !4713

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4713
  br label %cond.end433, !dbg !4713

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4713
  br label %cond.end435, !dbg !4713

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4713
  br label %cond.end437, !dbg !4713

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4713
  br label %cond.end440, !dbg !4713

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4713

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4713
  br label %cond.end444, !dbg !4713

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4713
  %sub443 = sub i64 %72, 1, !dbg !4713
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !4713
  br label %cond.end444, !dbg !4713

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4713
  %sub446 = sub i32 %cond445, 12, !dbg !4714
  %add = add i32 %sub446, 1, !dbg !4715
  store i32 %add, i32* %retval, align 4, !dbg !4716
  br label %return, !dbg !4716

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4717
  %dec = add i64 %73, -1, !dbg !4717
  store i64 %dec, i64* %size.addr, align 8, !dbg !4717
  %74 = load i64, i64* %size.addr, align 8, !dbg !4718
  %shr = lshr i64 %74, 12, !dbg !4718
  store i64 %shr, i64* %size.addr, align 8, !dbg !4718
  %75 = load i64, i64* %size.addr, align 8, !dbg !4719
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4696
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4720
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4721
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #8, !dbg !4720, !srcloc !4722
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4720
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4723
  %add.i = add i32 %79, 1, !dbg !4724
  store i32 %add.i, i32* %retval, align 4, !dbg !4725
  br label %return, !dbg !4725

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4726
  ret i32 %80, !dbg !4726
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4727 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4688, metadata !DIExpression()), !dbg !4731
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4695, metadata !DIExpression()), !dbg !4733
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4734, metadata !DIExpression()), !dbg !4735
  %0 = load i64, i64* %n.addr, align 8, !dbg !4736
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4733
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4737
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4738
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #8, !dbg !4737, !srcloc !4722
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4737
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4739
  %add.i = add i32 %4, 1, !dbg !4740
  %sub = sub i32 %add.i, 1, !dbg !4741
  ret i32 %sub, !dbg !4742
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4743 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4747, metadata !DIExpression()), !dbg !4748
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4749, metadata !DIExpression()), !dbg !4750
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4751, metadata !DIExpression()), !dbg !4752
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4753, metadata !DIExpression()), !dbg !4754
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4755
  ret i8* %0, !dbg !4756
}

; Function Attrs: noredzone
declare dso_local i64 @no_llseek(%struct.file*, i64, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @acpi_thermal_rel_ioctl(%struct.file* %f, i32 %cmd, i64 %__arg) #0 !dbg !4757 {
entry:
  %retval = alloca i64, align 8
  %f.addr = alloca %struct.file*, align 8
  %cmd.addr = alloca i32, align 4
  %__arg.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %length = alloca i64, align 8
  %count = alloca i32, align 4
  %arg = alloca i8*, align 8
  %trts = alloca %struct.trt*, align 8
  %arts = alloca %struct.art*, align 8
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca i8*, align 8
  %__val_pu = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  %tmp10 = alloca i64, align 8
  %__ret_pu11 = alloca i32, align 4
  %__ptr_pu12 = alloca i8*, align 8
  %__val_pu13 = alloca i64, align 8
  %tmp16 = alloca i64, align 8
  %tmp27 = alloca i64, align 8
  %__ret_pu28 = alloca i32, align 4
  %__ptr_pu29 = alloca i8*, align 8
  %__val_pu30 = alloca i64, align 8
  %tmp34 = alloca i64, align 8
  %tmp44 = alloca i64, align 8
  %__ret_pu45 = alloca i32, align 4
  %__ptr_pu46 = alloca i8*, align 8
  %__val_pu47 = alloca i64, align 8
  %tmp50 = alloca i64, align 8
  store %struct.file* %f, %struct.file** %f.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %f.addr, metadata !4758, metadata !DIExpression()), !dbg !4759
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !4760, metadata !DIExpression()), !dbg !4761
  store i64 %__arg, i64* %__arg.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %__arg.addr, metadata !4762, metadata !DIExpression()), !dbg !4763
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4764, metadata !DIExpression()), !dbg !4765
  store i32 0, i32* %ret, align 4, !dbg !4765
  call void @llvm.dbg.declare(metadata i64* %length, metadata !4766, metadata !DIExpression()), !dbg !4767
  store i64 0, i64* %length, align 8, !dbg !4767
  call void @llvm.dbg.declare(metadata i32* %count, metadata !4768, metadata !DIExpression()), !dbg !4769
  store i32 0, i32* %count, align 4, !dbg !4769
  call void @llvm.dbg.declare(metadata i8** %arg, metadata !4770, metadata !DIExpression()), !dbg !4771
  %0 = load i64, i64* %__arg.addr, align 8, !dbg !4772
  %1 = inttoptr i64 %0 to i8*, !dbg !4773
  store i8* %1, i8** %arg, align 8, !dbg !4771
  call void @llvm.dbg.declare(metadata %struct.trt** %trts, metadata !4774, metadata !DIExpression()), !dbg !4775
  store %struct.trt* null, %struct.trt** %trts, align 8, !dbg !4775
  call void @llvm.dbg.declare(metadata %struct.art** %arts, metadata !4776, metadata !DIExpression()), !dbg !4777
  store %struct.art* null, %struct.art** %arts, align 8, !dbg !4777
  %2 = load i32, i32* %cmd.addr, align 4, !dbg !4778
  switch i32 %2, label %sw.default [
    i32 -2146929917, label %sw.bb
    i32 -2146929919, label %sw.bb5
    i32 -2146929915, label %sw.bb20
    i32 -2146929916, label %sw.bb23
    i32 -2146929918, label %sw.bb38
    i32 -2146929914, label %sw.bb54
  ], !dbg !4779

sw.bb:                                            ; preds = %entry
  %3 = load i8*, i8** @acpi_thermal_rel_handle, align 8, !dbg !4780
  %call = call i32 @acpi_parse_trt(i8* %3, i32* %count, %struct.trt** %trts, i1 zeroext false) #10, !dbg !4782
  store i32 %call, i32* %ret, align 4, !dbg !4783
  %4 = load %struct.trt*, %struct.trt** %trts, align 8, !dbg !4784
  %5 = bitcast %struct.trt* %4 to i8*, !dbg !4784
  call void @kfree(i8* %5) #10, !dbg !4785
  %6 = load i32, i32* %ret, align 4, !dbg !4786
  %tobool = icmp ne i32 %6, 0, !dbg !4786
  br i1 %tobool, label %if.end, label %if.then, !dbg !4788

if.then:                                          ; preds = %sw.bb
  call void @might_fault() #10, !dbg !4789
  call void @llvm.dbg.declare(metadata i32* %__ret_pu, metadata !4791, metadata !DIExpression()), !dbg !4793
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu, metadata !4794, metadata !DIExpression()), !dbg !4793
  call void @llvm.dbg.declare(metadata i64* %__val_pu, metadata !4795, metadata !DIExpression()), !dbg !4793
  %7 = load i64, i64* %__arg.addr, align 8, !dbg !4793
  %8 = inttoptr i64 %7 to i64*, !dbg !4793
  %9 = bitcast i64* %8 to i8*, !dbg !4793
  store i8* %9, i8** %__ptr_pu, align 8, !dbg !4793
  %10 = load i32, i32* %count, align 4, !dbg !4793
  %conv = sext i32 %10 to i64, !dbg !4793
  store i64 %conv, i64* %__val_pu, align 8, !dbg !4793
  %11 = call i64 @llvm.read_register.i64(metadata !3733), !dbg !4793
  %12 = load i8*, i8** %__ptr_pu, align 8, !dbg !4793
  %13 = load i64, i64* %__val_pu, align 8, !dbg !4793
  %14 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %12, i64 %13, i64 8, i64 %11) #9, !dbg !4793, !srcloc !4796
  %asmresult = extractvalue { i8*, i64 } %14, 0, !dbg !4793
  %asmresult1 = extractvalue { i8*, i64 } %14, 1, !dbg !4793
  %15 = ptrtoint i8* %asmresult to i64, !dbg !4793
  %16 = trunc i64 %15 to i32, !dbg !4793
  store i32 %16, i32* %__ret_pu, align 4, !dbg !4793
  call void @llvm.write_register.i64(metadata !3733, i64 %asmresult1), !dbg !4793
  %17 = load i32, i32* %__ret_pu, align 4, !dbg !4793
  %conv3 = sext i32 %17 to i64, !dbg !4793
  store i64 %conv3, i64* %tmp2, align 8, !dbg !4793
  %18 = load i64, i64* %tmp2, align 8, !dbg !4793
  store i64 %18, i64* %tmp, align 8, !dbg !4789
  %19 = load i64, i64* %tmp, align 8, !dbg !4789
  store i64 %19, i64* %retval, align 8, !dbg !4797
  br label %return, !dbg !4797

if.end:                                           ; preds = %sw.bb
  %20 = load i32, i32* %ret, align 4, !dbg !4798
  %conv4 = sext i32 %20 to i64, !dbg !4798
  store i64 %conv4, i64* %retval, align 8, !dbg !4799
  br label %return, !dbg !4799

sw.bb5:                                           ; preds = %entry
  %21 = load i8*, i8** @acpi_thermal_rel_handle, align 8, !dbg !4800
  %call6 = call i32 @acpi_parse_trt(i8* %21, i32* %count, %struct.trt** %trts, i1 zeroext false) #10, !dbg !4801
  store i32 %call6, i32* %ret, align 4, !dbg !4802
  %22 = load %struct.trt*, %struct.trt** %trts, align 8, !dbg !4803
  %23 = bitcast %struct.trt* %22 to i8*, !dbg !4803
  call void @kfree(i8* %23) #10, !dbg !4804
  %24 = load i32, i32* %count, align 4, !dbg !4805
  %conv7 = sext i32 %24 to i64, !dbg !4805
  %mul = mul i64 %conv7, 64, !dbg !4806
  store i64 %mul, i64* %length, align 8, !dbg !4807
  %25 = load i32, i32* %ret, align 4, !dbg !4808
  %tobool8 = icmp ne i32 %25, 0, !dbg !4808
  br i1 %tobool8, label %if.end18, label %if.then9, !dbg !4810

if.then9:                                         ; preds = %sw.bb5
  call void @might_fault() #10, !dbg !4811
  call void @llvm.dbg.declare(metadata i32* %__ret_pu11, metadata !4813, metadata !DIExpression()), !dbg !4815
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu12, metadata !4816, metadata !DIExpression()), !dbg !4815
  call void @llvm.dbg.declare(metadata i64* %__val_pu13, metadata !4817, metadata !DIExpression()), !dbg !4815
  %26 = load i64, i64* %__arg.addr, align 8, !dbg !4815
  %27 = inttoptr i64 %26 to i64*, !dbg !4815
  %28 = bitcast i64* %27 to i8*, !dbg !4815
  store i8* %28, i8** %__ptr_pu12, align 8, !dbg !4815
  %29 = load i64, i64* %length, align 8, !dbg !4815
  store i64 %29, i64* %__val_pu13, align 8, !dbg !4815
  %30 = call i64 @llvm.read_register.i64(metadata !3733), !dbg !4815
  %31 = load i8*, i8** %__ptr_pu12, align 8, !dbg !4815
  %32 = load i64, i64* %__val_pu13, align 8, !dbg !4815
  %33 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %31, i64 %32, i64 8, i64 %30) #9, !dbg !4815, !srcloc !4818
  %asmresult14 = extractvalue { i8*, i64 } %33, 0, !dbg !4815
  %asmresult15 = extractvalue { i8*, i64 } %33, 1, !dbg !4815
  %34 = ptrtoint i8* %asmresult14 to i64, !dbg !4815
  %35 = trunc i64 %34 to i32, !dbg !4815
  store i32 %35, i32* %__ret_pu11, align 4, !dbg !4815
  call void @llvm.write_register.i64(metadata !3733, i64 %asmresult15), !dbg !4815
  %36 = load i32, i32* %__ret_pu11, align 4, !dbg !4815
  %conv17 = sext i32 %36 to i64, !dbg !4815
  store i64 %conv17, i64* %tmp16, align 8, !dbg !4815
  %37 = load i64, i64* %tmp16, align 8, !dbg !4815
  store i64 %37, i64* %tmp10, align 8, !dbg !4811
  %38 = load i64, i64* %tmp10, align 8, !dbg !4811
  store i64 %38, i64* %retval, align 8, !dbg !4819
  br label %return, !dbg !4819

if.end18:                                         ; preds = %sw.bb5
  %39 = load i32, i32* %ret, align 4, !dbg !4820
  %conv19 = sext i32 %39 to i64, !dbg !4820
  store i64 %conv19, i64* %retval, align 8, !dbg !4821
  br label %return, !dbg !4821

sw.bb20:                                          ; preds = %entry
  %40 = load i8*, i8** %arg, align 8, !dbg !4822
  %call21 = call i32 @fill_trt(i8* %40) #10, !dbg !4823
  %conv22 = sext i32 %call21 to i64, !dbg !4823
  store i64 %conv22, i64* %retval, align 8, !dbg !4824
  br label %return, !dbg !4824

sw.bb23:                                          ; preds = %entry
  %41 = load i8*, i8** @acpi_thermal_rel_handle, align 8, !dbg !4825
  %call24 = call i32 @acpi_parse_art(i8* %41, i32* %count, %struct.art** %arts, i1 zeroext false) #10, !dbg !4826
  store i32 %call24, i32* %ret, align 4, !dbg !4827
  %42 = load %struct.art*, %struct.art** %arts, align 8, !dbg !4828
  %43 = bitcast %struct.art* %42 to i8*, !dbg !4828
  call void @kfree(i8* %43) #10, !dbg !4829
  %44 = load i32, i32* %ret, align 4, !dbg !4830
  %tobool25 = icmp ne i32 %44, 0, !dbg !4830
  br i1 %tobool25, label %if.end36, label %if.then26, !dbg !4832

if.then26:                                        ; preds = %sw.bb23
  call void @might_fault() #10, !dbg !4833
  call void @llvm.dbg.declare(metadata i32* %__ret_pu28, metadata !4835, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu29, metadata !4838, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.declare(metadata i64* %__val_pu30, metadata !4839, metadata !DIExpression()), !dbg !4837
  %45 = load i64, i64* %__arg.addr, align 8, !dbg !4837
  %46 = inttoptr i64 %45 to i64*, !dbg !4837
  %47 = bitcast i64* %46 to i8*, !dbg !4837
  store i8* %47, i8** %__ptr_pu29, align 8, !dbg !4837
  %48 = load i32, i32* %count, align 4, !dbg !4837
  %conv31 = sext i32 %48 to i64, !dbg !4837
  store i64 %conv31, i64* %__val_pu30, align 8, !dbg !4837
  %49 = call i64 @llvm.read_register.i64(metadata !3733), !dbg !4837
  %50 = load i8*, i8** %__ptr_pu29, align 8, !dbg !4837
  %51 = load i64, i64* %__val_pu30, align 8, !dbg !4837
  %52 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %50, i64 %51, i64 8, i64 %49) #9, !dbg !4837, !srcloc !4840
  %asmresult32 = extractvalue { i8*, i64 } %52, 0, !dbg !4837
  %asmresult33 = extractvalue { i8*, i64 } %52, 1, !dbg !4837
  %53 = ptrtoint i8* %asmresult32 to i64, !dbg !4837
  %54 = trunc i64 %53 to i32, !dbg !4837
  store i32 %54, i32* %__ret_pu28, align 4, !dbg !4837
  call void @llvm.write_register.i64(metadata !3733, i64 %asmresult33), !dbg !4837
  %55 = load i32, i32* %__ret_pu28, align 4, !dbg !4837
  %conv35 = sext i32 %55 to i64, !dbg !4837
  store i64 %conv35, i64* %tmp34, align 8, !dbg !4837
  %56 = load i64, i64* %tmp34, align 8, !dbg !4837
  store i64 %56, i64* %tmp27, align 8, !dbg !4833
  %57 = load i64, i64* %tmp27, align 8, !dbg !4833
  store i64 %57, i64* %retval, align 8, !dbg !4841
  br label %return, !dbg !4841

if.end36:                                         ; preds = %sw.bb23
  %58 = load i32, i32* %ret, align 4, !dbg !4842
  %conv37 = sext i32 %58 to i64, !dbg !4842
  store i64 %conv37, i64* %retval, align 8, !dbg !4843
  br label %return, !dbg !4843

sw.bb38:                                          ; preds = %entry
  %59 = load i8*, i8** @acpi_thermal_rel_handle, align 8, !dbg !4844
  %call39 = call i32 @acpi_parse_art(i8* %59, i32* %count, %struct.art** %arts, i1 zeroext false) #10, !dbg !4845
  store i32 %call39, i32* %ret, align 4, !dbg !4846
  %60 = load %struct.art*, %struct.art** %arts, align 8, !dbg !4847
  %61 = bitcast %struct.art* %60 to i8*, !dbg !4847
  call void @kfree(i8* %61) #10, !dbg !4848
  %62 = load i32, i32* %count, align 4, !dbg !4849
  %conv40 = sext i32 %62 to i64, !dbg !4849
  %mul41 = mul i64 %conv40, 104, !dbg !4850
  store i64 %mul41, i64* %length, align 8, !dbg !4851
  %63 = load i32, i32* %ret, align 4, !dbg !4852
  %tobool42 = icmp ne i32 %63, 0, !dbg !4852
  br i1 %tobool42, label %if.end52, label %if.then43, !dbg !4854

if.then43:                                        ; preds = %sw.bb38
  call void @might_fault() #10, !dbg !4855
  call void @llvm.dbg.declare(metadata i32* %__ret_pu45, metadata !4857, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.declare(metadata i8** %__ptr_pu46, metadata !4860, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.declare(metadata i64* %__val_pu47, metadata !4861, metadata !DIExpression()), !dbg !4859
  %64 = load i64, i64* %__arg.addr, align 8, !dbg !4859
  %65 = inttoptr i64 %64 to i64*, !dbg !4859
  %66 = bitcast i64* %65 to i8*, !dbg !4859
  store i8* %66, i8** %__ptr_pu46, align 8, !dbg !4859
  %67 = load i64, i64* %length, align 8, !dbg !4859
  store i64 %67, i64* %__val_pu47, align 8, !dbg !4859
  %68 = call i64 @llvm.read_register.i64(metadata !3733), !dbg !4859
  %69 = load i8*, i8** %__ptr_pu46, align 8, !dbg !4859
  %70 = load i64, i64* %__val_pu47, align 8, !dbg !4859
  %71 = call { i8*, i64 } asm sideeffect "call __put_user_${4:P}", "={cx},={rsp},0,{rax},i,1,~{ebx},~{dirflag},~{fpsr},~{flags}"(i8* %69, i64 %70, i64 8, i64 %68) #9, !dbg !4859, !srcloc !4862
  %asmresult48 = extractvalue { i8*, i64 } %71, 0, !dbg !4859
  %asmresult49 = extractvalue { i8*, i64 } %71, 1, !dbg !4859
  %72 = ptrtoint i8* %asmresult48 to i64, !dbg !4859
  %73 = trunc i64 %72 to i32, !dbg !4859
  store i32 %73, i32* %__ret_pu45, align 4, !dbg !4859
  call void @llvm.write_register.i64(metadata !3733, i64 %asmresult49), !dbg !4859
  %74 = load i32, i32* %__ret_pu45, align 4, !dbg !4859
  %conv51 = sext i32 %74 to i64, !dbg !4859
  store i64 %conv51, i64* %tmp50, align 8, !dbg !4859
  %75 = load i64, i64* %tmp50, align 8, !dbg !4859
  store i64 %75, i64* %tmp44, align 8, !dbg !4855
  %76 = load i64, i64* %tmp44, align 8, !dbg !4855
  store i64 %76, i64* %retval, align 8, !dbg !4863
  br label %return, !dbg !4863

if.end52:                                         ; preds = %sw.bb38
  %77 = load i32, i32* %ret, align 4, !dbg !4864
  %conv53 = sext i32 %77 to i64, !dbg !4864
  store i64 %conv53, i64* %retval, align 8, !dbg !4865
  br label %return, !dbg !4865

sw.bb54:                                          ; preds = %entry
  %78 = load i8*, i8** %arg, align 8, !dbg !4866
  %call55 = call i32 @fill_art(i8* %78) #10, !dbg !4867
  %conv56 = sext i32 %call55 to i64, !dbg !4867
  store i64 %conv56, i64* %retval, align 8, !dbg !4868
  br label %return, !dbg !4868

sw.default:                                       ; preds = %entry
  store i64 -25, i64* %retval, align 8, !dbg !4869
  br label %return, !dbg !4869

return:                                           ; preds = %sw.default, %sw.bb54, %if.end52, %if.then43, %if.end36, %if.then26, %sw.bb20, %if.end18, %if.then9, %if.end, %if.then
  %79 = load i64, i64* %retval, align 8, !dbg !4870
  ret i64 %79, !dbg !4870
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_thermal_rel_open(%struct.inode* %inode, %struct.file* %file) #0 !dbg !4871 {
entry:
  %lock.addr.i10 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i10, metadata !4872, metadata !DIExpression()), !dbg !4878
  %lock.addr.i8 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i8, metadata !4872, metadata !DIExpression()), !dbg !4880
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4884, metadata !DIExpression()), !dbg !4886
  %retval = alloca i32, align 4
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4888, metadata !DIExpression()), !dbg !4889
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4890, metadata !DIExpression()), !dbg !4891
  store %struct.spinlock* @acpi_thermal_rel_chrdev_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4892, !srcloc !4894
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4895
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !4895
  %rlock.i = bitcast %union.anon.3* %1 to %struct.raw_spinlock*, !dbg !4895
  %2 = load i32, i32* @acpi_thermal_rel_chrdev_exclu, align 4, !dbg !4897
  %tobool = icmp ne i32 %2, 0, !dbg !4897
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !4898

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* @acpi_thermal_rel_chrdev_count, align 4, !dbg !4899
  %tobool1 = icmp ne i32 %3, 0, !dbg !4899
  br i1 %tobool1, label %land.lhs.true, label %if.end, !dbg !4900

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4901
  %f_flags = getelementptr inbounds %struct.file, %struct.file* %4, i32 0, i32 7, !dbg !4902
  %5 = load i32, i32* %f_flags, align 8, !dbg !4902
  %and = and i32 %5, 128, !dbg !4903
  %tobool2 = icmp ne i32 %and, 0, !dbg !4903
  br i1 %tobool2, label %if.then, label %if.end, !dbg !4904

if.then:                                          ; preds = %land.lhs.true, %entry
  store %struct.spinlock* @acpi_thermal_rel_chrdev_lock, %struct.spinlock** %lock.addr.i8, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4905, !srcloc !4907
  %6 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i8, align 8, !dbg !4908
  %7 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %6, i32 0, i32 0, !dbg !4908
  %rlock.i9 = bitcast %union.anon.3* %7 to %struct.raw_spinlock*, !dbg !4908
  store i32 -16, i32* %retval, align 4, !dbg !4910
  br label %return, !dbg !4910

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %8 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4911
  %f_flags3 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 7, !dbg !4913
  %9 = load i32, i32* %f_flags3, align 8, !dbg !4913
  %and4 = and i32 %9, 128, !dbg !4914
  %tobool5 = icmp ne i32 %and4, 0, !dbg !4914
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !4915

if.then6:                                         ; preds = %if.end
  store i32 1, i32* @acpi_thermal_rel_chrdev_exclu, align 4, !dbg !4916
  br label %if.end7, !dbg !4917

if.end7:                                          ; preds = %if.then6, %if.end
  %10 = load i32, i32* @acpi_thermal_rel_chrdev_count, align 4, !dbg !4918
  %inc = add i32 %10, 1, !dbg !4918
  store i32 %inc, i32* @acpi_thermal_rel_chrdev_count, align 4, !dbg !4918
  store %struct.spinlock* @acpi_thermal_rel_chrdev_lock, %struct.spinlock** %lock.addr.i10, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4919, !srcloc !4907
  %11 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i10, align 8, !dbg !4920
  %12 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %11, i32 0, i32 0, !dbg !4920
  %rlock.i11 = bitcast %union.anon.3* %12 to %struct.raw_spinlock*, !dbg !4920
  %13 = load %struct.inode*, %struct.inode** %inode.addr, align 8, !dbg !4921
  %14 = load %struct.file*, %struct.file** %file.addr, align 8, !dbg !4922
  %call = call i32 @nonseekable_open(%struct.inode* %13, %struct.file* %14) #10, !dbg !4923
  store i32 %call, i32* %retval, align 4, !dbg !4924
  br label %return, !dbg !4924

return:                                           ; preds = %if.end7, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4925
  ret i32 %15, !dbg !4925
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @acpi_thermal_rel_release(%struct.inode* %inode, %struct.file* %file) #0 !dbg !4926 {
entry:
  %lock.addr.i1 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i1, metadata !4872, metadata !DIExpression()), !dbg !4927
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !4884, metadata !DIExpression()), !dbg !4929
  %inode.addr = alloca %struct.inode*, align 8
  %file.addr = alloca %struct.file*, align 8
  store %struct.inode* %inode, %struct.inode** %inode.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.inode** %inode.addr, metadata !4931, metadata !DIExpression()), !dbg !4932
  store %struct.file* %file, %struct.file** %file.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.file** %file.addr, metadata !4933, metadata !DIExpression()), !dbg !4934
  store %struct.spinlock* @acpi_thermal_rel_chrdev_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4935, !srcloc !4894
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4936
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !4936
  %rlock.i = bitcast %union.anon.3* %1 to %struct.raw_spinlock*, !dbg !4936
  %2 = load i32, i32* @acpi_thermal_rel_chrdev_count, align 4, !dbg !4937
  %dec = add i32 %2, -1, !dbg !4937
  store i32 %dec, i32* @acpi_thermal_rel_chrdev_count, align 4, !dbg !4937
  store i32 0, i32* @acpi_thermal_rel_chrdev_exclu, align 4, !dbg !4938
  store %struct.spinlock* @acpi_thermal_rel_chrdev_lock, %struct.spinlock** %lock.addr.i1, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !4939, !srcloc !4907
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i1, align 8, !dbg !4940
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !4940
  %rlock.i2 = bitcast %union.anon.3* %4 to %struct.raw_spinlock*, !dbg !4940
  ret i32 0, !dbg !4941
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @might_fault() #0 !dbg !4942 {
entry:
  ret void, !dbg !4944
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #9

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fill_trt(i8* %ubuf) #0 !dbg !4945 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4948, metadata !DIExpression()), !dbg !4953
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4962, metadata !DIExpression()), !dbg !4963
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4964, metadata !DIExpression()), !dbg !4965
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4966, metadata !DIExpression()), !dbg !4967
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4968, metadata !DIExpression()), !dbg !4971
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4972, metadata !DIExpression()), !dbg !4973
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4974, metadata !DIExpression()), !dbg !4975
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4976, metadata !DIExpression()), !dbg !4977
  %ubuf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  %trt_len = alloca i32, align 4
  %trts = alloca %struct.trt*, align 8
  %trt_user = alloca %union.trt_object*, align 8
  store i8* %ubuf, i8** %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ubuf.addr, metadata !4978, metadata !DIExpression()), !dbg !4979
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4980, metadata !DIExpression()), !dbg !4981
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4982, metadata !DIExpression()), !dbg !4983
  call void @llvm.dbg.declare(metadata i32* %count, metadata !4984, metadata !DIExpression()), !dbg !4985
  call void @llvm.dbg.declare(metadata i32* %trt_len, metadata !4986, metadata !DIExpression()), !dbg !4987
  call void @llvm.dbg.declare(metadata %struct.trt** %trts, metadata !4988, metadata !DIExpression()), !dbg !4989
  store %struct.trt* null, %struct.trt** %trts, align 8, !dbg !4989
  call void @llvm.dbg.declare(metadata %union.trt_object** %trt_user, metadata !4990, metadata !DIExpression()), !dbg !5004
  %0 = load i8*, i8** @acpi_thermal_rel_handle, align 8, !dbg !5005
  %call = call i32 @acpi_parse_trt(i8* %0, i32* %count, %struct.trt** %trts, i1 zeroext false) #10, !dbg !5006
  store i32 %call, i32* %ret, align 4, !dbg !5007
  %1 = load i32, i32* %ret, align 4, !dbg !5008
  %tobool = icmp ne i32 %1, 0, !dbg !5008
  br i1 %tobool, label %if.then, label %if.end, !dbg !5010

if.then:                                          ; preds = %entry
  br label %free_trt, !dbg !5011

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %count, align 4, !dbg !5012
  %conv = sext i32 %2 to i64, !dbg !5012
  %mul = mul i64 %conv, 64, !dbg !5013
  %conv1 = trunc i64 %mul to i32, !dbg !5012
  store i32 %conv1, i32* %trt_len, align 4, !dbg !5014
  %3 = load i32, i32* %trt_len, align 4, !dbg !5015
  %conv2 = sext i32 %3 to i64, !dbg !5015
  %call3 = call i8* @kzalloc(i64 %conv2, i32 3264) #10, !dbg !5016
  %4 = bitcast i8* %call3 to %union.trt_object*, !dbg !5016
  store %union.trt_object* %4, %union.trt_object** %trt_user, align 8, !dbg !5017
  %5 = load %union.trt_object*, %union.trt_object** %trt_user, align 8, !dbg !5018
  %tobool4 = icmp ne %union.trt_object* %5, null, !dbg !5018
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5020

if.then5:                                         ; preds = %if.end
  store i32 -12, i32* %ret, align 4, !dbg !5021
  br label %free_trt, !dbg !5023

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5024
  br label %for.cond, !dbg !5026

for.cond:                                         ; preds = %for.inc, %if.end6
  %6 = load i32, i32* %i, align 4, !dbg !5027
  %7 = load i32, i32* %count, align 4, !dbg !5029
  %cmp = icmp slt i32 %6, %7, !dbg !5030
  br i1 %cmp, label %for.body, label %for.end, !dbg !5031

for.body:                                         ; preds = %for.cond
  %8 = load %struct.trt*, %struct.trt** %trts, align 8, !dbg !5032
  %9 = load i32, i32* %i, align 4, !dbg !5034
  %idxprom = sext i32 %9 to i64, !dbg !5032
  %arrayidx = getelementptr %struct.trt, %struct.trt* %8, i64 %idxprom, !dbg !5032
  %source = getelementptr inbounds %struct.trt, %struct.trt* %arrayidx, i32 0, i32 0, !dbg !5035
  %10 = load i8*, i8** %source, align 1, !dbg !5035
  %11 = load %union.trt_object*, %union.trt_object** %trt_user, align 8, !dbg !5036
  %12 = load i32, i32* %i, align 4, !dbg !5037
  %idxprom8 = sext i32 %12 to i64, !dbg !5036
  %arrayidx9 = getelementptr %union.trt_object, %union.trt_object* %11, i64 %idxprom8, !dbg !5036
  %13 = bitcast %union.trt_object* %arrayidx9 to %struct.anon.73*, !dbg !5038
  %source_device = getelementptr inbounds %struct.anon.73, %struct.anon.73* %13, i32 0, i32 0, !dbg !5038
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %source_device, i64 0, i64 0, !dbg !5036
  call void @get_single_name(i8* %10, i8* %arraydecay) #10, !dbg !5039
  %14 = load %struct.trt*, %struct.trt** %trts, align 8, !dbg !5040
  %15 = load i32, i32* %i, align 4, !dbg !5041
  %idxprom10 = sext i32 %15 to i64, !dbg !5040
  %arrayidx11 = getelementptr %struct.trt, %struct.trt* %14, i64 %idxprom10, !dbg !5040
  %target = getelementptr inbounds %struct.trt, %struct.trt* %arrayidx11, i32 0, i32 1, !dbg !5042
  %16 = load i8*, i8** %target, align 1, !dbg !5042
  %17 = load %union.trt_object*, %union.trt_object** %trt_user, align 8, !dbg !5043
  %18 = load i32, i32* %i, align 4, !dbg !5044
  %idxprom12 = sext i32 %18 to i64, !dbg !5043
  %arrayidx13 = getelementptr %union.trt_object, %union.trt_object* %17, i64 %idxprom12, !dbg !5043
  %19 = bitcast %union.trt_object* %arrayidx13 to %struct.anon.73*, !dbg !5045
  %target_device = getelementptr inbounds %struct.anon.73, %struct.anon.73* %19, i32 0, i32 1, !dbg !5045
  %arraydecay14 = getelementptr inbounds [8 x i8], [8 x i8]* %target_device, i64 0, i64 0, !dbg !5043
  call void @get_single_name(i8* %16, i8* %arraydecay14) #10, !dbg !5046
  %20 = load %struct.trt*, %struct.trt** %trts, align 8, !dbg !5047
  %21 = load i32, i32* %i, align 4, !dbg !5048
  %idxprom15 = sext i32 %21 to i64, !dbg !5047
  %arrayidx16 = getelementptr %struct.trt, %struct.trt* %20, i64 %idxprom15, !dbg !5047
  %sample_period = getelementptr inbounds %struct.trt, %struct.trt* %arrayidx16, i32 0, i32 3, !dbg !5049
  %22 = load i64, i64* %sample_period, align 1, !dbg !5049
  %23 = load %union.trt_object*, %union.trt_object** %trt_user, align 8, !dbg !5050
  %24 = load i32, i32* %i, align 4, !dbg !5051
  %idxprom17 = sext i32 %24 to i64, !dbg !5050
  %arrayidx18 = getelementptr %union.trt_object, %union.trt_object* %23, i64 %idxprom17, !dbg !5050
  %25 = bitcast %union.trt_object* %arrayidx18 to %struct.anon.73*, !dbg !5052
  %sample_period19 = getelementptr inbounds %struct.anon.73, %struct.anon.73* %25, i32 0, i32 3, !dbg !5052
  store i64 %22, i64* %sample_period19, align 8, !dbg !5053
  %26 = load %struct.trt*, %struct.trt** %trts, align 8, !dbg !5054
  %27 = load i32, i32* %i, align 4, !dbg !5055
  %idxprom20 = sext i32 %27 to i64, !dbg !5054
  %arrayidx21 = getelementptr %struct.trt, %struct.trt* %26, i64 %idxprom20, !dbg !5054
  %influence = getelementptr inbounds %struct.trt, %struct.trt* %arrayidx21, i32 0, i32 2, !dbg !5056
  %28 = load i64, i64* %influence, align 1, !dbg !5056
  %29 = load %union.trt_object*, %union.trt_object** %trt_user, align 8, !dbg !5057
  %30 = load i32, i32* %i, align 4, !dbg !5058
  %idxprom22 = sext i32 %30 to i64, !dbg !5057
  %arrayidx23 = getelementptr %union.trt_object, %union.trt_object* %29, i64 %idxprom22, !dbg !5057
  %31 = bitcast %union.trt_object* %arrayidx23 to %struct.anon.73*, !dbg !5059
  %influence24 = getelementptr inbounds %struct.anon.73, %struct.anon.73* %31, i32 0, i32 2, !dbg !5059
  store i64 %28, i64* %influence24, align 8, !dbg !5060
  br label %for.inc, !dbg !5061

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %i, align 4, !dbg !5062
  %inc = add i32 %32, 1, !dbg !5062
  store i32 %inc, i32* %i, align 4, !dbg !5062
  br label %for.cond, !dbg !5063, !llvm.loop !5064

for.end:                                          ; preds = %for.cond
  %33 = load i8*, i8** %ubuf.addr, align 8, !dbg !5066
  %34 = load %union.trt_object*, %union.trt_object** %trt_user, align 8, !dbg !5067
  %35 = bitcast %union.trt_object* %34 to i8*, !dbg !5067
  %36 = load i32, i32* %trt_len, align 4, !dbg !5068
  %conv25 = sext i32 %36 to i64, !dbg !5068
  store i8* %33, i8** %to.addr.i, align 8
  store i8* %35, i8** %from.addr.i, align 8
  store i64 %conv25, i64* %n.addr.i, align 8
  %37 = load i8*, i8** %from.addr.i, align 8, !dbg !5069
  %38 = load i64, i64* %n.addr.i, align 8, !dbg !5069
  store i8* %37, i8** %addr.addr.i.i, align 8
  store i64 %38, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !4967
  %39 = load i32, i32* %sz.i.i, align 4, !dbg !5070
  %cmp.i.i = icmp sge i32 %39, 0, !dbg !5070
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !5070

land.rhs.i.i:                                     ; preds = %for.end
  %40 = load i32, i32* %sz.i.i, align 4, !dbg !5070
  %conv.i.i = sext i32 %40 to i64, !dbg !5070
  %41 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5070
  %cmp1.i.i = icmp ult i64 %conv.i.i, %41, !dbg !5070
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %for.end
  %42 = phi i1 [ false, %for.end ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5072
  %lnot.i.i = xor i1 %42, true, !dbg !5070
  %lnot.ext.i.i = zext i1 %42 to i32, !dbg !5070
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5070
  br i1 %42, label %if.then.i.i, label %if.end10.i.i, !dbg !5073

if.then.i.i:                                      ; preds = %land.end.i.i
  %43 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5074
  %44 = call i1 @llvm.is.constant.i64(i64 %43) #9, !dbg !5077
  br i1 %44, label %if.else.i.i, label %if.then5.i.i, !dbg !5078

if.then5.i.i:                                     ; preds = %if.then.i.i
  %45 = load i32, i32* %sz.i.i, align 4, !dbg !5079
  %46 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5080
  call void @copy_overflow(i32 %45, i64 %46) #13, !dbg !5081
  br label %if.end9.i.i, !dbg !5081

if.else.i.i:                                      ; preds = %if.then.i.i
  %47 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5082
  %tobool6.i.i = trunc i8 %47 to i1, !dbg !5082
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5084

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #13, !dbg !5085
  br label %if.end.i.i, !dbg !5085

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #13, !dbg !5086
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5087
  br label %check_copy_size.exit.i, !dbg !5087

if.end10.i.i:                                     ; preds = %land.end.i.i
  %48 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !4971
  %cmp11.i.i = icmp ugt i64 %48, 2147483647, !dbg !4971
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !4971
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !4971
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !4971
  %49 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5088
  %tobool17.i.i = icmp ne i32 %49, 0, !dbg !5088
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5088
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5088
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5088
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !4971

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 150, i32 2307, i64 12) #9, !dbg !5090, !srcloc !5093
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #9, !dbg !5094, !srcloc !5096
  br label %if.end31.i.i, !dbg !5097

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %50 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !4971
  %tobool32.i.i = icmp ne i32 %50, 0, !dbg !4971
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !4971
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !4971
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !4971
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5088
  %51 = load i64, i64* %tmp.i.i, align 8, !dbg !4971
  %tobool38.i.i = icmp ne i64 %51, 0, !dbg !5098
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5099

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5100
  br label %check_copy_size.exit.i, !dbg !5100

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %52 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5101
  %53 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5102
  %54 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5103
  %tobool41.i.i = trunc i8 %54 to i1, !dbg !5103
  call void @check_object_size(i8* %52, i64 %53, i1 zeroext %tobool41.i.i) #13, !dbg !5104
  store i1 true, i1* %retval.i.i, align 1, !dbg !5105
  br label %check_copy_size.exit.i, !dbg !5105

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %55 = load i1, i1* %retval.i.i, align 1, !dbg !5106
  %lnot.i = xor i1 %55, true, !dbg !5069
  %lnot.ext.i = zext i1 %55 to i32, !dbg !5069
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5069
  br i1 %55, label %if.then.i, label %copy_to_user.exit, !dbg !5107

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %56 = load i8*, i8** %to.addr.i, align 8, !dbg !5108
  %57 = load i8*, i8** %from.addr.i, align 8, !dbg !5109
  %58 = load i64, i64* %n.addr.i, align 8, !dbg !5110
  %call2.i = call i64 @_copy_to_user(i8* %56, i8* %57, i64 %58) #13, !dbg !5111
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5112
  br label %copy_to_user.exit, !dbg !5113

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %59 = load i64, i64* %n.addr.i, align 8, !dbg !5114
  %tobool27 = icmp ne i64 %59, 0, !dbg !5115
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !5116

if.then28:                                        ; preds = %copy_to_user.exit
  store i32 -14, i32* %ret, align 4, !dbg !5117
  br label %if.end29, !dbg !5118

if.end29:                                         ; preds = %if.then28, %copy_to_user.exit
  %60 = load %union.trt_object*, %union.trt_object** %trt_user, align 8, !dbg !5119
  %61 = bitcast %union.trt_object* %60 to i8*, !dbg !5119
  call void @kfree(i8* %61) #10, !dbg !5120
  br label %free_trt, !dbg !5120

free_trt:                                         ; preds = %if.end29, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !5121), !dbg !5122
  %62 = load %struct.trt*, %struct.trt** %trts, align 8, !dbg !5123
  %63 = bitcast %struct.trt* %62 to i8*, !dbg !5123
  call void @kfree(i8* %63) #10, !dbg !5124
  %64 = load i32, i32* %ret, align 4, !dbg !5125
  ret i32 %64, !dbg !5126
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @fill_art(i8* %ubuf) #0 !dbg !5127 {
entry:
  %retval.i.i = alloca i1, align 1
  %addr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr.i.i, metadata !4948, metadata !DIExpression()), !dbg !5128
  %bytes.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %bytes.addr.i.i, metadata !4962, metadata !DIExpression()), !dbg !5132
  %is_source.addr.i.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %is_source.addr.i.i, metadata !4964, metadata !DIExpression()), !dbg !5133
  %sz.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %sz.i.i, metadata !4966, metadata !DIExpression()), !dbg !5134
  %__ret_warn_on.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on.i.i, metadata !4968, metadata !DIExpression()), !dbg !5135
  %tmp.i.i = alloca i64, align 8
  %to.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %to.addr.i, metadata !4972, metadata !DIExpression()), !dbg !5136
  %from.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %from.addr.i, metadata !4974, metadata !DIExpression()), !dbg !5137
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !4976, metadata !DIExpression()), !dbg !5138
  %ubuf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  %art_len = alloca i32, align 4
  %arts = alloca %struct.art*, align 8
  %art_user = alloca %union.art_object*, align 8
  store i8* %ubuf, i8** %ubuf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ubuf.addr, metadata !5139, metadata !DIExpression()), !dbg !5140
  call void @llvm.dbg.declare(metadata i32* %i, metadata !5141, metadata !DIExpression()), !dbg !5142
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !5143, metadata !DIExpression()), !dbg !5144
  call void @llvm.dbg.declare(metadata i32* %count, metadata !5145, metadata !DIExpression()), !dbg !5146
  call void @llvm.dbg.declare(metadata i32* %art_len, metadata !5147, metadata !DIExpression()), !dbg !5148
  call void @llvm.dbg.declare(metadata %struct.art** %arts, metadata !5149, metadata !DIExpression()), !dbg !5150
  store %struct.art* null, %struct.art** %arts, align 8, !dbg !5150
  call void @llvm.dbg.declare(metadata %union.art_object** %art_user, metadata !5151, metadata !DIExpression()), !dbg !5175
  %0 = load i8*, i8** @acpi_thermal_rel_handle, align 8, !dbg !5176
  %call = call i32 @acpi_parse_art(i8* %0, i32* %count, %struct.art** %arts, i1 zeroext false) #10, !dbg !5177
  store i32 %call, i32* %ret, align 4, !dbg !5178
  %1 = load i32, i32* %ret, align 4, !dbg !5179
  %tobool = icmp ne i32 %1, 0, !dbg !5179
  br i1 %tobool, label %if.then, label %if.end, !dbg !5181

if.then:                                          ; preds = %entry
  br label %free_art, !dbg !5182

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %count, align 4, !dbg !5183
  %conv = sext i32 %2 to i64, !dbg !5183
  %mul = mul i64 %conv, 104, !dbg !5184
  %conv1 = trunc i64 %mul to i32, !dbg !5183
  store i32 %conv1, i32* %art_len, align 4, !dbg !5185
  %3 = load i32, i32* %art_len, align 4, !dbg !5186
  %conv2 = sext i32 %3 to i64, !dbg !5186
  %call3 = call i8* @kzalloc(i64 %conv2, i32 3264) #10, !dbg !5187
  %4 = bitcast i8* %call3 to %union.art_object*, !dbg !5187
  store %union.art_object* %4, %union.art_object** %art_user, align 8, !dbg !5188
  %5 = load %union.art_object*, %union.art_object** %art_user, align 8, !dbg !5189
  %tobool4 = icmp ne %union.art_object* %5, null, !dbg !5189
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !5191

if.then5:                                         ; preds = %if.end
  store i32 -12, i32* %ret, align 4, !dbg !5192
  br label %free_art, !dbg !5194

if.end6:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !5195
  br label %for.cond, !dbg !5197

for.cond:                                         ; preds = %for.inc, %if.end6
  %6 = load i32, i32* %i, align 4, !dbg !5198
  %7 = load i32, i32* %count, align 4, !dbg !5200
  %cmp = icmp slt i32 %6, %7, !dbg !5201
  br i1 %cmp, label %for.body, label %for.end, !dbg !5202

for.body:                                         ; preds = %for.cond
  %8 = load %struct.art*, %struct.art** %arts, align 8, !dbg !5203
  %9 = load i32, i32* %i, align 4, !dbg !5205
  %idxprom = sext i32 %9 to i64, !dbg !5203
  %arrayidx = getelementptr %struct.art, %struct.art* %8, i64 %idxprom, !dbg !5203
  %source = getelementptr inbounds %struct.art, %struct.art* %arrayidx, i32 0, i32 0, !dbg !5206
  %10 = load i8*, i8** %source, align 1, !dbg !5206
  %11 = load %union.art_object*, %union.art_object** %art_user, align 8, !dbg !5207
  %12 = load i32, i32* %i, align 4, !dbg !5208
  %idxprom8 = sext i32 %12 to i64, !dbg !5207
  %arrayidx9 = getelementptr %union.art_object, %union.art_object* %11, i64 %idxprom8, !dbg !5207
  %13 = bitcast %union.art_object* %arrayidx9 to %struct.anon.74*, !dbg !5209
  %source_device = getelementptr inbounds %struct.anon.74, %struct.anon.74* %13, i32 0, i32 0, !dbg !5209
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %source_device, i64 0, i64 0, !dbg !5207
  call void @get_single_name(i8* %10, i8* %arraydecay) #10, !dbg !5210
  %14 = load %struct.art*, %struct.art** %arts, align 8, !dbg !5211
  %15 = load i32, i32* %i, align 4, !dbg !5212
  %idxprom10 = sext i32 %15 to i64, !dbg !5211
  %arrayidx11 = getelementptr %struct.art, %struct.art* %14, i64 %idxprom10, !dbg !5211
  %target = getelementptr inbounds %struct.art, %struct.art* %arrayidx11, i32 0, i32 1, !dbg !5213
  %16 = load i8*, i8** %target, align 1, !dbg !5213
  %17 = load %union.art_object*, %union.art_object** %art_user, align 8, !dbg !5214
  %18 = load i32, i32* %i, align 4, !dbg !5215
  %idxprom12 = sext i32 %18 to i64, !dbg !5214
  %arrayidx13 = getelementptr %union.art_object, %union.art_object* %17, i64 %idxprom12, !dbg !5214
  %19 = bitcast %union.art_object* %arrayidx13 to %struct.anon.74*, !dbg !5216
  %target_device = getelementptr inbounds %struct.anon.74, %struct.anon.74* %19, i32 0, i32 1, !dbg !5216
  %arraydecay14 = getelementptr inbounds [8 x i8], [8 x i8]* %target_device, i64 0, i64 0, !dbg !5214
  call void @get_single_name(i8* %16, i8* %arraydecay14) #10, !dbg !5217
  %20 = load %union.art_object*, %union.art_object** %art_user, align 8, !dbg !5218
  %21 = load i32, i32* %i, align 4, !dbg !5219
  %idxprom15 = sext i32 %21 to i64, !dbg !5218
  %arrayidx16 = getelementptr %union.art_object, %union.art_object* %20, i64 %idxprom15, !dbg !5218
  %22 = bitcast %union.art_object* %arrayidx16 to %struct.anon.74*, !dbg !5220
  %weight = getelementptr inbounds %struct.anon.74, %struct.anon.74* %22, i32 0, i32 2, !dbg !5220
  %23 = bitcast i64* %weight to i8*, !dbg !5221
  %24 = load %struct.art*, %struct.art** %arts, align 8, !dbg !5222
  %25 = load i32, i32* %i, align 4, !dbg !5223
  %idxprom17 = sext i32 %25 to i64, !dbg !5222
  %arrayidx18 = getelementptr %struct.art, %struct.art* %24, i64 %idxprom17, !dbg !5222
  %weight19 = getelementptr inbounds %struct.art, %struct.art* %arrayidx18, i32 0, i32 2, !dbg !5224
  %26 = bitcast i64* %weight19 to i8*, !dbg !5221
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 1 %26, i64 88, i1 false), !dbg !5221
  br label %for.inc, !dbg !5225

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %i, align 4, !dbg !5226
  %inc = add i32 %27, 1, !dbg !5226
  store i32 %inc, i32* %i, align 4, !dbg !5226
  br label %for.cond, !dbg !5227, !llvm.loop !5228

for.end:                                          ; preds = %for.cond
  %28 = load i8*, i8** %ubuf.addr, align 8, !dbg !5230
  %29 = load %union.art_object*, %union.art_object** %art_user, align 8, !dbg !5231
  %30 = bitcast %union.art_object* %29 to i8*, !dbg !5231
  %31 = load i32, i32* %art_len, align 4, !dbg !5232
  %conv20 = sext i32 %31 to i64, !dbg !5232
  store i8* %28, i8** %to.addr.i, align 8
  store i8* %30, i8** %from.addr.i, align 8
  store i64 %conv20, i64* %n.addr.i, align 8
  %32 = load i8*, i8** %from.addr.i, align 8, !dbg !5233
  %33 = load i64, i64* %n.addr.i, align 8, !dbg !5233
  store i8* %32, i8** %addr.addr.i.i, align 8
  store i64 %33, i64* %bytes.addr.i.i, align 8
  store i8 1, i8* %is_source.addr.i.i, align 1
  store i32 -1, i32* %sz.i.i, align 4, !dbg !5134
  %34 = load i32, i32* %sz.i.i, align 4, !dbg !5234
  %cmp.i.i = icmp sge i32 %34, 0, !dbg !5234
  br i1 %cmp.i.i, label %land.rhs.i.i, label %land.end.i.i, !dbg !5234

land.rhs.i.i:                                     ; preds = %for.end
  %35 = load i32, i32* %sz.i.i, align 4, !dbg !5234
  %conv.i.i = sext i32 %35 to i64, !dbg !5234
  %36 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5234
  %cmp1.i.i = icmp ult i64 %conv.i.i, %36, !dbg !5234
  br label %land.end.i.i

land.end.i.i:                                     ; preds = %land.rhs.i.i, %for.end
  %37 = phi i1 [ false, %for.end ], [ %cmp1.i.i, %land.rhs.i.i ], !dbg !5235
  %lnot.i.i = xor i1 %37, true, !dbg !5234
  %lnot.ext.i.i = zext i1 %37 to i32, !dbg !5234
  %conv4.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5234
  br i1 %37, label %if.then.i.i, label %if.end10.i.i, !dbg !5236

if.then.i.i:                                      ; preds = %land.end.i.i
  %38 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5237
  %39 = call i1 @llvm.is.constant.i64(i64 %38) #9, !dbg !5238
  br i1 %39, label %if.else.i.i, label %if.then5.i.i, !dbg !5239

if.then5.i.i:                                     ; preds = %if.then.i.i
  %40 = load i32, i32* %sz.i.i, align 4, !dbg !5240
  %41 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5241
  call void @copy_overflow(i32 %40, i64 %41) #13, !dbg !5242
  br label %if.end9.i.i, !dbg !5242

if.else.i.i:                                      ; preds = %if.then.i.i
  %42 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5243
  %tobool6.i.i = trunc i8 %42 to i1, !dbg !5243
  br i1 %tobool6.i.i, label %if.then7.i.i, label %if.else8.i.i, !dbg !5244

if.then7.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_from() #13, !dbg !5245
  br label %if.end.i.i, !dbg !5245

if.else8.i.i:                                     ; preds = %if.else.i.i
  call void @__bad_copy_to() #13, !dbg !5246
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else8.i.i, %if.then7.i.i
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.end.i.i, %if.then5.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5247
  br label %check_copy_size.exit.i, !dbg !5247

if.end10.i.i:                                     ; preds = %land.end.i.i
  %43 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5135
  %cmp11.i.i = icmp ugt i64 %43, 2147483647, !dbg !5135
  %lnot13.i.i = xor i1 %cmp11.i.i, true, !dbg !5135
  %lnot.ext16.i.i = zext i1 %cmp11.i.i to i32, !dbg !5135
  store i32 %lnot.ext16.i.i, i32* %__ret_warn_on.i.i, align 4, !dbg !5135
  %44 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5248
  %tobool17.i.i = icmp ne i32 %44, 0, !dbg !5248
  %lnot18.i.i = xor i1 %tobool17.i.i, true, !dbg !5248
  %lnot.ext21.i.i = zext i1 %tobool17.i.i to i32, !dbg !5248
  %conv22.i.i = sext i32 %lnot.ext21.i.i to i64, !dbg !5248
  br i1 %tobool17.i.i, label %if.then24.i.i, label %if.end31.i.i, !dbg !5135

if.then24.i.i:                                    ; preds = %if.end10.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 150, i32 2307, i64 12) #9, !dbg !5249, !srcloc !5093
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 39) #9, !dbg !5250, !srcloc !5096
  br label %if.end31.i.i, !dbg !5251

if.end31.i.i:                                     ; preds = %if.then24.i.i, %if.end10.i.i
  %45 = load i32, i32* %__ret_warn_on.i.i, align 4, !dbg !5135
  %tobool32.i.i = icmp ne i32 %45, 0, !dbg !5135
  %lnot33.i.i = xor i1 %tobool32.i.i, true, !dbg !5135
  %lnot.ext36.i.i = zext i1 %tobool32.i.i to i32, !dbg !5135
  %conv37.i.i = sext i32 %lnot.ext36.i.i to i64, !dbg !5135
  store i64 %conv37.i.i, i64* %tmp.i.i, align 8, !dbg !5248
  %46 = load i64, i64* %tmp.i.i, align 8, !dbg !5135
  %tobool38.i.i = icmp ne i64 %46, 0, !dbg !5252
  br i1 %tobool38.i.i, label %if.then39.i.i, label %if.end40.i.i, !dbg !5253

if.then39.i.i:                                    ; preds = %if.end31.i.i
  store i1 false, i1* %retval.i.i, align 1, !dbg !5254
  br label %check_copy_size.exit.i, !dbg !5254

if.end40.i.i:                                     ; preds = %if.end31.i.i
  %47 = load i8*, i8** %addr.addr.i.i, align 8, !dbg !5255
  %48 = load i64, i64* %bytes.addr.i.i, align 8, !dbg !5256
  %49 = load i8, i8* %is_source.addr.i.i, align 1, !dbg !5257
  %tobool41.i.i = trunc i8 %49 to i1, !dbg !5257
  call void @check_object_size(i8* %47, i64 %48, i1 zeroext %tobool41.i.i) #13, !dbg !5258
  store i1 true, i1* %retval.i.i, align 1, !dbg !5259
  br label %check_copy_size.exit.i, !dbg !5259

check_copy_size.exit.i:                           ; preds = %if.end40.i.i, %if.then39.i.i, %if.end9.i.i
  %50 = load i1, i1* %retval.i.i, align 1, !dbg !5260
  %lnot.i = xor i1 %50, true, !dbg !5233
  %lnot.ext.i = zext i1 %50 to i32, !dbg !5233
  %conv.i = sext i32 %lnot.ext.i to i64, !dbg !5233
  br i1 %50, label %if.then.i, label %copy_to_user.exit, !dbg !5261

if.then.i:                                        ; preds = %check_copy_size.exit.i
  %51 = load i8*, i8** %to.addr.i, align 8, !dbg !5262
  %52 = load i8*, i8** %from.addr.i, align 8, !dbg !5263
  %53 = load i64, i64* %n.addr.i, align 8, !dbg !5264
  %call2.i = call i64 @_copy_to_user(i8* %51, i8* %52, i64 %53) #13, !dbg !5265
  store i64 %call2.i, i64* %n.addr.i, align 8, !dbg !5266
  br label %copy_to_user.exit, !dbg !5267

copy_to_user.exit:                                ; preds = %check_copy_size.exit.i, %if.then.i
  %54 = load i64, i64* %n.addr.i, align 8, !dbg !5268
  %tobool22 = icmp ne i64 %54, 0, !dbg !5269
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !5270

if.then23:                                        ; preds = %copy_to_user.exit
  store i32 -14, i32* %ret, align 4, !dbg !5271
  br label %if.end24, !dbg !5272

if.end24:                                         ; preds = %if.then23, %copy_to_user.exit
  %55 = load %union.art_object*, %union.art_object** %art_user, align 8, !dbg !5273
  %56 = bitcast %union.art_object* %55 to i8*, !dbg !5273
  call void @kfree(i8* %56) #10, !dbg !5274
  br label %free_art, !dbg !5274

free_art:                                         ; preds = %if.end24, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !5275), !dbg !5276
  %57 = load %struct.art*, %struct.art** %arts, align 8, !dbg !5277
  %58 = bitcast %struct.art* %57 to i8*, !dbg !5277
  call void @kfree(i8* %58) #10, !dbg !5278
  %59 = load i32, i32* %ret, align 4, !dbg !5279
  ret i32 %59, !dbg !5280
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !5281 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !4380, metadata !DIExpression()), !dbg !5282
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !4393, metadata !DIExpression()), !dbg !5285
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !4395, metadata !DIExpression()), !dbg !5286
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !4397, metadata !DIExpression()), !dbg !5287
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !4399, metadata !DIExpression()), !dbg !5288
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !4405, metadata !DIExpression()), !dbg !5290
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !4411, metadata !DIExpression()), !dbg !5292
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !4420, metadata !DIExpression()), !dbg !5295
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !4422, metadata !DIExpression()), !dbg !5296
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !4424, metadata !DIExpression()), !dbg !5297
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !4426, metadata !DIExpression()), !dbg !5298
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !4428, metadata !DIExpression()), !dbg !5299
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !4430, metadata !DIExpression()), !dbg !5300
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !4432, metadata !DIExpression()), !dbg !5301
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !4434, metadata !DIExpression()), !dbg !5302
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5303, metadata !DIExpression()), !dbg !5304
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !5305, metadata !DIExpression()), !dbg !5306
  %0 = load i64, i64* %size.addr, align 8, !dbg !5307
  %1 = load i32, i32* %flags.addr, align 4, !dbg !5308
  %or = or i32 %1, 256, !dbg !5309
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !5310
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !5311
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !5312

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5313
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !5314
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !5315

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !5316
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !5317
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !5318
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !5319
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !5299
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !5320
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !5321
  %10 = load i32, i32* %order.i.i, align 4, !dbg !5322
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !5323
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !5324
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !5325
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !5326
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !5326
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !5326
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !5326
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !5326
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !5327
  br label %kmalloc.exit, !dbg !5327

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !5328
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5329
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !5329
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !5330

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !5331
  br label %kmalloc_index.exit.i, !dbg !5331

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5332
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !5333
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !5334

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5335
  br label %kmalloc_index.exit.i, !dbg !5335

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5336
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !5337
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !5338

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5339
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !5340
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !5341

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !5342
  br label %kmalloc_index.exit.i, !dbg !5342

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5343
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !5344
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !5345

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5346
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !5347
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !5348

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !5349
  br label %kmalloc_index.exit.i, !dbg !5349

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5350
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !5351
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !5352

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !5353
  br label %kmalloc_index.exit.i, !dbg !5353

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5354
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !5355
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !5356

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !5357
  br label %kmalloc_index.exit.i, !dbg !5357

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5358
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !5359
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !5360

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !5361
  br label %kmalloc_index.exit.i, !dbg !5361

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5362
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !5363
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !5364

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !5365
  br label %kmalloc_index.exit.i, !dbg !5365

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5366
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !5367
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !5368

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !5369
  br label %kmalloc_index.exit.i, !dbg !5369

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5370
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !5371
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !5372

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !5373
  br label %kmalloc_index.exit.i, !dbg !5373

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5374
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !5375
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !5376

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !5377
  br label %kmalloc_index.exit.i, !dbg !5377

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5378
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !5379
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !5380

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !5381
  br label %kmalloc_index.exit.i, !dbg !5381

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5382
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !5383
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !5384

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !5385
  br label %kmalloc_index.exit.i, !dbg !5385

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5386
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !5387
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !5388

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !5389
  br label %kmalloc_index.exit.i, !dbg !5389

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5390
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !5391
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !5392

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !5393
  br label %kmalloc_index.exit.i, !dbg !5393

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5394
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !5395
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !5396

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !5397
  br label %kmalloc_index.exit.i, !dbg !5397

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5398
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !5399
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !5400

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !5401
  br label %kmalloc_index.exit.i, !dbg !5401

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5402
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !5403
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !5404

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !5405
  br label %kmalloc_index.exit.i, !dbg !5405

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5406
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !5407
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !5408

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !5409
  br label %kmalloc_index.exit.i, !dbg !5409

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5410
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !5411
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !5412

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !5413
  br label %kmalloc_index.exit.i, !dbg !5413

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5414
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !5415
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !5416

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !5417
  br label %kmalloc_index.exit.i, !dbg !5417

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5418
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !5419
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !5420

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !5421
  br label %kmalloc_index.exit.i, !dbg !5421

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5422
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !5423
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !5424

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !5425
  br label %kmalloc_index.exit.i, !dbg !5425

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5426
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !5427
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !5428

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !5429
  br label %kmalloc_index.exit.i, !dbg !5429

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5430
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !5431
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !5432

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !5433
  br label %kmalloc_index.exit.i, !dbg !5433

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5434
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !5435
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !5436

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !5437
  br label %kmalloc_index.exit.i, !dbg !5437

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5438
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !5439
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !5440

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !5441
  br label %kmalloc_index.exit.i, !dbg !5441

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !5442
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !5443
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !5444

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !5445
  br label %kmalloc_index.exit.i, !dbg !5445

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !5446, !srcloc !4629
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 161) #9, !dbg !5447, !srcloc !4633
  unreachable, !dbg !5448

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !5449
  store i32 %45, i32* %index.i, align 4, !dbg !5450
  %46 = load i32, i32* %index.i, align 4, !dbg !5451
  %tobool.i = icmp ne i32 %46, 0, !dbg !5451
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !5452

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !5453
  br label %kmalloc.exit, !dbg !5453

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !5454
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5455
  %and.i.i = and i32 %48, 17, !dbg !5455
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !5455
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !5455
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !5455
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !5455
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !5456

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !5457
  br label %kmalloc_type.exit.i, !dbg !5457

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !5458
  %and2.i.i = and i32 %49, 1, !dbg !5459
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !5458
  %50 = zext i1 %tobool3.i.i to i64, !dbg !5458
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !5458
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !5460
  br label %kmalloc_type.exit.i, !dbg !5460

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !5461
  %idxprom.i = zext i32 %51 to i64, !dbg !5462
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !5462
  %52 = load i32, i32* %index.i, align 4, !dbg !5463
  %idxprom6.i = zext i32 %52 to i64, !dbg !5462
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !5462
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !5462
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !5464
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !5465
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5466
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5467
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !5468
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !5468
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !5468
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !5468
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !5468
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !5287
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !5469
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !5470
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !5471
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !5472
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !5473
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !5474
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !5475
  store i8* %62, i8** %retval.i, align 8, !dbg !5476
  br label %kmalloc.exit, !dbg !5476

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !5477
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !5478
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !5479
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !5479
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !5479
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !5479
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !5479
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !5480
  br label %kmalloc.exit, !dbg !5480

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !5481
  ret i8* %65, !dbg !5482
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @get_single_name(i8* %handle, i8* %name) #0 !dbg !5483 {
entry:
  %handle.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  store i8* %handle, i8** %handle.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %handle.addr, metadata !5486, metadata !DIExpression()), !dbg !5487
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !5488, metadata !DIExpression()), !dbg !5489
  call void @llvm.dbg.declare(metadata %struct.acpi_buffer* %buffer, metadata !5490, metadata !DIExpression()), !dbg !5491
  %0 = bitcast %struct.acpi_buffer* %buffer to i8*, !dbg !5491
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.acpi_buffer* @__const.get_single_name.buffer to i8*), i64 16, i1 false), !dbg !5491
  %1 = load i8*, i8** %handle.addr, align 8, !dbg !5492
  %call = call i32 @acpi_get_name(i8* %1, i32 1, %struct.acpi_buffer* %buffer) #10, !dbg !5492
  %tobool = icmp ne i32 %call, 0, !dbg !5492
  br i1 %tobool, label %if.then, label %if.else, !dbg !5494

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !5495
  br label %if.end, !dbg !5495

if.else:                                          ; preds = %entry
  %2 = load i8*, i8** %name.addr, align 8, !dbg !5496
  %pointer = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !5498
  %3 = load i8*, i8** %pointer, align 8, !dbg !5498
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %2, i8* align 1 %3, i64 4, i1 false), !dbg !5499
  %pointer2 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %buffer, i32 0, i32 1, !dbg !5500
  %4 = load i8*, i8** %pointer2, align 8, !dbg !5500
  call void @kfree(i8* %4) #10, !dbg !5501
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5502
}

; Function Attrs: noredzone
declare dso_local i32 @acpi_get_name(i8*, i32, %struct.acpi_buffer*) #3

; Function Attrs: noredzone
declare dso_local i64 @_copy_to_user(i8*, i8*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @copy_overflow(i32 %size, i64 %count) #0 !dbg !5503 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5506, metadata !DIExpression()), !dbg !5507
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !5508, metadata !DIExpression()), !dbg !5509
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !5510, metadata !DIExpression()), !dbg !5512
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !5512
  %0 = load i32, i32* %__ret_warn_on, align 4, !dbg !5513
  %tobool = icmp ne i32 %0, 0, !dbg !5513
  %lnot = xor i1 %tobool, true, !dbg !5513
  %lnot1 = xor i1 %lnot, true, !dbg !5513
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5513
  %conv = sext i32 %lnot.ext to i64, !dbg !5513
  %tobool2 = icmp ne i64 %conv, 0, !dbg !5513
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5512

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5513

do.body:                                          ; preds = %if.then
  br label %do.body3, !dbg !5515

do.body3:                                         ; preds = %do.body
  br label %do.end, !dbg !5517

do.end:                                           ; preds = %do.body3
  %1 = load i32, i32* %size.addr, align 4, !dbg !5515
  %2 = load i64, i64* %count.addr, align 8, !dbg !5515
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32 %1, i64 %2) #10, !dbg !5515
  br label %do.body4, !dbg !5515

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !5519

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !5521

do.end6:                                          ; preds = %do.body5
  br label %do.body7, !dbg !5519

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 134, i32 2313, i64 12) #9, !dbg !5523, !srcloc !5525
  br label %do.end8, !dbg !5523

do.end8:                                          ; preds = %do.body7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 38) #9, !dbg !5526, !srcloc !5528
  br label %do.body9, !dbg !5519

do.body9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !5529

do.end10:                                         ; preds = %do.body9
  br label %do.end11, !dbg !5519

do.end11:                                         ; preds = %do.end10
  br label %do.body12, !dbg !5515

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !5531

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !5515

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !5515

if.end:                                           ; preds = %do.end14, %entry
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !5512
  %tobool15 = icmp ne i32 %3, 0, !dbg !5512
  %lnot16 = xor i1 %tobool15, true, !dbg !5512
  %lnot18 = xor i1 %lnot16, true, !dbg !5512
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !5512
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !5512
  store i64 %conv20, i64* %tmp, align 8, !dbg !5513
  %4 = load i64, i64* %tmp, align 8, !dbg !5512
  ret void, !dbg !5533
}

; Function Attrs: noredzone
declare dso_local void @__bad_copy_from() #3

; Function Attrs: noredzone
declare dso_local void @__bad_copy_to() #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @check_object_size(i8* %ptr, i64 %n, i1 zeroext %to_user) #0 !dbg !5534 {
entry:
  %ptr.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5537, metadata !DIExpression()), !dbg !5538
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !5539, metadata !DIExpression()), !dbg !5540
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, i8* %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %to_user.addr, metadata !5541, metadata !DIExpression()), !dbg !5542
  ret void, !dbg !5543
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @nonseekable_open(%struct.inode*, %struct.file*) #3

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!3733}
!llvm.module.flags = !{!3734, !3735, !3736, !3737}
!llvm.ident = !{!3738}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "acpi_thermal_rel_handle", scope: !2, file: !3, line: 25, type: !3731, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !106, globals: !113, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !13, !18, !24, !30, !39, !47, !53, !59, !66, !74, !80, !94, !101}
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
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !81, line: 76, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!83 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!84 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!85 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!86 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!87 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!88 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!89 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!90 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!91 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!92 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!93 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !95, line: 305, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !98, !99, !100}
!97 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!100 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !102, line: 10, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!103 = !{!104, !105}
!104 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!106 = !{!107, !109, !110, !112}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !108, line: 148, baseType: !7)
!108 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!113 = !{!114, !121, !126, !131, !136, !0, !141, !3723, !3725, !3727, !3729}
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author211", scope: !2, file: !3, line: 382, type: !116, isLocal: true, isDefinition: true, align: 8)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 448, elements: !119)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!119 = !{!120}
!120 = !DISubrange(count: 56)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author212", scope: !2, file: !3, line: 383, type: !123, isLocal: true, isDefinition: true, align: 8)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 472, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 59)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description213", scope: !2, file: !3, line: 384, type: !128, isLocal: true, isDefinition: true, align: 8)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 544, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 68)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file214", scope: !2, file: !3, line: 385, type: !133, isLocal: true, isDefinition: true, align: 8)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 616, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 77)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license215", scope: !2, file: !3, line: 385, type: !138, isLocal: true, isDefinition: true, align: 8)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 256, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 32)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "acpi_thermal_rel_misc_device", scope: !2, file: !3, line: 360, type: !143, isLocal: true, isDefinition: true)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "miscdevice", file: !144, line: 79, size: 640, elements: !145)
!144 = !DIFile(filename: "./include/linux/miscdevice.h", directory: "/home/lizy2001/genbc/linux")
!145 = !{!146, !147, !149, !2872, !2873, !3719, !3720, !3721, !3722}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !143, file: !144, line: 80, baseType: !112, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !144, line: 81, baseType: !148, size: 64, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !143, file: !144, line: 82, baseType: !150, size: 64, offset: 128)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !31, line: 1822, size: 2048, elements: !153)
!153 = !{!154, !158, !2666, !2671, !2675, !2676, !2677, !2681, !2694, !2695, !2703, !2707, !2708, !2712, !2713, !2717, !2722, !2723, !2727, !2731, !2832, !2836, !2837, !2841, !2842, !2846, !2850, !2855, !2859, !2863, !2867, !2871}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !152, file: !31, line: 1823, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !157, line: 76, flags: DIFlagFwdDecl)
!157 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!158 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !152, file: !31, line: 1824, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!162, !166, !162, !112}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !108, line: 46, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !164, line: 88, baseType: !165)
!164 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!165 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !31, line: 916, size: 1856, align: 32, elements: !168)
!168 = !{!169, !187, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2649, !2650, !2659, !2660, !2661, !2662, !2663, !2664, !2665}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "f_u", scope: !167, file: !31, line: 920, baseType: !170, size: 128)
!170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !167, file: !31, line: 917, size: 128, elements: !171)
!171 = !{!172, !178}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "fu_llist", scope: !170, file: !31, line: 918, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !174, line: 58, size: 64, elements: !175)
!174 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/lizy2001/genbc/linux")
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !174, line: 59, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "fu_rcuhead", scope: !170, file: !31, line: 919, baseType: !179, size: 128, align: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !108, line: 216, size: 128, align: 64, elements: !180)
!180 = !{!181, !183}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !179, file: !108, line: 217, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !179, file: !108, line: 218, baseType: !184, size: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{null, !182}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !167, file: !31, line: 921, baseType: !188, size: 128, offset: 128)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !189, line: 8, size: 128, elements: !190)
!189 = !DIFile(filename: "./include/linux/path.h", directory: "/home/lizy2001/genbc/linux")
!190 = !{!191, !195}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !188, file: !189, line: 9, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !194, line: 18, flags: DIFlagFwdDecl)
!194 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/lizy2001/genbc/linux")
!195 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !188, file: !189, line: 10, baseType: !196, size: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !194, line: 89, size: 1536, elements: !198)
!198 = !{!199, !200, !210, !218, !219, !242, !2592, !2594, !2606, !2607, !2608, !2609, !2610, !2616, !2617, !2618}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !197, file: !194, line: 91, baseType: !7, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !197, file: !194, line: 92, baseType: !201, size: 32, offset: 32)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !202, line: 277, baseType: !203)
!202 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !202, line: 277, size: 32, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !203, file: !202, line: 277, baseType: !206, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !202, line: 70, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !202, line: 65, size: 32, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !207, file: !202, line: 66, baseType: !7, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !197, file: !194, line: 93, baseType: !211, size: 128, offset: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !212, line: 38, size: 128, elements: !213)
!212 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/lizy2001/genbc/linux")
!213 = !{!214, !216}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !211, file: !212, line: 39, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !211, file: !212, line: 39, baseType: !217, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !197, file: !194, line: 94, baseType: !196, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !197, file: !194, line: 95, baseType: !220, size: 128, offset: 256)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !194, line: 47, size: 128, elements: !221)
!221 = !{!222, !238}
!222 = !DIDerivedType(tag: DW_TAG_member, scope: !220, file: !194, line: 48, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !220, file: !194, line: 48, size: 64, elements: !224)
!224 = !{!225, !234}
!225 = !DIDerivedType(tag: DW_TAG_member, scope: !223, file: !194, line: 49, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !223, file: !194, line: 49, size: 64, elements: !227)
!227 = !{!228, !233}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !226, file: !194, line: 50, baseType: !229, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !230, line: 21, baseType: !231)
!230 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !232, line: 27, baseType: !7)
!232 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!233 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !226, file: !194, line: 50, baseType: !229, size: 32, offset: 32)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !223, file: !194, line: 52, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !230, line: 23, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !232, line: 31, baseType: !237)
!237 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !220, file: !194, line: 54, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !197, file: !194, line: 96, baseType: !243, size: 64, offset: 384)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !31, line: 610, size: 4224, elements: !245)
!245 = !{!246, !249, !250, !258, !265, !266, !419, !2525, !2526, !2527, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2568, !2576, !2577, !2578, !2588, !2589, !2590, !2591}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !244, file: !31, line: 611, baseType: !247, size: 16)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !108, line: 19, baseType: !248)
!248 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !244, file: !31, line: 612, baseType: !248, size: 16, offset: 16)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !244, file: !31, line: 613, baseType: !251, size: 32, offset: 32)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !252, line: 23, baseType: !253)
!252 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !252, line: 21, size: 32, elements: !254)
!254 = !{!255}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !253, file: !252, line: 22, baseType: !256, size: 32)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !108, line: 32, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !164, line: 49, baseType: !7)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !244, file: !31, line: 614, baseType: !259, size: 32, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !252, line: 28, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !252, line: 26, size: 32, elements: !261)
!261 = !{!262}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !260, file: !252, line: 27, baseType: !263, size: 32)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !108, line: 33, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !164, line: 50, baseType: !7)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !244, file: !31, line: 615, baseType: !7, size: 32, offset: 96)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !244, file: !31, line: 622, baseType: !267, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !31, line: 1864, size: 1536, align: 512, elements: !270)
!270 = !{!271, !275, !288, !292, !298, !303, !309, !313, !317, !321, !325, !326, !332, !336, !360, !389, !399, !405, !410, !414, !415}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !269, file: !31, line: 1865, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!196, !243, !196, !7}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !269, file: !31, line: 1866, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!148, !196, !243, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !281, line: 10, size: 128, elements: !282)
!281 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/lizy2001/genbc/linux")
!282 = !{!283, !287}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !280, file: !281, line: 11, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !109}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !280, file: !281, line: 12, baseType: !109, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !269, file: !31, line: 1867, baseType: !289, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!112, !243, !112}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !269, file: !31, line: 1868, baseType: !293, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!296, !243, !112}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !31, line: 581, flags: DIFlagFwdDecl)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !269, file: !31, line: 1870, baseType: !299, size: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!112, !196, !302, !112}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !269, file: !31, line: 1872, baseType: !304, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!112, !243, !196, !247, !307}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !108, line: 30, baseType: !308)
!308 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !269, file: !31, line: 1873, baseType: !310, size: 64, offset: 384)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!112, !196, !243, !196}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !269, file: !31, line: 1874, baseType: !314, size: 64, offset: 448)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!112, !243, !196}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !269, file: !31, line: 1875, baseType: !318, size: 64, offset: 512)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!112, !243, !196, !148}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !269, file: !31, line: 1876, baseType: !322, size: 64, offset: 576)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!112, !243, !196, !247}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !269, file: !31, line: 1877, baseType: !314, size: 64, offset: 640)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !269, file: !31, line: 1878, baseType: !327, size: 64, offset: 704)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!112, !243, !196, !247, !330}
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !108, line: 16, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !108, line: 13, baseType: !229)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !269, file: !31, line: 1879, baseType: !333, size: 64, offset: 768)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!112, !243, !196, !243, !196, !7}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !269, file: !31, line: 1881, baseType: !337, size: 64, offset: 832)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!112, !196, !340}
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !31, line: 219, size: 640, elements: !342)
!342 = !{!343, !344, !345, !346, !347, !348, !357, !358, !359}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !341, file: !31, line: 220, baseType: !7, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !341, file: !31, line: 221, baseType: !247, size: 16, offset: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !341, file: !31, line: 222, baseType: !251, size: 32, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !341, file: !31, line: 223, baseType: !259, size: 32, offset: 96)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !341, file: !31, line: 224, baseType: !162, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !341, file: !31, line: 225, baseType: !349, size: 128, offset: 192)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !350, line: 13, size: 128, elements: !351)
!350 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/lizy2001/genbc/linux")
!351 = !{!352, !355}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !349, file: !350, line: 14, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !350, line: 8, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !232, line: 30, baseType: !165)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !349, file: !350, line: 15, baseType: !356, size: 64, offset: 64)
!356 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !341, file: !31, line: 226, baseType: !349, size: 128, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !341, file: !31, line: 227, baseType: !349, size: 128, offset: 448)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !341, file: !31, line: 234, baseType: !166, size: 64, offset: 576)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !269, file: !31, line: 1882, baseType: !361, size: 64, offset: 896)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!112, !364, !366, !229, !7}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !368, line: 22, size: 1152, elements: !369)
!368 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/lizy2001/genbc/linux")
!369 = !{!370, !371, !372, !373, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !367, file: !368, line: 23, baseType: !229, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !367, file: !368, line: 24, baseType: !247, size: 16, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !367, file: !368, line: 25, baseType: !7, size: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !367, file: !368, line: 26, baseType: !374, size: 32, offset: 96)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !108, line: 104, baseType: !229)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !367, file: !368, line: 27, baseType: !235, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !367, file: !368, line: 28, baseType: !235, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !367, file: !368, line: 37, baseType: !235, size: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !367, file: !368, line: 38, baseType: !330, size: 32, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !367, file: !368, line: 39, baseType: !330, size: 32, offset: 352)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !367, file: !368, line: 40, baseType: !251, size: 32, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !367, file: !368, line: 41, baseType: !259, size: 32, offset: 416)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !367, file: !368, line: 42, baseType: !162, size: 64, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !367, file: !368, line: 43, baseType: !349, size: 128, offset: 512)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !367, file: !368, line: 44, baseType: !349, size: 128, offset: 640)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !367, file: !368, line: 45, baseType: !349, size: 128, offset: 768)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !367, file: !368, line: 46, baseType: !349, size: 128, offset: 896)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !367, file: !368, line: 47, baseType: !235, size: 64, offset: 1024)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !367, file: !368, line: 48, baseType: !235, size: 64, offset: 1088)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !269, file: !31, line: 1883, baseType: !390, size: 64, offset: 960)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!393, !196, !302, !396}
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !108, line: 60, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !164, line: 73, baseType: !395)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !164, line: 15, baseType: !356)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !108, line: 55, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !164, line: 72, baseType: !398)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !164, line: 16, baseType: !111)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !269, file: !31, line: 1884, baseType: !400, size: 64, offset: 1024)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!112, !243, !403, !235, !235}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !31, line: 50, flags: DIFlagFwdDecl)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !269, file: !31, line: 1886, baseType: !406, size: 64, offset: 1088)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!112, !243, !409, !112}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !269, file: !31, line: 1887, baseType: !411, size: 64, offset: 1152)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!412 = !DISubroutineType(types: !413)
!413 = !{!112, !243, !196, !166, !7, !247}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !269, file: !31, line: 1890, baseType: !322, size: 64, offset: 1216)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !269, file: !31, line: 1891, baseType: !416, size: 64, offset: 1280)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!112, !243, !296, !112}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !244, file: !31, line: 623, baseType: !420, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !31, line: 1416, size: 9472, elements: !422)
!422 = !{!423, !429, !430, !431, !432, !433, !483, !2132, !2214, !2297, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2313, !2317, !2318, !2321, !2322, !2325, !2326, !2327, !2368, !2395, !2396, !2397, !2398, !2399, !2400, !2403, !2405, !2412, !2413, !2415, !2416, !2417, !2476, !2477, !2492, !2493, !2494, !2495, !2496, !2499, !2500, !2501, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !421, file: !31, line: 1417, baseType: !424, size: 128)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !108, line: 178, size: 128, elements: !425)
!425 = !{!426, !428}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !424, file: !108, line: 179, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !424, file: !108, line: 179, baseType: !427, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !421, file: !31, line: 1418, baseType: !330, size: 32, offset: 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !421, file: !31, line: 1419, baseType: !241, size: 8, offset: 160)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !421, file: !31, line: 1420, baseType: !111, size: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !421, file: !31, line: 1421, baseType: !162, size: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !421, file: !31, line: 1422, baseType: !434, size: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !31, line: 2228, size: 576, elements: !436)
!436 = !{!437, !438, !439, !446, !450, !454, !458, !459, !460, !470, !474, !475, !476, !480, !481, !482}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !435, file: !31, line: 2229, baseType: !148, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !435, file: !31, line: 2230, baseType: !112, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !435, file: !31, line: 2238, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!112, !443}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !445, line: 28, flags: DIFlagFwdDecl)
!445 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!446 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !435, file: !31, line: 2239, baseType: !447, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!449 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !31, line: 70, flags: DIFlagFwdDecl)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !435, file: !31, line: 2240, baseType: !451, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!196, !434, !112, !148, !109}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !435, file: !31, line: 2242, baseType: !455, size: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !420}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !435, file: !31, line: 2243, baseType: !155, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !435, file: !31, line: 2244, baseType: !434, size: 64, offset: 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !435, file: !31, line: 2245, baseType: !461, size: 64, offset: 512)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !108, line: 182, size: 64, elements: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !461, file: !108, line: 183, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !108, line: 186, size: 128, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !465, file: !108, line: 187, baseType: !464, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !465, file: !108, line: 187, baseType: !469, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !435, file: !31, line: 2247, baseType: !471, offset: 576)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !472, line: 187, elements: !473)
!472 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!473 = !{}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !435, file: !31, line: 2248, baseType: !471, offset: 576)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !435, file: !31, line: 2249, baseType: !471, offset: 576)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !435, file: !31, line: 2250, baseType: !477, offset: 576)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 3)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !435, file: !31, line: 2252, baseType: !471, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !435, file: !31, line: 2253, baseType: !471, offset: 576)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !435, file: !31, line: 2254, baseType: !471, offset: 576)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !421, file: !31, line: 1423, baseType: !484, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !31, line: 1935, size: 1472, elements: !487)
!487 = !{!488, !492, !496, !497, !501, !507, !511, !512, !513, !517, !521, !522, !523, !524, !530, !535, !536, !543, !544, !545, !546, !2116, !2131}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !486, file: !31, line: 1936, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!243, !420}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !486, file: !31, line: 1937, baseType: !493, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !243}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !486, file: !31, line: 1938, baseType: !493, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !486, file: !31, line: 1940, baseType: !498, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !243, !112}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !486, file: !31, line: 1941, baseType: !502, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!112, !243, !505}
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !31, line: 289, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !486, file: !31, line: 1942, baseType: !508, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!112, !243}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !486, file: !31, line: 1943, baseType: !493, size: 64, offset: 384)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !486, file: !31, line: 1944, baseType: !455, size: 64, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !486, file: !31, line: 1945, baseType: !514, size: 64, offset: 512)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DISubroutineType(types: !516)
!516 = !{!112, !420, !112}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !486, file: !31, line: 1946, baseType: !518, size: 64, offset: 576)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!112, !420}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !486, file: !31, line: 1947, baseType: !518, size: 64, offset: 640)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !486, file: !31, line: 1948, baseType: !518, size: 64, offset: 704)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !486, file: !31, line: 1949, baseType: !518, size: 64, offset: 768)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !486, file: !31, line: 1950, baseType: !525, size: 64, offset: 832)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!112, !196, !528}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !31, line: 57, flags: DIFlagFwdDecl)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !486, file: !31, line: 1951, baseType: !531, size: 64, offset: 896)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!112, !420, !534, !302}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !486, file: !31, line: 1952, baseType: !455, size: 64, offset: 960)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !486, file: !31, line: 1954, baseType: !537, size: 64, offset: 1024)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!112, !540, !196}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !542, line: 539, flags: DIFlagFwdDecl)
!542 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!543 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !486, file: !31, line: 1955, baseType: !537, size: 64, offset: 1088)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !486, file: !31, line: 1956, baseType: !537, size: 64, offset: 1152)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !486, file: !31, line: 1957, baseType: !537, size: 64, offset: 1216)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "bdev_try_to_free_page", scope: !486, file: !31, line: 1963, baseType: !547, size: 64, offset: 1280)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DISubroutineType(types: !549)
!549 = !{!112, !420, !550, !107}
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !552, line: 68, size: 512, align: 128, elements: !553)
!552 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!553 = !{!554, !555, !2108, !2115}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !551, file: !552, line: 69, baseType: !111, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, scope: !551, file: !552, line: 77, baseType: !556, size: 320, offset: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !551, file: !552, line: 77, size: 320, elements: !557)
!557 = !{!558, !759, !764, !792, !800, !806, !2100, !2107}
!558 = !DIDerivedType(tag: DW_TAG_member, scope: !556, file: !552, line: 78, baseType: !559, size: 320)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !556, file: !552, line: 78, size: 320, elements: !560)
!560 = !{!561, !562, !757, !758}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !559, file: !552, line: 84, baseType: !424, size: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !559, file: !552, line: 86, baseType: !563, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !31, line: 451, size: 1216, align: 64, elements: !565)
!565 = !{!566, !567, !588, !589, !594, !609, !625, !626, !627, !628, !750, !751, !754, !755, !756}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !564, file: !31, line: 452, baseType: !243, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !564, file: !31, line: 453, baseType: !568, size: 128, offset: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !569, line: 292, size: 128, elements: !570)
!569 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!570 = !{!571, !586, !587}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !568, file: !569, line: 293, baseType: !572)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !573, line: 83, baseType: !574)
!573 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !573, line: 71, elements: !575)
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_member, scope: !574, file: !573, line: 72, baseType: !577)
!577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !574, file: !573, line: 72, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !577, file: !573, line: 73, baseType: !580)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !573, line: 20, elements: !581)
!581 = !{!582}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !580, file: !573, line: 21, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !584, line: 25, baseType: !585)
!584 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !584, line: 25, elements: !473)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !568, file: !569, line: 295, baseType: !107, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !568, file: !569, line: 296, baseType: !109, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !564, file: !31, line: 454, baseType: !107, size: 32, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !564, file: !31, line: 455, baseType: !590, size: 32, offset: 224)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !108, line: 168, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 166, size: 32, elements: !592)
!592 = !{!593}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !591, file: !108, line: 167, baseType: !112, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !564, file: !31, line: 460, baseType: !595, size: 128, offset: 256)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !596, line: 125, size: 128, elements: !597)
!596 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!597 = !{!598, !608}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !595, file: !596, line: 126, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !596, line: 31, size: 64, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !599, file: !596, line: 32, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !596, line: 24, size: 192, align: 64, elements: !604)
!604 = !{!605, !606, !607}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !603, file: !596, line: 25, baseType: !111, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !603, file: !596, line: 26, baseType: !602, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !603, file: !596, line: 27, baseType: !602, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !595, file: !596, line: 127, baseType: !602, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !564, file: !31, line: 461, baseType: !610, size: 256, offset: 384)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !611, line: 35, size: 256, elements: !612)
!611 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!612 = !{!613, !621, !622, !624}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !610, file: !611, line: 36, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !615, line: 13, baseType: !616)
!615 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !108, line: 175, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !108, line: 173, size: 64, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !617, file: !108, line: 174, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !230, line: 22, baseType: !354)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !610, file: !611, line: 42, baseType: !614, size: 64, offset: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !610, file: !611, line: 46, baseType: !623, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !573, line: 29, baseType: !580)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !610, file: !611, line: 47, baseType: !424, size: 128, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !564, file: !31, line: 462, baseType: !111, size: 64, offset: 640)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "nrexceptional", scope: !564, file: !31, line: 463, baseType: !111, size: 64, offset: 704)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !564, file: !31, line: 464, baseType: !111, size: 64, offset: 768)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !564, file: !31, line: 465, baseType: !629, size: 64, offset: 832)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !631)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !31, line: 367, size: 1408, elements: !632)
!632 = !{!633, !637, !641, !645, !649, !653, !659, !665, !669, !674, !678, !682, !686, !714, !718, !724, !725, !726, !730, !735, !739, !746}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !631, file: !31, line: 368, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!112, !550, !505}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "readpage", scope: !631, file: !31, line: 369, baseType: !638, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!112, !166, !550}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !631, file: !31, line: 372, baseType: !642, size: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!112, !563, !505}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "set_page_dirty", scope: !631, file: !31, line: 375, baseType: !646, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!112, !550}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "readpages", scope: !631, file: !31, line: 381, baseType: !650, size: 64, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!112, !166, !563, !427, !7}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !631, file: !31, line: 383, baseType: !654, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !31, line: 290, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !631, file: !31, line: 385, baseType: !660, size: 64, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!112, !166, !563, !162, !7, !7, !663, !664}
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !631, file: !31, line: 388, baseType: !666, size: 64, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!112, !166, !563, !162, !7, !7, !550, !109}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !631, file: !31, line: 393, baseType: !670, size: 64, offset: 512)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!673, !563, !673}
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !108, line: 125, baseType: !235)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "invalidatepage", scope: !631, file: !31, line: 394, baseType: !675, size: 64, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !550, !7, !7}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "releasepage", scope: !631, file: !31, line: 395, baseType: !679, size: 64, offset: 640)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!112, !550, !107}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "freepage", scope: !631, file: !31, line: 396, baseType: !683, size: 64, offset: 704)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !550}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !631, file: !31, line: 397, baseType: !687, size: 64, offset: 768)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = !DISubroutineType(types: !689)
!689 = !{!393, !690, !712}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !31, line: 320, size: 384, elements: !692)
!692 = !{!693, !694, !695, !699, !700, !701, !704, !705}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !691, file: !31, line: 321, baseType: !166, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !691, file: !31, line: 326, baseType: !162, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !691, file: !31, line: 327, baseType: !696, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !690, !356, !356}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !691, file: !31, line: 328, baseType: !109, size: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !691, file: !31, line: 329, baseType: !112, size: 32, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ki_hint", scope: !691, file: !31, line: 330, baseType: !702, size: 16, offset: 288)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !230, line: 19, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !232, line: 24, baseType: !248)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !691, file: !31, line: 331, baseType: !702, size: 16, offset: 304)
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !31, line: 332, baseType: !706, size: 64, offset: 320)
!706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !31, line: 332, size: 64, elements: !707)
!707 = !{!708, !709}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ki_cookie", scope: !706, file: !31, line: 333, baseType: !7, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !706, file: !31, line: 334, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !31, line: 334, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !31, line: 64, flags: DIFlagFwdDecl)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "migratepage", scope: !631, file: !31, line: 402, baseType: !715, size: 64, offset: 832)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!112, !563, !550, !550, !5}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "isolate_page", scope: !631, file: !31, line: 404, baseType: !719, size: 64, offset: 896)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DISubroutineType(types: !721)
!721 = !{!307, !550, !722}
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "isolate_mode_t", file: !723, line: 305, baseType: !7)
!723 = !DIFile(filename: "./include/linux/mmzone.h", directory: "/home/lizy2001/genbc/linux")
!724 = !DIDerivedType(tag: DW_TAG_member, name: "putback_page", scope: !631, file: !31, line: 405, baseType: !683, size: 64, offset: 960)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "launder_page", scope: !631, file: !31, line: 406, baseType: !646, size: 64, offset: 1024)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !631, file: !31, line: 407, baseType: !727, size: 64, offset: 1088)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!112, !550, !111, !111}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !631, file: !31, line: 409, baseType: !731, size: 64, offset: 1152)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !550, !734, !734}
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !631, file: !31, line: 410, baseType: !736, size: 64, offset: 1216)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DISubroutineType(types: !738)
!738 = !{!112, !563, !550}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !631, file: !31, line: 413, baseType: !740, size: 64, offset: 1280)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!112, !743, !166, !745}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !31, line: 61, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !631, file: !31, line: 415, baseType: !747, size: 64, offset: 1344)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DISubroutineType(types: !749)
!749 = !{null, !166}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !564, file: !31, line: 466, baseType: !111, size: 64, offset: 896)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !564, file: !31, line: 467, baseType: !752, size: 32, offset: 960)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !753, line: 8, baseType: !229)
!753 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/lizy2001/genbc/linux")
!754 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !564, file: !31, line: 468, baseType: !572, offset: 992)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !564, file: !31, line: 469, baseType: !424, size: 128, offset: 1024)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !564, file: !31, line: 470, baseType: !109, size: 64, offset: 1152)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !559, file: !552, line: 87, baseType: !111, size: 64, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !559, file: !552, line: 94, baseType: !111, size: 64, offset: 256)
!759 = !DIDerivedType(tag: DW_TAG_member, scope: !556, file: !552, line: 96, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !556, file: !552, line: 96, size: 64, elements: !761)
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !760, file: !552, line: 101, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !108, line: 143, baseType: !235)
!764 = !DIDerivedType(tag: DW_TAG_member, scope: !556, file: !552, line: 103, baseType: !765, size: 320)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !556, file: !552, line: 103, size: 320, elements: !766)
!766 = !{!767, !777, !780, !781}
!767 = !DIDerivedType(tag: DW_TAG_member, scope: !765, file: !552, line: 104, baseType: !768, size: 128)
!768 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !765, file: !552, line: 104, size: 128, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !768, file: !552, line: 105, baseType: !424, size: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !768, file: !552, line: 106, baseType: !772, size: 128)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !768, file: !552, line: 106, size: 128, elements: !773)
!773 = !{!774, !775, !776}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !772, file: !552, line: 107, baseType: !550, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !772, file: !552, line: 109, baseType: !112, size: 32, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !772, file: !552, line: 110, baseType: !112, size: 32, offset: 96)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !765, file: !552, line: 117, baseType: !778, size: 64, offset: 128)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !552, line: 117, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !765, file: !552, line: 119, baseType: !109, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, scope: !765, file: !552, line: 120, baseType: !782, size: 64, offset: 256)
!782 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !765, file: !552, line: 120, size: 64, elements: !783)
!783 = !{!784, !785, !786}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !782, file: !552, line: 121, baseType: !109, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !782, file: !552, line: 122, baseType: !111, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !552, line: 123, baseType: !787, size: 32)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !782, file: !552, line: 123, size: 32, elements: !788)
!788 = !{!789, !790, !791}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !787, file: !552, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !787, file: !552, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !787, file: !552, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!792 = !DIDerivedType(tag: DW_TAG_member, scope: !556, file: !552, line: 130, baseType: !793, size: 192)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !556, file: !552, line: 130, size: 192, elements: !794)
!794 = !{!795, !796, !797, !798, !799}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !793, file: !552, line: 131, baseType: !111, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !793, file: !552, line: 134, baseType: !241, size: 8, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !793, file: !552, line: 135, baseType: !241, size: 8, offset: 72)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !793, file: !552, line: 136, baseType: !590, size: 32, offset: 96)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !793, file: !552, line: 137, baseType: !7, size: 32, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, scope: !556, file: !552, line: 139, baseType: !801, size: 256)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !556, file: !552, line: 139, size: 256, elements: !802)
!802 = !{!803, !804, !805}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !801, file: !552, line: 140, baseType: !111, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !801, file: !552, line: 141, baseType: !590, size: 32, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !801, file: !552, line: 143, baseType: !424, size: 128, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, scope: !556, file: !552, line: 145, baseType: !807, size: 256)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !556, file: !552, line: 145, size: 256, elements: !808)
!808 = !{!809, !810, !812, !813, !2099}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !807, file: !552, line: 146, baseType: !111, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !807, file: !552, line: 147, baseType: !811, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !542, line: 509, baseType: !550)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !807, file: !552, line: 148, baseType: !111, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, scope: !807, file: !552, line: 149, baseType: !814, size: 64, offset: 192)
!814 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !807, file: !552, line: 149, size: 64, elements: !815)
!815 = !{!816, !2098}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !814, file: !552, line: 150, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !552, line: 388, size: 7296, elements: !819)
!819 = !{!820, !2094}
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !818, file: !552, line: 389, baseType: !821, size: 7296)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !818, file: !552, line: 389, size: 7296, elements: !822)
!822 = !{!823, !861, !862, !863, !867, !868, !869, !870, !871, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !912, !920, !923, !969, !970, !2078, !2079, !2082, !2083, !2084, !2087, !2088, !2089, !2092, !2093}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !821, file: !552, line: 390, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !552, line: 305, size: 1472, elements: !826)
!826 = !{!827, !828, !829, !830, !831, !832, !833, !834, !841, !842, !847, !848, !851, !855, !856, !857, !858, !859}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !825, file: !552, line: 308, baseType: !111, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !825, file: !552, line: 309, baseType: !111, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !825, file: !552, line: 313, baseType: !824, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !825, file: !552, line: 313, baseType: !824, size: 64, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !825, file: !552, line: 315, baseType: !603, size: 192, align: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !825, file: !552, line: 323, baseType: !111, size: 64, offset: 448)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !825, file: !552, line: 327, baseType: !817, size: 64, offset: 512)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !825, file: !552, line: 333, baseType: !835, size: 64, offset: 576)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !542, line: 284, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !542, line: 284, size: 64, elements: !837)
!837 = !{!838}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !836, file: !542, line: 284, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !840, line: 19, baseType: !111)
!840 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!841 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !825, file: !552, line: 334, baseType: !111, size: 64, offset: 640)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !825, file: !552, line: 343, baseType: !843, size: 256, offset: 704)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !825, file: !552, line: 340, size: 256, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !843, file: !552, line: 341, baseType: !603, size: 192, align: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !843, file: !552, line: 342, baseType: !111, size: 64, offset: 192)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !825, file: !552, line: 351, baseType: !424, size: 128, offset: 960)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !825, file: !552, line: 353, baseType: !849, size: 64, offset: 1088)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !552, line: 353, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !825, file: !552, line: 356, baseType: !852, size: 64, offset: 1152)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !552, line: 356, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !825, file: !552, line: 359, baseType: !111, size: 64, offset: 1216)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !825, file: !552, line: 361, baseType: !166, size: 64, offset: 1280)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !825, file: !552, line: 362, baseType: !109, size: 64, offset: 1344)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !825, file: !552, line: 365, baseType: !614, size: 64, offset: 1408)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !825, file: !552, line: 373, baseType: !860, offset: 1472)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !552, line: 296, elements: !473)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !821, file: !552, line: 391, baseType: !599, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !821, file: !552, line: 392, baseType: !235, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !821, file: !552, line: 394, baseType: !864, size: 64, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DISubroutineType(types: !866)
!866 = !{!111, !166, !111, !111, !111, !111}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !821, file: !552, line: 398, baseType: !111, size: 64, offset: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !821, file: !552, line: 399, baseType: !111, size: 64, offset: 320)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !821, file: !552, line: 405, baseType: !111, size: 64, offset: 384)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !821, file: !552, line: 406, baseType: !111, size: 64, offset: 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !821, file: !552, line: 407, baseType: !872, size: 64, offset: 512)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !542, line: 286, baseType: !874)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !542, line: 286, size: 64, elements: !875)
!875 = !{!876}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !874, file: !542, line: 286, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !840, line: 18, baseType: !111)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !821, file: !552, line: 416, baseType: !590, size: 32, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !821, file: !552, line: 428, baseType: !590, size: 32, offset: 608)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !821, file: !552, line: 437, baseType: !590, size: 32, offset: 640)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !821, file: !552, line: 447, baseType: !590, size: 32, offset: 672)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !821, file: !552, line: 450, baseType: !614, size: 64, offset: 704)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !821, file: !552, line: 452, baseType: !112, size: 32, offset: 768)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !821, file: !552, line: 454, baseType: !572, offset: 800)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !821, file: !552, line: 457, baseType: !610, size: 256, offset: 832)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !821, file: !552, line: 459, baseType: !424, size: 128, offset: 1088)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !821, file: !552, line: 466, baseType: !111, size: 64, offset: 1216)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !821, file: !552, line: 467, baseType: !111, size: 64, offset: 1280)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !821, file: !552, line: 469, baseType: !111, size: 64, offset: 1344)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !821, file: !552, line: 470, baseType: !111, size: 64, offset: 1408)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !821, file: !552, line: 471, baseType: !616, size: 64, offset: 1472)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !821, file: !552, line: 472, baseType: !111, size: 64, offset: 1536)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !821, file: !552, line: 473, baseType: !111, size: 64, offset: 1600)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !821, file: !552, line: 474, baseType: !111, size: 64, offset: 1664)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !821, file: !552, line: 475, baseType: !111, size: 64, offset: 1728)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !821, file: !552, line: 477, baseType: !572, offset: 1792)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !821, file: !552, line: 478, baseType: !111, size: 64, offset: 1792)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !821, file: !552, line: 478, baseType: !111, size: 64, offset: 1856)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !821, file: !552, line: 478, baseType: !111, size: 64, offset: 1920)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !821, file: !552, line: 478, baseType: !111, size: 64, offset: 1984)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !821, file: !552, line: 479, baseType: !111, size: 64, offset: 2048)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !821, file: !552, line: 479, baseType: !111, size: 64, offset: 2112)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !821, file: !552, line: 479, baseType: !111, size: 64, offset: 2176)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !821, file: !552, line: 480, baseType: !111, size: 64, offset: 2240)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !821, file: !552, line: 480, baseType: !111, size: 64, offset: 2304)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !821, file: !552, line: 480, baseType: !111, size: 64, offset: 2368)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !821, file: !552, line: 480, baseType: !111, size: 64, offset: 2432)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !821, file: !552, line: 482, baseType: !909, size: 2816, offset: 2496)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 2816, elements: !910)
!910 = !{!911}
!911 = !DISubrange(count: 44)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !821, file: !552, line: 488, baseType: !913, size: 256, offset: 5312)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !914, line: 60, size: 256, elements: !915)
!914 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!915 = !{!916}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !913, file: !914, line: 61, baseType: !917, size: 256)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 256, elements: !918)
!918 = !{!919}
!919 = !DISubrange(count: 4)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !821, file: !552, line: 490, baseType: !921, size: 64, offset: 5568)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !552, line: 490, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !821, file: !552, line: 493, baseType: !924, size: 896, offset: 5632)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !925, line: 53, baseType: !926)
!925 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !925, line: 13, size: 896, elements: !927)
!927 = !{!928, !929, !930, !931, !934, !935, !942, !943, !963, !964, !965}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !926, file: !925, line: 18, baseType: !235, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !926, file: !925, line: 28, baseType: !616, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !926, file: !925, line: 31, baseType: !610, size: 256, offset: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !926, file: !925, line: 32, baseType: !932, size: 64, offset: 384)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !925, line: 32, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !926, file: !925, line: 37, baseType: !248, size: 16, offset: 448)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !926, file: !925, line: 40, baseType: !936, size: 192, offset: 512)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !937, line: 53, size: 192, elements: !938)
!937 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!938 = !{!939, !940, !941}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !936, file: !937, line: 54, baseType: !614, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !936, file: !937, line: 55, baseType: !572, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !936, file: !937, line: 59, baseType: !424, size: 128, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !926, file: !925, line: 41, baseType: !109, size: 64, offset: 704)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !926, file: !925, line: 42, baseType: !944, size: 64, offset: 768)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !946)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !947, line: 13, size: 896, elements: !948)
!947 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!948 = !{!949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !946, file: !947, line: 14, baseType: !109, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !946, file: !947, line: 15, baseType: !111, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !946, file: !947, line: 17, baseType: !111, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !946, file: !947, line: 17, baseType: !111, size: 64, offset: 192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !946, file: !947, line: 19, baseType: !356, size: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !946, file: !947, line: 21, baseType: !356, size: 64, offset: 320)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !946, file: !947, line: 22, baseType: !356, size: 64, offset: 384)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !946, file: !947, line: 23, baseType: !356, size: 64, offset: 448)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !946, file: !947, line: 24, baseType: !356, size: 64, offset: 512)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !946, file: !947, line: 25, baseType: !356, size: 64, offset: 576)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !946, file: !947, line: 26, baseType: !356, size: 64, offset: 640)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !946, file: !947, line: 27, baseType: !356, size: 64, offset: 704)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !946, file: !947, line: 28, baseType: !356, size: 64, offset: 768)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !946, file: !947, line: 29, baseType: !356, size: 64, offset: 832)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !926, file: !925, line: 44, baseType: !590, size: 32, offset: 832)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !926, file: !925, line: 50, baseType: !702, size: 16, offset: 864)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !926, file: !925, line: 51, baseType: !966, size: 16, offset: 880)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !230, line: 18, baseType: !967)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !232, line: 23, baseType: !968)
!968 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !821, file: !552, line: 495, baseType: !111, size: 64, offset: 6528)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !821, file: !552, line: 497, baseType: !971, size: 64, offset: 6592)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !552, line: 381, size: 384, elements: !973)
!973 = !{!974, !975, !2077}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !972, file: !552, line: 382, baseType: !590, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !972, file: !552, line: 383, baseType: !976, size: 128, offset: 64)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !552, line: 376, size: 128, elements: !977)
!977 = !{!978, !2075}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !976, file: !552, line: 377, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !981, line: 640, size: 48640, elements: !982)
!981 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!982 = !{!983, !989, !991, !992, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1009, !1027, !1038, !1123, !1124, !1125, !1136, !1137, !1139, !1140, !1141, !1142, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1221, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1259, !1261, !1262, !1263, !1275, !1276, !1277, !1278, !1279, !1280, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1304, !1309, !1493, !1494, !1495, !1496, !1500, !1503, !1506, !1509, !1512, !1516, !1617, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1665, !1666, !1667, !1668, !1669, !1674, !1675, !1676, !1679, !1680, !1683, !1686, !1689, !1692, !1735, !1738, !1739, !1818, !1819, !1822, !1823, !1826, !1827, !1828, !1832, !1833, !1834, !1847, !1848, !1849, !1859, !1864, !1867, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !980, file: !981, line: 646, baseType: !984, size: 128)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !985, line: 56, size: 128, elements: !986)
!985 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !984, file: !985, line: 57, baseType: !111, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !984, file: !985, line: 58, baseType: !229, size: 32, offset: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !980, file: !981, line: 649, baseType: !990, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !356)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !980, file: !981, line: 657, baseType: !109, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !980, file: !981, line: 658, baseType: !993, size: 32, offset: 256)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !994, line: 113, baseType: !995)
!994 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !994, line: 111, size: 32, elements: !996)
!996 = !{!997}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !995, file: !994, line: 112, baseType: !590, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !980, file: !981, line: 660, baseType: !7, size: 32, offset: 288)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !980, file: !981, line: 661, baseType: !7, size: 32, offset: 320)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !980, file: !981, line: 684, baseType: !112, size: 32, offset: 352)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !980, file: !981, line: 686, baseType: !112, size: 32, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !980, file: !981, line: 687, baseType: !112, size: 32, offset: 416)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !980, file: !981, line: 688, baseType: !112, size: 32, offset: 448)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !980, file: !981, line: 689, baseType: !7, size: 32, offset: 480)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !980, file: !981, line: 691, baseType: !1006, size: 64, offset: 512)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1008)
!1008 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !981, line: 691, flags: DIFlagFwdDecl)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !980, file: !981, line: 692, baseType: !1010, size: 832, offset: 576)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !981, line: 451, size: 832, elements: !1011)
!1011 = !{!1012, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1010, file: !981, line: 453, baseType: !1013, size: 128)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !981, line: 325, size: 128, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1013, file: !981, line: 326, baseType: !111, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1013, file: !981, line: 327, baseType: !229, size: 32, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1010, file: !981, line: 454, baseType: !603, size: 192, align: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1010, file: !981, line: 455, baseType: !424, size: 128, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1010, file: !981, line: 456, baseType: !7, size: 32, offset: 448)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1010, file: !981, line: 458, baseType: !235, size: 64, offset: 512)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1010, file: !981, line: 459, baseType: !235, size: 64, offset: 576)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1010, file: !981, line: 460, baseType: !235, size: 64, offset: 640)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1010, file: !981, line: 461, baseType: !235, size: 64, offset: 704)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1010, file: !981, line: 463, baseType: !235, size: 64, offset: 768)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !1010, file: !981, line: 465, baseType: !1026, offset: 832)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !981, line: 415, elements: !473)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !980, file: !981, line: 693, baseType: !1028, size: 384, offset: 1408)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !981, line: 489, size: 384, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1033, !1034, !1035, !1036}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1028, file: !981, line: 490, baseType: !424, size: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1028, file: !981, line: 491, baseType: !111, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1028, file: !981, line: 492, baseType: !111, size: 64, offset: 192)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1028, file: !981, line: 493, baseType: !7, size: 32, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1028, file: !981, line: 494, baseType: !248, size: 16, offset: 288)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1028, file: !981, line: 495, baseType: !248, size: 16, offset: 304)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1028, file: !981, line: 497, baseType: !1037, size: 64, offset: 320)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !980, file: !981, line: 697, baseType: !1039, size: 1792, offset: 1792)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !981, line: 507, size: 1792, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1120, !1121}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1039, file: !981, line: 508, baseType: !603, size: 192, align: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1039, file: !981, line: 515, baseType: !235, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1039, file: !981, line: 516, baseType: !235, size: 64, offset: 256)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1039, file: !981, line: 517, baseType: !235, size: 64, offset: 320)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1039, file: !981, line: 518, baseType: !235, size: 64, offset: 384)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1039, file: !981, line: 519, baseType: !235, size: 64, offset: 448)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1039, file: !981, line: 526, baseType: !620, size: 64, offset: 512)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1039, file: !981, line: 527, baseType: !235, size: 64, offset: 576)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1039, file: !981, line: 528, baseType: !7, size: 32, offset: 640)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1039, file: !981, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1039, file: !981, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1039, file: !981, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1039, file: !981, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1039, file: !981, line: 563, baseType: !1055, size: 512, offset: 704)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !14, line: 118, size: 512, elements: !1056)
!1056 = !{!1057, !1065, !1066, !1071, !1114, !1117, !1118, !1119}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1055, file: !14, line: 119, baseType: !1058, size: 256)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1059, line: 9, size: 256, elements: !1060)
!1059 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1058, file: !1059, line: 10, baseType: !603, size: 192, align: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1058, file: !1059, line: 11, baseType: !1063, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1064, line: 29, baseType: !620)
!1064 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1055, file: !14, line: 120, baseType: !1063, size: 64, offset: 256)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1055, file: !14, line: 121, baseType: !1067, size: 64, offset: 320)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!13, !1070}
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1055, file: !14, line: 122, baseType: !1072, size: 64, offset: 384)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !14, line: 159, size: 512, align: 512, elements: !1074)
!1074 = !{!1075, !1095, !1096, !1099, !1104, !1105, !1109, !1113}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1073, file: !14, line: 160, baseType: !1076, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !14, line: 214, size: 4608, align: 512, elements: !1078)
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1077, file: !14, line: 215, baseType: !623)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1077, file: !14, line: 216, baseType: !7, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1077, file: !14, line: 217, baseType: !7, size: 32, offset: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1077, file: !14, line: 218, baseType: !7, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1077, file: !14, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1077, file: !14, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1077, file: !14, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1077, file: !14, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1077, file: !14, line: 233, baseType: !1063, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1077, file: !14, line: 234, baseType: !1070, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1077, file: !14, line: 235, baseType: !1063, size: 64, offset: 256)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1077, file: !14, line: 236, baseType: !1070, size: 64, offset: 320)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1077, file: !14, line: 237, baseType: !1092, size: 4096, offset: 512)
!1092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1073, size: 4096, elements: !1093)
!1093 = !{!1094}
!1094 = !DISubrange(count: 8)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1073, file: !14, line: 161, baseType: !7, size: 32, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1073, file: !14, line: 162, baseType: !1097, size: 32, offset: 96)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !108, line: 27, baseType: !1098)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !164, line: 96, baseType: !112)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1073, file: !14, line: 163, baseType: !1100, size: 32, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !202, line: 276, baseType: !1101)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !202, line: 276, size: 32, elements: !1102)
!1102 = !{!1103}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1101, file: !202, line: 276, baseType: !206, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1073, file: !14, line: 164, baseType: !1070, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1073, file: !14, line: 165, baseType: !1106, size: 128, offset: 256)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1059, line: 14, size: 128, elements: !1107)
!1107 = !{!1108}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1106, file: !1059, line: 15, baseType: !595, size: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1073, file: !14, line: 166, baseType: !1110, size: 64, offset: 384)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!1063}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1073, file: !14, line: 167, baseType: !1063, size: 64, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1055, file: !14, line: 123, baseType: !1115, size: 8, offset: 448)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !230, line: 17, baseType: !1116)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !232, line: 21, baseType: !241)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1055, file: !14, line: 124, baseType: !1115, size: 8, offset: 456)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1055, file: !14, line: 125, baseType: !1115, size: 8, offset: 464)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1055, file: !14, line: 126, baseType: !1115, size: 8, offset: 472)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1039, file: !981, line: 572, baseType: !1055, size: 512, offset: 1216)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1039, file: !981, line: 580, baseType: !1122, size: 64, offset: 1728)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !980, file: !981, line: 721, baseType: !7, size: 32, offset: 3584)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !980, file: !981, line: 722, baseType: !112, size: 32, offset: 3616)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !980, file: !981, line: 723, baseType: !1126, size: 64, offset: 3648)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1128)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1129, line: 17, baseType: !1130)
!1129 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1129, line: 17, size: 64, elements: !1131)
!1131 = !{!1132}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1130, file: !1129, line: 17, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 64, elements: !1134)
!1134 = !{!1135}
!1135 = !DISubrange(count: 1)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !980, file: !981, line: 724, baseType: !1128, size: 64, offset: 3712)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !980, file: !981, line: 749, baseType: !1138, offset: 3776)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !981, line: 290, elements: !473)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !980, file: !981, line: 751, baseType: !424, size: 128, offset: 3776)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !980, file: !981, line: 757, baseType: !817, size: 64, offset: 3904)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !980, file: !981, line: 758, baseType: !817, size: 64, offset: 3968)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !980, file: !981, line: 761, baseType: !1143, size: 320, offset: 4032)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !914, line: 34, size: 320, elements: !1144)
!1144 = !{!1145, !1146}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !1143, file: !914, line: 35, baseType: !235, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !1143, file: !914, line: 36, baseType: !1147, size: 256, offset: 64)
!1147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 256, elements: !918)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !980, file: !981, line: 766, baseType: !112, size: 32, offset: 4352)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !980, file: !981, line: 767, baseType: !112, size: 32, offset: 4384)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !980, file: !981, line: 768, baseType: !112, size: 32, offset: 4416)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !980, file: !981, line: 770, baseType: !112, size: 32, offset: 4448)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !980, file: !981, line: 772, baseType: !111, size: 64, offset: 4480)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !980, file: !981, line: 775, baseType: !7, size: 32, offset: 4544)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !980, file: !981, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !980, file: !981, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !980, file: !981, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !980, file: !981, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !980, file: !981, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !980, file: !981, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !980, file: !981, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !980, file: !981, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !980, file: !981, line: 831, baseType: !111, size: 64, offset: 4672)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !980, file: !981, line: 833, baseType: !1164, size: 384, offset: 4736)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !19, line: 25, size: 384, elements: !1165)
!1165 = !{!1166, !1171}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1164, file: !19, line: 26, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!356, !1170}
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, scope: !1164, file: !19, line: 27, baseType: !1172, size: 320, offset: 64)
!1172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1164, file: !19, line: 27, size: 320, elements: !1173)
!1173 = !{!1174, !1184, !1211}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1172, file: !19, line: 36, baseType: !1175, size: 320)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1172, file: !19, line: 29, size: 320, elements: !1176)
!1176 = !{!1177, !1179, !1180, !1181, !1182, !1183}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1175, file: !19, line: 30, baseType: !1178, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1175, file: !19, line: 31, baseType: !229, size: 32, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1175, file: !19, line: 32, baseType: !229, size: 32, offset: 96)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1175, file: !19, line: 33, baseType: !229, size: 32, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1175, file: !19, line: 34, baseType: !235, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1175, file: !19, line: 35, baseType: !1178, size: 64, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1172, file: !19, line: 46, baseType: !1185, size: 192)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1172, file: !19, line: 38, size: 192, elements: !1186)
!1186 = !{!1187, !1188, !1189, !1210}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1185, file: !19, line: 39, baseType: !1097, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1185, file: !19, line: 40, baseType: !18, size: 32, offset: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1185, file: !19, line: 41, baseType: !1190, size: 64, offset: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1185, file: !19, line: 41, size: 64, elements: !1191)
!1191 = !{!1192, !1200}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1190, file: !19, line: 42, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1195, line: 7, size: 128, elements: !1196)
!1195 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!1196 = !{!1197, !1199}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1194, file: !1195, line: 8, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !164, line: 93, baseType: !165)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1194, file: !1195, line: 9, baseType: !165, size: 64, offset: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1190, file: !19, line: 43, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1203, line: 7, size: 64, elements: !1204)
!1203 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!1204 = !{!1205, !1209}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1202, file: !1203, line: 8, baseType: !1206, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1203, line: 5, baseType: !1207)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !230, line: 20, baseType: !1208)
!1208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !232, line: 26, baseType: !112)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1202, file: !1203, line: 9, baseType: !1207, size: 32, offset: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1185, file: !19, line: 45, baseType: !235, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1172, file: !19, line: 54, baseType: !1212, size: 256)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1172, file: !19, line: 48, size: 256, elements: !1213)
!1213 = !{!1214, !1217, !1218, !1219, !1220}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1212, file: !19, line: 49, baseType: !1215, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !19, line: 14, flags: DIFlagFwdDecl)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1212, file: !19, line: 50, baseType: !112, size: 32, offset: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1212, file: !19, line: 51, baseType: !112, size: 32, offset: 96)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1212, file: !19, line: 52, baseType: !111, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1212, file: !19, line: 53, baseType: !111, size: 64, offset: 192)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !980, file: !981, line: 835, baseType: !1222, size: 32, offset: 5120)
!1222 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !108, line: 22, baseType: !1223)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !164, line: 28, baseType: !112)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !980, file: !981, line: 836, baseType: !1222, size: 32, offset: 5152)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !980, file: !981, line: 840, baseType: !111, size: 64, offset: 5184)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !980, file: !981, line: 849, baseType: !979, size: 64, offset: 5248)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !980, file: !981, line: 852, baseType: !979, size: 64, offset: 5312)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !980, file: !981, line: 857, baseType: !424, size: 128, offset: 5376)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !980, file: !981, line: 858, baseType: !424, size: 128, offset: 5504)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !980, file: !981, line: 859, baseType: !979, size: 64, offset: 5632)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !980, file: !981, line: 867, baseType: !424, size: 128, offset: 5696)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !980, file: !981, line: 868, baseType: !424, size: 128, offset: 5824)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !980, file: !981, line: 871, baseType: !1234, size: 64, offset: 5952)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !40, line: 59, size: 768, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1240, !1242, !1243, !1250, !1251}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1235, file: !40, line: 61, baseType: !993, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1235, file: !40, line: 62, baseType: !7, size: 32, offset: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1235, file: !40, line: 63, baseType: !572, offset: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1235, file: !40, line: 65, baseType: !1241, size: 256, offset: 64)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 256, elements: !918)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1235, file: !40, line: 66, baseType: !461, size: 64, offset: 320)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1235, file: !40, line: 68, baseType: !1244, size: 128, offset: 384)
!1244 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1245, line: 40, baseType: !1246)
!1245 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1245, line: 36, size: 128, elements: !1247)
!1247 = !{!1248, !1249}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1246, file: !1245, line: 37, baseType: !572)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1246, file: !1245, line: 38, baseType: !424, size: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1235, file: !40, line: 69, baseType: !179, size: 128, align: 64, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1235, file: !40, line: 70, baseType: !1252, size: 128, offset: 640)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1253, size: 128, elements: !1134)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !40, line: 54, size: 128, elements: !1254)
!1254 = !{!1255, !1256}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1253, file: !40, line: 55, baseType: !112, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1253, file: !40, line: 56, baseType: !1257, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !40, line: 56, flags: DIFlagFwdDecl)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !980, file: !981, line: 872, baseType: !1260, size: 512, offset: 6016)
!1260 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 512, elements: !918)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !980, file: !981, line: 873, baseType: !424, size: 128, offset: 6528)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !980, file: !981, line: 874, baseType: !424, size: 128, offset: 6656)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !980, file: !981, line: 876, baseType: !1264, size: 64, offset: 6784)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1266, line: 26, size: 192, elements: !1267)
!1266 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1267 = !{!1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1265, file: !1266, line: 27, baseType: !7, size: 32)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1265, file: !1266, line: 28, baseType: !1270, size: 128, offset: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1271, line: 43, size: 128, elements: !1272)
!1271 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1270, file: !1271, line: 44, baseType: !623)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1270, file: !1271, line: 45, baseType: !424, size: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !980, file: !981, line: 879, baseType: !534, size: 64, offset: 6848)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !980, file: !981, line: 882, baseType: !534, size: 64, offset: 6912)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !980, file: !981, line: 884, baseType: !235, size: 64, offset: 6976)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !980, file: !981, line: 885, baseType: !235, size: 64, offset: 7040)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !980, file: !981, line: 890, baseType: !235, size: 64, offset: 7104)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !980, file: !981, line: 891, baseType: !1281, size: 128, offset: 7168)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !981, line: 242, size: 128, elements: !1282)
!1282 = !{!1283, !1284, !1285}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1281, file: !981, line: 244, baseType: !235, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1281, file: !981, line: 245, baseType: !235, size: 64, offset: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1281, file: !981, line: 246, baseType: !623, offset: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !980, file: !981, line: 900, baseType: !111, size: 64, offset: 7296)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !980, file: !981, line: 901, baseType: !111, size: 64, offset: 7360)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !980, file: !981, line: 904, baseType: !235, size: 64, offset: 7424)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !980, file: !981, line: 907, baseType: !235, size: 64, offset: 7488)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !980, file: !981, line: 910, baseType: !111, size: 64, offset: 7552)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !980, file: !981, line: 911, baseType: !111, size: 64, offset: 7616)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !980, file: !981, line: 914, baseType: !1293, size: 640, offset: 7680)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1294, line: 123, size: 640, elements: !1295)
!1294 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1295 = !{!1296, !1302, !1303}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1293, file: !1294, line: 124, baseType: !1297, size: 576)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1298, size: 576, elements: !478)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1294, line: 108, size: 192, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1298, file: !1294, line: 109, baseType: !235, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1298, file: !1294, line: 110, baseType: !1106, size: 128, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1293, file: !1294, line: 125, baseType: !7, size: 32, offset: 576)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1293, file: !1294, line: 126, baseType: !7, size: 32, offset: 608)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !980, file: !981, line: 917, baseType: !1305, size: 192, offset: 8320)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1294, line: 134, size: 192, elements: !1306)
!1306 = !{!1307, !1308}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1305, file: !1294, line: 135, baseType: !179, size: 128, align: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1305, file: !1294, line: 136, baseType: !7, size: 32, offset: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !980, file: !981, line: 923, baseType: !1310, size: 64, offset: 8512)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1312)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1313, line: 111, size: 1280, elements: !1314)
!1313 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/lizy2001/genbc/linux")
!1314 = !{!1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1334, !1335, !1336, !1337, !1338, !1339, !1446, !1447, !1448, !1449, !1475, !1478, !1488}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1312, file: !1313, line: 112, baseType: !590, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1312, file: !1313, line: 120, baseType: !251, size: 32, offset: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1312, file: !1313, line: 121, baseType: !259, size: 32, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1312, file: !1313, line: 122, baseType: !251, size: 32, offset: 96)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1312, file: !1313, line: 123, baseType: !259, size: 32, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1312, file: !1313, line: 124, baseType: !251, size: 32, offset: 160)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1312, file: !1313, line: 125, baseType: !259, size: 32, offset: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1312, file: !1313, line: 126, baseType: !251, size: 32, offset: 224)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1312, file: !1313, line: 127, baseType: !259, size: 32, offset: 256)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1312, file: !1313, line: 128, baseType: !7, size: 32, offset: 288)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1312, file: !1313, line: 129, baseType: !1326, size: 64, offset: 320)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1327, line: 26, baseType: !1328)
!1327 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/lizy2001/genbc/linux")
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_cap_struct", file: !1327, line: 24, size: 64, elements: !1329)
!1329 = !{!1330}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "cap", scope: !1328, file: !1327, line: 25, baseType: !1331, size: 64)
!1331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 64, elements: !1332)
!1332 = !{!1333}
!1333 = !DISubrange(count: 2)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1312, file: !1313, line: 130, baseType: !1326, size: 64, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1312, file: !1313, line: 131, baseType: !1326, size: 64, offset: 448)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1312, file: !1313, line: 132, baseType: !1326, size: 64, offset: 512)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1312, file: !1313, line: 133, baseType: !1326, size: 64, offset: 576)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1312, file: !1313, line: 135, baseType: !241, size: 8, offset: 640)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1312, file: !1313, line: 137, baseType: !1340, size: 64, offset: 704)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1342, line: 189, size: 1664, elements: !1343)
!1342 = !DIFile(filename: "./include/linux/key.h", directory: "/home/lizy2001/genbc/linux")
!1343 = !{!1344, !1345, !1348, !1353, !1354, !1357, !1358, !1363, !1364, !1365, !1366, !1368, !1369, !1370, !1371, !1372, !1410, !1431}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1341, file: !1342, line: 190, baseType: !993, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1341, file: !1342, line: 191, baseType: !1346, size: 32, offset: 32)
!1346 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1342, line: 28, baseType: !1347)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !108, line: 98, baseType: !1207)
!1348 = !DIDerivedType(tag: DW_TAG_member, scope: !1341, file: !1342, line: 192, baseType: !1349, size: 192, offset: 64)
!1349 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1341, file: !1342, line: 192, size: 192, elements: !1350)
!1350 = !{!1351, !1352}
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1349, file: !1342, line: 193, baseType: !424, size: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1349, file: !1342, line: 194, baseType: !603, size: 192, align: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1341, file: !1342, line: 199, baseType: !610, size: 256, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1341, file: !1342, line: 200, baseType: !1355, size: 64, offset: 512)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1342, line: 200, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1341, file: !1342, line: 201, baseType: !109, size: 64, offset: 576)
!1358 = !DIDerivedType(tag: DW_TAG_member, scope: !1341, file: !1342, line: 202, baseType: !1359, size: 64, offset: 640)
!1359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1341, file: !1342, line: 202, size: 64, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1359, file: !1342, line: 203, baseType: !353, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1359, file: !1342, line: 204, baseType: !353, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1341, file: !1342, line: 206, baseType: !353, size: 64, offset: 704)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1341, file: !1342, line: 207, baseType: !251, size: 32, offset: 768)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1341, file: !1342, line: 208, baseType: !259, size: 32, offset: 800)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1341, file: !1342, line: 209, baseType: !1367, size: 32, offset: 832)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1342, line: 31, baseType: !374)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1341, file: !1342, line: 210, baseType: !248, size: 16, offset: 864)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1341, file: !1342, line: 211, baseType: !248, size: 16, offset: 880)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1341, file: !1342, line: 215, baseType: !968, size: 16, offset: 896)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1341, file: !1342, line: 222, baseType: !111, size: 64, offset: 960)
!1372 = !DIDerivedType(tag: DW_TAG_member, scope: !1341, file: !1342, line: 239, baseType: !1373, size: 320, offset: 1024)
!1373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1341, file: !1342, line: 239, size: 320, elements: !1374)
!1374 = !{!1375, !1402}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1373, file: !1342, line: 240, baseType: !1376, size: 320)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1342, line: 108, size: 320, elements: !1377)
!1377 = !{!1378, !1379, !1391, !1394, !1401}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1376, file: !1342, line: 110, baseType: !111, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, scope: !1376, file: !1342, line: 111, baseType: !1380, size: 64, offset: 64)
!1380 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1376, file: !1342, line: 111, size: 64, elements: !1381)
!1381 = !{!1382, !1390}
!1382 = !DIDerivedType(tag: DW_TAG_member, scope: !1380, file: !1342, line: 112, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1380, file: !1342, line: 112, size: 64, elements: !1384)
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1383, file: !1342, line: 114, baseType: !702, size: 16)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1383, file: !1342, line: 115, baseType: !1387, size: 48, offset: 16)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 48, elements: !1388)
!1388 = !{!1389}
!1389 = !DISubrange(count: 6)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1380, file: !1342, line: 121, baseType: !111, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1376, file: !1342, line: 123, baseType: !1392, size: 64, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64)
!1393 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1342, line: 96, flags: DIFlagFwdDecl)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1376, file: !1342, line: 124, baseType: !1395, size: 64, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1342, line: 102, size: 192, elements: !1397)
!1397 = !{!1398, !1399, !1400}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1396, file: !1342, line: 103, baseType: !179, size: 128, align: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1396, file: !1342, line: 104, baseType: !993, size: 32, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1396, file: !1342, line: 105, baseType: !307, size: 8, offset: 160)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1376, file: !1342, line: 125, baseType: !148, size: 64, offset: 256)
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1373, file: !1342, line: 241, baseType: !1403, size: 320)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1373, file: !1342, line: 241, size: 320, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1408, !1409}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1403, file: !1342, line: 242, baseType: !111, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1403, file: !1342, line: 243, baseType: !111, size: 64, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1403, file: !1342, line: 244, baseType: !1392, size: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1403, file: !1342, line: 245, baseType: !1395, size: 64, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1403, file: !1342, line: 246, baseType: !302, size: 64, offset: 256)
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1341, file: !1342, line: 254, baseType: !1411, size: 256, offset: 1344)
!1411 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1341, file: !1342, line: 254, size: 256, elements: !1412)
!1412 = !{!1413, !1419}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1411, file: !1342, line: 255, baseType: !1414, size: 256)
!1414 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1342, line: 128, size: 256, elements: !1415)
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1414, file: !1342, line: 129, baseType: !109, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1414, file: !1342, line: 130, baseType: !1418, size: 256)
!1418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 256, elements: !918)
!1419 = !DIDerivedType(tag: DW_TAG_member, scope: !1411, file: !1342, line: 256, baseType: !1420, size: 256)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1411, file: !1342, line: 256, size: 256, elements: !1421)
!1421 = !{!1422, !1423}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1420, file: !1342, line: 258, baseType: !424, size: 128)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1420, file: !1342, line: 259, baseType: !1424, size: 128, offset: 128)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1425, line: 22, size: 128, elements: !1426)
!1425 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/lizy2001/genbc/linux")
!1426 = !{!1427, !1430}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1424, file: !1425, line: 23, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1425, line: 23, flags: DIFlagFwdDecl)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1424, file: !1425, line: 24, baseType: !111, size: 64, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1341, file: !1342, line: 274, baseType: !1432, size: 64, offset: 1600)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1342, line: 170, size: 192, elements: !1434)
!1434 = !{!1435, !1444, !1445}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1433, file: !1342, line: 171, baseType: !1436, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1342, line: 165, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!112, !1340, !1440, !1442, !1340}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1393)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1414)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1433, file: !1342, line: 172, baseType: !1340, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1433, file: !1342, line: 173, baseType: !1392, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1312, file: !1313, line: 138, baseType: !1340, size: 64, offset: 768)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1312, file: !1313, line: 139, baseType: !1340, size: 64, offset: 832)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1312, file: !1313, line: 140, baseType: !1340, size: 64, offset: 896)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1312, file: !1313, line: 145, baseType: !1450, size: 64, offset: 960)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1452, line: 13, size: 896, elements: !1453)
!1452 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/lizy2001/genbc/linux")
!1453 = !{!1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1451, file: !1452, line: 14, baseType: !993, size: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "processes", scope: !1451, file: !1452, line: 15, baseType: !590, size: 32, offset: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "sigpending", scope: !1451, file: !1452, line: 16, baseType: !590, size: 32, offset: 64)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1451, file: !1452, line: 21, baseType: !614, size: 64, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "locked_shm", scope: !1451, file: !1452, line: 27, baseType: !111, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1451, file: !1452, line: 28, baseType: !111, size: 64, offset: 256)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1451, file: !1452, line: 29, baseType: !614, size: 64, offset: 320)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1451, file: !1452, line: 32, baseType: !465, size: 128, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1451, file: !1452, line: 33, baseType: !251, size: 32, offset: 512)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1451, file: !1452, line: 37, baseType: !614, size: 64, offset: 576)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1451, file: !1452, line: 44, baseType: !1465, size: 256, offset: 640)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1466, line: 15, size: 256, elements: !1467)
!1466 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/lizy2001/genbc/linux")
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473, !1474}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1465, file: !1466, line: 16, baseType: !623)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1465, file: !1466, line: 18, baseType: !112, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1465, file: !1466, line: 19, baseType: !112, size: 32, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1465, file: !1466, line: 20, baseType: !112, size: 32, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1465, file: !1466, line: 21, baseType: !112, size: 32, offset: 96)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1465, file: !1466, line: 22, baseType: !111, size: 64, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1465, file: !1466, line: 23, baseType: !111, size: 64, offset: 192)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1312, file: !1313, line: 146, baseType: !1476, size: 64, offset: 1024)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !252, line: 18, flags: DIFlagFwdDecl)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1312, file: !1313, line: 147, baseType: !1479, size: 64, offset: 1088)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1313, line: 25, size: 64, elements: !1481)
!1481 = !{!1482, !1483, !1484}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1480, file: !1313, line: 26, baseType: !590, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1480, file: !1313, line: 27, baseType: !112, size: 32, offset: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1480, file: !1313, line: 28, baseType: !1485, offset: 64)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, elements: !1486)
!1486 = !{!1487}
!1487 = !DISubrange(count: 0)
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !1312, file: !1313, line: 149, baseType: !1489, size: 128, offset: 1152)
!1489 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1312, file: !1313, line: 149, size: 128, elements: !1490)
!1490 = !{!1491, !1492}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1489, file: !1313, line: 150, baseType: !112, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1489, file: !1313, line: 151, baseType: !179, size: 128, align: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !980, file: !981, line: 926, baseType: !1310, size: 64, offset: 8576)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !980, file: !981, line: 929, baseType: !1310, size: 64, offset: 8640)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !980, file: !981, line: 933, baseType: !1340, size: 64, offset: 8704)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !980, file: !981, line: 943, baseType: !1497, size: 128, offset: 8768)
!1497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 128, elements: !1498)
!1498 = !{!1499}
!1499 = !DISubrange(count: 16)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !980, file: !981, line: 945, baseType: !1501, size: 64, offset: 8896)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !981, line: 49, flags: DIFlagFwdDecl)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !980, file: !981, line: 956, baseType: !1504, size: 64, offset: 8960)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !981, line: 45, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !980, file: !981, line: 959, baseType: !1507, size: 64, offset: 9024)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !981, line: 959, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !980, file: !981, line: 962, baseType: !1510, size: 64, offset: 9088)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !981, line: 66, flags: DIFlagFwdDecl)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !980, file: !981, line: 966, baseType: !1513, size: 64, offset: 9152)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1515, line: 35, flags: DIFlagFwdDecl)
!1515 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !980, file: !981, line: 969, baseType: !1517, size: 64, offset: 9216)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1519, line: 82, size: 7296, elements: !1520)
!1519 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/lizy2001/genbc/linux")
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526, !1527, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1556, !1565, !1566, !1568, !1569, !1570, !1573, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1603, !1604, !1611, !1612, !1613, !1614, !1615, !1616}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !1518, file: !1519, line: 83, baseType: !993, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !1518, file: !1519, line: 84, baseType: !590, size: 32, offset: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !1518, file: !1519, line: 85, baseType: !112, size: 32, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !1518, file: !1519, line: 86, baseType: !424, size: 128, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !1518, file: !1519, line: 88, baseType: !1244, size: 128, offset: 256)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !1518, file: !1519, line: 91, baseType: !979, size: 64, offset: 384)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !1518, file: !1519, line: 94, baseType: !1528, size: 192, offset: 448)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1529, line: 30, size: 192, elements: !1530)
!1529 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1530 = !{!1531, !1532}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1528, file: !1529, line: 31, baseType: !424, size: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1528, file: !1529, line: 32, baseType: !1533, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1534, line: 25, baseType: !1535)
!1534 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1534, line: 23, size: 64, elements: !1536)
!1536 = !{!1537}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1535, file: !1534, line: 24, baseType: !1133, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !1518, file: !1519, line: 97, baseType: !461, size: 64, offset: 640)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !1518, file: !1519, line: 100, baseType: !112, size: 32, offset: 704)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !1518, file: !1519, line: 106, baseType: !112, size: 32, offset: 736)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_task", scope: !1518, file: !1519, line: 107, baseType: !979, size: 64, offset: 768)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !1518, file: !1519, line: 110, baseType: !112, size: 32, offset: 832)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1518, file: !1519, line: 111, baseType: !7, size: 32, offset: 864)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !1518, file: !1519, line: 122, baseType: !7, size: 1, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !1518, file: !1519, line: 123, baseType: !7, size: 1, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timer_id", scope: !1518, file: !1519, line: 128, baseType: !112, size: 32, offset: 928)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !1518, file: !1519, line: 129, baseType: !424, size: 128, offset: 960)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !1518, file: !1519, line: 132, baseType: !1055, size: 512, offset: 1088)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !1518, file: !1519, line: 133, baseType: !1063, size: 64, offset: 1600)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !1518, file: !1519, line: 140, baseType: !1551, size: 256, offset: 1664)
!1551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1552, size: 256, elements: !1332)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !1519, line: 38, size: 128, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1552, file: !1519, line: 39, baseType: !235, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1552, file: !1519, line: 40, baseType: !235, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !1518, file: !1519, line: 146, baseType: !1557, size: 192, offset: 1920)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !1519, line: 66, size: 192, elements: !1558)
!1558 = !{!1559}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !1557, file: !1519, line: 67, baseType: !1560, size: 192)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !1519, line: 47, size: 192, elements: !1561)
!1561 = !{!1562, !1563, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1560, file: !1519, line: 48, baseType: !616, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1560, file: !1519, line: 49, baseType: !616, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1560, file: !1519, line: 50, baseType: !616, size: 64, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1518, file: !1519, line: 150, baseType: !1293, size: 640, offset: 2112)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !1518, file: !1519, line: 153, baseType: !1567, size: 256, offset: 2752)
!1567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1234, size: 256, elements: !918)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !1518, file: !1519, line: 159, baseType: !1234, size: 64, offset: 3008)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !1518, file: !1519, line: 162, baseType: !112, size: 32, offset: 3072)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !1518, file: !1519, line: 164, baseType: !1571, size: 64, offset: 3136)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !1519, line: 164, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !1518, file: !1519, line: 175, baseType: !1574, size: 32, offset: 3200)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !202, line: 805, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !202, line: 798, size: 32, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1575, file: !202, line: 803, baseType: !201, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1575, file: !202, line: 804, baseType: !572, offset: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1518, file: !1519, line: 176, baseType: !235, size: 64, offset: 3264)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1518, file: !1519, line: 176, baseType: !235, size: 64, offset: 3328)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !1518, file: !1519, line: 176, baseType: !235, size: 64, offset: 3392)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !1518, file: !1519, line: 176, baseType: !235, size: 64, offset: 3456)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1518, file: !1519, line: 177, baseType: !235, size: 64, offset: 3520)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !1518, file: !1519, line: 178, baseType: !235, size: 64, offset: 3584)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1518, file: !1519, line: 179, baseType: !1281, size: 128, offset: 3648)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1518, file: !1519, line: 180, baseType: !111, size: 64, offset: 3776)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1518, file: !1519, line: 180, baseType: !111, size: 64, offset: 3840)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !1518, file: !1519, line: 180, baseType: !111, size: 64, offset: 3904)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !1518, file: !1519, line: 180, baseType: !111, size: 64, offset: 3968)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1518, file: !1519, line: 181, baseType: !111, size: 64, offset: 4032)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1518, file: !1519, line: 181, baseType: !111, size: 64, offset: 4096)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !1518, file: !1519, line: 181, baseType: !111, size: 64, offset: 4160)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !1518, file: !1519, line: 181, baseType: !111, size: 64, offset: 4224)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !1518, file: !1519, line: 182, baseType: !111, size: 64, offset: 4288)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !1518, file: !1519, line: 182, baseType: !111, size: 64, offset: 4352)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !1518, file: !1519, line: 182, baseType: !111, size: 64, offset: 4416)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !1518, file: !1519, line: 182, baseType: !111, size: 64, offset: 4480)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !1518, file: !1519, line: 183, baseType: !111, size: 64, offset: 4544)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !1518, file: !1519, line: 183, baseType: !111, size: 64, offset: 4608)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1518, file: !1519, line: 184, baseType: !1601, offset: 4672)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1602, line: 12, elements: !473)
!1602 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !1518, file: !1519, line: 192, baseType: !237, size: 64, offset: 4672)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !1518, file: !1519, line: 203, baseType: !1605, size: 2048, offset: 4736)
!1605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1606, size: 2048, elements: !1498)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !1607, line: 43, size: 128, elements: !1608)
!1607 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/lizy2001/genbc/linux")
!1608 = !{!1609, !1610}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1606, file: !1607, line: 44, baseType: !398, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1606, file: !1607, line: 45, baseType: !398, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !1518, file: !1519, line: 220, baseType: !307, size: 8, offset: 6784)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !1518, file: !1519, line: 221, baseType: !968, size: 16, offset: 6800)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !1518, file: !1519, line: 222, baseType: !968, size: 16, offset: 6816)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !1518, file: !1519, line: 224, baseType: !817, size: 64, offset: 6848)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !1518, file: !1519, line: 227, baseType: !936, size: 192, offset: 6912)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_mutex", scope: !1518, file: !1519, line: 233, baseType: !936, size: 192, offset: 7104)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !980, file: !981, line: 970, baseType: !1618, size: 64, offset: 9280)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !1519, line: 20, size: 16576, elements: !1620)
!1620 = !{!1621, !1622, !1623, !1624}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !1619, file: !1519, line: 21, baseType: !572)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1619, file: !1519, line: 22, baseType: !993, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !1619, file: !1519, line: 23, baseType: !1244, size: 128, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !1619, file: !1519, line: 24, baseType: !1625, size: 16384, offset: 192)
!1625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1626, size: 16384, elements: !1646)
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1529, line: 49, size: 256, elements: !1627)
!1627 = !{!1628}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !1626, file: !1529, line: 50, baseType: !1629, size: 256)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1529, line: 35, size: 256, elements: !1630)
!1630 = !{!1631, !1638, !1639, !1645}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !1629, file: !1529, line: 37, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !1633, line: 19, baseType: !1634)
!1633 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/lizy2001/genbc/linux")
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !1633, line: 18, baseType: !1636)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !112}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !1629, file: !1529, line: 38, baseType: !111, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !1629, file: !1529, line: 44, baseType: !1640, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !1633, line: 22, baseType: !1641)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !1633, line: 21, baseType: !1643)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{null}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !1629, file: !1529, line: 46, baseType: !1533, size: 64, offset: 192)
!1646 = !{!1647}
!1647 = !DISubrange(count: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !980, file: !981, line: 971, baseType: !1533, size: 64, offset: 9344)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !980, file: !981, line: 972, baseType: !1533, size: 64, offset: 9408)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !980, file: !981, line: 974, baseType: !1533, size: 64, offset: 9472)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !980, file: !981, line: 975, baseType: !1528, size: 192, offset: 9536)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !980, file: !981, line: 976, baseType: !111, size: 64, offset: 9728)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !980, file: !981, line: 977, baseType: !396, size: 64, offset: 9792)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !980, file: !981, line: 978, baseType: !7, size: 32, offset: 9856)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !980, file: !981, line: 980, baseType: !182, size: 64, offset: 9920)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !980, file: !981, line: 989, baseType: !1657, size: 128, offset: 9984)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1658, line: 35, size: 128, elements: !1659)
!1658 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1659 = !{!1660, !1661, !1662}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1657, file: !1658, line: 36, baseType: !112, size: 32)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1657, file: !1658, line: 37, baseType: !590, size: 32, offset: 32)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1657, file: !1658, line: 38, baseType: !1663, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1658, line: 23, flags: DIFlagFwdDecl)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !980, file: !981, line: 992, baseType: !235, size: 64, offset: 10112)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !980, file: !981, line: 993, baseType: !235, size: 64, offset: 10176)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !980, file: !981, line: 996, baseType: !572, offset: 10240)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !980, file: !981, line: 999, baseType: !623, offset: 10240)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !980, file: !981, line: 1001, baseType: !1670, size: 64, offset: 10240)
!1670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !981, line: 636, size: 64, elements: !1671)
!1671 = !{!1672}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1670, file: !981, line: 637, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !980, file: !981, line: 1005, baseType: !595, size: 128, offset: 10304)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !980, file: !981, line: 1007, baseType: !979, size: 64, offset: 10432)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !980, file: !981, line: 1009, baseType: !1677, size: 64, offset: 10496)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !981, line: 1009, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !980, file: !981, line: 1043, baseType: !109, size: 64, offset: 10560)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !980, file: !981, line: 1046, baseType: !1681, size: 64, offset: 10624)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !981, line: 41, flags: DIFlagFwdDecl)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !980, file: !981, line: 1050, baseType: !1684, size: 64, offset: 10688)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !981, line: 42, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !980, file: !981, line: 1054, baseType: !1687, size: 64, offset: 10752)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !981, line: 55, flags: DIFlagFwdDecl)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !980, file: !981, line: 1056, baseType: !1690, size: 64, offset: 10816)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !981, line: 40, flags: DIFlagFwdDecl)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !980, file: !981, line: 1058, baseType: !1693, size: 64, offset: 10880)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !1695, line: 99, size: 704, elements: !1696)
!1695 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/lizy2001/genbc/linux")
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1702, !1703, !1722, !1723}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1694, file: !1695, line: 100, baseType: !614, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !1694, file: !1695, line: 101, baseType: !590, size: 32, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !1694, file: !1695, line: 102, baseType: !590, size: 32, offset: 96)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1694, file: !1695, line: 105, baseType: !572, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1694, file: !1695, line: 107, baseType: !248, size: 16, offset: 128)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "icq_tree", scope: !1694, file: !1695, line: 109, baseType: !568, size: 128, offset: 192)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "icq_hint", scope: !1694, file: !1695, line: 110, baseType: !1704, size: 64, offset: 320)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !1695, line: 73, size: 448, elements: !1706)
!1706 = !{!1707, !1710, !1711, !1716, !1721}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1705, file: !1695, line: 74, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !1695, line: 74, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !1705, file: !1695, line: 75, baseType: !1693, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, scope: !1705, file: !1695, line: 83, baseType: !1712, size: 128, offset: 128)
!1712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1705, file: !1695, line: 83, size: 128, elements: !1713)
!1713 = !{!1714, !1715}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !1712, file: !1695, line: 84, baseType: !424, size: 128)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !1712, file: !1695, line: 85, baseType: !778, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, scope: !1705, file: !1695, line: 87, baseType: !1717, size: 128, offset: 256)
!1717 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1705, file: !1695, line: 87, size: 128, elements: !1718)
!1718 = !{!1719, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !1717, file: !1695, line: 88, baseType: !465, size: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !1717, file: !1695, line: 89, baseType: !179, size: 128, align: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1705, file: !1695, line: 92, baseType: !7, size: 32, offset: 384)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1694, file: !1695, line: 111, baseType: !461, size: 64, offset: 384)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "release_work", scope: !1694, file: !1695, line: 113, baseType: !1724, size: 256, offset: 448)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1725, line: 102, size: 256, elements: !1726)
!1725 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1726 = !{!1727, !1728, !1729}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1724, file: !1725, line: 103, baseType: !614, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1724, file: !1725, line: 104, baseType: !424, size: 128, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1724, file: !1725, line: 105, baseType: !1730, size: 64, offset: 192)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1725, line: 21, baseType: !1731)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{null, !1734}
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !980, file: !981, line: 1061, baseType: !1736, size: 64, offset: 10944)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !981, line: 43, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !980, file: !981, line: 1064, baseType: !111, size: 64, offset: 11008)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !980, file: !981, line: 1065, baseType: !1740, size: 64, offset: 11072)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1529, line: 14, baseType: !1742)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1529, line: 12, size: 384, elements: !1743)
!1743 = !{!1744}
!1744 = !DIDerivedType(tag: DW_TAG_member, scope: !1742, file: !1529, line: 13, baseType: !1745, size: 384)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1742, file: !1529, line: 13, size: 384, elements: !1746)
!1746 = !{!1747, !1748, !1749, !1750}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1745, file: !1529, line: 13, baseType: !112, size: 32)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1745, file: !1529, line: 13, baseType: !112, size: 32, offset: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1745, file: !1529, line: 13, baseType: !112, size: 32, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1745, file: !1529, line: 13, baseType: !1751, size: 256, offset: 128)
!1751 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1752, line: 32, size: 256, elements: !1753)
!1752 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1753 = !{!1754, !1759, !1772, !1778, !1787, !1807, !1812}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1751, file: !1752, line: 37, baseType: !1755, size: 64)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !1752, line: 34, size: 64, elements: !1756)
!1756 = !{!1757, !1758}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1755, file: !1752, line: 35, baseType: !1223, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1755, file: !1752, line: 36, baseType: !257, size: 32, offset: 32)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1751, file: !1752, line: 45, baseType: !1760, size: 192)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !1752, line: 40, size: 192, elements: !1761)
!1761 = !{!1762, !1764, !1765, !1771}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1760, file: !1752, line: 41, baseType: !1763, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !164, line: 95, baseType: !112)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1760, file: !1752, line: 42, baseType: !112, size: 32, offset: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1760, file: !1752, line: 43, baseType: !1766, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1752, line: 11, baseType: !1767)
!1767 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1752, line: 8, size: 64, elements: !1768)
!1768 = !{!1769, !1770}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1767, file: !1752, line: 9, baseType: !112, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1767, file: !1752, line: 10, baseType: !109, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1760, file: !1752, line: 44, baseType: !112, size: 32, offset: 128)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1751, file: !1752, line: 52, baseType: !1773, size: 128)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !1752, line: 48, size: 128, elements: !1774)
!1774 = !{!1775, !1776, !1777}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1773, file: !1752, line: 49, baseType: !1223, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1773, file: !1752, line: 50, baseType: !257, size: 32, offset: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1773, file: !1752, line: 51, baseType: !1766, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1751, file: !1752, line: 61, baseType: !1779, size: 256)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !1752, line: 55, size: 256, elements: !1780)
!1780 = !{!1781, !1782, !1783, !1784, !1786}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1779, file: !1752, line: 56, baseType: !1223, size: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1779, file: !1752, line: 57, baseType: !257, size: 32, offset: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1779, file: !1752, line: 58, baseType: !112, size: 32, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1779, file: !1752, line: 59, baseType: !1785, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !164, line: 94, baseType: !395)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1779, file: !1752, line: 60, baseType: !1785, size: 64, offset: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1751, file: !1752, line: 95, baseType: !1788, size: 256)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !1752, line: 64, size: 256, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1788, file: !1752, line: 65, baseType: !109, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, scope: !1788, file: !1752, line: 77, baseType: !1792, size: 192, offset: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1788, file: !1752, line: 77, size: 192, elements: !1793)
!1793 = !{!1794, !1795, !1802}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1792, file: !1752, line: 82, baseType: !968, size: 16)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1792, file: !1752, line: 88, baseType: !1796, size: 192)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1792, file: !1752, line: 84, size: 192, elements: !1797)
!1797 = !{!1798, !1800, !1801}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1796, file: !1752, line: 85, baseType: !1799, size: 64)
!1799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 64, elements: !1093)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1796, file: !1752, line: 86, baseType: !109, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1796, file: !1752, line: 87, baseType: !109, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1792, file: !1752, line: 93, baseType: !1803, size: 96)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1792, file: !1752, line: 90, size: 96, elements: !1804)
!1804 = !{!1805, !1806}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1803, file: !1752, line: 91, baseType: !1799, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1803, file: !1752, line: 92, baseType: !231, size: 32, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1751, file: !1752, line: 101, baseType: !1808, size: 128)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !1752, line: 98, size: 128, elements: !1809)
!1809 = !{!1810, !1811}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1808, file: !1752, line: 99, baseType: !356, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1808, file: !1752, line: 100, baseType: !112, size: 32, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1751, file: !1752, line: 108, baseType: !1813, size: 128)
!1813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1751, file: !1752, line: 104, size: 128, elements: !1814)
!1814 = !{!1815, !1816, !1817}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1813, file: !1752, line: 105, baseType: !109, size: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1813, file: !1752, line: 106, baseType: !112, size: 32, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1813, file: !1752, line: 107, baseType: !7, size: 32, offset: 96)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !980, file: !981, line: 1067, baseType: !1601, offset: 11136)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !980, file: !981, line: 1099, baseType: !1820, size: 64, offset: 11136)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !981, line: 56, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !980, file: !981, line: 1103, baseType: !424, size: 128, offset: 11200)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !980, file: !981, line: 1104, baseType: !1824, size: 64, offset: 11328)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !981, line: 46, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !980, file: !981, line: 1105, baseType: !936, size: 192, offset: 11392)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !980, file: !981, line: 1106, baseType: !7, size: 32, offset: 11584)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !980, file: !981, line: 1109, baseType: !1829, size: 128, offset: 11648)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1830, size: 128, elements: !1332)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !981, line: 51, flags: DIFlagFwdDecl)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !980, file: !981, line: 1110, baseType: !936, size: 192, offset: 11776)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !980, file: !981, line: 1111, baseType: !424, size: 128, offset: 11968)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !980, file: !981, line: 1173, baseType: !1835, size: 64, offset: 12096)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1837, line: 62, size: 256, align: 256, elements: !1838)
!1837 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1838 = !{!1839, !1840, !1841, !1846}
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1836, file: !1837, line: 75, baseType: !231, size: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1836, file: !1837, line: 90, baseType: !231, size: 32, offset: 32)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1836, file: !1837, line: 124, baseType: !1842, size: 64, offset: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1836, file: !1837, line: 109, size: 64, elements: !1843)
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1842, file: !1837, line: 110, baseType: !236, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1842, file: !1837, line: 112, baseType: !236, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1836, file: !1837, line: 144, baseType: !231, size: 32, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !980, file: !981, line: 1174, baseType: !229, size: 32, offset: 12160)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !980, file: !981, line: 1179, baseType: !111, size: 64, offset: 12224)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !980, file: !981, line: 1182, baseType: !1850, size: 128, offset: 12288)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !914, line: 76, size: 128, elements: !1851)
!1851 = !{!1852, !1857, !1858}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1850, file: !914, line: 85, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1854, line: 7, size: 64, elements: !1855)
!1854 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1855 = !{!1856}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1853, file: !1854, line: 12, baseType: !1130, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1850, file: !914, line: 88, baseType: !307, size: 8, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1850, file: !914, line: 95, baseType: !307, size: 8, offset: 72)
!1859 = !DIDerivedType(tag: DW_TAG_member, scope: !980, file: !981, line: 1184, baseType: !1860, size: 128, offset: 12416)
!1860 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !980, file: !981, line: 1184, size: 128, elements: !1861)
!1861 = !{!1862, !1863}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1860, file: !981, line: 1185, baseType: !993, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1860, file: !981, line: 1186, baseType: !179, size: 128, align: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !980, file: !981, line: 1190, baseType: !1865, size: 64, offset: 12544)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !981, line: 53, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !980, file: !981, line: 1192, baseType: !1868, size: 128, offset: 12608)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !914, line: 64, size: 128, elements: !1869)
!1869 = !{!1870, !1871, !1872}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1868, file: !914, line: 65, baseType: !550, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1868, file: !914, line: 67, baseType: !231, size: 32, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1868, file: !914, line: 68, baseType: !231, size: 32, offset: 96)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !980, file: !981, line: 1206, baseType: !112, size: 32, offset: 12736)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !980, file: !981, line: 1207, baseType: !112, size: 32, offset: 12768)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !980, file: !981, line: 1209, baseType: !111, size: 64, offset: 12800)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !980, file: !981, line: 1219, baseType: !235, size: 64, offset: 12864)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !980, file: !981, line: 1220, baseType: !235, size: 64, offset: 12928)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !980, file: !981, line: 1317, baseType: !112, size: 32, offset: 12992)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !980, file: !981, line: 1319, baseType: !979, size: 64, offset: 13056)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !980, file: !981, line: 1322, baseType: !1881, size: 64, offset: 13120)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1883, line: 56, size: 512, elements: !1884)
!1883 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890, !1891, !1893}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1882, file: !1883, line: 57, baseType: !1881, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1882, file: !1883, line: 58, baseType: !109, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1882, file: !1883, line: 59, baseType: !111, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1882, file: !1883, line: 60, baseType: !111, size: 64, offset: 192)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1882, file: !1883, line: 61, baseType: !663, size: 64, offset: 256)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1882, file: !1883, line: 62, baseType: !7, size: 32, offset: 320)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1882, file: !1883, line: 63, baseType: !1892, size: 64, offset: 384)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !108, line: 153, baseType: !235)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1882, file: !1883, line: 64, baseType: !1894, size: 64, offset: 448)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !980, file: !981, line: 1326, baseType: !993, size: 32, offset: 13184)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !980, file: !981, line: 1342, baseType: !109, size: 64, offset: 13248)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !980, file: !981, line: 1343, baseType: !236, size: 64, offset: 13312)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !980, file: !981, line: 1344, baseType: !235, size: 64, offset: 13376)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !980, file: !981, line: 1345, baseType: !236, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !980, file: !981, line: 1346, baseType: !236, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !980, file: !981, line: 1347, baseType: !236, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !980, file: !981, line: 1348, baseType: !179, size: 128, align: 64, offset: 13504)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !980, file: !981, line: 1358, baseType: !1905, size: 34816, offset: 13824)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1906, line: 485, size: 34816, elements: !1907)
!1906 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1907 = !{!1908, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1937, !1938, !1939, !1940, !1941, !1942, !1945, !1946, !1947}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1905, file: !1906, line: 487, baseType: !1909, size: 192)
!1909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1910, size: 192, elements: !478)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1911, line: 16, size: 64, elements: !1912)
!1911 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1912 = !{!1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1910, file: !1911, line: 17, baseType: !702, size: 16)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1910, file: !1911, line: 18, baseType: !702, size: 16, offset: 16)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1910, file: !1911, line: 19, baseType: !702, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1910, file: !1911, line: 19, baseType: !702, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1910, file: !1911, line: 19, baseType: !702, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1910, file: !1911, line: 19, baseType: !702, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1910, file: !1911, line: 19, baseType: !702, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1910, file: !1911, line: 20, baseType: !702, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1910, file: !1911, line: 20, baseType: !702, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1910, file: !1911, line: 20, baseType: !702, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1910, file: !1911, line: 20, baseType: !702, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1910, file: !1911, line: 20, baseType: !702, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1910, file: !1911, line: 20, baseType: !702, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1905, file: !1906, line: 491, baseType: !111, size: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1905, file: !1906, line: 495, baseType: !248, size: 16, offset: 256)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1905, file: !1906, line: 496, baseType: !248, size: 16, offset: 272)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1905, file: !1906, line: 497, baseType: !248, size: 16, offset: 288)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1905, file: !1906, line: 498, baseType: !248, size: 16, offset: 304)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1905, file: !1906, line: 502, baseType: !111, size: 64, offset: 320)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1905, file: !1906, line: 503, baseType: !111, size: 64, offset: 384)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1905, file: !1906, line: 514, baseType: !1934, size: 256, offset: 448)
!1934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1935, size: 256, elements: !918)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1906, line: 483, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1905, file: !1906, line: 516, baseType: !111, size: 64, offset: 704)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1905, file: !1906, line: 518, baseType: !111, size: 64, offset: 768)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1905, file: !1906, line: 520, baseType: !111, size: 64, offset: 832)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1905, file: !1906, line: 521, baseType: !111, size: 64, offset: 896)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1905, file: !1906, line: 522, baseType: !111, size: 64, offset: 960)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1905, file: !1906, line: 528, baseType: !1943, size: 64, offset: 1024)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1906, line: 10, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1905, file: !1906, line: 535, baseType: !111, size: 64, offset: 1088)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1905, file: !1906, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1905, file: !1906, line: 540, baseType: !1948, size: 33280, offset: 1536)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1949, line: 317, size: 33280, elements: !1950)
!1949 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1950 = !{!1951, !1952, !1953}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1948, file: !1949, line: 330, baseType: !7, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1948, file: !1949, line: 337, baseType: !111, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1948, file: !1949, line: 348, baseType: !1954, size: 32768, offset: 512)
!1954 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1949, line: 304, size: 32768, elements: !1955)
!1955 = !{!1956, !1971, !2008, !2058, !2071}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1954, file: !1949, line: 305, baseType: !1957, size: 896)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1949, line: 12, size: 896, elements: !1958)
!1958 = !{!1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1970}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1957, file: !1949, line: 13, baseType: !229, size: 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1957, file: !1949, line: 14, baseType: !229, size: 32, offset: 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1957, file: !1949, line: 15, baseType: !229, size: 32, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1957, file: !1949, line: 16, baseType: !229, size: 32, offset: 96)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1957, file: !1949, line: 17, baseType: !229, size: 32, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1957, file: !1949, line: 18, baseType: !229, size: 32, offset: 160)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1957, file: !1949, line: 19, baseType: !229, size: 32, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1957, file: !1949, line: 22, baseType: !1967, size: 640, offset: 224)
!1967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 640, elements: !1968)
!1968 = !{!1969}
!1969 = !DISubrange(count: 20)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1957, file: !1949, line: 25, baseType: !229, size: 32, offset: 864)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1954, file: !1949, line: 306, baseType: !1972, size: 4096, align: 128)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1949, line: 34, size: 4096, align: 128, elements: !1973)
!1973 = !{!1974, !1975, !1976, !1977, !1978, !1993, !1994, !1995, !1997, !1999, !2003}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1972, file: !1949, line: 35, baseType: !702, size: 16)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1972, file: !1949, line: 36, baseType: !702, size: 16, offset: 16)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1972, file: !1949, line: 37, baseType: !702, size: 16, offset: 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1972, file: !1949, line: 38, baseType: !702, size: 16, offset: 48)
!1978 = !DIDerivedType(tag: DW_TAG_member, scope: !1972, file: !1949, line: 39, baseType: !1979, size: 128, offset: 64)
!1979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1972, file: !1949, line: 39, size: 128, elements: !1980)
!1980 = !{!1981, !1986}
!1981 = !DIDerivedType(tag: DW_TAG_member, scope: !1979, file: !1949, line: 40, baseType: !1982, size: 128)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1949, line: 40, size: 128, elements: !1983)
!1983 = !{!1984, !1985}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1982, file: !1949, line: 41, baseType: !235, size: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1982, file: !1949, line: 42, baseType: !235, size: 64, offset: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, scope: !1979, file: !1949, line: 44, baseType: !1987, size: 128)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1979, file: !1949, line: 44, size: 128, elements: !1988)
!1988 = !{!1989, !1990, !1991, !1992}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1987, file: !1949, line: 45, baseType: !229, size: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1987, file: !1949, line: 46, baseType: !229, size: 32, offset: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1987, file: !1949, line: 47, baseType: !229, size: 32, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1987, file: !1949, line: 48, baseType: !229, size: 32, offset: 96)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1972, file: !1949, line: 51, baseType: !229, size: 32, offset: 192)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1972, file: !1949, line: 52, baseType: !229, size: 32, offset: 224)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1972, file: !1949, line: 55, baseType: !1996, size: 1024, offset: 256)
!1996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 1024, elements: !139)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1972, file: !1949, line: 58, baseType: !1998, size: 2048, offset: 1280)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 2048, elements: !1646)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1972, file: !1949, line: 60, baseType: !2000, size: 384, offset: 3328)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 384, elements: !2001)
!2001 = !{!2002}
!2002 = !DISubrange(count: 12)
!2003 = !DIDerivedType(tag: DW_TAG_member, scope: !1972, file: !1949, line: 62, baseType: !2004, size: 384, offset: 3712)
!2004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1972, file: !1949, line: 62, size: 384, elements: !2005)
!2005 = !{!2006, !2007}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2004, file: !1949, line: 63, baseType: !2000, size: 384)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2004, file: !1949, line: 64, baseType: !2000, size: 384)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1954, file: !1949, line: 307, baseType: !2009, size: 1088)
!2009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1949, line: 79, size: 1088, elements: !2010)
!2010 = !{!2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2057}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2009, file: !1949, line: 80, baseType: !229, size: 32)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2009, file: !1949, line: 81, baseType: !229, size: 32, offset: 32)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2009, file: !1949, line: 82, baseType: !229, size: 32, offset: 64)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2009, file: !1949, line: 83, baseType: !229, size: 32, offset: 96)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2009, file: !1949, line: 84, baseType: !229, size: 32, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2009, file: !1949, line: 85, baseType: !229, size: 32, offset: 160)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2009, file: !1949, line: 86, baseType: !229, size: 32, offset: 192)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2009, file: !1949, line: 88, baseType: !1967, size: 640, offset: 224)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2009, file: !1949, line: 89, baseType: !1115, size: 8, offset: 864)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2009, file: !1949, line: 90, baseType: !1115, size: 8, offset: 872)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2009, file: !1949, line: 91, baseType: !1115, size: 8, offset: 880)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2009, file: !1949, line: 92, baseType: !1115, size: 8, offset: 888)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2009, file: !1949, line: 93, baseType: !1115, size: 8, offset: 896)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2009, file: !1949, line: 94, baseType: !1115, size: 8, offset: 904)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2009, file: !1949, line: 95, baseType: !2026, size: 64, offset: 960)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2028, line: 11, size: 128, elements: !2029)
!2028 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2027, file: !2028, line: 12, baseType: !356, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2027, file: !2028, line: 13, baseType: !2032, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2034, line: 56, size: 1344, elements: !2035)
!2034 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!2035 = !{!2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2033, file: !2034, line: 61, baseType: !111, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2033, file: !2034, line: 62, baseType: !111, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2033, file: !2034, line: 63, baseType: !111, size: 64, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2033, file: !2034, line: 64, baseType: !111, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2033, file: !2034, line: 65, baseType: !111, size: 64, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2033, file: !2034, line: 66, baseType: !111, size: 64, offset: 320)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2033, file: !2034, line: 68, baseType: !111, size: 64, offset: 384)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2033, file: !2034, line: 69, baseType: !111, size: 64, offset: 448)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2033, file: !2034, line: 70, baseType: !111, size: 64, offset: 512)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2033, file: !2034, line: 71, baseType: !111, size: 64, offset: 576)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2033, file: !2034, line: 72, baseType: !111, size: 64, offset: 640)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2033, file: !2034, line: 73, baseType: !111, size: 64, offset: 704)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2033, file: !2034, line: 74, baseType: !111, size: 64, offset: 768)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2033, file: !2034, line: 75, baseType: !111, size: 64, offset: 832)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2033, file: !2034, line: 76, baseType: !111, size: 64, offset: 896)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2033, file: !2034, line: 81, baseType: !111, size: 64, offset: 960)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2033, file: !2034, line: 83, baseType: !111, size: 64, offset: 1024)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2033, file: !2034, line: 84, baseType: !111, size: 64, offset: 1088)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2033, file: !2034, line: 85, baseType: !111, size: 64, offset: 1152)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2033, file: !2034, line: 86, baseType: !111, size: 64, offset: 1216)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2033, file: !2034, line: 87, baseType: !111, size: 64, offset: 1280)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2009, file: !1949, line: 96, baseType: !229, size: 32, offset: 1024)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1954, file: !1949, line: 308, baseType: !2059, size: 4608, align: 512)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1949, line: 289, size: 4608, align: 512, elements: !2060)
!2060 = !{!2061, !2062, !2069}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2059, file: !1949, line: 290, baseType: !1972, size: 4096, align: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2059, file: !1949, line: 291, baseType: !2063, size: 512, offset: 4096)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1949, line: 268, size: 512, elements: !2064)
!2064 = !{!2065, !2066, !2067}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2063, file: !1949, line: 269, baseType: !235, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2063, file: !1949, line: 270, baseType: !235, size: 64, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2063, file: !1949, line: 271, baseType: !2068, size: 384, offset: 128)
!2068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 384, elements: !1388)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2059, file: !1949, line: 292, baseType: !2070, offset: 4608)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, elements: !1486)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1954, file: !1949, line: 309, baseType: !2072, size: 32768)
!2072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1115, size: 32768, elements: !2073)
!2073 = !{!2074}
!2074 = !DISubrange(count: 4096)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !976, file: !552, line: 378, baseType: !2076, size: 64, offset: 64)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !972, file: !552, line: 384, baseType: !1265, size: 192, offset: 192)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !821, file: !552, line: 500, baseType: !572, offset: 6656)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !821, file: !552, line: 501, baseType: !2080, size: 64, offset: 6656)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !552, line: 387, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !821, file: !552, line: 516, baseType: !1476, size: 64, offset: 6720)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !821, file: !552, line: 519, baseType: !166, size: 64, offset: 6784)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !821, file: !552, line: 521, baseType: !2085, size: 64, offset: 6848)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !552, line: 521, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !821, file: !552, line: 545, baseType: !590, size: 32, offset: 6912)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !821, file: !552, line: 548, baseType: !307, size: 8, offset: 6944)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !821, file: !552, line: 550, baseType: !2090, offset: 6952)
!2090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !2091, line: 142, elements: !473)
!2091 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !821, file: !552, line: 554, baseType: !1724, size: 256, offset: 6976)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !821, file: !552, line: 557, baseType: !229, size: 32, offset: 7232)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !818, file: !552, line: 565, baseType: !2095, offset: 7296)
!2095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, elements: !2096)
!2096 = !{!2097}
!2097 = !DISubrange(count: -1)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !814, file: !552, line: 151, baseType: !590, size: 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !807, file: !552, line: 156, baseType: !572, offset: 256)
!2100 = !DIDerivedType(tag: DW_TAG_member, scope: !556, file: !552, line: 159, baseType: !2101, size: 128)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !556, file: !552, line: 159, size: 128, elements: !2102)
!2102 = !{!2103, !2106}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2101, file: !552, line: 161, baseType: !2104, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !552, line: 161, flags: DIFlagFwdDecl)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2101, file: !552, line: 162, baseType: !109, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !556, file: !552, line: 176, baseType: !179, size: 128, align: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, scope: !551, file: !552, line: 179, baseType: !2109, size: 32, offset: 384)
!2109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !551, file: !552, line: 179, size: 32, elements: !2110)
!2110 = !{!2111, !2112, !2113, !2114}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2109, file: !552, line: 184, baseType: !590, size: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2109, file: !552, line: 192, baseType: !7, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2109, file: !552, line: 194, baseType: !7, size: 32)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !2109, file: !552, line: 195, baseType: !112, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !551, file: !552, line: 199, baseType: !590, size: 32, offset: 416)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !486, file: !31, line: 1964, baseType: !2117, size: 64, offset: 1344)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DISubroutineType(types: !2119)
!2119 = !{!356, !420, !2120}
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2122, line: 12, size: 256, elements: !2123)
!2122 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/lizy2001/genbc/linux")
!2123 = !{!2124, !2125, !2126, !2127, !2128}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2121, file: !2122, line: 13, baseType: !107, size: 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2121, file: !2122, line: 16, baseType: !112, size: 32, offset: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2121, file: !2122, line: 23, baseType: !111, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2121, file: !2122, line: 30, baseType: !111, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2121, file: !2122, line: 33, baseType: !2129, size: 64, offset: 192)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !552, line: 27, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !486, file: !31, line: 1966, baseType: !2117, size: 64, offset: 1408)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !421, file: !31, line: 1424, baseType: !2133, size: 64, offset: 448)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2135)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !25, line: 322, size: 704, elements: !2136)
!2136 = !{!2137, !2183, !2187, !2191, !2192, !2193, !2194, !2195, !2200, !2205, !2209}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2135, file: !25, line: 323, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!112, !2141}
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !25, line: 294, size: 1600, elements: !2143)
!2143 = !{!2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2168, !2169, !2170}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2142, file: !25, line: 295, baseType: !465, size: 128)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2142, file: !25, line: 296, baseType: !424, size: 128, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2142, file: !25, line: 297, baseType: !424, size: 128, offset: 256)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2142, file: !25, line: 298, baseType: !424, size: 128, offset: 384)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2142, file: !25, line: 299, baseType: !936, size: 192, offset: 512)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2142, file: !25, line: 300, baseType: !572, offset: 704)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2142, file: !25, line: 301, baseType: !590, size: 32, offset: 704)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2142, file: !25, line: 302, baseType: !420, size: 64, offset: 768)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2142, file: !25, line: 303, baseType: !2153, size: 64, offset: 832)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !25, line: 68, size: 64, elements: !2154)
!2154 = !{!2155, !2167}
!2155 = !DIDerivedType(tag: DW_TAG_member, scope: !2153, file: !25, line: 69, baseType: !2156, size: 32)
!2156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2153, file: !25, line: 69, size: 32, elements: !2157)
!2157 = !{!2158, !2159, !2160}
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2156, file: !25, line: 70, baseType: !251, size: 32)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2156, file: !25, line: 71, baseType: !259, size: 32)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2156, file: !25, line: 72, baseType: !2161, size: 32)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2162, line: 24, baseType: !2163)
!2162 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/lizy2001/genbc/linux")
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2162, line: 22, size: 32, elements: !2164)
!2164 = !{!2165}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2163, file: !2162, line: 23, baseType: !2166, size: 32)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2162, line: 20, baseType: !257)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2153, file: !25, line: 74, baseType: !24, size: 32, offset: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2142, file: !25, line: 304, baseType: !162, size: 64, offset: 896)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2142, file: !25, line: 305, baseType: !111, size: 64, offset: 960)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2142, file: !25, line: 306, baseType: !2171, size: 576, offset: 1024)
!2171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !25, line: 205, size: 576, elements: !2172)
!2172 = !{!2173, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2171, file: !25, line: 206, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !25, line: 66, baseType: !165)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2171, file: !25, line: 207, baseType: !2174, size: 64, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2171, file: !25, line: 208, baseType: !2174, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2171, file: !25, line: 209, baseType: !2174, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2171, file: !25, line: 210, baseType: !2174, size: 64, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2171, file: !25, line: 211, baseType: !2174, size: 64, offset: 320)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2171, file: !25, line: 212, baseType: !2174, size: 64, offset: 384)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2171, file: !25, line: 213, baseType: !353, size: 64, offset: 448)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2171, file: !25, line: 214, baseType: !353, size: 64, offset: 512)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2135, file: !25, line: 324, baseType: !2184, size: 64, offset: 64)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!2141, !420, !112}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2135, file: !25, line: 325, baseType: !2188, size: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{null, !2141}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2135, file: !25, line: 326, baseType: !2138, size: 64, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2135, file: !25, line: 327, baseType: !2138, size: 64, offset: 256)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2135, file: !25, line: 328, baseType: !2138, size: 64, offset: 320)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2135, file: !25, line: 329, baseType: !514, size: 64, offset: 384)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2135, file: !25, line: 332, baseType: !2196, size: 64, offset: 448)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!2199, !243}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2135, file: !25, line: 333, baseType: !2201, size: 64, offset: 512)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!112, !243, !2204}
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2135, file: !25, line: 335, baseType: !2206, size: 64, offset: 576)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!112, !243, !2199}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2135, file: !25, line: 337, baseType: !2210, size: 64, offset: 640)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!112, !420, !2213}
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !421, file: !31, line: 1425, baseType: !2215, size: 64, offset: 512)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2217)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !25, line: 428, size: 704, elements: !2218)
!2218 = !{!2219, !2223, !2224, !2228, !2229, !2230, !2245, !2268, !2272, !2273, !2296}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2217, file: !25, line: 429, baseType: !2220, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!112, !420, !112, !112, !364}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2217, file: !25, line: 430, baseType: !514, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2217, file: !25, line: 431, baseType: !2225, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{!112, !420, !7}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2217, file: !25, line: 432, baseType: !2225, size: 64, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2217, file: !25, line: 433, baseType: !514, size: 64, offset: 256)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2217, file: !25, line: 434, baseType: !2231, size: 64, offset: 320)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!112, !420, !112, !2234}
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !25, line: 415, size: 256, elements: !2236)
!2236 = !{!2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244}
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2235, file: !25, line: 416, baseType: !112, size: 32)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2235, file: !25, line: 417, baseType: !7, size: 32, offset: 32)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2235, file: !25, line: 418, baseType: !7, size: 32, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2235, file: !25, line: 420, baseType: !7, size: 32, offset: 96)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2235, file: !25, line: 421, baseType: !7, size: 32, offset: 128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2235, file: !25, line: 422, baseType: !7, size: 32, offset: 160)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2235, file: !25, line: 423, baseType: !7, size: 32, offset: 192)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2235, file: !25, line: 424, baseType: !7, size: 32, offset: 224)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2217, file: !25, line: 435, baseType: !2246, size: 64, offset: 384)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{!112, !420, !2153, !2249}
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !25, line: 343, size: 960, elements: !2251)
!2251 = !{!2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2250, file: !25, line: 344, baseType: !112, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2250, file: !25, line: 345, baseType: !235, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2250, file: !25, line: 346, baseType: !235, size: 64, offset: 128)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2250, file: !25, line: 347, baseType: !235, size: 64, offset: 192)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2250, file: !25, line: 348, baseType: !235, size: 64, offset: 256)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2250, file: !25, line: 349, baseType: !235, size: 64, offset: 320)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2250, file: !25, line: 350, baseType: !235, size: 64, offset: 384)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2250, file: !25, line: 351, baseType: !620, size: 64, offset: 448)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2250, file: !25, line: 353, baseType: !620, size: 64, offset: 512)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2250, file: !25, line: 354, baseType: !112, size: 32, offset: 576)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2250, file: !25, line: 355, baseType: !112, size: 32, offset: 608)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2250, file: !25, line: 356, baseType: !235, size: 64, offset: 640)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2250, file: !25, line: 357, baseType: !235, size: 64, offset: 704)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2250, file: !25, line: 358, baseType: !235, size: 64, offset: 768)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2250, file: !25, line: 359, baseType: !620, size: 64, offset: 832)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2250, file: !25, line: 360, baseType: !112, size: 32, offset: 896)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2217, file: !25, line: 436, baseType: !2269, size: 64, offset: 448)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!112, !420, !2213, !2249}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2217, file: !25, line: 438, baseType: !2246, size: 64, offset: 512)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2217, file: !25, line: 439, baseType: !2274, size: 64, offset: 576)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!112, !420, !2277}
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !25, line: 409, size: 1408, elements: !2279)
!2279 = !{!2280, !2281}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2278, file: !25, line: 410, baseType: !7, size: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2278, file: !25, line: 411, baseType: !2282, size: 1344, offset: 64)
!2282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2283, size: 1344, elements: !478)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !25, line: 395, size: 448, elements: !2284)
!2284 = !{!2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2295}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2283, file: !25, line: 396, baseType: !7, size: 32)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2283, file: !25, line: 397, baseType: !7, size: 32, offset: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2283, file: !25, line: 399, baseType: !7, size: 32, offset: 64)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2283, file: !25, line: 400, baseType: !7, size: 32, offset: 96)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2283, file: !25, line: 401, baseType: !7, size: 32, offset: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2283, file: !25, line: 402, baseType: !7, size: 32, offset: 160)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2283, file: !25, line: 403, baseType: !7, size: 32, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2283, file: !25, line: 404, baseType: !237, size: 64, offset: 256)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2283, file: !25, line: 405, baseType: !2294, size: 64, offset: 320)
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !108, line: 126, baseType: !235)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2283, file: !25, line: 406, baseType: !2294, size: 64, offset: 384)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2217, file: !25, line: 440, baseType: !2225, size: 64, offset: 640)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !421, file: !31, line: 1426, baseType: !2298, size: 64, offset: 576)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2300)
!2300 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !31, line: 49, flags: DIFlagFwdDecl)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !421, file: !31, line: 1427, baseType: !111, size: 64, offset: 640)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !421, file: !31, line: 1428, baseType: !111, size: 64, offset: 704)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !421, file: !31, line: 1429, baseType: !111, size: 64, offset: 768)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !421, file: !31, line: 1430, baseType: !196, size: 64, offset: 832)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !421, file: !31, line: 1431, baseType: !610, size: 256, offset: 896)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !421, file: !31, line: 1432, baseType: !112, size: 32, offset: 1152)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !421, file: !31, line: 1433, baseType: !590, size: 32, offset: 1184)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !421, file: !31, line: 1437, baseType: !2309, size: 64, offset: 1216)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2312)
!2312 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !31, line: 1437, flags: DIFlagFwdDecl)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !421, file: !31, line: 1449, baseType: !2314, size: 64, offset: 1280)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !212, line: 34, size: 64, elements: !2315)
!2315 = !{!2316}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2314, file: !212, line: 35, baseType: !215, size: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !421, file: !31, line: 1450, baseType: !424, size: 128, offset: 1344)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !421, file: !31, line: 1451, baseType: !2319, size: 64, offset: 1472)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !31, line: 699, flags: DIFlagFwdDecl)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !421, file: !31, line: 1452, baseType: !1690, size: 64, offset: 1536)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !421, file: !31, line: 1453, baseType: !2323, size: 64, offset: 1600)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !31, line: 1453, flags: DIFlagFwdDecl)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !421, file: !31, line: 1454, baseType: !465, size: 128, offset: 1664)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !421, file: !31, line: 1455, baseType: !7, size: 32, offset: 1792)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !421, file: !31, line: 1456, baseType: !2328, size: 2432, offset: 1856)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !25, line: 518, size: 2432, elements: !2329)
!2329 = !{!2330, !2331, !2332, !2334, !2366}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2328, file: !25, line: 519, baseType: !7, size: 32)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2328, file: !25, line: 520, baseType: !610, size: 256, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2328, file: !25, line: 521, baseType: !2333, size: 192, offset: 320)
!2333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 192, elements: !478)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2328, file: !25, line: 522, baseType: !2335, size: 1728, offset: 512)
!2335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2336, size: 1728, elements: !478)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !25, line: 222, size: 576, elements: !2337)
!2337 = !{!2338, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2336, file: !25, line: 223, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !25, line: 443, size: 256, elements: !2341)
!2341 = !{!2342, !2343, !2356, !2357}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2340, file: !25, line: 444, baseType: !112, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2340, file: !25, line: 445, baseType: !2344, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2346)
!2346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !25, line: 310, size: 512, elements: !2347)
!2347 = !{!2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2346, file: !25, line: 311, baseType: !514, size: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2346, file: !25, line: 312, baseType: !514, size: 64, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2346, file: !25, line: 313, baseType: !514, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2346, file: !25, line: 314, baseType: !514, size: 64, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2346, file: !25, line: 315, baseType: !2138, size: 64, offset: 256)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2346, file: !25, line: 316, baseType: !2138, size: 64, offset: 320)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2346, file: !25, line: 317, baseType: !2138, size: 64, offset: 384)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2346, file: !25, line: 318, baseType: !2210, size: 64, offset: 448)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2340, file: !25, line: 446, baseType: !155, size: 64, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2340, file: !25, line: 447, baseType: !2339, size: 64, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2336, file: !25, line: 224, baseType: !112, size: 32, offset: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2336, file: !25, line: 226, baseType: !424, size: 128, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2336, file: !25, line: 227, baseType: !111, size: 64, offset: 256)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2336, file: !25, line: 228, baseType: !7, size: 32, offset: 320)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2336, file: !25, line: 229, baseType: !7, size: 32, offset: 352)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2336, file: !25, line: 230, baseType: !2174, size: 64, offset: 384)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2336, file: !25, line: 231, baseType: !2174, size: 64, offset: 448)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2336, file: !25, line: 232, baseType: !109, size: 64, offset: 512)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2328, file: !25, line: 523, baseType: !2367, size: 192, offset: 2240)
!2367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2344, size: 192, elements: !478)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !421, file: !31, line: 1458, baseType: !2369, size: 2112, offset: 4288)
!2369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !31, line: 1410, size: 2112, elements: !2370)
!2370 = !{!2371, !2372, !2373}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2369, file: !31, line: 1411, baseType: !112, size: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "wait_unfrozen", scope: !2369, file: !31, line: 1412, baseType: !1244, size: 128, offset: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2369, file: !31, line: 1413, baseType: !2374, size: 1920, offset: 192)
!2374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2375, size: 1920, elements: !478)
!2375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2376, line: 12, size: 640, elements: !2377)
!2376 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/lizy2001/genbc/linux")
!2377 = !{!2378, !2386, !2388, !2393, !2394}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2375, file: !2376, line: 13, baseType: !2379, size: 320)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2380, line: 17, size: 320, elements: !2381)
!2380 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/lizy2001/genbc/linux")
!2381 = !{!2382, !2383, !2384, !2385}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2379, file: !2380, line: 18, baseType: !112, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2379, file: !2380, line: 19, baseType: !112, size: 32, offset: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2379, file: !2380, line: 20, baseType: !1244, size: 128, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2379, file: !2380, line: 22, baseType: !179, size: 128, align: 64, offset: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2375, file: !2376, line: 14, baseType: !2387, size: 64, offset: 320)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2375, file: !2376, line: 15, baseType: !2389, size: 64, offset: 384)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2390, line: 16, size: 64, elements: !2391)
!2390 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/lizy2001/genbc/linux")
!2391 = !{!2392}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2389, file: !2390, line: 17, baseType: !979, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2375, file: !2376, line: 16, baseType: !1244, size: 128, offset: 448)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2375, file: !2376, line: 17, baseType: !590, size: 32, offset: 576)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !421, file: !31, line: 1465, baseType: !109, size: 64, offset: 6400)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !421, file: !31, line: 1468, baseType: !229, size: 32, offset: 6464)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !421, file: !31, line: 1470, baseType: !353, size: 64, offset: 6528)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !421, file: !31, line: 1471, baseType: !353, size: 64, offset: 6592)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !421, file: !31, line: 1473, baseType: !231, size: 32, offset: 6656)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !421, file: !31, line: 1474, baseType: !2401, size: 64, offset: 6720)
!2401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2402 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !31, line: 603, flags: DIFlagFwdDecl)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !421, file: !31, line: 1477, baseType: !2404, size: 256, offset: 6784)
!2404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 256, elements: !139)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !421, file: !31, line: 1478, baseType: !2406, size: 128, offset: 7040)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2407, line: 18, baseType: !2408)
!2407 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/lizy2001/genbc/linux")
!2408 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2407, line: 16, size: 128, elements: !2409)
!2409 = !{!2410}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2408, file: !2407, line: 17, baseType: !2411, size: 128)
!2411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1116, size: 128, elements: !1498)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !421, file: !31, line: 1480, baseType: !7, size: 32, offset: 7168)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "s_mode", scope: !421, file: !31, line: 1481, baseType: !2414, size: 32, offset: 7200)
!2414 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !108, line: 150, baseType: !7)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !421, file: !31, line: 1487, baseType: !936, size: 192, offset: 7232)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !421, file: !31, line: 1493, baseType: !148, size: 64, offset: 7424)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !421, file: !31, line: 1495, baseType: !2418, size: 64, offset: 7488)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2420)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !194, line: 135, size: 1024, align: 512, elements: !2421)
!2421 = !{!2422, !2426, !2427, !2434, !2440, !2444, !2448, !2452, !2453, !2457, !2461, !2466, !2470}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2420, file: !194, line: 136, baseType: !2423, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!112, !196, !7}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2420, file: !194, line: 137, baseType: !2423, size: 64, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2420, file: !194, line: 138, baseType: !2428, size: 64, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!112, !2431, !2433}
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2420, file: !194, line: 139, baseType: !2435, size: 64, offset: 192)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!112, !2431, !7, !148, !2438}
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2420, file: !194, line: 141, baseType: !2441, size: 64, offset: 256)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!112, !2431}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2420, file: !194, line: 142, baseType: !2445, size: 64, offset: 320)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = !DISubroutineType(types: !2447)
!2447 = !{!112, !196}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2420, file: !194, line: 143, baseType: !2449, size: 64, offset: 384)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{null, !196}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2420, file: !194, line: 144, baseType: !2449, size: 64, offset: 448)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2420, file: !194, line: 145, baseType: !2454, size: 64, offset: 512)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{null, !196, !243}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2420, file: !194, line: 146, baseType: !2458, size: 64, offset: 576)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!302, !196, !302, !112}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2420, file: !194, line: 147, baseType: !2462, size: 64, offset: 640)
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!192, !2465}
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2420, file: !194, line: 148, baseType: !2467, size: 64, offset: 704)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!112, !364, !307}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2420, file: !194, line: 149, baseType: !2471, size: 64, offset: 768)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{!196, !196, !2474}
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "cleancache_poolid", scope: !421, file: !31, line: 1500, baseType: !112, size: 32, offset: 7552)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !421, file: !31, line: 1502, baseType: !2478, size: 448, offset: 7616)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2122, line: 60, size: 448, elements: !2479)
!2479 = !{!2480, !2485, !2486, !2487, !2488, !2489, !2490}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2478, file: !2122, line: 61, baseType: !2481, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!111, !2484, !2120}
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2478, file: !2122, line: 63, baseType: !2481, size: 64, offset: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2478, file: !2122, line: 66, baseType: !356, size: 64, offset: 128)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2478, file: !2122, line: 67, baseType: !112, size: 32, offset: 192)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2478, file: !2122, line: 68, baseType: !7, size: 32, offset: 224)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2478, file: !2122, line: 71, baseType: !424, size: 128, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2478, file: !2122, line: 77, baseType: !2491, size: 64, offset: 384)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !421, file: !31, line: 1505, baseType: !614, size: 64, offset: 8064)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_inode_refs", scope: !421, file: !31, line: 1508, baseType: !614, size: 64, offset: 8128)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !421, file: !31, line: 1511, baseType: !112, size: 32, offset: 8192)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !421, file: !31, line: 1514, baseType: !752, size: 32, offset: 8224)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !421, file: !31, line: 1517, baseType: !2497, size: 64, offset: 8256)
!2497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2498, size: 64)
!2498 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1725, line: 18, flags: DIFlagFwdDecl)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !421, file: !31, line: 1518, baseType: !461, size: 64, offset: 8320)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !421, file: !31, line: 1525, baseType: !1476, size: 64, offset: 8384)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !421, file: !31, line: 1532, baseType: !2502, size: 64, offset: 8448)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2503, line: 52, size: 64, elements: !2504)
!2503 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/lizy2001/genbc/linux")
!2504 = !{!2505}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2502, file: !2503, line: 53, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2503, line: 40, size: 256, elements: !2508)
!2508 = !{!2509, !2510, !2515}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2507, file: !2503, line: 42, baseType: !572)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2507, file: !2503, line: 44, baseType: !2511, size: 192)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2503, line: 28, size: 192, elements: !2512)
!2512 = !{!2513, !2514}
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2511, file: !2503, line: 29, baseType: !424, size: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2511, file: !2503, line: 31, baseType: !356, size: 64, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2507, file: !2503, line: 49, baseType: !356, size: 64, offset: 192)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !421, file: !31, line: 1533, baseType: !2502, size: 64, offset: 8512)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !421, file: !31, line: 1534, baseType: !179, size: 128, align: 64, offset: 8576)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !421, file: !31, line: 1535, baseType: !1724, size: 256, offset: 8704)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !421, file: !31, line: 1537, baseType: !936, size: 192, offset: 8960)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !421, file: !31, line: 1542, baseType: !112, size: 32, offset: 9152)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !421, file: !31, line: 1545, baseType: !572, offset: 9184)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !421, file: !31, line: 1546, baseType: !424, size: 128, offset: 9216)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !421, file: !31, line: 1548, baseType: !572, offset: 9344)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !421, file: !31, line: 1549, baseType: !424, size: 128, offset: 9344)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !244, file: !31, line: 624, baseType: !563, size: 64, offset: 256)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !244, file: !31, line: 631, baseType: !111, size: 64, offset: 320)
!2527 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !31, line: 639, baseType: !2528, size: 32, offset: 384)
!2528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !31, line: 639, size: 32, elements: !2529)
!2529 = !{!2530, !2532}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2528, file: !31, line: 640, baseType: !2531, size: 32)
!2531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2528, file: !31, line: 641, baseType: !7, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !244, file: !31, line: 643, baseType: !330, size: 32, offset: 416)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !244, file: !31, line: 644, baseType: !162, size: 64, offset: 448)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !244, file: !31, line: 645, baseType: !349, size: 128, offset: 512)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !244, file: !31, line: 646, baseType: !349, size: 128, offset: 640)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "i_ctime", scope: !244, file: !31, line: 647, baseType: !349, size: 128, offset: 768)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !244, file: !31, line: 648, baseType: !572, offset: 896)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !244, file: !31, line: 649, baseType: !248, size: 16, offset: 896)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !244, file: !31, line: 650, baseType: !1115, size: 8, offset: 912)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !244, file: !31, line: 651, baseType: !1115, size: 8, offset: 920)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !244, file: !31, line: 652, baseType: !2294, size: 64, offset: 960)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !244, file: !31, line: 659, baseType: !111, size: 64, offset: 1024)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !244, file: !31, line: 660, baseType: !610, size: 256, offset: 1088)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !244, file: !31, line: 662, baseType: !111, size: 64, offset: 1344)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !244, file: !31, line: 663, baseType: !111, size: 64, offset: 1408)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !244, file: !31, line: 665, baseType: !465, size: 128, offset: 1472)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !244, file: !31, line: 666, baseType: !424, size: 128, offset: 1600)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !244, file: !31, line: 675, baseType: !424, size: 128, offset: 1728)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !244, file: !31, line: 676, baseType: !424, size: 128, offset: 1856)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !244, file: !31, line: 677, baseType: !424, size: 128, offset: 1984)
!2552 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !31, line: 678, baseType: !2553, size: 128, offset: 2112)
!2553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !31, line: 678, size: 128, elements: !2554)
!2554 = !{!2555, !2556}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2553, file: !31, line: 679, baseType: !461, size: 64)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2553, file: !31, line: 680, baseType: !179, size: 128, align: 64)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !244, file: !31, line: 682, baseType: !616, size: 64, offset: 2240)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !244, file: !31, line: 683, baseType: !616, size: 64, offset: 2304)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !244, file: !31, line: 684, baseType: !590, size: 32, offset: 2368)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !244, file: !31, line: 685, baseType: !590, size: 32, offset: 2400)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !244, file: !31, line: 686, baseType: !590, size: 32, offset: 2432)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !244, file: !31, line: 688, baseType: !590, size: 32, offset: 2464)
!2563 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !31, line: 690, baseType: !2564, size: 64, offset: 2496)
!2564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !31, line: 690, size: 64, elements: !2565)
!2565 = !{!2566, !2567}
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2564, file: !31, line: 691, baseType: !150, size: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2564, file: !31, line: 692, baseType: !493, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !244, file: !31, line: 694, baseType: !2569, size: 64, offset: 2560)
!2569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2570, size: 64)
!2570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !31, line: 1100, size: 384, elements: !2571)
!2571 = !{!2572, !2573, !2574, !2575}
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lock", scope: !2570, file: !31, line: 1101, baseType: !572)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "flc_flock", scope: !2570, file: !31, line: 1102, baseType: !424, size: 128)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "flc_posix", scope: !2570, file: !31, line: 1103, baseType: !424, size: 128, offset: 128)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "flc_lease", scope: !2570, file: !31, line: 1104, baseType: !424, size: 128, offset: 256)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !244, file: !31, line: 695, baseType: !564, size: 1216, align: 64, offset: 2624)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !244, file: !31, line: 696, baseType: !424, size: 128, offset: 3840)
!2578 = !DIDerivedType(tag: DW_TAG_member, scope: !244, file: !31, line: 697, baseType: !2579, size: 64, offset: 3968)
!2579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !244, file: !31, line: 697, size: 64, elements: !2580)
!2580 = !{!2581, !2582, !2583, !2586, !2587}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2579, file: !31, line: 698, baseType: !1865, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "i_bdev", scope: !2579, file: !31, line: 699, baseType: !2319, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2579, file: !31, line: 700, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !31, line: 700, flags: DIFlagFwdDecl)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2579, file: !31, line: 701, baseType: !302, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2579, file: !31, line: 702, baseType: !7, size: 32)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !244, file: !31, line: 705, baseType: !231, size: 32, offset: 4032)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !244, file: !31, line: 708, baseType: !231, size: 32, offset: 4064)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !244, file: !31, line: 709, baseType: !2401, size: 64, offset: 4096)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !244, file: !31, line: 720, baseType: !109, size: 64, offset: 4160)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !197, file: !194, line: 98, baseType: !2593, size: 256, offset: 448)
!2593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 256, elements: !139)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !197, file: !194, line: 101, baseType: !2595, size: 32, offset: 704)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !2596, line: 25, size: 32, elements: !2597)
!2596 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/lizy2001/genbc/linux")
!2597 = !{!2598}
!2598 = !DIDerivedType(tag: DW_TAG_member, scope: !2595, file: !2596, line: 26, baseType: !2599, size: 32)
!2599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2595, file: !2596, line: 26, size: 32, elements: !2600)
!2600 = !{!2601}
!2601 = !DIDerivedType(tag: DW_TAG_member, scope: !2599, file: !2596, line: 30, baseType: !2602, size: 32)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2599, file: !2596, line: 30, size: 32, elements: !2603)
!2603 = !{!2604, !2605}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2602, file: !2596, line: 31, baseType: !572)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2602, file: !2596, line: 32, baseType: !112, size: 32)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !197, file: !194, line: 102, baseType: !2418, size: 64, offset: 768)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !197, file: !194, line: 103, baseType: !420, size: 64, offset: 832)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !197, file: !194, line: 104, baseType: !111, size: 64, offset: 896)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !197, file: !194, line: 105, baseType: !109, size: 64, offset: 960)
!2610 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !194, line: 107, baseType: !2611, size: 128, offset: 1024)
!2611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !197, file: !194, line: 107, size: 128, elements: !2612)
!2612 = !{!2613, !2614}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2611, file: !194, line: 108, baseType: !424, size: 128)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2611, file: !194, line: 109, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !197, file: !194, line: 111, baseType: !424, size: 128, offset: 1152)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !197, file: !194, line: 112, baseType: !424, size: 128, offset: 1280)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !197, file: !194, line: 120, baseType: !2619, size: 128, offset: 1408)
!2619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !197, file: !194, line: 116, size: 128, elements: !2620)
!2620 = !{!2621, !2622, !2623}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !2619, file: !194, line: 117, baseType: !465, size: 128)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !2619, file: !194, line: 118, baseType: !211, size: 128)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !2619, file: !194, line: 119, baseType: !179, size: 128, align: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !167, file: !31, line: 922, baseType: !243, size: 64, offset: 256)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !167, file: !31, line: 923, baseType: !150, size: 64, offset: 320)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !167, file: !31, line: 929, baseType: !572, offset: 384)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "f_write_hint", scope: !167, file: !31, line: 930, baseType: !30, size: 32, offset: 384)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !167, file: !31, line: 931, baseType: !614, size: 64, offset: 448)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !167, file: !31, line: 932, baseType: !7, size: 32, offset: 512)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !167, file: !31, line: 933, baseType: !2414, size: 32, offset: 544)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !167, file: !31, line: 934, baseType: !936, size: 192, offset: 576)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !167, file: !31, line: 935, baseType: !162, size: 64, offset: 768)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !167, file: !31, line: 936, baseType: !2634, size: 192, offset: 832)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !31, line: 885, size: 192, elements: !2635)
!2635 = !{!2636, !2644, !2645, !2646, !2647, !2648}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2634, file: !31, line: 886, baseType: !2637)
!2637 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !2638, line: 20, baseType: !2639)
!2638 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/lizy2001/genbc/linux")
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2638, line: 11, elements: !2640)
!2640 = !{!2641}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !2639, file: !2638, line: 12, baseType: !2642)
!2642 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !584, line: 33, baseType: !2643)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !584, line: 31, elements: !473)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2634, file: !31, line: 887, baseType: !1234, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !2634, file: !31, line: 888, baseType: !39, size: 32, offset: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2634, file: !31, line: 889, baseType: !251, size: 32, offset: 96)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !2634, file: !31, line: 889, baseType: !251, size: 32, offset: 128)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !2634, file: !31, line: 890, baseType: !112, size: 32, offset: 160)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !167, file: !31, line: 937, baseType: !1310, size: 64, offset: 1024)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !167, file: !31, line: 938, baseType: !2651, size: 256, offset: 1088)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !31, line: 896, size: 256, elements: !2652)
!2652 = !{!2653, !2654, !2655, !2656, !2657, !2658}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2651, file: !31, line: 897, baseType: !111, size: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2651, file: !31, line: 898, baseType: !7, size: 32, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !2651, file: !31, line: 899, baseType: !7, size: 32, offset: 96)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !2651, file: !31, line: 902, baseType: !7, size: 32, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !2651, file: !31, line: 903, baseType: !7, size: 32, offset: 160)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !2651, file: !31, line: 904, baseType: !162, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !167, file: !31, line: 940, baseType: !235, size: 64, offset: 1344)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !167, file: !31, line: 945, baseType: !109, size: 64, offset: 1408)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep_links", scope: !167, file: !31, line: 949, baseType: !424, size: 128, offset: 1472)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "f_tfile_llink", scope: !167, file: !31, line: 950, baseType: !424, size: 128, offset: 1600)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !167, file: !31, line: 952, baseType: !563, size: 64, offset: 1728)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !167, file: !31, line: 953, baseType: !752, size: 32, offset: 1792)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !167, file: !31, line: 954, baseType: !752, size: 32, offset: 1824)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !152, file: !31, line: 1825, baseType: !2667, size: 64, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!393, !166, !302, !396, !2670}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !152, file: !31, line: 1826, baseType: !2672, size: 64, offset: 192)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DISubroutineType(types: !2674)
!2674 = !{!393, !166, !148, !396, !2670}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !152, file: !31, line: 1827, baseType: !687, size: 64, offset: 256)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !152, file: !31, line: 1828, baseType: !687, size: 64, offset: 320)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !152, file: !31, line: 1829, baseType: !2678, size: 64, offset: 384)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!112, !690, !307}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "iterate", scope: !152, file: !31, line: 1830, baseType: !2682, size: 64, offset: 448)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!112, !166, !2685}
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !31, line: 1776, size: 128, elements: !2687)
!2687 = !{!2688, !2693}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2686, file: !31, line: 1777, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !31, line: 1773, baseType: !2690)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!112, !2685, !148, !112, !162, !235, !7}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2686, file: !31, line: 1778, baseType: !162, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !152, file: !31, line: 1831, baseType: !2682, size: 64, offset: 512)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !152, file: !31, line: 1832, baseType: !2696, size: 64, offset: 576)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!2699, !166, !2701}
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2700, line: 52, baseType: !7)
!2700 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !445, line: 27, flags: DIFlagFwdDecl)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !152, file: !31, line: 1833, baseType: !2704, size: 64, offset: 640)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!356, !166, !7, !111}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !152, file: !31, line: 1834, baseType: !2704, size: 64, offset: 704)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !152, file: !31, line: 1835, baseType: !2709, size: 64, offset: 768)
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{!112, !166, !824}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !152, file: !31, line: 1836, baseType: !111, size: 64, offset: 832)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !152, file: !31, line: 1837, baseType: !2714, size: 64, offset: 896)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!112, !243, !166}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !152, file: !31, line: 1838, baseType: !2718, size: 64, offset: 960)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!112, !166, !2721}
!2721 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !31, line: 1007, baseType: !109)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !152, file: !31, line: 1839, baseType: !2714, size: 64, offset: 1024)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !152, file: !31, line: 1840, baseType: !2724, size: 64, offset: 1088)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!112, !166, !162, !162, !112}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !152, file: !31, line: 1841, baseType: !2728, size: 64, offset: 1152)
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DISubroutineType(types: !2730)
!2730 = !{!112, !112, !166, !112}
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !152, file: !31, line: 1842, baseType: !2732, size: 64, offset: 1216)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2733, size: 64)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!112, !166, !112, !2735}
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !31, line: 1062, size: 1664, elements: !2737)
!2737 = !{!2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2762, !2763, !2764, !2777, !2808}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocker", scope: !2736, file: !31, line: 1063, baseType: !2735, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "fl_list", scope: !2736, file: !31, line: 1064, baseType: !424, size: 128, offset: 64)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link", scope: !2736, file: !31, line: 1065, baseType: !465, size: 128, offset: 192)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_requests", scope: !2736, file: !31, line: 1066, baseType: !424, size: 128, offset: 320)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "fl_blocked_member", scope: !2736, file: !31, line: 1069, baseType: !424, size: 128, offset: 448)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "fl_owner", scope: !2736, file: !31, line: 1072, baseType: !2721, size: 64, offset: 576)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "fl_flags", scope: !2736, file: !31, line: 1073, baseType: !7, size: 32, offset: 640)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fl_type", scope: !2736, file: !31, line: 1074, baseType: !241, size: 8, offset: 672)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "fl_pid", scope: !2736, file: !31, line: 1075, baseType: !7, size: 32, offset: 704)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "fl_link_cpu", scope: !2736, file: !31, line: 1076, baseType: !112, size: 32, offset: 736)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fl_wait", scope: !2736, file: !31, line: 1077, baseType: !1244, size: 128, offset: 768)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "fl_file", scope: !2736, file: !31, line: 1078, baseType: !166, size: 64, offset: 896)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fl_start", scope: !2736, file: !31, line: 1079, baseType: !162, size: 64, offset: 960)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fl_end", scope: !2736, file: !31, line: 1080, baseType: !162, size: 64, offset: 1024)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "fl_fasync", scope: !2736, file: !31, line: 1082, baseType: !2753, size: 64, offset: 1088)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !31, line: 1314, size: 320, elements: !2755)
!2755 = !{!2756, !2757, !2758, !2759, !2760, !2761}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !2754, file: !31, line: 1315, baseType: !2637)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !2754, file: !31, line: 1316, baseType: !112, size: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !2754, file: !31, line: 1317, baseType: !112, size: 32, offset: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !2754, file: !31, line: 1318, baseType: !2753, size: 64, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !2754, file: !31, line: 1319, baseType: !166, size: 64, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !2754, file: !31, line: 1320, baseType: !179, size: 128, align: 64, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fl_break_time", scope: !2736, file: !31, line: 1084, baseType: !111, size: 64, offset: 1152)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fl_downgrade_time", scope: !2736, file: !31, line: 1085, baseType: !111, size: 64, offset: 1216)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fl_ops", scope: !2736, file: !31, line: 1087, baseType: !2765, size: 64, offset: 1280)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2767)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_operations", file: !31, line: 1011, size: 128, elements: !2768)
!2768 = !{!2769, !2773}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "fl_copy_lock", scope: !2767, file: !31, line: 1012, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{null, !2735, !2735}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "fl_release_private", scope: !2767, file: !31, line: 1013, baseType: !2774, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{null, !2735}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "fl_lmops", scope: !2736, file: !31, line: 1088, baseType: !2778, size: 64, offset: 1344)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2780)
!2780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_manager_operations", file: !31, line: 1016, size: 512, elements: !2781)
!2781 = !{!2782, !2786, !2790, !2791, !2795, !2799, !2803, !2807}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "lm_get_owner", scope: !2780, file: !31, line: 1017, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!2721, !2721}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "lm_put_owner", scope: !2780, file: !31, line: 1018, baseType: !2787, size: 64, offset: 64)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{null, !2721}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "lm_notify", scope: !2780, file: !31, line: 1019, baseType: !2774, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "lm_grant", scope: !2780, file: !31, line: 1020, baseType: !2792, size: 64, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!112, !2735, !112}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "lm_break", scope: !2780, file: !31, line: 1021, baseType: !2796, size: 64, offset: 256)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!307, !2735}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "lm_change", scope: !2780, file: !31, line: 1022, baseType: !2800, size: 64, offset: 320)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!112, !2735, !112, !427}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "lm_setup", scope: !2780, file: !31, line: 1023, baseType: !2804, size: 64, offset: 384)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{null, !2735, !664}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "lm_breaker_owns_lease", scope: !2780, file: !31, line: 1024, baseType: !2796, size: 64, offset: 448)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "fl_u", scope: !2736, file: !31, line: 1097, baseType: !2809, size: 256, offset: 1408)
!2809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2736, file: !31, line: 1089, size: 256, elements: !2810)
!2810 = !{!2811, !2820, !2826}
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "nfs_fl", scope: !2809, file: !31, line: 1090, baseType: !2812, size: 256)
!2812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs_lock_info", file: !2813, line: 10, size: 256, elements: !2814)
!2813 = !DIFile(filename: "./include/linux/nfs_fs_i.h", directory: "/home/lizy2001/genbc/linux")
!2814 = !{!2815, !2816, !2819}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2812, file: !2813, line: 11, baseType: !229, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2812, file: !2813, line: 12, baseType: !2817, size: 64, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2818, size: 64)
!2818 = !DICompositeType(tag: DW_TAG_structure_type, name: "nlm_lockowner", file: !2813, line: 5, flags: DIFlagFwdDecl)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2812, file: !2813, line: 13, baseType: !424, size: 128, offset: 128)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "nfs4_fl", scope: !2809, file: !31, line: 1091, baseType: !2821, size: 64)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_info", file: !2813, line: 17, size: 64, elements: !2822)
!2822 = !{!2823}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2821, file: !2813, line: 18, baseType: !2824, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "nfs4_lock_state", file: !2813, line: 16, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "afs", scope: !2809, file: !31, line: 1096, baseType: !2827, size: 192)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2809, file: !31, line: 1092, size: 192, elements: !2828)
!2828 = !{!2829, !2830, !2831}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2827, file: !31, line: 1093, baseType: !424, size: 128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2827, file: !31, line: 1094, baseType: !112, size: 32, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "debug_id", scope: !2827, file: !31, line: 1095, baseType: !7, size: 32, offset: 160)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "sendpage", scope: !152, file: !31, line: 1843, baseType: !2833, size: 64, offset: 1280)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!393, !166, !550, !112, !396, !2670, !112}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !152, file: !31, line: 1844, baseType: !864, size: 64, offset: 1344)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !152, file: !31, line: 1845, baseType: !2838, size: 64, offset: 1408)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!112, !112}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !152, file: !31, line: 1846, baseType: !2732, size: 64, offset: 1472)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !152, file: !31, line: 1847, baseType: !2843, size: 64, offset: 1536)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DISubroutineType(types: !2845)
!2845 = !{!393, !1865, !166, !2670, !396, !7}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !152, file: !31, line: 1848, baseType: !2847, size: 64, offset: 1600)
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DISubroutineType(types: !2849)
!2849 = !{!393, !166, !2670, !1865, !396, !7}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !152, file: !31, line: 1849, baseType: !2851, size: 64, offset: 1664)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!112, !166, !356, !2854, !664}
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !152, file: !31, line: 1850, baseType: !2856, size: 64, offset: 1728)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DISubroutineType(types: !2858)
!2858 = !{!356, !166, !112, !162, !162}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !152, file: !31, line: 1852, baseType: !2860, size: 64, offset: 1792)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{null, !540, !166}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !152, file: !31, line: 1856, baseType: !2864, size: 64, offset: 1856)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!393, !166, !162, !166, !162, !396, !7}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !152, file: !31, line: 1858, baseType: !2868, size: 64, offset: 1920)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!162, !166, !162, !166, !162, !162, !7}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !152, file: !31, line: 1861, baseType: !2724, size: 64, offset: 1984)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !143, file: !144, line: 83, baseType: !424, size: 128, offset: 192)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !143, file: !144, line: 84, baseType: !2874, size: 64, offset: 320)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !60, line: 461, size: 5568, elements: !2876)
!2876 = !{!2877, !3174, !3175, !3178, !3179, !3230, !3321, !3322, !3323, !3324, !3325, !3334, !3439, !3452, !3646, !3647, !3651, !3653, !3654, !3655, !3659, !3665, !3666, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3707, !3708, !3709, !3712, !3715, !3716, !3717, !3718}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2875, file: !60, line: 462, baseType: !2878, size: 512)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !2879, line: 64, size: 512, elements: !2880)
!2879 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!2880 = !{!2881, !2882, !2883, !2885, !2925, !3025, !3164, !3169, !3170, !3171, !3172, !3173}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2878, file: !2879, line: 65, baseType: !148, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2878, file: !2879, line: 66, baseType: !424, size: 128, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2878, file: !2879, line: 67, baseType: !2884, size: 64, offset: 192)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !2878, file: !2879, line: 68, baseType: !2886, size: 64, offset: 256)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !2879, line: 192, size: 704, elements: !2888)
!2888 = !{!2889, !2890, !2891, !2892}
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2887, file: !2879, line: 193, baseType: !424, size: 128)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !2887, file: !2879, line: 194, baseType: !572, offset: 128)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2887, file: !2879, line: 195, baseType: !2878, size: 512, offset: 128)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !2887, file: !2879, line: 196, baseType: !2893, size: 64, offset: 640)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2895)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !2879, line: 156, size: 192, elements: !2896)
!2896 = !{!2897, !2902, !2907}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2895, file: !2879, line: 157, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2899)
!2899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2900, size: 64)
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!112, !2886, !2884}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2895, file: !2879, line: 158, baseType: !2903, size: 64, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2904)
!2904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{!148, !2886, !2884}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2895, file: !2879, line: 159, baseType: !2908, size: 64, offset: 128)
!2908 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2909)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DISubroutineType(types: !2911)
!2911 = !{!112, !2886, !2884, !2912}
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !2879, line: 148, size: 20736, elements: !2914)
!2914 = !{!2915, !2917, !2919, !2920, !2924}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !2913, file: !2879, line: 149, baseType: !2916, size: 192)
!2916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 192, elements: !478)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !2913, file: !2879, line: 150, baseType: !2918, size: 4096, offset: 192)
!2918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 4096, elements: !1646)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !2913, file: !2879, line: 151, baseType: !112, size: 32, offset: 4288)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2913, file: !2879, line: 152, baseType: !2921, size: 16384, offset: 4320)
!2921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 16384, elements: !2922)
!2922 = !{!2923}
!2923 = !DISubrange(count: 2048)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !2913, file: !2879, line: 153, baseType: !112, size: 32, offset: 20704)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !2878, file: !2879, line: 69, baseType: !2926, size: 64, offset: 320)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !2879, line: 138, size: 448, elements: !2928)
!2928 = !{!2929, !2933, !2952, !2954, !2987, !3015, !3019}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2927, file: !2879, line: 139, baseType: !2930, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{null, !2884}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !2927, file: !2879, line: 140, baseType: !2934, size: 64, offset: 64)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2936)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !2937, line: 230, size: 128, elements: !2938)
!2937 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!2938 = !{!2939, !2948}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2936, file: !2937, line: 231, baseType: !2940, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!393, !2884, !2943, !302}
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !2937, line: 30, size: 128, elements: !2945)
!2945 = !{!2946, !2947}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2944, file: !2937, line: 31, baseType: !148, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2944, file: !2937, line: 32, baseType: !247, size: 16, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2936, file: !2937, line: 232, baseType: !2949, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!393, !2884, !2943, !148, !396}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !2927, file: !2879, line: 141, baseType: !2953, size: 64, offset: 128)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !2927, file: !2879, line: 142, baseType: !2955, size: 64, offset: 192)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2958)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !2937, line: 84, size: 320, elements: !2959)
!2959 = !{!2960, !2961, !2965, !2984, !2985}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2958, file: !2937, line: 85, baseType: !148, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !2958, file: !2937, line: 86, baseType: !2962, size: 64, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2963, size: 64)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!247, !2884, !2943, !112}
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !2958, file: !2937, line: 88, baseType: !2966, size: 64, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!247, !2884, !2969, !112}
!2969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !2937, line: 168, size: 448, elements: !2971)
!2971 = !{!2972, !2973, !2974, !2975, !2979, !2980}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2970, file: !2937, line: 169, baseType: !2944, size: 128)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2970, file: !2937, line: 170, baseType: !396, size: 64, offset: 128)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2970, file: !2937, line: 171, baseType: !109, size: 64, offset: 192)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2970, file: !2937, line: 172, baseType: !2976, size: 64, offset: 256)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!393, !166, !2884, !2969, !302, !162, !396}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2970, file: !2937, line: 174, baseType: !2976, size: 64, offset: 320)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2970, file: !2937, line: 176, baseType: !2981, size: 64, offset: 384)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!112, !166, !2884, !2969, !824}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !2958, file: !2937, line: 90, baseType: !2953, size: 64, offset: 192)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !2958, file: !2937, line: 91, baseType: !2986, size: 64, offset: 256)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !2927, file: !2879, line: 143, baseType: !2988, size: 64, offset: 256)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = !DISubroutineType(types: !2990)
!2990 = !{!2991, !2884}
!2991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2993)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !48, line: 39, size: 384, elements: !2994)
!2994 = !{!2995, !2996, !3000, !3004, !3010, !3014}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2993, file: !48, line: 40, baseType: !47, size: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2993, file: !48, line: 41, baseType: !2997, size: 64, offset: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!307}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2993, file: !48, line: 42, baseType: !3001, size: 64, offset: 128)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!109}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2993, file: !48, line: 43, baseType: !3005, size: 64, offset: 192)
!3005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3006, size: 64)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!1894, !3008}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !48, line: 19, flags: DIFlagFwdDecl)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2993, file: !48, line: 44, baseType: !3011, size: 64, offset: 256)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!1894}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2993, file: !48, line: 45, baseType: !284, size: 64, offset: 320)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2927, file: !2879, line: 144, baseType: !3016, size: 64, offset: 320)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!1894, !2884}
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2927, file: !2879, line: 145, baseType: !3020, size: 64, offset: 384)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3021, size: 64)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !2884, !3023, !3024}
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !2878, file: !2879, line: 70, baseType: !3026, size: 64, offset: 384)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !445, line: 123, size: 1024, elements: !3028)
!3028 = !{!3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3157, !3158, !3159, !3160, !3161}
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3027, file: !445, line: 124, baseType: !590, size: 32)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3027, file: !445, line: 125, baseType: !590, size: 32, offset: 32)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3027, file: !445, line: 135, baseType: !3026, size: 64, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3027, file: !445, line: 136, baseType: !148, size: 64, offset: 128)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3027, file: !445, line: 138, baseType: !603, size: 192, align: 64, offset: 192)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3027, file: !445, line: 140, baseType: !1894, size: 64, offset: 384)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3027, file: !445, line: 141, baseType: !7, size: 32, offset: 448)
!3036 = !DIDerivedType(tag: DW_TAG_member, scope: !3027, file: !445, line: 142, baseType: !3037, size: 256, offset: 512)
!3037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3027, file: !445, line: 142, size: 256, elements: !3038)
!3038 = !{!3039, !3085, !3089}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3037, file: !445, line: 143, baseType: !3040, size: 192)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !445, line: 91, size: 192, elements: !3041)
!3041 = !{!3042, !3043, !3044}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3040, file: !445, line: 92, baseType: !111, size: 64)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3040, file: !445, line: 94, baseType: !599, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3040, file: !445, line: 100, baseType: !3045, size: 64, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !445, line: 180, size: 704, elements: !3047)
!3047 = !{!3048, !3049, !3050, !3057, !3058, !3059, !3083, !3084}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3046, file: !445, line: 182, baseType: !3026, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3046, file: !445, line: 183, baseType: !7, size: 32, offset: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !3046, file: !445, line: 186, baseType: !3051, size: 192, offset: 128)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !3052, line: 19, size: 192, elements: !3053)
!3052 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!3053 = !{!3054, !3055, !3056}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !3051, file: !3052, line: 20, baseType: !568, size: 128)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !3051, file: !3052, line: 21, baseType: !7, size: 32, offset: 128)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !3051, file: !3052, line: 22, baseType: !7, size: 32, offset: 160)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !3046, file: !445, line: 187, baseType: !229, size: 32, offset: 320)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !3046, file: !445, line: 188, baseType: !229, size: 32, offset: 352)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !3046, file: !445, line: 189, baseType: !3060, size: 64, offset: 384)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !445, line: 168, size: 320, elements: !3062)
!3062 = !{!3063, !3067, !3071, !3075, !3079}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3061, file: !445, line: 169, baseType: !3064, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!112, !540, !3045}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !3061, file: !445, line: 171, baseType: !3068, size: 64, offset: 64)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!112, !3026, !148, !247}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !3061, file: !445, line: 173, baseType: !3072, size: 64, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3073, size: 64)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!112, !3026}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !3061, file: !445, line: 174, baseType: !3076, size: 64, offset: 192)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!112, !3026, !3026, !148}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3061, file: !445, line: 176, baseType: !3080, size: 64, offset: 256)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!112, !540, !3026, !3045}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !3046, file: !445, line: 192, baseType: !424, size: 128, offset: 448)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !3046, file: !445, line: 194, baseType: !1244, size: 128, offset: 576)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3037, file: !445, line: 144, baseType: !3086, size: 64)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !445, line: 103, size: 64, elements: !3087)
!3087 = !{!3088}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3086, file: !445, line: 104, baseType: !3026, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3037, file: !445, line: 145, baseType: !3090, size: 256)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !445, line: 107, size: 256, elements: !3091)
!3091 = !{!3092, !3152, !3155, !3156}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3090, file: !445, line: 108, baseType: !3093, size: 64)
!3093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3095)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !445, line: 217, size: 768, elements: !3096)
!3096 = !{!3097, !3117, !3121, !3125, !3129, !3133, !3137, !3141, !3142, !3143, !3144, !3148}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3095, file: !445, line: 222, baseType: !3098, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!112, !3101}
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !445, line: 197, size: 1088, elements: !3103)
!3103 = !{!3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3102, file: !445, line: 199, baseType: !3026, size: 64)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3102, file: !445, line: 200, baseType: !166, size: 64, offset: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3102, file: !445, line: 201, baseType: !540, size: 64, offset: 128)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3102, file: !445, line: 202, baseType: !109, size: 64, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3102, file: !445, line: 205, baseType: !936, size: 192, offset: 256)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3102, file: !445, line: 206, baseType: !936, size: 192, offset: 448)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3102, file: !445, line: 207, baseType: !112, size: 32, offset: 640)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3102, file: !445, line: 208, baseType: !424, size: 128, offset: 704)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3102, file: !445, line: 209, baseType: !302, size: 64, offset: 832)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3102, file: !445, line: 211, baseType: !396, size: 64, offset: 896)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3102, file: !445, line: 212, baseType: !307, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3102, file: !445, line: 213, baseType: !307, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3102, file: !445, line: 214, baseType: !852, size: 64, offset: 1024)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3095, file: !445, line: 223, baseType: !3118, size: 64, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{null, !3101}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3095, file: !445, line: 236, baseType: !3122, size: 64, offset: 128)
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!112, !540, !109}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3095, file: !445, line: 238, baseType: !3126, size: 64, offset: 192)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!109, !540, !2670}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3095, file: !445, line: 239, baseType: !3130, size: 64, offset: 256)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!109, !540, !109, !2670}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3095, file: !445, line: 240, baseType: !3134, size: 64, offset: 320)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3135, size: 64)
!3135 = !DISubroutineType(types: !3136)
!3136 = !{null, !540, !109}
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3095, file: !445, line: 242, baseType: !3138, size: 64, offset: 384)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = !DISubroutineType(types: !3140)
!3140 = !{!393, !3101, !302, !396, !162}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3095, file: !445, line: 252, baseType: !396, size: 64, offset: 448)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3095, file: !445, line: 259, baseType: !307, size: 8, offset: 512)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3095, file: !445, line: 260, baseType: !3138, size: 64, offset: 576)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3095, file: !445, line: 263, baseType: !3145, size: 64, offset: 640)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!2699, !3101, !2701}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3095, file: !445, line: 266, baseType: !3149, size: 64, offset: 704)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!112, !3101, !824}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3090, file: !445, line: 109, baseType: !3153, size: 64, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !445, line: 31, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3090, file: !445, line: 110, baseType: !162, size: 64, offset: 128)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3090, file: !445, line: 111, baseType: !3026, size: 64, offset: 192)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3027, file: !445, line: 148, baseType: !109, size: 64, offset: 768)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3027, file: !445, line: 154, baseType: !235, size: 64, offset: 832)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3027, file: !445, line: 156, baseType: !248, size: 16, offset: 896)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3027, file: !445, line: 157, baseType: !247, size: 16, offset: 912)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3027, file: !445, line: 158, baseType: !3162, size: 64, offset: 960)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !445, line: 32, flags: DIFlagFwdDecl)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2878, file: !2879, line: 71, baseType: !3165, size: 32, offset: 448)
!3165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3166, line: 19, size: 32, elements: !3167)
!3166 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!3167 = !{!3168}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3165, file: !3166, line: 20, baseType: !993, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !2878, file: !2879, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !2878, file: !2879, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !2878, file: !2879, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !2878, file: !2879, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !2878, file: !2879, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2875, file: !60, line: 463, baseType: !2874, size: 64, offset: 512)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2875, file: !60, line: 465, baseType: !3176, size: 64, offset: 576)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !60, line: 36, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2875, file: !60, line: 467, baseType: !148, size: 64, offset: 640)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2875, file: !60, line: 468, baseType: !3180, size: 64, offset: 704)
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3182)
!3182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !60, line: 87, size: 384, elements: !3183)
!3183 = !{!3184, !3185, !3186, !3190, !3195, !3199}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3182, file: !60, line: 88, baseType: !148, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3182, file: !60, line: 89, baseType: !2955, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3182, file: !60, line: 90, baseType: !3187, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!112, !2874, !2912}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3182, file: !60, line: 91, baseType: !3191, size: 64, offset: 192)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!302, !2874, !3194, !3023, !3024}
!3194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3182, file: !60, line: 93, baseType: !3196, size: 64, offset: 256)
!3196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3197, size: 64)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{null, !2874}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3182, file: !60, line: 95, baseType: !3200, size: 64, offset: 320)
!3200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3201, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3202)
!3202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !67, line: 278, size: 1472, elements: !3203)
!3203 = !{!3204, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3225, !3226, !3227, !3228, !3229}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3202, file: !67, line: 279, baseType: !3205, size: 64)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!112, !2874}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3202, file: !67, line: 280, baseType: !3196, size: 64, offset: 64)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3202, file: !67, line: 281, baseType: !3205, size: 64, offset: 128)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3202, file: !67, line: 282, baseType: !3205, size: 64, offset: 192)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3202, file: !67, line: 283, baseType: !3205, size: 64, offset: 256)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3202, file: !67, line: 284, baseType: !3205, size: 64, offset: 320)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3202, file: !67, line: 285, baseType: !3205, size: 64, offset: 384)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3202, file: !67, line: 286, baseType: !3205, size: 64, offset: 448)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3202, file: !67, line: 287, baseType: !3205, size: 64, offset: 512)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3202, file: !67, line: 288, baseType: !3205, size: 64, offset: 576)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3202, file: !67, line: 289, baseType: !3205, size: 64, offset: 640)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3202, file: !67, line: 290, baseType: !3205, size: 64, offset: 704)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3202, file: !67, line: 291, baseType: !3205, size: 64, offset: 768)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3202, file: !67, line: 292, baseType: !3205, size: 64, offset: 832)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3202, file: !67, line: 293, baseType: !3205, size: 64, offset: 896)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3202, file: !67, line: 294, baseType: !3205, size: 64, offset: 960)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3202, file: !67, line: 295, baseType: !3205, size: 64, offset: 1024)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3202, file: !67, line: 296, baseType: !3205, size: 64, offset: 1088)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3202, file: !67, line: 297, baseType: !3205, size: 64, offset: 1152)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3202, file: !67, line: 298, baseType: !3205, size: 64, offset: 1216)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3202, file: !67, line: 299, baseType: !3205, size: 64, offset: 1280)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3202, file: !67, line: 300, baseType: !3205, size: 64, offset: 1344)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3202, file: !67, line: 301, baseType: !3205, size: 64, offset: 1408)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2875, file: !60, line: 470, baseType: !3231, size: 64, offset: 768)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !3233, line: 82, size: 1408, elements: !3234)
!3233 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!3234 = !{!3235, !3236, !3237, !3238, !3239, !3240, !3241, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3316, !3319, !3320}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3232, file: !3233, line: 83, baseType: !148, size: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3232, file: !3233, line: 84, baseType: !148, size: 64, offset: 64)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !3232, file: !3233, line: 85, baseType: !2874, size: 64, offset: 128)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3232, file: !3233, line: 86, baseType: !2955, size: 64, offset: 192)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3232, file: !3233, line: 87, baseType: !2955, size: 64, offset: 256)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3232, file: !3233, line: 88, baseType: !2955, size: 64, offset: 320)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3232, file: !3233, line: 90, baseType: !3242, size: 64, offset: 384)
!3242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3243, size: 64)
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!112, !2874, !3245}
!3245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3246, size: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !54, line: 95, size: 1152, elements: !3247)
!3247 = !{!3248, !3249, !3250, !3251, !3252, !3253, !3254, !3267, !3280, !3281, !3282, !3283, !3284, !3292, !3293, !3294, !3295, !3296, !3297}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3246, file: !54, line: 96, baseType: !148, size: 64)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3246, file: !54, line: 97, baseType: !3231, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3246, file: !54, line: 99, baseType: !155, size: 64, offset: 128)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !3246, file: !54, line: 100, baseType: !148, size: 64, offset: 192)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !3246, file: !54, line: 102, baseType: !307, size: 8, offset: 256)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !3246, file: !54, line: 103, baseType: !53, size: 32, offset: 288)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !3246, file: !54, line: 105, baseType: !3255, size: 64, offset: 320)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3257)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !3258, line: 262, size: 1600, elements: !3259)
!3258 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!3259 = !{!3260, !3261, !3262, !3266}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3257, file: !3258, line: 263, baseType: !2404, size: 256)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3257, file: !3258, line: 264, baseType: !2404, size: 256, offset: 256)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !3257, file: !3258, line: 265, baseType: !3263, size: 1024, offset: 512)
!3263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 1024, elements: !3264)
!3264 = !{!3265}
!3265 = !DISubrange(count: 128)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3257, file: !3258, line: 266, baseType: !1894, size: 64, offset: 1536)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !3246, file: !54, line: 106, baseType: !3268, size: 64, offset: 384)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3270)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !3258, line: 210, size: 256, elements: !3271)
!3271 = !{!3272, !3276, !3278, !3279}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3270, file: !3258, line: 211, baseType: !3273, size: 72)
!3273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1116, size: 72, elements: !3274)
!3274 = !{!3275}
!3275 = !DISubrange(count: 9)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3270, file: !3258, line: 212, baseType: !3277, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !3258, line: 14, baseType: !111)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !3270, file: !3258, line: 213, baseType: !231, size: 32, offset: 192)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !3270, file: !3258, line: 214, baseType: !231, size: 32, offset: 224)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3246, file: !54, line: 108, baseType: !3205, size: 64, offset: 448)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3246, file: !54, line: 109, baseType: !3196, size: 64, offset: 512)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3246, file: !54, line: 110, baseType: !3205, size: 64, offset: 576)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3246, file: !54, line: 111, baseType: !3196, size: 64, offset: 640)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3246, file: !54, line: 112, baseType: !3285, size: 64, offset: 704)
!3285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3286, size: 64)
!3286 = !DISubroutineType(types: !3287)
!3287 = !{!112, !2874, !3288}
!3288 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !67, line: 52, baseType: !3289)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !67, line: 50, size: 32, elements: !3290)
!3290 = !{!3291}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3289, file: !67, line: 51, baseType: !112, size: 32)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3246, file: !54, line: 113, baseType: !3205, size: 64, offset: 768)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3246, file: !54, line: 114, baseType: !2955, size: 64, offset: 832)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3246, file: !54, line: 115, baseType: !2955, size: 64, offset: 896)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3246, file: !54, line: 117, baseType: !3200, size: 64, offset: 960)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !3246, file: !54, line: 118, baseType: !3196, size: 64, offset: 1024)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3246, file: !54, line: 120, baseType: !3298, size: 64, offset: 1088)
!3298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3299, size: 64)
!3299 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !54, line: 120, flags: DIFlagFwdDecl)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3232, file: !3233, line: 91, baseType: !3187, size: 64, offset: 448)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3232, file: !3233, line: 92, baseType: !3205, size: 64, offset: 512)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3232, file: !3233, line: 93, baseType: !3196, size: 64, offset: 576)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3232, file: !3233, line: 94, baseType: !3205, size: 64, offset: 640)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3232, file: !3233, line: 95, baseType: !3196, size: 64, offset: 704)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3232, file: !3233, line: 97, baseType: !3205, size: 64, offset: 768)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3232, file: !3233, line: 98, baseType: !3205, size: 64, offset: 832)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3232, file: !3233, line: 100, baseType: !3285, size: 64, offset: 896)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3232, file: !3233, line: 101, baseType: !3205, size: 64, offset: 960)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3232, file: !3233, line: 103, baseType: !3205, size: 64, offset: 1024)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3232, file: !3233, line: 105, baseType: !3205, size: 64, offset: 1088)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3232, file: !3233, line: 107, baseType: !3200, size: 64, offset: 1152)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3232, file: !3233, line: 109, baseType: !3313, size: 64, offset: 1216)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3315)
!3315 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !3233, line: 109, flags: DIFlagFwdDecl)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3232, file: !3233, line: 111, baseType: !3317, size: 64, offset: 1280)
!3317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3318, size: 64)
!3318 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !3233, line: 111, flags: DIFlagFwdDecl)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !3232, file: !3233, line: 112, baseType: !471, offset: 1344)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3232, file: !3233, line: 114, baseType: !307, size: 8, offset: 1344)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2875, file: !60, line: 471, baseType: !3245, size: 64, offset: 832)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2875, file: !60, line: 473, baseType: !109, size: 64, offset: 896)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2875, file: !60, line: 475, baseType: !109, size: 64, offset: 960)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2875, file: !60, line: 480, baseType: !936, size: 192, offset: 1024)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2875, file: !60, line: 484, baseType: !3326, size: 576, offset: 1216)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !60, line: 361, size: 576, elements: !3327)
!3327 = !{!3328, !3329, !3330, !3331, !3332, !3333}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !3326, file: !60, line: 362, baseType: !424, size: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !3326, file: !60, line: 363, baseType: !424, size: 128, offset: 128)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !3326, file: !60, line: 364, baseType: !424, size: 128, offset: 256)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !3326, file: !60, line: 365, baseType: !424, size: 128, offset: 384)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !3326, file: !60, line: 366, baseType: !307, size: 8, offset: 512)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3326, file: !60, line: 367, baseType: !59, size: 32, offset: 544)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2875, file: !60, line: 485, baseType: !3335, size: 2304, offset: 1792)
!3335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !67, line: 565, size: 2304, elements: !3336)
!3336 = !{!3337, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3390, !3391, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419, !3420, !3421, !3422, !3432, !3436}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !3335, file: !67, line: 566, baseType: !3288, size: 32)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !3335, file: !67, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !3335, file: !67, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !3335, file: !67, line: 569, baseType: !307, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !3335, file: !67, line: 570, baseType: !307, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !3335, file: !67, line: 571, baseType: !307, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !3335, file: !67, line: 572, baseType: !307, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !3335, file: !67, line: 573, baseType: !307, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !3335, file: !67, line: 574, baseType: !307, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !3335, file: !67, line: 575, baseType: !307, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !3335, file: !67, line: 576, baseType: !307, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !3335, file: !67, line: 577, baseType: !229, size: 32, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3335, file: !67, line: 578, baseType: !572, offset: 96)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3335, file: !67, line: 580, baseType: !424, size: 128, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !3335, file: !67, line: 581, baseType: !1265, size: 192, offset: 256)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3335, file: !67, line: 582, baseType: !3353, size: 64, offset: 448)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !3355, line: 43, size: 1472, elements: !3356)
!3355 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!3356 = !{!3357, !3358, !3359, !3360, !3361, !3364, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3354, file: !3355, line: 44, baseType: !148, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3354, file: !3355, line: 45, baseType: !112, size: 32, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3354, file: !3355, line: 46, baseType: !424, size: 128, offset: 128)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3354, file: !3355, line: 47, baseType: !572, offset: 256)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3354, file: !3355, line: 48, baseType: !3362, size: 64, offset: 256)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !67, line: 533, flags: DIFlagFwdDecl)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3354, file: !3355, line: 49, baseType: !3365, size: 320, offset: 320)
!3365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !3366, line: 11, size: 320, elements: !3367)
!3366 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!3367 = !{!3368, !3369, !3370, !3375}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3365, file: !3366, line: 16, baseType: !465, size: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3365, file: !3366, line: 17, baseType: !111, size: 64, offset: 128)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !3365, file: !3366, line: 18, baseType: !3371, size: 64, offset: 192)
!3371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3372, size: 64)
!3372 = !DISubroutineType(types: !3373)
!3373 = !{null, !3374}
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3365, file: !3366, line: 19, baseType: !229, size: 32, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3354, file: !3355, line: 50, baseType: !111, size: 64, offset: 640)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !3354, file: !3355, line: 51, baseType: !1063, size: 64, offset: 704)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !3354, file: !3355, line: 52, baseType: !1063, size: 64, offset: 768)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !3354, file: !3355, line: 53, baseType: !1063, size: 64, offset: 832)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !3354, file: !3355, line: 54, baseType: !1063, size: 64, offset: 896)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !3354, file: !3355, line: 55, baseType: !1063, size: 64, offset: 960)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !3354, file: !3355, line: 56, baseType: !111, size: 64, offset: 1024)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !3354, file: !3355, line: 57, baseType: !111, size: 64, offset: 1088)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !3354, file: !3355, line: 58, baseType: !111, size: 64, offset: 1152)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !3354, file: !3355, line: 59, baseType: !111, size: 64, offset: 1216)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !3354, file: !3355, line: 60, baseType: !111, size: 64, offset: 1280)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3354, file: !3355, line: 61, baseType: !2874, size: 64, offset: 1344)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3354, file: !3355, line: 62, baseType: !307, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !3354, file: !3355, line: 63, baseType: !307, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !3335, file: !67, line: 583, baseType: !307, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !3335, file: !67, line: 584, baseType: !307, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !3335, file: !67, line: 585, baseType: !307, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !3335, file: !67, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !3335, file: !67, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !3335, file: !67, line: 592, baseType: !1055, size: 512, offset: 576)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !3335, file: !67, line: 593, baseType: !235, size: 64, offset: 1088)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3335, file: !67, line: 594, baseType: !1724, size: 256, offset: 1152)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !3335, file: !67, line: 595, baseType: !1244, size: 128, offset: 1408)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !3335, file: !67, line: 596, baseType: !3362, size: 64, offset: 1536)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !3335, file: !67, line: 597, baseType: !590, size: 32, offset: 1600)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !3335, file: !67, line: 598, baseType: !590, size: 32, offset: 1632)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !3335, file: !67, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !3335, file: !67, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !3335, file: !67, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !3335, file: !67, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !3335, file: !67, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !3335, file: !67, line: 604, baseType: !307, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !3335, file: !67, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !3335, file: !67, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !3335, file: !67, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !3335, file: !67, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !3335, file: !67, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !3335, file: !67, line: 610, baseType: !7, size: 32, offset: 1696)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !3335, file: !67, line: 611, baseType: !66, size: 32, offset: 1728)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !3335, file: !67, line: 612, baseType: !74, size: 32, offset: 1760)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !3335, file: !67, line: 613, baseType: !112, size: 32, offset: 1792)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !3335, file: !67, line: 614, baseType: !112, size: 32, offset: 1824)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !3335, file: !67, line: 615, baseType: !235, size: 64, offset: 1856)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !3335, file: !67, line: 616, baseType: !235, size: 64, offset: 1920)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !3335, file: !67, line: 617, baseType: !235, size: 64, offset: 1984)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !3335, file: !67, line: 618, baseType: !235, size: 64, offset: 2048)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !3335, file: !67, line: 620, baseType: !3423, size: 64, offset: 2112)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !67, line: 536, size: 256, elements: !3425)
!3425 = !{!3426, !3427, !3428, !3429}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3424, file: !67, line: 537, baseType: !572)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3424, file: !67, line: 538, baseType: !7, size: 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !3424, file: !67, line: 540, baseType: !424, size: 128, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !3424, file: !67, line: 543, baseType: !3430, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !67, line: 534, flags: DIFlagFwdDecl)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !3335, file: !67, line: 621, baseType: !3433, size: 64, offset: 2176)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{null, !2874, !1207}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !3335, file: !67, line: 622, baseType: !3437, size: 64, offset: 2240)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !67, line: 622, flags: DIFlagFwdDecl)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2875, file: !60, line: 486, baseType: !3440, size: 64, offset: 4096)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3441, size: 64)
!3441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !67, line: 642, size: 1792, elements: !3442)
!3442 = !{!3443, !3444, !3445, !3449, !3450, !3451}
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3441, file: !67, line: 643, baseType: !3202, size: 1472)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3441, file: !67, line: 644, baseType: !3205, size: 64, offset: 1472)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3441, file: !67, line: 645, baseType: !3446, size: 64, offset: 1536)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DISubroutineType(types: !3448)
!3448 = !{null, !2874, !307}
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3441, file: !67, line: 646, baseType: !3205, size: 64, offset: 1600)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3441, file: !67, line: 647, baseType: !3196, size: 64, offset: 1664)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !3441, file: !67, line: 648, baseType: !3196, size: 64, offset: 1728)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !2875, file: !60, line: 493, baseType: !3453, size: 64, offset: 4160)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !81, line: 162, size: 1088, elements: !3455)
!3455 = !{!3456, !3457, !3458, !3630, !3631, !3632, !3633, !3634, !3635, !3638, !3639, !3640, !3641, !3642, !3643, !3644}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !3454, file: !81, line: 163, baseType: !424, size: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3454, file: !81, line: 164, baseType: !148, size: 64, offset: 128)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3454, file: !81, line: 165, baseType: !3459, size: 64, offset: 192)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3461)
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !81, line: 105, size: 640, elements: !3462)
!3462 = !{!3463, !3581, !3592, !3597, !3601, !3607, !3611, !3615, !3622, !3626}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3461, file: !81, line: 106, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3465 = !DISubroutineType(types: !3466)
!3466 = !{!112, !3453, !3467, !80}
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !3469, line: 51, size: 1344, elements: !3470)
!3469 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!3470 = !{!3471, !3472, !3474, !3475, !3565, !3574, !3575, !3576, !3577, !3578, !3579, !3580}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3468, file: !3469, line: 52, baseType: !148, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !3468, file: !3469, line: 53, baseType: !3473, size: 32, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !3469, line: 28, baseType: !229)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !3468, file: !3469, line: 54, baseType: !148, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3468, file: !3469, line: 55, baseType: !3476, size: 192, offset: 192)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !3477, line: 17, size: 192, elements: !3478)
!3477 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!3478 = !{!3479, !3481, !3564}
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !3476, file: !3477, line: 18, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3476, file: !3477, line: 19, baseType: !3482, size: 64, offset: 64)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3484)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !3477, line: 110, size: 1152, elements: !3485)
!3485 = !{!3486, !3490, !3494, !3500, !3506, !3510, !3514, !3519, !3523, !3524, !3528, !3532, !3536, !3547, !3548, !3549, !3550, !3560}
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3484, file: !3477, line: 111, baseType: !3487, size: 64)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!3480, !3480}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !3484, file: !3477, line: 112, baseType: !3491, size: 64, offset: 64)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{null, !3480}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !3484, file: !3477, line: 113, baseType: !3495, size: 64, offset: 128)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!307, !3498}
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3476)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !3484, file: !3477, line: 114, baseType: !3501, size: 64, offset: 192)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!1894, !3498, !3504}
!3504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3505, size: 64)
!3505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2875)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !3484, file: !3477, line: 116, baseType: !3507, size: 64, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3508, size: 64)
!3508 = !DISubroutineType(types: !3509)
!3509 = !{!307, !3498, !148}
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !3484, file: !3477, line: 118, baseType: !3511, size: 64, offset: 320)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DISubroutineType(types: !3513)
!3513 = !{!112, !3498, !148, !7, !109, !396}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !3484, file: !3477, line: 123, baseType: !3515, size: 64, offset: 384)
!3515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3516, size: 64)
!3516 = !DISubroutineType(types: !3517)
!3517 = !{!112, !3498, !148, !3518, !396}
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !3484, file: !3477, line: 126, baseType: !3520, size: 64, offset: 448)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DISubroutineType(types: !3522)
!3522 = !{!148, !3498}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !3484, file: !3477, line: 127, baseType: !3520, size: 64, offset: 512)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !3484, file: !3477, line: 128, baseType: !3525, size: 64, offset: 576)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!3480, !3498}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !3484, file: !3477, line: 130, baseType: !3529, size: 64, offset: 640)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!3480, !3498, !3480}
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !3484, file: !3477, line: 133, baseType: !3533, size: 64, offset: 704)
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DISubroutineType(types: !3535)
!3535 = !{!3480, !3498, !148}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !3484, file: !3477, line: 135, baseType: !3537, size: 64, offset: 768)
!3537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3538, size: 64)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!112, !3498, !148, !148, !7, !7, !3540}
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !3477, line: 43, size: 640, elements: !3542)
!3542 = !{!3543, !3544, !3545}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3541, file: !3477, line: 44, baseType: !3480, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !3541, file: !3477, line: 45, baseType: !7, size: 32, offset: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !3541, file: !3477, line: 46, baseType: !3546, size: 512, offset: 128)
!3546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 512, elements: !1093)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !3484, file: !3477, line: 140, baseType: !3529, size: 64, offset: 832)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !3484, file: !3477, line: 143, baseType: !3525, size: 64, offset: 896)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !3484, file: !3477, line: 145, baseType: !3487, size: 64, offset: 960)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !3484, file: !3477, line: 146, baseType: !3551, size: 64, offset: 1024)
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = !DISubroutineType(types: !3553)
!3553 = !{!112, !3498, !3554}
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !3477, line: 29, size: 128, elements: !3556)
!3556 = !{!3557, !3558, !3559}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3555, file: !3477, line: 30, baseType: !7, size: 32)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3555, file: !3477, line: 31, baseType: !7, size: 32, offset: 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !3555, file: !3477, line: 32, baseType: !3498, size: 64, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !3484, file: !3477, line: 148, baseType: !3561, size: 64, offset: 1088)
!3561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3562, size: 64)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!112, !3498, !2874}
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3476, file: !3477, line: 20, baseType: !2874, size: 64, offset: 128)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3468, file: !3469, line: 57, baseType: !3566, size: 64, offset: 384)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !3469, line: 31, size: 704, elements: !3568)
!3568 = !{!3569, !3570, !3571, !3572, !3573}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3567, file: !3469, line: 32, baseType: !302, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3567, file: !3469, line: 33, baseType: !112, size: 32, offset: 64)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3567, file: !3469, line: 34, baseType: !109, size: 64, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3567, file: !3469, line: 35, baseType: !3566, size: 64, offset: 192)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3567, file: !3469, line: 43, baseType: !2970, size: 448, offset: 256)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !3468, file: !3469, line: 58, baseType: !3566, size: 64, offset: 448)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3468, file: !3469, line: 59, baseType: !3467, size: 64, offset: 512)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !3468, file: !3469, line: 60, baseType: !3467, size: 64, offset: 576)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3468, file: !3469, line: 61, baseType: !3467, size: 64, offset: 640)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3468, file: !3469, line: 63, baseType: !2878, size: 512, offset: 704)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3468, file: !3469, line: 65, baseType: !111, size: 64, offset: 1216)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3468, file: !3469, line: 66, baseType: !109, size: 64, offset: 1280)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !3461, file: !81, line: 108, baseType: !3582, size: 64, offset: 64)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!112, !3453, !3585, !80}
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3586, size: 64)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !81, line: 63, size: 640, elements: !3587)
!3587 = !{!3588, !3589, !3590}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3586, file: !81, line: 64, baseType: !3480, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !3586, file: !81, line: 65, baseType: !112, size: 32, offset: 64)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !3586, file: !81, line: 66, baseType: !3591, size: 512, offset: 96)
!3591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 512, elements: !1498)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !3461, file: !81, line: 110, baseType: !3593, size: 64, offset: 128)
!3593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3594, size: 64)
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!112, !3453, !7, !3596}
!3596 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !108, line: 164, baseType: !111)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !3461, file: !81, line: 111, baseType: !3598, size: 64, offset: 192)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{null, !3453, !7}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !3461, file: !81, line: 112, baseType: !3602, size: 64, offset: 256)
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!112, !3453, !3467, !3605, !7, !110, !2387}
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3461, file: !81, line: 117, baseType: !3608, size: 64, offset: 320)
!3608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3609, size: 64)
!3609 = !DISubroutineType(types: !3610)
!3610 = !{!112, !3453, !7, !7, !109}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3461, file: !81, line: 119, baseType: !3612, size: 64, offset: 384)
!3612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3613, size: 64)
!3613 = !DISubroutineType(types: !3614)
!3614 = !{null, !3453, !7, !7}
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !3461, file: !81, line: 121, baseType: !3616, size: 64, offset: 448)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DISubroutineType(types: !3618)
!3618 = !{!112, !3453, !3619, !307}
!3619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3620, size: 64)
!3620 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !3621, line: 11, flags: DIFlagFwdDecl)
!3621 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !3461, file: !81, line: 122, baseType: !3623, size: 64, offset: 512)
!3623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3624, size: 64)
!3624 = !DISubroutineType(types: !3625)
!3625 = !{null, !3453, !3619}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !3461, file: !81, line: 123, baseType: !3627, size: 64, offset: 576)
!3627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3628, size: 64)
!3628 = !DISubroutineType(types: !3629)
!3629 = !{!112, !3453, !3585, !110, !2387}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !3454, file: !81, line: 166, baseType: !109, size: 64, offset: 256)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3454, file: !81, line: 167, baseType: !7, size: 32, offset: 320)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !3454, file: !81, line: 168, baseType: !7, size: 32, offset: 352)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3454, file: !81, line: 171, baseType: !3480, size: 64, offset: 384)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !3454, file: !81, line: 172, baseType: !80, size: 32, offset: 448)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !3454, file: !81, line: 173, baseType: !3636, size: 64, offset: 512)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !81, line: 134, flags: DIFlagFwdDecl)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3454, file: !81, line: 175, baseType: !3453, size: 64, offset: 576)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !3454, file: !81, line: 182, baseType: !3596, size: 64, offset: 640)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !3454, file: !81, line: 183, baseType: !7, size: 32, offset: 704)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !3454, file: !81, line: 184, baseType: !7, size: 32, offset: 736)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !3454, file: !81, line: 185, baseType: !568, size: 128, offset: 768)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !3454, file: !81, line: 186, baseType: !936, size: 192, offset: 896)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !3454, file: !81, line: 187, baseType: !3645, offset: 1088)
!3645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !2096)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !2875, file: !60, line: 499, baseType: !424, size: 128, offset: 4224)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2875, file: !60, line: 502, baseType: !3648, size: 64, offset: 4352)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3650)
!3650 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !60, line: 502, flags: DIFlagFwdDecl)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2875, file: !60, line: 504, baseType: !3652, size: 64, offset: 4416)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2875, file: !60, line: 505, baseType: !235, size: 64, offset: 4480)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2875, file: !60, line: 510, baseType: !235, size: 64, offset: 4544)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2875, file: !60, line: 511, baseType: !3656, size: 64, offset: 4608)
!3656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3657, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3658)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !60, line: 511, flags: DIFlagFwdDecl)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2875, file: !60, line: 513, baseType: !3660, size: 64, offset: 4672)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !60, line: 288, size: 128, elements: !3662)
!3662 = !{!3663, !3664}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !3661, file: !60, line: 293, baseType: !7, size: 32)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !3661, file: !60, line: 294, baseType: !111, size: 64, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2875, file: !60, line: 515, baseType: !424, size: 128, offset: 4736)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2875, file: !60, line: 526, baseType: !3667, offset: 4864)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !3668, line: 5, elements: !473)
!3668 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2875, file: !60, line: 528, baseType: !3467, size: 64, offset: 4864)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2875, file: !60, line: 529, baseType: !3480, size: 64, offset: 4928)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2875, file: !60, line: 534, baseType: !330, size: 32, offset: 4992)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2875, file: !60, line: 535, baseType: !229, size: 32, offset: 5024)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2875, file: !60, line: 537, baseType: !572, offset: 5056)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2875, file: !60, line: 538, baseType: !424, size: 128, offset: 5056)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2875, file: !60, line: 540, baseType: !3676, size: 64, offset: 5184)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3678, line: 54, size: 960, elements: !3679)
!3678 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!3679 = !{!3680, !3681, !3682, !3683, !3684, !3685, !3686, !3690, !3694, !3695, !3696, !3697, !3701, !3705, !3706}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3677, file: !3678, line: 55, baseType: !148, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3677, file: !3678, line: 56, baseType: !155, size: 64, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3677, file: !3678, line: 58, baseType: !2955, size: 64, offset: 128)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3677, file: !3678, line: 59, baseType: !2955, size: 64, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !3677, file: !3678, line: 60, baseType: !2884, size: 64, offset: 256)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3677, file: !3678, line: 62, baseType: !3187, size: 64, offset: 320)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3677, file: !3678, line: 63, baseType: !3687, size: 64, offset: 384)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!302, !2874, !3194}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3677, file: !3678, line: 65, baseType: !3691, size: 64, offset: 448)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{null, !3676}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3677, file: !3678, line: 66, baseType: !3196, size: 64, offset: 512)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3677, file: !3678, line: 68, baseType: !3205, size: 64, offset: 576)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3677, file: !3678, line: 70, baseType: !2991, size: 64, offset: 640)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3677, file: !3678, line: 71, baseType: !3698, size: 64, offset: 704)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!1894, !2874}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3677, file: !3678, line: 73, baseType: !3702, size: 64, offset: 768)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{null, !2874, !3023, !3024}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3677, file: !3678, line: 75, baseType: !3200, size: 64, offset: 832)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3677, file: !3678, line: 77, baseType: !3317, size: 64, offset: 896)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2875, file: !60, line: 541, baseType: !2955, size: 64, offset: 5248)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2875, file: !60, line: 543, baseType: !3196, size: 64, offset: 5312)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2875, file: !60, line: 544, baseType: !3710, size: 64, offset: 5376)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !60, line: 45, flags: DIFlagFwdDecl)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2875, file: !60, line: 545, baseType: !3713, size: 64, offset: 5440)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !60, line: 47, flags: DIFlagFwdDecl)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2875, file: !60, line: 547, baseType: !307, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2875, file: !60, line: 548, baseType: !307, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2875, file: !60, line: 549, baseType: !307, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2875, file: !60, line: 550, baseType: !307, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "this_device", scope: !143, file: !144, line: 85, baseType: !2874, size: 64, offset: 384)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !143, file: !144, line: 86, baseType: !2955, size: 64, offset: 448)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !143, file: !144, line: 87, baseType: !148, size: 64, offset: 512)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !143, file: !144, line: 88, baseType: !247, size: 16, offset: 576)
!3723 = !DIGlobalVariableExpression(var: !3724, expr: !DIExpression())
!3724 = distinct !DIGlobalVariable(name: "acpi_thermal_rel_fops", scope: !2, file: !3, line: 352, type: !151, isLocal: true, isDefinition: true)
!3725 = !DIGlobalVariableExpression(var: !3726, expr: !DIExpression())
!3726 = distinct !DIGlobalVariable(name: "acpi_thermal_rel_chrdev_lock", scope: !2, file: !3, line: 26, type: !572, isLocal: true, isDefinition: true)
!3727 = !DIGlobalVariableExpression(var: !3728, expr: !DIExpression())
!3728 = distinct !DIGlobalVariable(name: "acpi_thermal_rel_chrdev_exclu", scope: !2, file: !3, line: 28, type: !112, isLocal: true, isDefinition: true)
!3729 = !DIGlobalVariableExpression(var: !3730, expr: !DIExpression())
!3730 = distinct !DIGlobalVariable(name: "acpi_thermal_rel_chrdev_count", scope: !2, file: !3, line: 27, type: !112, isLocal: true, isDefinition: true)
!3731 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !3732, line: 424, baseType: !109)
!3732 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!3733 = !{!"rsp"}
!3734 = !{i32 7, !"Dwarf Version", i32 4}
!3735 = !{i32 2, !"Debug Info Version", i32 3}
!3736 = !{i32 1, !"wchar_size", i32 2}
!3737 = !{i32 1, !"Code Model", i32 2}
!3738 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!3739 = distinct !DISubprogram(name: "acpi_parse_trt", scope: !3, file: !3, line: 67, type: !3740, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !473)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!112, !3731, !534, !3742, !307}
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trt", file: !3745, line: 33, size: 512, elements: !3746)
!3745 = !DIFile(filename: "drivers/thermal/intel/int340x_thermal/acpi_thermal_rel.h", directory: "/home/lizy2001/genbc/linux")
!3746 = !{!3747, !3748, !3749, !3750, !3751, !3752, !3753, !3754}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !3744, file: !3745, line: 34, baseType: !3731, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3744, file: !3745, line: 35, baseType: !3731, size: 64, offset: 64)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "influence", scope: !3744, file: !3745, line: 36, baseType: !235, size: 64, offset: 128)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !3744, file: !3745, line: 37, baseType: !235, size: 64, offset: 192)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !3744, file: !3745, line: 38, baseType: !235, size: 64, offset: 256)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !3744, file: !3745, line: 39, baseType: !235, size: 64, offset: 320)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !3744, file: !3745, line: 40, baseType: !235, size: 64, offset: 384)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !3744, file: !3745, line: 41, baseType: !235, size: 64, offset: 448)
!3755 = !DILocalVariable(name: "handle", arg: 1, scope: !3739, file: !3, line: 67, type: !3731)
!3756 = !DILocation(line: 67, column: 32, scope: !3739)
!3757 = !DILocalVariable(name: "trt_count", arg: 2, scope: !3739, file: !3, line: 67, type: !534)
!3758 = !DILocation(line: 67, column: 45, scope: !3739)
!3759 = !DILocalVariable(name: "trtp", arg: 3, scope: !3739, file: !3, line: 67, type: !3742)
!3760 = !DILocation(line: 67, column: 69, scope: !3739)
!3761 = !DILocalVariable(name: "create_dev", arg: 4, scope: !3739, file: !3, line: 68, type: !307)
!3762 = !DILocation(line: 68, column: 8, scope: !3739)
!3763 = !DILocalVariable(name: "status", scope: !3739, file: !3, line: 70, type: !3764)
!3764 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !3732, line: 421, baseType: !229)
!3765 = !DILocation(line: 70, column: 14, scope: !3739)
!3766 = !DILocalVariable(name: "result", scope: !3739, file: !3, line: 71, type: !112)
!3767 = !DILocation(line: 71, column: 6, scope: !3739)
!3768 = !DILocalVariable(name: "i", scope: !3739, file: !3, line: 72, type: !112)
!3769 = !DILocation(line: 72, column: 6, scope: !3739)
!3770 = !DILocalVariable(name: "nr_bad_entries", scope: !3739, file: !3, line: 73, type: !112)
!3771 = !DILocation(line: 73, column: 6, scope: !3739)
!3772 = !DILocalVariable(name: "trts", scope: !3739, file: !3, line: 74, type: !3743)
!3773 = !DILocation(line: 74, column: 14, scope: !3739)
!3774 = !DILocalVariable(name: "adev", scope: !3739, file: !3, line: 75, type: !3775)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !3777, line: 351, size: 10880, elements: !3778)
!3777 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!3778 = !{!3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3796, !3813, !3887, !3916, !3940, !3961, !3967, !3976, !4008, !4022, !4044, !4048, !4049, !4050, !4051, !4052, !4053, !4054}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !3776, file: !3777, line: 352, baseType: !112, size: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !3776, file: !3777, line: 353, baseType: !3731, size: 64, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3776, file: !3777, line: 354, baseType: !3476, size: 192, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3776, file: !3777, line: 355, baseType: !3775, size: 64, offset: 320)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3776, file: !3777, line: 356, baseType: !424, size: 128, offset: 384)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3776, file: !3777, line: 357, baseType: !424, size: 128, offset: 512)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !3776, file: !3777, line: 358, baseType: !424, size: 128, offset: 640)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !3776, file: !3777, line: 359, baseType: !424, size: 128, offset: 768)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3776, file: !3777, line: 360, baseType: !3788, size: 32, offset: 896)
!3788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !3777, line: 179, size: 32, elements: !3789)
!3789 = !{!3790, !3791, !3792, !3793, !3794, !3795}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !3788, file: !3777, line: 180, baseType: !229, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3788, file: !3777, line: 181, baseType: !229, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !3788, file: !3777, line: 182, baseType: !229, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !3788, file: !3777, line: 183, baseType: !229, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !3788, file: !3777, line: 184, baseType: !229, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3788, file: !3777, line: 185, baseType: !229, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3776, file: !3777, line: 361, baseType: !3797, size: 32, offset: 928)
!3797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !3777, line: 190, size: 32, elements: !3798)
!3798 = !{!3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812}
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !3797, file: !3777, line: 191, baseType: !229, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3797, file: !3777, line: 192, baseType: !229, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !3797, file: !3777, line: 193, baseType: !229, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !3797, file: !3777, line: 194, baseType: !229, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !3797, file: !3777, line: 195, baseType: !229, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !3797, file: !3777, line: 196, baseType: !229, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !3797, file: !3777, line: 197, baseType: !229, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !3797, file: !3777, line: 198, baseType: !229, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !3797, file: !3777, line: 199, baseType: !229, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !3797, file: !3777, line: 200, baseType: !229, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !3797, file: !3777, line: 201, baseType: !229, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !3797, file: !3777, line: 202, baseType: !229, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !3797, file: !3777, line: 203, baseType: !229, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3797, file: !3777, line: 204, baseType: !229, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !3776, file: !3777, line: 362, baseType: !3814, size: 960, offset: 960)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !3777, line: 234, size: 960, elements: !3815)
!3815 = !{!3816, !3818, !3825, !3827, !3828, !3829, !3834, !3837}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !3814, file: !3777, line: 235, baseType: !3817, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !3777, line: 217, baseType: !1799)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3814, file: !3777, line: 236, baseType: !3819, size: 32, offset: 64)
!3819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !3777, line: 227, size: 32, elements: !3820)
!3820 = !{!3821, !3822, !3823, !3824}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !3819, file: !3777, line: 228, baseType: !229, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3819, file: !3777, line: 229, baseType: !229, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !3819, file: !3777, line: 230, baseType: !229, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3819, file: !3777, line: 231, baseType: !229, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !3814, file: !3777, line: 237, baseType: !3826, size: 64, offset: 128)
!3826 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !3777, line: 218, baseType: !235)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !3814, file: !3777, line: 238, baseType: !302, size: 64, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !3814, file: !3777, line: 239, baseType: !424, size: 128, offset: 256)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !3814, file: !3777, line: 240, baseType: !3830, size: 320, offset: 384)
!3830 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !3777, line: 219, baseType: !3831)
!3831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 320, elements: !3832)
!3832 = !{!3833}
!3833 = !DISubrange(count: 40)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !3814, file: !3777, line: 241, baseType: !3835, size: 160, offset: 704)
!3835 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !3777, line: 220, baseType: !3836)
!3836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 160, elements: !1968)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !3814, file: !3777, line: 242, baseType: !3838, size: 64, offset: 896)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !3732, line: 899, size: 192, elements: !3840)
!3840 = !{!3841, !3843, !3848, !3854, !3861, !3867, !3873, !3881}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3839, file: !3732, line: 900, baseType: !3842, size: 32)
!3842 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !3732, line: 635, baseType: !229)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !3839, file: !3732, line: 904, baseType: !3844, size: 128)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3839, file: !3732, line: 901, size: 128, elements: !3845)
!3845 = !{!3846, !3847}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3844, file: !3732, line: 902, baseType: !3842, size: 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3844, file: !3732, line: 903, baseType: !235, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3839, file: !3732, line: 910, baseType: !3849, size: 128)
!3849 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3839, file: !3732, line: 906, size: 128, elements: !3850)
!3850 = !{!3851, !3852, !3853}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3849, file: !3732, line: 907, baseType: !3842, size: 32)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3849, file: !3732, line: 908, baseType: !229, size: 32, offset: 32)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3849, file: !3732, line: 909, baseType: !302, size: 64, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !3839, file: !3732, line: 916, baseType: !3855, size: 128)
!3855 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3839, file: !3732, line: 912, size: 128, elements: !3856)
!3856 = !{!3857, !3858, !3859}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3855, file: !3732, line: 913, baseType: !3842, size: 32)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !3855, file: !3732, line: 914, baseType: !229, size: 32, offset: 32)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3855, file: !3732, line: 915, baseType: !3860, size: 64, offset: 64)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !3839, file: !3732, line: 922, baseType: !3862, size: 128)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3839, file: !3732, line: 918, size: 128, elements: !3863)
!3863 = !{!3864, !3865, !3866}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3862, file: !3732, line: 919, baseType: !3842, size: 32)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3862, file: !3732, line: 920, baseType: !229, size: 32, offset: 32)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3862, file: !3732, line: 921, baseType: !3838, size: 64, offset: 64)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !3839, file: !3732, line: 928, baseType: !3868, size: 128)
!3868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3839, file: !3732, line: 924, size: 128, elements: !3869)
!3869 = !{!3870, !3871, !3872}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3868, file: !3732, line: 925, baseType: !3842, size: 32)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !3868, file: !3732, line: 926, baseType: !3842, size: 32, offset: 32)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !3868, file: !3732, line: 927, baseType: !3731, size: 64, offset: 64)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !3839, file: !3732, line: 935, baseType: !3874, size: 192)
!3874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3839, file: !3732, line: 930, size: 192, elements: !3875)
!3875 = !{!3876, !3877, !3878, !3880}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3874, file: !3732, line: 931, baseType: !3842, size: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !3874, file: !3732, line: 932, baseType: !229, size: 32, offset: 32)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !3874, file: !3732, line: 933, baseType: !3879, size: 64, offset: 64)
!3879 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !3732, line: 128, baseType: !235)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !3874, file: !3732, line: 934, baseType: !229, size: 32, offset: 128)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !3839, file: !3732, line: 941, baseType: !3882, size: 96)
!3882 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3839, file: !3732, line: 937, size: 96, elements: !3883)
!3883 = !{!3884, !3885, !3886}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3882, file: !3732, line: 938, baseType: !3842, size: 32)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !3882, file: !3732, line: 939, baseType: !229, size: 32, offset: 32)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !3882, file: !3732, line: 940, baseType: !229, size: 32, offset: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3776, file: !3777, line: 363, baseType: !3888, size: 1344, offset: 1920)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !3777, line: 275, size: 1344, elements: !3889)
!3889 = !{!3890, !3891, !3901}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3888, file: !3777, line: 276, baseType: !112, size: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3888, file: !3777, line: 277, baseType: !3892, size: 32, offset: 32)
!3892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !3777, line: 254, size: 32, elements: !3893)
!3893 = !{!3894, !3895, !3896, !3897, !3898, !3899, !3900}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !3892, file: !3777, line: 255, baseType: !229, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !3892, file: !3777, line: 256, baseType: !229, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !3892, file: !3777, line: 257, baseType: !229, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !3892, file: !3777, line: 258, baseType: !229, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !3892, file: !3777, line: 259, baseType: !229, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !3892, file: !3777, line: 260, baseType: !229, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3892, file: !3777, line: 261, baseType: !229, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !3888, file: !3777, line: 278, baseType: !3902, size: 1280, offset: 64)
!3902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3903, size: 1280, elements: !3914)
!3903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !3777, line: 264, size: 256, elements: !3904)
!3904 = !{!3905, !3911, !3912, !3913}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3903, file: !3777, line: 269, baseType: !3906, size: 8)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3903, file: !3777, line: 265, size: 8, elements: !3907)
!3907 = !{!3908, !3909, !3910}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3906, file: !3777, line: 266, baseType: !1115, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !3906, file: !3777, line: 267, baseType: !1115, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3906, file: !3777, line: 268, baseType: !1115, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3903, file: !3777, line: 270, baseType: !112, size: 32, offset: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !3903, file: !3777, line: 271, baseType: !112, size: 32, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3903, file: !3777, line: 272, baseType: !424, size: 128, offset: 128)
!3914 = !{!3915}
!3915 = !DISubrange(count: 5)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !3776, file: !3777, line: 364, baseType: !3917, size: 640, offset: 3264)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !3777, line: 315, size: 640, elements: !3918)
!3918 = !{!3919, !3920, !3921, !3922, !3923, !3928, !3937, !3938, !3939}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !3917, file: !3777, line: 316, baseType: !3731, size: 64)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !3917, file: !3777, line: 317, baseType: !235, size: 64, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !3917, file: !3777, line: 318, baseType: !235, size: 64, offset: 128)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !3917, file: !3777, line: 319, baseType: !424, size: 128, offset: 192)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3917, file: !3777, line: 320, baseType: !3924, size: 8, offset: 320)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !3777, line: 305, size: 8, elements: !3925)
!3925 = !{!3926, !3927}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3924, file: !3777, line: 306, baseType: !1115, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !3924, file: !3777, line: 307, baseType: !1115, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !3917, file: !3777, line: 321, baseType: !3929, size: 128, offset: 384)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !3777, line: 310, size: 128, elements: !3930)
!3930 = !{!3931, !3936}
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3929, file: !3777, line: 311, baseType: !3932, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{null, !3935}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3929, file: !3777, line: 312, baseType: !2874, size: 64, offset: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !3917, file: !3777, line: 322, baseType: !3353, size: 64, offset: 512)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !3917, file: !3777, line: 323, baseType: !112, size: 32, offset: 576)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !3917, file: !3777, line: 324, baseType: !112, size: 32, offset: 608)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !3776, file: !3777, line: 365, baseType: !3941, size: 192, offset: 3904)
!3941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !3777, line: 297, size: 192, elements: !3942)
!3942 = !{!3943, !3944, !3948, !3949}
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3941, file: !3777, line: 298, baseType: !112, size: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3941, file: !3777, line: 299, baseType: !3945, size: 8, offset: 32)
!3945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !3777, line: 283, size: 8, elements: !3946)
!3946 = !{!3947}
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3945, file: !3777, line: 284, baseType: !1115, size: 8, flags: DIFlagBitField, extraData: i64 0)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !3941, file: !3777, line: 300, baseType: !112, size: 32, offset: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !3941, file: !3777, line: 301, baseType: !3950, size: 64, offset: 128)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !3777, line: 287, size: 64, elements: !3952)
!3952 = !{!3953, !3958, !3959, !3960}
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3951, file: !3777, line: 291, baseType: !3954, size: 8)
!3954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3951, file: !3777, line: 288, size: 8, elements: !3955)
!3955 = !{!3956, !3957}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !3954, file: !3777, line: 289, baseType: !1115, size: 1, flags: DIFlagBitField, extraData: i64 0)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3954, file: !3777, line: 290, baseType: !1115, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3951, file: !3777, line: 292, baseType: !1115, size: 8, offset: 8)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !3951, file: !3777, line: 293, baseType: !1115, size: 8, offset: 16)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !3951, file: !3777, line: 294, baseType: !112, size: 32, offset: 32)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3776, file: !3777, line: 366, baseType: !3962, size: 64, offset: 4096)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !3777, line: 209, size: 64, elements: !3963)
!3963 = !{!3964}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !3962, file: !3777, line: 210, baseType: !3965, size: 64)
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !3777, line: 84, flags: DIFlagFwdDecl)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3776, file: !3777, line: 367, baseType: !3968, size: 384, offset: 4160)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !3777, line: 341, size: 384, elements: !3969)
!3969 = !{!3970, !3973, !3974, !3975}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3968, file: !3777, line: 342, baseType: !3971, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3839)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !3968, file: !3777, line: 343, baseType: !424, size: 128, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !3968, file: !3777, line: 344, baseType: !3971, size: 64, offset: 192)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !3968, file: !3777, line: 345, baseType: !424, size: 128, offset: 256)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !3776, file: !3777, line: 368, baseType: !3977, size: 64, offset: 4544)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !3777, line: 122, size: 1216, elements: !3979)
!3979 = !{!3980, !3981, !3982, !3987, !3991, !3995, !3996, !3997}
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !3978, file: !3777, line: 123, baseType: !3268, size: 64)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !3978, file: !3777, line: 124, baseType: !424, size: 128, offset: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3978, file: !3777, line: 125, baseType: !3983, size: 64, offset: 192)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!307, !148, !3986}
!3986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !3978, file: !3777, line: 126, baseType: !3988, size: 64, offset: 256)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!112, !3775, !3268}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !3978, file: !3777, line: 127, baseType: !3992, size: 64, offset: 320)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{null, !3775}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !3978, file: !3777, line: 128, baseType: !3196, size: 64, offset: 384)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !3978, file: !3777, line: 129, baseType: !3196, size: 64, offset: 448)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !3978, file: !3777, line: 130, baseType: !3998, size: 704, offset: 512)
!3998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !3777, line: 108, size: 704, elements: !3999)
!3999 = !{!4000, !4001, !4005, !4006, !4007}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3998, file: !3777, line: 109, baseType: !2878, size: 512)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !3998, file: !3777, line: 110, baseType: !4002, size: 64, offset: 512)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DISubroutineType(types: !4004)
!4004 = !{!112, !3775}
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !3998, file: !3777, line: 111, baseType: !3992, size: 64, offset: 576)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !3998, file: !3777, line: 112, baseType: !307, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !3998, file: !3777, line: 113, baseType: !307, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !3776, file: !3777, line: 369, baseType: !4009, size: 64, offset: 4608)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !3777, line: 138, size: 256, elements: !4011)
!4011 = !{!4012, !4013, !4017, !4021}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4010, file: !3777, line: 139, baseType: !3775, size: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4010, file: !3777, line: 140, baseType: !4014, size: 64, offset: 64)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!112, !3775, !229}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4010, file: !3777, line: 141, baseType: !4018, size: 64, offset: 128)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{null, !3775, !229}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !4010, file: !3777, line: 142, baseType: !3992, size: 64, offset: 192)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3776, file: !3777, line: 370, baseType: !4023, size: 64, offset: 4672)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !3777, line: 162, size: 2816, elements: !4025)
!4025 = !{!4026, !4030, !4031, !4032, !4033, !4042, !4043}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4024, file: !3777, line: 163, baseType: !4027, size: 640)
!4027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 640, elements: !4028)
!4028 = !{!4029}
!4029 = !DISubrange(count: 80)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4024, file: !3777, line: 164, baseType: !4027, size: 640, offset: 640)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !4024, file: !3777, line: 165, baseType: !3268, size: 64, offset: 1280)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4024, file: !3777, line: 166, baseType: !7, size: 32, offset: 1344)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4024, file: !3777, line: 167, baseType: !4034, size: 192, offset: 1408)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !3777, line: 154, size: 192, elements: !4035)
!4035 = !{!4036, !4038, !4040}
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !4034, file: !3777, line: 155, baseType: !4037, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !3777, line: 150, baseType: !4002)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4034, file: !3777, line: 156, baseType: !4039, size: 64, offset: 64)
!4039 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !3777, line: 151, baseType: !4002)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !4034, file: !3777, line: 157, baseType: !4041, size: 64, offset: 128)
!4041 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !3777, line: 152, baseType: !4018)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !4024, file: !3777, line: 168, baseType: !3246, size: 1152, offset: 1600)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4024, file: !3777, line: 169, baseType: !155, size: 64, offset: 2752)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !3776, file: !3777, line: 371, baseType: !4045, size: 64, offset: 4736)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4047)
!4047 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !3777, line: 348, flags: DIFlagFwdDecl)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3776, file: !3777, line: 372, baseType: !109, size: 64, offset: 4800)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3776, file: !3777, line: 373, baseType: !2875, size: 5568, offset: 4864)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !3776, file: !3777, line: 374, baseType: !7, size: 32, offset: 10432)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !3776, file: !3777, line: 375, baseType: !7, size: 32, offset: 10464)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !3776, file: !3777, line: 376, baseType: !424, size: 128, offset: 10496)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !3776, file: !3777, line: 377, baseType: !936, size: 192, offset: 10624)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3776, file: !3777, line: 378, baseType: !3992, size: 64, offset: 10816)
!4055 = !DILocation(line: 75, column: 22, scope: !3739)
!4056 = !DILocalVariable(name: "p", scope: !3739, file: !3, line: 76, type: !3838)
!4057 = !DILocation(line: 76, column: 21, scope: !3739)
!4058 = !DILocalVariable(name: "buffer", scope: !3739, file: !3, line: 77, type: !4059)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !3732, line: 969, size: 128, elements: !4060)
!4060 = !{!4061, !4063}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4059, file: !3732, line: 970, baseType: !4062, size: 64)
!4062 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !3732, line: 127, baseType: !235)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !4059, file: !3732, line: 971, baseType: !109, size: 64, offset: 64)
!4064 = !DILocation(line: 77, column: 21, scope: !3739)
!4065 = !DILocalVariable(name: "element", scope: !3739, file: !3, line: 78, type: !4059)
!4066 = !DILocation(line: 78, column: 21, scope: !3739)
!4067 = !DILocalVariable(name: "trt_format", scope: !3739, file: !3, line: 79, type: !4059)
!4068 = !DILocation(line: 79, column: 21, scope: !3739)
!4069 = !DILocation(line: 81, column: 32, scope: !3739)
!4070 = !DILocation(line: 81, column: 11, scope: !3739)
!4071 = !DILocation(line: 81, column: 9, scope: !3739)
!4072 = !DILocation(line: 82, column: 6, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 82, column: 6)
!4074 = !DILocation(line: 82, column: 6, scope: !3739)
!4075 = !DILocation(line: 83, column: 3, scope: !4073)
!4076 = !DILocation(line: 85, column: 13, scope: !3739)
!4077 = !DILocation(line: 85, column: 6, scope: !3739)
!4078 = !DILocation(line: 85, column: 4, scope: !3739)
!4079 = !DILocation(line: 86, column: 7, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 86, column: 6)
!4081 = !DILocation(line: 86, column: 9, scope: !4080)
!4082 = !DILocation(line: 86, column: 13, scope: !4080)
!4083 = !DILocation(line: 86, column: 16, scope: !4080)
!4084 = !DILocation(line: 86, column: 21, scope: !4080)
!4085 = !DILocation(line: 86, column: 6, scope: !3739)
!4086 = !DILocation(line: 87, column: 3, scope: !4087)
!4087 = distinct !DILexicalBlock(scope: !4080, file: !3, line: 86, column: 44)
!4088 = !DILocation(line: 88, column: 10, scope: !4087)
!4089 = !DILocation(line: 89, column: 3, scope: !4087)
!4090 = !DILocation(line: 92, column: 15, scope: !3739)
!4091 = !DILocation(line: 92, column: 18, scope: !3739)
!4092 = !DILocation(line: 92, column: 26, scope: !3739)
!4093 = !DILocation(line: 92, column: 3, scope: !3739)
!4094 = !DILocation(line: 92, column: 13, scope: !3739)
!4095 = !DILocation(line: 93, column: 18, scope: !3739)
!4096 = !DILocation(line: 93, column: 17, scope: !3739)
!4097 = !DILocation(line: 93, column: 9, scope: !3739)
!4098 = !DILocation(line: 93, column: 7, scope: !3739)
!4099 = !DILocation(line: 94, column: 7, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 94, column: 6)
!4101 = !DILocation(line: 94, column: 6, scope: !3739)
!4102 = !DILocation(line: 95, column: 10, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 94, column: 13)
!4104 = !DILocation(line: 96, column: 3, scope: !4103)
!4105 = !DILocation(line: 99, column: 9, scope: !4106)
!4106 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 99, column: 2)
!4107 = !DILocation(line: 99, column: 7, scope: !4106)
!4108 = !DILocation(line: 99, column: 14, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4106, file: !3, line: 99, column: 2)
!4110 = !DILocation(line: 99, column: 19, scope: !4109)
!4111 = !DILocation(line: 99, column: 18, scope: !4109)
!4112 = !DILocation(line: 99, column: 16, scope: !4109)
!4113 = !DILocation(line: 99, column: 2, scope: !4106)
!4114 = !DILocalVariable(name: "trt", scope: !4115, file: !3, line: 100, type: !3743)
!4115 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 99, column: 35)
!4116 = !DILocation(line: 100, column: 15, scope: !4115)
!4117 = !DILocation(line: 100, column: 22, scope: !4115)
!4118 = !DILocation(line: 100, column: 27, scope: !4115)
!4119 = !DILocation(line: 100, column: 31, scope: !4115)
!4120 = !DILocation(line: 100, column: 29, scope: !4115)
!4121 = !DILocation(line: 102, column: 11, scope: !4115)
!4122 = !DILocation(line: 102, column: 18, scope: !4115)
!4123 = !DILocation(line: 103, column: 21, scope: !4115)
!4124 = !DILocation(line: 103, column: 11, scope: !4115)
!4125 = !DILocation(line: 103, column: 19, scope: !4115)
!4126 = !DILocation(line: 105, column: 35, scope: !4115)
!4127 = !DILocation(line: 105, column: 38, scope: !4115)
!4128 = !DILocation(line: 105, column: 46, scope: !4115)
!4129 = !DILocation(line: 105, column: 55, scope: !4115)
!4130 = !DILocation(line: 105, column: 12, scope: !4115)
!4131 = !DILocation(line: 105, column: 10, scope: !4115)
!4132 = !DILocation(line: 107, column: 7, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4115, file: !3, line: 107, column: 7)
!4134 = !DILocation(line: 107, column: 7, scope: !4115)
!4135 = !DILocation(line: 108, column: 18, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 107, column: 29)
!4137 = !DILocation(line: 109, column: 4, scope: !4136)
!4138 = !DILocation(line: 110, column: 4, scope: !4136)
!4139 = !DILocation(line: 112, column: 8, scope: !4140)
!4140 = distinct !DILexicalBlock(scope: !4115, file: !3, line: 112, column: 7)
!4141 = !DILocation(line: 112, column: 7, scope: !4115)
!4142 = !DILocation(line: 113, column: 4, scope: !4140)
!4143 = !DILocation(line: 115, column: 32, scope: !4115)
!4144 = !DILocation(line: 115, column: 37, scope: !4115)
!4145 = !DILocation(line: 115, column: 12, scope: !4115)
!4146 = !DILocation(line: 115, column: 10, scope: !4115)
!4147 = !DILocation(line: 116, column: 7, scope: !4148)
!4148 = distinct !DILexicalBlock(scope: !4115, file: !3, line: 116, column: 7)
!4149 = !DILocation(line: 116, column: 7, scope: !4115)
!4150 = !DILocation(line: 117, column: 4, scope: !4148)
!4151 = !DILocation(line: 119, column: 32, scope: !4115)
!4152 = !DILocation(line: 119, column: 37, scope: !4115)
!4153 = !DILocation(line: 119, column: 12, scope: !4115)
!4154 = !DILocation(line: 119, column: 10, scope: !4115)
!4155 = !DILocation(line: 120, column: 7, scope: !4156)
!4156 = distinct !DILexicalBlock(scope: !4115, file: !3, line: 120, column: 7)
!4157 = !DILocation(line: 120, column: 7, scope: !4115)
!4158 = !DILocation(line: 121, column: 4, scope: !4156)
!4159 = !DILocation(line: 122, column: 2, scope: !4115)
!4160 = !DILocation(line: 99, column: 31, scope: !4109)
!4161 = !DILocation(line: 99, column: 2, scope: !4109)
!4162 = distinct !{!4162, !4113, !4163}
!4163 = !DILocation(line: 122, column: 2, scope: !4106)
!4164 = !DILocation(line: 124, column: 9, scope: !3739)
!4165 = !DILocation(line: 126, column: 10, scope: !3739)
!4166 = !DILocation(line: 126, column: 3, scope: !3739)
!4167 = !DILocation(line: 126, column: 8, scope: !3739)
!4168 = !DILocation(line: 128, column: 16, scope: !3739)
!4169 = !DILocation(line: 128, column: 3, scope: !3739)
!4170 = !DILocation(line: 128, column: 13, scope: !3739)
!4171 = !DILocation(line: 128, column: 2, scope: !3739)
!4172 = !DILabel(scope: !3739, name: "end", file: !3, line: 129)
!4173 = !DILocation(line: 129, column: 1, scope: !3739)
!4174 = !DILocation(line: 130, column: 15, scope: !3739)
!4175 = !DILocation(line: 130, column: 2, scope: !3739)
!4176 = !DILocation(line: 131, column: 9, scope: !3739)
!4177 = !DILocation(line: 131, column: 2, scope: !3739)
!4178 = !DILocation(line: 132, column: 1, scope: !3739)
!4179 = distinct !DISubprogram(name: "kcalloc", scope: !95, file: !95, line: 601, type: !4180, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4180 = !DISubroutineType(types: !4181)
!4181 = !{!109, !396, !396, !107}
!4182 = !DILocalVariable(name: "n", arg: 1, scope: !4179, file: !95, line: 601, type: !396)
!4183 = !DILocation(line: 601, column: 36, scope: !4179)
!4184 = !DILocalVariable(name: "size", arg: 2, scope: !4179, file: !95, line: 601, type: !396)
!4185 = !DILocation(line: 601, column: 46, scope: !4179)
!4186 = !DILocalVariable(name: "flags", arg: 3, scope: !4179, file: !95, line: 601, type: !107)
!4187 = !DILocation(line: 601, column: 58, scope: !4179)
!4188 = !DILocation(line: 603, column: 23, scope: !4179)
!4189 = !DILocation(line: 603, column: 26, scope: !4179)
!4190 = !DILocation(line: 603, column: 32, scope: !4179)
!4191 = !DILocation(line: 603, column: 38, scope: !4179)
!4192 = !DILocation(line: 603, column: 9, scope: !4179)
!4193 = !DILocation(line: 603, column: 2, scope: !4179)
!4194 = distinct !DISubprogram(name: "acpi_parse_art", scope: !3, file: !3, line: 144, type: !4195, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!112, !3731, !534, !4197, !307}
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4198, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "art", file: !3745, line: 17, size: 832, elements: !4200)
!4200 = !{!4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213}
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !4199, file: !3745, line: 18, baseType: !3731, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !4199, file: !3745, line: 19, baseType: !3731, size: 64, offset: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !4199, file: !3745, line: 20, baseType: !235, size: 64, offset: 128)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "ac0_max", scope: !4199, file: !3745, line: 21, baseType: !235, size: 64, offset: 192)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "ac1_max", scope: !4199, file: !3745, line: 22, baseType: !235, size: 64, offset: 256)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "ac2_max", scope: !4199, file: !3745, line: 23, baseType: !235, size: 64, offset: 320)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "ac3_max", scope: !4199, file: !3745, line: 24, baseType: !235, size: 64, offset: 384)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "ac4_max", scope: !4199, file: !3745, line: 25, baseType: !235, size: 64, offset: 448)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "ac5_max", scope: !4199, file: !3745, line: 26, baseType: !235, size: 64, offset: 512)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "ac6_max", scope: !4199, file: !3745, line: 27, baseType: !235, size: 64, offset: 576)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "ac7_max", scope: !4199, file: !3745, line: 28, baseType: !235, size: 64, offset: 640)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "ac8_max", scope: !4199, file: !3745, line: 29, baseType: !235, size: 64, offset: 704)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "ac9_max", scope: !4199, file: !3745, line: 30, baseType: !235, size: 64, offset: 768)
!4214 = !DILocalVariable(name: "handle", arg: 1, scope: !4194, file: !3, line: 144, type: !3731)
!4215 = !DILocation(line: 144, column: 32, scope: !4194)
!4216 = !DILocalVariable(name: "art_count", arg: 2, scope: !4194, file: !3, line: 144, type: !534)
!4217 = !DILocation(line: 144, column: 45, scope: !4194)
!4218 = !DILocalVariable(name: "artp", arg: 3, scope: !4194, file: !3, line: 144, type: !4197)
!4219 = !DILocation(line: 144, column: 69, scope: !4194)
!4220 = !DILocalVariable(name: "create_dev", arg: 4, scope: !4194, file: !3, line: 145, type: !307)
!4221 = !DILocation(line: 145, column: 8, scope: !4194)
!4222 = !DILocalVariable(name: "status", scope: !4194, file: !3, line: 147, type: !3764)
!4223 = !DILocation(line: 147, column: 14, scope: !4194)
!4224 = !DILocalVariable(name: "result", scope: !4194, file: !3, line: 148, type: !112)
!4225 = !DILocation(line: 148, column: 6, scope: !4194)
!4226 = !DILocalVariable(name: "i", scope: !4194, file: !3, line: 149, type: !112)
!4227 = !DILocation(line: 149, column: 6, scope: !4194)
!4228 = !DILocalVariable(name: "nr_bad_entries", scope: !4194, file: !3, line: 150, type: !112)
!4229 = !DILocation(line: 150, column: 6, scope: !4194)
!4230 = !DILocalVariable(name: "arts", scope: !4194, file: !3, line: 151, type: !4198)
!4231 = !DILocation(line: 151, column: 14, scope: !4194)
!4232 = !DILocalVariable(name: "adev", scope: !4194, file: !3, line: 152, type: !3775)
!4233 = !DILocation(line: 152, column: 22, scope: !4194)
!4234 = !DILocalVariable(name: "p", scope: !4194, file: !3, line: 153, type: !3838)
!4235 = !DILocation(line: 153, column: 21, scope: !4194)
!4236 = !DILocalVariable(name: "buffer", scope: !4194, file: !3, line: 154, type: !4059)
!4237 = !DILocation(line: 154, column: 21, scope: !4194)
!4238 = !DILocalVariable(name: "element", scope: !4194, file: !3, line: 155, type: !4059)
!4239 = !DILocation(line: 155, column: 21, scope: !4194)
!4240 = !DILocalVariable(name: "art_format", scope: !4194, file: !3, line: 156, type: !4059)
!4241 = !DILocation(line: 156, column: 21, scope: !4194)
!4242 = !DILocation(line: 159, column: 32, scope: !4194)
!4243 = !DILocation(line: 159, column: 11, scope: !4194)
!4244 = !DILocation(line: 159, column: 9, scope: !4194)
!4245 = !DILocation(line: 160, column: 6, scope: !4246)
!4246 = distinct !DILexicalBlock(scope: !4194, file: !3, line: 160, column: 6)
!4247 = !DILocation(line: 160, column: 6, scope: !4194)
!4248 = !DILocation(line: 161, column: 3, scope: !4246)
!4249 = !DILocation(line: 163, column: 13, scope: !4194)
!4250 = !DILocation(line: 163, column: 6, scope: !4194)
!4251 = !DILocation(line: 163, column: 4, scope: !4194)
!4252 = !DILocation(line: 164, column: 7, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4194, file: !3, line: 164, column: 6)
!4254 = !DILocation(line: 164, column: 9, scope: !4253)
!4255 = !DILocation(line: 164, column: 13, scope: !4253)
!4256 = !DILocation(line: 164, column: 16, scope: !4253)
!4257 = !DILocation(line: 164, column: 21, scope: !4253)
!4258 = !DILocation(line: 164, column: 6, scope: !4194)
!4259 = !DILocation(line: 165, column: 3, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 164, column: 44)
!4261 = !DILocation(line: 166, column: 10, scope: !4260)
!4262 = !DILocation(line: 167, column: 3, scope: !4260)
!4263 = !DILocation(line: 171, column: 15, scope: !4194)
!4264 = !DILocation(line: 171, column: 18, scope: !4194)
!4265 = !DILocation(line: 171, column: 26, scope: !4194)
!4266 = !DILocation(line: 171, column: 32, scope: !4194)
!4267 = !DILocation(line: 171, column: 3, scope: !4194)
!4268 = !DILocation(line: 171, column: 13, scope: !4194)
!4269 = !DILocation(line: 172, column: 18, scope: !4194)
!4270 = !DILocation(line: 172, column: 17, scope: !4194)
!4271 = !DILocation(line: 172, column: 9, scope: !4194)
!4272 = !DILocation(line: 172, column: 7, scope: !4194)
!4273 = !DILocation(line: 173, column: 7, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4194, file: !3, line: 173, column: 6)
!4275 = !DILocation(line: 173, column: 6, scope: !4194)
!4276 = !DILocation(line: 174, column: 10, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 173, column: 13)
!4278 = !DILocation(line: 175, column: 3, scope: !4277)
!4279 = !DILocation(line: 178, column: 9, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4194, file: !3, line: 178, column: 2)
!4281 = !DILocation(line: 178, column: 7, scope: !4280)
!4282 = !DILocation(line: 178, column: 14, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4280, file: !3, line: 178, column: 2)
!4284 = !DILocation(line: 178, column: 19, scope: !4283)
!4285 = !DILocation(line: 178, column: 18, scope: !4283)
!4286 = !DILocation(line: 178, column: 16, scope: !4283)
!4287 = !DILocation(line: 178, column: 2, scope: !4280)
!4288 = !DILocalVariable(name: "art", scope: !4289, file: !3, line: 179, type: !4198)
!4289 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 178, column: 35)
!4290 = !DILocation(line: 179, column: 15, scope: !4289)
!4291 = !DILocation(line: 179, column: 22, scope: !4289)
!4292 = !DILocation(line: 179, column: 27, scope: !4289)
!4293 = !DILocation(line: 179, column: 31, scope: !4289)
!4294 = !DILocation(line: 179, column: 29, scope: !4289)
!4295 = !DILocation(line: 181, column: 11, scope: !4289)
!4296 = !DILocation(line: 181, column: 18, scope: !4289)
!4297 = !DILocation(line: 182, column: 21, scope: !4289)
!4298 = !DILocation(line: 182, column: 11, scope: !4289)
!4299 = !DILocation(line: 182, column: 19, scope: !4289)
!4300 = !DILocation(line: 184, column: 35, scope: !4289)
!4301 = !DILocation(line: 184, column: 38, scope: !4289)
!4302 = !DILocation(line: 184, column: 46, scope: !4289)
!4303 = !DILocation(line: 184, column: 55, scope: !4289)
!4304 = !DILocation(line: 184, column: 57, scope: !4289)
!4305 = !DILocation(line: 184, column: 12, scope: !4289)
!4306 = !DILocation(line: 184, column: 10, scope: !4289)
!4307 = !DILocation(line: 186, column: 7, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 186, column: 7)
!4309 = !DILocation(line: 186, column: 7, scope: !4289)
!4310 = !DILocation(line: 187, column: 4, scope: !4311)
!4311 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 186, column: 29)
!4312 = !DILocation(line: 188, column: 18, scope: !4311)
!4313 = !DILocation(line: 189, column: 4, scope: !4311)
!4314 = !DILocation(line: 191, column: 8, scope: !4315)
!4315 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 191, column: 7)
!4316 = !DILocation(line: 191, column: 7, scope: !4289)
!4317 = !DILocation(line: 192, column: 4, scope: !4315)
!4318 = !DILocation(line: 194, column: 7, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 194, column: 7)
!4320 = !DILocation(line: 194, column: 12, scope: !4319)
!4321 = !DILocation(line: 194, column: 7, scope: !4289)
!4322 = !DILocation(line: 195, column: 33, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 194, column: 20)
!4324 = !DILocation(line: 195, column: 38, scope: !4323)
!4325 = !DILocation(line: 195, column: 13, scope: !4323)
!4326 = !DILocation(line: 195, column: 11, scope: !4323)
!4327 = !DILocation(line: 196, column: 8, scope: !4328)
!4328 = distinct !DILexicalBlock(scope: !4323, file: !3, line: 196, column: 8)
!4329 = !DILocation(line: 196, column: 8, scope: !4323)
!4330 = !DILocation(line: 197, column: 5, scope: !4328)
!4331 = !DILocation(line: 198, column: 3, scope: !4323)
!4332 = !DILocation(line: 199, column: 7, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 199, column: 7)
!4334 = !DILocation(line: 199, column: 12, scope: !4333)
!4335 = !DILocation(line: 199, column: 7, scope: !4289)
!4336 = !DILocation(line: 200, column: 33, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4333, file: !3, line: 199, column: 20)
!4338 = !DILocation(line: 200, column: 38, scope: !4337)
!4339 = !DILocation(line: 200, column: 13, scope: !4337)
!4340 = !DILocation(line: 200, column: 11, scope: !4337)
!4341 = !DILocation(line: 201, column: 8, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4337, file: !3, line: 201, column: 8)
!4343 = !DILocation(line: 201, column: 8, scope: !4337)
!4344 = !DILocation(line: 202, column: 5, scope: !4342)
!4345 = !DILocation(line: 203, column: 3, scope: !4337)
!4346 = !DILocation(line: 204, column: 2, scope: !4289)
!4347 = !DILocation(line: 178, column: 31, scope: !4283)
!4348 = !DILocation(line: 178, column: 2, scope: !4283)
!4349 = distinct !{!4349, !4287, !4350}
!4350 = !DILocation(line: 204, column: 2, scope: !4280)
!4351 = !DILocation(line: 206, column: 10, scope: !4194)
!4352 = !DILocation(line: 206, column: 3, scope: !4194)
!4353 = !DILocation(line: 206, column: 8, scope: !4194)
!4354 = !DILocation(line: 208, column: 16, scope: !4194)
!4355 = !DILocation(line: 208, column: 3, scope: !4194)
!4356 = !DILocation(line: 208, column: 13, scope: !4194)
!4357 = !DILocation(line: 208, column: 2, scope: !4194)
!4358 = !DILabel(scope: !4194, name: "end", file: !3, line: 209)
!4359 = !DILocation(line: 209, column: 1, scope: !4194)
!4360 = !DILocation(line: 210, column: 15, scope: !4194)
!4361 = !DILocation(line: 210, column: 2, scope: !4194)
!4362 = !DILocation(line: 211, column: 9, scope: !4194)
!4363 = !DILocation(line: 211, column: 2, scope: !4194)
!4364 = !DILocation(line: 212, column: 1, scope: !4194)
!4365 = distinct !DISubprogram(name: "acpi_thermal_rel_misc_device_add", scope: !3, file: !3, line: 366, type: !4366, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!112, !3731}
!4368 = !DILocalVariable(name: "handle", arg: 1, scope: !4365, file: !3, line: 366, type: !3731)
!4369 = !DILocation(line: 366, column: 50, scope: !4365)
!4370 = !DILocation(line: 368, column: 28, scope: !4365)
!4371 = !DILocation(line: 368, column: 26, scope: !4365)
!4372 = !DILocation(line: 370, column: 9, scope: !4365)
!4373 = !DILocation(line: 370, column: 2, scope: !4365)
!4374 = distinct !DISubprogram(name: "acpi_thermal_rel_misc_device_remove", scope: !3, file: !3, line: 374, type: !4366, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4375 = !DILocalVariable(name: "handle", arg: 1, scope: !4374, file: !3, line: 374, type: !3731)
!4376 = !DILocation(line: 374, column: 53, scope: !4374)
!4377 = !DILocation(line: 376, column: 2, scope: !4374)
!4378 = !DILocation(line: 378, column: 2, scope: !4374)
!4379 = distinct !DISubprogram(name: "kmalloc_array", scope: !95, file: !95, line: 584, type: !4180, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4380 = !DILocalVariable(name: "s", arg: 1, scope: !4381, file: !95, line: 445, type: !778)
!4381 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !95, file: !95, line: 445, type: !4382, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!109, !778, !107, !396}
!4384 = !DILocation(line: 445, column: 72, scope: !4381, inlinedAt: !4385)
!4385 = distinct !DILocation(line: 552, column: 10, scope: !4386, inlinedAt: !4391)
!4386 = distinct !DILexicalBlock(scope: !4387, file: !95, line: 540, column: 34)
!4387 = distinct !DILexicalBlock(scope: !4388, file: !95, line: 540, column: 6)
!4388 = distinct !DISubprogram(name: "kmalloc", scope: !95, file: !95, line: 538, type: !4389, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{!109, !396, !107}
!4391 = distinct !DILocation(line: 591, column: 10, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4379, file: !95, line: 590, column: 6)
!4393 = !DILocalVariable(name: "flags", arg: 2, scope: !4381, file: !95, line: 446, type: !107)
!4394 = !DILocation(line: 446, column: 9, scope: !4381, inlinedAt: !4385)
!4395 = !DILocalVariable(name: "size", arg: 3, scope: !4381, file: !95, line: 446, type: !396)
!4396 = !DILocation(line: 446, column: 23, scope: !4381, inlinedAt: !4385)
!4397 = !DILocalVariable(name: "ret", scope: !4381, file: !95, line: 448, type: !109)
!4398 = !DILocation(line: 448, column: 8, scope: !4381, inlinedAt: !4385)
!4399 = !DILocalVariable(name: "flags", arg: 1, scope: !4400, file: !95, line: 318, type: !107)
!4400 = distinct !DISubprogram(name: "kmalloc_type", scope: !95, file: !95, line: 318, type: !4401, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!94, !107}
!4403 = !DILocation(line: 318, column: 67, scope: !4400, inlinedAt: !4404)
!4404 = distinct !DILocation(line: 553, column: 20, scope: !4386, inlinedAt: !4391)
!4405 = !DILocalVariable(name: "size", arg: 1, scope: !4406, file: !95, line: 346, type: !396)
!4406 = distinct !DISubprogram(name: "kmalloc_index", scope: !95, file: !95, line: 346, type: !4407, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!7, !396}
!4409 = !DILocation(line: 346, column: 58, scope: !4406, inlinedAt: !4410)
!4410 = distinct !DILocation(line: 547, column: 11, scope: !4386, inlinedAt: !4391)
!4411 = !DILocalVariable(name: "size", arg: 1, scope: !4412, file: !95, line: 472, type: !396)
!4412 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !95, file: !95, line: 472, type: !4413, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{!109, !396, !107, !7}
!4415 = !DILocation(line: 472, column: 28, scope: !4412, inlinedAt: !4416)
!4416 = distinct !DILocation(line: 481, column: 9, scope: !4417, inlinedAt: !4418)
!4417 = distinct !DISubprogram(name: "kmalloc_large", scope: !95, file: !95, line: 478, type: !4389, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4418 = distinct !DILocation(line: 545, column: 11, scope: !4419, inlinedAt: !4391)
!4419 = distinct !DILexicalBlock(scope: !4386, file: !95, line: 544, column: 7)
!4420 = !DILocalVariable(name: "flags", arg: 2, scope: !4412, file: !95, line: 472, type: !107)
!4421 = !DILocation(line: 472, column: 40, scope: !4412, inlinedAt: !4416)
!4422 = !DILocalVariable(name: "order", arg: 3, scope: !4412, file: !95, line: 472, type: !7)
!4423 = !DILocation(line: 472, column: 60, scope: !4412, inlinedAt: !4416)
!4424 = !DILocalVariable(name: "size", arg: 1, scope: !4417, file: !95, line: 478, type: !396)
!4425 = !DILocation(line: 478, column: 51, scope: !4417, inlinedAt: !4418)
!4426 = !DILocalVariable(name: "flags", arg: 2, scope: !4417, file: !95, line: 478, type: !107)
!4427 = !DILocation(line: 478, column: 63, scope: !4417, inlinedAt: !4418)
!4428 = !DILocalVariable(name: "order", scope: !4417, file: !95, line: 480, type: !7)
!4429 = !DILocation(line: 480, column: 15, scope: !4417, inlinedAt: !4418)
!4430 = !DILocalVariable(name: "size", arg: 1, scope: !4388, file: !95, line: 538, type: !396)
!4431 = !DILocation(line: 538, column: 45, scope: !4388, inlinedAt: !4391)
!4432 = !DILocalVariable(name: "flags", arg: 2, scope: !4388, file: !95, line: 538, type: !107)
!4433 = !DILocation(line: 538, column: 57, scope: !4388, inlinedAt: !4391)
!4434 = !DILocalVariable(name: "index", scope: !4386, file: !95, line: 542, type: !7)
!4435 = !DILocation(line: 542, column: 16, scope: !4386, inlinedAt: !4391)
!4436 = !DILocalVariable(name: "n", arg: 1, scope: !4379, file: !95, line: 584, type: !396)
!4437 = !DILocation(line: 584, column: 42, scope: !4379)
!4438 = !DILocalVariable(name: "size", arg: 2, scope: !4379, file: !95, line: 584, type: !396)
!4439 = !DILocation(line: 584, column: 52, scope: !4379)
!4440 = !DILocalVariable(name: "flags", arg: 3, scope: !4379, file: !95, line: 584, type: !107)
!4441 = !DILocation(line: 584, column: 64, scope: !4379)
!4442 = !DILocalVariable(name: "bytes", scope: !4379, file: !95, line: 586, type: !396)
!4443 = !DILocation(line: 586, column: 9, scope: !4379)
!4444 = !DILocalVariable(name: "__a", scope: !4445, file: !95, line: 588, type: !396)
!4445 = distinct !DILexicalBlock(scope: !4446, file: !95, line: 588, column: 6)
!4446 = distinct !DILexicalBlock(scope: !4379, file: !95, line: 588, column: 6)
!4447 = !DILocation(line: 588, column: 6, scope: !4445)
!4448 = !DILocalVariable(name: "__b", scope: !4445, file: !95, line: 588, type: !396)
!4449 = !DILocalVariable(name: "__d", scope: !4445, file: !95, line: 588, type: !4450)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!4451 = !DILocation(line: 588, column: 6, scope: !4446)
!4452 = !DILocation(line: 588, column: 6, scope: !4379)
!4453 = !DILocation(line: 589, column: 3, scope: !4446)
!4454 = !DILocation(line: 590, column: 27, scope: !4392)
!4455 = !DILocation(line: 590, column: 6, scope: !4392)
!4456 = !DILocation(line: 590, column: 30, scope: !4392)
!4457 = !DILocation(line: 590, column: 54, scope: !4392)
!4458 = !DILocation(line: 590, column: 33, scope: !4392)
!4459 = !DILocation(line: 590, column: 6, scope: !4379)
!4460 = !DILocation(line: 591, column: 18, scope: !4392)
!4461 = !DILocation(line: 591, column: 25, scope: !4392)
!4462 = !DILocation(line: 540, column: 27, scope: !4387, inlinedAt: !4391)
!4463 = !DILocation(line: 540, column: 6, scope: !4387, inlinedAt: !4391)
!4464 = !DILocation(line: 540, column: 6, scope: !4388, inlinedAt: !4391)
!4465 = !DILocation(line: 544, column: 7, scope: !4419, inlinedAt: !4391)
!4466 = !DILocation(line: 544, column: 12, scope: !4419, inlinedAt: !4391)
!4467 = !DILocation(line: 544, column: 7, scope: !4386, inlinedAt: !4391)
!4468 = !DILocation(line: 545, column: 25, scope: !4419, inlinedAt: !4391)
!4469 = !DILocation(line: 545, column: 31, scope: !4419, inlinedAt: !4391)
!4470 = !DILocation(line: 480, column: 33, scope: !4417, inlinedAt: !4418)
!4471 = !DILocation(line: 480, column: 23, scope: !4417, inlinedAt: !4418)
!4472 = !DILocation(line: 481, column: 29, scope: !4417, inlinedAt: !4418)
!4473 = !DILocation(line: 481, column: 35, scope: !4417, inlinedAt: !4418)
!4474 = !DILocation(line: 481, column: 42, scope: !4417, inlinedAt: !4418)
!4475 = !DILocation(line: 474, column: 23, scope: !4412, inlinedAt: !4416)
!4476 = !DILocation(line: 474, column: 29, scope: !4412, inlinedAt: !4416)
!4477 = !DILocation(line: 474, column: 36, scope: !4412, inlinedAt: !4416)
!4478 = !DILocation(line: 474, column: 9, scope: !4412, inlinedAt: !4416)
!4479 = !DILocation(line: 545, column: 4, scope: !4419, inlinedAt: !4391)
!4480 = !DILocation(line: 547, column: 25, scope: !4386, inlinedAt: !4391)
!4481 = !DILocation(line: 348, column: 7, scope: !4482, inlinedAt: !4410)
!4482 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 348, column: 6)
!4483 = !DILocation(line: 348, column: 6, scope: !4406, inlinedAt: !4410)
!4484 = !DILocation(line: 349, column: 3, scope: !4482, inlinedAt: !4410)
!4485 = !DILocation(line: 351, column: 6, scope: !4486, inlinedAt: !4410)
!4486 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 351, column: 6)
!4487 = !DILocation(line: 351, column: 11, scope: !4486, inlinedAt: !4410)
!4488 = !DILocation(line: 351, column: 6, scope: !4406, inlinedAt: !4410)
!4489 = !DILocation(line: 352, column: 3, scope: !4486, inlinedAt: !4410)
!4490 = !DILocation(line: 354, column: 32, scope: !4491, inlinedAt: !4410)
!4491 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 354, column: 6)
!4492 = !DILocation(line: 354, column: 37, scope: !4491, inlinedAt: !4410)
!4493 = !DILocation(line: 354, column: 42, scope: !4491, inlinedAt: !4410)
!4494 = !DILocation(line: 354, column: 45, scope: !4491, inlinedAt: !4410)
!4495 = !DILocation(line: 354, column: 50, scope: !4491, inlinedAt: !4410)
!4496 = !DILocation(line: 354, column: 6, scope: !4406, inlinedAt: !4410)
!4497 = !DILocation(line: 355, column: 3, scope: !4491, inlinedAt: !4410)
!4498 = !DILocation(line: 356, column: 32, scope: !4499, inlinedAt: !4410)
!4499 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 356, column: 6)
!4500 = !DILocation(line: 356, column: 37, scope: !4499, inlinedAt: !4410)
!4501 = !DILocation(line: 356, column: 43, scope: !4499, inlinedAt: !4410)
!4502 = !DILocation(line: 356, column: 46, scope: !4499, inlinedAt: !4410)
!4503 = !DILocation(line: 356, column: 51, scope: !4499, inlinedAt: !4410)
!4504 = !DILocation(line: 356, column: 6, scope: !4406, inlinedAt: !4410)
!4505 = !DILocation(line: 357, column: 3, scope: !4499, inlinedAt: !4410)
!4506 = !DILocation(line: 358, column: 6, scope: !4507, inlinedAt: !4410)
!4507 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 358, column: 6)
!4508 = !DILocation(line: 358, column: 11, scope: !4507, inlinedAt: !4410)
!4509 = !DILocation(line: 358, column: 6, scope: !4406, inlinedAt: !4410)
!4510 = !DILocation(line: 358, column: 26, scope: !4507, inlinedAt: !4410)
!4511 = !DILocation(line: 359, column: 6, scope: !4512, inlinedAt: !4410)
!4512 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 359, column: 6)
!4513 = !DILocation(line: 359, column: 11, scope: !4512, inlinedAt: !4410)
!4514 = !DILocation(line: 359, column: 6, scope: !4406, inlinedAt: !4410)
!4515 = !DILocation(line: 359, column: 26, scope: !4512, inlinedAt: !4410)
!4516 = !DILocation(line: 360, column: 6, scope: !4517, inlinedAt: !4410)
!4517 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 360, column: 6)
!4518 = !DILocation(line: 360, column: 11, scope: !4517, inlinedAt: !4410)
!4519 = !DILocation(line: 360, column: 6, scope: !4406, inlinedAt: !4410)
!4520 = !DILocation(line: 360, column: 26, scope: !4517, inlinedAt: !4410)
!4521 = !DILocation(line: 361, column: 6, scope: !4522, inlinedAt: !4410)
!4522 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 361, column: 6)
!4523 = !DILocation(line: 361, column: 11, scope: !4522, inlinedAt: !4410)
!4524 = !DILocation(line: 361, column: 6, scope: !4406, inlinedAt: !4410)
!4525 = !DILocation(line: 361, column: 26, scope: !4522, inlinedAt: !4410)
!4526 = !DILocation(line: 362, column: 6, scope: !4527, inlinedAt: !4410)
!4527 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 362, column: 6)
!4528 = !DILocation(line: 362, column: 11, scope: !4527, inlinedAt: !4410)
!4529 = !DILocation(line: 362, column: 6, scope: !4406, inlinedAt: !4410)
!4530 = !DILocation(line: 362, column: 26, scope: !4527, inlinedAt: !4410)
!4531 = !DILocation(line: 363, column: 6, scope: !4532, inlinedAt: !4410)
!4532 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 363, column: 6)
!4533 = !DILocation(line: 363, column: 11, scope: !4532, inlinedAt: !4410)
!4534 = !DILocation(line: 363, column: 6, scope: !4406, inlinedAt: !4410)
!4535 = !DILocation(line: 363, column: 26, scope: !4532, inlinedAt: !4410)
!4536 = !DILocation(line: 364, column: 6, scope: !4537, inlinedAt: !4410)
!4537 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 364, column: 6)
!4538 = !DILocation(line: 364, column: 11, scope: !4537, inlinedAt: !4410)
!4539 = !DILocation(line: 364, column: 6, scope: !4406, inlinedAt: !4410)
!4540 = !DILocation(line: 364, column: 26, scope: !4537, inlinedAt: !4410)
!4541 = !DILocation(line: 365, column: 6, scope: !4542, inlinedAt: !4410)
!4542 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 365, column: 6)
!4543 = !DILocation(line: 365, column: 11, scope: !4542, inlinedAt: !4410)
!4544 = !DILocation(line: 365, column: 6, scope: !4406, inlinedAt: !4410)
!4545 = !DILocation(line: 365, column: 26, scope: !4542, inlinedAt: !4410)
!4546 = !DILocation(line: 366, column: 6, scope: !4547, inlinedAt: !4410)
!4547 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 366, column: 6)
!4548 = !DILocation(line: 366, column: 11, scope: !4547, inlinedAt: !4410)
!4549 = !DILocation(line: 366, column: 6, scope: !4406, inlinedAt: !4410)
!4550 = !DILocation(line: 366, column: 26, scope: !4547, inlinedAt: !4410)
!4551 = !DILocation(line: 367, column: 6, scope: !4552, inlinedAt: !4410)
!4552 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 367, column: 6)
!4553 = !DILocation(line: 367, column: 11, scope: !4552, inlinedAt: !4410)
!4554 = !DILocation(line: 367, column: 6, scope: !4406, inlinedAt: !4410)
!4555 = !DILocation(line: 367, column: 26, scope: !4552, inlinedAt: !4410)
!4556 = !DILocation(line: 368, column: 6, scope: !4557, inlinedAt: !4410)
!4557 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 368, column: 6)
!4558 = !DILocation(line: 368, column: 11, scope: !4557, inlinedAt: !4410)
!4559 = !DILocation(line: 368, column: 6, scope: !4406, inlinedAt: !4410)
!4560 = !DILocation(line: 368, column: 26, scope: !4557, inlinedAt: !4410)
!4561 = !DILocation(line: 369, column: 6, scope: !4562, inlinedAt: !4410)
!4562 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 369, column: 6)
!4563 = !DILocation(line: 369, column: 11, scope: !4562, inlinedAt: !4410)
!4564 = !DILocation(line: 369, column: 6, scope: !4406, inlinedAt: !4410)
!4565 = !DILocation(line: 369, column: 26, scope: !4562, inlinedAt: !4410)
!4566 = !DILocation(line: 370, column: 6, scope: !4567, inlinedAt: !4410)
!4567 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 370, column: 6)
!4568 = !DILocation(line: 370, column: 11, scope: !4567, inlinedAt: !4410)
!4569 = !DILocation(line: 370, column: 6, scope: !4406, inlinedAt: !4410)
!4570 = !DILocation(line: 370, column: 26, scope: !4567, inlinedAt: !4410)
!4571 = !DILocation(line: 371, column: 6, scope: !4572, inlinedAt: !4410)
!4572 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 371, column: 6)
!4573 = !DILocation(line: 371, column: 11, scope: !4572, inlinedAt: !4410)
!4574 = !DILocation(line: 371, column: 6, scope: !4406, inlinedAt: !4410)
!4575 = !DILocation(line: 371, column: 26, scope: !4572, inlinedAt: !4410)
!4576 = !DILocation(line: 372, column: 6, scope: !4577, inlinedAt: !4410)
!4577 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 372, column: 6)
!4578 = !DILocation(line: 372, column: 11, scope: !4577, inlinedAt: !4410)
!4579 = !DILocation(line: 372, column: 6, scope: !4406, inlinedAt: !4410)
!4580 = !DILocation(line: 372, column: 26, scope: !4577, inlinedAt: !4410)
!4581 = !DILocation(line: 373, column: 6, scope: !4582, inlinedAt: !4410)
!4582 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 373, column: 6)
!4583 = !DILocation(line: 373, column: 11, scope: !4582, inlinedAt: !4410)
!4584 = !DILocation(line: 373, column: 6, scope: !4406, inlinedAt: !4410)
!4585 = !DILocation(line: 373, column: 26, scope: !4582, inlinedAt: !4410)
!4586 = !DILocation(line: 374, column: 6, scope: !4587, inlinedAt: !4410)
!4587 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 374, column: 6)
!4588 = !DILocation(line: 374, column: 11, scope: !4587, inlinedAt: !4410)
!4589 = !DILocation(line: 374, column: 6, scope: !4406, inlinedAt: !4410)
!4590 = !DILocation(line: 374, column: 26, scope: !4587, inlinedAt: !4410)
!4591 = !DILocation(line: 375, column: 6, scope: !4592, inlinedAt: !4410)
!4592 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 375, column: 6)
!4593 = !DILocation(line: 375, column: 11, scope: !4592, inlinedAt: !4410)
!4594 = !DILocation(line: 375, column: 6, scope: !4406, inlinedAt: !4410)
!4595 = !DILocation(line: 375, column: 27, scope: !4592, inlinedAt: !4410)
!4596 = !DILocation(line: 376, column: 6, scope: !4597, inlinedAt: !4410)
!4597 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 376, column: 6)
!4598 = !DILocation(line: 376, column: 11, scope: !4597, inlinedAt: !4410)
!4599 = !DILocation(line: 376, column: 6, scope: !4406, inlinedAt: !4410)
!4600 = !DILocation(line: 376, column: 32, scope: !4597, inlinedAt: !4410)
!4601 = !DILocation(line: 377, column: 6, scope: !4602, inlinedAt: !4410)
!4602 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 377, column: 6)
!4603 = !DILocation(line: 377, column: 11, scope: !4602, inlinedAt: !4410)
!4604 = !DILocation(line: 377, column: 6, scope: !4406, inlinedAt: !4410)
!4605 = !DILocation(line: 377, column: 32, scope: !4602, inlinedAt: !4410)
!4606 = !DILocation(line: 378, column: 6, scope: !4607, inlinedAt: !4410)
!4607 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 378, column: 6)
!4608 = !DILocation(line: 378, column: 11, scope: !4607, inlinedAt: !4410)
!4609 = !DILocation(line: 378, column: 6, scope: !4406, inlinedAt: !4410)
!4610 = !DILocation(line: 378, column: 32, scope: !4607, inlinedAt: !4410)
!4611 = !DILocation(line: 379, column: 6, scope: !4612, inlinedAt: !4410)
!4612 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 379, column: 6)
!4613 = !DILocation(line: 379, column: 11, scope: !4612, inlinedAt: !4410)
!4614 = !DILocation(line: 379, column: 6, scope: !4406, inlinedAt: !4410)
!4615 = !DILocation(line: 379, column: 33, scope: !4612, inlinedAt: !4410)
!4616 = !DILocation(line: 380, column: 6, scope: !4617, inlinedAt: !4410)
!4617 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 380, column: 6)
!4618 = !DILocation(line: 380, column: 11, scope: !4617, inlinedAt: !4410)
!4619 = !DILocation(line: 380, column: 6, scope: !4406, inlinedAt: !4410)
!4620 = !DILocation(line: 380, column: 33, scope: !4617, inlinedAt: !4410)
!4621 = !DILocation(line: 381, column: 6, scope: !4622, inlinedAt: !4410)
!4622 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 381, column: 6)
!4623 = !DILocation(line: 381, column: 11, scope: !4622, inlinedAt: !4410)
!4624 = !DILocation(line: 381, column: 6, scope: !4406, inlinedAt: !4410)
!4625 = !DILocation(line: 381, column: 33, scope: !4622, inlinedAt: !4410)
!4626 = !DILocation(line: 382, column: 2, scope: !4627, inlinedAt: !4410)
!4627 = distinct !DILexicalBlock(scope: !4628, file: !95, line: 382, column: 2)
!4628 = distinct !DILexicalBlock(scope: !4406, file: !95, line: 382, column: 2)
!4629 = !{i32 -2143290165, i32 -2143290136, i32 -2143290090, i32 -2143290032, i32 -2143289978, i32 -2143289924, i32 -2143289869, i32 -2143289838}
!4630 = !DILocation(line: 382, column: 2, scope: !4631, inlinedAt: !4410)
!4631 = distinct !DILexicalBlock(scope: !4632, file: !95, line: 382, column: 2)
!4632 = distinct !DILexicalBlock(scope: !4628, file: !95, line: 382, column: 2)
!4633 = !{i32 -2143289395, i32 -2143289388, i32 -2143289334, i32 -2143289303, i32 -2143289273}
!4634 = !DILocation(line: 382, column: 2, scope: !4632, inlinedAt: !4410)
!4635 = !DILocation(line: 386, column: 1, scope: !4406, inlinedAt: !4410)
!4636 = !DILocation(line: 547, column: 9, scope: !4386, inlinedAt: !4391)
!4637 = !DILocation(line: 549, column: 8, scope: !4638, inlinedAt: !4391)
!4638 = distinct !DILexicalBlock(scope: !4386, file: !95, line: 549, column: 7)
!4639 = !DILocation(line: 549, column: 7, scope: !4386, inlinedAt: !4391)
!4640 = !DILocation(line: 550, column: 4, scope: !4638, inlinedAt: !4391)
!4641 = !DILocation(line: 553, column: 33, scope: !4386, inlinedAt: !4391)
!4642 = !DILocation(line: 325, column: 6, scope: !4643, inlinedAt: !4404)
!4643 = distinct !DILexicalBlock(scope: !4400, file: !95, line: 325, column: 6)
!4644 = !DILocation(line: 325, column: 6, scope: !4400, inlinedAt: !4404)
!4645 = !DILocation(line: 326, column: 3, scope: !4643, inlinedAt: !4404)
!4646 = !DILocation(line: 332, column: 9, scope: !4400, inlinedAt: !4404)
!4647 = !DILocation(line: 332, column: 15, scope: !4400, inlinedAt: !4404)
!4648 = !DILocation(line: 332, column: 2, scope: !4400, inlinedAt: !4404)
!4649 = !DILocation(line: 336, column: 1, scope: !4400, inlinedAt: !4404)
!4650 = !DILocation(line: 553, column: 5, scope: !4386, inlinedAt: !4391)
!4651 = !DILocation(line: 553, column: 41, scope: !4386, inlinedAt: !4391)
!4652 = !DILocation(line: 554, column: 5, scope: !4386, inlinedAt: !4391)
!4653 = !DILocation(line: 554, column: 12, scope: !4386, inlinedAt: !4391)
!4654 = !DILocation(line: 448, column: 31, scope: !4381, inlinedAt: !4385)
!4655 = !DILocation(line: 448, column: 34, scope: !4381, inlinedAt: !4385)
!4656 = !DILocation(line: 448, column: 14, scope: !4381, inlinedAt: !4385)
!4657 = !DILocation(line: 450, column: 22, scope: !4381, inlinedAt: !4385)
!4658 = !DILocation(line: 450, column: 25, scope: !4381, inlinedAt: !4385)
!4659 = !DILocation(line: 450, column: 30, scope: !4381, inlinedAt: !4385)
!4660 = !DILocation(line: 450, column: 36, scope: !4381, inlinedAt: !4385)
!4661 = !DILocation(line: 450, column: 8, scope: !4381, inlinedAt: !4385)
!4662 = !DILocation(line: 450, column: 6, scope: !4381, inlinedAt: !4385)
!4663 = !DILocation(line: 451, column: 9, scope: !4381, inlinedAt: !4385)
!4664 = !DILocation(line: 552, column: 3, scope: !4386, inlinedAt: !4391)
!4665 = !DILocation(line: 557, column: 19, scope: !4388, inlinedAt: !4391)
!4666 = !DILocation(line: 557, column: 25, scope: !4388, inlinedAt: !4391)
!4667 = !DILocation(line: 557, column: 9, scope: !4388, inlinedAt: !4391)
!4668 = !DILocation(line: 557, column: 2, scope: !4388, inlinedAt: !4391)
!4669 = !DILocation(line: 558, column: 1, scope: !4388, inlinedAt: !4391)
!4670 = !DILocation(line: 591, column: 3, scope: !4392)
!4671 = !DILocation(line: 592, column: 19, scope: !4379)
!4672 = !DILocation(line: 592, column: 26, scope: !4379)
!4673 = !DILocation(line: 592, column: 9, scope: !4379)
!4674 = !DILocation(line: 592, column: 2, scope: !4379)
!4675 = !DILocation(line: 593, column: 1, scope: !4379)
!4676 = distinct !DISubprogram(name: "__must_check_overflow", scope: !4677, file: !4677, line: 52, type: !4678, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4677 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!4678 = !DISubroutineType(types: !4679)
!4679 = !{!307, !307}
!4680 = !DILocalVariable(name: "overflow", arg: 1, scope: !4676, file: !4677, line: 52, type: !307)
!4681 = !DILocation(line: 52, column: 60, scope: !4676)
!4682 = !DILocation(line: 54, column: 9, scope: !4676)
!4683 = !DILocation(line: 54, column: 2, scope: !4676)
!4684 = distinct !DISubprogram(name: "get_order", scope: !4685, file: !4685, line: 29, type: !4686, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4685 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!112, !111}
!4688 = !DILocalVariable(name: "x", arg: 1, scope: !4689, file: !4690, line: 366, type: !236)
!4689 = distinct !DISubprogram(name: "fls64", scope: !4690, file: !4690, line: 366, type: !4691, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4690 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4691 = !DISubroutineType(types: !4692)
!4692 = !{!112, !236}
!4693 = !DILocation(line: 366, column: 40, scope: !4689, inlinedAt: !4694)
!4694 = distinct !DILocation(line: 46, column: 9, scope: !4684)
!4695 = !DILocalVariable(name: "bitpos", scope: !4689, file: !4690, line: 368, type: !112)
!4696 = !DILocation(line: 368, column: 6, scope: !4689, inlinedAt: !4694)
!4697 = !DILocalVariable(name: "size", arg: 1, scope: !4684, file: !4685, line: 29, type: !111)
!4698 = !DILocation(line: 29, column: 63, scope: !4684)
!4699 = !DILocation(line: 31, column: 27, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !4684, file: !4685, line: 31, column: 6)
!4701 = !DILocation(line: 31, column: 6, scope: !4700)
!4702 = !DILocation(line: 31, column: 6, scope: !4684)
!4703 = !DILocation(line: 32, column: 8, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4705, file: !4685, line: 32, column: 7)
!4705 = distinct !DILexicalBlock(scope: !4700, file: !4685, line: 31, column: 34)
!4706 = !DILocation(line: 32, column: 7, scope: !4705)
!4707 = !DILocation(line: 33, column: 4, scope: !4704)
!4708 = !DILocation(line: 35, column: 7, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !4705, file: !4685, line: 35, column: 7)
!4710 = !DILocation(line: 35, column: 12, scope: !4709)
!4711 = !DILocation(line: 35, column: 7, scope: !4705)
!4712 = !DILocation(line: 36, column: 4, scope: !4709)
!4713 = !DILocation(line: 38, column: 10, scope: !4705)
!4714 = !DILocation(line: 38, column: 28, scope: !4705)
!4715 = !DILocation(line: 38, column: 41, scope: !4705)
!4716 = !DILocation(line: 38, column: 3, scope: !4705)
!4717 = !DILocation(line: 41, column: 6, scope: !4684)
!4718 = !DILocation(line: 42, column: 7, scope: !4684)
!4719 = !DILocation(line: 46, column: 15, scope: !4684)
!4720 = !DILocation(line: 374, column: 2, scope: !4689, inlinedAt: !4694)
!4721 = !DILocation(line: 376, column: 14, scope: !4689, inlinedAt: !4694)
!4722 = !{i32 317103}
!4723 = !DILocation(line: 377, column: 9, scope: !4689, inlinedAt: !4694)
!4724 = !DILocation(line: 377, column: 16, scope: !4689, inlinedAt: !4694)
!4725 = !DILocation(line: 46, column: 2, scope: !4684)
!4726 = !DILocation(line: 48, column: 1, scope: !4684)
!4727 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4728, file: !4728, line: 30, type: !4729, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4728 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!112, !235}
!4731 = !DILocation(line: 366, column: 40, scope: !4689, inlinedAt: !4732)
!4732 = distinct !DILocation(line: 32, column: 9, scope: !4727)
!4733 = !DILocation(line: 368, column: 6, scope: !4689, inlinedAt: !4732)
!4734 = !DILocalVariable(name: "n", arg: 1, scope: !4727, file: !4728, line: 30, type: !235)
!4735 = !DILocation(line: 30, column: 21, scope: !4727)
!4736 = !DILocation(line: 32, column: 15, scope: !4727)
!4737 = !DILocation(line: 374, column: 2, scope: !4689, inlinedAt: !4732)
!4738 = !DILocation(line: 376, column: 14, scope: !4689, inlinedAt: !4732)
!4739 = !DILocation(line: 377, column: 9, scope: !4689, inlinedAt: !4732)
!4740 = !DILocation(line: 377, column: 16, scope: !4689, inlinedAt: !4732)
!4741 = !DILocation(line: 32, column: 18, scope: !4727)
!4742 = !DILocation(line: 32, column: 2, scope: !4727)
!4743 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4744, file: !4744, line: 137, type: !4745, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4744 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4745 = !DISubroutineType(types: !4746)
!4746 = !{!109, !778, !1894, !396, !107}
!4747 = !DILocalVariable(name: "s", arg: 1, scope: !4743, file: !4744, line: 137, type: !778)
!4748 = !DILocation(line: 137, column: 54, scope: !4743)
!4749 = !DILocalVariable(name: "object", arg: 2, scope: !4743, file: !4744, line: 137, type: !1894)
!4750 = !DILocation(line: 137, column: 69, scope: !4743)
!4751 = !DILocalVariable(name: "size", arg: 3, scope: !4743, file: !4744, line: 138, type: !396)
!4752 = !DILocation(line: 138, column: 12, scope: !4743)
!4753 = !DILocalVariable(name: "flags", arg: 4, scope: !4743, file: !4744, line: 138, type: !107)
!4754 = !DILocation(line: 138, column: 24, scope: !4743)
!4755 = !DILocation(line: 140, column: 17, scope: !4743)
!4756 = !DILocation(line: 140, column: 2, scope: !4743)
!4757 = distinct !DISubprogram(name: "acpi_thermal_rel_ioctl", scope: !3, file: !3, line: 300, type: !2705, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4758 = !DILocalVariable(name: "f", arg: 1, scope: !4757, file: !3, line: 300, type: !166)
!4759 = !DILocation(line: 300, column: 49, scope: !4757)
!4760 = !DILocalVariable(name: "cmd", arg: 2, scope: !4757, file: !3, line: 300, type: !7)
!4761 = !DILocation(line: 300, column: 65, scope: !4757)
!4762 = !DILocalVariable(name: "__arg", arg: 3, scope: !4757, file: !3, line: 301, type: !111)
!4763 = !DILocation(line: 301, column: 22, scope: !4757)
!4764 = !DILocalVariable(name: "ret", scope: !4757, file: !3, line: 303, type: !112)
!4765 = !DILocation(line: 303, column: 6, scope: !4757)
!4766 = !DILocalVariable(name: "length", scope: !4757, file: !3, line: 304, type: !111)
!4767 = !DILocation(line: 304, column: 16, scope: !4757)
!4768 = !DILocalVariable(name: "count", scope: !4757, file: !3, line: 305, type: !112)
!4769 = !DILocation(line: 305, column: 6, scope: !4757)
!4770 = !DILocalVariable(name: "arg", scope: !4757, file: !3, line: 306, type: !302)
!4771 = !DILocation(line: 306, column: 15, scope: !4757)
!4772 = !DILocation(line: 306, column: 36, scope: !4757)
!4773 = !DILocation(line: 306, column: 21, scope: !4757)
!4774 = !DILocalVariable(name: "trts", scope: !4757, file: !3, line: 307, type: !3743)
!4775 = !DILocation(line: 307, column: 14, scope: !4757)
!4776 = !DILocalVariable(name: "arts", scope: !4757, file: !3, line: 308, type: !4198)
!4777 = !DILocation(line: 308, column: 14, scope: !4757)
!4778 = !DILocation(line: 310, column: 10, scope: !4757)
!4779 = !DILocation(line: 310, column: 2, scope: !4757)
!4780 = !DILocation(line: 312, column: 24, scope: !4781)
!4781 = distinct !DILexicalBlock(scope: !4757, file: !3, line: 310, column: 15)
!4782 = !DILocation(line: 312, column: 9, scope: !4781)
!4783 = !DILocation(line: 312, column: 7, scope: !4781)
!4784 = !DILocation(line: 314, column: 9, scope: !4781)
!4785 = !DILocation(line: 314, column: 3, scope: !4781)
!4786 = !DILocation(line: 315, column: 8, scope: !4787)
!4787 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 315, column: 7)
!4788 = !DILocation(line: 315, column: 7, scope: !4781)
!4789 = !DILocation(line: 316, column: 11, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4787, file: !3, line: 316, column: 11)
!4791 = !DILocalVariable(name: "__ret_pu", scope: !4792, file: !3, line: 316, type: !112)
!4792 = distinct !DILexicalBlock(scope: !4790, file: !3, line: 316, column: 11)
!4793 = !DILocation(line: 316, column: 11, scope: !4792)
!4794 = !DILocalVariable(name: "__ptr_pu", scope: !4792, file: !3, line: 316, type: !109)
!4795 = !DILocalVariable(name: "__val_pu", scope: !4792, file: !3, line: 316, type: !111)
!4796 = !{i32 -2142140695}
!4797 = !DILocation(line: 316, column: 4, scope: !4787)
!4798 = !DILocation(line: 317, column: 10, scope: !4781)
!4799 = !DILocation(line: 317, column: 3, scope: !4781)
!4800 = !DILocation(line: 319, column: 24, scope: !4781)
!4801 = !DILocation(line: 319, column: 9, scope: !4781)
!4802 = !DILocation(line: 319, column: 7, scope: !4781)
!4803 = !DILocation(line: 321, column: 9, scope: !4781)
!4804 = !DILocation(line: 321, column: 3, scope: !4781)
!4805 = !DILocation(line: 322, column: 12, scope: !4781)
!4806 = !DILocation(line: 322, column: 18, scope: !4781)
!4807 = !DILocation(line: 322, column: 10, scope: !4781)
!4808 = !DILocation(line: 323, column: 8, scope: !4809)
!4809 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 323, column: 7)
!4810 = !DILocation(line: 323, column: 7, scope: !4781)
!4811 = !DILocation(line: 324, column: 11, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4809, file: !3, line: 324, column: 11)
!4813 = !DILocalVariable(name: "__ret_pu", scope: !4814, file: !3, line: 324, type: !112)
!4814 = distinct !DILexicalBlock(scope: !4812, file: !3, line: 324, column: 11)
!4815 = !DILocation(line: 324, column: 11, scope: !4814)
!4816 = !DILocalVariable(name: "__ptr_pu", scope: !4814, file: !3, line: 324, type: !109)
!4817 = !DILocalVariable(name: "__val_pu", scope: !4814, file: !3, line: 324, type: !111)
!4818 = !{i32 -2142139010}
!4819 = !DILocation(line: 324, column: 4, scope: !4809)
!4820 = !DILocation(line: 325, column: 10, scope: !4781)
!4821 = !DILocation(line: 325, column: 3, scope: !4781)
!4822 = !DILocation(line: 327, column: 19, scope: !4781)
!4823 = !DILocation(line: 327, column: 10, scope: !4781)
!4824 = !DILocation(line: 327, column: 3, scope: !4781)
!4825 = !DILocation(line: 329, column: 24, scope: !4781)
!4826 = !DILocation(line: 329, column: 9, scope: !4781)
!4827 = !DILocation(line: 329, column: 7, scope: !4781)
!4828 = !DILocation(line: 331, column: 9, scope: !4781)
!4829 = !DILocation(line: 331, column: 3, scope: !4781)
!4830 = !DILocation(line: 332, column: 8, scope: !4831)
!4831 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 332, column: 7)
!4832 = !DILocation(line: 332, column: 7, scope: !4781)
!4833 = !DILocation(line: 333, column: 11, scope: !4834)
!4834 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 333, column: 11)
!4835 = !DILocalVariable(name: "__ret_pu", scope: !4836, file: !3, line: 333, type: !112)
!4836 = distinct !DILexicalBlock(scope: !4834, file: !3, line: 333, column: 11)
!4837 = !DILocation(line: 333, column: 11, scope: !4836)
!4838 = !DILocalVariable(name: "__ptr_pu", scope: !4836, file: !3, line: 333, type: !109)
!4839 = !DILocalVariable(name: "__val_pu", scope: !4836, file: !3, line: 333, type: !111)
!4840 = !{i32 -2142136514}
!4841 = !DILocation(line: 333, column: 4, scope: !4831)
!4842 = !DILocation(line: 334, column: 10, scope: !4781)
!4843 = !DILocation(line: 334, column: 3, scope: !4781)
!4844 = !DILocation(line: 336, column: 24, scope: !4781)
!4845 = !DILocation(line: 336, column: 9, scope: !4781)
!4846 = !DILocation(line: 336, column: 7, scope: !4781)
!4847 = !DILocation(line: 338, column: 9, scope: !4781)
!4848 = !DILocation(line: 338, column: 3, scope: !4781)
!4849 = !DILocation(line: 339, column: 12, scope: !4781)
!4850 = !DILocation(line: 339, column: 18, scope: !4781)
!4851 = !DILocation(line: 339, column: 10, scope: !4781)
!4852 = !DILocation(line: 340, column: 8, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 340, column: 7)
!4854 = !DILocation(line: 340, column: 7, scope: !4781)
!4855 = !DILocation(line: 341, column: 11, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4853, file: !3, line: 341, column: 11)
!4857 = !DILocalVariable(name: "__ret_pu", scope: !4858, file: !3, line: 341, type: !112)
!4858 = distinct !DILexicalBlock(scope: !4856, file: !3, line: 341, column: 11)
!4859 = !DILocation(line: 341, column: 11, scope: !4858)
!4860 = !DILocalVariable(name: "__ptr_pu", scope: !4858, file: !3, line: 341, type: !109)
!4861 = !DILocalVariable(name: "__val_pu", scope: !4858, file: !3, line: 341, type: !111)
!4862 = !{i32 -2142134829}
!4863 = !DILocation(line: 341, column: 4, scope: !4853)
!4864 = !DILocation(line: 342, column: 10, scope: !4781)
!4865 = !DILocation(line: 342, column: 3, scope: !4781)
!4866 = !DILocation(line: 345, column: 19, scope: !4781)
!4867 = !DILocation(line: 345, column: 10, scope: !4781)
!4868 = !DILocation(line: 345, column: 3, scope: !4781)
!4869 = !DILocation(line: 348, column: 3, scope: !4781)
!4870 = !DILocation(line: 350, column: 1, scope: !4757)
!4871 = distinct !DISubprogram(name: "acpi_thermal_rel_open", scope: !3, file: !3, line: 30, type: !2715, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4872 = !DILocalVariable(name: "lock", arg: 1, scope: !4873, file: !4874, line: 392, type: !4877)
!4873 = distinct !DISubprogram(name: "spin_unlock", scope: !4874, file: !4874, line: 392, type: !4875, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4874 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!4875 = !DISubroutineType(types: !4876)
!4876 = !{null, !4877}
!4877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!4878 = !DILocation(line: 392, column: 53, scope: !4873, inlinedAt: !4879)
!4879 = distinct !DILocation(line: 43, column: 2, scope: !4871)
!4880 = !DILocation(line: 392, column: 53, scope: !4873, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 35, column: 3, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 34, column: 67)
!4883 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 33, column: 6)
!4884 = !DILocalVariable(name: "lock", arg: 1, scope: !4885, file: !4874, line: 352, type: !4877)
!4885 = distinct !DISubprogram(name: "spin_lock", scope: !4874, file: !4874, line: 352, type: !4875, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4886 = !DILocation(line: 352, column: 51, scope: !4885, inlinedAt: !4887)
!4887 = distinct !DILocation(line: 32, column: 2, scope: !4871)
!4888 = !DILocalVariable(name: "inode", arg: 1, scope: !4871, file: !3, line: 30, type: !243)
!4889 = !DILocation(line: 30, column: 48, scope: !4871)
!4890 = !DILocalVariable(name: "file", arg: 2, scope: !4871, file: !3, line: 30, type: !166)
!4891 = !DILocation(line: 30, column: 68, scope: !4871)
!4892 = !DILocation(line: 354, column: 2, scope: !4893, inlinedAt: !4887)
!4893 = distinct !DILexicalBlock(scope: !4885, file: !4874, line: 354, column: 2)
!4894 = !{i32 -2145472459}
!4895 = !DILocation(line: 354, column: 2, scope: !4896, inlinedAt: !4887)
!4896 = distinct !DILexicalBlock(scope: !4893, file: !4874, line: 354, column: 2)
!4897 = !DILocation(line: 33, column: 6, scope: !4883)
!4898 = !DILocation(line: 33, column: 36, scope: !4883)
!4899 = !DILocation(line: 34, column: 7, scope: !4883)
!4900 = !DILocation(line: 34, column: 37, scope: !4883)
!4901 = !DILocation(line: 34, column: 41, scope: !4883)
!4902 = !DILocation(line: 34, column: 47, scope: !4883)
!4903 = !DILocation(line: 34, column: 55, scope: !4883)
!4904 = !DILocation(line: 33, column: 6, scope: !4871)
!4905 = !DILocation(line: 394, column: 2, scope: !4906, inlinedAt: !4881)
!4906 = distinct !DILexicalBlock(scope: !4873, file: !4874, line: 394, column: 2)
!4907 = !{i32 -2145470098}
!4908 = !DILocation(line: 394, column: 2, scope: !4909, inlinedAt: !4881)
!4909 = distinct !DILexicalBlock(scope: !4906, file: !4874, line: 394, column: 2)
!4910 = !DILocation(line: 36, column: 3, scope: !4882)
!4911 = !DILocation(line: 39, column: 6, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4871, file: !3, line: 39, column: 6)
!4913 = !DILocation(line: 39, column: 12, scope: !4912)
!4914 = !DILocation(line: 39, column: 20, scope: !4912)
!4915 = !DILocation(line: 39, column: 6, scope: !4871)
!4916 = !DILocation(line: 40, column: 33, scope: !4912)
!4917 = !DILocation(line: 40, column: 3, scope: !4912)
!4918 = !DILocation(line: 41, column: 31, scope: !4871)
!4919 = !DILocation(line: 394, column: 2, scope: !4906, inlinedAt: !4879)
!4920 = !DILocation(line: 394, column: 2, scope: !4909, inlinedAt: !4879)
!4921 = !DILocation(line: 45, column: 26, scope: !4871)
!4922 = !DILocation(line: 45, column: 33, scope: !4871)
!4923 = !DILocation(line: 45, column: 9, scope: !4871)
!4924 = !DILocation(line: 45, column: 2, scope: !4871)
!4925 = !DILocation(line: 46, column: 1, scope: !4871)
!4926 = distinct !DISubprogram(name: "acpi_thermal_rel_release", scope: !3, file: !3, line: 48, type: !2715, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4927 = !DILocation(line: 392, column: 53, scope: !4873, inlinedAt: !4928)
!4928 = distinct !DILocation(line: 53, column: 2, scope: !4926)
!4929 = !DILocation(line: 352, column: 51, scope: !4885, inlinedAt: !4930)
!4930 = distinct !DILocation(line: 50, column: 2, scope: !4926)
!4931 = !DILocalVariable(name: "inode", arg: 1, scope: !4926, file: !3, line: 48, type: !243)
!4932 = !DILocation(line: 48, column: 51, scope: !4926)
!4933 = !DILocalVariable(name: "file", arg: 2, scope: !4926, file: !3, line: 48, type: !166)
!4934 = !DILocation(line: 48, column: 71, scope: !4926)
!4935 = !DILocation(line: 354, column: 2, scope: !4893, inlinedAt: !4930)
!4936 = !DILocation(line: 354, column: 2, scope: !4896, inlinedAt: !4930)
!4937 = !DILocation(line: 51, column: 31, scope: !4926)
!4938 = !DILocation(line: 52, column: 32, scope: !4926)
!4939 = !DILocation(line: 394, column: 2, scope: !4906, inlinedAt: !4928)
!4940 = !DILocation(line: 394, column: 2, scope: !4909, inlinedAt: !4928)
!4941 = !DILocation(line: 55, column: 2, scope: !4926)
!4942 = distinct !DISubprogram(name: "might_fault", scope: !4943, file: !4943, line: 315, type: !1643, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4943 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!4944 = !DILocation(line: 315, column: 40, scope: !4942)
!4945 = distinct !DISubprogram(name: "fill_trt", scope: !3, file: !3, line: 265, type: !4946, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{!112, !302}
!4948 = !DILocalVariable(name: "addr", arg: 1, scope: !4949, file: !4950, line: 138, type: !1894)
!4949 = distinct !DISubprogram(name: "check_copy_size", scope: !4950, file: !4950, line: 138, type: !4951, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4950 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!307, !1894, !396, !307}
!4953 = !DILocation(line: 138, column: 29, scope: !4949, inlinedAt: !4954)
!4954 = distinct !DILocation(line: 199, column: 6, scope: !4955, inlinedAt: !4960)
!4955 = distinct !DILexicalBlock(scope: !4957, file: !4956, line: 199, column: 6)
!4956 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/lizy2001/genbc/linux")
!4957 = distinct !DISubprogram(name: "copy_to_user", scope: !4956, file: !4956, line: 197, type: !4958, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!4958 = !DISubroutineType(types: !4959)
!4959 = !{!111, !109, !1894, !111}
!4960 = distinct !DILocation(line: 292, column: 6, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 292, column: 6)
!4962 = !DILocalVariable(name: "bytes", arg: 2, scope: !4949, file: !4950, line: 138, type: !396)
!4963 = !DILocation(line: 138, column: 42, scope: !4949, inlinedAt: !4954)
!4964 = !DILocalVariable(name: "is_source", arg: 3, scope: !4949, file: !4950, line: 138, type: !307)
!4965 = !DILocation(line: 138, column: 54, scope: !4949, inlinedAt: !4954)
!4966 = !DILocalVariable(name: "sz", scope: !4949, file: !4950, line: 140, type: !112)
!4967 = !DILocation(line: 140, column: 6, scope: !4949, inlinedAt: !4954)
!4968 = !DILocalVariable(name: "__ret_warn_on", scope: !4969, file: !4950, line: 150, type: !112)
!4969 = distinct !DILexicalBlock(scope: !4970, file: !4950, line: 150, column: 6)
!4970 = distinct !DILexicalBlock(scope: !4949, file: !4950, line: 150, column: 6)
!4971 = !DILocation(line: 150, column: 6, scope: !4969, inlinedAt: !4954)
!4972 = !DILocalVariable(name: "to", arg: 1, scope: !4957, file: !4956, line: 197, type: !109)
!4973 = !DILocation(line: 197, column: 27, scope: !4957, inlinedAt: !4960)
!4974 = !DILocalVariable(name: "from", arg: 2, scope: !4957, file: !4956, line: 197, type: !1894)
!4975 = !DILocation(line: 197, column: 43, scope: !4957, inlinedAt: !4960)
!4976 = !DILocalVariable(name: "n", arg: 3, scope: !4957, file: !4956, line: 197, type: !111)
!4977 = !DILocation(line: 197, column: 63, scope: !4957, inlinedAt: !4960)
!4978 = !DILocalVariable(name: "ubuf", arg: 1, scope: !4945, file: !3, line: 265, type: !302)
!4979 = !DILocation(line: 265, column: 34, scope: !4945)
!4980 = !DILocalVariable(name: "i", scope: !4945, file: !3, line: 267, type: !112)
!4981 = !DILocation(line: 267, column: 6, scope: !4945)
!4982 = !DILocalVariable(name: "ret", scope: !4945, file: !3, line: 268, type: !112)
!4983 = !DILocation(line: 268, column: 6, scope: !4945)
!4984 = !DILocalVariable(name: "count", scope: !4945, file: !3, line: 269, type: !112)
!4985 = !DILocation(line: 269, column: 6, scope: !4945)
!4986 = !DILocalVariable(name: "trt_len", scope: !4945, file: !3, line: 270, type: !112)
!4987 = !DILocation(line: 270, column: 6, scope: !4945)
!4988 = !DILocalVariable(name: "trts", scope: !4945, file: !3, line: 271, type: !3743)
!4989 = !DILocation(line: 271, column: 14, scope: !4945)
!4990 = !DILocalVariable(name: "trt_user", scope: !4945, file: !3, line: 272, type: !4991)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "trt_object", file: !3745, line: 65, size: 512, elements: !4993)
!4993 = !{!4994, !5003}
!4994 = !DIDerivedType(tag: DW_TAG_member, scope: !4992, file: !3745, line: 66, baseType: !4995, size: 512)
!4995 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4992, file: !3745, line: 66, size: 512, elements: !4996)
!4996 = !{!4997, !4998, !4999, !5000, !5001}
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "source_device", scope: !4995, file: !3745, line: 67, baseType: !1799, size: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "target_device", scope: !4995, file: !3745, line: 68, baseType: !1799, size: 64, offset: 64)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "influence", scope: !4995, file: !3745, line: 69, baseType: !235, size: 64, offset: 128)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "sample_period", scope: !4995, file: !3745, line: 70, baseType: !235, size: 64, offset: 192)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4995, file: !3745, line: 71, baseType: !5002, size: 256, offset: 256)
!5002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 256, elements: !918)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !4992, file: !3745, line: 73, baseType: !3546, size: 512)
!5004 = !DILocation(line: 272, column: 20, scope: !4945)
!5005 = !DILocation(line: 274, column: 23, scope: !4945)
!5006 = !DILocation(line: 274, column: 8, scope: !4945)
!5007 = !DILocation(line: 274, column: 6, scope: !4945)
!5008 = !DILocation(line: 275, column: 6, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 275, column: 6)
!5010 = !DILocation(line: 275, column: 6, scope: !4945)
!5011 = !DILocation(line: 276, column: 3, scope: !5009)
!5012 = !DILocation(line: 277, column: 12, scope: !4945)
!5013 = !DILocation(line: 277, column: 18, scope: !4945)
!5014 = !DILocation(line: 277, column: 10, scope: !4945)
!5015 = !DILocation(line: 278, column: 21, scope: !4945)
!5016 = !DILocation(line: 278, column: 13, scope: !4945)
!5017 = !DILocation(line: 278, column: 11, scope: !4945)
!5018 = !DILocation(line: 279, column: 7, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 279, column: 6)
!5020 = !DILocation(line: 279, column: 6, scope: !4945)
!5021 = !DILocation(line: 280, column: 7, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5019, file: !3, line: 279, column: 17)
!5023 = !DILocation(line: 281, column: 3, scope: !5022)
!5024 = !DILocation(line: 284, column: 9, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !4945, file: !3, line: 284, column: 2)
!5026 = !DILocation(line: 284, column: 7, scope: !5025)
!5027 = !DILocation(line: 284, column: 14, scope: !5028)
!5028 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 284, column: 2)
!5029 = !DILocation(line: 284, column: 18, scope: !5028)
!5030 = !DILocation(line: 284, column: 16, scope: !5028)
!5031 = !DILocation(line: 284, column: 2, scope: !5025)
!5032 = !DILocation(line: 286, column: 19, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5028, file: !3, line: 284, column: 30)
!5034 = !DILocation(line: 286, column: 24, scope: !5033)
!5035 = !DILocation(line: 286, column: 27, scope: !5033)
!5036 = !DILocation(line: 286, column: 35, scope: !5033)
!5037 = !DILocation(line: 286, column: 44, scope: !5033)
!5038 = !DILocation(line: 286, column: 47, scope: !5033)
!5039 = !DILocation(line: 286, column: 3, scope: !5033)
!5040 = !DILocation(line: 287, column: 19, scope: !5033)
!5041 = !DILocation(line: 287, column: 24, scope: !5033)
!5042 = !DILocation(line: 287, column: 27, scope: !5033)
!5043 = !DILocation(line: 287, column: 35, scope: !5033)
!5044 = !DILocation(line: 287, column: 44, scope: !5033)
!5045 = !DILocation(line: 287, column: 47, scope: !5033)
!5046 = !DILocation(line: 287, column: 3, scope: !5033)
!5047 = !DILocation(line: 288, column: 31, scope: !5033)
!5048 = !DILocation(line: 288, column: 36, scope: !5033)
!5049 = !DILocation(line: 288, column: 39, scope: !5033)
!5050 = !DILocation(line: 288, column: 3, scope: !5033)
!5051 = !DILocation(line: 288, column: 12, scope: !5033)
!5052 = !DILocation(line: 288, column: 15, scope: !5033)
!5053 = !DILocation(line: 288, column: 29, scope: !5033)
!5054 = !DILocation(line: 289, column: 27, scope: !5033)
!5055 = !DILocation(line: 289, column: 32, scope: !5033)
!5056 = !DILocation(line: 289, column: 35, scope: !5033)
!5057 = !DILocation(line: 289, column: 3, scope: !5033)
!5058 = !DILocation(line: 289, column: 12, scope: !5033)
!5059 = !DILocation(line: 289, column: 15, scope: !5033)
!5060 = !DILocation(line: 289, column: 25, scope: !5033)
!5061 = !DILocation(line: 290, column: 2, scope: !5033)
!5062 = !DILocation(line: 284, column: 26, scope: !5028)
!5063 = !DILocation(line: 284, column: 2, scope: !5028)
!5064 = distinct !{!5064, !5031, !5065}
!5065 = !DILocation(line: 290, column: 2, scope: !5025)
!5066 = !DILocation(line: 292, column: 19, scope: !4961)
!5067 = !DILocation(line: 292, column: 25, scope: !4961)
!5068 = !DILocation(line: 292, column: 35, scope: !4961)
!5069 = !DILocation(line: 199, column: 6, scope: !4955, inlinedAt: !4960)
!5070 = !DILocation(line: 141, column: 6, scope: !5071, inlinedAt: !4954)
!5071 = distinct !DILexicalBlock(scope: !4949, file: !4950, line: 141, column: 6)
!5072 = !DILocation(line: 0, scope: !5071, inlinedAt: !4954)
!5073 = !DILocation(line: 141, column: 6, scope: !4949, inlinedAt: !4954)
!5074 = !DILocation(line: 142, column: 29, scope: !5075, inlinedAt: !4954)
!5075 = distinct !DILexicalBlock(scope: !5076, file: !4950, line: 142, column: 7)
!5076 = distinct !DILexicalBlock(scope: !5071, file: !4950, line: 141, column: 39)
!5077 = !DILocation(line: 142, column: 8, scope: !5075, inlinedAt: !4954)
!5078 = !DILocation(line: 142, column: 7, scope: !5076, inlinedAt: !4954)
!5079 = !DILocation(line: 143, column: 18, scope: !5075, inlinedAt: !4954)
!5080 = !DILocation(line: 143, column: 22, scope: !5075, inlinedAt: !4954)
!5081 = !DILocation(line: 143, column: 4, scope: !5075, inlinedAt: !4954)
!5082 = !DILocation(line: 144, column: 12, scope: !5083, inlinedAt: !4954)
!5083 = distinct !DILexicalBlock(scope: !5075, file: !4950, line: 144, column: 12)
!5084 = !DILocation(line: 144, column: 12, scope: !5075, inlinedAt: !4954)
!5085 = !DILocation(line: 145, column: 4, scope: !5083, inlinedAt: !4954)
!5086 = !DILocation(line: 147, column: 4, scope: !5083, inlinedAt: !4954)
!5087 = !DILocation(line: 148, column: 3, scope: !5076, inlinedAt: !4954)
!5088 = !DILocation(line: 150, column: 6, scope: !5089, inlinedAt: !4954)
!5089 = distinct !DILexicalBlock(scope: !4969, file: !4950, line: 150, column: 6)
!5090 = !DILocation(line: 150, column: 6, scope: !5091, inlinedAt: !4954)
!5091 = distinct !DILexicalBlock(scope: !5092, file: !4950, line: 150, column: 6)
!5092 = distinct !DILexicalBlock(scope: !5089, file: !4950, line: 150, column: 6)
!5093 = !{i32 -2145550214, i32 -2145550185, i32 -2145550139, i32 -2145550081, i32 -2145550027, i32 -2145549973, i32 -2145549918, i32 -2145549887}
!5094 = !DILocation(line: 150, column: 6, scope: !5095, inlinedAt: !4954)
!5095 = distinct !DILexicalBlock(scope: !5092, file: !4950, line: 150, column: 6)
!5096 = !{i32 -2145549467, i32 -2145549460, i32 -2145549408, i32 -2145549377, i32 -2145549347}
!5097 = !DILocation(line: 150, column: 6, scope: !5092, inlinedAt: !4954)
!5098 = !DILocation(line: 150, column: 6, scope: !4970, inlinedAt: !4954)
!5099 = !DILocation(line: 150, column: 6, scope: !4949, inlinedAt: !4954)
!5100 = !DILocation(line: 151, column: 3, scope: !4970, inlinedAt: !4954)
!5101 = !DILocation(line: 152, column: 20, scope: !4949, inlinedAt: !4954)
!5102 = !DILocation(line: 152, column: 26, scope: !4949, inlinedAt: !4954)
!5103 = !DILocation(line: 152, column: 33, scope: !4949, inlinedAt: !4954)
!5104 = !DILocation(line: 152, column: 2, scope: !4949, inlinedAt: !4954)
!5105 = !DILocation(line: 153, column: 2, scope: !4949, inlinedAt: !4954)
!5106 = !DILocation(line: 154, column: 1, scope: !4949, inlinedAt: !4954)
!5107 = !DILocation(line: 199, column: 6, scope: !4957, inlinedAt: !4960)
!5108 = !DILocation(line: 200, column: 21, scope: !4955, inlinedAt: !4960)
!5109 = !DILocation(line: 200, column: 25, scope: !4955, inlinedAt: !4960)
!5110 = !DILocation(line: 200, column: 31, scope: !4955, inlinedAt: !4960)
!5111 = !DILocation(line: 200, column: 7, scope: !4955, inlinedAt: !4960)
!5112 = !DILocation(line: 200, column: 5, scope: !4955, inlinedAt: !4960)
!5113 = !DILocation(line: 200, column: 3, scope: !4955, inlinedAt: !4960)
!5114 = !DILocation(line: 201, column: 9, scope: !4957, inlinedAt: !4960)
!5115 = !DILocation(line: 292, column: 6, scope: !4961)
!5116 = !DILocation(line: 292, column: 6, scope: !4945)
!5117 = !DILocation(line: 293, column: 7, scope: !4961)
!5118 = !DILocation(line: 293, column: 3, scope: !4961)
!5119 = !DILocation(line: 294, column: 8, scope: !4945)
!5120 = !DILocation(line: 294, column: 2, scope: !4945)
!5121 = !DILabel(scope: !4945, name: "free_trt", file: !3, line: 295)
!5122 = !DILocation(line: 295, column: 1, scope: !4945)
!5123 = !DILocation(line: 296, column: 8, scope: !4945)
!5124 = !DILocation(line: 296, column: 2, scope: !4945)
!5125 = !DILocation(line: 297, column: 9, scope: !4945)
!5126 = !DILocation(line: 297, column: 2, scope: !4945)
!5127 = distinct !DISubprogram(name: "fill_art", scope: !3, file: !3, line: 229, type: !4946, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5128 = !DILocation(line: 138, column: 29, scope: !4949, inlinedAt: !5129)
!5129 = distinct !DILocation(line: 199, column: 6, scope: !4955, inlinedAt: !5130)
!5130 = distinct !DILocation(line: 257, column: 6, scope: !5131)
!5131 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 257, column: 6)
!5132 = !DILocation(line: 138, column: 42, scope: !4949, inlinedAt: !5129)
!5133 = !DILocation(line: 138, column: 54, scope: !4949, inlinedAt: !5129)
!5134 = !DILocation(line: 140, column: 6, scope: !4949, inlinedAt: !5129)
!5135 = !DILocation(line: 150, column: 6, scope: !4969, inlinedAt: !5129)
!5136 = !DILocation(line: 197, column: 27, scope: !4957, inlinedAt: !5130)
!5137 = !DILocation(line: 197, column: 43, scope: !4957, inlinedAt: !5130)
!5138 = !DILocation(line: 197, column: 63, scope: !4957, inlinedAt: !5130)
!5139 = !DILocalVariable(name: "ubuf", arg: 1, scope: !5127, file: !3, line: 229, type: !302)
!5140 = !DILocation(line: 229, column: 34, scope: !5127)
!5141 = !DILocalVariable(name: "i", scope: !5127, file: !3, line: 231, type: !112)
!5142 = !DILocation(line: 231, column: 6, scope: !5127)
!5143 = !DILocalVariable(name: "ret", scope: !5127, file: !3, line: 232, type: !112)
!5144 = !DILocation(line: 232, column: 6, scope: !5127)
!5145 = !DILocalVariable(name: "count", scope: !5127, file: !3, line: 233, type: !112)
!5146 = !DILocation(line: 233, column: 6, scope: !5127)
!5147 = !DILocalVariable(name: "art_len", scope: !5127, file: !3, line: 234, type: !112)
!5148 = !DILocation(line: 234, column: 6, scope: !5127)
!5149 = !DILocalVariable(name: "arts", scope: !5127, file: !3, line: 235, type: !4198)
!5150 = !DILocation(line: 235, column: 14, scope: !5127)
!5151 = !DILocalVariable(name: "art_user", scope: !5127, file: !3, line: 236, type: !5152)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "art_object", file: !3745, line: 46, size: 832, elements: !5154)
!5154 = !{!5155, !5171}
!5155 = !DIDerivedType(tag: DW_TAG_member, scope: !5153, file: !3745, line: 47, baseType: !5156, size: 832)
!5156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5153, file: !3745, line: 47, size: 832, elements: !5157)
!5157 = !{!5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "source_device", scope: !5156, file: !3745, line: 48, baseType: !1799, size: 64)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "target_device", scope: !5156, file: !3745, line: 49, baseType: !1799, size: 64, offset: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !5156, file: !3745, line: 50, baseType: !235, size: 64, offset: 128)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "ac0_max_level", scope: !5156, file: !3745, line: 51, baseType: !235, size: 64, offset: 192)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "ac1_max_level", scope: !5156, file: !3745, line: 52, baseType: !235, size: 64, offset: 256)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "ac2_max_level", scope: !5156, file: !3745, line: 53, baseType: !235, size: 64, offset: 320)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "ac3_max_level", scope: !5156, file: !3745, line: 54, baseType: !235, size: 64, offset: 384)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "ac4_max_level", scope: !5156, file: !3745, line: 55, baseType: !235, size: 64, offset: 448)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "ac5_max_level", scope: !5156, file: !3745, line: 56, baseType: !235, size: 64, offset: 512)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "ac6_max_level", scope: !5156, file: !3745, line: 57, baseType: !235, size: 64, offset: 576)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "ac7_max_level", scope: !5156, file: !3745, line: 58, baseType: !235, size: 64, offset: 640)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "ac8_max_level", scope: !5156, file: !3745, line: 59, baseType: !235, size: 64, offset: 704)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "ac9_max_level", scope: !5156, file: !3745, line: 60, baseType: !235, size: 64, offset: 768)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !5153, file: !3745, line: 62, baseType: !5172, size: 832)
!5172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 832, elements: !5173)
!5173 = !{!5174}
!5174 = !DISubrange(count: 13)
!5175 = !DILocation(line: 236, column: 20, scope: !5127)
!5176 = !DILocation(line: 238, column: 23, scope: !5127)
!5177 = !DILocation(line: 238, column: 8, scope: !5127)
!5178 = !DILocation(line: 238, column: 6, scope: !5127)
!5179 = !DILocation(line: 239, column: 6, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 239, column: 6)
!5181 = !DILocation(line: 239, column: 6, scope: !5127)
!5182 = !DILocation(line: 240, column: 3, scope: !5180)
!5183 = !DILocation(line: 241, column: 12, scope: !5127)
!5184 = !DILocation(line: 241, column: 18, scope: !5127)
!5185 = !DILocation(line: 241, column: 10, scope: !5127)
!5186 = !DILocation(line: 242, column: 21, scope: !5127)
!5187 = !DILocation(line: 242, column: 13, scope: !5127)
!5188 = !DILocation(line: 242, column: 11, scope: !5127)
!5189 = !DILocation(line: 243, column: 7, scope: !5190)
!5190 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 243, column: 6)
!5191 = !DILocation(line: 243, column: 6, scope: !5127)
!5192 = !DILocation(line: 244, column: 7, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5190, file: !3, line: 243, column: 17)
!5194 = !DILocation(line: 245, column: 3, scope: !5193)
!5195 = !DILocation(line: 248, column: 9, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 248, column: 2)
!5197 = !DILocation(line: 248, column: 7, scope: !5196)
!5198 = !DILocation(line: 248, column: 14, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 248, column: 2)
!5200 = !DILocation(line: 248, column: 18, scope: !5199)
!5201 = !DILocation(line: 248, column: 16, scope: !5199)
!5202 = !DILocation(line: 248, column: 2, scope: !5196)
!5203 = !DILocation(line: 250, column: 19, scope: !5204)
!5204 = distinct !DILexicalBlock(scope: !5199, file: !3, line: 248, column: 30)
!5205 = !DILocation(line: 250, column: 24, scope: !5204)
!5206 = !DILocation(line: 250, column: 27, scope: !5204)
!5207 = !DILocation(line: 250, column: 35, scope: !5204)
!5208 = !DILocation(line: 250, column: 44, scope: !5204)
!5209 = !DILocation(line: 250, column: 47, scope: !5204)
!5210 = !DILocation(line: 250, column: 3, scope: !5204)
!5211 = !DILocation(line: 251, column: 19, scope: !5204)
!5212 = !DILocation(line: 251, column: 24, scope: !5204)
!5213 = !DILocation(line: 251, column: 27, scope: !5204)
!5214 = !DILocation(line: 251, column: 35, scope: !5204)
!5215 = !DILocation(line: 251, column: 44, scope: !5204)
!5216 = !DILocation(line: 251, column: 47, scope: !5204)
!5217 = !DILocation(line: 251, column: 3, scope: !5204)
!5218 = !DILocation(line: 253, column: 11, scope: !5204)
!5219 = !DILocation(line: 253, column: 20, scope: !5204)
!5220 = !DILocation(line: 253, column: 23, scope: !5204)
!5221 = !DILocation(line: 253, column: 3, scope: !5204)
!5222 = !DILocation(line: 253, column: 32, scope: !5204)
!5223 = !DILocation(line: 253, column: 37, scope: !5204)
!5224 = !DILocation(line: 253, column: 40, scope: !5204)
!5225 = !DILocation(line: 255, column: 2, scope: !5204)
!5226 = !DILocation(line: 248, column: 26, scope: !5199)
!5227 = !DILocation(line: 248, column: 2, scope: !5199)
!5228 = distinct !{!5228, !5202, !5229}
!5229 = !DILocation(line: 255, column: 2, scope: !5196)
!5230 = !DILocation(line: 257, column: 19, scope: !5131)
!5231 = !DILocation(line: 257, column: 25, scope: !5131)
!5232 = !DILocation(line: 257, column: 35, scope: !5131)
!5233 = !DILocation(line: 199, column: 6, scope: !4955, inlinedAt: !5130)
!5234 = !DILocation(line: 141, column: 6, scope: !5071, inlinedAt: !5129)
!5235 = !DILocation(line: 0, scope: !5071, inlinedAt: !5129)
!5236 = !DILocation(line: 141, column: 6, scope: !4949, inlinedAt: !5129)
!5237 = !DILocation(line: 142, column: 29, scope: !5075, inlinedAt: !5129)
!5238 = !DILocation(line: 142, column: 8, scope: !5075, inlinedAt: !5129)
!5239 = !DILocation(line: 142, column: 7, scope: !5076, inlinedAt: !5129)
!5240 = !DILocation(line: 143, column: 18, scope: !5075, inlinedAt: !5129)
!5241 = !DILocation(line: 143, column: 22, scope: !5075, inlinedAt: !5129)
!5242 = !DILocation(line: 143, column: 4, scope: !5075, inlinedAt: !5129)
!5243 = !DILocation(line: 144, column: 12, scope: !5083, inlinedAt: !5129)
!5244 = !DILocation(line: 144, column: 12, scope: !5075, inlinedAt: !5129)
!5245 = !DILocation(line: 145, column: 4, scope: !5083, inlinedAt: !5129)
!5246 = !DILocation(line: 147, column: 4, scope: !5083, inlinedAt: !5129)
!5247 = !DILocation(line: 148, column: 3, scope: !5076, inlinedAt: !5129)
!5248 = !DILocation(line: 150, column: 6, scope: !5089, inlinedAt: !5129)
!5249 = !DILocation(line: 150, column: 6, scope: !5091, inlinedAt: !5129)
!5250 = !DILocation(line: 150, column: 6, scope: !5095, inlinedAt: !5129)
!5251 = !DILocation(line: 150, column: 6, scope: !5092, inlinedAt: !5129)
!5252 = !DILocation(line: 150, column: 6, scope: !4970, inlinedAt: !5129)
!5253 = !DILocation(line: 150, column: 6, scope: !4949, inlinedAt: !5129)
!5254 = !DILocation(line: 151, column: 3, scope: !4970, inlinedAt: !5129)
!5255 = !DILocation(line: 152, column: 20, scope: !4949, inlinedAt: !5129)
!5256 = !DILocation(line: 152, column: 26, scope: !4949, inlinedAt: !5129)
!5257 = !DILocation(line: 152, column: 33, scope: !4949, inlinedAt: !5129)
!5258 = !DILocation(line: 152, column: 2, scope: !4949, inlinedAt: !5129)
!5259 = !DILocation(line: 153, column: 2, scope: !4949, inlinedAt: !5129)
!5260 = !DILocation(line: 154, column: 1, scope: !4949, inlinedAt: !5129)
!5261 = !DILocation(line: 199, column: 6, scope: !4957, inlinedAt: !5130)
!5262 = !DILocation(line: 200, column: 21, scope: !4955, inlinedAt: !5130)
!5263 = !DILocation(line: 200, column: 25, scope: !4955, inlinedAt: !5130)
!5264 = !DILocation(line: 200, column: 31, scope: !4955, inlinedAt: !5130)
!5265 = !DILocation(line: 200, column: 7, scope: !4955, inlinedAt: !5130)
!5266 = !DILocation(line: 200, column: 5, scope: !4955, inlinedAt: !5130)
!5267 = !DILocation(line: 200, column: 3, scope: !4955, inlinedAt: !5130)
!5268 = !DILocation(line: 201, column: 9, scope: !4957, inlinedAt: !5130)
!5269 = !DILocation(line: 257, column: 6, scope: !5131)
!5270 = !DILocation(line: 257, column: 6, scope: !5127)
!5271 = !DILocation(line: 258, column: 7, scope: !5131)
!5272 = !DILocation(line: 258, column: 3, scope: !5131)
!5273 = !DILocation(line: 259, column: 8, scope: !5127)
!5274 = !DILocation(line: 259, column: 2, scope: !5127)
!5275 = !DILabel(scope: !5127, name: "free_art", file: !3, line: 260)
!5276 = !DILocation(line: 260, column: 1, scope: !5127)
!5277 = !DILocation(line: 261, column: 8, scope: !5127)
!5278 = !DILocation(line: 261, column: 2, scope: !5127)
!5279 = !DILocation(line: 262, column: 9, scope: !5127)
!5280 = !DILocation(line: 262, column: 2, scope: !5127)
!5281 = distinct !DISubprogram(name: "kzalloc", scope: !95, file: !95, line: 662, type: !4389, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5282 = !DILocation(line: 445, column: 72, scope: !4381, inlinedAt: !5283)
!5283 = distinct !DILocation(line: 552, column: 10, scope: !4386, inlinedAt: !5284)
!5284 = distinct !DILocation(line: 664, column: 9, scope: !5281)
!5285 = !DILocation(line: 446, column: 9, scope: !4381, inlinedAt: !5283)
!5286 = !DILocation(line: 446, column: 23, scope: !4381, inlinedAt: !5283)
!5287 = !DILocation(line: 448, column: 8, scope: !4381, inlinedAt: !5283)
!5288 = !DILocation(line: 318, column: 67, scope: !4400, inlinedAt: !5289)
!5289 = distinct !DILocation(line: 553, column: 20, scope: !4386, inlinedAt: !5284)
!5290 = !DILocation(line: 346, column: 58, scope: !4406, inlinedAt: !5291)
!5291 = distinct !DILocation(line: 547, column: 11, scope: !4386, inlinedAt: !5284)
!5292 = !DILocation(line: 472, column: 28, scope: !4412, inlinedAt: !5293)
!5293 = distinct !DILocation(line: 481, column: 9, scope: !4417, inlinedAt: !5294)
!5294 = distinct !DILocation(line: 545, column: 11, scope: !4419, inlinedAt: !5284)
!5295 = !DILocation(line: 472, column: 40, scope: !4412, inlinedAt: !5293)
!5296 = !DILocation(line: 472, column: 60, scope: !4412, inlinedAt: !5293)
!5297 = !DILocation(line: 478, column: 51, scope: !4417, inlinedAt: !5294)
!5298 = !DILocation(line: 478, column: 63, scope: !4417, inlinedAt: !5294)
!5299 = !DILocation(line: 480, column: 15, scope: !4417, inlinedAt: !5294)
!5300 = !DILocation(line: 538, column: 45, scope: !4388, inlinedAt: !5284)
!5301 = !DILocation(line: 538, column: 57, scope: !4388, inlinedAt: !5284)
!5302 = !DILocation(line: 542, column: 16, scope: !4386, inlinedAt: !5284)
!5303 = !DILocalVariable(name: "size", arg: 1, scope: !5281, file: !95, line: 662, type: !396)
!5304 = !DILocation(line: 662, column: 36, scope: !5281)
!5305 = !DILocalVariable(name: "flags", arg: 2, scope: !5281, file: !95, line: 662, type: !107)
!5306 = !DILocation(line: 662, column: 48, scope: !5281)
!5307 = !DILocation(line: 664, column: 17, scope: !5281)
!5308 = !DILocation(line: 664, column: 23, scope: !5281)
!5309 = !DILocation(line: 664, column: 29, scope: !5281)
!5310 = !DILocation(line: 540, column: 27, scope: !4387, inlinedAt: !5284)
!5311 = !DILocation(line: 540, column: 6, scope: !4387, inlinedAt: !5284)
!5312 = !DILocation(line: 540, column: 6, scope: !4388, inlinedAt: !5284)
!5313 = !DILocation(line: 544, column: 7, scope: !4419, inlinedAt: !5284)
!5314 = !DILocation(line: 544, column: 12, scope: !4419, inlinedAt: !5284)
!5315 = !DILocation(line: 544, column: 7, scope: !4386, inlinedAt: !5284)
!5316 = !DILocation(line: 545, column: 25, scope: !4419, inlinedAt: !5284)
!5317 = !DILocation(line: 545, column: 31, scope: !4419, inlinedAt: !5284)
!5318 = !DILocation(line: 480, column: 33, scope: !4417, inlinedAt: !5294)
!5319 = !DILocation(line: 480, column: 23, scope: !4417, inlinedAt: !5294)
!5320 = !DILocation(line: 481, column: 29, scope: !4417, inlinedAt: !5294)
!5321 = !DILocation(line: 481, column: 35, scope: !4417, inlinedAt: !5294)
!5322 = !DILocation(line: 481, column: 42, scope: !4417, inlinedAt: !5294)
!5323 = !DILocation(line: 474, column: 23, scope: !4412, inlinedAt: !5293)
!5324 = !DILocation(line: 474, column: 29, scope: !4412, inlinedAt: !5293)
!5325 = !DILocation(line: 474, column: 36, scope: !4412, inlinedAt: !5293)
!5326 = !DILocation(line: 474, column: 9, scope: !4412, inlinedAt: !5293)
!5327 = !DILocation(line: 545, column: 4, scope: !4419, inlinedAt: !5284)
!5328 = !DILocation(line: 547, column: 25, scope: !4386, inlinedAt: !5284)
!5329 = !DILocation(line: 348, column: 7, scope: !4482, inlinedAt: !5291)
!5330 = !DILocation(line: 348, column: 6, scope: !4406, inlinedAt: !5291)
!5331 = !DILocation(line: 349, column: 3, scope: !4482, inlinedAt: !5291)
!5332 = !DILocation(line: 351, column: 6, scope: !4486, inlinedAt: !5291)
!5333 = !DILocation(line: 351, column: 11, scope: !4486, inlinedAt: !5291)
!5334 = !DILocation(line: 351, column: 6, scope: !4406, inlinedAt: !5291)
!5335 = !DILocation(line: 352, column: 3, scope: !4486, inlinedAt: !5291)
!5336 = !DILocation(line: 354, column: 32, scope: !4491, inlinedAt: !5291)
!5337 = !DILocation(line: 354, column: 37, scope: !4491, inlinedAt: !5291)
!5338 = !DILocation(line: 354, column: 42, scope: !4491, inlinedAt: !5291)
!5339 = !DILocation(line: 354, column: 45, scope: !4491, inlinedAt: !5291)
!5340 = !DILocation(line: 354, column: 50, scope: !4491, inlinedAt: !5291)
!5341 = !DILocation(line: 354, column: 6, scope: !4406, inlinedAt: !5291)
!5342 = !DILocation(line: 355, column: 3, scope: !4491, inlinedAt: !5291)
!5343 = !DILocation(line: 356, column: 32, scope: !4499, inlinedAt: !5291)
!5344 = !DILocation(line: 356, column: 37, scope: !4499, inlinedAt: !5291)
!5345 = !DILocation(line: 356, column: 43, scope: !4499, inlinedAt: !5291)
!5346 = !DILocation(line: 356, column: 46, scope: !4499, inlinedAt: !5291)
!5347 = !DILocation(line: 356, column: 51, scope: !4499, inlinedAt: !5291)
!5348 = !DILocation(line: 356, column: 6, scope: !4406, inlinedAt: !5291)
!5349 = !DILocation(line: 357, column: 3, scope: !4499, inlinedAt: !5291)
!5350 = !DILocation(line: 358, column: 6, scope: !4507, inlinedAt: !5291)
!5351 = !DILocation(line: 358, column: 11, scope: !4507, inlinedAt: !5291)
!5352 = !DILocation(line: 358, column: 6, scope: !4406, inlinedAt: !5291)
!5353 = !DILocation(line: 358, column: 26, scope: !4507, inlinedAt: !5291)
!5354 = !DILocation(line: 359, column: 6, scope: !4512, inlinedAt: !5291)
!5355 = !DILocation(line: 359, column: 11, scope: !4512, inlinedAt: !5291)
!5356 = !DILocation(line: 359, column: 6, scope: !4406, inlinedAt: !5291)
!5357 = !DILocation(line: 359, column: 26, scope: !4512, inlinedAt: !5291)
!5358 = !DILocation(line: 360, column: 6, scope: !4517, inlinedAt: !5291)
!5359 = !DILocation(line: 360, column: 11, scope: !4517, inlinedAt: !5291)
!5360 = !DILocation(line: 360, column: 6, scope: !4406, inlinedAt: !5291)
!5361 = !DILocation(line: 360, column: 26, scope: !4517, inlinedAt: !5291)
!5362 = !DILocation(line: 361, column: 6, scope: !4522, inlinedAt: !5291)
!5363 = !DILocation(line: 361, column: 11, scope: !4522, inlinedAt: !5291)
!5364 = !DILocation(line: 361, column: 6, scope: !4406, inlinedAt: !5291)
!5365 = !DILocation(line: 361, column: 26, scope: !4522, inlinedAt: !5291)
!5366 = !DILocation(line: 362, column: 6, scope: !4527, inlinedAt: !5291)
!5367 = !DILocation(line: 362, column: 11, scope: !4527, inlinedAt: !5291)
!5368 = !DILocation(line: 362, column: 6, scope: !4406, inlinedAt: !5291)
!5369 = !DILocation(line: 362, column: 26, scope: !4527, inlinedAt: !5291)
!5370 = !DILocation(line: 363, column: 6, scope: !4532, inlinedAt: !5291)
!5371 = !DILocation(line: 363, column: 11, scope: !4532, inlinedAt: !5291)
!5372 = !DILocation(line: 363, column: 6, scope: !4406, inlinedAt: !5291)
!5373 = !DILocation(line: 363, column: 26, scope: !4532, inlinedAt: !5291)
!5374 = !DILocation(line: 364, column: 6, scope: !4537, inlinedAt: !5291)
!5375 = !DILocation(line: 364, column: 11, scope: !4537, inlinedAt: !5291)
!5376 = !DILocation(line: 364, column: 6, scope: !4406, inlinedAt: !5291)
!5377 = !DILocation(line: 364, column: 26, scope: !4537, inlinedAt: !5291)
!5378 = !DILocation(line: 365, column: 6, scope: !4542, inlinedAt: !5291)
!5379 = !DILocation(line: 365, column: 11, scope: !4542, inlinedAt: !5291)
!5380 = !DILocation(line: 365, column: 6, scope: !4406, inlinedAt: !5291)
!5381 = !DILocation(line: 365, column: 26, scope: !4542, inlinedAt: !5291)
!5382 = !DILocation(line: 366, column: 6, scope: !4547, inlinedAt: !5291)
!5383 = !DILocation(line: 366, column: 11, scope: !4547, inlinedAt: !5291)
!5384 = !DILocation(line: 366, column: 6, scope: !4406, inlinedAt: !5291)
!5385 = !DILocation(line: 366, column: 26, scope: !4547, inlinedAt: !5291)
!5386 = !DILocation(line: 367, column: 6, scope: !4552, inlinedAt: !5291)
!5387 = !DILocation(line: 367, column: 11, scope: !4552, inlinedAt: !5291)
!5388 = !DILocation(line: 367, column: 6, scope: !4406, inlinedAt: !5291)
!5389 = !DILocation(line: 367, column: 26, scope: !4552, inlinedAt: !5291)
!5390 = !DILocation(line: 368, column: 6, scope: !4557, inlinedAt: !5291)
!5391 = !DILocation(line: 368, column: 11, scope: !4557, inlinedAt: !5291)
!5392 = !DILocation(line: 368, column: 6, scope: !4406, inlinedAt: !5291)
!5393 = !DILocation(line: 368, column: 26, scope: !4557, inlinedAt: !5291)
!5394 = !DILocation(line: 369, column: 6, scope: !4562, inlinedAt: !5291)
!5395 = !DILocation(line: 369, column: 11, scope: !4562, inlinedAt: !5291)
!5396 = !DILocation(line: 369, column: 6, scope: !4406, inlinedAt: !5291)
!5397 = !DILocation(line: 369, column: 26, scope: !4562, inlinedAt: !5291)
!5398 = !DILocation(line: 370, column: 6, scope: !4567, inlinedAt: !5291)
!5399 = !DILocation(line: 370, column: 11, scope: !4567, inlinedAt: !5291)
!5400 = !DILocation(line: 370, column: 6, scope: !4406, inlinedAt: !5291)
!5401 = !DILocation(line: 370, column: 26, scope: !4567, inlinedAt: !5291)
!5402 = !DILocation(line: 371, column: 6, scope: !4572, inlinedAt: !5291)
!5403 = !DILocation(line: 371, column: 11, scope: !4572, inlinedAt: !5291)
!5404 = !DILocation(line: 371, column: 6, scope: !4406, inlinedAt: !5291)
!5405 = !DILocation(line: 371, column: 26, scope: !4572, inlinedAt: !5291)
!5406 = !DILocation(line: 372, column: 6, scope: !4577, inlinedAt: !5291)
!5407 = !DILocation(line: 372, column: 11, scope: !4577, inlinedAt: !5291)
!5408 = !DILocation(line: 372, column: 6, scope: !4406, inlinedAt: !5291)
!5409 = !DILocation(line: 372, column: 26, scope: !4577, inlinedAt: !5291)
!5410 = !DILocation(line: 373, column: 6, scope: !4582, inlinedAt: !5291)
!5411 = !DILocation(line: 373, column: 11, scope: !4582, inlinedAt: !5291)
!5412 = !DILocation(line: 373, column: 6, scope: !4406, inlinedAt: !5291)
!5413 = !DILocation(line: 373, column: 26, scope: !4582, inlinedAt: !5291)
!5414 = !DILocation(line: 374, column: 6, scope: !4587, inlinedAt: !5291)
!5415 = !DILocation(line: 374, column: 11, scope: !4587, inlinedAt: !5291)
!5416 = !DILocation(line: 374, column: 6, scope: !4406, inlinedAt: !5291)
!5417 = !DILocation(line: 374, column: 26, scope: !4587, inlinedAt: !5291)
!5418 = !DILocation(line: 375, column: 6, scope: !4592, inlinedAt: !5291)
!5419 = !DILocation(line: 375, column: 11, scope: !4592, inlinedAt: !5291)
!5420 = !DILocation(line: 375, column: 6, scope: !4406, inlinedAt: !5291)
!5421 = !DILocation(line: 375, column: 27, scope: !4592, inlinedAt: !5291)
!5422 = !DILocation(line: 376, column: 6, scope: !4597, inlinedAt: !5291)
!5423 = !DILocation(line: 376, column: 11, scope: !4597, inlinedAt: !5291)
!5424 = !DILocation(line: 376, column: 6, scope: !4406, inlinedAt: !5291)
!5425 = !DILocation(line: 376, column: 32, scope: !4597, inlinedAt: !5291)
!5426 = !DILocation(line: 377, column: 6, scope: !4602, inlinedAt: !5291)
!5427 = !DILocation(line: 377, column: 11, scope: !4602, inlinedAt: !5291)
!5428 = !DILocation(line: 377, column: 6, scope: !4406, inlinedAt: !5291)
!5429 = !DILocation(line: 377, column: 32, scope: !4602, inlinedAt: !5291)
!5430 = !DILocation(line: 378, column: 6, scope: !4607, inlinedAt: !5291)
!5431 = !DILocation(line: 378, column: 11, scope: !4607, inlinedAt: !5291)
!5432 = !DILocation(line: 378, column: 6, scope: !4406, inlinedAt: !5291)
!5433 = !DILocation(line: 378, column: 32, scope: !4607, inlinedAt: !5291)
!5434 = !DILocation(line: 379, column: 6, scope: !4612, inlinedAt: !5291)
!5435 = !DILocation(line: 379, column: 11, scope: !4612, inlinedAt: !5291)
!5436 = !DILocation(line: 379, column: 6, scope: !4406, inlinedAt: !5291)
!5437 = !DILocation(line: 379, column: 33, scope: !4612, inlinedAt: !5291)
!5438 = !DILocation(line: 380, column: 6, scope: !4617, inlinedAt: !5291)
!5439 = !DILocation(line: 380, column: 11, scope: !4617, inlinedAt: !5291)
!5440 = !DILocation(line: 380, column: 6, scope: !4406, inlinedAt: !5291)
!5441 = !DILocation(line: 380, column: 33, scope: !4617, inlinedAt: !5291)
!5442 = !DILocation(line: 381, column: 6, scope: !4622, inlinedAt: !5291)
!5443 = !DILocation(line: 381, column: 11, scope: !4622, inlinedAt: !5291)
!5444 = !DILocation(line: 381, column: 6, scope: !4406, inlinedAt: !5291)
!5445 = !DILocation(line: 381, column: 33, scope: !4622, inlinedAt: !5291)
!5446 = !DILocation(line: 382, column: 2, scope: !4627, inlinedAt: !5291)
!5447 = !DILocation(line: 382, column: 2, scope: !4631, inlinedAt: !5291)
!5448 = !DILocation(line: 382, column: 2, scope: !4632, inlinedAt: !5291)
!5449 = !DILocation(line: 386, column: 1, scope: !4406, inlinedAt: !5291)
!5450 = !DILocation(line: 547, column: 9, scope: !4386, inlinedAt: !5284)
!5451 = !DILocation(line: 549, column: 8, scope: !4638, inlinedAt: !5284)
!5452 = !DILocation(line: 549, column: 7, scope: !4386, inlinedAt: !5284)
!5453 = !DILocation(line: 550, column: 4, scope: !4638, inlinedAt: !5284)
!5454 = !DILocation(line: 553, column: 33, scope: !4386, inlinedAt: !5284)
!5455 = !DILocation(line: 325, column: 6, scope: !4643, inlinedAt: !5289)
!5456 = !DILocation(line: 325, column: 6, scope: !4400, inlinedAt: !5289)
!5457 = !DILocation(line: 326, column: 3, scope: !4643, inlinedAt: !5289)
!5458 = !DILocation(line: 332, column: 9, scope: !4400, inlinedAt: !5289)
!5459 = !DILocation(line: 332, column: 15, scope: !4400, inlinedAt: !5289)
!5460 = !DILocation(line: 332, column: 2, scope: !4400, inlinedAt: !5289)
!5461 = !DILocation(line: 336, column: 1, scope: !4400, inlinedAt: !5289)
!5462 = !DILocation(line: 553, column: 5, scope: !4386, inlinedAt: !5284)
!5463 = !DILocation(line: 553, column: 41, scope: !4386, inlinedAt: !5284)
!5464 = !DILocation(line: 554, column: 5, scope: !4386, inlinedAt: !5284)
!5465 = !DILocation(line: 554, column: 12, scope: !4386, inlinedAt: !5284)
!5466 = !DILocation(line: 448, column: 31, scope: !4381, inlinedAt: !5283)
!5467 = !DILocation(line: 448, column: 34, scope: !4381, inlinedAt: !5283)
!5468 = !DILocation(line: 448, column: 14, scope: !4381, inlinedAt: !5283)
!5469 = !DILocation(line: 450, column: 22, scope: !4381, inlinedAt: !5283)
!5470 = !DILocation(line: 450, column: 25, scope: !4381, inlinedAt: !5283)
!5471 = !DILocation(line: 450, column: 30, scope: !4381, inlinedAt: !5283)
!5472 = !DILocation(line: 450, column: 36, scope: !4381, inlinedAt: !5283)
!5473 = !DILocation(line: 450, column: 8, scope: !4381, inlinedAt: !5283)
!5474 = !DILocation(line: 450, column: 6, scope: !4381, inlinedAt: !5283)
!5475 = !DILocation(line: 451, column: 9, scope: !4381, inlinedAt: !5283)
!5476 = !DILocation(line: 552, column: 3, scope: !4386, inlinedAt: !5284)
!5477 = !DILocation(line: 557, column: 19, scope: !4388, inlinedAt: !5284)
!5478 = !DILocation(line: 557, column: 25, scope: !4388, inlinedAt: !5284)
!5479 = !DILocation(line: 557, column: 9, scope: !4388, inlinedAt: !5284)
!5480 = !DILocation(line: 557, column: 2, scope: !4388, inlinedAt: !5284)
!5481 = !DILocation(line: 558, column: 1, scope: !4388, inlinedAt: !5284)
!5482 = !DILocation(line: 664, column: 2, scope: !5281)
!5483 = distinct !DISubprogram(name: "get_single_name", scope: !3, file: !3, line: 217, type: !5484, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5484 = !DISubroutineType(types: !5485)
!5485 = !{null, !3731, !302}
!5486 = !DILocalVariable(name: "handle", arg: 1, scope: !5483, file: !3, line: 217, type: !3731)
!5487 = !DILocation(line: 217, column: 41, scope: !5483)
!5488 = !DILocalVariable(name: "name", arg: 2, scope: !5483, file: !3, line: 217, type: !302)
!5489 = !DILocation(line: 217, column: 55, scope: !5483)
!5490 = !DILocalVariable(name: "buffer", scope: !5483, file: !3, line: 219, type: !4059)
!5491 = !DILocation(line: 219, column: 21, scope: !5483)
!5492 = !DILocation(line: 221, column: 6, scope: !5493)
!5493 = distinct !DILexicalBlock(scope: !5483, file: !3, line: 221, column: 6)
!5494 = !DILocation(line: 221, column: 6, scope: !5483)
!5495 = !DILocation(line: 222, column: 3, scope: !5493)
!5496 = !DILocation(line: 224, column: 10, scope: !5497)
!5497 = distinct !DILexicalBlock(scope: !5493, file: !3, line: 223, column: 7)
!5498 = !DILocation(line: 224, column: 23, scope: !5497)
!5499 = !DILocation(line: 224, column: 3, scope: !5497)
!5500 = !DILocation(line: 225, column: 16, scope: !5497)
!5501 = !DILocation(line: 225, column: 3, scope: !5497)
!5502 = !DILocation(line: 227, column: 1, scope: !5483)
!5503 = distinct !DISubprogram(name: "copy_overflow", scope: !4950, file: !4950, line: 132, type: !5504, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5504 = !DISubroutineType(types: !5505)
!5505 = !{null, !112, !111}
!5506 = !DILocalVariable(name: "size", arg: 1, scope: !5503, file: !4950, line: 132, type: !112)
!5507 = !DILocation(line: 132, column: 38, scope: !5503)
!5508 = !DILocalVariable(name: "count", arg: 2, scope: !5503, file: !4950, line: 132, type: !111)
!5509 = !DILocation(line: 132, column: 58, scope: !5503)
!5510 = !DILocalVariable(name: "__ret_warn_on", scope: !5511, file: !4950, line: 134, type: !112)
!5511 = distinct !DILexicalBlock(scope: !5503, file: !4950, line: 134, column: 2)
!5512 = !DILocation(line: 134, column: 2, scope: !5511)
!5513 = !DILocation(line: 134, column: 2, scope: !5514)
!5514 = distinct !DILexicalBlock(scope: !5511, file: !4950, line: 134, column: 2)
!5515 = !DILocation(line: 134, column: 2, scope: !5516)
!5516 = distinct !DILexicalBlock(scope: !5514, file: !4950, line: 134, column: 2)
!5517 = !DILocation(line: 134, column: 2, scope: !5518)
!5518 = distinct !DILexicalBlock(scope: !5516, file: !4950, line: 134, column: 2)
!5519 = !DILocation(line: 134, column: 2, scope: !5520)
!5520 = distinct !DILexicalBlock(scope: !5516, file: !4950, line: 134, column: 2)
!5521 = !DILocation(line: 134, column: 2, scope: !5522)
!5522 = distinct !DILexicalBlock(scope: !5520, file: !4950, line: 134, column: 2)
!5523 = !DILocation(line: 134, column: 2, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5520, file: !4950, line: 134, column: 2)
!5525 = !{i32 -2145552038, i32 -2145552009, i32 -2145551963, i32 -2145551905, i32 -2145551851, i32 -2145551797, i32 -2145551742, i32 -2145551711}
!5526 = !DILocation(line: 134, column: 2, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5520, file: !4950, line: 134, column: 2)
!5528 = !{i32 -2145551291, i32 -2145551284, i32 -2145551232, i32 -2145551201, i32 -2145551171}
!5529 = !DILocation(line: 134, column: 2, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5520, file: !4950, line: 134, column: 2)
!5531 = !DILocation(line: 134, column: 2, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5516, file: !4950, line: 134, column: 2)
!5533 = !DILocation(line: 135, column: 1, scope: !5503)
!5534 = distinct !DISubprogram(name: "check_object_size", scope: !4950, file: !4950, line: 122, type: !5535, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !473)
!5535 = !DISubroutineType(types: !5536)
!5536 = !{null, !1894, !111, !307}
!5537 = !DILocalVariable(name: "ptr", arg: 1, scope: !5534, file: !4950, line: 122, type: !1894)
!5538 = !DILocation(line: 122, column: 50, scope: !5534)
!5539 = !DILocalVariable(name: "n", arg: 2, scope: !5534, file: !4950, line: 122, type: !111)
!5540 = !DILocation(line: 122, column: 69, scope: !5534)
!5541 = !DILocalVariable(name: "to_user", arg: 3, scope: !5534, file: !4950, line: 123, type: !307)
!5542 = !DILocation(line: 123, column: 15, scope: !5534)
!5543 = !DILocation(line: 124, column: 3, scope: !5534)
